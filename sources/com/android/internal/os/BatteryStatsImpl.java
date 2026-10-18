package com.android.internal.os;

import android.app.ActivityManager;
import android.bluetooth.BluetoothActivityEnergyInfo;
import android.bluetooth.UidTraffic;
import android.content.BroadcastReceiver;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.database.ContentObserver;
import android.net.ConnectivityManager;
import android.net.NetworkStats;
import android.net.Uri;
import android.net.wifi.WifiActivityEnergyInfo;
import android.net.wifi.WifiManager;
import android.os.BatteryStats;
import android.os.Build;
import android.os.FileUtils;
import android.os.Handler;
import android.os.IBatteryPropertiesRegistrar;
import android.os.Looper;
import android.os.Message;
import android.os.Parcel;
import android.os.ParcelFormatException;
import android.os.Parcelable;
import android.os.Process;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.os.SystemClock;
import android.os.UserHandle;
import android.os.WorkSource;
import android.os.connectivity.CellularBatteryStats;
import android.os.connectivity.GpsBatteryStats;
import android.os.connectivity.WifiBatteryStats;
import android.provider.Settings;
import android.telephony.ModemActivityInfo;
import android.telephony.SignalStrength;
import android.text.TextUtils;
import android.util.ArrayMap;
import android.util.IntArray;
import android.util.KeyValueListParser;
import android.util.Log;
import android.util.LogWriter;
import android.util.LongSparseArray;
import android.util.LongSparseLongArray;
import android.util.MutableInt;
import android.util.Pools;
import android.util.Printer;
import android.util.Slog;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.util.SparseLongArray;
import android.util.StatsLog;
import android.util.TimeUtils;
import android.util.Xml;
import androidx.exifinterface.media.ExifInterface;
import com.android.ims.ImsConfig;
import com.android.internal.annotations.GuardedBy;
import com.android.internal.annotations.VisibleForTesting;
import com.android.internal.logging.EventLogTags;
import com.android.internal.net.NetworkStatsFactory;
import com.android.internal.os.KernelUidCpuActiveTimeReader;
import com.android.internal.os.KernelUidCpuClusterTimeReader;
import com.android.internal.os.KernelUidCpuFreqTimeReader;
import com.android.internal.os.KernelUidCpuTimeReader;
import com.android.internal.os.KernelWakelockStats;
import com.android.internal.os.RpmStats;
import com.android.internal.util.ArrayUtils;
import com.android.internal.util.FastPrintWriter;
import com.android.internal.util.FastXmlSerializer;
import com.android.internal.util.JournaledFile;
import com.android.internal.util.XmlUtils;
import com.facebook.imagepipeline.common.BytesRange;
import com.media.common.util.AppConstants;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.Writer;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Map;
import java.util.Objects;
import java.util.Queue;
import java.util.concurrent.Future;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.locks.ReentrantLock;
import libcore.util.EmptyArray;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

/* loaded from: /home/user/work/dex/classes3.dex */
public class BatteryStatsImpl extends BatteryStats {
    static final int BATTERY_DELTA_LEVEL_FLAG = 1;
    public static final int BATTERY_PLUGGED_NONE = 0;
    public static final Parcelable.Creator<BatteryStatsImpl> CREATOR;
    private static final boolean DEBUG = false;
    public static final boolean DEBUG_ENERGY = false;
    private static final boolean DEBUG_ENERGY_CPU = false;
    private static final boolean DEBUG_HISTORY = false;
    private static final boolean DEBUG_MEMORY = false;
    static final long DELAY_UPDATE_WAKELOCKS = 5000;
    static final int DELTA_BATTERY_CHARGE_FLAG = 16777216;
    static final int DELTA_BATTERY_LEVEL_FLAG = 524288;
    static final int DELTA_EVENT_FLAG = 8388608;
    static final int DELTA_STATE2_FLAG = 2097152;
    static final int DELTA_STATE_FLAG = 1048576;
    static final int DELTA_STATE_MASK = -33554432;
    static final int DELTA_TIME_ABS = 524285;
    static final int DELTA_TIME_INT = 524286;
    static final int DELTA_TIME_LONG = 524287;
    static final int DELTA_TIME_MASK = 524287;
    static final int DELTA_WAKELOCK_FLAG = 4194304;
    private static final int MAGIC = -1166707595;
    static final int MAX_DAILY_ITEMS = 10;
    static final int MAX_HISTORY_BUFFER;
    private static final int MAX_HISTORY_ITEMS;
    static final int MAX_LEVEL_STEPS = 200;
    static final int MAX_MAX_HISTORY_BUFFER;
    private static final int MAX_MAX_HISTORY_ITEMS;
    private static final int MAX_WAKELOCKS_PER_UID;
    static final int MSG_REPORT_CHARGING = 3;
    static final int MSG_REPORT_CPU_UPDATE_NEEDED = 1;
    static final int MSG_REPORT_POWER_CHANGE = 2;
    static final int MSG_REPORT_RESET_STATS = 4;
    private static final int NUM_BT_TX_LEVELS = 1;
    private static final int NUM_WIFI_TX_LEVELS = 1;
    private static final long RPM_STATS_UPDATE_FREQ_MS = 1000;
    static final int STATE_BATTERY_HEALTH_MASK = 7;
    static final int STATE_BATTERY_HEALTH_SHIFT = 26;
    static final int STATE_BATTERY_MASK = -16777216;
    static final int STATE_BATTERY_PLUG_MASK = 3;
    static final int STATE_BATTERY_PLUG_SHIFT = 24;
    static final int STATE_BATTERY_STATUS_MASK = 7;
    static final int STATE_BATTERY_STATUS_SHIFT = 29;
    private static final String TAG = "BatteryStatsImpl";
    private static final int USB_DATA_CONNECTED = 2;
    private static final int USB_DATA_DISCONNECTED = 1;
    private static final int USB_DATA_UNKNOWN = 0;
    private static final boolean USE_OLD_HISTORY = false;
    private static final int VERSION = 177;

    @VisibleForTesting
    public static final int WAKE_LOCK_WEIGHT = 50;
    final BatteryStats.HistoryEventTracker mActiveEvents;
    int mActiveHistoryStates;
    int mActiveHistoryStates2;
    int mAudioOnNesting;
    StopwatchTimer mAudioOnTimer;
    final ArrayList<StopwatchTimer> mAudioTurnedOnTimers;
    ControllerActivityCounterImpl mBluetoothActivity;
    int mBluetoothScanNesting;
    final ArrayList<StopwatchTimer> mBluetoothScanOnTimers;

    @VisibleForTesting(visibility = VisibleForTesting.Visibility.PACKAGE)
    protected StopwatchTimer mBluetoothScanTimer;
    private BatteryCallback mCallback;
    int mCameraOnNesting;
    StopwatchTimer mCameraOnTimer;
    final ArrayList<StopwatchTimer> mCameraTurnedOnTimers;
    int mChangedStates;
    int mChangedStates2;
    final BatteryStats.LevelStepTracker mChargeStepTracker;
    boolean mCharging;
    public final AtomicFile mCheckinFile;
    protected Clocks mClocks;

    @GuardedBy("this")
    private final Constants mConstants;
    private long[] mCpuFreqs;

    @GuardedBy("this")
    private long mCpuTimeReadsTrackingStartTime;
    final BatteryStats.HistoryStepDetails mCurHistoryStepDetails;
    long mCurStepCpuSystemTime;
    long mCurStepCpuUserTime;
    int mCurStepMode;
    long mCurStepStatIOWaitTime;
    long mCurStepStatIdleTime;
    long mCurStepStatIrqTime;
    long mCurStepStatSoftIrqTime;
    long mCurStepStatSystemTime;
    long mCurStepStatUserTime;
    int mCurrentBatteryLevel;
    final BatteryStats.LevelStepTracker mDailyChargeStepTracker;
    final BatteryStats.LevelStepTracker mDailyDischargeStepTracker;
    public final AtomicFile mDailyFile;
    final ArrayList<BatteryStats.DailyItem> mDailyItems;
    ArrayList<BatteryStats.PackageChange> mDailyPackageChanges;
    long mDailyStartTime;
    int mDeviceIdleMode;
    StopwatchTimer mDeviceIdleModeFullTimer;
    StopwatchTimer mDeviceIdleModeLightTimer;
    boolean mDeviceIdling;
    StopwatchTimer mDeviceIdlingTimer;
    boolean mDeviceLightIdling;
    StopwatchTimer mDeviceLightIdlingTimer;
    int mDischargeAmountScreenDoze;
    int mDischargeAmountScreenDozeSinceCharge;
    int mDischargeAmountScreenOff;
    int mDischargeAmountScreenOffSinceCharge;
    int mDischargeAmountScreenOn;
    int mDischargeAmountScreenOnSinceCharge;
    private LongSamplingCounter mDischargeCounter;
    int mDischargeCurrentLevel;
    private LongSamplingCounter mDischargeDeepDozeCounter;
    private LongSamplingCounter mDischargeLightDozeCounter;
    int mDischargePlugLevel;
    private LongSamplingCounter mDischargeScreenDozeCounter;
    int mDischargeScreenDozeUnplugLevel;
    private LongSamplingCounter mDischargeScreenOffCounter;
    int mDischargeScreenOffUnplugLevel;
    int mDischargeScreenOnUnplugLevel;
    int mDischargeStartLevel;
    final BatteryStats.LevelStepTracker mDischargeStepTracker;
    int mDischargeUnplugLevel;
    boolean mDistributeWakelockCpu;
    final ArrayList<StopwatchTimer> mDrawTimers;
    String mEndPlatformVersion;
    private int mEstimatedBatteryCapacity;
    private ExternalStatsSync mExternalSync;
    private final JournaledFile mFile;
    int mFlashlightOnNesting;
    StopwatchTimer mFlashlightOnTimer;
    final ArrayList<StopwatchTimer> mFlashlightTurnedOnTimers;
    final ArrayList<StopwatchTimer> mFullTimers;
    final ArrayList<StopwatchTimer> mFullWifiLockTimers;
    boolean mGlobalWifiRunning;
    StopwatchTimer mGlobalWifiRunningTimer;
    int mGpsNesting;
    int mGpsSignalQualityBin;

    @VisibleForTesting(visibility = VisibleForTesting.Visibility.PACKAGE)
    protected final StopwatchTimer[] mGpsSignalQualityTimer;
    public Handler mHandler;
    boolean mHasBluetoothReporting;
    boolean mHasModemReporting;
    boolean mHasWifiReporting;
    protected boolean mHaveBatteryLevel;
    int mHighDischargeAmountSinceCharge;
    BatteryStats.HistoryItem mHistory;
    final BatteryStats.HistoryItem mHistoryAddTmp;
    long mHistoryBaseTime;
    final Parcel mHistoryBuffer;
    int mHistoryBufferLastPos;
    BatteryStats.HistoryItem mHistoryCache;
    final BatteryStats.HistoryItem mHistoryCur;
    BatteryStats.HistoryItem mHistoryEnd;
    private BatteryStats.HistoryItem mHistoryIterator;
    BatteryStats.HistoryItem mHistoryLastEnd;
    final BatteryStats.HistoryItem mHistoryLastLastWritten;
    final BatteryStats.HistoryItem mHistoryLastWritten;
    boolean mHistoryOverflow;
    final BatteryStats.HistoryItem mHistoryReadTmp;
    final HashMap<BatteryStats.HistoryTag, Integer> mHistoryTagPool;
    int mInitStepMode;
    private String mInitialAcquireWakeName;
    private int mInitialAcquireWakeUid;
    boolean mInteractive;
    StopwatchTimer mInteractiveTimer;
    boolean mIsCellularTxPowerHigh;
    final SparseIntArray mIsolatedUids;
    private boolean mIteratingHistory;

    @VisibleForTesting
    protected KernelCpuSpeedReader[] mKernelCpuSpeedReaders;
    private final KernelMemoryBandwidthStats mKernelMemoryBandwidthStats;
    private final LongSparseArray<SamplingTimer> mKernelMemoryStats;

    @VisibleForTesting
    protected KernelSingleUidTimeReader mKernelSingleUidTimeReader;

    @VisibleForTesting
    protected KernelUidCpuActiveTimeReader mKernelUidCpuActiveTimeReader;

    @VisibleForTesting
    protected KernelUidCpuClusterTimeReader mKernelUidCpuClusterTimeReader;

    @VisibleForTesting
    protected KernelUidCpuFreqTimeReader mKernelUidCpuFreqTimeReader;

    @VisibleForTesting
    protected KernelUidCpuTimeReader mKernelUidCpuTimeReader;
    private final KernelWakelockReader mKernelWakelockReader;
    private final HashMap<String, SamplingTimer> mKernelWakelockStats;
    private final BluetoothActivityInfoCache mLastBluetoothActivityInfo;
    int mLastChargeStepLevel;
    int mLastChargingStateLevel;
    int mLastDischargeStepLevel;
    long mLastHistoryElapsedRealtime;
    BatteryStats.HistoryStepDetails mLastHistoryStepDetails;
    byte mLastHistoryStepLevel;
    long mLastIdleTimeStart;
    private ModemActivityInfo mLastModemActivityInfo;

    @GuardedBy("mModemNetworkLock")
    private NetworkStats mLastModemNetworkStats;

    @VisibleForTesting
    protected ArrayList<StopwatchTimer> mLastPartialTimers;
    private long mLastRpmStatsUpdateTimeMs;
    long mLastStepCpuSystemTime;
    long mLastStepCpuUserTime;
    long mLastStepStatIOWaitTime;
    long mLastStepStatIdleTime;
    long mLastStepStatIrqTime;
    long mLastStepStatSoftIrqTime;
    long mLastStepStatSystemTime;
    long mLastStepStatUserTime;
    String mLastWakeupReason;
    long mLastWakeupUptimeMs;

    @GuardedBy("mWifiNetworkLock")
    private NetworkStats mLastWifiNetworkStats;
    long mLastWriteTime;
    private int mLoadedNumConnectivityChange;
    long mLongestFullIdleTime;
    long mLongestLightIdleTime;
    int mLowDischargeAmountSinceCharge;
    int mMaxChargeStepLevel;
    private int mMaxLearnedBatteryCapacity;
    int mMinDischargeStepLevel;
    private int mMinLearnedBatteryCapacity;
    LongSamplingCounter mMobileRadioActiveAdjustedTime;
    StopwatchTimer mMobileRadioActivePerAppTimer;
    long mMobileRadioActiveStartTime;
    StopwatchTimer mMobileRadioActiveTimer;
    LongSamplingCounter mMobileRadioActiveUnknownCount;
    LongSamplingCounter mMobileRadioActiveUnknownTime;
    int mMobileRadioPowerState;
    int mModStepMode;
    ControllerActivityCounterImpl mModemActivity;

    @GuardedBy("mModemNetworkLock")
    private String[] mModemIfaces;
    private final Object mModemNetworkLock;
    final LongSamplingCounter[] mNetworkByteActivityCounters;
    final LongSamplingCounter[] mNetworkPacketActivityCounters;
    private final NetworkStatsFactory mNetworkStatsFactory;
    private final Pools.Pool<NetworkStats> mNetworkStatsPool;
    int mNextHistoryTagIdx;
    long mNextMaxDailyDeadline;
    long mNextMinDailyDeadline;
    boolean mNoAutoReset;

    @GuardedBy("this")
    private int mNumAllUidCpuTimeReads;

    @GuardedBy("this")
    private long mNumBatchedSingleUidCpuTimeReads;
    private int mNumConnectivityChange;
    int mNumHistoryItems;
    int mNumHistoryTagChars;

    @GuardedBy("this")
    private long mNumSingleUidCpuTimeReads;

    @GuardedBy("this")
    private int mNumUidsRemoved;
    boolean mOnBattery;

    @VisibleForTesting
    protected boolean mOnBatteryInternal;
    protected final TimeBase mOnBatteryScreenOffTimeBase;
    protected final TimeBase mOnBatteryTimeBase;

    @VisibleForTesting
    protected ArrayList<StopwatchTimer> mPartialTimers;

    @GuardedBy("this")
    @VisibleForTesting(visibility = VisibleForTesting.Visibility.PACKAGE)
    protected Queue<UidToRemove> mPendingRemovedUids;

    @GuardedBy("this")
    @VisibleForTesting
    protected final SparseIntArray mPendingUids;
    Parcel mPendingWrite;

    @GuardedBy("this")
    public boolean mPerProcStateCpuTimesAvailable;
    int mPhoneDataConnectionType;
    final StopwatchTimer[] mPhoneDataConnectionsTimer;
    boolean mPhoneOn;
    StopwatchTimer mPhoneOnTimer;
    private int mPhoneServiceState;
    private int mPhoneServiceStateRaw;
    StopwatchTimer mPhoneSignalScanningTimer;
    int mPhoneSignalStrengthBin;
    int mPhoneSignalStrengthBinRaw;
    final StopwatchTimer[] mPhoneSignalStrengthsTimer;
    private int mPhoneSimStateRaw;
    private final PlatformIdleStateCallback mPlatformIdleStateCallback;

    @VisibleForTesting
    protected PowerProfile mPowerProfile;
    boolean mPowerSaveModeEnabled;
    StopwatchTimer mPowerSaveModeEnabledTimer;
    boolean mPretendScreenOff;
    int mReadHistoryChars;
    final BatteryStats.HistoryStepDetails mReadHistoryStepDetails;
    String[] mReadHistoryStrings;
    int[] mReadHistoryUids;
    private boolean mReadOverflow;
    long mRealtime;
    long mRealtimeStart;
    public boolean mRecordAllHistory;
    protected boolean mRecordingHistory;
    private final HashMap<String, SamplingTimer> mRpmStats;
    int mScreenBrightnessBin;
    final StopwatchTimer[] mScreenBrightnessTimer;

    @VisibleForTesting(visibility = VisibleForTesting.Visibility.PACKAGE)
    protected StopwatchTimer mScreenDozeTimer;
    private final HashMap<String, SamplingTimer> mScreenOffRpmStats;

    @VisibleForTesting(visibility = VisibleForTesting.Visibility.PACKAGE)
    protected StopwatchTimer mScreenOnTimer;

    @VisibleForTesting(visibility = VisibleForTesting.Visibility.PACKAGE)
    protected int mScreenState;
    int mSensorNesting;
    final SparseArray<ArrayList<StopwatchTimer>> mSensorTimers;
    boolean mShuttingDown;
    long mStartClockTime;
    int mStartCount;
    String mStartPlatformVersion;
    long mTempTotalCpuSystemTimeUs;
    long mTempTotalCpuUserTimeUs;
    final BatteryStats.HistoryStepDetails mTmpHistoryStepDetails;
    private final RpmStats mTmpRpmStats;
    private final KernelWakelockStats mTmpWakelockStats;
    long mTrackRunningHistoryElapsedRealtime;
    long mTrackRunningHistoryUptime;
    final SparseArray<Uid> mUidStats;
    private int mUnpluggedNumConnectivityChange;
    long mUptime;
    long mUptimeStart;
    int mUsbDataState;

    @VisibleForTesting
    protected UserInfoProvider mUserInfoProvider;
    int mVideoOnNesting;
    StopwatchTimer mVideoOnTimer;
    final ArrayList<StopwatchTimer> mVideoTurnedOnTimers;
    long[][] mWakeLockAllocationsUs;
    boolean mWakeLockImportant;
    int mWakeLockNesting;
    private final HashMap<String, SamplingTimer> mWakeupReasonStats;
    StopwatchTimer mWifiActiveTimer;
    ControllerActivityCounterImpl mWifiActivity;
    final SparseArray<ArrayList<StopwatchTimer>> mWifiBatchedScanTimers;
    int mWifiFullLockNesting;

    @GuardedBy("mWifiNetworkLock")
    private String[] mWifiIfaces;
    int mWifiMulticastNesting;
    final ArrayList<StopwatchTimer> mWifiMulticastTimers;
    StopwatchTimer mWifiMulticastWakelockTimer;
    private final Object mWifiNetworkLock;
    boolean mWifiOn;
    StopwatchTimer mWifiOnTimer;
    int mWifiRadioPowerState;
    final ArrayList<StopwatchTimer> mWifiRunningTimers;
    int mWifiScanNesting;
    final ArrayList<StopwatchTimer> mWifiScanTimers;
    int mWifiSignalStrengthBin;
    final StopwatchTimer[] mWifiSignalStrengthsTimer;
    int mWifiState;
    final StopwatchTimer[] mWifiStateTimer;
    int mWifiSupplState;
    final StopwatchTimer[] mWifiSupplStateTimer;
    final ArrayList<StopwatchTimer> mWindowTimers;
    final ReentrantLock mWriteLock;

    /* loaded from: /home/user/work/dex/classes3.dex */
    public interface BatteryCallback {
        void batteryNeedsCpuUpdate();

        void batteryPowerChanged(boolean z);

        void batterySendBroadcast(Intent intent);

        void batteryStatsReset();
    }

    /* loaded from: /home/user/work/dex/classes3.dex */
    public interface Clocks {
        long elapsedRealtime();

        long uptimeMillis();
    }

    /* loaded from: /home/user/work/dex/classes3.dex */
    public interface ExternalStatsSync {
        public static final int UPDATE_ALL = 31;
        public static final int UPDATE_BT = 8;
        public static final int UPDATE_CPU = 1;
        public static final int UPDATE_RADIO = 4;
        public static final int UPDATE_RPM = 16;
        public static final int UPDATE_WIFI = 2;

        void cancelCpuSyncDueToWakelockChange();

        Future<?> scheduleCopyFromAllUidsCpuTimes(boolean z, boolean z2);

        Future<?> scheduleCpuSyncDueToRemovedUid(int i);

        Future<?> scheduleCpuSyncDueToScreenStateChange(boolean z, boolean z2);

        Future<?> scheduleCpuSyncDueToSettingChange();

        Future<?> scheduleCpuSyncDueToWakelockChange(long j);

        Future<?> scheduleReadProcStateCpuTimes(boolean z, boolean z2, long j);

        Future<?> scheduleSync(String str, int i);

        Future<?> scheduleSyncDueToBatteryLevelChange(long j);
    }

    /* loaded from: /home/user/work/dex/classes3.dex */
    public interface PlatformIdleStateCallback {
        void fillLowPowerStats(RpmStats rpmStats);

        String getPlatformLowPowerStats();

        String getSubsystemLowPowerStats();
    }

    /* loaded from: /home/user/work/dex/classes3.dex */
    public interface TimeBaseObs {
        void onTimeStarted(long j, long j2, long j3);

        void onTimeStopped(long j, long j2, long j3);
    }

    public static boolean isOnBattery(int i, int i2) {
        return i == 0 && i2 != 1;
    }

    public int describeContents() {
        return 0;
    }

    public int getParcelVersion() {
        return 177;
    }

    public boolean isScreenDoze(int i) {
        return i == 3 || i == 4;
    }

    public boolean isScreenOff(int i) {
        return i == 1;
    }

    public boolean isScreenOn(int i) {
        return i == 2 || i == 5 || i == 6;
    }

    void readOldHistory(Parcel parcel) {
    }

    void writeOldHistory(Parcel parcel) {
    }

    static /* synthetic */ int access$108(BatteryStatsImpl batteryStatsImpl) {
        int i = batteryStatsImpl.mNumUidsRemoved;
        batteryStatsImpl.mNumUidsRemoved = i + 1;
        return i;
    }

    static /* synthetic */ long access$1408(BatteryStatsImpl batteryStatsImpl) {
        long j = batteryStatsImpl.mNumSingleUidCpuTimeReads;
        batteryStatsImpl.mNumSingleUidCpuTimeReads = 1 + j;
        return j;
    }

    static /* synthetic */ long access$1508(BatteryStatsImpl batteryStatsImpl) {
        long j = batteryStatsImpl.mNumBatchedSingleUidCpuTimeReads;
        batteryStatsImpl.mNumBatchedSingleUidCpuTimeReads = 1 + j;
        return j;
    }

    static {
        if (ActivityManager.isLowRamDeviceStatic()) {
            MAX_HISTORY_ITEMS = 800;
            MAX_MAX_HISTORY_ITEMS = 1200;
            MAX_WAKELOCKS_PER_UID = 40;
            MAX_HISTORY_BUFFER = 98304;
            MAX_MAX_HISTORY_BUFFER = 131072;
        } else {
            MAX_HISTORY_ITEMS = 4000;
            MAX_MAX_HISTORY_ITEMS = 6000;
            MAX_WAKELOCKS_PER_UID = 200;
            MAX_HISTORY_BUFFER = 524288;
            MAX_MAX_HISTORY_BUFFER = 655360;
        }
        CREATOR = new Parcelable.Creator<BatteryStatsImpl>() { // from class: com.android.internal.os.BatteryStatsImpl.5
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public BatteryStatsImpl createFromParcel(Parcel parcel) {
                return new BatteryStatsImpl(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public BatteryStatsImpl[] newArray(int i) {
                return new BatteryStatsImpl[i];
            }
        };
    }

    public LongSparseArray<SamplingTimer> getKernelMemoryStats() {
        return this.mKernelMemoryStats;
    }

    @VisibleForTesting
    /* loaded from: /home/user/work/dex/classes3.dex */
    public final class UidToRemove {
        int endUid;
        int startUid;
        long timeAddedInQueue;

        public UidToRemove(BatteryStatsImpl batteryStatsImpl, int i, long j) {
            this(i, i, j);
        }

        public UidToRemove(int i, int i2, long j) {
            this.startUid = i;
            this.endUid = i2;
            this.timeAddedInQueue = j;
        }

        void remove() {
            if (this.startUid == this.endUid) {
                BatteryStatsImpl.this.mKernelUidCpuTimeReader.removeUid(this.startUid);
                BatteryStatsImpl.this.mKernelUidCpuFreqTimeReader.removeUid(this.startUid);
                if (BatteryStatsImpl.this.mConstants.TRACK_CPU_ACTIVE_CLUSTER_TIME) {
                    BatteryStatsImpl.this.mKernelUidCpuActiveTimeReader.removeUid(this.startUid);
                    BatteryStatsImpl.this.mKernelUidCpuClusterTimeReader.removeUid(this.startUid);
                }
                if (BatteryStatsImpl.this.mKernelSingleUidTimeReader != null) {
                    BatteryStatsImpl.this.mKernelSingleUidTimeReader.removeUid(this.startUid);
                }
                BatteryStatsImpl.access$108(BatteryStatsImpl.this);
                return;
            }
            if (this.startUid < this.endUid) {
                BatteryStatsImpl.this.mKernelUidCpuFreqTimeReader.removeUidsInRange(this.startUid, this.endUid);
                BatteryStatsImpl.this.mKernelUidCpuTimeReader.removeUidsInRange(this.startUid, this.endUid);
                if (BatteryStatsImpl.this.mConstants.TRACK_CPU_ACTIVE_CLUSTER_TIME) {
                    BatteryStatsImpl.this.mKernelUidCpuActiveTimeReader.removeUidsInRange(this.startUid, this.endUid);
                    BatteryStatsImpl.this.mKernelUidCpuClusterTimeReader.removeUidsInRange(this.startUid, this.endUid);
                }
                if (BatteryStatsImpl.this.mKernelSingleUidTimeReader != null) {
                    BatteryStatsImpl.this.mKernelSingleUidTimeReader.removeUidsInRange(this.startUid, this.endUid);
                }
                BatteryStatsImpl.access$108(BatteryStatsImpl.this);
                return;
            }
            Slog.w(BatteryStatsImpl.TAG, "End UID " + this.endUid + " is smaller than start UID " + this.startUid);
        }
    }

    /* loaded from: /home/user/work/dex/classes3.dex */
    public static abstract class UserInfoProvider {
        private int[] userIds;

        protected abstract int[] getUserIds();

        @VisibleForTesting
        public final void refreshUserIds() {
            this.userIds = getUserIds();
        }

        @VisibleForTesting
        public boolean exists(int i) {
            if (this.userIds != null) {
                return ArrayUtils.contains(this.userIds, i);
            }
            return true;
        }
    }

    /* loaded from: /home/user/work/dex/classes3.dex */
    final class MyHandler extends Handler {
        public MyHandler(Looper looper) {
            super(looper, null, true);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            String str;
            BatteryCallback batteryCallback = BatteryStatsImpl.this.mCallback;
            switch (message.what) {
                case 1:
                    if (batteryCallback != null) {
                        batteryCallback.batteryNeedsCpuUpdate();
                        return;
                    }
                    return;
                case 2:
                    if (batteryCallback != null) {
                        batteryCallback.batteryPowerChanged(message.arg1 != 0);
                        return;
                    }
                    return;
                case 3:
                    if (batteryCallback != null) {
                        synchronized (BatteryStatsImpl.this) {
                            str = BatteryStatsImpl.this.mCharging ? "android.os.action.CHARGING" : "android.os.action.DISCHARGING";
                        }
                        Intent intent = new Intent(str);
                        intent.addFlags(67108864);
                        batteryCallback.batterySendBroadcast(intent);
                        return;
                    }
                    return;
                case 4:
                    if (batteryCallback != null) {
                        batteryCallback.batteryStatsReset();
                        return;
                    }
                    return;
                default:
                    return;
            }
        }
    }

    public void postBatteryNeedsCpuUpdateMsg() {
        this.mHandler.sendEmptyMessage(1);
    }

    public void updateProcStateCpuTimes(boolean z, boolean z2) {
        int[] array;
        synchronized (this) {
            if (this.mConstants.TRACK_CPU_TIMES_BY_PROC_STATE) {
                if (initKernelSingleUidTimeReaderLocked()) {
                    if (this.mKernelSingleUidTimeReader.hasStaleData()) {
                        this.mPendingUids.clear();
                        return;
                    }
                    if (this.mPendingUids.size() == 0) {
                        return;
                    }
                    SparseIntArray clone = this.mPendingUids.clone();
                    this.mPendingUids.clear();
                    for (int size = clone.size() - 1; size >= 0; size--) {
                        int keyAt = clone.keyAt(size);
                        int valueAt = clone.valueAt(size);
                        synchronized (this) {
                            Uid availableUidStatsLocked = getAvailableUidStatsLocked(keyAt);
                            if (availableUidStatsLocked != null) {
                                if (availableUidStatsLocked.mChildUids == null) {
                                    array = null;
                                } else {
                                    array = availableUidStatsLocked.mChildUids.toArray();
                                    for (int length = array.length - 1; length >= 0; length--) {
                                        array[length] = availableUidStatsLocked.mChildUids.get(length);
                                    }
                                }
                                long[] readDeltaMs = this.mKernelSingleUidTimeReader.readDeltaMs(keyAt);
                                if (array != null) {
                                    for (int length2 = array.length - 1; length2 >= 0; length2--) {
                                        readDeltaMs = addCpuTimes(readDeltaMs, this.mKernelSingleUidTimeReader.readDeltaMs(array[length2]));
                                    }
                                }
                                if (z && readDeltaMs != null) {
                                    synchronized (this) {
                                        availableUidStatsLocked.addProcStateTimesMs(valueAt, readDeltaMs, z);
                                        availableUidStatsLocked.addProcStateScreenOffTimesMs(valueAt, readDeltaMs, z2);
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    public void clearPendingRemovedUids() {
        long elapsedRealtime = this.mClocks.elapsedRealtime() - this.mConstants.UID_REMOVE_DELAY_MS;
        while (!this.mPendingRemovedUids.isEmpty() && this.mPendingRemovedUids.peek().timeAddedInQueue < elapsedRealtime) {
            this.mPendingRemovedUids.poll().remove();
        }
    }

    public void copyFromAllUidsCpuTimes() {
        synchronized (this) {
            copyFromAllUidsCpuTimes(this.mOnBatteryTimeBase.isRunning(), this.mOnBatteryScreenOffTimeBase.isRunning());
        }
    }

    public void copyFromAllUidsCpuTimes(boolean z, boolean z2) {
        long[] valueAt;
        int i;
        synchronized (this) {
            if (this.mConstants.TRACK_CPU_TIMES_BY_PROC_STATE) {
                if (initKernelSingleUidTimeReaderLocked()) {
                    SparseArray<long[]> allUidCpuFreqTimeMs = this.mKernelUidCpuFreqTimeReader.getAllUidCpuFreqTimeMs();
                    if (this.mKernelSingleUidTimeReader.hasStaleData()) {
                        this.mKernelSingleUidTimeReader.setAllUidsCpuTimesMs(allUidCpuFreqTimeMs);
                        this.mKernelSingleUidTimeReader.markDataAsStale(false);
                        this.mPendingUids.clear();
                        return;
                    }
                    for (int size = allUidCpuFreqTimeMs.size() - 1; size >= 0; size--) {
                        int keyAt = allUidCpuFreqTimeMs.keyAt(size);
                        Uid availableUidStatsLocked = getAvailableUidStatsLocked(mapUid(keyAt));
                        if (availableUidStatsLocked != null && (valueAt = allUidCpuFreqTimeMs.valueAt(size)) != null) {
                            long[] computeDelta = this.mKernelSingleUidTimeReader.computeDelta(keyAt, (long[]) valueAt.clone());
                            if (z && computeDelta != null) {
                                int indexOfKey = this.mPendingUids.indexOfKey(keyAt);
                                if (indexOfKey >= 0) {
                                    i = this.mPendingUids.valueAt(indexOfKey);
                                    this.mPendingUids.removeAt(indexOfKey);
                                } else {
                                    i = availableUidStatsLocked.mProcessState;
                                }
                                if (i >= 0 && i < 7) {
                                    availableUidStatsLocked.addProcStateTimesMs(i, computeDelta, z);
                                    availableUidStatsLocked.addProcStateScreenOffTimesMs(i, computeDelta, z2);
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    @VisibleForTesting
    public long[] addCpuTimes(long[] jArr, long[] jArr2) {
        if (jArr == null || jArr2 == null) {
            if (jArr != null) {
                return jArr;
            }
            if (jArr2 == null) {
                return null;
            }
            return jArr2;
        }
        for (int length = jArr.length - 1; length >= 0; length--) {
            jArr[length] = jArr[length] + jArr2[length];
        }
        return jArr;
    }

    @GuardedBy("this")
    private boolean initKernelSingleUidTimeReaderLocked() {
        boolean z = false;
        if (this.mKernelSingleUidTimeReader == null) {
            if (this.mPowerProfile == null) {
                return false;
            }
            if (this.mCpuFreqs == null) {
                this.mCpuFreqs = this.mKernelUidCpuFreqTimeReader.readFreqs(this.mPowerProfile);
            }
            if (this.mCpuFreqs != null) {
                this.mKernelSingleUidTimeReader = new KernelSingleUidTimeReader(this.mCpuFreqs.length);
            } else {
                this.mPerProcStateCpuTimesAvailable = this.mKernelUidCpuFreqTimeReader.allUidTimesAvailable();
                return false;
            }
        }
        if (this.mKernelUidCpuFreqTimeReader.allUidTimesAvailable() && this.mKernelSingleUidTimeReader.singleUidCpuTimesAvailable()) {
            z = true;
        }
        this.mPerProcStateCpuTimesAvailable = z;
        return true;
    }

    /* loaded from: /home/user/work/dex/classes3.dex */
    public static class SystemClocks implements Clocks {
        @Override // com.android.internal.os.BatteryStatsImpl.Clocks
        public long elapsedRealtime() {
            return SystemClock.elapsedRealtime();
        }

        @Override // com.android.internal.os.BatteryStatsImpl.Clocks
        public long uptimeMillis() {
            return SystemClock.uptimeMillis();
        }
    }

    public Map<String, ? extends Timer> getRpmStats() {
        return this.mRpmStats;
    }

    public Map<String, ? extends Timer> getScreenOffRpmStats() {
        return this.mScreenOffRpmStats;
    }

    public Map<String, ? extends Timer> getKernelWakelockStats() {
        return this.mKernelWakelockStats;
    }

    public Map<String, ? extends Timer> getWakeupReasonStats() {
        return this.mWakeupReasonStats;
    }

    public long getUahDischarge(int i) {
        return this.mDischargeCounter.getCountLocked(i);
    }

    public long getUahDischargeScreenOff(int i) {
        return this.mDischargeScreenOffCounter.getCountLocked(i);
    }

    public long getUahDischargeScreenDoze(int i) {
        return this.mDischargeScreenDozeCounter.getCountLocked(i);
    }

    public long getUahDischargeLightDoze(int i) {
        return this.mDischargeLightDozeCounter.getCountLocked(i);
    }

    public long getUahDischargeDeepDoze(int i) {
        return this.mDischargeDeepDozeCounter.getCountLocked(i);
    }

    public int getEstimatedBatteryCapacity() {
        return this.mEstimatedBatteryCapacity;
    }

    public int getMinLearnedBatteryCapacity() {
        return this.mMinLearnedBatteryCapacity;
    }

    public int getMaxLearnedBatteryCapacity() {
        return this.mMaxLearnedBatteryCapacity;
    }

    public BatteryStatsImpl() {
        this(new SystemClocks());
    }

    public BatteryStatsImpl(Clocks clocks) {
        this.mKernelWakelockReader = new KernelWakelockReader();
        this.mTmpWakelockStats = new KernelWakelockStats();
        this.mKernelUidCpuTimeReader = new KernelUidCpuTimeReader();
        this.mKernelUidCpuFreqTimeReader = new KernelUidCpuFreqTimeReader();
        this.mKernelUidCpuActiveTimeReader = new KernelUidCpuActiveTimeReader();
        this.mKernelUidCpuClusterTimeReader = new KernelUidCpuClusterTimeReader();
        this.mKernelMemoryBandwidthStats = new KernelMemoryBandwidthStats();
        this.mKernelMemoryStats = new LongSparseArray<>();
        this.mPerProcStateCpuTimesAvailable = true;
        this.mPendingUids = new SparseIntArray();
        this.mCpuTimeReadsTrackingStartTime = SystemClock.uptimeMillis();
        this.mTmpRpmStats = new RpmStats();
        this.mLastRpmStatsUpdateTimeMs = -1000L;
        this.mPendingRemovedUids = new LinkedList();
        this.mExternalSync = null;
        this.mUserInfoProvider = null;
        this.mIsolatedUids = new SparseIntArray();
        this.mUidStats = new SparseArray<>();
        this.mPartialTimers = new ArrayList<>();
        this.mFullTimers = new ArrayList<>();
        this.mWindowTimers = new ArrayList<>();
        this.mDrawTimers = new ArrayList<>();
        this.mSensorTimers = new SparseArray<>();
        this.mWifiRunningTimers = new ArrayList<>();
        this.mFullWifiLockTimers = new ArrayList<>();
        this.mWifiMulticastTimers = new ArrayList<>();
        this.mWifiScanTimers = new ArrayList<>();
        this.mWifiBatchedScanTimers = new SparseArray<>();
        this.mAudioTurnedOnTimers = new ArrayList<>();
        this.mVideoTurnedOnTimers = new ArrayList<>();
        this.mFlashlightTurnedOnTimers = new ArrayList<>();
        this.mCameraTurnedOnTimers = new ArrayList<>();
        this.mBluetoothScanOnTimers = new ArrayList<>();
        this.mLastPartialTimers = new ArrayList<>();
        this.mOnBatteryTimeBase = new TimeBase();
        this.mOnBatteryScreenOffTimeBase = new TimeBase();
        this.mActiveEvents = new BatteryStats.HistoryEventTracker();
        this.mHaveBatteryLevel = false;
        this.mRecordingHistory = false;
        this.mHistoryBuffer = Parcel.obtain();
        this.mHistoryLastWritten = new BatteryStats.HistoryItem();
        this.mHistoryLastLastWritten = new BatteryStats.HistoryItem();
        this.mHistoryReadTmp = new BatteryStats.HistoryItem();
        this.mHistoryAddTmp = new BatteryStats.HistoryItem();
        this.mHistoryTagPool = new HashMap<>();
        this.mNextHistoryTagIdx = 0;
        this.mNumHistoryTagChars = 0;
        this.mHistoryBufferLastPos = -1;
        this.mHistoryOverflow = false;
        this.mActiveHistoryStates = -1;
        this.mActiveHistoryStates2 = -1;
        this.mLastHistoryElapsedRealtime = 0L;
        this.mTrackRunningHistoryElapsedRealtime = 0L;
        this.mTrackRunningHistoryUptime = 0L;
        this.mHistoryCur = new BatteryStats.HistoryItem();
        this.mLastHistoryStepDetails = null;
        this.mLastHistoryStepLevel = (byte) 0;
        this.mCurHistoryStepDetails = new BatteryStats.HistoryStepDetails();
        this.mReadHistoryStepDetails = new BatteryStats.HistoryStepDetails();
        this.mTmpHistoryStepDetails = new BatteryStats.HistoryStepDetails();
        this.mScreenState = 0;
        this.mScreenBrightnessBin = -1;
        this.mScreenBrightnessTimer = new StopwatchTimer[5];
        this.mUsbDataState = 0;
        this.mGpsSignalQualityBin = -1;
        this.mGpsSignalQualityTimer = new StopwatchTimer[2];
        this.mPhoneSignalStrengthBin = -1;
        this.mPhoneSignalStrengthBinRaw = -1;
        this.mPhoneSignalStrengthsTimer = new StopwatchTimer[5];
        this.mPhoneDataConnectionType = -1;
        this.mPhoneDataConnectionsTimer = new StopwatchTimer[21];
        this.mNetworkByteActivityCounters = new LongSamplingCounter[10];
        this.mNetworkPacketActivityCounters = new LongSamplingCounter[10];
        this.mHasWifiReporting = false;
        this.mHasBluetoothReporting = false;
        this.mHasModemReporting = false;
        this.mWifiState = -1;
        this.mWifiStateTimer = new StopwatchTimer[8];
        this.mWifiSupplState = -1;
        this.mWifiSupplStateTimer = new StopwatchTimer[13];
        this.mWifiSignalStrengthBin = -1;
        this.mWifiSignalStrengthsTimer = new StopwatchTimer[5];
        this.mIsCellularTxPowerHigh = false;
        this.mMobileRadioPowerState = 1;
        this.mWifiRadioPowerState = 1;
        this.mCharging = true;
        this.mInitStepMode = 0;
        this.mCurStepMode = 0;
        this.mModStepMode = 0;
        this.mDischargeStepTracker = new BatteryStats.LevelStepTracker(200);
        this.mDailyDischargeStepTracker = new BatteryStats.LevelStepTracker(400);
        this.mChargeStepTracker = new BatteryStats.LevelStepTracker(200);
        this.mDailyChargeStepTracker = new BatteryStats.LevelStepTracker(400);
        this.mDailyStartTime = 0L;
        this.mNextMinDailyDeadline = 0L;
        this.mNextMaxDailyDeadline = 0L;
        this.mDailyItems = new ArrayList<>();
        this.mLastWriteTime = 0L;
        this.mPhoneServiceState = -1;
        this.mPhoneServiceStateRaw = -1;
        this.mPhoneSimStateRaw = -1;
        this.mEstimatedBatteryCapacity = -1;
        this.mMinLearnedBatteryCapacity = -1;
        this.mMaxLearnedBatteryCapacity = -1;
        this.mRpmStats = new HashMap<>();
        this.mScreenOffRpmStats = new HashMap<>();
        this.mKernelWakelockStats = new HashMap<>();
        this.mLastWakeupReason = null;
        this.mLastWakeupUptimeMs = 0L;
        this.mWakeupReasonStats = new HashMap<>();
        this.mChangedStates = 0;
        this.mChangedStates2 = 0;
        this.mInitialAcquireWakeUid = -1;
        this.mWifiFullLockNesting = 0;
        this.mWifiScanNesting = 0;
        this.mWifiMulticastNesting = 0;
        this.mNetworkStatsFactory = new NetworkStatsFactory();
        this.mNetworkStatsPool = new Pools.SynchronizedPool(6);
        this.mWifiNetworkLock = new Object();
        this.mWifiIfaces = EmptyArray.STRING;
        this.mLastWifiNetworkStats = new NetworkStats(0L, -1);
        this.mModemNetworkLock = new Object();
        this.mModemIfaces = EmptyArray.STRING;
        this.mLastModemNetworkStats = new NetworkStats(0L, -1);
        this.mLastModemActivityInfo = new ModemActivityInfo(0L, 0, 0, new int[0], 0, 0);
        this.mLastBluetoothActivityInfo = new BluetoothActivityInfoCache();
        this.mPendingWrite = null;
        this.mWriteLock = new ReentrantLock();
        init(clocks);
        this.mFile = null;
        this.mCheckinFile = null;
        this.mDailyFile = null;
        this.mHandler = null;
        this.mPlatformIdleStateCallback = null;
        this.mUserInfoProvider = null;
        this.mConstants = new Constants(this.mHandler);
        clearHistoryLocked();
    }

    private void init(Clocks clocks) {
        this.mClocks = clocks;
    }

    /* loaded from: /home/user/work/dex/classes3.dex */
    public static class TimeBase {
        protected final ArrayList<TimeBaseObs> mObservers = new ArrayList<>();
        protected long mPastRealtime;
        protected long mPastUptime;
        protected long mRealtime;
        protected long mRealtimeStart;
        protected boolean mRunning;
        protected long mUnpluggedRealtime;
        protected long mUnpluggedUptime;
        protected long mUptime;
        protected long mUptimeStart;

        public void dump(PrintWriter printWriter, String str) {
            StringBuilder sb = new StringBuilder(128);
            printWriter.print(str);
            printWriter.print("mRunning=");
            printWriter.println(this.mRunning);
            sb.setLength(0);
            sb.append(str);
            sb.append("mUptime=");
            BatteryStats.formatTimeMs(sb, this.mUptime / 1000);
            printWriter.println(sb.toString());
            sb.setLength(0);
            sb.append(str);
            sb.append("mRealtime=");
            BatteryStats.formatTimeMs(sb, this.mRealtime / 1000);
            printWriter.println(sb.toString());
            sb.setLength(0);
            sb.append(str);
            sb.append("mPastUptime=");
            BatteryStats.formatTimeMs(sb, this.mPastUptime / 1000);
            sb.append("mUptimeStart=");
            BatteryStats.formatTimeMs(sb, this.mUptimeStart / 1000);
            sb.append("mUnpluggedUptime=");
            BatteryStats.formatTimeMs(sb, this.mUnpluggedUptime / 1000);
            printWriter.println(sb.toString());
            sb.setLength(0);
            sb.append(str);
            sb.append("mPastRealtime=");
            BatteryStats.formatTimeMs(sb, this.mPastRealtime / 1000);
            sb.append("mRealtimeStart=");
            BatteryStats.formatTimeMs(sb, this.mRealtimeStart / 1000);
            sb.append("mUnpluggedRealtime=");
            BatteryStats.formatTimeMs(sb, this.mUnpluggedRealtime / 1000);
            printWriter.println(sb.toString());
        }

        public void add(TimeBaseObs timeBaseObs) {
            this.mObservers.add(timeBaseObs);
        }

        public void remove(TimeBaseObs timeBaseObs) {
            if (this.mObservers.remove(timeBaseObs)) {
                return;
            }
            Slog.wtf(BatteryStatsImpl.TAG, "Removed unknown observer: " + timeBaseObs);
        }

        public boolean hasObserver(TimeBaseObs timeBaseObs) {
            return this.mObservers.contains(timeBaseObs);
        }

        public void init(long j, long j2) {
            this.mRealtime = 0L;
            this.mUptime = 0L;
            this.mPastUptime = 0L;
            this.mPastRealtime = 0L;
            this.mUptimeStart = j;
            this.mRealtimeStart = j2;
            this.mUnpluggedUptime = getUptime(this.mUptimeStart);
            this.mUnpluggedRealtime = getRealtime(this.mRealtimeStart);
        }

        public void reset(long j, long j2) {
            if (!this.mRunning) {
                this.mPastUptime = 0L;
                this.mPastRealtime = 0L;
            } else {
                this.mUptimeStart = j;
                this.mRealtimeStart = j2;
                this.mUnpluggedUptime = getUptime(j);
                this.mUnpluggedRealtime = getRealtime(j2);
            }
        }

        public long computeUptime(long j, int i) {
            switch (i) {
                case 0:
                    return this.mUptime + getUptime(j);
                case 1:
                    return getUptime(j);
                case 2:
                    return getUptime(j) - this.mUnpluggedUptime;
                default:
                    return 0L;
            }
        }

        public long computeRealtime(long j, int i) {
            switch (i) {
                case 0:
                    return this.mRealtime + getRealtime(j);
                case 1:
                    return getRealtime(j);
                case 2:
                    return getRealtime(j) - this.mUnpluggedRealtime;
                default:
                    return 0L;
            }
        }

        public long getUptime(long j) {
            long j2 = this.mPastUptime;
            return this.mRunning ? j2 + (j - this.mUptimeStart) : j2;
        }

        public long getRealtime(long j) {
            long j2 = this.mPastRealtime;
            return this.mRunning ? j2 + (j - this.mRealtimeStart) : j2;
        }

        public long getUptimeStart() {
            return this.mUptimeStart;
        }

        public long getRealtimeStart() {
            return this.mRealtimeStart;
        }

        public boolean isRunning() {
            return this.mRunning;
        }

        public boolean setRunning(boolean z, long j, long j2) {
            if (this.mRunning == z) {
                return false;
            }
            this.mRunning = z;
            if (z) {
                this.mUptimeStart = j;
                this.mRealtimeStart = j2;
                long uptime = getUptime(j);
                this.mUnpluggedUptime = uptime;
                long realtime = getRealtime(j2);
                this.mUnpluggedRealtime = realtime;
                for (int size = this.mObservers.size() - 1; size >= 0; size--) {
                    this.mObservers.get(size).onTimeStarted(j2, uptime, realtime);
                }
            } else {
                this.mPastUptime += j - this.mUptimeStart;
                this.mPastRealtime += j2 - this.mRealtimeStart;
                long uptime2 = getUptime(j);
                long realtime2 = getRealtime(j2);
                for (int size2 = this.mObservers.size() - 1; size2 >= 0; size2--) {
                    this.mObservers.get(size2).onTimeStopped(j2, uptime2, realtime2);
                }
            }
            return true;
        }

        public void readSummaryFromParcel(Parcel parcel) {
            this.mUptime = parcel.readLong();
            this.mRealtime = parcel.readLong();
        }

        public void writeSummaryToParcel(Parcel parcel, long j, long j2) {
            parcel.writeLong(computeUptime(j, 0));
            parcel.writeLong(computeRealtime(j2, 0));
        }

        public void readFromParcel(Parcel parcel) {
            this.mRunning = false;
            this.mUptime = parcel.readLong();
            this.mPastUptime = parcel.readLong();
            this.mUptimeStart = parcel.readLong();
            this.mRealtime = parcel.readLong();
            this.mPastRealtime = parcel.readLong();
            this.mRealtimeStart = parcel.readLong();
            this.mUnpluggedUptime = parcel.readLong();
            this.mUnpluggedRealtime = parcel.readLong();
        }

        public void writeToParcel(Parcel parcel, long j, long j2) {
            long uptime = getUptime(j);
            long realtime = getRealtime(j2);
            parcel.writeLong(this.mUptime);
            parcel.writeLong(uptime);
            parcel.writeLong(this.mUptimeStart);
            parcel.writeLong(this.mRealtime);
            parcel.writeLong(realtime);
            parcel.writeLong(this.mRealtimeStart);
            parcel.writeLong(this.mUnpluggedUptime);
            parcel.writeLong(this.mUnpluggedRealtime);
        }
    }

    /* loaded from: /home/user/work/dex/classes3.dex */
    public static class Counter extends BatteryStats.Counter implements TimeBaseObs {
        final AtomicInteger mCount = new AtomicInteger();
        int mLoadedCount;
        int mPluggedCount;
        final TimeBase mTimeBase;
        int mUnpluggedCount;

        public Counter(TimeBase timeBase, Parcel parcel) {
            this.mTimeBase = timeBase;
            this.mPluggedCount = parcel.readInt();
            this.mCount.set(this.mPluggedCount);
            this.mLoadedCount = parcel.readInt();
            this.mUnpluggedCount = parcel.readInt();
            timeBase.add(this);
        }

        public Counter(TimeBase timeBase) {
            this.mTimeBase = timeBase;
            timeBase.add(this);
        }

        public void writeToParcel(Parcel parcel) {
            parcel.writeInt(this.mCount.get());
            parcel.writeInt(this.mLoadedCount);
            parcel.writeInt(this.mUnpluggedCount);
        }

        @Override // com.android.internal.os.BatteryStatsImpl.TimeBaseObs
        public void onTimeStarted(long j, long j2, long j3) {
            this.mUnpluggedCount = this.mPluggedCount;
        }

        @Override // com.android.internal.os.BatteryStatsImpl.TimeBaseObs
        public void onTimeStopped(long j, long j2, long j3) {
            this.mPluggedCount = this.mCount.get();
        }

        public static void writeCounterToParcel(Parcel parcel, Counter counter) {
            if (counter == null) {
                parcel.writeInt(0);
            } else {
                parcel.writeInt(1);
                counter.writeToParcel(parcel);
            }
        }

        public static Counter readCounterFromParcel(TimeBase timeBase, Parcel parcel) {
            if (parcel.readInt() == 0) {
                return null;
            }
            return new Counter(timeBase, parcel);
        }

        public int getCountLocked(int i) {
            int i2 = this.mCount.get();
            if (i == 2) {
                return i2 - this.mUnpluggedCount;
            }
            return i != 0 ? i2 - this.mLoadedCount : i2;
        }

        public void logState(Printer printer, String str) {
            printer.println(str + "mCount=" + this.mCount.get() + " mLoadedCount=" + this.mLoadedCount + " mUnpluggedCount=" + this.mUnpluggedCount + " mPluggedCount=" + this.mPluggedCount);
        }

        @VisibleForTesting(visibility = VisibleForTesting.Visibility.PACKAGE)
        public void stepAtomic() {
            if (this.mTimeBase.isRunning()) {
                this.mCount.incrementAndGet();
            }
        }

        void addAtomic(int i) {
            if (this.mTimeBase.isRunning()) {
                this.mCount.addAndGet(i);
            }
        }

        void reset(boolean z) {
            this.mCount.set(0);
            this.mUnpluggedCount = 0;
            this.mPluggedCount = 0;
            this.mLoadedCount = 0;
            if (z) {
                detach();
            }
        }

        void detach() {
            this.mTimeBase.remove(this);
        }

        @VisibleForTesting(visibility = VisibleForTesting.Visibility.PACKAGE)
        public void writeSummaryFromParcelLocked(Parcel parcel) {
            parcel.writeInt(this.mCount.get());
        }

        @VisibleForTesting(visibility = VisibleForTesting.Visibility.PACKAGE)
        public void readSummaryFromParcelLocked(Parcel parcel) {
            this.mLoadedCount = parcel.readInt();
            this.mCount.set(this.mLoadedCount);
            int i = this.mLoadedCount;
            this.mPluggedCount = i;
            this.mUnpluggedCount = i;
        }
    }

    @VisibleForTesting
    /* loaded from: /home/user/work/dex/classes3.dex */
    public static class LongSamplingCounterArray extends BatteryStats.LongCounterArray implements TimeBaseObs {
        public long[] mCounts;
        public long[] mLoadedCounts;
        final TimeBase mTimeBase;
        public long[] mUnpluggedCounts;

        @Override // com.android.internal.os.BatteryStatsImpl.TimeBaseObs
        public void onTimeStopped(long j, long j2, long j3) {
        }

        private LongSamplingCounterArray(TimeBase timeBase, Parcel parcel) {
            this.mTimeBase = timeBase;
            this.mCounts = parcel.createLongArray();
            this.mLoadedCounts = parcel.createLongArray();
            this.mUnpluggedCounts = parcel.createLongArray();
            timeBase.add(this);
        }

        public LongSamplingCounterArray(TimeBase timeBase) {
            this.mTimeBase = timeBase;
            timeBase.add(this);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void writeToParcel(Parcel parcel) {
            parcel.writeLongArray(this.mCounts);
            parcel.writeLongArray(this.mLoadedCounts);
            parcel.writeLongArray(this.mUnpluggedCounts);
        }

        @Override // com.android.internal.os.BatteryStatsImpl.TimeBaseObs
        public void onTimeStarted(long j, long j2, long j3) {
            this.mUnpluggedCounts = copyArray(this.mCounts, this.mUnpluggedCounts);
        }

        public long[] getCountsLocked(int i) {
            long[] copyArray = copyArray(this.mCounts, null);
            if (i == 2) {
                subtract(copyArray, this.mUnpluggedCounts);
            } else if (i != 0) {
                subtract(copyArray, this.mLoadedCounts);
            }
            return copyArray;
        }

        public void logState(Printer printer, String str) {
            printer.println(str + "mCounts=" + Arrays.toString(this.mCounts) + " mLoadedCounts=" + Arrays.toString(this.mLoadedCounts) + " mUnpluggedCounts=" + Arrays.toString(this.mUnpluggedCounts));
        }

        public void addCountLocked(long[] jArr) {
            addCountLocked(jArr, this.mTimeBase.isRunning());
        }

        public void addCountLocked(long[] jArr, boolean z) {
            if (jArr != null && z) {
                if (this.mCounts == null) {
                    this.mCounts = new long[jArr.length];
                }
                for (int i = 0; i < jArr.length; i++) {
                    long[] jArr2 = this.mCounts;
                    jArr2[i] = jArr2[i] + jArr[i];
                }
            }
        }

        public int getSize() {
            if (this.mCounts == null) {
                return 0;
            }
            return this.mCounts.length;
        }

        public void reset(boolean z) {
            fillArray(this.mCounts, 0L);
            fillArray(this.mLoadedCounts, 0L);
            fillArray(this.mUnpluggedCounts, 0L);
            if (z) {
                detach();
            }
        }

        public void detach() {
            this.mTimeBase.remove(this);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void writeSummaryToParcelLocked(Parcel parcel) {
            parcel.writeLongArray(this.mCounts);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void readSummaryFromParcelLocked(Parcel parcel) {
            this.mCounts = parcel.createLongArray();
            this.mLoadedCounts = copyArray(this.mCounts, this.mLoadedCounts);
            this.mUnpluggedCounts = copyArray(this.mCounts, this.mUnpluggedCounts);
        }

        public static void writeToParcel(Parcel parcel, LongSamplingCounterArray longSamplingCounterArray) {
            if (longSamplingCounterArray != null) {
                parcel.writeInt(1);
                longSamplingCounterArray.writeToParcel(parcel);
            } else {
                parcel.writeInt(0);
            }
        }

        public static LongSamplingCounterArray readFromParcel(Parcel parcel, TimeBase timeBase) {
            if (parcel.readInt() != 0) {
                return new LongSamplingCounterArray(timeBase, parcel);
            }
            return null;
        }

        public static void writeSummaryToParcelLocked(Parcel parcel, LongSamplingCounterArray longSamplingCounterArray) {
            if (longSamplingCounterArray != null) {
                parcel.writeInt(1);
                longSamplingCounterArray.writeSummaryToParcelLocked(parcel);
            } else {
                parcel.writeInt(0);
            }
        }

        public static LongSamplingCounterArray readSummaryFromParcelLocked(Parcel parcel, TimeBase timeBase) {
            if (parcel.readInt() == 0) {
                return null;
            }
            LongSamplingCounterArray longSamplingCounterArray = new LongSamplingCounterArray(timeBase);
            longSamplingCounterArray.readSummaryFromParcelLocked(parcel);
            return longSamplingCounterArray;
        }

        private static void fillArray(long[] jArr, long j) {
            if (jArr != null) {
                Arrays.fill(jArr, j);
            }
        }

        private static void subtract(long[] jArr, long[] jArr2) {
            if (jArr2 == null) {
                return;
            }
            for (int i = 0; i < jArr.length; i++) {
                jArr[i] = jArr[i] - jArr2[i];
            }
        }

        private static long[] copyArray(long[] jArr, long[] jArr2) {
            if (jArr == null) {
                return null;
            }
            if (jArr2 == null) {
                jArr2 = new long[jArr.length];
            }
            System.arraycopy(jArr, 0, jArr2, 0, jArr.length);
            return jArr2;
        }
    }

    @VisibleForTesting
    /* loaded from: /home/user/work/dex/classes3.dex */
    public static class LongSamplingCounter extends BatteryStats.LongCounter implements TimeBaseObs {
        public long mCount;
        public long mCurrentCount;
        public long mLoadedCount;
        final TimeBase mTimeBase;
        public long mUnpluggedCount;

        @Override // com.android.internal.os.BatteryStatsImpl.TimeBaseObs
        public void onTimeStopped(long j, long j2, long j3) {
        }

        public LongSamplingCounter(TimeBase timeBase, Parcel parcel) {
            this.mTimeBase = timeBase;
            this.mCount = parcel.readLong();
            this.mCurrentCount = parcel.readLong();
            this.mLoadedCount = parcel.readLong();
            this.mUnpluggedCount = parcel.readLong();
            timeBase.add(this);
        }

        public LongSamplingCounter(TimeBase timeBase) {
            this.mTimeBase = timeBase;
            timeBase.add(this);
        }

        public void writeToParcel(Parcel parcel) {
            parcel.writeLong(this.mCount);
            parcel.writeLong(this.mCurrentCount);
            parcel.writeLong(this.mLoadedCount);
            parcel.writeLong(this.mUnpluggedCount);
        }

        @Override // com.android.internal.os.BatteryStatsImpl.TimeBaseObs
        public void onTimeStarted(long j, long j2, long j3) {
            this.mUnpluggedCount = this.mCount;
        }

        public long getCountLocked(int i) {
            long j = this.mCount;
            if (i == 2) {
                return j - this.mUnpluggedCount;
            }
            return i != 0 ? j - this.mLoadedCount : j;
        }

        public void logState(Printer printer, String str) {
            printer.println(str + "mCount=" + this.mCount + " mCurrentCount=" + this.mCurrentCount + " mLoadedCount=" + this.mLoadedCount + " mUnpluggedCount=" + this.mUnpluggedCount);
        }

        public void addCountLocked(long j) {
            update(this.mCurrentCount + j, this.mTimeBase.isRunning());
        }

        public void addCountLocked(long j, boolean z) {
            update(this.mCurrentCount + j, z);
        }

        public void update(long j) {
            update(j, this.mTimeBase.isRunning());
        }

        public void update(long j, boolean z) {
            if (j < this.mCurrentCount) {
                this.mCurrentCount = 0L;
            }
            if (z) {
                this.mCount += j - this.mCurrentCount;
            }
            this.mCurrentCount = j;
        }

        public void reset(boolean z) {
            this.mCount = 0L;
            this.mUnpluggedCount = 0L;
            this.mLoadedCount = 0L;
            if (z) {
                detach();
            }
        }

        public void detach() {
            this.mTimeBase.remove(this);
        }

        public void writeSummaryFromParcelLocked(Parcel parcel) {
            parcel.writeLong(this.mCount);
        }

        public void readSummaryFromParcelLocked(Parcel parcel) {
            long readLong = parcel.readLong();
            this.mLoadedCount = readLong;
            this.mUnpluggedCount = readLong;
            this.mCount = readLong;
        }
    }

    /* loaded from: /home/user/work/dex/classes3.dex */
    public static abstract class Timer extends BatteryStats.Timer implements TimeBaseObs {
        protected final Clocks mClocks;
        protected int mCount;
        protected int mLastCount;
        protected long mLastTime;
        protected int mLoadedCount;
        protected long mLoadedTime;
        protected final TimeBase mTimeBase;
        protected long mTimeBeforeMark;
        protected long mTotalTime;
        protected final int mType;
        protected int mUnpluggedCount;
        protected long mUnpluggedTime;

        protected abstract int computeCurrentCountLocked();

        protected abstract long computeRunTimeLocked(long j);

        public Timer(Clocks clocks, int i, TimeBase timeBase, Parcel parcel) {
            this.mClocks = clocks;
            this.mType = i;
            this.mTimeBase = timeBase;
            this.mCount = parcel.readInt();
            this.mLoadedCount = parcel.readInt();
            this.mLastCount = 0;
            this.mUnpluggedCount = parcel.readInt();
            this.mTotalTime = parcel.readLong();
            this.mLoadedTime = parcel.readLong();
            this.mLastTime = 0L;
            this.mUnpluggedTime = parcel.readLong();
            this.mTimeBeforeMark = parcel.readLong();
            timeBase.add(this);
        }

        public Timer(Clocks clocks, int i, TimeBase timeBase) {
            this.mClocks = clocks;
            this.mType = i;
            this.mTimeBase = timeBase;
            timeBase.add(this);
        }

        public boolean reset(boolean z) {
            this.mTimeBeforeMark = 0L;
            this.mLastTime = 0L;
            this.mLoadedTime = 0L;
            this.mTotalTime = 0L;
            this.mLastCount = 0;
            this.mLoadedCount = 0;
            this.mCount = 0;
            if (!z) {
                return true;
            }
            detach();
            return true;
        }

        public void detach() {
            this.mTimeBase.remove(this);
        }

        public void writeToParcel(Parcel parcel, long j) {
            parcel.writeInt(computeCurrentCountLocked());
            parcel.writeInt(this.mLoadedCount);
            parcel.writeInt(this.mUnpluggedCount);
            parcel.writeLong(computeRunTimeLocked(this.mTimeBase.getRealtime(j)));
            parcel.writeLong(this.mLoadedTime);
            parcel.writeLong(this.mUnpluggedTime);
            parcel.writeLong(this.mTimeBeforeMark);
        }

        public void onTimeStarted(long j, long j2, long j3) {
            this.mUnpluggedTime = computeRunTimeLocked(j3);
            this.mUnpluggedCount = computeCurrentCountLocked();
        }

        public void onTimeStopped(long j, long j2, long j3) {
            this.mTotalTime = computeRunTimeLocked(j3);
            this.mCount = computeCurrentCountLocked();
        }

        public static void writeTimerToParcel(Parcel parcel, Timer timer, long j) {
            if (timer == null) {
                parcel.writeInt(0);
            } else {
                parcel.writeInt(1);
                timer.writeToParcel(parcel, j);
            }
        }

        public long getTotalTimeLocked(long j, int i) {
            long computeRunTimeLocked = computeRunTimeLocked(this.mTimeBase.getRealtime(j));
            if (i == 2) {
                return computeRunTimeLocked - this.mUnpluggedTime;
            }
            return i != 0 ? computeRunTimeLocked - this.mLoadedTime : computeRunTimeLocked;
        }

        public int getCountLocked(int i) {
            int computeCurrentCountLocked = computeCurrentCountLocked();
            if (i == 2) {
                return computeCurrentCountLocked - this.mUnpluggedCount;
            }
            return i != 0 ? computeCurrentCountLocked - this.mLoadedCount : computeCurrentCountLocked;
        }

        public long getTimeSinceMarkLocked(long j) {
            return computeRunTimeLocked(this.mTimeBase.getRealtime(j)) - this.mTimeBeforeMark;
        }

        public void logState(Printer printer, String str) {
            printer.println(str + "mCount=" + this.mCount + " mLoadedCount=" + this.mLoadedCount + " mLastCount=" + this.mLastCount + " mUnpluggedCount=" + this.mUnpluggedCount);
            StringBuilder sb = new StringBuilder();
            sb.append(str);
            sb.append("mTotalTime=");
            sb.append(this.mTotalTime);
            sb.append(" mLoadedTime=");
            sb.append(this.mLoadedTime);
            printer.println(sb.toString());
            printer.println(str + "mLastTime=" + this.mLastTime + " mUnpluggedTime=" + this.mUnpluggedTime);
        }

        public void writeSummaryFromParcelLocked(Parcel parcel, long j) {
            parcel.writeLong(computeRunTimeLocked(this.mTimeBase.getRealtime(j)));
            parcel.writeInt(computeCurrentCountLocked());
        }

        public void readSummaryFromParcelLocked(Parcel parcel) {
            long readLong = parcel.readLong();
            this.mLoadedTime = readLong;
            this.mTotalTime = readLong;
            this.mLastTime = 0L;
            this.mUnpluggedTime = this.mTotalTime;
            int readInt = parcel.readInt();
            this.mLoadedCount = readInt;
            this.mCount = readInt;
            this.mLastCount = 0;
            this.mUnpluggedCount = this.mCount;
            this.mTimeBeforeMark = this.mTotalTime;
        }
    }

    /* loaded from: /home/user/work/dex/classes3.dex */
    public static class SamplingTimer extends Timer {
        int mCurrentReportedCount;
        long mCurrentReportedTotalTime;
        boolean mTimeBaseRunning;
        boolean mTrackingReportedValues;
        int mUnpluggedReportedCount;
        long mUnpluggedReportedTotalTime;
        int mUpdateVersion;

        @VisibleForTesting
        public SamplingTimer(Clocks clocks, TimeBase timeBase, Parcel parcel) {
            super(clocks, 0, timeBase, parcel);
            this.mCurrentReportedCount = parcel.readInt();
            this.mUnpluggedReportedCount = parcel.readInt();
            this.mCurrentReportedTotalTime = parcel.readLong();
            this.mUnpluggedReportedTotalTime = parcel.readLong();
            this.mTrackingReportedValues = parcel.readInt() == 1;
            this.mTimeBaseRunning = timeBase.isRunning();
        }

        @VisibleForTesting
        public SamplingTimer(Clocks clocks, TimeBase timeBase) {
            super(clocks, 0, timeBase);
            this.mTrackingReportedValues = false;
            this.mTimeBaseRunning = timeBase.isRunning();
        }

        public void endSample() {
            this.mTotalTime = computeRunTimeLocked(0L);
            this.mCount = computeCurrentCountLocked();
            this.mCurrentReportedTotalTime = 0L;
            this.mUnpluggedReportedTotalTime = 0L;
            this.mCurrentReportedCount = 0;
            this.mUnpluggedReportedCount = 0;
        }

        public void setUpdateVersion(int i) {
            this.mUpdateVersion = i;
        }

        public int getUpdateVersion() {
            return this.mUpdateVersion;
        }

        public void update(long j, int i) {
            if (this.mTimeBaseRunning && !this.mTrackingReportedValues) {
                this.mUnpluggedReportedTotalTime = j;
                this.mUnpluggedReportedCount = i;
            }
            this.mTrackingReportedValues = true;
            if (j < this.mCurrentReportedTotalTime || i < this.mCurrentReportedCount) {
                endSample();
            }
            this.mCurrentReportedTotalTime = j;
            this.mCurrentReportedCount = i;
        }

        public void add(long j, int i) {
            update(this.mCurrentReportedTotalTime + j, this.mCurrentReportedCount + i);
        }

        @Override // com.android.internal.os.BatteryStatsImpl.Timer, com.android.internal.os.BatteryStatsImpl.TimeBaseObs
        public void onTimeStarted(long j, long j2, long j3) {
            super.onTimeStarted(j, j2, j3);
            if (this.mTrackingReportedValues) {
                this.mUnpluggedReportedTotalTime = this.mCurrentReportedTotalTime;
                this.mUnpluggedReportedCount = this.mCurrentReportedCount;
            }
            this.mTimeBaseRunning = true;
        }

        @Override // com.android.internal.os.BatteryStatsImpl.Timer, com.android.internal.os.BatteryStatsImpl.TimeBaseObs
        public void onTimeStopped(long j, long j2, long j3) {
            super.onTimeStopped(j, j2, j3);
            this.mTimeBaseRunning = false;
        }

        @Override // com.android.internal.os.BatteryStatsImpl.Timer
        public void logState(Printer printer, String str) {
            super.logState(printer, str);
            printer.println(str + "mCurrentReportedCount=" + this.mCurrentReportedCount + " mUnpluggedReportedCount=" + this.mUnpluggedReportedCount + " mCurrentReportedTotalTime=" + this.mCurrentReportedTotalTime + " mUnpluggedReportedTotalTime=" + this.mUnpluggedReportedTotalTime);
        }

        @Override // com.android.internal.os.BatteryStatsImpl.Timer
        protected long computeRunTimeLocked(long j) {
            return this.mTotalTime + ((this.mTimeBaseRunning && this.mTrackingReportedValues) ? this.mCurrentReportedTotalTime - this.mUnpluggedReportedTotalTime : 0L);
        }

        @Override // com.android.internal.os.BatteryStatsImpl.Timer
        protected int computeCurrentCountLocked() {
            return this.mCount + ((this.mTimeBaseRunning && this.mTrackingReportedValues) ? this.mCurrentReportedCount - this.mUnpluggedReportedCount : 0);
        }

        @Override // com.android.internal.os.BatteryStatsImpl.Timer
        public void writeToParcel(Parcel parcel, long j) {
            super.writeToParcel(parcel, j);
            parcel.writeInt(this.mCurrentReportedCount);
            parcel.writeInt(this.mUnpluggedReportedCount);
            parcel.writeLong(this.mCurrentReportedTotalTime);
            parcel.writeLong(this.mUnpluggedReportedTotalTime);
            parcel.writeInt(this.mTrackingReportedValues ? 1 : 0);
        }

        @Override // com.android.internal.os.BatteryStatsImpl.Timer
        public boolean reset(boolean z) {
            super.reset(z);
            this.mTrackingReportedValues = false;
            this.mUnpluggedReportedTotalTime = 0L;
            this.mUnpluggedReportedCount = 0;
            return true;
        }
    }

    /* loaded from: /home/user/work/dex/classes3.dex */
    public static class BatchTimer extends Timer {
        boolean mInDischarge;
        long mLastAddedDuration;
        long mLastAddedTime;
        final Uid mUid;

        BatchTimer(Clocks clocks, Uid uid, int i, TimeBase timeBase, Parcel parcel) {
            super(clocks, i, timeBase, parcel);
            this.mUid = uid;
            this.mLastAddedTime = parcel.readLong();
            this.mLastAddedDuration = parcel.readLong();
            this.mInDischarge = timeBase.isRunning();
        }

        BatchTimer(Clocks clocks, Uid uid, int i, TimeBase timeBase) {
            super(clocks, i, timeBase);
            this.mUid = uid;
            this.mInDischarge = timeBase.isRunning();
        }

        @Override // com.android.internal.os.BatteryStatsImpl.Timer
        public void writeToParcel(Parcel parcel, long j) {
            super.writeToParcel(parcel, j);
            parcel.writeLong(this.mLastAddedTime);
            parcel.writeLong(this.mLastAddedDuration);
        }

        @Override // com.android.internal.os.BatteryStatsImpl.Timer, com.android.internal.os.BatteryStatsImpl.TimeBaseObs
        public void onTimeStopped(long j, long j2, long j3) {
            recomputeLastDuration(this.mClocks.elapsedRealtime() * 1000, false);
            this.mInDischarge = false;
            super.onTimeStopped(j, j2, j3);
        }

        @Override // com.android.internal.os.BatteryStatsImpl.Timer, com.android.internal.os.BatteryStatsImpl.TimeBaseObs
        public void onTimeStarted(long j, long j2, long j3) {
            recomputeLastDuration(j, false);
            this.mInDischarge = true;
            if (this.mLastAddedTime == j) {
                this.mTotalTime += this.mLastAddedDuration;
            }
            super.onTimeStarted(j, j2, j3);
        }

        @Override // com.android.internal.os.BatteryStatsImpl.Timer
        public void logState(Printer printer, String str) {
            super.logState(printer, str);
            printer.println(str + "mLastAddedTime=" + this.mLastAddedTime + " mLastAddedDuration=" + this.mLastAddedDuration);
        }

        private long computeOverage(long j) {
            if (this.mLastAddedTime > 0) {
                return (this.mLastTime + this.mLastAddedDuration) - j;
            }
            return 0L;
        }

        private void recomputeLastDuration(long j, boolean z) {
            long computeOverage = computeOverage(j);
            if (computeOverage > 0) {
                if (this.mInDischarge) {
                    this.mTotalTime -= computeOverage;
                }
                if (z) {
                    this.mLastAddedTime = 0L;
                } else {
                    this.mLastAddedTime = j;
                    this.mLastAddedDuration -= computeOverage;
                }
            }
        }

        public void addDuration(BatteryStatsImpl batteryStatsImpl, long j) {
            long elapsedRealtime = this.mClocks.elapsedRealtime() * 1000;
            recomputeLastDuration(elapsedRealtime, true);
            this.mLastAddedTime = elapsedRealtime;
            this.mLastAddedDuration = j * 1000;
            if (this.mInDischarge) {
                this.mTotalTime += this.mLastAddedDuration;
                this.mCount++;
            }
        }

        public void abortLastDuration(BatteryStatsImpl batteryStatsImpl) {
            recomputeLastDuration(this.mClocks.elapsedRealtime() * 1000, true);
        }

        @Override // com.android.internal.os.BatteryStatsImpl.Timer
        protected int computeCurrentCountLocked() {
            return this.mCount;
        }

        @Override // com.android.internal.os.BatteryStatsImpl.Timer
        protected long computeRunTimeLocked(long j) {
            long computeOverage = computeOverage(this.mClocks.elapsedRealtime() * 1000);
            if (computeOverage > 0) {
                this.mTotalTime = computeOverage;
                return computeOverage;
            }
            return this.mTotalTime;
        }

        @Override // com.android.internal.os.BatteryStatsImpl.Timer
        public boolean reset(boolean z) {
            long elapsedRealtime = this.mClocks.elapsedRealtime() * 1000;
            recomputeLastDuration(elapsedRealtime, true);
            boolean z2 = false;
            boolean z3 = this.mLastAddedTime == elapsedRealtime;
            if (!z3 && z) {
                z2 = true;
            }
            super.reset(z2);
            return !z3;
        }
    }

    /* loaded from: /home/user/work/dex/classes3.dex */
    public static class DurationTimer extends StopwatchTimer {
        long mCurrentDurationMs;
        long mMaxDurationMs;
        long mStartTimeMs;
        long mTotalDurationMs;

        public DurationTimer(Clocks clocks, Uid uid, int i, ArrayList<StopwatchTimer> arrayList, TimeBase timeBase, Parcel parcel) {
            super(clocks, uid, i, arrayList, timeBase, parcel);
            this.mStartTimeMs = -1L;
            this.mMaxDurationMs = parcel.readLong();
            this.mTotalDurationMs = parcel.readLong();
            this.mCurrentDurationMs = parcel.readLong();
        }

        public DurationTimer(Clocks clocks, Uid uid, int i, ArrayList<StopwatchTimer> arrayList, TimeBase timeBase) {
            super(clocks, uid, i, arrayList, timeBase);
            this.mStartTimeMs = -1L;
        }

        @Override // com.android.internal.os.BatteryStatsImpl.StopwatchTimer, com.android.internal.os.BatteryStatsImpl.Timer
        public void writeToParcel(Parcel parcel, long j) {
            super.writeToParcel(parcel, j);
            long j2 = j / 1000;
            parcel.writeLong(getMaxDurationMsLocked(j2));
            parcel.writeLong(this.mTotalDurationMs);
            parcel.writeLong(getCurrentDurationMsLocked(j2));
        }

        @Override // com.android.internal.os.BatteryStatsImpl.Timer
        public void writeSummaryFromParcelLocked(Parcel parcel, long j) {
            super.writeSummaryFromParcelLocked(parcel, j);
            long j2 = j / 1000;
            parcel.writeLong(getMaxDurationMsLocked(j2));
            parcel.writeLong(getTotalDurationMsLocked(j2));
        }

        @Override // com.android.internal.os.BatteryStatsImpl.StopwatchTimer, com.android.internal.os.BatteryStatsImpl.Timer
        public void readSummaryFromParcelLocked(Parcel parcel) {
            super.readSummaryFromParcelLocked(parcel);
            this.mMaxDurationMs = parcel.readLong();
            this.mTotalDurationMs = parcel.readLong();
            this.mStartTimeMs = -1L;
            this.mCurrentDurationMs = 0L;
        }

        @Override // com.android.internal.os.BatteryStatsImpl.Timer, com.android.internal.os.BatteryStatsImpl.TimeBaseObs
        public void onTimeStarted(long j, long j2, long j3) {
            super.onTimeStarted(j, j2, j3);
            if (this.mNesting > 0) {
                this.mStartTimeMs = j3 / 1000;
            }
        }

        @Override // com.android.internal.os.BatteryStatsImpl.StopwatchTimer, com.android.internal.os.BatteryStatsImpl.Timer, com.android.internal.os.BatteryStatsImpl.TimeBaseObs
        public void onTimeStopped(long j, long j2, long j3) {
            super.onTimeStopped(j, j2, j3);
            if (this.mNesting > 0) {
                this.mCurrentDurationMs += (j3 / 1000) - this.mStartTimeMs;
            }
            this.mStartTimeMs = -1L;
        }

        @Override // com.android.internal.os.BatteryStatsImpl.StopwatchTimer, com.android.internal.os.BatteryStatsImpl.Timer
        public void logState(Printer printer, String str) {
            super.logState(printer, str);
        }

        @Override // com.android.internal.os.BatteryStatsImpl.StopwatchTimer
        public void startRunningLocked(long j) {
            super.startRunningLocked(j);
            if (this.mNesting == 1 && this.mTimeBase.isRunning()) {
                this.mStartTimeMs = this.mTimeBase.getRealtime(j * 1000) / 1000;
            }
        }

        @Override // com.android.internal.os.BatteryStatsImpl.StopwatchTimer
        public void stopRunningLocked(long j) {
            if (this.mNesting == 1) {
                long currentDurationMsLocked = getCurrentDurationMsLocked(j);
                this.mTotalDurationMs += currentDurationMsLocked;
                if (currentDurationMsLocked > this.mMaxDurationMs) {
                    this.mMaxDurationMs = currentDurationMsLocked;
                }
                this.mStartTimeMs = -1L;
                this.mCurrentDurationMs = 0L;
            }
            super.stopRunningLocked(j);
        }

        @Override // com.android.internal.os.BatteryStatsImpl.StopwatchTimer, com.android.internal.os.BatteryStatsImpl.Timer
        public boolean reset(boolean z) {
            boolean reset = super.reset(z);
            this.mMaxDurationMs = 0L;
            this.mTotalDurationMs = 0L;
            this.mCurrentDurationMs = 0L;
            if (this.mNesting > 0) {
                this.mStartTimeMs = this.mTimeBase.getRealtime(this.mClocks.elapsedRealtime() * 1000) / 1000;
            } else {
                this.mStartTimeMs = -1L;
            }
            return reset;
        }

        public long getMaxDurationMsLocked(long j) {
            if (this.mNesting > 0) {
                long currentDurationMsLocked = getCurrentDurationMsLocked(j);
                if (currentDurationMsLocked > this.mMaxDurationMs) {
                    return currentDurationMsLocked;
                }
            }
            return this.mMaxDurationMs;
        }

        public long getCurrentDurationMsLocked(long j) {
            long j2 = this.mCurrentDurationMs;
            return (this.mNesting <= 0 || !this.mTimeBase.isRunning()) ? j2 : j2 + ((this.mTimeBase.getRealtime(j * 1000) / 1000) - this.mStartTimeMs);
        }

        public long getTotalDurationMsLocked(long j) {
            return this.mTotalDurationMs + getCurrentDurationMsLocked(j);
        }
    }

    /* loaded from: /home/user/work/dex/classes3.dex */
    public static class StopwatchTimer extends Timer {
        long mAcquireTime;

        @VisibleForTesting
        public boolean mInList;
        int mNesting;
        long mTimeout;
        final ArrayList<StopwatchTimer> mTimerPool;
        final Uid mUid;
        long mUpdateTime;

        public StopwatchTimer(Clocks clocks, Uid uid, int i, ArrayList<StopwatchTimer> arrayList, TimeBase timeBase, Parcel parcel) {
            super(clocks, i, timeBase, parcel);
            this.mAcquireTime = -1L;
            this.mUid = uid;
            this.mTimerPool = arrayList;
            this.mUpdateTime = parcel.readLong();
        }

        public StopwatchTimer(Clocks clocks, Uid uid, int i, ArrayList<StopwatchTimer> arrayList, TimeBase timeBase) {
            super(clocks, i, timeBase);
            this.mAcquireTime = -1L;
            this.mUid = uid;
            this.mTimerPool = arrayList;
        }

        public void setTimeout(long j) {
            this.mTimeout = j;
        }

        @Override // com.android.internal.os.BatteryStatsImpl.Timer
        public void writeToParcel(Parcel parcel, long j) {
            super.writeToParcel(parcel, j);
            parcel.writeLong(this.mUpdateTime);
        }

        @Override // com.android.internal.os.BatteryStatsImpl.Timer, com.android.internal.os.BatteryStatsImpl.TimeBaseObs
        public void onTimeStopped(long j, long j2, long j3) {
            if (this.mNesting > 0) {
                super.onTimeStopped(j, j2, j3);
                this.mUpdateTime = j3;
            }
        }

        @Override // com.android.internal.os.BatteryStatsImpl.Timer
        public void logState(Printer printer, String str) {
            super.logState(printer, str);
            printer.println(str + "mNesting=" + this.mNesting + " mUpdateTime=" + this.mUpdateTime + " mAcquireTime=" + this.mAcquireTime);
        }

        public void startRunningLocked(long j) {
            int i = this.mNesting;
            this.mNesting = i + 1;
            if (i == 0) {
                long realtime = this.mTimeBase.getRealtime(j * 1000);
                this.mUpdateTime = realtime;
                if (this.mTimerPool != null) {
                    refreshTimersLocked(realtime, this.mTimerPool, null);
                    this.mTimerPool.add(this);
                }
                if (this.mTimeBase.isRunning()) {
                    this.mCount++;
                    this.mAcquireTime = this.mTotalTime;
                } else {
                    this.mAcquireTime = -1L;
                }
            }
        }

        public boolean isRunningLocked() {
            return this.mNesting > 0;
        }

        public void stopRunningLocked(long j) {
            if (this.mNesting == 0) {
                return;
            }
            int i = this.mNesting - 1;
            this.mNesting = i;
            if (i == 0) {
                long realtime = this.mTimeBase.getRealtime(j * 1000);
                if (this.mTimerPool != null) {
                    refreshTimersLocked(realtime, this.mTimerPool, null);
                    this.mTimerPool.remove(this);
                } else {
                    this.mNesting = 1;
                    this.mTotalTime = computeRunTimeLocked(realtime);
                    this.mNesting = 0;
                }
                if (this.mAcquireTime < 0 || this.mTotalTime != this.mAcquireTime) {
                    return;
                }
                this.mCount--;
            }
        }

        public void stopAllRunningLocked(long j) {
            if (this.mNesting > 0) {
                this.mNesting = 1;
                stopRunningLocked(j);
            }
        }

        private static long refreshTimersLocked(long j, ArrayList<StopwatchTimer> arrayList, StopwatchTimer stopwatchTimer) {
            int size = arrayList.size();
            long j2 = 0;
            for (int i = size - 1; i >= 0; i--) {
                StopwatchTimer stopwatchTimer2 = arrayList.get(i);
                long j3 = j - stopwatchTimer2.mUpdateTime;
                if (j3 > 0) {
                    long j4 = j3 / size;
                    if (stopwatchTimer2 == stopwatchTimer) {
                        j2 = j4;
                    }
                    stopwatchTimer2.mTotalTime += j4;
                }
                stopwatchTimer2.mUpdateTime = j;
            }
            return j2;
        }

        @Override // com.android.internal.os.BatteryStatsImpl.Timer
        protected long computeRunTimeLocked(long j) {
            long j2 = 0;
            if (this.mTimeout > 0 && j > this.mUpdateTime + this.mTimeout) {
                j = this.mUpdateTime + this.mTimeout;
            }
            long j3 = this.mTotalTime;
            if (this.mNesting > 0) {
                j2 = (j - this.mUpdateTime) / (this.mTimerPool != null ? this.mTimerPool.size() : 1);
            }
            return j3 + j2;
        }

        @Override // com.android.internal.os.BatteryStatsImpl.Timer
        protected int computeCurrentCountLocked() {
            return this.mCount;
        }

        @Override // com.android.internal.os.BatteryStatsImpl.Timer
        public boolean reset(boolean z) {
            boolean z2 = false;
            boolean z3 = this.mNesting <= 0;
            if (z3 && z) {
                z2 = true;
            }
            super.reset(z2);
            if (this.mNesting > 0) {
                this.mUpdateTime = this.mTimeBase.getRealtime(this.mClocks.elapsedRealtime() * 1000);
            }
            this.mAcquireTime = -1L;
            return z3;
        }

        @Override // com.android.internal.os.BatteryStatsImpl.Timer
        public void detach() {
            super.detach();
            if (this.mTimerPool != null) {
                this.mTimerPool.remove(this);
            }
        }

        @Override // com.android.internal.os.BatteryStatsImpl.Timer
        public void readSummaryFromParcelLocked(Parcel parcel) {
            super.readSummaryFromParcelLocked(parcel);
            this.mNesting = 0;
        }

        public void setMark(long j) {
            long realtime = this.mTimeBase.getRealtime(j * 1000);
            if (this.mNesting > 0) {
                if (this.mTimerPool != null) {
                    refreshTimersLocked(realtime, this.mTimerPool, this);
                } else {
                    this.mTotalTime += realtime - this.mUpdateTime;
                    this.mUpdateTime = realtime;
                }
            }
            this.mTimeBeforeMark = this.mTotalTime;
        }
    }

    /* loaded from: /home/user/work/dex/classes3.dex */
    public static class DualTimer extends DurationTimer {
        private final DurationTimer mSubTimer;

        public DualTimer(Clocks clocks, Uid uid, int i, ArrayList<StopwatchTimer> arrayList, TimeBase timeBase, TimeBase timeBase2, Parcel parcel) {
            super(clocks, uid, i, arrayList, timeBase, parcel);
            this.mSubTimer = new DurationTimer(clocks, uid, i, null, timeBase2, parcel);
        }

        public DualTimer(Clocks clocks, Uid uid, int i, ArrayList<StopwatchTimer> arrayList, TimeBase timeBase, TimeBase timeBase2) {
            super(clocks, uid, i, arrayList, timeBase);
            this.mSubTimer = new DurationTimer(clocks, uid, i, null, timeBase2);
        }

        public DurationTimer getSubTimer() {
            return this.mSubTimer;
        }

        @Override // com.android.internal.os.BatteryStatsImpl.DurationTimer, com.android.internal.os.BatteryStatsImpl.StopwatchTimer
        public void startRunningLocked(long j) {
            super.startRunningLocked(j);
            this.mSubTimer.startRunningLocked(j);
        }

        @Override // com.android.internal.os.BatteryStatsImpl.DurationTimer, com.android.internal.os.BatteryStatsImpl.StopwatchTimer
        public void stopRunningLocked(long j) {
            super.stopRunningLocked(j);
            this.mSubTimer.stopRunningLocked(j);
        }

        @Override // com.android.internal.os.BatteryStatsImpl.StopwatchTimer
        public void stopAllRunningLocked(long j) {
            super.stopAllRunningLocked(j);
            this.mSubTimer.stopAllRunningLocked(j);
        }

        @Override // com.android.internal.os.BatteryStatsImpl.DurationTimer, com.android.internal.os.BatteryStatsImpl.StopwatchTimer, com.android.internal.os.BatteryStatsImpl.Timer
        public boolean reset(boolean z) {
            return !((super.reset(z) ^ true) | ((this.mSubTimer.reset(false) ^ true) | false));
        }

        @Override // com.android.internal.os.BatteryStatsImpl.StopwatchTimer, com.android.internal.os.BatteryStatsImpl.Timer
        public void detach() {
            this.mSubTimer.detach();
            super.detach();
        }

        @Override // com.android.internal.os.BatteryStatsImpl.DurationTimer, com.android.internal.os.BatteryStatsImpl.StopwatchTimer, com.android.internal.os.BatteryStatsImpl.Timer
        public void writeToParcel(Parcel parcel, long j) {
            super.writeToParcel(parcel, j);
            this.mSubTimer.writeToParcel(parcel, j);
        }

        @Override // com.android.internal.os.BatteryStatsImpl.DurationTimer, com.android.internal.os.BatteryStatsImpl.Timer
        public void writeSummaryFromParcelLocked(Parcel parcel, long j) {
            super.writeSummaryFromParcelLocked(parcel, j);
            this.mSubTimer.writeSummaryFromParcelLocked(parcel, j);
        }

        @Override // com.android.internal.os.BatteryStatsImpl.DurationTimer, com.android.internal.os.BatteryStatsImpl.StopwatchTimer, com.android.internal.os.BatteryStatsImpl.Timer
        public void readSummaryFromParcelLocked(Parcel parcel) {
            super.readSummaryFromParcelLocked(parcel);
            this.mSubTimer.readSummaryFromParcelLocked(parcel);
        }
    }

    /* loaded from: /home/user/work/dex/classes3.dex */
    public abstract class OverflowArrayMap<T> {
        private static final String OVERFLOW_NAME = "*overflow*";
        ArrayMap<String, MutableInt> mActiveOverflow;
        T mCurOverflow;
        long mLastCleanupTime;
        long mLastClearTime;
        long mLastOverflowFinishTime;
        long mLastOverflowTime;
        final ArrayMap<String, T> mMap = new ArrayMap<>();
        final int mUid;

        public abstract T instantiateObject();

        public OverflowArrayMap(int i) {
            this.mUid = i;
        }

        public ArrayMap<String, T> getMap() {
            return this.mMap;
        }

        public void clear() {
            this.mLastClearTime = SystemClock.elapsedRealtime();
            this.mMap.clear();
            this.mCurOverflow = null;
            this.mActiveOverflow = null;
        }

        public void add(String str, T t) {
            if (str == null) {
                str = "";
            }
            this.mMap.put(str, t);
            if (OVERFLOW_NAME.equals(str)) {
                this.mCurOverflow = t;
            }
        }

        public void cleanup() {
            this.mLastCleanupTime = SystemClock.elapsedRealtime();
            if (this.mActiveOverflow != null && this.mActiveOverflow.size() == 0) {
                this.mActiveOverflow = null;
            }
            if (this.mActiveOverflow == null) {
                if (this.mMap.containsKey(OVERFLOW_NAME)) {
                    Slog.wtf(BatteryStatsImpl.TAG, "Cleaning up with no active overflow, but have overflow entry " + this.mMap.get(OVERFLOW_NAME));
                    this.mMap.remove(OVERFLOW_NAME);
                }
                this.mCurOverflow = null;
                return;
            }
            if (this.mCurOverflow == null || !this.mMap.containsKey(OVERFLOW_NAME)) {
                Slog.wtf(BatteryStatsImpl.TAG, "Cleaning up with active overflow, but no overflow entry: cur=" + this.mCurOverflow + " map=" + this.mMap.get(OVERFLOW_NAME));
            }
        }

        public T startObject(String str) {
            MutableInt mutableInt;
            if (str == null) {
                str = "";
            }
            T t = this.mMap.get(str);
            if (t != null) {
                return t;
            }
            if (this.mActiveOverflow == null || (mutableInt = this.mActiveOverflow.get(str)) == null) {
                if (this.mMap.size() >= BatteryStatsImpl.MAX_WAKELOCKS_PER_UID) {
                    T t2 = this.mCurOverflow;
                    if (t2 == null) {
                        t2 = instantiateObject();
                        this.mCurOverflow = t2;
                        this.mMap.put(OVERFLOW_NAME, t2);
                    }
                    if (this.mActiveOverflow == null) {
                        this.mActiveOverflow = new ArrayMap<>();
                    }
                    this.mActiveOverflow.put(str, new MutableInt(1));
                    this.mLastOverflowTime = SystemClock.elapsedRealtime();
                    return t2;
                }
                T instantiateObject = instantiateObject();
                this.mMap.put(str, instantiateObject);
                return instantiateObject;
            }
            T t3 = this.mCurOverflow;
            if (t3 == null) {
                Slog.wtf(BatteryStatsImpl.TAG, "Have active overflow " + str + " but null overflow");
                t3 = instantiateObject();
                this.mCurOverflow = t3;
                this.mMap.put(OVERFLOW_NAME, t3);
            }
            mutableInt.value++;
            return t3;
        }

        public T stopObject(String str) {
            MutableInt mutableInt;
            T t;
            if (str == null) {
                str = "";
            }
            T t2 = this.mMap.get(str);
            if (t2 != null) {
                return t2;
            }
            if (this.mActiveOverflow != null && (mutableInt = this.mActiveOverflow.get(str)) != null && (t = this.mCurOverflow) != null) {
                mutableInt.value--;
                if (mutableInt.value <= 0) {
                    this.mActiveOverflow.remove(str);
                    this.mLastOverflowFinishTime = SystemClock.elapsedRealtime();
                }
                return t;
            }
            StringBuilder sb = new StringBuilder();
            sb.append("Unable to find object for ");
            sb.append(str);
            sb.append(" in uid ");
            sb.append(this.mUid);
            sb.append(" mapsize=");
            sb.append(this.mMap.size());
            sb.append(" activeoverflow=");
            sb.append(this.mActiveOverflow);
            sb.append(" curoverflow=");
            sb.append(this.mCurOverflow);
            long elapsedRealtime = SystemClock.elapsedRealtime();
            if (this.mLastOverflowTime != 0) {
                sb.append(" lastOverflowTime=");
                TimeUtils.formatDuration(this.mLastOverflowTime - elapsedRealtime, sb);
            }
            if (this.mLastOverflowFinishTime != 0) {
                sb.append(" lastOverflowFinishTime=");
                TimeUtils.formatDuration(this.mLastOverflowFinishTime - elapsedRealtime, sb);
            }
            if (this.mLastClearTime != 0) {
                sb.append(" lastClearTime=");
                TimeUtils.formatDuration(this.mLastClearTime - elapsedRealtime, sb);
            }
            if (this.mLastCleanupTime != 0) {
                sb.append(" lastCleanupTime=");
                TimeUtils.formatDuration(this.mLastCleanupTime - elapsedRealtime, sb);
            }
            Slog.wtf(BatteryStatsImpl.TAG, sb.toString());
            return null;
        }
    }

    /* loaded from: /home/user/work/dex/classes3.dex */
    public static class ControllerActivityCounterImpl extends BatteryStats.ControllerActivityCounter implements Parcelable {
        private final LongSamplingCounter mIdleTimeMillis;
        private final LongSamplingCounter mPowerDrainMaMs;
        private final LongSamplingCounter mRxTimeMillis;
        private final LongSamplingCounter mScanTimeMillis;
        private final LongSamplingCounter mSleepTimeMillis;
        private final LongSamplingCounter[] mTxTimeMillis;

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public ControllerActivityCounterImpl(TimeBase timeBase, int i) {
            this.mIdleTimeMillis = new LongSamplingCounter(timeBase);
            this.mScanTimeMillis = new LongSamplingCounter(timeBase);
            this.mSleepTimeMillis = new LongSamplingCounter(timeBase);
            this.mRxTimeMillis = new LongSamplingCounter(timeBase);
            this.mTxTimeMillis = new LongSamplingCounter[i];
            for (int i2 = 0; i2 < i; i2++) {
                this.mTxTimeMillis[i2] = new LongSamplingCounter(timeBase);
            }
            this.mPowerDrainMaMs = new LongSamplingCounter(timeBase);
        }

        public ControllerActivityCounterImpl(TimeBase timeBase, int i, Parcel parcel) {
            this.mIdleTimeMillis = new LongSamplingCounter(timeBase, parcel);
            this.mScanTimeMillis = new LongSamplingCounter(timeBase, parcel);
            this.mSleepTimeMillis = new LongSamplingCounter(timeBase, parcel);
            this.mRxTimeMillis = new LongSamplingCounter(timeBase, parcel);
            if (parcel.readInt() != i) {
                throw new ParcelFormatException("inconsistent tx state lengths");
            }
            this.mTxTimeMillis = new LongSamplingCounter[i];
            for (int i2 = 0; i2 < i; i2++) {
                this.mTxTimeMillis[i2] = new LongSamplingCounter(timeBase, parcel);
            }
            this.mPowerDrainMaMs = new LongSamplingCounter(timeBase, parcel);
        }

        public void readSummaryFromParcel(Parcel parcel) {
            this.mIdleTimeMillis.readSummaryFromParcelLocked(parcel);
            this.mScanTimeMillis.readSummaryFromParcelLocked(parcel);
            this.mSleepTimeMillis.readSummaryFromParcelLocked(parcel);
            this.mRxTimeMillis.readSummaryFromParcelLocked(parcel);
            if (parcel.readInt() != this.mTxTimeMillis.length) {
                throw new ParcelFormatException("inconsistent tx state lengths");
            }
            for (LongSamplingCounter longSamplingCounter : this.mTxTimeMillis) {
                longSamplingCounter.readSummaryFromParcelLocked(parcel);
            }
            this.mPowerDrainMaMs.readSummaryFromParcelLocked(parcel);
        }

        public void writeSummaryToParcel(Parcel parcel) {
            this.mIdleTimeMillis.writeSummaryFromParcelLocked(parcel);
            this.mScanTimeMillis.writeSummaryFromParcelLocked(parcel);
            this.mSleepTimeMillis.writeSummaryFromParcelLocked(parcel);
            this.mRxTimeMillis.writeSummaryFromParcelLocked(parcel);
            parcel.writeInt(this.mTxTimeMillis.length);
            for (LongSamplingCounter longSamplingCounter : this.mTxTimeMillis) {
                longSamplingCounter.writeSummaryFromParcelLocked(parcel);
            }
            this.mPowerDrainMaMs.writeSummaryFromParcelLocked(parcel);
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            this.mIdleTimeMillis.writeToParcel(parcel);
            this.mScanTimeMillis.writeToParcel(parcel);
            this.mSleepTimeMillis.writeToParcel(parcel);
            this.mRxTimeMillis.writeToParcel(parcel);
            parcel.writeInt(this.mTxTimeMillis.length);
            for (LongSamplingCounter longSamplingCounter : this.mTxTimeMillis) {
                longSamplingCounter.writeToParcel(parcel);
            }
            this.mPowerDrainMaMs.writeToParcel(parcel);
        }

        public void reset(boolean z) {
            this.mIdleTimeMillis.reset(z);
            this.mScanTimeMillis.reset(z);
            this.mSleepTimeMillis.reset(z);
            this.mRxTimeMillis.reset(z);
            for (LongSamplingCounter longSamplingCounter : this.mTxTimeMillis) {
                longSamplingCounter.reset(z);
            }
            this.mPowerDrainMaMs.reset(z);
        }

        public void detach() {
            this.mIdleTimeMillis.detach();
            this.mScanTimeMillis.detach();
            this.mSleepTimeMillis.detach();
            this.mRxTimeMillis.detach();
            for (LongSamplingCounter longSamplingCounter : this.mTxTimeMillis) {
                longSamplingCounter.detach();
            }
            this.mPowerDrainMaMs.detach();
        }

        public LongSamplingCounter getIdleTimeCounter() {
            return this.mIdleTimeMillis;
        }

        public LongSamplingCounter getScanTimeCounter() {
            return this.mScanTimeMillis;
        }

        public LongSamplingCounter getSleepTimeCounter() {
            return this.mSleepTimeMillis;
        }

        public LongSamplingCounter getRxTimeCounter() {
            return this.mRxTimeMillis;
        }

        public LongSamplingCounter[] getTxTimeCounters() {
            return this.mTxTimeMillis;
        }

        public LongSamplingCounter getPowerCounter() {
            return this.mPowerDrainMaMs;
        }
    }

    public SamplingTimer getRpmTimerLocked(String str) {
        SamplingTimer samplingTimer = this.mRpmStats.get(str);
        if (samplingTimer != null) {
            return samplingTimer;
        }
        SamplingTimer samplingTimer2 = new SamplingTimer(this.mClocks, this.mOnBatteryTimeBase);
        this.mRpmStats.put(str, samplingTimer2);
        return samplingTimer2;
    }

    public SamplingTimer getScreenOffRpmTimerLocked(String str) {
        SamplingTimer samplingTimer = this.mScreenOffRpmStats.get(str);
        if (samplingTimer != null) {
            return samplingTimer;
        }
        SamplingTimer samplingTimer2 = new SamplingTimer(this.mClocks, this.mOnBatteryScreenOffTimeBase);
        this.mScreenOffRpmStats.put(str, samplingTimer2);
        return samplingTimer2;
    }

    public SamplingTimer getWakeupReasonTimerLocked(String str) {
        SamplingTimer samplingTimer = this.mWakeupReasonStats.get(str);
        if (samplingTimer != null) {
            return samplingTimer;
        }
        SamplingTimer samplingTimer2 = new SamplingTimer(this.mClocks, this.mOnBatteryTimeBase);
        this.mWakeupReasonStats.put(str, samplingTimer2);
        return samplingTimer2;
    }

    public SamplingTimer getKernelWakelockTimerLocked(String str) {
        SamplingTimer samplingTimer = this.mKernelWakelockStats.get(str);
        if (samplingTimer != null) {
            return samplingTimer;
        }
        SamplingTimer samplingTimer2 = new SamplingTimer(this.mClocks, this.mOnBatteryScreenOffTimeBase);
        this.mKernelWakelockStats.put(str, samplingTimer2);
        return samplingTimer2;
    }

    public SamplingTimer getKernelMemoryTimerLocked(long j) {
        SamplingTimer samplingTimer = this.mKernelMemoryStats.get(j);
        if (samplingTimer != null) {
            return samplingTimer;
        }
        SamplingTimer samplingTimer2 = new SamplingTimer(this.mClocks, this.mOnBatteryTimeBase);
        this.mKernelMemoryStats.put(j, samplingTimer2);
        return samplingTimer2;
    }

    private int writeHistoryTag(BatteryStats.HistoryTag historyTag) {
        Integer num = this.mHistoryTagPool.get(historyTag);
        if (num != null) {
            return num.intValue();
        }
        int i = this.mNextHistoryTagIdx;
        BatteryStats.HistoryTag historyTag2 = new BatteryStats.HistoryTag();
        historyTag2.setTo(historyTag);
        historyTag.poolIdx = i;
        this.mHistoryTagPool.put(historyTag2, Integer.valueOf(i));
        this.mNextHistoryTagIdx++;
        this.mNumHistoryTagChars += historyTag2.string.length() + 1;
        return i;
    }

    private void readHistoryTag(int i, BatteryStats.HistoryTag historyTag) {
        historyTag.string = this.mReadHistoryStrings[i];
        historyTag.uid = this.mReadHistoryUids[i];
        historyTag.poolIdx = i;
    }

    public void writeHistoryDelta(Parcel parcel, BatteryStats.HistoryItem historyItem, BatteryStats.HistoryItem historyItem2) {
        if (historyItem2 == null || historyItem.cmd != 0) {
            parcel.writeInt(DELTA_TIME_ABS);
            historyItem.writeToParcel(parcel, 0);
            return;
        }
        long j = historyItem.time - historyItem2.time;
        int buildBatteryLevelInt = buildBatteryLevelInt(historyItem2);
        int buildStateInt = buildStateInt(historyItem2);
        int i = (j < 0 || j > 2147483647L) ? EventLogTags.SYSUI_VIEW_VISIBILITY : j >= 524285 ? DELTA_TIME_INT : (int) j;
        int i2 = (historyItem.states & DELTA_STATE_MASK) | i;
        int i3 = this.mLastHistoryStepLevel > historyItem.batteryLevel ? 1 : 0;
        boolean z = i3 != 0 || this.mLastHistoryStepDetails == null;
        int buildBatteryLevelInt2 = buildBatteryLevelInt(historyItem) | i3;
        boolean z2 = buildBatteryLevelInt2 != buildBatteryLevelInt;
        if (z2) {
            i2 |= 524288;
        }
        int buildStateInt2 = buildStateInt(historyItem);
        boolean z3 = buildStateInt2 != buildStateInt;
        if (z3) {
            i2 |= 1048576;
        }
        boolean z4 = historyItem.states2 != historyItem2.states2;
        if (z4) {
            i2 |= 2097152;
        }
        if (historyItem.wakelockTag != null || historyItem.wakeReasonTag != null) {
            i2 |= 4194304;
        }
        if (historyItem.eventCode != 0) {
            i2 |= 8388608;
        }
        boolean z5 = historyItem.batteryChargeUAh != historyItem2.batteryChargeUAh;
        if (z5) {
            i2 |= 16777216;
        }
        parcel.writeInt(i2);
        if (i >= DELTA_TIME_INT) {
            if (i == DELTA_TIME_INT) {
                parcel.writeInt((int) j);
            } else {
                parcel.writeLong(j);
            }
        }
        if (z2) {
            parcel.writeInt(buildBatteryLevelInt2);
        }
        if (z3) {
            parcel.writeInt(buildStateInt2);
        }
        if (z4) {
            parcel.writeInt(historyItem.states2);
        }
        if (historyItem.wakelockTag != null || historyItem.wakeReasonTag != null) {
            parcel.writeInt((historyItem.wakelockTag != null ? writeHistoryTag(historyItem.wakelockTag) : 65535) | ((historyItem.wakeReasonTag != null ? writeHistoryTag(historyItem.wakeReasonTag) : 65535) << 16));
        }
        if (historyItem.eventCode != 0) {
            parcel.writeInt((writeHistoryTag(historyItem.eventTag) << 16) | (65535 & historyItem.eventCode));
        }
        if (z) {
            if (this.mPlatformIdleStateCallback != null) {
                this.mCurHistoryStepDetails.statPlatformIdleState = this.mPlatformIdleStateCallback.getPlatformLowPowerStats();
                this.mCurHistoryStepDetails.statSubsystemPowerState = this.mPlatformIdleStateCallback.getSubsystemLowPowerStats();
            }
            computeHistoryStepDetails(this.mCurHistoryStepDetails, this.mLastHistoryStepDetails);
            if (i3 != 0) {
                this.mCurHistoryStepDetails.writeToParcel(parcel);
            }
            historyItem.stepDetails = this.mCurHistoryStepDetails;
            this.mLastHistoryStepDetails = this.mCurHistoryStepDetails;
        } else {
            historyItem.stepDetails = null;
        }
        if (this.mLastHistoryStepLevel < historyItem.batteryLevel) {
            this.mLastHistoryStepDetails = null;
        }
        this.mLastHistoryStepLevel = historyItem.batteryLevel;
        if (z5) {
            parcel.writeInt(historyItem.batteryChargeUAh);
        }
    }

    private int buildBatteryLevelInt(BatteryStats.HistoryItem historyItem) {
        return ((historyItem.batteryLevel << 25) & DELTA_STATE_MASK) | ((historyItem.batteryTemperature << 15) & 33521664) | ((historyItem.batteryVoltage << 1) & 32766);
    }

    private void readBatteryLevelInt(int i, BatteryStats.HistoryItem historyItem) {
        historyItem.batteryLevel = (byte) ((DELTA_STATE_MASK & i) >>> 25);
        historyItem.batteryTemperature = (short) ((33521664 & i) >>> 15);
        historyItem.batteryVoltage = (char) ((i & 32766) >>> 1);
    }

    private int buildStateInt(BatteryStats.HistoryItem historyItem) {
        int i = 1;
        if ((historyItem.batteryPlugType & 1) == 0) {
            if ((historyItem.batteryPlugType & 2) != 0) {
                i = 2;
            } else {
                i = (historyItem.batteryPlugType & 4) != 0 ? 3 : 0;
            }
        }
        return ((historyItem.batteryStatus & 7) << 29) | ((historyItem.batteryHealth & 7) << 26) | ((i & 3) << 24) | (historyItem.states & 16777215);
    }

    private void computeHistoryStepDetails(BatteryStats.HistoryStepDetails historyStepDetails, BatteryStats.HistoryStepDetails historyStepDetails2) {
        BatteryStats.HistoryStepDetails historyStepDetails3 = historyStepDetails2 != null ? this.mTmpHistoryStepDetails : historyStepDetails;
        requestImmediateCpuUpdate();
        int i = 0;
        if (historyStepDetails2 == null) {
            int size = this.mUidStats.size();
            while (i < size) {
                Uid valueAt = this.mUidStats.valueAt(i);
                valueAt.mLastStepUserTime = valueAt.mCurStepUserTime;
                valueAt.mLastStepSystemTime = valueAt.mCurStepSystemTime;
                i++;
            }
            this.mLastStepCpuUserTime = this.mCurStepCpuUserTime;
            this.mLastStepCpuSystemTime = this.mCurStepCpuSystemTime;
            this.mLastStepStatUserTime = this.mCurStepStatUserTime;
            this.mLastStepStatSystemTime = this.mCurStepStatSystemTime;
            this.mLastStepStatIOWaitTime = this.mCurStepStatIOWaitTime;
            this.mLastStepStatIrqTime = this.mCurStepStatIrqTime;
            this.mLastStepStatSoftIrqTime = this.mCurStepStatSoftIrqTime;
            this.mLastStepStatIdleTime = this.mCurStepStatIdleTime;
            historyStepDetails3.clear();
            return;
        }
        historyStepDetails.userTime = (int) (this.mCurStepCpuUserTime - this.mLastStepCpuUserTime);
        historyStepDetails.systemTime = (int) (this.mCurStepCpuSystemTime - this.mLastStepCpuSystemTime);
        historyStepDetails.statUserTime = (int) (this.mCurStepStatUserTime - this.mLastStepStatUserTime);
        historyStepDetails.statSystemTime = (int) (this.mCurStepStatSystemTime - this.mLastStepStatSystemTime);
        historyStepDetails.statIOWaitTime = (int) (this.mCurStepStatIOWaitTime - this.mLastStepStatIOWaitTime);
        historyStepDetails.statIrqTime = (int) (this.mCurStepStatIrqTime - this.mLastStepStatIrqTime);
        historyStepDetails.statSoftIrqTime = (int) (this.mCurStepStatSoftIrqTime - this.mLastStepStatSoftIrqTime);
        historyStepDetails.statIdlTime = (int) (this.mCurStepStatIdleTime - this.mLastStepStatIdleTime);
        historyStepDetails.appCpuUid3 = -1;
        historyStepDetails.appCpuUid2 = -1;
        historyStepDetails.appCpuUid1 = -1;
        historyStepDetails.appCpuUTime3 = 0;
        historyStepDetails.appCpuUTime2 = 0;
        historyStepDetails.appCpuUTime1 = 0;
        historyStepDetails.appCpuSTime3 = 0;
        historyStepDetails.appCpuSTime2 = 0;
        historyStepDetails.appCpuSTime1 = 0;
        int size2 = this.mUidStats.size();
        while (i < size2) {
            Uid valueAt2 = this.mUidStats.valueAt(i);
            int i2 = (int) (valueAt2.mCurStepUserTime - valueAt2.mLastStepUserTime);
            int i3 = (int) (valueAt2.mCurStepSystemTime - valueAt2.mLastStepSystemTime);
            int i4 = i2 + i3;
            valueAt2.mLastStepUserTime = valueAt2.mCurStepUserTime;
            valueAt2.mLastStepSystemTime = valueAt2.mCurStepSystemTime;
            if (i4 > historyStepDetails.appCpuUTime3 + historyStepDetails.appCpuSTime3) {
                if (i4 <= historyStepDetails.appCpuUTime2 + historyStepDetails.appCpuSTime2) {
                    historyStepDetails.appCpuUid3 = valueAt2.mUid;
                    historyStepDetails.appCpuUTime3 = i2;
                    historyStepDetails.appCpuSTime3 = i3;
                } else {
                    historyStepDetails.appCpuUid3 = historyStepDetails.appCpuUid2;
                    historyStepDetails.appCpuUTime3 = historyStepDetails.appCpuUTime2;
                    historyStepDetails.appCpuSTime3 = historyStepDetails.appCpuSTime2;
                    if (i4 <= historyStepDetails.appCpuUTime1 + historyStepDetails.appCpuSTime1) {
                        historyStepDetails.appCpuUid2 = valueAt2.mUid;
                        historyStepDetails.appCpuUTime2 = i2;
                        historyStepDetails.appCpuSTime2 = i3;
                    } else {
                        historyStepDetails.appCpuUid2 = historyStepDetails.appCpuUid1;
                        historyStepDetails.appCpuUTime2 = historyStepDetails.appCpuUTime1;
                        historyStepDetails.appCpuSTime2 = historyStepDetails.appCpuSTime1;
                        historyStepDetails.appCpuUid1 = valueAt2.mUid;
                        historyStepDetails.appCpuUTime1 = i2;
                        historyStepDetails.appCpuSTime1 = i3;
                    }
                }
            }
            i++;
        }
        this.mLastStepCpuUserTime = this.mCurStepCpuUserTime;
        this.mLastStepCpuSystemTime = this.mCurStepCpuSystemTime;
        this.mLastStepStatUserTime = this.mCurStepStatUserTime;
        this.mLastStepStatSystemTime = this.mCurStepStatSystemTime;
        this.mLastStepStatIOWaitTime = this.mCurStepStatIOWaitTime;
        this.mLastStepStatIrqTime = this.mCurStepStatIrqTime;
        this.mLastStepStatSoftIrqTime = this.mCurStepStatSoftIrqTime;
        this.mLastStepStatIdleTime = this.mCurStepStatIdleTime;
    }

    public void readHistoryDelta(Parcel parcel, BatteryStats.HistoryItem historyItem) {
        int i;
        int readInt = parcel.readInt();
        int i2 = 524287 & readInt;
        historyItem.cmd = (byte) 0;
        historyItem.numReadInts = 1;
        if (i2 < DELTA_TIME_ABS) {
            historyItem.time += i2;
        } else if (i2 == DELTA_TIME_ABS) {
            historyItem.time = parcel.readLong();
            historyItem.numReadInts += 2;
            historyItem.readFromParcel(parcel);
            return;
        } else if (i2 == DELTA_TIME_INT) {
            historyItem.time += parcel.readInt();
            historyItem.numReadInts++;
        } else {
            historyItem.time += parcel.readLong();
            historyItem.numReadInts += 2;
        }
        if ((524288 & readInt) != 0) {
            i = parcel.readInt();
            readBatteryLevelInt(i, historyItem);
            historyItem.numReadInts++;
        } else {
            i = 0;
        }
        if ((1048576 & readInt) != 0) {
            int readInt2 = parcel.readInt();
            historyItem.states = (16777215 & readInt2) | (DELTA_STATE_MASK & readInt);
            historyItem.batteryStatus = (byte) ((readInt2 >> 29) & 7);
            historyItem.batteryHealth = (byte) ((readInt2 >> 26) & 7);
            historyItem.batteryPlugType = (byte) ((readInt2 >> 24) & 3);
            switch (historyItem.batteryPlugType) {
                case 1:
                    historyItem.batteryPlugType = (byte) 1;
                    break;
                case 2:
                    historyItem.batteryPlugType = (byte) 2;
                    break;
                case 3:
                    historyItem.batteryPlugType = (byte) 4;
                    break;
            }
            historyItem.numReadInts++;
        } else {
            historyItem.states = (readInt & DELTA_STATE_MASK) | (historyItem.states & 16777215);
        }
        if ((2097152 & readInt) != 0) {
            historyItem.states2 = parcel.readInt();
        }
        if ((4194304 & readInt) != 0) {
            int readInt3 = parcel.readInt();
            int i3 = readInt3 & 65535;
            int i4 = (readInt3 >> 16) & 65535;
            if (i3 != 65535) {
                historyItem.wakelockTag = historyItem.localWakelockTag;
                readHistoryTag(i3, historyItem.wakelockTag);
            } else {
                historyItem.wakelockTag = null;
            }
            if (i4 != 65535) {
                historyItem.wakeReasonTag = historyItem.localWakeReasonTag;
                readHistoryTag(i4, historyItem.wakeReasonTag);
            } else {
                historyItem.wakeReasonTag = null;
            }
            historyItem.numReadInts++;
        } else {
            historyItem.wakelockTag = null;
            historyItem.wakeReasonTag = null;
        }
        if ((8388608 & readInt) != 0) {
            historyItem.eventTag = historyItem.localEventTag;
            int readInt4 = parcel.readInt();
            historyItem.eventCode = readInt4 & 65535;
            readHistoryTag((readInt4 >> 16) & 65535, historyItem.eventTag);
            historyItem.numReadInts++;
        } else {
            historyItem.eventCode = 0;
        }
        if ((i & 1) != 0) {
            historyItem.stepDetails = this.mReadHistoryStepDetails;
            historyItem.stepDetails.readFromParcel(parcel);
        } else {
            historyItem.stepDetails = null;
        }
        if ((16777216 & readInt) != 0) {
            historyItem.batteryChargeUAh = parcel.readInt();
        }
    }

    public void commitCurrentHistoryBatchLocked() {
        this.mHistoryLastWritten.cmd = (byte) -1;
    }

    void addHistoryBufferLocked(long j, BatteryStats.HistoryItem historyItem) {
        boolean z;
        if (this.mHaveBatteryLevel && this.mRecordingHistory) {
            long j2 = (this.mHistoryBaseTime + j) - this.mHistoryLastWritten.time;
            int i = this.mHistoryLastWritten.states ^ (historyItem.states & this.mActiveHistoryStates);
            int i2 = this.mHistoryLastWritten.states2 ^ (historyItem.states2 & this.mActiveHistoryStates2);
            int i3 = this.mHistoryLastWritten.states ^ this.mHistoryLastLastWritten.states;
            int i4 = this.mHistoryLastWritten.states2 ^ this.mHistoryLastLastWritten.states2;
            if (this.mHistoryBufferLastPos >= 0 && this.mHistoryLastWritten.cmd == 0 && j2 < 1000 && (i & i3) == 0 && (i2 & i4) == 0 && ((this.mHistoryLastWritten.wakelockTag == null || historyItem.wakelockTag == null) && ((this.mHistoryLastWritten.wakeReasonTag == null || historyItem.wakeReasonTag == null) && this.mHistoryLastWritten.stepDetails == null && ((this.mHistoryLastWritten.eventCode == 0 || historyItem.eventCode == 0) && this.mHistoryLastWritten.batteryLevel == historyItem.batteryLevel && this.mHistoryLastWritten.batteryStatus == historyItem.batteryStatus && this.mHistoryLastWritten.batteryHealth == historyItem.batteryHealth && this.mHistoryLastWritten.batteryPlugType == historyItem.batteryPlugType && this.mHistoryLastWritten.batteryTemperature == historyItem.batteryTemperature && this.mHistoryLastWritten.batteryVoltage == historyItem.batteryVoltage)))) {
                this.mHistoryBuffer.setDataSize(this.mHistoryBufferLastPos);
                this.mHistoryBuffer.setDataPosition(this.mHistoryBufferLastPos);
                this.mHistoryBufferLastPos = -1;
                j = this.mHistoryLastWritten.time - this.mHistoryBaseTime;
                if (this.mHistoryLastWritten.wakelockTag != null) {
                    historyItem.wakelockTag = historyItem.localWakelockTag;
                    historyItem.wakelockTag.setTo(this.mHistoryLastWritten.wakelockTag);
                }
                if (this.mHistoryLastWritten.wakeReasonTag != null) {
                    historyItem.wakeReasonTag = historyItem.localWakeReasonTag;
                    historyItem.wakeReasonTag.setTo(this.mHistoryLastWritten.wakeReasonTag);
                }
                if (this.mHistoryLastWritten.eventCode != 0) {
                    historyItem.eventCode = this.mHistoryLastWritten.eventCode;
                    historyItem.eventTag = historyItem.localEventTag;
                    historyItem.eventTag.setTo(this.mHistoryLastWritten.eventTag);
                }
                this.mHistoryLastWritten.setTo(this.mHistoryLastLastWritten);
            }
            int dataSize = this.mHistoryBuffer.dataSize();
            if (dataSize >= MAX_MAX_HISTORY_BUFFER * 3) {
                resetAllStatsLocked();
            } else {
                if (dataSize >= MAX_HISTORY_BUFFER) {
                    if (!this.mHistoryOverflow) {
                        this.mHistoryOverflow = true;
                        addHistoryBufferLocked(j, (byte) 0, historyItem);
                        addHistoryBufferLocked(j, (byte) 6, historyItem);
                        return;
                    }
                    int i5 = historyItem.states & (-1900544) & this.mActiveHistoryStates;
                    if (this.mHistoryLastWritten.states != i5) {
                        int i6 = this.mActiveHistoryStates;
                        this.mActiveHistoryStates = (i5 | 1900543) & this.mActiveHistoryStates;
                        z = (i6 != this.mActiveHistoryStates) | false;
                    } else {
                        z = false;
                    }
                    int i7 = historyItem.states2 & 1748959232 & this.mActiveHistoryStates2;
                    if (this.mHistoryLastWritten.states2 != i7) {
                        int i8 = this.mActiveHistoryStates2;
                        this.mActiveHistoryStates2 = (i7 | (-1748959233)) & this.mActiveHistoryStates2;
                        z |= i8 != this.mActiveHistoryStates2;
                    }
                    if (!z && this.mHistoryLastWritten.batteryLevel == historyItem.batteryLevel && (dataSize >= MAX_MAX_HISTORY_BUFFER || ((this.mHistoryLastWritten.states ^ historyItem.states) & 1835008) == 0 || ((this.mHistoryLastWritten.states2 ^ historyItem.states2) & (-1749024768)) == 0)) {
                        return;
                    }
                    addHistoryBufferLocked(j, (byte) 0, historyItem);
                    return;
                }
                r3 = false;
            }
            if (dataSize == 0 || r3) {
                historyItem.currentTime = System.currentTimeMillis();
                if (r3) {
                    addHistoryBufferLocked(j, (byte) 6, historyItem);
                }
                addHistoryBufferLocked(j, (byte) 7, historyItem);
            }
            addHistoryBufferLocked(j, (byte) 0, historyItem);
        }
    }

    private void addHistoryBufferLocked(long j, byte b, BatteryStats.HistoryItem historyItem) {
        if (this.mIteratingHistory) {
            throw new IllegalStateException("Can't do this while iterating history!");
        }
        this.mHistoryBufferLastPos = this.mHistoryBuffer.dataPosition();
        this.mHistoryLastLastWritten.setTo(this.mHistoryLastWritten);
        this.mHistoryLastWritten.setTo(this.mHistoryBaseTime + j, b, historyItem);
        this.mHistoryLastWritten.states &= this.mActiveHistoryStates;
        this.mHistoryLastWritten.states2 &= this.mActiveHistoryStates2;
        writeHistoryDelta(this.mHistoryBuffer, this.mHistoryLastWritten, this.mHistoryLastLastWritten);
        this.mLastHistoryElapsedRealtime = j;
        historyItem.wakelockTag = null;
        historyItem.wakeReasonTag = null;
        historyItem.eventCode = 0;
        historyItem.eventTag = null;
    }

    void addHistoryRecordLocked(long j, long j2) {
        if (this.mTrackRunningHistoryElapsedRealtime != 0) {
            long j3 = j - this.mTrackRunningHistoryElapsedRealtime;
            long j4 = j2 - this.mTrackRunningHistoryUptime;
            if (j4 < j3 - 20) {
                long j5 = j - (j3 - j4);
                this.mHistoryAddTmp.setTo(this.mHistoryLastWritten);
                this.mHistoryAddTmp.wakelockTag = null;
                this.mHistoryAddTmp.wakeReasonTag = null;
                this.mHistoryAddTmp.eventCode = 0;
                this.mHistoryAddTmp.states &= BytesRange.TO_END_OF_CONTENT;
                addHistoryRecordInnerLocked(j5, this.mHistoryAddTmp);
            }
        }
        this.mHistoryCur.states |= Integer.MIN_VALUE;
        this.mTrackRunningHistoryElapsedRealtime = j;
        this.mTrackRunningHistoryUptime = j2;
        addHistoryRecordInnerLocked(j, this.mHistoryCur);
    }

    void addHistoryRecordInnerLocked(long j, BatteryStats.HistoryItem historyItem) {
        addHistoryBufferLocked(j, historyItem);
    }

    public void addHistoryEventLocked(long j, long j2, int i, String str, int i2) {
        this.mHistoryCur.eventCode = i;
        this.mHistoryCur.eventTag = this.mHistoryCur.localEventTag;
        this.mHistoryCur.eventTag.string = str;
        this.mHistoryCur.eventTag.uid = i2;
        addHistoryRecordLocked(j, j2);
    }

    void addHistoryRecordLocked(long j, long j2, byte b, BatteryStats.HistoryItem historyItem) {
        BatteryStats.HistoryItem historyItem2 = this.mHistoryCache;
        if (historyItem2 != null) {
            this.mHistoryCache = historyItem2.next;
        } else {
            historyItem2 = new BatteryStats.HistoryItem();
        }
        historyItem2.setTo(this.mHistoryBaseTime + j, b, historyItem);
        addHistoryRecordLocked(historyItem2);
    }

    void addHistoryRecordLocked(BatteryStats.HistoryItem historyItem) {
        this.mNumHistoryItems++;
        historyItem.next = null;
        this.mHistoryLastEnd = this.mHistoryEnd;
        if (this.mHistoryEnd != null) {
            this.mHistoryEnd.next = historyItem;
            this.mHistoryEnd = historyItem;
        } else {
            this.mHistoryEnd = historyItem;
            this.mHistory = historyItem;
        }
    }

    void clearHistoryLocked() {
        this.mHistoryBaseTime = 0L;
        this.mLastHistoryElapsedRealtime = 0L;
        this.mTrackRunningHistoryElapsedRealtime = 0L;
        this.mTrackRunningHistoryUptime = 0L;
        this.mHistoryBuffer.setDataSize(0);
        this.mHistoryBuffer.setDataPosition(0);
        this.mHistoryBuffer.setDataCapacity(MAX_HISTORY_BUFFER / 2);
        this.mHistoryLastLastWritten.clear();
        this.mHistoryLastWritten.clear();
        this.mHistoryTagPool.clear();
        this.mNextHistoryTagIdx = 0;
        this.mNumHistoryTagChars = 0;
        this.mHistoryBufferLastPos = -1;
        this.mHistoryOverflow = false;
        this.mActiveHistoryStates = -1;
        this.mActiveHistoryStates2 = -1;
    }

    @GuardedBy("this")
    public void updateTimeBasesLocked(boolean z, int i, long j, long j2) {
        boolean z2 = !isScreenOn(i);
        boolean z3 = z != this.mOnBatteryTimeBase.isRunning();
        boolean z4 = (z && z2) != this.mOnBatteryScreenOffTimeBase.isRunning();
        if (z4 || z3) {
            if (z4) {
                updateKernelWakelocksLocked();
                updateBatteryPropertiesLocked();
            }
            if (z3) {
                updateRpmStatsLocked();
            }
            this.mOnBatteryTimeBase.setRunning(z, j, j2);
            if (z3) {
                for (int size = this.mUidStats.size() - 1; size >= 0; size--) {
                    this.mUidStats.valueAt(size).updateOnBatteryBgTimeBase(j, j2);
                }
            }
            if (z4) {
                this.mOnBatteryScreenOffTimeBase.setRunning(z && z2, j, j2);
                for (int size2 = this.mUidStats.size() - 1; size2 >= 0; size2--) {
                    this.mUidStats.valueAt(size2).updateOnBatteryScreenOffBgTimeBase(j, j2);
                }
            }
        }
    }

    private void updateBatteryPropertiesLocked() {
        try {
            IBatteryPropertiesRegistrar.Stub.asInterface(ServiceManager.getService("batteryproperties")).scheduleUpdate();
        } catch (RemoteException unused) {
        }
    }

    public void addIsolatedUidLocked(int i, int i2) {
        this.mIsolatedUids.put(i, i2);
        StatsLog.write(43, i2, i, 1);
        getUidStatsLocked(i2).addIsolatedUid(i);
    }

    public void scheduleRemoveIsolatedUidLocked(int i, int i2) {
        if (this.mIsolatedUids.get(i, -1) != i2 || this.mExternalSync == null) {
            return;
        }
        this.mExternalSync.scheduleCpuSyncDueToRemovedUid(i);
    }

    @GuardedBy("this")
    public void removeIsolatedUidLocked(int i) {
        StatsLog.write(43, this.mIsolatedUids.get(i, -1), i, 0);
        int indexOfKey = this.mIsolatedUids.indexOfKey(i);
        if (indexOfKey >= 0) {
            getUidStatsLocked(this.mIsolatedUids.valueAt(indexOfKey)).removeIsolatedUid(i);
            this.mIsolatedUids.removeAt(indexOfKey);
        }
        this.mPendingRemovedUids.add(new UidToRemove(this, i, this.mClocks.elapsedRealtime()));
    }

    public int mapUid(int i) {
        int i2 = this.mIsolatedUids.get(i, -1);
        return i2 > 0 ? i2 : i;
    }

    public void noteEventLocked(int i, String str, int i2) {
        int mapUid = mapUid(i2);
        if (this.mActiveEvents.updateState(i, str, mapUid, 0)) {
            addHistoryEventLocked(this.mClocks.elapsedRealtime(), this.mClocks.uptimeMillis(), i, str, mapUid);
        }
    }

    boolean ensureStartClockTime(long j) {
        if ((j <= 31536000000L || this.mStartClockTime >= j - 31536000000L) && this.mStartClockTime <= j) {
            return false;
        }
        this.mStartClockTime = j - (this.mClocks.elapsedRealtime() - (this.mRealtimeStart / 1000));
        return true;
    }

    public void noteCurrentTimeChangedLocked() {
        long currentTimeMillis = System.currentTimeMillis();
        recordCurrentTimeChangeLocked(currentTimeMillis, this.mClocks.elapsedRealtime(), this.mClocks.uptimeMillis());
        ensureStartClockTime(currentTimeMillis);
    }

    public void noteProcessStartLocked(String str, int i) {
        int mapUid = mapUid(i);
        if (isOnBattery()) {
            getUidStatsLocked(mapUid).getProcessStatsLocked(str).incStartsLocked();
        }
        if (this.mActiveEvents.updateState(32769, str, mapUid, 0) && this.mRecordAllHistory) {
            addHistoryEventLocked(this.mClocks.elapsedRealtime(), this.mClocks.uptimeMillis(), 32769, str, mapUid);
        }
    }

    public void noteProcessCrashLocked(String str, int i) {
        int mapUid = mapUid(i);
        if (isOnBattery()) {
            getUidStatsLocked(mapUid).getProcessStatsLocked(str).incNumCrashesLocked();
        }
    }

    public void noteProcessAnrLocked(String str, int i) {
        int mapUid = mapUid(i);
        if (isOnBattery()) {
            getUidStatsLocked(mapUid).getProcessStatsLocked(str).incNumAnrsLocked();
        }
    }

    public void noteUidProcessStateLocked(int i, int i2) {
        if (i != mapUid(i)) {
            return;
        }
        getUidStatsLocked(i).updateUidProcessStateLocked(i2);
    }

    public void noteProcessFinishLocked(String str, int i) {
        int mapUid = mapUid(i);
        if (this.mActiveEvents.updateState(16385, str, mapUid, 0) && this.mRecordAllHistory) {
            addHistoryEventLocked(this.mClocks.elapsedRealtime(), this.mClocks.uptimeMillis(), 16385, str, mapUid);
        }
    }

    public void noteSyncStartLocked(String str, int i) {
        int mapUid = mapUid(i);
        long elapsedRealtime = this.mClocks.elapsedRealtime();
        long uptimeMillis = this.mClocks.uptimeMillis();
        getUidStatsLocked(mapUid).noteStartSyncLocked(str, elapsedRealtime);
        if (this.mActiveEvents.updateState(32772, str, mapUid, 0)) {
            addHistoryEventLocked(elapsedRealtime, uptimeMillis, 32772, str, mapUid);
        }
    }

    public void noteSyncFinishLocked(String str, int i) {
        int mapUid = mapUid(i);
        long elapsedRealtime = this.mClocks.elapsedRealtime();
        long uptimeMillis = this.mClocks.uptimeMillis();
        getUidStatsLocked(mapUid).noteStopSyncLocked(str, elapsedRealtime);
        if (this.mActiveEvents.updateState(16388, str, mapUid, 0)) {
            addHistoryEventLocked(elapsedRealtime, uptimeMillis, 16388, str, mapUid);
        }
    }

    public void noteJobStartLocked(String str, int i) {
        int mapUid = mapUid(i);
        long elapsedRealtime = this.mClocks.elapsedRealtime();
        long uptimeMillis = this.mClocks.uptimeMillis();
        getUidStatsLocked(mapUid).noteStartJobLocked(str, elapsedRealtime);
        if (this.mActiveEvents.updateState(32774, str, mapUid, 0)) {
            addHistoryEventLocked(elapsedRealtime, uptimeMillis, 32774, str, mapUid);
        }
    }

    public void noteJobFinishLocked(String str, int i, int i2) {
        int mapUid = mapUid(i);
        long elapsedRealtime = this.mClocks.elapsedRealtime();
        long uptimeMillis = this.mClocks.uptimeMillis();
        getUidStatsLocked(mapUid).noteStopJobLocked(str, elapsedRealtime, i2);
        if (this.mActiveEvents.updateState(16390, str, mapUid, 0)) {
            addHistoryEventLocked(elapsedRealtime, uptimeMillis, 16390, str, mapUid);
        }
    }

    public void noteJobsDeferredLocked(int i, int i2, long j) {
        getUidStatsLocked(mapUid(i)).noteJobsDeferredLocked(i2, j);
    }

    public void noteAlarmStartLocked(String str, WorkSource workSource, int i) {
        noteAlarmStartOrFinishLocked(32781, str, workSource, i);
    }

    public void noteAlarmFinishLocked(String str, WorkSource workSource, int i) {
        noteAlarmStartOrFinishLocked(16397, str, workSource, i);
    }

    private void noteAlarmStartOrFinishLocked(int i, String str, WorkSource workSource, int i2) {
        int i3;
        ArrayList arrayList;
        int i4;
        int i5;
        WorkSource workSource2 = workSource;
        if (this.mRecordAllHistory) {
            long elapsedRealtime = this.mClocks.elapsedRealtime();
            long uptimeMillis = this.mClocks.uptimeMillis();
            int i6 = 0;
            if (workSource2 != null) {
                int i7 = 0;
                while (i7 < workSource.size()) {
                    int mapUid = mapUid(workSource2.get(i7));
                    if (this.mActiveEvents.updateState(i, str, mapUid, i6)) {
                        i4 = i7;
                        i5 = i6;
                        addHistoryEventLocked(elapsedRealtime, uptimeMillis, i, str, mapUid);
                    } else {
                        i4 = i7;
                        i5 = i6;
                    }
                    i7 = i4 + 1;
                    i6 = i5;
                    workSource2 = workSource;
                }
                int i8 = i6;
                ArrayList workChains = workSource.getWorkChains();
                if (workChains != null) {
                    int i9 = i8;
                    while (i9 < workChains.size()) {
                        int mapUid2 = mapUid(((WorkSource.WorkChain) workChains.get(i9)).getAttributionUid());
                        if (this.mActiveEvents.updateState(i, str, mapUid2, i8)) {
                            i3 = i9;
                            arrayList = workChains;
                            addHistoryEventLocked(elapsedRealtime, uptimeMillis, i, str, mapUid2);
                        } else {
                            i3 = i9;
                            arrayList = workChains;
                        }
                        i9 = i3 + 1;
                        workChains = arrayList;
                    }
                    return;
                }
                return;
            }
            int mapUid3 = mapUid(i2);
            if (this.mActiveEvents.updateState(i, str, mapUid3, 0)) {
                addHistoryEventLocked(elapsedRealtime, uptimeMillis, i, str, mapUid3);
            }
        }
    }

    public void noteWakupAlarmLocked(String str, int i, WorkSource workSource, String str2) {
        if (workSource != null) {
            for (int i2 = 0; i2 < workSource.size(); i2++) {
                int i3 = workSource.get(i2);
                String name = workSource.getName(i2);
                if (isOnBattery()) {
                    if (name == null) {
                        name = str;
                    }
                    getPackageStatsLocked(i3, name).noteWakeupAlarmLocked(str2);
                }
                StatsLog.write_non_chained(35, workSource.get(i2), workSource.getName(i2), str2);
            }
            ArrayList workChains = workSource.getWorkChains();
            if (workChains != null) {
                for (int i4 = 0; i4 < workChains.size(); i4++) {
                    WorkSource.WorkChain workChain = (WorkSource.WorkChain) workChains.get(i4);
                    int attributionUid = workChain.getAttributionUid();
                    if (isOnBattery()) {
                        getPackageStatsLocked(attributionUid, str).noteWakeupAlarmLocked(str2);
                    }
                    StatsLog.write(35, workChain.getUids(), workChain.getTags(), str2);
                }
                return;
            }
            return;
        }
        if (isOnBattery()) {
            getPackageStatsLocked(i, str).noteWakeupAlarmLocked(str2);
        }
        StatsLog.write_non_chained(35, i, null, str2);
    }

    private void requestWakelockCpuUpdate() {
        this.mExternalSync.scheduleCpuSyncDueToWakelockChange(DELAY_UPDATE_WAKELOCKS);
    }

    private void requestImmediateCpuUpdate() {
        this.mExternalSync.scheduleCpuSyncDueToWakelockChange(0L);
    }

    public void setRecordAllHistoryLocked(boolean z) {
        this.mRecordAllHistory = z;
        if (!z) {
            this.mActiveEvents.removeEvents(5);
            this.mActiveEvents.removeEvents(13);
            HashMap stateForEvent = this.mActiveEvents.getStateForEvent(1);
            if (stateForEvent != null) {
                long elapsedRealtime = this.mClocks.elapsedRealtime();
                long uptimeMillis = this.mClocks.uptimeMillis();
                for (Map.Entry entry : stateForEvent.entrySet()) {
                    int i = 0;
                    for (SparseIntArray sparseIntArray = (SparseIntArray) entry.getValue(); i < sparseIntArray.size(); sparseIntArray = sparseIntArray) {
                        addHistoryEventLocked(elapsedRealtime, uptimeMillis, 16385, (String) entry.getKey(), sparseIntArray.keyAt(i));
                        i++;
                    }
                }
                return;
            }
            return;
        }
        HashMap stateForEvent2 = this.mActiveEvents.getStateForEvent(1);
        if (stateForEvent2 != null) {
            long elapsedRealtime2 = this.mClocks.elapsedRealtime();
            long uptimeMillis2 = this.mClocks.uptimeMillis();
            for (Map.Entry entry2 : stateForEvent2.entrySet()) {
                int i2 = 0;
                for (SparseIntArray sparseIntArray2 = (SparseIntArray) entry2.getValue(); i2 < sparseIntArray2.size(); sparseIntArray2 = sparseIntArray2) {
                    addHistoryEventLocked(elapsedRealtime2, uptimeMillis2, 32769, (String) entry2.getKey(), sparseIntArray2.keyAt(i2));
                    i2++;
                }
            }
        }
    }

    public void setNoAutoReset(boolean z) {
        this.mNoAutoReset = z;
    }

    public void setPretendScreenOff(boolean z) {
        if (this.mPretendScreenOff != z) {
            this.mPretendScreenOff = z;
            noteScreenStateLocked(z ? 1 : 2);
        }
    }

    public void noteStartWakeLocked(int i, int i2, WorkSource.WorkChain workChain, String str, String str2, int i3, boolean z, long j, long j2) {
        String str3;
        int mapUid = mapUid(i);
        if (i3 == 0) {
            aggregateLastWakeupUptimeLocked(j2);
            String str4 = str2 == null ? str : str2;
            if (this.mRecordAllHistory && this.mActiveEvents.updateState(ExifInterface.DATA_PACK_BITS_COMPRESSED, str4, mapUid, 0)) {
                str3 = str4;
                addHistoryEventLocked(j, j2, ExifInterface.DATA_PACK_BITS_COMPRESSED, str4, mapUid);
            } else {
                str3 = str4;
            }
            if (this.mWakeLockNesting == 0) {
                this.mHistoryCur.states |= 1073741824;
                this.mHistoryCur.wakelockTag = this.mHistoryCur.localWakelockTag;
                BatteryStats.HistoryTag historyTag = this.mHistoryCur.wakelockTag;
                this.mInitialAcquireWakeName = str3;
                historyTag.string = str3;
                BatteryStats.HistoryTag historyTag2 = this.mHistoryCur.wakelockTag;
                this.mInitialAcquireWakeUid = mapUid;
                historyTag2.uid = mapUid;
                this.mWakeLockImportant = !z;
                addHistoryRecordLocked(j, j2);
            } else if (!this.mWakeLockImportant && !z && this.mHistoryLastWritten.cmd == 0) {
                if (this.mHistoryLastWritten.wakelockTag != null) {
                    this.mHistoryLastWritten.wakelockTag = null;
                    this.mHistoryCur.wakelockTag = this.mHistoryCur.localWakelockTag;
                    BatteryStats.HistoryTag historyTag3 = this.mHistoryCur.wakelockTag;
                    this.mInitialAcquireWakeName = str3;
                    historyTag3.string = str3;
                    BatteryStats.HistoryTag historyTag4 = this.mHistoryCur.wakelockTag;
                    this.mInitialAcquireWakeUid = mapUid;
                    historyTag4.uid = mapUid;
                    addHistoryRecordLocked(j, j2);
                }
                this.mWakeLockImportant = true;
            }
            this.mWakeLockNesting++;
        }
        if (mapUid >= 0) {
            if (this.mOnBatteryScreenOffTimeBase.isRunning()) {
                requestWakelockCpuUpdate();
            }
            getUidStatsLocked(mapUid).noteStartWakeLocked(i2, str, i3, j);
            if (workChain != null) {
                StatsLog.write(10, workChain.getUids(), workChain.getTags(), getPowerManagerWakeLockLevel(i3), str, 1);
            } else {
                StatsLog.write_non_chained(10, mapUid, null, getPowerManagerWakeLockLevel(i3), str, 1);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x004f  */
    /* JADX WARN: Removed duplicated region for block: B:25:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void noteStopWakeLocked(int i, int i2, WorkSource.WorkChain workChain, String str, String str2, int i3, long j, long j2) {
        int mapUid = mapUid(i);
        if (i3 == 0) {
            this.mWakeLockNesting--;
            if (this.mRecordAllHistory) {
                String str3 = str2 == null ? str : str2;
                if (this.mActiveEvents.updateState(16389, str3, mapUid, 0)) {
                    addHistoryEventLocked(j, j2, 16389, str3, mapUid);
                }
            }
            if (this.mWakeLockNesting == 0) {
                this.mHistoryCur.states &= -1073741825;
                this.mInitialAcquireWakeName = null;
                this.mInitialAcquireWakeUid = -1;
                addHistoryRecordLocked(j, j2);
                if (mapUid < 0) {
                    if (this.mOnBatteryScreenOffTimeBase.isRunning()) {
                        requestWakelockCpuUpdate();
                    }
                    getUidStatsLocked(mapUid).noteStopWakeLocked(i2, str, i3, j);
                    if (workChain != null) {
                        StatsLog.write(10, workChain.getUids(), workChain.getTags(), getPowerManagerWakeLockLevel(i3), str, 0);
                        return;
                    } else {
                        StatsLog.write_non_chained(10, mapUid, null, getPowerManagerWakeLockLevel(i3), str, 0);
                        return;
                    }
                }
                return;
            }
        }
        if (mapUid < 0) {
        }
    }

    private int getPowerManagerWakeLockLevel(int i) {
        if (i == 18) {
            return 128;
        }
        switch (i) {
            case 0:
                return 1;
            case 1:
                return 26;
            case 2:
                Slog.e(TAG, "Illegal window wakelock type observed in batterystats.");
                return -1;
            default:
                Slog.e(TAG, "Illegal wakelock type in batterystats: " + i);
                return -1;
        }
    }

    public void noteStartWakeFromSourceLocked(WorkSource workSource, int i, String str, String str2, int i2, boolean z) {
        long elapsedRealtime = this.mClocks.elapsedRealtime();
        long uptimeMillis = this.mClocks.uptimeMillis();
        int i3 = 0;
        for (int size = workSource.size(); i3 < size; size = size) {
            noteStartWakeLocked(workSource.get(i3), i, null, str, str2, i2, z, elapsedRealtime, uptimeMillis);
            i3++;
        }
        ArrayList workChains = workSource.getWorkChains();
        if (workChains != null) {
            int i4 = 0;
            while (i4 < workChains.size()) {
                WorkSource.WorkChain workChain = (WorkSource.WorkChain) workChains.get(i4);
                noteStartWakeLocked(workChain.getAttributionUid(), i, workChain, str, str2, i2, z, elapsedRealtime, uptimeMillis);
                i4++;
                workChains = workChains;
            }
        }
    }

    public void noteChangeWakelockFromSourceLocked(WorkSource workSource, int i, String str, String str2, int i2, WorkSource workSource2, int i3, String str3, String str4, int i4, boolean z) {
        ArrayList arrayList;
        ArrayList arrayList2;
        long elapsedRealtime = this.mClocks.elapsedRealtime();
        long uptimeMillis = this.mClocks.uptimeMillis();
        ArrayList[] diffChains = WorkSource.diffChains(workSource, workSource2);
        int i5 = 0;
        for (int size = workSource2.size(); i5 < size; size = size) {
            noteStartWakeLocked(workSource2.get(i5), i3, null, str3, str4, i4, z, elapsedRealtime, uptimeMillis);
            i5++;
        }
        if (diffChains != null && (arrayList2 = diffChains[0]) != null) {
            for (int i6 = 0; i6 < arrayList2.size(); i6++) {
                WorkSource.WorkChain workChain = (WorkSource.WorkChain) arrayList2.get(i6);
                noteStartWakeLocked(workChain.getAttributionUid(), i3, workChain, str3, str4, i4, z, elapsedRealtime, uptimeMillis);
            }
        }
        int size2 = workSource.size();
        for (int i7 = 0; i7 < size2; i7++) {
            noteStopWakeLocked(workSource.get(i7), i, null, str, str2, i2, elapsedRealtime, uptimeMillis);
        }
        if (diffChains == null || (arrayList = diffChains[1]) == null) {
            return;
        }
        for (int i8 = 0; i8 < arrayList.size(); i8++) {
            WorkSource.WorkChain workChain2 = (WorkSource.WorkChain) arrayList.get(i8);
            noteStopWakeLocked(workChain2.getAttributionUid(), i, workChain2, str, str2, i2, elapsedRealtime, uptimeMillis);
        }
    }

    public void noteStopWakeFromSourceLocked(WorkSource workSource, int i, String str, String str2, int i2) {
        long elapsedRealtime = this.mClocks.elapsedRealtime();
        long uptimeMillis = this.mClocks.uptimeMillis();
        int i3 = 0;
        for (int size = workSource.size(); i3 < size; size = size) {
            noteStopWakeLocked(workSource.get(i3), i, null, str, str2, i2, elapsedRealtime, uptimeMillis);
            i3++;
        }
        ArrayList workChains = workSource.getWorkChains();
        if (workChains != null) {
            int i4 = 0;
            while (i4 < workChains.size()) {
                WorkSource.WorkChain workChain = (WorkSource.WorkChain) workChains.get(i4);
                noteStopWakeLocked(workChain.getAttributionUid(), i, workChain, str, str2, i2, elapsedRealtime, uptimeMillis);
                i4++;
                workChains = workChains;
            }
        }
    }

    public void noteLongPartialWakelockStart(String str, String str2, int i) {
        StatsLog.write_non_chained(11, i, null, str, str2, 1);
        noteLongPartialWakeLockStartInternal(str, str2, mapUid(i));
    }

    public void noteLongPartialWakelockStartFromSource(String str, String str2, WorkSource workSource) {
        int size = workSource.size();
        for (int i = 0; i < size; i++) {
            noteLongPartialWakeLockStartInternal(str, str2, mapUid(workSource.get(i)));
            StatsLog.write_non_chained(11, workSource.get(i), workSource.getName(i), str, str2, 1);
        }
        ArrayList workChains = workSource.getWorkChains();
        if (workChains != null) {
            for (int i2 = 0; i2 < workChains.size(); i2++) {
                WorkSource.WorkChain workChain = (WorkSource.WorkChain) workChains.get(i2);
                noteLongPartialWakeLockStartInternal(str, str2, workChain.getAttributionUid());
                StatsLog.write(11, workChain.getUids(), workChain.getTags(), str, str2, 1);
            }
        }
    }

    private void noteLongPartialWakeLockStartInternal(String str, String str2, int i) {
        long elapsedRealtime = this.mClocks.elapsedRealtime();
        long uptimeMillis = this.mClocks.uptimeMillis();
        String str3 = str2 == null ? str : str2;
        if (this.mActiveEvents.updateState(32788, str3, i, 0)) {
            addHistoryEventLocked(elapsedRealtime, uptimeMillis, 32788, str3, i);
        }
    }

    public void noteLongPartialWakelockFinish(String str, String str2, int i) {
        StatsLog.write_non_chained(11, i, null, str, str2, 0);
        noteLongPartialWakeLockFinishInternal(str, str2, mapUid(i));
    }

    public void noteLongPartialWakelockFinishFromSource(String str, String str2, WorkSource workSource) {
        int size = workSource.size();
        for (int i = 0; i < size; i++) {
            noteLongPartialWakeLockFinishInternal(str, str2, mapUid(workSource.get(i)));
            StatsLog.write_non_chained(11, workSource.get(i), workSource.getName(i), str, str2, 0);
        }
        ArrayList workChains = workSource.getWorkChains();
        if (workChains != null) {
            for (int i2 = 0; i2 < workChains.size(); i2++) {
                WorkSource.WorkChain workChain = (WorkSource.WorkChain) workChains.get(i2);
                noteLongPartialWakeLockFinishInternal(str, str2, workChain.getAttributionUid());
                StatsLog.write(11, workChain.getUids(), workChain.getTags(), str, str2, 0);
            }
        }
    }

    private void noteLongPartialWakeLockFinishInternal(String str, String str2, int i) {
        long elapsedRealtime = this.mClocks.elapsedRealtime();
        long uptimeMillis = this.mClocks.uptimeMillis();
        String str3 = str2 == null ? str : str2;
        if (this.mActiveEvents.updateState(16404, str3, i, 0)) {
            addHistoryEventLocked(elapsedRealtime, uptimeMillis, 16404, str3, i);
        }
    }

    void aggregateLastWakeupUptimeLocked(long j) {
        if (this.mLastWakeupReason != null) {
            long j2 = (j - this.mLastWakeupUptimeMs) * 1000;
            getWakeupReasonTimerLocked(this.mLastWakeupReason).add(j2, 1);
            StatsLog.write(36, this.mLastWakeupReason, j2);
            this.mLastWakeupReason = null;
        }
    }

    public void noteWakeupReasonLocked(String str) {
        long elapsedRealtime = this.mClocks.elapsedRealtime();
        long uptimeMillis = this.mClocks.uptimeMillis();
        aggregateLastWakeupUptimeLocked(uptimeMillis);
        this.mHistoryCur.wakeReasonTag = this.mHistoryCur.localWakeReasonTag;
        this.mHistoryCur.wakeReasonTag.string = str;
        this.mHistoryCur.wakeReasonTag.uid = 0;
        this.mLastWakeupReason = str;
        this.mLastWakeupUptimeMs = uptimeMillis;
        addHistoryRecordLocked(elapsedRealtime, uptimeMillis);
    }

    public boolean startAddingCpuLocked() {
        this.mExternalSync.cancelCpuSyncDueToWakelockChange();
        return this.mOnBatteryInternal;
    }

    public void finishAddingCpuLocked(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        this.mCurStepCpuUserTime += i;
        this.mCurStepCpuSystemTime += i2;
        this.mCurStepStatUserTime += i3;
        this.mCurStepStatSystemTime += i4;
        this.mCurStepStatIOWaitTime += i5;
        this.mCurStepStatIrqTime += i6;
        this.mCurStepStatSoftIrqTime += i7;
        this.mCurStepStatIdleTime += i8;
    }

    public void noteProcessDiedLocked(int i, int i2) {
        Uid uid = this.mUidStats.get(mapUid(i));
        if (uid != null) {
            uid.mPids.remove(i2);
        }
    }

    public long getProcessWakeTime(int i, int i2, long j) {
        BatteryStats.Uid.Pid pid;
        Uid uid = this.mUidStats.get(mapUid(i));
        if (uid == null || (pid = uid.mPids.get(i2)) == null) {
            return 0L;
        }
        return pid.mWakeSumMs + (pid.mWakeNesting > 0 ? j - pid.mWakeStartMs : 0L);
    }

    public void reportExcessiveCpuLocked(int i, String str, long j, long j2) {
        Uid uid = this.mUidStats.get(mapUid(i));
        if (uid != null) {
            uid.reportExcessiveCpuLocked(str, j, j2);
        }
    }

    public void noteStartSensorLocked(int i, int i2) {
        int mapUid = mapUid(i);
        long elapsedRealtime = this.mClocks.elapsedRealtime();
        long uptimeMillis = this.mClocks.uptimeMillis();
        if (this.mSensorNesting == 0) {
            this.mHistoryCur.states |= 8388608;
            addHistoryRecordLocked(elapsedRealtime, uptimeMillis);
        }
        this.mSensorNesting++;
        getUidStatsLocked(mapUid).noteStartSensor(i2, elapsedRealtime);
    }

    public void noteStopSensorLocked(int i, int i2) {
        int mapUid = mapUid(i);
        long elapsedRealtime = this.mClocks.elapsedRealtime();
        long uptimeMillis = this.mClocks.uptimeMillis();
        this.mSensorNesting--;
        if (this.mSensorNesting == 0) {
            this.mHistoryCur.states &= -8388609;
            addHistoryRecordLocked(elapsedRealtime, uptimeMillis);
        }
        getUidStatsLocked(mapUid).noteStopSensor(i2, elapsedRealtime);
    }

    public void noteGpsChangedLocked(WorkSource workSource, WorkSource workSource2) {
        for (int i = 0; i < workSource2.size(); i++) {
            noteStartGpsLocked(workSource2.get(i), null);
        }
        for (int i2 = 0; i2 < workSource.size(); i2++) {
            noteStopGpsLocked(workSource.get(i2), null);
        }
        ArrayList[] diffChains = WorkSource.diffChains(workSource, workSource2);
        if (diffChains != null) {
            if (diffChains[0] != null) {
                ArrayList arrayList = diffChains[0];
                for (int i3 = 0; i3 < arrayList.size(); i3++) {
                    noteStartGpsLocked(-1, (WorkSource.WorkChain) arrayList.get(i3));
                }
            }
            if (diffChains[1] != null) {
                ArrayList arrayList2 = diffChains[1];
                for (int i4 = 0; i4 < arrayList2.size(); i4++) {
                    noteStopGpsLocked(-1, (WorkSource.WorkChain) arrayList2.get(i4));
                }
            }
        }
    }

    private void noteStartGpsLocked(int i, WorkSource.WorkChain workChain) {
        int attributionUid = getAttributionUid(i, workChain);
        long elapsedRealtime = this.mClocks.elapsedRealtime();
        long uptimeMillis = this.mClocks.uptimeMillis();
        if (this.mGpsNesting == 0) {
            this.mHistoryCur.states |= 536870912;
            addHistoryRecordLocked(elapsedRealtime, uptimeMillis);
        }
        this.mGpsNesting++;
        if (workChain == null) {
            StatsLog.write_non_chained(6, attributionUid, null, 1);
        } else {
            StatsLog.write(6, workChain.getUids(), workChain.getTags(), 1);
        }
        getUidStatsLocked(attributionUid).noteStartGps(elapsedRealtime);
    }

    private void noteStopGpsLocked(int i, WorkSource.WorkChain workChain) {
        int attributionUid = getAttributionUid(i, workChain);
        long elapsedRealtime = this.mClocks.elapsedRealtime();
        long uptimeMillis = this.mClocks.uptimeMillis();
        this.mGpsNesting--;
        if (this.mGpsNesting == 0) {
            this.mHistoryCur.states &= -536870913;
            addHistoryRecordLocked(elapsedRealtime, uptimeMillis);
            stopAllGpsSignalQualityTimersLocked(-1);
            this.mGpsSignalQualityBin = -1;
        }
        if (workChain == null) {
            StatsLog.write_non_chained(6, attributionUid, null, 0);
        } else {
            StatsLog.write(6, workChain.getUids(), workChain.getTags(), 0);
        }
        getUidStatsLocked(attributionUid).noteStopGps(elapsedRealtime);
    }

    public void noteGpsSignalQualityLocked(int i) {
        if (this.mGpsNesting == 0) {
            return;
        }
        if (i < 0 || i >= 2) {
            stopAllGpsSignalQualityTimersLocked(-1);
            return;
        }
        long elapsedRealtime = this.mClocks.elapsedRealtime();
        long uptimeMillis = this.mClocks.uptimeMillis();
        if (this.mGpsSignalQualityBin != i) {
            if (this.mGpsSignalQualityBin >= 0) {
                this.mGpsSignalQualityTimer[this.mGpsSignalQualityBin].stopRunningLocked(elapsedRealtime);
            }
            if (!this.mGpsSignalQualityTimer[i].isRunningLocked()) {
                this.mGpsSignalQualityTimer[i].startRunningLocked(elapsedRealtime);
            }
            this.mHistoryCur.states2 = (this.mHistoryCur.states2 & (-129)) | (i << 7);
            addHistoryRecordLocked(elapsedRealtime, uptimeMillis);
            this.mGpsSignalQualityBin = i;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x00a4  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00e6  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0102  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0161  */
    /* JADX WARN: Removed duplicated region for block: B:37:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x012b  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00c0  */
    @GuardedBy("this")
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void noteScreenStateLocked(int i) {
        boolean z = true;
        int i2 = this.mPretendScreenOff ? 1 : i;
        if (i2 > 4) {
            if (i2 != 5) {
                Slog.wtf(TAG, "Unknown screen state (not mapped): " + i2);
            } else {
                i2 = 2;
            }
        }
        int i3 = i2;
        if (this.mScreenState == i3) {
            return;
        }
        recordDailyStatsIfNeededLocked(true);
        int i4 = this.mScreenState;
        this.mScreenState = i3;
        if (i3 != 0) {
            int i5 = i3 - 1;
            if ((i5 & 3) == i5) {
                this.mModStepMode |= (this.mCurStepMode & 3) ^ i5;
                this.mCurStepMode = i5 | (this.mCurStepMode & (-4));
            } else {
                Slog.wtf(TAG, "Unexpected screen state: " + i3);
            }
        }
        long elapsedRealtime = this.mClocks.elapsedRealtime();
        long uptimeMillis = this.mClocks.uptimeMillis();
        boolean z2 = false;
        if (isScreenDoze(i3)) {
            this.mHistoryCur.states |= 262144;
            this.mScreenDozeTimer.startRunningLocked(elapsedRealtime);
        } else {
            if (isScreenDoze(i4)) {
                this.mHistoryCur.states &= -262145;
                this.mScreenDozeTimer.stopRunningLocked(elapsedRealtime);
            }
            if (!isScreenOn(i3)) {
                this.mHistoryCur.states |= 1048576;
                this.mScreenOnTimer.startRunningLocked(elapsedRealtime);
                if (this.mScreenBrightnessBin >= 0) {
                    this.mScreenBrightnessTimer[this.mScreenBrightnessBin].startRunningLocked(elapsedRealtime);
                }
            } else if (isScreenOn(i4)) {
                this.mHistoryCur.states &= -1048577;
                this.mScreenOnTimer.stopRunningLocked(elapsedRealtime);
                if (this.mScreenBrightnessBin >= 0) {
                    this.mScreenBrightnessTimer[this.mScreenBrightnessBin].stopRunningLocked(elapsedRealtime);
                }
            } else {
                z = z2;
            }
            if (z) {
                addHistoryRecordLocked(elapsedRealtime, uptimeMillis);
            }
            this.mExternalSync.scheduleCpuSyncDueToScreenStateChange(this.mOnBatteryTimeBase.isRunning(), this.mOnBatteryScreenOffTimeBase.isRunning());
            if (!isScreenOn(i3)) {
                updateTimeBasesLocked(this.mOnBatteryTimeBase.isRunning(), i3, this.mClocks.uptimeMillis() * 1000, elapsedRealtime * 1000);
                noteStartWakeLocked(-1, -1, null, "screen", null, 0, false, elapsedRealtime, uptimeMillis);
            } else if (isScreenOn(i4)) {
                noteStopWakeLocked(-1, -1, null, "screen", "screen", 0, elapsedRealtime, uptimeMillis);
                updateTimeBasesLocked(this.mOnBatteryTimeBase.isRunning(), i3, this.mClocks.uptimeMillis() * 1000, elapsedRealtime * 1000);
            }
            if (this.mOnBatteryInternal) {
                return;
            }
            updateDischargeScreenLevelsLocked(i4, i3);
            return;
        }
        z2 = true;
        if (!isScreenOn(i3)) {
        }
        if (z) {
        }
        this.mExternalSync.scheduleCpuSyncDueToScreenStateChange(this.mOnBatteryTimeBase.isRunning(), this.mOnBatteryScreenOffTimeBase.isRunning());
        if (!isScreenOn(i3)) {
        }
        if (this.mOnBatteryInternal) {
        }
    }

    public void noteScreenBrightnessLocked(int i) {
        int i2 = i / 51;
        if (i2 < 0) {
            i2 = 0;
        } else if (i2 >= 5) {
            i2 = 4;
        }
        if (this.mScreenBrightnessBin != i2) {
            long elapsedRealtime = this.mClocks.elapsedRealtime();
            long uptimeMillis = this.mClocks.uptimeMillis();
            this.mHistoryCur.states = (this.mHistoryCur.states & (-8)) | (i2 << 0);
            addHistoryRecordLocked(elapsedRealtime, uptimeMillis);
            if (this.mScreenState == 2) {
                if (this.mScreenBrightnessBin >= 0) {
                    this.mScreenBrightnessTimer[this.mScreenBrightnessBin].stopRunningLocked(elapsedRealtime);
                }
                this.mScreenBrightnessTimer[i2].startRunningLocked(elapsedRealtime);
            }
            this.mScreenBrightnessBin = i2;
        }
    }

    public void noteUserActivityLocked(int i, int i2) {
        if (this.mOnBatteryInternal) {
            getUidStatsLocked(mapUid(i)).noteUserActivityLocked(i2);
        }
    }

    public void noteWakeUpLocked(String str, int i) {
        addHistoryEventLocked(this.mClocks.elapsedRealtime(), this.mClocks.uptimeMillis(), 18, str, i);
    }

    public void noteInteractiveLocked(boolean z) {
        if (this.mInteractive != z) {
            long elapsedRealtime = this.mClocks.elapsedRealtime();
            this.mInteractive = z;
            if (z) {
                this.mInteractiveTimer.startRunningLocked(elapsedRealtime);
            } else {
                this.mInteractiveTimer.stopRunningLocked(elapsedRealtime);
            }
        }
    }

    public void noteConnectivityChangedLocked(int i, String str) {
        addHistoryEventLocked(this.mClocks.elapsedRealtime(), this.mClocks.uptimeMillis(), 9, str, i);
        this.mNumConnectivityChange++;
    }

    private void noteMobileRadioApWakeupLocked(long j, long j2, int i) {
        int mapUid = mapUid(i);
        addHistoryEventLocked(j, j2, 19, "", mapUid);
        getUidStatsLocked(mapUid).noteMobileRadioApWakeupLocked();
    }

    public boolean noteMobileRadioPowerStateLocked(int i, long j, int i2) {
        long j2;
        long elapsedRealtime = this.mClocks.elapsedRealtime();
        long uptimeMillis = this.mClocks.uptimeMillis();
        if (this.mMobileRadioPowerState != i) {
            boolean z = i == 2 || i == 3;
            if (z) {
                if (i2 > 0) {
                    noteMobileRadioApWakeupLocked(elapsedRealtime, uptimeMillis, i2);
                }
                j2 = j / 1000000;
                this.mMobileRadioActiveStartTime = j2;
                this.mHistoryCur.states |= 33554432;
            } else {
                j2 = j / 1000000;
                long j3 = this.mMobileRadioActiveStartTime;
                if (j2 < j3) {
                    Slog.wtf(TAG, "Data connection inactive timestamp " + j2 + " is before start time " + j3);
                    j2 = elapsedRealtime;
                } else if (j2 < elapsedRealtime) {
                    this.mMobileRadioActiveAdjustedTime.addCountLocked(elapsedRealtime - j2);
                }
                this.mHistoryCur.states &= -33554433;
            }
            addHistoryRecordLocked(elapsedRealtime, uptimeMillis);
            this.mMobileRadioPowerState = i;
            StatsLog.write_non_chained(12, i2, null, i);
            if (z) {
                this.mMobileRadioActiveTimer.startRunningLocked(elapsedRealtime);
                this.mMobileRadioActivePerAppTimer.startRunningLocked(elapsedRealtime);
            } else {
                this.mMobileRadioActiveTimer.stopRunningLocked(j2);
                this.mMobileRadioActivePerAppTimer.stopRunningLocked(j2);
                return true;
            }
        }
        return false;
    }

    public void notePowerSaveModeLocked(boolean z) {
        if (this.mPowerSaveModeEnabled != z) {
            int i = z ? 4 : 0;
            this.mModStepMode = ((4 & this.mCurStepMode) ^ i) | this.mModStepMode;
            this.mCurStepMode = (this.mCurStepMode & (-5)) | i;
            long elapsedRealtime = this.mClocks.elapsedRealtime();
            long uptimeMillis = this.mClocks.uptimeMillis();
            this.mPowerSaveModeEnabled = z;
            if (z) {
                this.mHistoryCur.states2 |= Integer.MIN_VALUE;
                this.mPowerSaveModeEnabledTimer.startRunningLocked(elapsedRealtime);
            } else {
                this.mHistoryCur.states2 &= BytesRange.TO_END_OF_CONTENT;
                this.mPowerSaveModeEnabledTimer.stopRunningLocked(elapsedRealtime);
            }
            addHistoryRecordLocked(elapsedRealtime, uptimeMillis);
            StatsLog.write(20, z ? 1 : 0);
        }
    }

    public void noteDeviceIdleModeLocked(int i, String str, int i2) {
        boolean z;
        boolean z2;
        long elapsedRealtime = this.mClocks.elapsedRealtime();
        long uptimeMillis = this.mClocks.uptimeMillis();
        boolean z3 = i == 2;
        boolean z4 = (this.mDeviceIdling && !z3 && str == null) ? true : z3;
        boolean z5 = i == 1;
        boolean z6 = (!this.mDeviceLightIdling || z5 || z4 || str != null) ? z5 : true;
        if (str == null || !(this.mDeviceIdling || this.mDeviceLightIdling)) {
            z = z6;
            z2 = z4;
        } else {
            z = z6;
            z2 = z4;
            addHistoryEventLocked(elapsedRealtime, uptimeMillis, 10, str, i2);
        }
        if (this.mDeviceIdling != z2 || this.mDeviceLightIdling != z) {
            StatsLog.write(22, z2 ? 2 : z ? 1 : 0);
        }
        if (this.mDeviceIdling != z2) {
            this.mDeviceIdling = z2;
            int i3 = z2 ? 8 : 0;
            this.mModStepMode = ((8 & this.mCurStepMode) ^ i3) | this.mModStepMode;
            this.mCurStepMode = (this.mCurStepMode & (-9)) | i3;
            if (z2) {
                this.mDeviceIdlingTimer.startRunningLocked(elapsedRealtime);
            } else {
                this.mDeviceIdlingTimer.stopRunningLocked(elapsedRealtime);
            }
        }
        if (this.mDeviceLightIdling != z) {
            this.mDeviceLightIdling = z;
            if (z) {
                this.mDeviceLightIdlingTimer.startRunningLocked(elapsedRealtime);
            } else {
                this.mDeviceLightIdlingTimer.stopRunningLocked(elapsedRealtime);
            }
        }
        if (this.mDeviceIdleMode != i) {
            this.mHistoryCur.states2 = (this.mHistoryCur.states2 & (-100663297)) | (i << 25);
            addHistoryRecordLocked(elapsedRealtime, uptimeMillis);
            long j = elapsedRealtime - this.mLastIdleTimeStart;
            this.mLastIdleTimeStart = elapsedRealtime;
            if (this.mDeviceIdleMode == 1) {
                if (j > this.mLongestLightIdleTime) {
                    this.mLongestLightIdleTime = j;
                }
                this.mDeviceIdleModeLightTimer.stopRunningLocked(elapsedRealtime);
            } else if (this.mDeviceIdleMode == 2) {
                if (j > this.mLongestFullIdleTime) {
                    this.mLongestFullIdleTime = j;
                }
                this.mDeviceIdleModeFullTimer.stopRunningLocked(elapsedRealtime);
            }
            if (i == 1) {
                this.mDeviceIdleModeLightTimer.startRunningLocked(elapsedRealtime);
            } else if (i == 2) {
                this.mDeviceIdleModeFullTimer.startRunningLocked(elapsedRealtime);
            }
            this.mDeviceIdleMode = i;
            StatsLog.write(21, i);
        }
    }

    public void notePackageInstalledLocked(String str, long j) {
        addHistoryEventLocked(this.mClocks.elapsedRealtime(), this.mClocks.uptimeMillis(), 11, str, (int) j);
        BatteryStats.PackageChange packageChange = new BatteryStats.PackageChange();
        packageChange.mPackageName = str;
        packageChange.mUpdate = true;
        packageChange.mVersionCode = j;
        addPackageChange(packageChange);
    }

    public void notePackageUninstalledLocked(String str) {
        addHistoryEventLocked(this.mClocks.elapsedRealtime(), this.mClocks.uptimeMillis(), 12, str, 0);
        BatteryStats.PackageChange packageChange = new BatteryStats.PackageChange();
        packageChange.mPackageName = str;
        packageChange.mUpdate = true;
        addPackageChange(packageChange);
    }

    private void addPackageChange(BatteryStats.PackageChange packageChange) {
        if (this.mDailyPackageChanges == null) {
            this.mDailyPackageChanges = new ArrayList<>();
        }
        this.mDailyPackageChanges.add(packageChange);
    }

    void stopAllGpsSignalQualityTimersLocked(int i) {
        long elapsedRealtime = this.mClocks.elapsedRealtime();
        for (int i2 = 0; i2 < 2; i2++) {
            if (i2 != i) {
                while (this.mGpsSignalQualityTimer[i2].isRunningLocked()) {
                    this.mGpsSignalQualityTimer[i2].stopRunningLocked(elapsedRealtime);
                }
            }
        }
    }

    public void notePhoneOnLocked() {
        if (this.mPhoneOn) {
            return;
        }
        long elapsedRealtime = this.mClocks.elapsedRealtime();
        long uptimeMillis = this.mClocks.uptimeMillis();
        this.mHistoryCur.states2 |= 8388608;
        addHistoryRecordLocked(elapsedRealtime, uptimeMillis);
        this.mPhoneOn = true;
        this.mPhoneOnTimer.startRunningLocked(elapsedRealtime);
    }

    public void notePhoneOffLocked() {
        if (this.mPhoneOn) {
            long elapsedRealtime = this.mClocks.elapsedRealtime();
            long uptimeMillis = this.mClocks.uptimeMillis();
            this.mHistoryCur.states2 &= -8388609;
            addHistoryRecordLocked(elapsedRealtime, uptimeMillis);
            this.mPhoneOn = false;
            this.mPhoneOnTimer.stopRunningLocked(elapsedRealtime);
        }
    }

    private void registerUsbStateReceiver(Context context) {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.hardware.usb.action.USB_STATE");
        context.registerReceiver(new BroadcastReceiver() { // from class: com.android.internal.os.BatteryStatsImpl.1
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                boolean booleanExtra = intent.getBooleanExtra("connected", false);
                synchronized (BatteryStatsImpl.this) {
                    BatteryStatsImpl.this.noteUsbConnectionStateLocked(booleanExtra);
                }
            }
        }, intentFilter);
        synchronized (this) {
            if (this.mUsbDataState == 0) {
                Intent registerReceiver = context.registerReceiver(null, intentFilter);
                boolean z = false;
                if (registerReceiver != null && registerReceiver.getBooleanExtra("connected", false)) {
                    z = true;
                }
                noteUsbConnectionStateLocked(z);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void noteUsbConnectionStateLocked(boolean z) {
        int i = z ? 2 : 1;
        if (this.mUsbDataState != i) {
            this.mUsbDataState = i;
            if (z) {
                this.mHistoryCur.states2 |= 262144;
            } else {
                this.mHistoryCur.states2 &= -262145;
            }
            addHistoryRecordLocked(this.mClocks.elapsedRealtime(), this.mClocks.uptimeMillis());
        }
    }

    void stopAllPhoneSignalStrengthTimersLocked(int i) {
        long elapsedRealtime = this.mClocks.elapsedRealtime();
        for (int i2 = 0; i2 < 5; i2++) {
            if (i2 != i) {
                while (this.mPhoneSignalStrengthsTimer[i2].isRunningLocked()) {
                    this.mPhoneSignalStrengthsTimer[i2].stopRunningLocked(elapsedRealtime);
                }
            }
        }
    }

    private int fixPhoneServiceState(int i, int i2) {
        if (this.mPhoneSimStateRaw == 1 && i == 1 && i2 > 0) {
            return 0;
        }
        return i;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0061  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0075  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00b0  */
    /* JADX WARN: Removed duplicated region for block: B:33:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void updateAllPhoneStateLocked(int i, int i2, int i3) {
        boolean z;
        this.mPhoneServiceStateRaw = i;
        this.mPhoneSimStateRaw = i2;
        this.mPhoneSignalStrengthBinRaw = i3;
        long elapsedRealtime = this.mClocks.elapsedRealtime();
        long uptimeMillis = this.mClocks.uptimeMillis();
        boolean z2 = false;
        if (i2 == 1 && i == 1 && i3 > 0) {
            i = 0;
        }
        if (i == 3) {
            i3 = -1;
        } else if (i != 0 && i == 1) {
            if (!this.mPhoneSignalScanningTimer.isRunningLocked()) {
                this.mHistoryCur.states |= 2097152;
                this.mPhoneSignalScanningTimer.startRunningLocked(elapsedRealtime);
                i3 = 0;
                z2 = true;
            } else {
                i3 = 0;
                z = false;
                z2 = true;
                if (!z2 && this.mPhoneSignalScanningTimer.isRunningLocked()) {
                    this.mHistoryCur.states &= -2097153;
                    this.mPhoneSignalScanningTimer.stopRunningLocked(elapsedRealtime);
                    z = true;
                }
                if (this.mPhoneServiceState != i) {
                    this.mHistoryCur.states = (this.mHistoryCur.states & (-449)) | (i << 6);
                    this.mPhoneServiceState = i;
                    z = true;
                }
                if (this.mPhoneSignalStrengthBin != i3) {
                    if (this.mPhoneSignalStrengthBin >= 0) {
                        this.mPhoneSignalStrengthsTimer[this.mPhoneSignalStrengthBin].stopRunningLocked(elapsedRealtime);
                    }
                    if (i3 >= 0) {
                        if (!this.mPhoneSignalStrengthsTimer[i3].isRunningLocked()) {
                            this.mPhoneSignalStrengthsTimer[i3].startRunningLocked(elapsedRealtime);
                        }
                        this.mHistoryCur.states = (this.mHistoryCur.states & (-57)) | (i3 << 3);
                        StatsLog.write(40, i3);
                        z = true;
                    } else {
                        stopAllPhoneSignalStrengthTimersLocked(-1);
                    }
                    this.mPhoneSignalStrengthBin = i3;
                }
                if (z) {
                    return;
                }
                addHistoryRecordLocked(elapsedRealtime, uptimeMillis);
                return;
            }
        }
        z = z2;
        if (!z2) {
            this.mHistoryCur.states &= -2097153;
            this.mPhoneSignalScanningTimer.stopRunningLocked(elapsedRealtime);
            z = true;
        }
        if (this.mPhoneServiceState != i) {
        }
        if (this.mPhoneSignalStrengthBin != i3) {
        }
        if (z) {
        }
    }

    public void notePhoneStateLocked(int i, int i2) {
        updateAllPhoneStateLocked(i, i2, this.mPhoneSignalStrengthBinRaw);
    }

    public void notePhoneSignalStrengthLocked(SignalStrength signalStrength) {
        updateAllPhoneStateLocked(this.mPhoneServiceStateRaw, this.mPhoneSimStateRaw, signalStrength.getLevel());
    }

    public void notePhoneDataConnectionStateLocked(int i, boolean z) {
        if (!z) {
            i = 0;
        } else if (i <= 0 || i > 19) {
            i = 20;
        }
        if (this.mPhoneDataConnectionType != i) {
            long elapsedRealtime = this.mClocks.elapsedRealtime();
            long uptimeMillis = this.mClocks.uptimeMillis();
            this.mHistoryCur.states = (this.mHistoryCur.states & (-15873)) | (i << 9);
            addHistoryRecordLocked(elapsedRealtime, uptimeMillis);
            if (this.mPhoneDataConnectionType >= 0) {
                this.mPhoneDataConnectionsTimer[this.mPhoneDataConnectionType].stopRunningLocked(elapsedRealtime);
            }
            this.mPhoneDataConnectionType = i;
            this.mPhoneDataConnectionsTimer[i].startRunningLocked(elapsedRealtime);
        }
    }

    public void noteWifiOnLocked() {
        if (this.mWifiOn) {
            return;
        }
        long elapsedRealtime = this.mClocks.elapsedRealtime();
        long uptimeMillis = this.mClocks.uptimeMillis();
        this.mHistoryCur.states2 |= 268435456;
        addHistoryRecordLocked(elapsedRealtime, uptimeMillis);
        this.mWifiOn = true;
        this.mWifiOnTimer.startRunningLocked(elapsedRealtime);
        scheduleSyncExternalStatsLocked("wifi-off", 2);
    }

    public void noteWifiOffLocked() {
        long elapsedRealtime = this.mClocks.elapsedRealtime();
        long uptimeMillis = this.mClocks.uptimeMillis();
        if (this.mWifiOn) {
            this.mHistoryCur.states2 &= -268435457;
            addHistoryRecordLocked(elapsedRealtime, uptimeMillis);
            this.mWifiOn = false;
            this.mWifiOnTimer.stopRunningLocked(elapsedRealtime);
            scheduleSyncExternalStatsLocked("wifi-on", 2);
        }
    }

    public void noteAudioOnLocked(int i) {
        int mapUid = mapUid(i);
        long elapsedRealtime = this.mClocks.elapsedRealtime();
        long uptimeMillis = this.mClocks.uptimeMillis();
        if (this.mAudioOnNesting == 0) {
            this.mHistoryCur.states |= 4194304;
            addHistoryRecordLocked(elapsedRealtime, uptimeMillis);
            this.mAudioOnTimer.startRunningLocked(elapsedRealtime);
        }
        this.mAudioOnNesting++;
        getUidStatsLocked(mapUid).noteAudioTurnedOnLocked(elapsedRealtime);
    }

    public void noteAudioOffLocked(int i) {
        if (this.mAudioOnNesting == 0) {
            return;
        }
        int mapUid = mapUid(i);
        long elapsedRealtime = this.mClocks.elapsedRealtime();
        long uptimeMillis = this.mClocks.uptimeMillis();
        int i2 = this.mAudioOnNesting - 1;
        this.mAudioOnNesting = i2;
        if (i2 == 0) {
            this.mHistoryCur.states &= -4194305;
            addHistoryRecordLocked(elapsedRealtime, uptimeMillis);
            this.mAudioOnTimer.stopRunningLocked(elapsedRealtime);
        }
        getUidStatsLocked(mapUid).noteAudioTurnedOffLocked(elapsedRealtime);
    }

    public void noteVideoOnLocked(int i) {
        int mapUid = mapUid(i);
        long elapsedRealtime = this.mClocks.elapsedRealtime();
        long uptimeMillis = this.mClocks.uptimeMillis();
        if (this.mVideoOnNesting == 0) {
            this.mHistoryCur.states2 |= 1073741824;
            addHistoryRecordLocked(elapsedRealtime, uptimeMillis);
            this.mVideoOnTimer.startRunningLocked(elapsedRealtime);
        }
        this.mVideoOnNesting++;
        getUidStatsLocked(mapUid).noteVideoTurnedOnLocked(elapsedRealtime);
    }

    public void noteVideoOffLocked(int i) {
        if (this.mVideoOnNesting == 0) {
            return;
        }
        int mapUid = mapUid(i);
        long elapsedRealtime = this.mClocks.elapsedRealtime();
        long uptimeMillis = this.mClocks.uptimeMillis();
        int i2 = this.mVideoOnNesting - 1;
        this.mVideoOnNesting = i2;
        if (i2 == 0) {
            this.mHistoryCur.states2 &= -1073741825;
            addHistoryRecordLocked(elapsedRealtime, uptimeMillis);
            this.mVideoOnTimer.stopRunningLocked(elapsedRealtime);
        }
        getUidStatsLocked(mapUid).noteVideoTurnedOffLocked(elapsedRealtime);
    }

    public void noteResetAudioLocked() {
        if (this.mAudioOnNesting > 0) {
            long elapsedRealtime = this.mClocks.elapsedRealtime();
            long uptimeMillis = this.mClocks.uptimeMillis();
            this.mAudioOnNesting = 0;
            this.mHistoryCur.states &= -4194305;
            addHistoryRecordLocked(elapsedRealtime, uptimeMillis);
            this.mAudioOnTimer.stopAllRunningLocked(elapsedRealtime);
            for (int i = 0; i < this.mUidStats.size(); i++) {
                this.mUidStats.valueAt(i).noteResetAudioLocked(elapsedRealtime);
            }
        }
    }

    public void noteResetVideoLocked() {
        if (this.mVideoOnNesting > 0) {
            long elapsedRealtime = this.mClocks.elapsedRealtime();
            long uptimeMillis = this.mClocks.uptimeMillis();
            this.mAudioOnNesting = 0;
            this.mHistoryCur.states2 &= -1073741825;
            addHistoryRecordLocked(elapsedRealtime, uptimeMillis);
            this.mVideoOnTimer.stopAllRunningLocked(elapsedRealtime);
            for (int i = 0; i < this.mUidStats.size(); i++) {
                this.mUidStats.valueAt(i).noteResetVideoLocked(elapsedRealtime);
            }
        }
    }

    public void noteActivityResumedLocked(int i) {
        getUidStatsLocked(mapUid(i)).noteActivityResumedLocked(this.mClocks.elapsedRealtime());
    }

    public void noteActivityPausedLocked(int i) {
        getUidStatsLocked(mapUid(i)).noteActivityPausedLocked(this.mClocks.elapsedRealtime());
    }

    public void noteVibratorOnLocked(int i, long j) {
        getUidStatsLocked(mapUid(i)).noteVibratorOnLocked(j);
    }

    public void noteVibratorOffLocked(int i) {
        getUidStatsLocked(mapUid(i)).noteVibratorOffLocked();
    }

    public void noteFlashlightOnLocked(int i) {
        int mapUid = mapUid(i);
        long elapsedRealtime = this.mClocks.elapsedRealtime();
        long uptimeMillis = this.mClocks.uptimeMillis();
        int i2 = this.mFlashlightOnNesting;
        this.mFlashlightOnNesting = i2 + 1;
        if (i2 == 0) {
            this.mHistoryCur.states2 |= 134217728;
            addHistoryRecordLocked(elapsedRealtime, uptimeMillis);
            this.mFlashlightOnTimer.startRunningLocked(elapsedRealtime);
        }
        getUidStatsLocked(mapUid).noteFlashlightTurnedOnLocked(elapsedRealtime);
    }

    public void noteFlashlightOffLocked(int i) {
        if (this.mFlashlightOnNesting == 0) {
            return;
        }
        int mapUid = mapUid(i);
        long elapsedRealtime = this.mClocks.elapsedRealtime();
        long uptimeMillis = this.mClocks.uptimeMillis();
        int i2 = this.mFlashlightOnNesting - 1;
        this.mFlashlightOnNesting = i2;
        if (i2 == 0) {
            this.mHistoryCur.states2 &= -134217729;
            addHistoryRecordLocked(elapsedRealtime, uptimeMillis);
            this.mFlashlightOnTimer.stopRunningLocked(elapsedRealtime);
        }
        getUidStatsLocked(mapUid).noteFlashlightTurnedOffLocked(elapsedRealtime);
    }

    public void noteCameraOnLocked(int i) {
        int mapUid = mapUid(i);
        long elapsedRealtime = this.mClocks.elapsedRealtime();
        long uptimeMillis = this.mClocks.uptimeMillis();
        int i2 = this.mCameraOnNesting;
        this.mCameraOnNesting = i2 + 1;
        if (i2 == 0) {
            this.mHistoryCur.states2 |= 2097152;
            addHistoryRecordLocked(elapsedRealtime, uptimeMillis);
            this.mCameraOnTimer.startRunningLocked(elapsedRealtime);
        }
        getUidStatsLocked(mapUid).noteCameraTurnedOnLocked(elapsedRealtime);
    }

    public void noteCameraOffLocked(int i) {
        if (this.mCameraOnNesting == 0) {
            return;
        }
        int mapUid = mapUid(i);
        long elapsedRealtime = this.mClocks.elapsedRealtime();
        long uptimeMillis = this.mClocks.uptimeMillis();
        int i2 = this.mCameraOnNesting - 1;
        this.mCameraOnNesting = i2;
        if (i2 == 0) {
            this.mHistoryCur.states2 &= -2097153;
            addHistoryRecordLocked(elapsedRealtime, uptimeMillis);
            this.mCameraOnTimer.stopRunningLocked(elapsedRealtime);
        }
        getUidStatsLocked(mapUid).noteCameraTurnedOffLocked(elapsedRealtime);
    }

    public void noteResetCameraLocked() {
        if (this.mCameraOnNesting > 0) {
            long elapsedRealtime = this.mClocks.elapsedRealtime();
            long uptimeMillis = this.mClocks.uptimeMillis();
            this.mCameraOnNesting = 0;
            this.mHistoryCur.states2 &= -2097153;
            addHistoryRecordLocked(elapsedRealtime, uptimeMillis);
            this.mCameraOnTimer.stopAllRunningLocked(elapsedRealtime);
            for (int i = 0; i < this.mUidStats.size(); i++) {
                this.mUidStats.valueAt(i).noteResetCameraLocked(elapsedRealtime);
            }
        }
    }

    public void noteResetFlashlightLocked() {
        if (this.mFlashlightOnNesting > 0) {
            long elapsedRealtime = this.mClocks.elapsedRealtime();
            long uptimeMillis = this.mClocks.uptimeMillis();
            this.mFlashlightOnNesting = 0;
            this.mHistoryCur.states2 &= -134217729;
            addHistoryRecordLocked(elapsedRealtime, uptimeMillis);
            this.mFlashlightOnTimer.stopAllRunningLocked(elapsedRealtime);
            for (int i = 0; i < this.mUidStats.size(); i++) {
                this.mUidStats.valueAt(i).noteResetFlashlightLocked(elapsedRealtime);
            }
        }
    }

    private void noteBluetoothScanStartedLocked(WorkSource.WorkChain workChain, int i, boolean z) {
        int attributionUid = getAttributionUid(i, workChain);
        long elapsedRealtime = this.mClocks.elapsedRealtime();
        long uptimeMillis = this.mClocks.uptimeMillis();
        if (this.mBluetoothScanNesting == 0) {
            this.mHistoryCur.states2 |= 1048576;
            addHistoryRecordLocked(elapsedRealtime, uptimeMillis);
            this.mBluetoothScanTimer.startRunningLocked(elapsedRealtime);
        }
        this.mBluetoothScanNesting++;
        getUidStatsLocked(attributionUid).noteBluetoothScanStartedLocked(elapsedRealtime, z);
    }

    public void noteBluetoothScanStartedFromSourceLocked(WorkSource workSource, boolean z) {
        int size = workSource.size();
        for (int i = 0; i < size; i++) {
            noteBluetoothScanStartedLocked(null, workSource.get(i), z);
        }
        ArrayList workChains = workSource.getWorkChains();
        if (workChains != null) {
            for (int i2 = 0; i2 < workChains.size(); i2++) {
                noteBluetoothScanStartedLocked((WorkSource.WorkChain) workChains.get(i2), -1, z);
            }
        }
    }

    private void noteBluetoothScanStoppedLocked(WorkSource.WorkChain workChain, int i, boolean z) {
        int attributionUid = getAttributionUid(i, workChain);
        long elapsedRealtime = this.mClocks.elapsedRealtime();
        long uptimeMillis = this.mClocks.uptimeMillis();
        this.mBluetoothScanNesting--;
        if (this.mBluetoothScanNesting == 0) {
            this.mHistoryCur.states2 &= -1048577;
            addHistoryRecordLocked(elapsedRealtime, uptimeMillis);
            this.mBluetoothScanTimer.stopRunningLocked(elapsedRealtime);
        }
        getUidStatsLocked(attributionUid).noteBluetoothScanStoppedLocked(elapsedRealtime, z);
    }

    private int getAttributionUid(int i, WorkSource.WorkChain workChain) {
        if (workChain != null) {
            return mapUid(workChain.getAttributionUid());
        }
        return mapUid(i);
    }

    public void noteBluetoothScanStoppedFromSourceLocked(WorkSource workSource, boolean z) {
        int size = workSource.size();
        for (int i = 0; i < size; i++) {
            noteBluetoothScanStoppedLocked(null, workSource.get(i), z);
        }
        ArrayList workChains = workSource.getWorkChains();
        if (workChains != null) {
            for (int i2 = 0; i2 < workChains.size(); i2++) {
                noteBluetoothScanStoppedLocked((WorkSource.WorkChain) workChains.get(i2), -1, z);
            }
        }
    }

    public void noteResetBluetoothScanLocked() {
        if (this.mBluetoothScanNesting > 0) {
            long elapsedRealtime = this.mClocks.elapsedRealtime();
            long uptimeMillis = this.mClocks.uptimeMillis();
            this.mBluetoothScanNesting = 0;
            this.mHistoryCur.states2 &= -1048577;
            addHistoryRecordLocked(elapsedRealtime, uptimeMillis);
            this.mBluetoothScanTimer.stopAllRunningLocked(elapsedRealtime);
            for (int i = 0; i < this.mUidStats.size(); i++) {
                this.mUidStats.valueAt(i).noteResetBluetoothScanLocked(elapsedRealtime);
            }
        }
    }

    public void noteBluetoothScanResultsFromSourceLocked(WorkSource workSource, int i) {
        int size = workSource.size();
        for (int i2 = 0; i2 < size; i2++) {
            getUidStatsLocked(mapUid(workSource.get(i2))).noteBluetoothScanResultsLocked(i);
            StatsLog.write_non_chained(4, workSource.get(i2), workSource.getName(i2), i);
        }
        ArrayList workChains = workSource.getWorkChains();
        if (workChains != null) {
            for (int i3 = 0; i3 < workChains.size(); i3++) {
                WorkSource.WorkChain workChain = (WorkSource.WorkChain) workChains.get(i3);
                getUidStatsLocked(mapUid(workChain.getAttributionUid())).noteBluetoothScanResultsLocked(i);
                StatsLog.write(4, workChain.getUids(), workChain.getTags(), i);
            }
        }
    }

    private void noteWifiRadioApWakeupLocked(long j, long j2, int i) {
        int mapUid = mapUid(i);
        addHistoryEventLocked(j, j2, 19, "", mapUid);
        getUidStatsLocked(mapUid).noteWifiRadioApWakeupLocked();
    }

    public void noteWifiRadioPowerState(int i, long j, int i2) {
        long elapsedRealtime = this.mClocks.elapsedRealtime();
        long uptimeMillis = this.mClocks.uptimeMillis();
        if (this.mWifiRadioPowerState != i) {
            if (i == 2 || i == 3) {
                if (i2 > 0) {
                    noteWifiRadioApWakeupLocked(elapsedRealtime, uptimeMillis, i2);
                }
                this.mHistoryCur.states |= 67108864;
                this.mWifiActiveTimer.startRunningLocked(elapsedRealtime);
            } else {
                this.mHistoryCur.states &= -67108865;
                this.mWifiActiveTimer.stopRunningLocked(j / 1000000);
            }
            addHistoryRecordLocked(elapsedRealtime, uptimeMillis);
            this.mWifiRadioPowerState = i;
            StatsLog.write_non_chained(13, i2, null, i);
        }
    }

    public void noteWifiRunningLocked(WorkSource workSource) {
        if (!this.mGlobalWifiRunning) {
            long elapsedRealtime = this.mClocks.elapsedRealtime();
            long uptimeMillis = this.mClocks.uptimeMillis();
            this.mHistoryCur.states2 |= 536870912;
            addHistoryRecordLocked(elapsedRealtime, uptimeMillis);
            this.mGlobalWifiRunning = true;
            this.mGlobalWifiRunningTimer.startRunningLocked(elapsedRealtime);
            int size = workSource.size();
            for (int i = 0; i < size; i++) {
                getUidStatsLocked(mapUid(workSource.get(i))).noteWifiRunningLocked(elapsedRealtime);
            }
            ArrayList workChains = workSource.getWorkChains();
            if (workChains != null) {
                for (int i2 = 0; i2 < workChains.size(); i2++) {
                    getUidStatsLocked(mapUid(((WorkSource.WorkChain) workChains.get(i2)).getAttributionUid())).noteWifiRunningLocked(elapsedRealtime);
                }
            }
            scheduleSyncExternalStatsLocked("wifi-running", 2);
            return;
        }
        Log.w(TAG, "noteWifiRunningLocked -- called while WIFI running");
    }

    public void noteWifiRunningChangedLocked(WorkSource workSource, WorkSource workSource2) {
        if (this.mGlobalWifiRunning) {
            long elapsedRealtime = this.mClocks.elapsedRealtime();
            int size = workSource.size();
            for (int i = 0; i < size; i++) {
                getUidStatsLocked(mapUid(workSource.get(i))).noteWifiStoppedLocked(elapsedRealtime);
            }
            ArrayList workChains = workSource.getWorkChains();
            if (workChains != null) {
                for (int i2 = 0; i2 < workChains.size(); i2++) {
                    getUidStatsLocked(mapUid(((WorkSource.WorkChain) workChains.get(i2)).getAttributionUid())).noteWifiStoppedLocked(elapsedRealtime);
                }
            }
            int size2 = workSource2.size();
            for (int i3 = 0; i3 < size2; i3++) {
                getUidStatsLocked(mapUid(workSource2.get(i3))).noteWifiRunningLocked(elapsedRealtime);
            }
            ArrayList workChains2 = workSource2.getWorkChains();
            if (workChains2 != null) {
                for (int i4 = 0; i4 < workChains2.size(); i4++) {
                    getUidStatsLocked(mapUid(((WorkSource.WorkChain) workChains2.get(i4)).getAttributionUid())).noteWifiRunningLocked(elapsedRealtime);
                }
                return;
            }
            return;
        }
        Log.w(TAG, "noteWifiRunningChangedLocked -- called while WIFI not running");
    }

    public void noteWifiStoppedLocked(WorkSource workSource) {
        if (this.mGlobalWifiRunning) {
            long elapsedRealtime = this.mClocks.elapsedRealtime();
            long uptimeMillis = this.mClocks.uptimeMillis();
            this.mHistoryCur.states2 &= -536870913;
            addHistoryRecordLocked(elapsedRealtime, uptimeMillis);
            this.mGlobalWifiRunning = false;
            this.mGlobalWifiRunningTimer.stopRunningLocked(elapsedRealtime);
            int size = workSource.size();
            for (int i = 0; i < size; i++) {
                getUidStatsLocked(mapUid(workSource.get(i))).noteWifiStoppedLocked(elapsedRealtime);
            }
            ArrayList workChains = workSource.getWorkChains();
            if (workChains != null) {
                for (int i2 = 0; i2 < workChains.size(); i2++) {
                    getUidStatsLocked(mapUid(((WorkSource.WorkChain) workChains.get(i2)).getAttributionUid())).noteWifiStoppedLocked(elapsedRealtime);
                }
            }
            scheduleSyncExternalStatsLocked("wifi-stopped", 2);
            return;
        }
        Log.w(TAG, "noteWifiStoppedLocked -- called while WIFI not running");
    }

    public void noteWifiStateLocked(int i, String str) {
        if (this.mWifiState != i) {
            long elapsedRealtime = this.mClocks.elapsedRealtime();
            if (this.mWifiState >= 0) {
                this.mWifiStateTimer[this.mWifiState].stopRunningLocked(elapsedRealtime);
            }
            this.mWifiState = i;
            this.mWifiStateTimer[i].startRunningLocked(elapsedRealtime);
            scheduleSyncExternalStatsLocked("wifi-state", 2);
        }
    }

    public void noteWifiSupplicantStateChangedLocked(int i, boolean z) {
        if (this.mWifiSupplState != i) {
            long elapsedRealtime = this.mClocks.elapsedRealtime();
            long uptimeMillis = this.mClocks.uptimeMillis();
            if (this.mWifiSupplState >= 0) {
                this.mWifiSupplStateTimer[this.mWifiSupplState].stopRunningLocked(elapsedRealtime);
            }
            this.mWifiSupplState = i;
            this.mWifiSupplStateTimer[i].startRunningLocked(elapsedRealtime);
            this.mHistoryCur.states2 = (i << 0) | (this.mHistoryCur.states2 & (-16));
            addHistoryRecordLocked(elapsedRealtime, uptimeMillis);
        }
    }

    void stopAllWifiSignalStrengthTimersLocked(int i) {
        long elapsedRealtime = this.mClocks.elapsedRealtime();
        for (int i2 = 0; i2 < 5; i2++) {
            if (i2 != i) {
                while (this.mWifiSignalStrengthsTimer[i2].isRunningLocked()) {
                    this.mWifiSignalStrengthsTimer[i2].stopRunningLocked(elapsedRealtime);
                }
            }
        }
    }

    public void noteWifiRssiChangedLocked(int i) {
        int calculateSignalLevel = WifiManager.calculateSignalLevel(i, 5);
        if (this.mWifiSignalStrengthBin != calculateSignalLevel) {
            long elapsedRealtime = this.mClocks.elapsedRealtime();
            long uptimeMillis = this.mClocks.uptimeMillis();
            if (this.mWifiSignalStrengthBin >= 0) {
                this.mWifiSignalStrengthsTimer[this.mWifiSignalStrengthBin].stopRunningLocked(elapsedRealtime);
            }
            if (calculateSignalLevel >= 0) {
                if (!this.mWifiSignalStrengthsTimer[calculateSignalLevel].isRunningLocked()) {
                    this.mWifiSignalStrengthsTimer[calculateSignalLevel].startRunningLocked(elapsedRealtime);
                }
                this.mHistoryCur.states2 = (this.mHistoryCur.states2 & (-113)) | (calculateSignalLevel << 4);
                addHistoryRecordLocked(elapsedRealtime, uptimeMillis);
            } else {
                stopAllWifiSignalStrengthTimersLocked(-1);
            }
            StatsLog.write(38, calculateSignalLevel);
            this.mWifiSignalStrengthBin = calculateSignalLevel;
        }
    }

    public void noteFullWifiLockAcquiredLocked(int i) {
        long elapsedRealtime = this.mClocks.elapsedRealtime();
        long uptimeMillis = this.mClocks.uptimeMillis();
        if (this.mWifiFullLockNesting == 0) {
            this.mHistoryCur.states |= 268435456;
            addHistoryRecordLocked(elapsedRealtime, uptimeMillis);
        }
        this.mWifiFullLockNesting++;
        getUidStatsLocked(i).noteFullWifiLockAcquiredLocked(elapsedRealtime);
    }

    public void noteFullWifiLockReleasedLocked(int i) {
        long elapsedRealtime = this.mClocks.elapsedRealtime();
        long uptimeMillis = this.mClocks.uptimeMillis();
        this.mWifiFullLockNesting--;
        if (this.mWifiFullLockNesting == 0) {
            this.mHistoryCur.states &= -268435457;
            addHistoryRecordLocked(elapsedRealtime, uptimeMillis);
        }
        getUidStatsLocked(i).noteFullWifiLockReleasedLocked(elapsedRealtime);
    }

    public void noteWifiScanStartedLocked(int i) {
        long elapsedRealtime = this.mClocks.elapsedRealtime();
        long uptimeMillis = this.mClocks.uptimeMillis();
        if (this.mWifiScanNesting == 0) {
            this.mHistoryCur.states |= 134217728;
            addHistoryRecordLocked(elapsedRealtime, uptimeMillis);
        }
        this.mWifiScanNesting++;
        getUidStatsLocked(i).noteWifiScanStartedLocked(elapsedRealtime);
    }

    public void noteWifiScanStoppedLocked(int i) {
        long elapsedRealtime = this.mClocks.elapsedRealtime();
        long uptimeMillis = this.mClocks.uptimeMillis();
        this.mWifiScanNesting--;
        if (this.mWifiScanNesting == 0) {
            this.mHistoryCur.states &= -134217729;
            addHistoryRecordLocked(elapsedRealtime, uptimeMillis);
        }
        getUidStatsLocked(i).noteWifiScanStoppedLocked(elapsedRealtime);
    }

    public void noteWifiBatchedScanStartedLocked(int i, int i2) {
        int mapUid = mapUid(i);
        getUidStatsLocked(mapUid).noteWifiBatchedScanStartedLocked(i2, this.mClocks.elapsedRealtime());
    }

    public void noteWifiBatchedScanStoppedLocked(int i) {
        int mapUid = mapUid(i);
        getUidStatsLocked(mapUid).noteWifiBatchedScanStoppedLocked(this.mClocks.elapsedRealtime());
    }

    public void noteWifiMulticastEnabledLocked(int i) {
        int mapUid = mapUid(i);
        long elapsedRealtime = this.mClocks.elapsedRealtime();
        long uptimeMillis = this.mClocks.uptimeMillis();
        if (this.mWifiMulticastNesting == 0) {
            this.mHistoryCur.states |= 65536;
            addHistoryRecordLocked(elapsedRealtime, uptimeMillis);
            if (!this.mWifiMulticastWakelockTimer.isRunningLocked()) {
                this.mWifiMulticastWakelockTimer.startRunningLocked(elapsedRealtime);
            }
        }
        this.mWifiMulticastNesting++;
        getUidStatsLocked(mapUid).noteWifiMulticastEnabledLocked(elapsedRealtime);
    }

    public void noteWifiMulticastDisabledLocked(int i) {
        int mapUid = mapUid(i);
        long elapsedRealtime = this.mClocks.elapsedRealtime();
        long uptimeMillis = this.mClocks.uptimeMillis();
        this.mWifiMulticastNesting--;
        if (this.mWifiMulticastNesting == 0) {
            this.mHistoryCur.states &= -65537;
            addHistoryRecordLocked(elapsedRealtime, uptimeMillis);
            if (this.mWifiMulticastWakelockTimer.isRunningLocked()) {
                this.mWifiMulticastWakelockTimer.stopRunningLocked(elapsedRealtime);
            }
        }
        getUidStatsLocked(mapUid).noteWifiMulticastDisabledLocked(elapsedRealtime);
    }

    public void noteFullWifiLockAcquiredFromSourceLocked(WorkSource workSource) {
        int size = workSource.size();
        for (int i = 0; i < size; i++) {
            noteFullWifiLockAcquiredLocked(mapUid(workSource.get(i)));
            StatsLog.write_non_chained(37, workSource.get(i), workSource.getName(i), 1);
        }
        ArrayList workChains = workSource.getWorkChains();
        if (workChains != null) {
            for (int i2 = 0; i2 < workChains.size(); i2++) {
                WorkSource.WorkChain workChain = (WorkSource.WorkChain) workChains.get(i2);
                noteFullWifiLockAcquiredLocked(mapUid(workChain.getAttributionUid()));
                StatsLog.write(37, workChain.getUids(), workChain.getTags(), 1);
            }
        }
    }

    public void noteFullWifiLockReleasedFromSourceLocked(WorkSource workSource) {
        int size = workSource.size();
        for (int i = 0; i < size; i++) {
            noteFullWifiLockReleasedLocked(mapUid(workSource.get(i)));
            StatsLog.write_non_chained(37, workSource.get(i), workSource.getName(i), 0);
        }
        ArrayList workChains = workSource.getWorkChains();
        if (workChains != null) {
            for (int i2 = 0; i2 < workChains.size(); i2++) {
                WorkSource.WorkChain workChain = (WorkSource.WorkChain) workChains.get(i2);
                noteFullWifiLockReleasedLocked(mapUid(workChain.getAttributionUid()));
                StatsLog.write(37, workChain.getUids(), workChain.getTags(), 0);
            }
        }
    }

    public void noteWifiScanStartedFromSourceLocked(WorkSource workSource) {
        int size = workSource.size();
        for (int i = 0; i < size; i++) {
            noteWifiScanStartedLocked(mapUid(workSource.get(i)));
            StatsLog.write_non_chained(39, workSource.get(i), workSource.getName(i), 1);
        }
        ArrayList workChains = workSource.getWorkChains();
        if (workChains != null) {
            for (int i2 = 0; i2 < workChains.size(); i2++) {
                WorkSource.WorkChain workChain = (WorkSource.WorkChain) workChains.get(i2);
                noteWifiScanStartedLocked(mapUid(workChain.getAttributionUid()));
                StatsLog.write(39, workChain.getUids(), workChain.getTags(), 1);
            }
        }
    }

    public void noteWifiScanStoppedFromSourceLocked(WorkSource workSource) {
        int size = workSource.size();
        for (int i = 0; i < size; i++) {
            noteWifiScanStoppedLocked(mapUid(workSource.get(i)));
            StatsLog.write_non_chained(39, workSource.get(i), workSource.getName(i), 0);
        }
        ArrayList workChains = workSource.getWorkChains();
        if (workChains != null) {
            for (int i2 = 0; i2 < workChains.size(); i2++) {
                WorkSource.WorkChain workChain = (WorkSource.WorkChain) workChains.get(i2);
                noteWifiScanStoppedLocked(mapUid(workChain.getAttributionUid()));
                StatsLog.write(39, workChain.getUids(), workChain.getTags(), 0);
            }
        }
    }

    public void noteWifiBatchedScanStartedFromSourceLocked(WorkSource workSource, int i) {
        int size = workSource.size();
        for (int i2 = 0; i2 < size; i2++) {
            noteWifiBatchedScanStartedLocked(workSource.get(i2), i);
        }
        ArrayList workChains = workSource.getWorkChains();
        if (workChains != null) {
            for (int i3 = 0; i3 < workChains.size(); i3++) {
                noteWifiBatchedScanStartedLocked(((WorkSource.WorkChain) workChains.get(i3)).getAttributionUid(), i);
            }
        }
    }

    public void noteWifiBatchedScanStoppedFromSourceLocked(WorkSource workSource) {
        int size = workSource.size();
        for (int i = 0; i < size; i++) {
            noteWifiBatchedScanStoppedLocked(workSource.get(i));
        }
        ArrayList workChains = workSource.getWorkChains();
        if (workChains != null) {
            for (int i2 = 0; i2 < workChains.size(); i2++) {
                noteWifiBatchedScanStoppedLocked(((WorkSource.WorkChain) workChains.get(i2)).getAttributionUid());
            }
        }
    }

    private static String[] includeInStringArray(String[] strArr, String str) {
        if (ArrayUtils.indexOf(strArr, str) >= 0) {
            return strArr;
        }
        String[] strArr2 = new String[strArr.length + 1];
        System.arraycopy(strArr, 0, strArr2, 0, strArr.length);
        strArr2[strArr.length] = str;
        return strArr2;
    }

    private static String[] excludeFromStringArray(String[] strArr, String str) {
        int indexOf = ArrayUtils.indexOf(strArr, str);
        if (indexOf < 0) {
            return strArr;
        }
        String[] strArr2 = new String[strArr.length - 1];
        if (indexOf > 0) {
            System.arraycopy(strArr, 0, strArr2, 0, indexOf);
        }
        if (indexOf < strArr.length - 1) {
            System.arraycopy(strArr, indexOf + 1, strArr2, indexOf, (strArr.length - indexOf) - 1);
        }
        return strArr2;
    }

    public void noteNetworkInterfaceTypeLocked(String str, int i) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        synchronized (this.mModemNetworkLock) {
            if (ConnectivityManager.isNetworkTypeMobile(i)) {
                this.mModemIfaces = includeInStringArray(this.mModemIfaces, str);
            } else {
                this.mModemIfaces = excludeFromStringArray(this.mModemIfaces, str);
            }
        }
        synchronized (this.mWifiNetworkLock) {
            if (ConnectivityManager.isNetworkTypeWifi(i)) {
                this.mWifiIfaces = includeInStringArray(this.mWifiIfaces, str);
            } else {
                this.mWifiIfaces = excludeFromStringArray(this.mWifiIfaces, str);
            }
        }
    }

    public String[] getWifiIfaces() {
        String[] strArr;
        synchronized (this.mWifiNetworkLock) {
            strArr = this.mWifiIfaces;
        }
        return strArr;
    }

    public String[] getMobileIfaces() {
        String[] strArr;
        synchronized (this.mModemNetworkLock) {
            strArr = this.mModemIfaces;
        }
        return strArr;
    }

    public long getScreenOnTime(long j, int i) {
        return this.mScreenOnTimer.getTotalTimeLocked(j, i);
    }

    public int getScreenOnCount(int i) {
        return this.mScreenOnTimer.getCountLocked(i);
    }

    public long getScreenDozeTime(long j, int i) {
        return this.mScreenDozeTimer.getTotalTimeLocked(j, i);
    }

    public int getScreenDozeCount(int i) {
        return this.mScreenDozeTimer.getCountLocked(i);
    }

    public long getScreenBrightnessTime(int i, long j, int i2) {
        return this.mScreenBrightnessTimer[i].getTotalTimeLocked(j, i2);
    }

    public Timer getScreenBrightnessTimer(int i) {
        return this.mScreenBrightnessTimer[i];
    }

    public long getInteractiveTime(long j, int i) {
        return this.mInteractiveTimer.getTotalTimeLocked(j, i);
    }

    public long getPowerSaveModeEnabledTime(long j, int i) {
        return this.mPowerSaveModeEnabledTimer.getTotalTimeLocked(j, i);
    }

    public int getPowerSaveModeEnabledCount(int i) {
        return this.mPowerSaveModeEnabledTimer.getCountLocked(i);
    }

    public long getDeviceIdleModeTime(int i, long j, int i2) {
        switch (i) {
            case 1:
                return this.mDeviceIdleModeLightTimer.getTotalTimeLocked(j, i2);
            case 2:
                return this.mDeviceIdleModeFullTimer.getTotalTimeLocked(j, i2);
            default:
                return 0L;
        }
    }

    public int getDeviceIdleModeCount(int i, int i2) {
        switch (i) {
            case 1:
                return this.mDeviceIdleModeLightTimer.getCountLocked(i2);
            case 2:
                return this.mDeviceIdleModeFullTimer.getCountLocked(i2);
            default:
                return 0;
        }
    }

    public long getLongestDeviceIdleModeTime(int i) {
        switch (i) {
            case 1:
                return this.mLongestLightIdleTime;
            case 2:
                return this.mLongestFullIdleTime;
            default:
                return 0L;
        }
    }

    public long getDeviceIdlingTime(int i, long j, int i2) {
        switch (i) {
            case 1:
                return this.mDeviceLightIdlingTimer.getTotalTimeLocked(j, i2);
            case 2:
                return this.mDeviceIdlingTimer.getTotalTimeLocked(j, i2);
            default:
                return 0L;
        }
    }

    public int getDeviceIdlingCount(int i, int i2) {
        switch (i) {
            case 1:
                return this.mDeviceLightIdlingTimer.getCountLocked(i2);
            case 2:
                return this.mDeviceIdlingTimer.getCountLocked(i2);
            default:
                return 0;
        }
    }

    public int getNumConnectivityChange(int i) {
        int i2 = this.mNumConnectivityChange;
        if (i == 1) {
            return i2 - this.mLoadedNumConnectivityChange;
        }
        return i == 2 ? i2 - this.mUnpluggedNumConnectivityChange : i2;
    }

    public long getGpsSignalQualityTime(int i, long j, int i2) {
        if (i < 0 || i >= 2) {
            return 0L;
        }
        return this.mGpsSignalQualityTimer[i].getTotalTimeLocked(j, i2);
    }

    public long getGpsBatteryDrainMaMs() {
        if (this.mPowerProfile.getAveragePower(PowerProfile.POWER_GPS_OPERATING_VOLTAGE) / 1000.0d == 0.0d) {
            return 0L;
        }
        long elapsedRealtime = SystemClock.elapsedRealtime() * 1000;
        double d = 0.0d;
        for (int i = 0; i < 2; i++) {
            d += this.mPowerProfile.getAveragePower(PowerProfile.POWER_GPS_SIGNAL_QUALITY_BASED, i) * (getGpsSignalQualityTime(i, elapsedRealtime, 0) / 1000);
        }
        return (long) d;
    }

    public long getPhoneOnTime(long j, int i) {
        return this.mPhoneOnTimer.getTotalTimeLocked(j, i);
    }

    public int getPhoneOnCount(int i) {
        return this.mPhoneOnTimer.getCountLocked(i);
    }

    public long getPhoneSignalStrengthTime(int i, long j, int i2) {
        return this.mPhoneSignalStrengthsTimer[i].getTotalTimeLocked(j, i2);
    }

    public long getPhoneSignalScanningTime(long j, int i) {
        return this.mPhoneSignalScanningTimer.getTotalTimeLocked(j, i);
    }

    public Timer getPhoneSignalScanningTimer() {
        return this.mPhoneSignalScanningTimer;
    }

    public int getPhoneSignalStrengthCount(int i, int i2) {
        return this.mPhoneSignalStrengthsTimer[i].getCountLocked(i2);
    }

    public Timer getPhoneSignalStrengthTimer(int i) {
        return this.mPhoneSignalStrengthsTimer[i];
    }

    public long getPhoneDataConnectionTime(int i, long j, int i2) {
        return this.mPhoneDataConnectionsTimer[i].getTotalTimeLocked(j, i2);
    }

    public int getPhoneDataConnectionCount(int i, int i2) {
        return this.mPhoneDataConnectionsTimer[i].getCountLocked(i2);
    }

    public Timer getPhoneDataConnectionTimer(int i) {
        return this.mPhoneDataConnectionsTimer[i];
    }

    public long getMobileRadioActiveTime(long j, int i) {
        return this.mMobileRadioActiveTimer.getTotalTimeLocked(j, i);
    }

    public int getMobileRadioActiveCount(int i) {
        return this.mMobileRadioActiveTimer.getCountLocked(i);
    }

    public long getMobileRadioActiveAdjustedTime(int i) {
        return this.mMobileRadioActiveAdjustedTime.getCountLocked(i);
    }

    public long getMobileRadioActiveUnknownTime(int i) {
        return this.mMobileRadioActiveUnknownTime.getCountLocked(i);
    }

    public int getMobileRadioActiveUnknownCount(int i) {
        return (int) this.mMobileRadioActiveUnknownCount.getCountLocked(i);
    }

    public long getWifiMulticastWakelockTime(long j, int i) {
        return this.mWifiMulticastWakelockTimer.getTotalTimeLocked(j, i);
    }

    public int getWifiMulticastWakelockCount(int i) {
        return this.mWifiMulticastWakelockTimer.getCountLocked(i);
    }

    public long getWifiOnTime(long j, int i) {
        return this.mWifiOnTimer.getTotalTimeLocked(j, i);
    }

    public long getWifiActiveTime(long j, int i) {
        return this.mWifiActiveTimer.getTotalTimeLocked(j, i);
    }

    public long getGlobalWifiRunningTime(long j, int i) {
        return this.mGlobalWifiRunningTimer.getTotalTimeLocked(j, i);
    }

    public long getWifiStateTime(int i, long j, int i2) {
        return this.mWifiStateTimer[i].getTotalTimeLocked(j, i2);
    }

    public int getWifiStateCount(int i, int i2) {
        return this.mWifiStateTimer[i].getCountLocked(i2);
    }

    public Timer getWifiStateTimer(int i) {
        return this.mWifiStateTimer[i];
    }

    public long getWifiSupplStateTime(int i, long j, int i2) {
        return this.mWifiSupplStateTimer[i].getTotalTimeLocked(j, i2);
    }

    public int getWifiSupplStateCount(int i, int i2) {
        return this.mWifiSupplStateTimer[i].getCountLocked(i2);
    }

    public Timer getWifiSupplStateTimer(int i) {
        return this.mWifiSupplStateTimer[i];
    }

    public long getWifiSignalStrengthTime(int i, long j, int i2) {
        return this.mWifiSignalStrengthsTimer[i].getTotalTimeLocked(j, i2);
    }

    public int getWifiSignalStrengthCount(int i, int i2) {
        return this.mWifiSignalStrengthsTimer[i].getCountLocked(i2);
    }

    public Timer getWifiSignalStrengthTimer(int i) {
        return this.mWifiSignalStrengthsTimer[i];
    }

    public BatteryStats.ControllerActivityCounter getBluetoothControllerActivity() {
        return this.mBluetoothActivity;
    }

    public BatteryStats.ControllerActivityCounter getWifiControllerActivity() {
        return this.mWifiActivity;
    }

    public BatteryStats.ControllerActivityCounter getModemControllerActivity() {
        return this.mModemActivity;
    }

    public boolean hasBluetoothActivityReporting() {
        return this.mHasBluetoothReporting;
    }

    public boolean hasWifiActivityReporting() {
        return this.mHasWifiReporting;
    }

    public boolean hasModemActivityReporting() {
        return this.mHasModemReporting;
    }

    public long getFlashlightOnTime(long j, int i) {
        return this.mFlashlightOnTimer.getTotalTimeLocked(j, i);
    }

    public long getFlashlightOnCount(int i) {
        return this.mFlashlightOnTimer.getCountLocked(i);
    }

    public long getCameraOnTime(long j, int i) {
        return this.mCameraOnTimer.getTotalTimeLocked(j, i);
    }

    public long getBluetoothScanTime(long j, int i) {
        return this.mBluetoothScanTimer.getTotalTimeLocked(j, i);
    }

    public long getNetworkActivityBytes(int i, int i2) {
        if (i < 0 || i >= this.mNetworkByteActivityCounters.length) {
            return 0L;
        }
        return this.mNetworkByteActivityCounters[i].getCountLocked(i2);
    }

    public long getNetworkActivityPackets(int i, int i2) {
        if (i < 0 || i >= this.mNetworkPacketActivityCounters.length) {
            return 0L;
        }
        return this.mNetworkPacketActivityCounters[i].getCountLocked(i2);
    }

    public long getStartClockTime() {
        long currentTimeMillis = System.currentTimeMillis();
        if (ensureStartClockTime(currentTimeMillis)) {
            recordCurrentTimeChangeLocked(currentTimeMillis, this.mClocks.elapsedRealtime(), this.mClocks.uptimeMillis());
        }
        return this.mStartClockTime;
    }

    public String getStartPlatformVersion() {
        return this.mStartPlatformVersion;
    }

    public String getEndPlatformVersion() {
        return this.mEndPlatformVersion;
    }

    public boolean getIsOnBattery() {
        return this.mOnBattery;
    }

    public SparseArray<? extends BatteryStats.Uid> getUidStats() {
        return this.mUidStats;
    }

    private static void detachTimerIfNotNull(Timer timer) {
        if (timer != null) {
            timer.detach();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean resetTimerIfNotNull(Timer timer, boolean z) {
        if (timer != null) {
            return timer.reset(z);
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean resetTimerIfNotNull(DualTimer dualTimer, boolean z) {
        if (dualTimer != null) {
            return dualTimer.reset(z);
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void detachLongCounterIfNotNull(LongSamplingCounter longSamplingCounter) {
        if (longSamplingCounter != null) {
            longSamplingCounter.detach();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void resetLongCounterIfNotNull(LongSamplingCounter longSamplingCounter, boolean z) {
        if (longSamplingCounter != null) {
            longSamplingCounter.reset(z);
        }
    }

    /* loaded from: /home/user/work/dex/classes3.dex */
    public static class Uid extends BatteryStats.Uid {
        static final int NO_BATCHED_SCAN_STARTED = -1;
        DualTimer mAggregatedPartialWakelockTimer;
        StopwatchTimer mAudioTurnedOnTimer;
        private ControllerActivityCounterImpl mBluetoothControllerActivity;
        Counter mBluetoothScanResultBgCounter;
        Counter mBluetoothScanResultCounter;
        DualTimer mBluetoothScanTimer;
        DualTimer mBluetoothUnoptimizedScanTimer;
        protected BatteryStatsImpl mBsi;
        StopwatchTimer mCameraTurnedOnTimer;
        IntArray mChildUids;
        LongSamplingCounter mCpuActiveTimeMs;
        LongSamplingCounter[][] mCpuClusterSpeedTimesUs;
        LongSamplingCounterArray mCpuClusterTimesMs;
        LongSamplingCounterArray mCpuFreqTimeMs;
        long mCurStepSystemTime;
        long mCurStepUserTime;
        StopwatchTimer mFlashlightTurnedOnTimer;
        StopwatchTimer mForegroundActivityTimer;
        StopwatchTimer mForegroundServiceTimer;
        boolean mFullWifiLockOut;
        StopwatchTimer mFullWifiLockTimer;
        final OverflowArrayMap<DualTimer> mJobStats;
        Counter mJobsDeferredCount;
        Counter mJobsDeferredEventCount;
        final Counter[] mJobsFreshnessBuckets;
        LongSamplingCounter mJobsFreshnessTimeMs;
        long mLastStepSystemTime;
        long mLastStepUserTime;
        LongSamplingCounter mMobileRadioActiveCount;
        LongSamplingCounter mMobileRadioActiveTime;
        private LongSamplingCounter mMobileRadioApWakeupCount;
        private ControllerActivityCounterImpl mModemControllerActivity;
        LongSamplingCounter[] mNetworkByteActivityCounters;
        LongSamplingCounter[] mNetworkPacketActivityCounters;

        @VisibleForTesting(visibility = VisibleForTesting.Visibility.PACKAGE)
        public final TimeBase mOnBatteryScreenOffBackgroundTimeBase;
        LongSamplingCounterArray[] mProcStateScreenOffTimeMs;
        LongSamplingCounterArray[] mProcStateTimeMs;
        StopwatchTimer[] mProcessStateTimer;
        LongSamplingCounterArray mScreenOffCpuFreqTimeMs;
        final OverflowArrayMap<DualTimer> mSyncStats;
        LongSamplingCounter mSystemCpuTime;
        final int mUid;
        Counter[] mUserActivityCounters;
        LongSamplingCounter mUserCpuTime;
        BatchTimer mVibratorOnTimer;
        StopwatchTimer mVideoTurnedOnTimer;
        final OverflowArrayMap<Wakelock> mWakelockStats;
        StopwatchTimer[] mWifiBatchedScanTimer;
        private ControllerActivityCounterImpl mWifiControllerActivity;
        boolean mWifiMulticastEnabled;
        StopwatchTimer mWifiMulticastTimer;
        private LongSamplingCounter mWifiRadioApWakeupCount;
        boolean mWifiRunning;
        StopwatchTimer mWifiRunningTimer;
        boolean mWifiScanStarted;
        DualTimer mWifiScanTimer;
        int mWifiBatchedScanBinStarted = -1;
        int mProcessState = 19;
        boolean mInForegroundService = false;
        final ArrayMap<String, SparseIntArray> mJobCompletions = new ArrayMap<>();
        final SparseArray<Sensor> mSensorStats = new SparseArray<>();
        final ArrayMap<String, Proc> mProcessStats = new ArrayMap<>();
        final ArrayMap<String, Pkg> mPackageStats = new ArrayMap<>();
        final SparseArray<BatteryStats.Uid.Pid> mPids = new SparseArray<>();

        @VisibleForTesting(visibility = VisibleForTesting.Visibility.PACKAGE)
        public final TimeBase mOnBatteryBackgroundTimeBase = new TimeBase();

        public Uid(BatteryStatsImpl batteryStatsImpl, int i) {
            this.mBsi = batteryStatsImpl;
            this.mUid = i;
            this.mOnBatteryBackgroundTimeBase.init(this.mBsi.mClocks.uptimeMillis() * 1000, this.mBsi.mClocks.elapsedRealtime() * 1000);
            this.mOnBatteryScreenOffBackgroundTimeBase = new TimeBase();
            this.mOnBatteryScreenOffBackgroundTimeBase.init(this.mBsi.mClocks.uptimeMillis() * 1000, this.mBsi.mClocks.elapsedRealtime() * 1000);
            this.mUserCpuTime = new LongSamplingCounter(this.mBsi.mOnBatteryTimeBase);
            this.mSystemCpuTime = new LongSamplingCounter(this.mBsi.mOnBatteryTimeBase);
            this.mCpuActiveTimeMs = new LongSamplingCounter(this.mBsi.mOnBatteryTimeBase);
            this.mCpuClusterTimesMs = new LongSamplingCounterArray(this.mBsi.mOnBatteryTimeBase);
            BatteryStatsImpl batteryStatsImpl2 = this.mBsi;
            Objects.requireNonNull(batteryStatsImpl2);
            this.mWakelockStats = new OverflowArrayMap<Wakelock>(batteryStatsImpl2, i) { // from class: com.android.internal.os.BatteryStatsImpl.Uid.1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(i);
                    Objects.requireNonNull(batteryStatsImpl2);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.android.internal.os.BatteryStatsImpl.OverflowArrayMap
                public Wakelock instantiateObject() {
                    return new Wakelock(Uid.this.mBsi, Uid.this);
                }
            };
            BatteryStatsImpl batteryStatsImpl3 = this.mBsi;
            Objects.requireNonNull(batteryStatsImpl3);
            this.mSyncStats = new OverflowArrayMap<DualTimer>(batteryStatsImpl3, i) { // from class: com.android.internal.os.BatteryStatsImpl.Uid.2
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(i);
                    Objects.requireNonNull(batteryStatsImpl3);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.android.internal.os.BatteryStatsImpl.OverflowArrayMap
                public DualTimer instantiateObject() {
                    return new DualTimer(Uid.this.mBsi.mClocks, Uid.this, 13, null, Uid.this.mBsi.mOnBatteryTimeBase, Uid.this.mOnBatteryBackgroundTimeBase);
                }
            };
            BatteryStatsImpl batteryStatsImpl4 = this.mBsi;
            Objects.requireNonNull(batteryStatsImpl4);
            this.mJobStats = new OverflowArrayMap<DualTimer>(batteryStatsImpl4, i) { // from class: com.android.internal.os.BatteryStatsImpl.Uid.3
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(i);
                    Objects.requireNonNull(batteryStatsImpl4);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.android.internal.os.BatteryStatsImpl.OverflowArrayMap
                public DualTimer instantiateObject() {
                    return new DualTimer(Uid.this.mBsi.mClocks, Uid.this, 14, null, Uid.this.mBsi.mOnBatteryTimeBase, Uid.this.mOnBatteryBackgroundTimeBase);
                }
            };
            this.mWifiRunningTimer = new StopwatchTimer(this.mBsi.mClocks, this, 4, this.mBsi.mWifiRunningTimers, this.mBsi.mOnBatteryTimeBase);
            this.mFullWifiLockTimer = new StopwatchTimer(this.mBsi.mClocks, this, 5, this.mBsi.mFullWifiLockTimers, this.mBsi.mOnBatteryTimeBase);
            this.mWifiScanTimer = new DualTimer(this.mBsi.mClocks, this, 6, this.mBsi.mWifiScanTimers, this.mBsi.mOnBatteryTimeBase, this.mOnBatteryBackgroundTimeBase);
            this.mWifiBatchedScanTimer = new StopwatchTimer[5];
            this.mWifiMulticastTimer = new StopwatchTimer(this.mBsi.mClocks, this, 7, this.mBsi.mWifiMulticastTimers, this.mBsi.mOnBatteryTimeBase);
            this.mProcessStateTimer = new StopwatchTimer[7];
            this.mJobsDeferredEventCount = new Counter(this.mBsi.mOnBatteryTimeBase);
            this.mJobsDeferredCount = new Counter(this.mBsi.mOnBatteryTimeBase);
            this.mJobsFreshnessTimeMs = new LongSamplingCounter(this.mBsi.mOnBatteryTimeBase);
            this.mJobsFreshnessBuckets = new Counter[BatteryStats.JOB_FRESHNESS_BUCKETS.length];
        }

        @VisibleForTesting
        public void setProcessStateForTest(int i) {
            this.mProcessState = i;
        }

        public long[] getCpuFreqTimes(int i) {
            return nullIfAllZeros(this.mCpuFreqTimeMs, i);
        }

        public long[] getScreenOffCpuFreqTimes(int i) {
            return nullIfAllZeros(this.mScreenOffCpuFreqTimeMs, i);
        }

        public long getCpuActiveTime() {
            return this.mCpuActiveTimeMs.getCountLocked(0);
        }

        public long[] getCpuClusterTimes() {
            return nullIfAllZeros(this.mCpuClusterTimesMs, 0);
        }

        public long[] getCpuFreqTimes(int i, int i2) {
            if (i < 0 || i >= 7 || this.mProcStateTimeMs == null) {
                return null;
            }
            if (!this.mBsi.mPerProcStateCpuTimesAvailable) {
                this.mProcStateTimeMs = null;
                return null;
            }
            return nullIfAllZeros(this.mProcStateTimeMs[i2], i);
        }

        public long[] getScreenOffCpuFreqTimes(int i, int i2) {
            if (i < 0 || i >= 7 || this.mProcStateScreenOffTimeMs == null) {
                return null;
            }
            if (!this.mBsi.mPerProcStateCpuTimesAvailable) {
                this.mProcStateScreenOffTimeMs = null;
                return null;
            }
            return nullIfAllZeros(this.mProcStateScreenOffTimeMs[i2], i);
        }

        public void addIsolatedUid(int i) {
            if (this.mChildUids == null) {
                this.mChildUids = new IntArray();
            } else if (this.mChildUids.indexOf(i) >= 0) {
                return;
            }
            this.mChildUids.add(i);
        }

        public void removeIsolatedUid(int i) {
            int indexOf = this.mChildUids == null ? -1 : this.mChildUids.indexOf(i);
            if (indexOf < 0) {
                return;
            }
            this.mChildUids.remove(indexOf);
        }

        private long[] nullIfAllZeros(LongSamplingCounterArray longSamplingCounterArray, int i) {
            long[] countsLocked;
            if (longSamplingCounterArray == null || (countsLocked = longSamplingCounterArray.getCountsLocked(i)) == null) {
                return null;
            }
            for (int length = countsLocked.length - 1; length >= 0; length--) {
                if (countsLocked[length] != 0) {
                    return countsLocked;
                }
            }
            return null;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addProcStateTimesMs(int i, long[] jArr, boolean z) {
            if (this.mProcStateTimeMs == null) {
                this.mProcStateTimeMs = new LongSamplingCounterArray[7];
            }
            if (this.mProcStateTimeMs[i] == null || this.mProcStateTimeMs[i].getSize() != jArr.length) {
                this.mProcStateTimeMs[i] = new LongSamplingCounterArray(this.mBsi.mOnBatteryTimeBase);
            }
            this.mProcStateTimeMs[i].addCountLocked(jArr, z);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addProcStateScreenOffTimesMs(int i, long[] jArr, boolean z) {
            if (this.mProcStateScreenOffTimeMs == null) {
                this.mProcStateScreenOffTimeMs = new LongSamplingCounterArray[7];
            }
            if (this.mProcStateScreenOffTimeMs[i] == null || this.mProcStateScreenOffTimeMs[i].getSize() != jArr.length) {
                this.mProcStateScreenOffTimeMs[i] = new LongSamplingCounterArray(this.mBsi.mOnBatteryScreenOffTimeBase);
            }
            this.mProcStateScreenOffTimeMs[i].addCountLocked(jArr, z);
        }

        public Timer getAggregatedPartialWakelockTimer() {
            return this.mAggregatedPartialWakelockTimer;
        }

        public ArrayMap<String, ? extends BatteryStats.Uid.Wakelock> getWakelockStats() {
            return this.mWakelockStats.getMap();
        }

        public Timer getMulticastWakelockStats() {
            return this.mWifiMulticastTimer;
        }

        public ArrayMap<String, ? extends BatteryStats.Timer> getSyncStats() {
            return this.mSyncStats.getMap();
        }

        public ArrayMap<String, ? extends BatteryStats.Timer> getJobStats() {
            return this.mJobStats.getMap();
        }

        public ArrayMap<String, SparseIntArray> getJobCompletionStats() {
            return this.mJobCompletions;
        }

        public SparseArray<? extends BatteryStats.Uid.Sensor> getSensorStats() {
            return this.mSensorStats;
        }

        public ArrayMap<String, ? extends BatteryStats.Uid.Proc> getProcessStats() {
            return this.mProcessStats;
        }

        public ArrayMap<String, ? extends BatteryStats.Uid.Pkg> getPackageStats() {
            return this.mPackageStats;
        }

        public int getUid() {
            return this.mUid;
        }

        public void noteWifiRunningLocked(long j) {
            if (this.mWifiRunning) {
                return;
            }
            this.mWifiRunning = true;
            if (this.mWifiRunningTimer == null) {
                this.mWifiRunningTimer = new StopwatchTimer(this.mBsi.mClocks, this, 4, this.mBsi.mWifiRunningTimers, this.mBsi.mOnBatteryTimeBase);
            }
            this.mWifiRunningTimer.startRunningLocked(j);
        }

        public void noteWifiStoppedLocked(long j) {
            if (this.mWifiRunning) {
                this.mWifiRunning = false;
                this.mWifiRunningTimer.stopRunningLocked(j);
            }
        }

        public void noteFullWifiLockAcquiredLocked(long j) {
            if (this.mFullWifiLockOut) {
                return;
            }
            this.mFullWifiLockOut = true;
            if (this.mFullWifiLockTimer == null) {
                this.mFullWifiLockTimer = new StopwatchTimer(this.mBsi.mClocks, this, 5, this.mBsi.mFullWifiLockTimers, this.mBsi.mOnBatteryTimeBase);
            }
            this.mFullWifiLockTimer.startRunningLocked(j);
        }

        public void noteFullWifiLockReleasedLocked(long j) {
            if (this.mFullWifiLockOut) {
                this.mFullWifiLockOut = false;
                this.mFullWifiLockTimer.stopRunningLocked(j);
            }
        }

        public void noteWifiScanStartedLocked(long j) {
            if (this.mWifiScanStarted) {
                return;
            }
            this.mWifiScanStarted = true;
            if (this.mWifiScanTimer == null) {
                this.mWifiScanTimer = new DualTimer(this.mBsi.mClocks, this, 6, this.mBsi.mWifiScanTimers, this.mBsi.mOnBatteryTimeBase, this.mOnBatteryBackgroundTimeBase);
            }
            this.mWifiScanTimer.startRunningLocked(j);
        }

        public void noteWifiScanStoppedLocked(long j) {
            if (this.mWifiScanStarted) {
                this.mWifiScanStarted = false;
                this.mWifiScanTimer.stopRunningLocked(j);
            }
        }

        public void noteWifiBatchedScanStartedLocked(int i, long j) {
            int i2 = 0;
            while (i > 8 && i2 < 4) {
                i >>= 3;
                i2++;
            }
            if (this.mWifiBatchedScanBinStarted == i2) {
                return;
            }
            if (this.mWifiBatchedScanBinStarted != -1) {
                this.mWifiBatchedScanTimer[this.mWifiBatchedScanBinStarted].stopRunningLocked(j);
            }
            this.mWifiBatchedScanBinStarted = i2;
            if (this.mWifiBatchedScanTimer[i2] == null) {
                makeWifiBatchedScanBin(i2, null);
            }
            this.mWifiBatchedScanTimer[i2].startRunningLocked(j);
        }

        public void noteWifiBatchedScanStoppedLocked(long j) {
            if (this.mWifiBatchedScanBinStarted != -1) {
                this.mWifiBatchedScanTimer[this.mWifiBatchedScanBinStarted].stopRunningLocked(j);
                this.mWifiBatchedScanBinStarted = -1;
            }
        }

        public void noteWifiMulticastEnabledLocked(long j) {
            if (this.mWifiMulticastEnabled) {
                return;
            }
            this.mWifiMulticastEnabled = true;
            if (this.mWifiMulticastTimer == null) {
                this.mWifiMulticastTimer = new StopwatchTimer(this.mBsi.mClocks, this, 7, this.mBsi.mWifiMulticastTimers, this.mBsi.mOnBatteryTimeBase);
            }
            this.mWifiMulticastTimer.startRunningLocked(j);
            StatsLog.write_non_chained(53, getUid(), null, 1);
        }

        public void noteWifiMulticastDisabledLocked(long j) {
            if (this.mWifiMulticastEnabled) {
                this.mWifiMulticastEnabled = false;
                this.mWifiMulticastTimer.stopRunningLocked(j);
                StatsLog.write_non_chained(53, getUid(), null, 0);
            }
        }

        public BatteryStats.ControllerActivityCounter getWifiControllerActivity() {
            return this.mWifiControllerActivity;
        }

        public BatteryStats.ControllerActivityCounter getBluetoothControllerActivity() {
            return this.mBluetoothControllerActivity;
        }

        public BatteryStats.ControllerActivityCounter getModemControllerActivity() {
            return this.mModemControllerActivity;
        }

        public ControllerActivityCounterImpl getOrCreateWifiControllerActivityLocked() {
            if (this.mWifiControllerActivity == null) {
                this.mWifiControllerActivity = new ControllerActivityCounterImpl(this.mBsi.mOnBatteryTimeBase, 1);
            }
            return this.mWifiControllerActivity;
        }

        public ControllerActivityCounterImpl getOrCreateBluetoothControllerActivityLocked() {
            if (this.mBluetoothControllerActivity == null) {
                this.mBluetoothControllerActivity = new ControllerActivityCounterImpl(this.mBsi.mOnBatteryTimeBase, 1);
            }
            return this.mBluetoothControllerActivity;
        }

        public ControllerActivityCounterImpl getOrCreateModemControllerActivityLocked() {
            if (this.mModemControllerActivity == null) {
                this.mModemControllerActivity = new ControllerActivityCounterImpl(this.mBsi.mOnBatteryTimeBase, 5);
            }
            return this.mModemControllerActivity;
        }

        public StopwatchTimer createAudioTurnedOnTimerLocked() {
            if (this.mAudioTurnedOnTimer == null) {
                this.mAudioTurnedOnTimer = new StopwatchTimer(this.mBsi.mClocks, this, 15, this.mBsi.mAudioTurnedOnTimers, this.mBsi.mOnBatteryTimeBase);
            }
            return this.mAudioTurnedOnTimer;
        }

        public void noteAudioTurnedOnLocked(long j) {
            createAudioTurnedOnTimerLocked().startRunningLocked(j);
        }

        public void noteAudioTurnedOffLocked(long j) {
            if (this.mAudioTurnedOnTimer != null) {
                this.mAudioTurnedOnTimer.stopRunningLocked(j);
            }
        }

        public void noteResetAudioLocked(long j) {
            if (this.mAudioTurnedOnTimer != null) {
                this.mAudioTurnedOnTimer.stopAllRunningLocked(j);
            }
        }

        public StopwatchTimer createVideoTurnedOnTimerLocked() {
            if (this.mVideoTurnedOnTimer == null) {
                this.mVideoTurnedOnTimer = new StopwatchTimer(this.mBsi.mClocks, this, 8, this.mBsi.mVideoTurnedOnTimers, this.mBsi.mOnBatteryTimeBase);
            }
            return this.mVideoTurnedOnTimer;
        }

        public void noteVideoTurnedOnLocked(long j) {
            createVideoTurnedOnTimerLocked().startRunningLocked(j);
        }

        public void noteVideoTurnedOffLocked(long j) {
            if (this.mVideoTurnedOnTimer != null) {
                this.mVideoTurnedOnTimer.stopRunningLocked(j);
            }
        }

        public void noteResetVideoLocked(long j) {
            if (this.mVideoTurnedOnTimer != null) {
                this.mVideoTurnedOnTimer.stopAllRunningLocked(j);
            }
        }

        public StopwatchTimer createFlashlightTurnedOnTimerLocked() {
            if (this.mFlashlightTurnedOnTimer == null) {
                this.mFlashlightTurnedOnTimer = new StopwatchTimer(this.mBsi.mClocks, this, 16, this.mBsi.mFlashlightTurnedOnTimers, this.mBsi.mOnBatteryTimeBase);
            }
            return this.mFlashlightTurnedOnTimer;
        }

        public void noteFlashlightTurnedOnLocked(long j) {
            createFlashlightTurnedOnTimerLocked().startRunningLocked(j);
        }

        public void noteFlashlightTurnedOffLocked(long j) {
            if (this.mFlashlightTurnedOnTimer != null) {
                this.mFlashlightTurnedOnTimer.stopRunningLocked(j);
            }
        }

        public void noteResetFlashlightLocked(long j) {
            if (this.mFlashlightTurnedOnTimer != null) {
                this.mFlashlightTurnedOnTimer.stopAllRunningLocked(j);
            }
        }

        public StopwatchTimer createCameraTurnedOnTimerLocked() {
            if (this.mCameraTurnedOnTimer == null) {
                this.mCameraTurnedOnTimer = new StopwatchTimer(this.mBsi.mClocks, this, 17, this.mBsi.mCameraTurnedOnTimers, this.mBsi.mOnBatteryTimeBase);
            }
            return this.mCameraTurnedOnTimer;
        }

        public void noteCameraTurnedOnLocked(long j) {
            createCameraTurnedOnTimerLocked().startRunningLocked(j);
        }

        public void noteCameraTurnedOffLocked(long j) {
            if (this.mCameraTurnedOnTimer != null) {
                this.mCameraTurnedOnTimer.stopRunningLocked(j);
            }
        }

        public void noteResetCameraLocked(long j) {
            if (this.mCameraTurnedOnTimer != null) {
                this.mCameraTurnedOnTimer.stopAllRunningLocked(j);
            }
        }

        public StopwatchTimer createForegroundActivityTimerLocked() {
            if (this.mForegroundActivityTimer == null) {
                this.mForegroundActivityTimer = new StopwatchTimer(this.mBsi.mClocks, this, 10, null, this.mBsi.mOnBatteryTimeBase);
            }
            return this.mForegroundActivityTimer;
        }

        public StopwatchTimer createForegroundServiceTimerLocked() {
            if (this.mForegroundServiceTimer == null) {
                this.mForegroundServiceTimer = new StopwatchTimer(this.mBsi.mClocks, this, 22, null, this.mBsi.mOnBatteryTimeBase);
            }
            return this.mForegroundServiceTimer;
        }

        public DualTimer createAggregatedPartialWakelockTimerLocked() {
            if (this.mAggregatedPartialWakelockTimer == null) {
                this.mAggregatedPartialWakelockTimer = new DualTimer(this.mBsi.mClocks, this, 20, null, this.mBsi.mOnBatteryScreenOffTimeBase, this.mOnBatteryScreenOffBackgroundTimeBase);
            }
            return this.mAggregatedPartialWakelockTimer;
        }

        public DualTimer createBluetoothScanTimerLocked() {
            if (this.mBluetoothScanTimer == null) {
                this.mBluetoothScanTimer = new DualTimer(this.mBsi.mClocks, this, 19, this.mBsi.mBluetoothScanOnTimers, this.mBsi.mOnBatteryTimeBase, this.mOnBatteryBackgroundTimeBase);
            }
            return this.mBluetoothScanTimer;
        }

        public DualTimer createBluetoothUnoptimizedScanTimerLocked() {
            if (this.mBluetoothUnoptimizedScanTimer == null) {
                this.mBluetoothUnoptimizedScanTimer = new DualTimer(this.mBsi.mClocks, this, 21, null, this.mBsi.mOnBatteryTimeBase, this.mOnBatteryBackgroundTimeBase);
            }
            return this.mBluetoothUnoptimizedScanTimer;
        }

        public void noteBluetoothScanStartedLocked(long j, boolean z) {
            createBluetoothScanTimerLocked().startRunningLocked(j);
            if (z) {
                createBluetoothUnoptimizedScanTimerLocked().startRunningLocked(j);
            }
        }

        public void noteBluetoothScanStoppedLocked(long j, boolean z) {
            if (this.mBluetoothScanTimer != null) {
                this.mBluetoothScanTimer.stopRunningLocked(j);
            }
            if (!z || this.mBluetoothUnoptimizedScanTimer == null) {
                return;
            }
            this.mBluetoothUnoptimizedScanTimer.stopRunningLocked(j);
        }

        public void noteResetBluetoothScanLocked(long j) {
            if (this.mBluetoothScanTimer != null) {
                this.mBluetoothScanTimer.stopAllRunningLocked(j);
            }
            if (this.mBluetoothUnoptimizedScanTimer != null) {
                this.mBluetoothUnoptimizedScanTimer.stopAllRunningLocked(j);
            }
        }

        public Counter createBluetoothScanResultCounterLocked() {
            if (this.mBluetoothScanResultCounter == null) {
                this.mBluetoothScanResultCounter = new Counter(this.mBsi.mOnBatteryTimeBase);
            }
            return this.mBluetoothScanResultCounter;
        }

        public Counter createBluetoothScanResultBgCounterLocked() {
            if (this.mBluetoothScanResultBgCounter == null) {
                this.mBluetoothScanResultBgCounter = new Counter(this.mOnBatteryBackgroundTimeBase);
            }
            return this.mBluetoothScanResultBgCounter;
        }

        public void noteBluetoothScanResultsLocked(int i) {
            createBluetoothScanResultCounterLocked().addAtomic(i);
            createBluetoothScanResultBgCounterLocked().addAtomic(i);
        }

        public void noteActivityResumedLocked(long j) {
            createForegroundActivityTimerLocked().startRunningLocked(j);
        }

        public void noteActivityPausedLocked(long j) {
            if (this.mForegroundActivityTimer != null) {
                this.mForegroundActivityTimer.stopRunningLocked(j);
            }
        }

        public void noteForegroundServiceResumedLocked(long j) {
            createForegroundServiceTimerLocked().startRunningLocked(j);
        }

        public void noteForegroundServicePausedLocked(long j) {
            if (this.mForegroundServiceTimer != null) {
                this.mForegroundServiceTimer.stopRunningLocked(j);
            }
        }

        public BatchTimer createVibratorOnTimerLocked() {
            if (this.mVibratorOnTimer == null) {
                this.mVibratorOnTimer = new BatchTimer(this.mBsi.mClocks, this, 9, this.mBsi.mOnBatteryTimeBase);
            }
            return this.mVibratorOnTimer;
        }

        public void noteVibratorOnLocked(long j) {
            createVibratorOnTimerLocked().addDuration(this.mBsi, j);
        }

        public void noteVibratorOffLocked() {
            if (this.mVibratorOnTimer != null) {
                this.mVibratorOnTimer.abortLastDuration(this.mBsi);
            }
        }

        public long getWifiRunningTime(long j, int i) {
            if (this.mWifiRunningTimer == null) {
                return 0L;
            }
            return this.mWifiRunningTimer.getTotalTimeLocked(j, i);
        }

        public long getFullWifiLockTime(long j, int i) {
            if (this.mFullWifiLockTimer == null) {
                return 0L;
            }
            return this.mFullWifiLockTimer.getTotalTimeLocked(j, i);
        }

        public long getWifiScanTime(long j, int i) {
            if (this.mWifiScanTimer == null) {
                return 0L;
            }
            return this.mWifiScanTimer.getTotalTimeLocked(j, i);
        }

        public int getWifiScanCount(int i) {
            if (this.mWifiScanTimer == null) {
                return 0;
            }
            return this.mWifiScanTimer.getCountLocked(i);
        }

        public Timer getWifiScanTimer() {
            return this.mWifiScanTimer;
        }

        public int getWifiScanBackgroundCount(int i) {
            if (this.mWifiScanTimer == null || this.mWifiScanTimer.getSubTimer() == null) {
                return 0;
            }
            return this.mWifiScanTimer.getSubTimer().getCountLocked(i);
        }

        public long getWifiScanActualTime(long j) {
            if (this.mWifiScanTimer == null) {
                return 0L;
            }
            return this.mWifiScanTimer.getTotalDurationMsLocked((j + 500) / 1000) * 1000;
        }

        public long getWifiScanBackgroundTime(long j) {
            if (this.mWifiScanTimer == null || this.mWifiScanTimer.getSubTimer() == null) {
                return 0L;
            }
            return this.mWifiScanTimer.getSubTimer().getTotalDurationMsLocked((j + 500) / 1000) * 1000;
        }

        public Timer getWifiScanBackgroundTimer() {
            if (this.mWifiScanTimer == null) {
                return null;
            }
            return this.mWifiScanTimer.getSubTimer();
        }

        public long getWifiBatchedScanTime(int i, long j, int i2) {
            if (i < 0 || i >= 5 || this.mWifiBatchedScanTimer[i] == null) {
                return 0L;
            }
            return this.mWifiBatchedScanTimer[i].getTotalTimeLocked(j, i2);
        }

        public int getWifiBatchedScanCount(int i, int i2) {
            if (i < 0 || i >= 5 || this.mWifiBatchedScanTimer[i] == null) {
                return 0;
            }
            return this.mWifiBatchedScanTimer[i].getCountLocked(i2);
        }

        public long getWifiMulticastTime(long j, int i) {
            if (this.mWifiMulticastTimer == null) {
                return 0L;
            }
            return this.mWifiMulticastTimer.getTotalTimeLocked(j, i);
        }

        public Timer getAudioTurnedOnTimer() {
            return this.mAudioTurnedOnTimer;
        }

        public Timer getVideoTurnedOnTimer() {
            return this.mVideoTurnedOnTimer;
        }

        public Timer getFlashlightTurnedOnTimer() {
            return this.mFlashlightTurnedOnTimer;
        }

        public Timer getCameraTurnedOnTimer() {
            return this.mCameraTurnedOnTimer;
        }

        public Timer getForegroundActivityTimer() {
            return this.mForegroundActivityTimer;
        }

        public Timer getForegroundServiceTimer() {
            return this.mForegroundServiceTimer;
        }

        public Timer getBluetoothScanTimer() {
            return this.mBluetoothScanTimer;
        }

        public Timer getBluetoothScanBackgroundTimer() {
            if (this.mBluetoothScanTimer == null) {
                return null;
            }
            return this.mBluetoothScanTimer.getSubTimer();
        }

        public Timer getBluetoothUnoptimizedScanTimer() {
            return this.mBluetoothUnoptimizedScanTimer;
        }

        public Timer getBluetoothUnoptimizedScanBackgroundTimer() {
            if (this.mBluetoothUnoptimizedScanTimer == null) {
                return null;
            }
            return this.mBluetoothUnoptimizedScanTimer.getSubTimer();
        }

        public Counter getBluetoothScanResultCounter() {
            return this.mBluetoothScanResultCounter;
        }

        public Counter getBluetoothScanResultBgCounter() {
            return this.mBluetoothScanResultBgCounter;
        }

        void makeProcessState(int i, Parcel parcel) {
            if (i < 0 || i >= 7) {
                return;
            }
            if (parcel == null) {
                this.mProcessStateTimer[i] = new StopwatchTimer(this.mBsi.mClocks, this, 12, null, this.mBsi.mOnBatteryTimeBase);
            } else {
                this.mProcessStateTimer[i] = new StopwatchTimer(this.mBsi.mClocks, this, 12, null, this.mBsi.mOnBatteryTimeBase, parcel);
            }
        }

        public long getProcessStateTime(int i, long j, int i2) {
            if (i < 0 || i >= 7 || this.mProcessStateTimer[i] == null) {
                return 0L;
            }
            return this.mProcessStateTimer[i].getTotalTimeLocked(j, i2);
        }

        public Timer getProcessStateTimer(int i) {
            if (i < 0 || i >= 7) {
                return null;
            }
            return this.mProcessStateTimer[i];
        }

        public Timer getVibratorOnTimer() {
            return this.mVibratorOnTimer;
        }

        public void noteUserActivityLocked(int i) {
            if (this.mUserActivityCounters == null) {
                initUserActivityLocked();
            }
            if (i >= 0 && i < 4) {
                this.mUserActivityCounters[i].stepAtomic();
                return;
            }
            Slog.w(BatteryStatsImpl.TAG, "Unknown user activity type " + i + " was specified.", new Throwable());
        }

        public boolean hasUserActivity() {
            return this.mUserActivityCounters != null;
        }

        public int getUserActivityCount(int i, int i2) {
            if (this.mUserActivityCounters == null) {
                return 0;
            }
            return this.mUserActivityCounters[i].getCountLocked(i2);
        }

        void makeWifiBatchedScanBin(int i, Parcel parcel) {
            if (i < 0 || i >= 5) {
                return;
            }
            ArrayList<StopwatchTimer> arrayList = this.mBsi.mWifiBatchedScanTimers.get(i);
            if (arrayList == null) {
                arrayList = new ArrayList<>();
                this.mBsi.mWifiBatchedScanTimers.put(i, arrayList);
            }
            ArrayList<StopwatchTimer> arrayList2 = arrayList;
            if (parcel == null) {
                this.mWifiBatchedScanTimer[i] = new StopwatchTimer(this.mBsi.mClocks, this, 11, arrayList2, this.mBsi.mOnBatteryTimeBase);
            } else {
                this.mWifiBatchedScanTimer[i] = new StopwatchTimer(this.mBsi.mClocks, this, 11, arrayList2, this.mBsi.mOnBatteryTimeBase, parcel);
            }
        }

        void initUserActivityLocked() {
            this.mUserActivityCounters = new Counter[4];
            for (int i = 0; i < 4; i++) {
                this.mUserActivityCounters[i] = new Counter(this.mBsi.mOnBatteryTimeBase);
            }
        }

        void noteNetworkActivityLocked(int i, long j, long j2) {
            if (this.mNetworkByteActivityCounters == null) {
                initNetworkActivityLocked();
            }
            if (i >= 0 && i < 10) {
                this.mNetworkByteActivityCounters[i].addCountLocked(j);
                this.mNetworkPacketActivityCounters[i].addCountLocked(j2);
                return;
            }
            Slog.w(BatteryStatsImpl.TAG, "Unknown network activity type " + i + " was specified.", new Throwable());
        }

        void noteMobileRadioActiveTimeLocked(long j) {
            if (this.mNetworkByteActivityCounters == null) {
                initNetworkActivityLocked();
            }
            this.mMobileRadioActiveTime.addCountLocked(j);
            this.mMobileRadioActiveCount.addCountLocked(1L);
        }

        public boolean hasNetworkActivity() {
            return this.mNetworkByteActivityCounters != null;
        }

        public long getNetworkActivityBytes(int i, int i2) {
            if (this.mNetworkByteActivityCounters == null || i < 0 || i >= this.mNetworkByteActivityCounters.length) {
                return 0L;
            }
            return this.mNetworkByteActivityCounters[i].getCountLocked(i2);
        }

        public long getNetworkActivityPackets(int i, int i2) {
            if (this.mNetworkPacketActivityCounters == null || i < 0 || i >= this.mNetworkPacketActivityCounters.length) {
                return 0L;
            }
            return this.mNetworkPacketActivityCounters[i].getCountLocked(i2);
        }

        public long getMobileRadioActiveTime(int i) {
            if (this.mMobileRadioActiveTime != null) {
                return this.mMobileRadioActiveTime.getCountLocked(i);
            }
            return 0L;
        }

        public int getMobileRadioActiveCount(int i) {
            if (this.mMobileRadioActiveCount != null) {
                return (int) this.mMobileRadioActiveCount.getCountLocked(i);
            }
            return 0;
        }

        public long getUserCpuTimeUs(int i) {
            return this.mUserCpuTime.getCountLocked(i);
        }

        public long getSystemCpuTimeUs(int i) {
            return this.mSystemCpuTime.getCountLocked(i);
        }

        public long getTimeAtCpuSpeed(int i, int i2, int i3) {
            LongSamplingCounter[] longSamplingCounterArr;
            LongSamplingCounter longSamplingCounter;
            if (this.mCpuClusterSpeedTimesUs == null || i < 0 || i >= this.mCpuClusterSpeedTimesUs.length || (longSamplingCounterArr = this.mCpuClusterSpeedTimesUs[i]) == null || i2 < 0 || i2 >= longSamplingCounterArr.length || (longSamplingCounter = longSamplingCounterArr[i2]) == null) {
                return 0L;
            }
            return longSamplingCounter.getCountLocked(i3);
        }

        public void noteMobileRadioApWakeupLocked() {
            if (this.mMobileRadioApWakeupCount == null) {
                this.mMobileRadioApWakeupCount = new LongSamplingCounter(this.mBsi.mOnBatteryTimeBase);
            }
            this.mMobileRadioApWakeupCount.addCountLocked(1L);
        }

        public long getMobileRadioApWakeupCount(int i) {
            if (this.mMobileRadioApWakeupCount != null) {
                return this.mMobileRadioApWakeupCount.getCountLocked(i);
            }
            return 0L;
        }

        public void noteWifiRadioApWakeupLocked() {
            if (this.mWifiRadioApWakeupCount == null) {
                this.mWifiRadioApWakeupCount = new LongSamplingCounter(this.mBsi.mOnBatteryTimeBase);
            }
            this.mWifiRadioApWakeupCount.addCountLocked(1L);
        }

        public long getWifiRadioApWakeupCount(int i) {
            if (this.mWifiRadioApWakeupCount != null) {
                return this.mWifiRadioApWakeupCount.getCountLocked(i);
            }
            return 0L;
        }

        public void getDeferredJobsCheckinLineLocked(StringBuilder sb, int i) {
            sb.setLength(0);
            int countLocked = this.mJobsDeferredEventCount.getCountLocked(i);
            if (countLocked == 0) {
                return;
            }
            int countLocked2 = this.mJobsDeferredCount.getCountLocked(i);
            long countLocked3 = this.mJobsFreshnessTimeMs.getCountLocked(i);
            sb.append(countLocked);
            sb.append(',');
            sb.append(countLocked2);
            sb.append(',');
            sb.append(countLocked3);
            for (int i2 = 0; i2 < BatteryStats.JOB_FRESHNESS_BUCKETS.length; i2++) {
                if (this.mJobsFreshnessBuckets[i2] == null) {
                    sb.append(",0");
                } else {
                    sb.append(",");
                    sb.append(this.mJobsFreshnessBuckets[i2].getCountLocked(i));
                }
            }
        }

        public void getDeferredJobsLineLocked(StringBuilder sb, int i) {
            sb.setLength(0);
            int countLocked = this.mJobsDeferredEventCount.getCountLocked(i);
            if (countLocked == 0) {
                return;
            }
            int countLocked2 = this.mJobsDeferredCount.getCountLocked(i);
            long countLocked3 = this.mJobsFreshnessTimeMs.getCountLocked(i);
            sb.append("times=");
            sb.append(countLocked);
            sb.append(", ");
            sb.append("count=");
            sb.append(countLocked2);
            sb.append(", ");
            sb.append("totalLatencyMs=");
            sb.append(countLocked3);
            sb.append(", ");
            for (int i2 = 0; i2 < BatteryStats.JOB_FRESHNESS_BUCKETS.length; i2++) {
                sb.append("<");
                sb.append(BatteryStats.JOB_FRESHNESS_BUCKETS[i2]);
                sb.append("ms=");
                if (this.mJobsFreshnessBuckets[i2] == null) {
                    sb.append(AppConstants.VALUE_HIDE);
                } else {
                    sb.append(this.mJobsFreshnessBuckets[i2].getCountLocked(i));
                }
                sb.append(" ");
            }
        }

        void initNetworkActivityLocked() {
            this.mNetworkByteActivityCounters = new LongSamplingCounter[10];
            this.mNetworkPacketActivityCounters = new LongSamplingCounter[10];
            for (int i = 0; i < 10; i++) {
                this.mNetworkByteActivityCounters[i] = new LongSamplingCounter(this.mBsi.mOnBatteryTimeBase);
                this.mNetworkPacketActivityCounters[i] = new LongSamplingCounter(this.mBsi.mOnBatteryTimeBase);
            }
            this.mMobileRadioActiveTime = new LongSamplingCounter(this.mBsi.mOnBatteryTimeBase);
            this.mMobileRadioActiveCount = new LongSamplingCounter(this.mBsi.mOnBatteryTimeBase);
        }

        @VisibleForTesting(visibility = VisibleForTesting.Visibility.PACKAGE)
        public boolean reset(long j, long j2) {
            this.mOnBatteryBackgroundTimeBase.init(j, j2);
            this.mOnBatteryScreenOffBackgroundTimeBase.init(j, j2);
            boolean z = this.mWifiRunningTimer != null ? (!this.mWifiRunningTimer.reset(false)) | false | this.mWifiRunning : false;
            if (this.mFullWifiLockTimer != null) {
                z = z | (!this.mFullWifiLockTimer.reset(false)) | this.mFullWifiLockOut;
            }
            if (this.mWifiScanTimer != null) {
                z = z | (!this.mWifiScanTimer.reset(false)) | this.mWifiScanStarted;
            }
            if (this.mWifiBatchedScanTimer != null) {
                boolean z2 = z;
                for (int i = 0; i < 5; i++) {
                    if (this.mWifiBatchedScanTimer[i] != null) {
                        z2 |= !this.mWifiBatchedScanTimer[i].reset(false);
                    }
                }
                z = (this.mWifiBatchedScanBinStarted != -1) | z2;
            }
            if (this.mWifiMulticastTimer != null) {
                z = z | (!this.mWifiMulticastTimer.reset(false)) | this.mWifiMulticastEnabled;
            }
            boolean z3 = z | (!BatteryStatsImpl.resetTimerIfNotNull((Timer) this.mAudioTurnedOnTimer, false)) | (!BatteryStatsImpl.resetTimerIfNotNull((Timer) this.mVideoTurnedOnTimer, false)) | (!BatteryStatsImpl.resetTimerIfNotNull((Timer) this.mFlashlightTurnedOnTimer, false)) | (!BatteryStatsImpl.resetTimerIfNotNull((Timer) this.mCameraTurnedOnTimer, false)) | (!BatteryStatsImpl.resetTimerIfNotNull((Timer) this.mForegroundActivityTimer, false)) | (!BatteryStatsImpl.resetTimerIfNotNull((Timer) this.mForegroundServiceTimer, false)) | (!BatteryStatsImpl.resetTimerIfNotNull(this.mAggregatedPartialWakelockTimer, false)) | (!BatteryStatsImpl.resetTimerIfNotNull(this.mBluetoothScanTimer, false)) | (!BatteryStatsImpl.resetTimerIfNotNull(this.mBluetoothUnoptimizedScanTimer, false));
            if (this.mBluetoothScanResultCounter != null) {
                this.mBluetoothScanResultCounter.reset(false);
            }
            if (this.mBluetoothScanResultBgCounter != null) {
                this.mBluetoothScanResultBgCounter.reset(false);
            }
            if (this.mProcessStateTimer != null) {
                boolean z4 = z3;
                for (int i2 = 0; i2 < 7; i2++) {
                    if (this.mProcessStateTimer[i2] != null) {
                        z4 |= !this.mProcessStateTimer[i2].reset(false);
                    }
                }
                z3 = (this.mProcessState != 19) | z4;
            }
            if (this.mVibratorOnTimer != null) {
                if (this.mVibratorOnTimer.reset(false)) {
                    this.mVibratorOnTimer.detach();
                    this.mVibratorOnTimer = null;
                } else {
                    z3 = true;
                }
            }
            if (this.mUserActivityCounters != null) {
                for (int i3 = 0; i3 < 4; i3++) {
                    this.mUserActivityCounters[i3].reset(false);
                }
            }
            if (this.mNetworkByteActivityCounters != null) {
                for (int i4 = 0; i4 < 10; i4++) {
                    this.mNetworkByteActivityCounters[i4].reset(false);
                    this.mNetworkPacketActivityCounters[i4].reset(false);
                }
                this.mMobileRadioActiveTime.reset(false);
                this.mMobileRadioActiveCount.reset(false);
            }
            if (this.mWifiControllerActivity != null) {
                this.mWifiControllerActivity.reset(false);
            }
            if (this.mBluetoothControllerActivity != null) {
                this.mBluetoothControllerActivity.reset(false);
            }
            if (this.mModemControllerActivity != null) {
                this.mModemControllerActivity.reset(false);
            }
            this.mUserCpuTime.reset(false);
            this.mSystemCpuTime.reset(false);
            if (this.mCpuClusterSpeedTimesUs != null) {
                for (LongSamplingCounter[] longSamplingCounterArr : this.mCpuClusterSpeedTimesUs) {
                    if (longSamplingCounterArr != null) {
                        for (LongSamplingCounter longSamplingCounter : longSamplingCounterArr) {
                            if (longSamplingCounter != null) {
                                longSamplingCounter.reset(false);
                            }
                        }
                    }
                }
            }
            if (this.mCpuFreqTimeMs != null) {
                this.mCpuFreqTimeMs.reset(false);
            }
            if (this.mScreenOffCpuFreqTimeMs != null) {
                this.mScreenOffCpuFreqTimeMs.reset(false);
            }
            this.mCpuActiveTimeMs.reset(false);
            this.mCpuClusterTimesMs.reset(false);
            if (this.mProcStateTimeMs != null) {
                for (LongSamplingCounterArray longSamplingCounterArray : this.mProcStateTimeMs) {
                    if (longSamplingCounterArray != null) {
                        longSamplingCounterArray.reset(false);
                    }
                }
            }
            if (this.mProcStateScreenOffTimeMs != null) {
                for (LongSamplingCounterArray longSamplingCounterArray2 : this.mProcStateScreenOffTimeMs) {
                    if (longSamplingCounterArray2 != null) {
                        longSamplingCounterArray2.reset(false);
                    }
                }
            }
            BatteryStatsImpl.resetLongCounterIfNotNull(this.mMobileRadioApWakeupCount, false);
            BatteryStatsImpl.resetLongCounterIfNotNull(this.mWifiRadioApWakeupCount, false);
            ArrayMap<String, Wakelock> map = this.mWakelockStats.getMap();
            for (int size = map.size() - 1; size >= 0; size--) {
                if (map.valueAt(size).reset()) {
                    map.removeAt(size);
                } else {
                    z3 = true;
                }
            }
            this.mWakelockStats.cleanup();
            ArrayMap<String, DualTimer> map2 = this.mSyncStats.getMap();
            for (int size2 = map2.size() - 1; size2 >= 0; size2--) {
                DualTimer valueAt = map2.valueAt(size2);
                if (valueAt.reset(false)) {
                    map2.removeAt(size2);
                    valueAt.detach();
                } else {
                    z3 = true;
                }
            }
            this.mSyncStats.cleanup();
            ArrayMap<String, DualTimer> map3 = this.mJobStats.getMap();
            for (int size3 = map3.size() - 1; size3 >= 0; size3--) {
                DualTimer valueAt2 = map3.valueAt(size3);
                if (valueAt2.reset(false)) {
                    map3.removeAt(size3);
                    valueAt2.detach();
                } else {
                    z3 = true;
                }
            }
            this.mJobStats.cleanup();
            this.mJobCompletions.clear();
            this.mJobsDeferredEventCount.reset(false);
            this.mJobsDeferredCount.reset(false);
            this.mJobsFreshnessTimeMs.reset(false);
            for (int i5 = 0; i5 < BatteryStats.JOB_FRESHNESS_BUCKETS.length; i5++) {
                if (this.mJobsFreshnessBuckets[i5] != null) {
                    this.mJobsFreshnessBuckets[i5].reset(false);
                }
            }
            for (int size4 = this.mSensorStats.size() - 1; size4 >= 0; size4--) {
                if (this.mSensorStats.valueAt(size4).reset()) {
                    this.mSensorStats.removeAt(size4);
                } else {
                    z3 = true;
                }
            }
            for (int size5 = this.mProcessStats.size() - 1; size5 >= 0; size5--) {
                this.mProcessStats.valueAt(size5).detach();
            }
            this.mProcessStats.clear();
            if (this.mPids.size() > 0) {
                for (int size6 = this.mPids.size() - 1; size6 >= 0; size6--) {
                    if (this.mPids.valueAt(size6).mWakeNesting > 0) {
                        z3 = true;
                    } else {
                        this.mPids.removeAt(size6);
                    }
                }
            }
            if (this.mPackageStats.size() > 0) {
                Iterator<Map.Entry<String, Pkg>> it = this.mPackageStats.entrySet().iterator();
                while (it.hasNext()) {
                    Pkg value = it.next().getValue();
                    value.detach();
                    if (value.mServiceStats.size() > 0) {
                        Iterator<Map.Entry<String, Pkg.Serv>> it2 = value.mServiceStats.entrySet().iterator();
                        while (it2.hasNext()) {
                            it2.next().getValue().detach();
                        }
                    }
                }
                this.mPackageStats.clear();
            }
            this.mLastStepSystemTime = 0L;
            this.mLastStepUserTime = 0L;
            this.mCurStepSystemTime = 0L;
            this.mCurStepUserTime = 0L;
            if (!z3) {
                if (this.mWifiRunningTimer != null) {
                    this.mWifiRunningTimer.detach();
                }
                if (this.mFullWifiLockTimer != null) {
                    this.mFullWifiLockTimer.detach();
                }
                if (this.mWifiScanTimer != null) {
                    this.mWifiScanTimer.detach();
                }
                for (int i6 = 0; i6 < 5; i6++) {
                    if (this.mWifiBatchedScanTimer[i6] != null) {
                        this.mWifiBatchedScanTimer[i6].detach();
                    }
                }
                if (this.mWifiMulticastTimer != null) {
                    this.mWifiMulticastTimer.detach();
                }
                if (this.mAudioTurnedOnTimer != null) {
                    this.mAudioTurnedOnTimer.detach();
                    this.mAudioTurnedOnTimer = null;
                }
                if (this.mVideoTurnedOnTimer != null) {
                    this.mVideoTurnedOnTimer.detach();
                    this.mVideoTurnedOnTimer = null;
                }
                if (this.mFlashlightTurnedOnTimer != null) {
                    this.mFlashlightTurnedOnTimer.detach();
                    this.mFlashlightTurnedOnTimer = null;
                }
                if (this.mCameraTurnedOnTimer != null) {
                    this.mCameraTurnedOnTimer.detach();
                    this.mCameraTurnedOnTimer = null;
                }
                if (this.mForegroundActivityTimer != null) {
                    this.mForegroundActivityTimer.detach();
                    this.mForegroundActivityTimer = null;
                }
                if (this.mForegroundServiceTimer != null) {
                    this.mForegroundServiceTimer.detach();
                    this.mForegroundServiceTimer = null;
                }
                if (this.mAggregatedPartialWakelockTimer != null) {
                    this.mAggregatedPartialWakelockTimer.detach();
                    this.mAggregatedPartialWakelockTimer = null;
                }
                if (this.mBluetoothScanTimer != null) {
                    this.mBluetoothScanTimer.detach();
                    this.mBluetoothScanTimer = null;
                }
                if (this.mBluetoothUnoptimizedScanTimer != null) {
                    this.mBluetoothUnoptimizedScanTimer.detach();
                    this.mBluetoothUnoptimizedScanTimer = null;
                }
                if (this.mBluetoothScanResultCounter != null) {
                    this.mBluetoothScanResultCounter.detach();
                    this.mBluetoothScanResultCounter = null;
                }
                if (this.mBluetoothScanResultBgCounter != null) {
                    this.mBluetoothScanResultBgCounter.detach();
                    this.mBluetoothScanResultBgCounter = null;
                }
                if (this.mUserActivityCounters != null) {
                    for (int i7 = 0; i7 < 4; i7++) {
                        this.mUserActivityCounters[i7].detach();
                    }
                }
                if (this.mNetworkByteActivityCounters != null) {
                    for (int i8 = 0; i8 < 10; i8++) {
                        this.mNetworkByteActivityCounters[i8].detach();
                        this.mNetworkPacketActivityCounters[i8].detach();
                    }
                }
                if (this.mWifiControllerActivity != null) {
                    this.mWifiControllerActivity.detach();
                }
                if (this.mBluetoothControllerActivity != null) {
                    this.mBluetoothControllerActivity.detach();
                }
                if (this.mModemControllerActivity != null) {
                    this.mModemControllerActivity.detach();
                }
                this.mPids.clear();
                this.mUserCpuTime.detach();
                this.mSystemCpuTime.detach();
                if (this.mCpuClusterSpeedTimesUs != null) {
                    for (LongSamplingCounter[] longSamplingCounterArr2 : this.mCpuClusterSpeedTimesUs) {
                        if (longSamplingCounterArr2 != null) {
                            for (LongSamplingCounter longSamplingCounter2 : longSamplingCounterArr2) {
                                if (longSamplingCounter2 != null) {
                                    longSamplingCounter2.detach();
                                }
                            }
                        }
                    }
                }
                if (this.mCpuFreqTimeMs != null) {
                    this.mCpuFreqTimeMs.detach();
                }
                if (this.mScreenOffCpuFreqTimeMs != null) {
                    this.mScreenOffCpuFreqTimeMs.detach();
                }
                this.mCpuActiveTimeMs.detach();
                this.mCpuClusterTimesMs.detach();
                if (this.mProcStateTimeMs != null) {
                    for (LongSamplingCounterArray longSamplingCounterArray3 : this.mProcStateTimeMs) {
                        if (longSamplingCounterArray3 != null) {
                            longSamplingCounterArray3.detach();
                        }
                    }
                }
                if (this.mProcStateScreenOffTimeMs != null) {
                    for (LongSamplingCounterArray longSamplingCounterArray4 : this.mProcStateScreenOffTimeMs) {
                        if (longSamplingCounterArray4 != null) {
                            longSamplingCounterArray4.detach();
                        }
                    }
                }
                BatteryStatsImpl.detachLongCounterIfNotNull(this.mMobileRadioApWakeupCount);
                BatteryStatsImpl.detachLongCounterIfNotNull(this.mWifiRadioApWakeupCount);
            }
            return !z3;
        }

        void writeJobCompletionsToParcelLocked(Parcel parcel) {
            int size = this.mJobCompletions.size();
            parcel.writeInt(size);
            for (int i = 0; i < size; i++) {
                parcel.writeString(this.mJobCompletions.keyAt(i));
                SparseIntArray valueAt = this.mJobCompletions.valueAt(i);
                int size2 = valueAt.size();
                parcel.writeInt(size2);
                for (int i2 = 0; i2 < size2; i2++) {
                    parcel.writeInt(valueAt.keyAt(i2));
                    parcel.writeInt(valueAt.valueAt(i2));
                }
            }
        }

        void writeToParcelLocked(Parcel parcel, long j, long j2) {
            this.mOnBatteryBackgroundTimeBase.writeToParcel(parcel, j, j2);
            this.mOnBatteryScreenOffBackgroundTimeBase.writeToParcel(parcel, j, j2);
            ArrayMap<String, Wakelock> map = this.mWakelockStats.getMap();
            int size = map.size();
            parcel.writeInt(size);
            for (int i = 0; i < size; i++) {
                parcel.writeString(map.keyAt(i));
                map.valueAt(i).writeToParcelLocked(parcel, j2);
            }
            ArrayMap<String, DualTimer> map2 = this.mSyncStats.getMap();
            int size2 = map2.size();
            parcel.writeInt(size2);
            for (int i2 = 0; i2 < size2; i2++) {
                parcel.writeString(map2.keyAt(i2));
                Timer.writeTimerToParcel(parcel, map2.valueAt(i2), j2);
            }
            ArrayMap<String, DualTimer> map3 = this.mJobStats.getMap();
            int size3 = map3.size();
            parcel.writeInt(size3);
            for (int i3 = 0; i3 < size3; i3++) {
                parcel.writeString(map3.keyAt(i3));
                Timer.writeTimerToParcel(parcel, map3.valueAt(i3), j2);
            }
            writeJobCompletionsToParcelLocked(parcel);
            this.mJobsDeferredEventCount.writeToParcel(parcel);
            this.mJobsDeferredCount.writeToParcel(parcel);
            this.mJobsFreshnessTimeMs.writeToParcel(parcel);
            for (int i4 = 0; i4 < BatteryStats.JOB_FRESHNESS_BUCKETS.length; i4++) {
                Counter.writeCounterToParcel(parcel, this.mJobsFreshnessBuckets[i4]);
            }
            int size4 = this.mSensorStats.size();
            parcel.writeInt(size4);
            for (int i5 = 0; i5 < size4; i5++) {
                parcel.writeInt(this.mSensorStats.keyAt(i5));
                this.mSensorStats.valueAt(i5).writeToParcelLocked(parcel, j2);
            }
            int size5 = this.mProcessStats.size();
            parcel.writeInt(size5);
            for (int i6 = 0; i6 < size5; i6++) {
                parcel.writeString(this.mProcessStats.keyAt(i6));
                this.mProcessStats.valueAt(i6).writeToParcelLocked(parcel);
            }
            parcel.writeInt(this.mPackageStats.size());
            for (Map.Entry<String, Pkg> entry : this.mPackageStats.entrySet()) {
                parcel.writeString(entry.getKey());
                entry.getValue().writeToParcelLocked(parcel);
            }
            if (this.mWifiRunningTimer != null) {
                parcel.writeInt(1);
                this.mWifiRunningTimer.writeToParcel(parcel, j2);
            } else {
                parcel.writeInt(0);
            }
            if (this.mFullWifiLockTimer != null) {
                parcel.writeInt(1);
                this.mFullWifiLockTimer.writeToParcel(parcel, j2);
            } else {
                parcel.writeInt(0);
            }
            if (this.mWifiScanTimer != null) {
                parcel.writeInt(1);
                this.mWifiScanTimer.writeToParcel(parcel, j2);
            } else {
                parcel.writeInt(0);
            }
            for (int i7 = 0; i7 < 5; i7++) {
                if (this.mWifiBatchedScanTimer[i7] != null) {
                    parcel.writeInt(1);
                    this.mWifiBatchedScanTimer[i7].writeToParcel(parcel, j2);
                } else {
                    parcel.writeInt(0);
                }
            }
            if (this.mWifiMulticastTimer != null) {
                parcel.writeInt(1);
                this.mWifiMulticastTimer.writeToParcel(parcel, j2);
            } else {
                parcel.writeInt(0);
            }
            if (this.mAudioTurnedOnTimer != null) {
                parcel.writeInt(1);
                this.mAudioTurnedOnTimer.writeToParcel(parcel, j2);
            } else {
                parcel.writeInt(0);
            }
            if (this.mVideoTurnedOnTimer != null) {
                parcel.writeInt(1);
                this.mVideoTurnedOnTimer.writeToParcel(parcel, j2);
            } else {
                parcel.writeInt(0);
            }
            if (this.mFlashlightTurnedOnTimer != null) {
                parcel.writeInt(1);
                this.mFlashlightTurnedOnTimer.writeToParcel(parcel, j2);
            } else {
                parcel.writeInt(0);
            }
            if (this.mCameraTurnedOnTimer != null) {
                parcel.writeInt(1);
                this.mCameraTurnedOnTimer.writeToParcel(parcel, j2);
            } else {
                parcel.writeInt(0);
            }
            if (this.mForegroundActivityTimer != null) {
                parcel.writeInt(1);
                this.mForegroundActivityTimer.writeToParcel(parcel, j2);
            } else {
                parcel.writeInt(0);
            }
            if (this.mForegroundServiceTimer != null) {
                parcel.writeInt(1);
                this.mForegroundServiceTimer.writeToParcel(parcel, j2);
            } else {
                parcel.writeInt(0);
            }
            if (this.mAggregatedPartialWakelockTimer != null) {
                parcel.writeInt(1);
                this.mAggregatedPartialWakelockTimer.writeToParcel(parcel, j2);
            } else {
                parcel.writeInt(0);
            }
            if (this.mBluetoothScanTimer != null) {
                parcel.writeInt(1);
                this.mBluetoothScanTimer.writeToParcel(parcel, j2);
            } else {
                parcel.writeInt(0);
            }
            if (this.mBluetoothUnoptimizedScanTimer != null) {
                parcel.writeInt(1);
                this.mBluetoothUnoptimizedScanTimer.writeToParcel(parcel, j2);
            } else {
                parcel.writeInt(0);
            }
            if (this.mBluetoothScanResultCounter != null) {
                parcel.writeInt(1);
                this.mBluetoothScanResultCounter.writeToParcel(parcel);
            } else {
                parcel.writeInt(0);
            }
            if (this.mBluetoothScanResultBgCounter != null) {
                parcel.writeInt(1);
                this.mBluetoothScanResultBgCounter.writeToParcel(parcel);
            } else {
                parcel.writeInt(0);
            }
            for (int i8 = 0; i8 < 7; i8++) {
                if (this.mProcessStateTimer[i8] != null) {
                    parcel.writeInt(1);
                    this.mProcessStateTimer[i8].writeToParcel(parcel, j2);
                } else {
                    parcel.writeInt(0);
                }
            }
            if (this.mVibratorOnTimer != null) {
                parcel.writeInt(1);
                this.mVibratorOnTimer.writeToParcel(parcel, j2);
            } else {
                parcel.writeInt(0);
            }
            if (this.mUserActivityCounters != null) {
                parcel.writeInt(1);
                for (int i9 = 0; i9 < 4; i9++) {
                    this.mUserActivityCounters[i9].writeToParcel(parcel);
                }
            } else {
                parcel.writeInt(0);
            }
            if (this.mNetworkByteActivityCounters != null) {
                parcel.writeInt(1);
                for (int i10 = 0; i10 < 10; i10++) {
                    this.mNetworkByteActivityCounters[i10].writeToParcel(parcel);
                    this.mNetworkPacketActivityCounters[i10].writeToParcel(parcel);
                }
                this.mMobileRadioActiveTime.writeToParcel(parcel);
                this.mMobileRadioActiveCount.writeToParcel(parcel);
            } else {
                parcel.writeInt(0);
            }
            if (this.mWifiControllerActivity != null) {
                parcel.writeInt(1);
                this.mWifiControllerActivity.writeToParcel(parcel, 0);
            } else {
                parcel.writeInt(0);
            }
            if (this.mBluetoothControllerActivity != null) {
                parcel.writeInt(1);
                this.mBluetoothControllerActivity.writeToParcel(parcel, 0);
            } else {
                parcel.writeInt(0);
            }
            if (this.mModemControllerActivity != null) {
                parcel.writeInt(1);
                this.mModemControllerActivity.writeToParcel(parcel, 0);
            } else {
                parcel.writeInt(0);
            }
            this.mUserCpuTime.writeToParcel(parcel);
            this.mSystemCpuTime.writeToParcel(parcel);
            if (this.mCpuClusterSpeedTimesUs != null) {
                parcel.writeInt(1);
                parcel.writeInt(this.mCpuClusterSpeedTimesUs.length);
                for (LongSamplingCounter[] longSamplingCounterArr : this.mCpuClusterSpeedTimesUs) {
                    if (longSamplingCounterArr != null) {
                        parcel.writeInt(1);
                        parcel.writeInt(longSamplingCounterArr.length);
                        for (LongSamplingCounter longSamplingCounter : longSamplingCounterArr) {
                            if (longSamplingCounter != null) {
                                parcel.writeInt(1);
                                longSamplingCounter.writeToParcel(parcel);
                            } else {
                                parcel.writeInt(0);
                            }
                        }
                    } else {
                        parcel.writeInt(0);
                    }
                }
            } else {
                parcel.writeInt(0);
            }
            LongSamplingCounterArray.writeToParcel(parcel, this.mCpuFreqTimeMs);
            LongSamplingCounterArray.writeToParcel(parcel, this.mScreenOffCpuFreqTimeMs);
            this.mCpuActiveTimeMs.writeToParcel(parcel);
            this.mCpuClusterTimesMs.writeToParcel(parcel);
            if (this.mProcStateTimeMs != null) {
                parcel.writeInt(this.mProcStateTimeMs.length);
                for (LongSamplingCounterArray longSamplingCounterArray : this.mProcStateTimeMs) {
                    LongSamplingCounterArray.writeToParcel(parcel, longSamplingCounterArray);
                }
            } else {
                parcel.writeInt(0);
            }
            if (this.mProcStateScreenOffTimeMs != null) {
                parcel.writeInt(this.mProcStateScreenOffTimeMs.length);
                for (LongSamplingCounterArray longSamplingCounterArray2 : this.mProcStateScreenOffTimeMs) {
                    LongSamplingCounterArray.writeToParcel(parcel, longSamplingCounterArray2);
                }
            } else {
                parcel.writeInt(0);
            }
            if (this.mMobileRadioApWakeupCount != null) {
                parcel.writeInt(1);
                this.mMobileRadioApWakeupCount.writeToParcel(parcel);
            } else {
                parcel.writeInt(0);
            }
            if (this.mWifiRadioApWakeupCount != null) {
                parcel.writeInt(1);
                this.mWifiRadioApWakeupCount.writeToParcel(parcel);
            } else {
                parcel.writeInt(0);
            }
        }

        void readJobCompletionsFromParcelLocked(Parcel parcel) {
            int readInt = parcel.readInt();
            this.mJobCompletions.clear();
            for (int i = 0; i < readInt; i++) {
                String readString = parcel.readString();
                int readInt2 = parcel.readInt();
                if (readInt2 > 0) {
                    SparseIntArray sparseIntArray = new SparseIntArray();
                    for (int i2 = 0; i2 < readInt2; i2++) {
                        sparseIntArray.put(parcel.readInt(), parcel.readInt());
                    }
                    this.mJobCompletions.put(readString, sparseIntArray);
                }
            }
        }

        void readFromParcelLocked(TimeBase timeBase, TimeBase timeBase2, Parcel parcel) {
            this.mOnBatteryBackgroundTimeBase.readFromParcel(parcel);
            this.mOnBatteryScreenOffBackgroundTimeBase.readFromParcel(parcel);
            int readInt = parcel.readInt();
            this.mWakelockStats.clear();
            for (int i = 0; i < readInt; i++) {
                String readString = parcel.readString();
                Wakelock wakelock = new Wakelock(this.mBsi, this);
                wakelock.readFromParcelLocked(timeBase, timeBase2, this.mOnBatteryScreenOffBackgroundTimeBase, parcel);
                this.mWakelockStats.add(readString, wakelock);
            }
            int readInt2 = parcel.readInt();
            this.mSyncStats.clear();
            for (int i2 = 0; i2 < readInt2; i2++) {
                String readString2 = parcel.readString();
                if (parcel.readInt() != 0) {
                    this.mSyncStats.add(readString2, new DualTimer(this.mBsi.mClocks, this, 13, null, this.mBsi.mOnBatteryTimeBase, this.mOnBatteryBackgroundTimeBase, parcel));
                }
            }
            int readInt3 = parcel.readInt();
            this.mJobStats.clear();
            for (int i3 = 0; i3 < readInt3; i3++) {
                String readString3 = parcel.readString();
                if (parcel.readInt() != 0) {
                    this.mJobStats.add(readString3, new DualTimer(this.mBsi.mClocks, this, 14, null, this.mBsi.mOnBatteryTimeBase, this.mOnBatteryBackgroundTimeBase, parcel));
                }
            }
            readJobCompletionsFromParcelLocked(parcel);
            this.mJobsDeferredEventCount = new Counter(this.mBsi.mOnBatteryTimeBase, parcel);
            this.mJobsDeferredCount = new Counter(this.mBsi.mOnBatteryTimeBase, parcel);
            this.mJobsFreshnessTimeMs = new LongSamplingCounter(this.mBsi.mOnBatteryTimeBase, parcel);
            for (int i4 = 0; i4 < BatteryStats.JOB_FRESHNESS_BUCKETS.length; i4++) {
                this.mJobsFreshnessBuckets[i4] = Counter.readCounterFromParcel(this.mBsi.mOnBatteryTimeBase, parcel);
            }
            int readInt4 = parcel.readInt();
            this.mSensorStats.clear();
            for (int i5 = 0; i5 < readInt4; i5++) {
                int readInt5 = parcel.readInt();
                Sensor sensor = new Sensor(this.mBsi, this, readInt5);
                sensor.readFromParcelLocked(this.mBsi.mOnBatteryTimeBase, this.mOnBatteryBackgroundTimeBase, parcel);
                this.mSensorStats.put(readInt5, sensor);
            }
            int readInt6 = parcel.readInt();
            this.mProcessStats.clear();
            for (int i6 = 0; i6 < readInt6; i6++) {
                String readString4 = parcel.readString();
                Proc proc = new Proc(this.mBsi, readString4);
                proc.readFromParcelLocked(parcel);
                this.mProcessStats.put(readString4, proc);
            }
            int readInt7 = parcel.readInt();
            this.mPackageStats.clear();
            for (int i7 = 0; i7 < readInt7; i7++) {
                String readString5 = parcel.readString();
                Pkg pkg = new Pkg(this.mBsi);
                pkg.readFromParcelLocked(parcel);
                this.mPackageStats.put(readString5, pkg);
            }
            this.mWifiRunning = false;
            if (parcel.readInt() != 0) {
                this.mWifiRunningTimer = new StopwatchTimer(this.mBsi.mClocks, this, 4, this.mBsi.mWifiRunningTimers, this.mBsi.mOnBatteryTimeBase, parcel);
            } else {
                this.mWifiRunningTimer = null;
            }
            this.mFullWifiLockOut = false;
            if (parcel.readInt() != 0) {
                this.mFullWifiLockTimer = new StopwatchTimer(this.mBsi.mClocks, this, 5, this.mBsi.mFullWifiLockTimers, this.mBsi.mOnBatteryTimeBase, parcel);
            } else {
                this.mFullWifiLockTimer = null;
            }
            this.mWifiScanStarted = false;
            if (parcel.readInt() != 0) {
                this.mWifiScanTimer = new DualTimer(this.mBsi.mClocks, this, 6, this.mBsi.mWifiScanTimers, this.mBsi.mOnBatteryTimeBase, this.mOnBatteryBackgroundTimeBase, parcel);
            } else {
                this.mWifiScanTimer = null;
            }
            this.mWifiBatchedScanBinStarted = -1;
            for (int i8 = 0; i8 < 5; i8++) {
                if (parcel.readInt() != 0) {
                    makeWifiBatchedScanBin(i8, parcel);
                } else {
                    this.mWifiBatchedScanTimer[i8] = null;
                }
            }
            this.mWifiMulticastEnabled = false;
            if (parcel.readInt() != 0) {
                this.mWifiMulticastTimer = new StopwatchTimer(this.mBsi.mClocks, this, 7, this.mBsi.mWifiMulticastTimers, this.mBsi.mOnBatteryTimeBase, parcel);
            } else {
                this.mWifiMulticastTimer = null;
            }
            if (parcel.readInt() != 0) {
                this.mAudioTurnedOnTimer = new StopwatchTimer(this.mBsi.mClocks, this, 15, this.mBsi.mAudioTurnedOnTimers, this.mBsi.mOnBatteryTimeBase, parcel);
            } else {
                this.mAudioTurnedOnTimer = null;
            }
            if (parcel.readInt() != 0) {
                this.mVideoTurnedOnTimer = new StopwatchTimer(this.mBsi.mClocks, this, 8, this.mBsi.mVideoTurnedOnTimers, this.mBsi.mOnBatteryTimeBase, parcel);
            } else {
                this.mVideoTurnedOnTimer = null;
            }
            if (parcel.readInt() != 0) {
                this.mFlashlightTurnedOnTimer = new StopwatchTimer(this.mBsi.mClocks, this, 16, this.mBsi.mFlashlightTurnedOnTimers, this.mBsi.mOnBatteryTimeBase, parcel);
            } else {
                this.mFlashlightTurnedOnTimer = null;
            }
            if (parcel.readInt() != 0) {
                this.mCameraTurnedOnTimer = new StopwatchTimer(this.mBsi.mClocks, this, 17, this.mBsi.mCameraTurnedOnTimers, this.mBsi.mOnBatteryTimeBase, parcel);
            } else {
                this.mCameraTurnedOnTimer = null;
            }
            if (parcel.readInt() != 0) {
                this.mForegroundActivityTimer = new StopwatchTimer(this.mBsi.mClocks, this, 10, null, this.mBsi.mOnBatteryTimeBase, parcel);
            } else {
                this.mForegroundActivityTimer = null;
            }
            if (parcel.readInt() != 0) {
                this.mForegroundServiceTimer = new StopwatchTimer(this.mBsi.mClocks, this, 22, null, this.mBsi.mOnBatteryTimeBase, parcel);
            } else {
                this.mForegroundServiceTimer = null;
            }
            if (parcel.readInt() != 0) {
                this.mAggregatedPartialWakelockTimer = new DualTimer(this.mBsi.mClocks, this, 20, null, this.mBsi.mOnBatteryScreenOffTimeBase, this.mOnBatteryScreenOffBackgroundTimeBase, parcel);
            } else {
                this.mAggregatedPartialWakelockTimer = null;
            }
            if (parcel.readInt() != 0) {
                this.mBluetoothScanTimer = new DualTimer(this.mBsi.mClocks, this, 19, this.mBsi.mBluetoothScanOnTimers, this.mBsi.mOnBatteryTimeBase, this.mOnBatteryBackgroundTimeBase, parcel);
            } else {
                this.mBluetoothScanTimer = null;
            }
            if (parcel.readInt() != 0) {
                this.mBluetoothUnoptimizedScanTimer = new DualTimer(this.mBsi.mClocks, this, 21, null, this.mBsi.mOnBatteryTimeBase, this.mOnBatteryBackgroundTimeBase, parcel);
            } else {
                this.mBluetoothUnoptimizedScanTimer = null;
            }
            if (parcel.readInt() != 0) {
                this.mBluetoothScanResultCounter = new Counter(this.mBsi.mOnBatteryTimeBase, parcel);
            } else {
                this.mBluetoothScanResultCounter = null;
            }
            if (parcel.readInt() != 0) {
                this.mBluetoothScanResultBgCounter = new Counter(this.mOnBatteryBackgroundTimeBase, parcel);
            } else {
                this.mBluetoothScanResultBgCounter = null;
            }
            this.mProcessState = 19;
            for (int i9 = 0; i9 < 7; i9++) {
                if (parcel.readInt() != 0) {
                    makeProcessState(i9, parcel);
                } else {
                    this.mProcessStateTimer[i9] = null;
                }
            }
            if (parcel.readInt() != 0) {
                this.mVibratorOnTimer = new BatchTimer(this.mBsi.mClocks, this, 9, this.mBsi.mOnBatteryTimeBase, parcel);
            } else {
                this.mVibratorOnTimer = null;
            }
            if (parcel.readInt() != 0) {
                this.mUserActivityCounters = new Counter[4];
                for (int i10 = 0; i10 < 4; i10++) {
                    this.mUserActivityCounters[i10] = new Counter(this.mBsi.mOnBatteryTimeBase, parcel);
                }
            } else {
                this.mUserActivityCounters = null;
            }
            if (parcel.readInt() != 0) {
                this.mNetworkByteActivityCounters = new LongSamplingCounter[10];
                this.mNetworkPacketActivityCounters = new LongSamplingCounter[10];
                for (int i11 = 0; i11 < 10; i11++) {
                    this.mNetworkByteActivityCounters[i11] = new LongSamplingCounter(this.mBsi.mOnBatteryTimeBase, parcel);
                    this.mNetworkPacketActivityCounters[i11] = new LongSamplingCounter(this.mBsi.mOnBatteryTimeBase, parcel);
                }
                this.mMobileRadioActiveTime = new LongSamplingCounter(this.mBsi.mOnBatteryTimeBase, parcel);
                this.mMobileRadioActiveCount = new LongSamplingCounter(this.mBsi.mOnBatteryTimeBase, parcel);
            } else {
                this.mNetworkByteActivityCounters = null;
                this.mNetworkPacketActivityCounters = null;
            }
            if (parcel.readInt() != 0) {
                this.mWifiControllerActivity = new ControllerActivityCounterImpl(this.mBsi.mOnBatteryTimeBase, 1, parcel);
            } else {
                this.mWifiControllerActivity = null;
            }
            if (parcel.readInt() != 0) {
                this.mBluetoothControllerActivity = new ControllerActivityCounterImpl(this.mBsi.mOnBatteryTimeBase, 1, parcel);
            } else {
                this.mBluetoothControllerActivity = null;
            }
            if (parcel.readInt() != 0) {
                this.mModemControllerActivity = new ControllerActivityCounterImpl(this.mBsi.mOnBatteryTimeBase, 5, parcel);
            } else {
                this.mModemControllerActivity = null;
            }
            this.mUserCpuTime = new LongSamplingCounter(this.mBsi.mOnBatteryTimeBase, parcel);
            this.mSystemCpuTime = new LongSamplingCounter(this.mBsi.mOnBatteryTimeBase, parcel);
            if (parcel.readInt() != 0) {
                int readInt8 = parcel.readInt();
                if (this.mBsi.mPowerProfile != null && this.mBsi.mPowerProfile.getNumCpuClusters() != readInt8) {
                    throw new ParcelFormatException("Incompatible number of cpu clusters");
                }
                this.mCpuClusterSpeedTimesUs = new LongSamplingCounter[readInt8];
                for (int i12 = 0; i12 < readInt8; i12++) {
                    if (parcel.readInt() != 0) {
                        int readInt9 = parcel.readInt();
                        if (this.mBsi.mPowerProfile != null && this.mBsi.mPowerProfile.getNumSpeedStepsInCpuCluster(i12) != readInt9) {
                            throw new ParcelFormatException("Incompatible number of cpu speeds");
                        }
                        LongSamplingCounter[] longSamplingCounterArr = new LongSamplingCounter[readInt9];
                        this.mCpuClusterSpeedTimesUs[i12] = longSamplingCounterArr;
                        for (int i13 = 0; i13 < readInt9; i13++) {
                            if (parcel.readInt() != 0) {
                                longSamplingCounterArr[i13] = new LongSamplingCounter(this.mBsi.mOnBatteryTimeBase, parcel);
                            }
                        }
                    } else {
                        this.mCpuClusterSpeedTimesUs[i12] = null;
                    }
                }
            } else {
                this.mCpuClusterSpeedTimesUs = null;
            }
            this.mCpuFreqTimeMs = LongSamplingCounterArray.readFromParcel(parcel, this.mBsi.mOnBatteryTimeBase);
            this.mScreenOffCpuFreqTimeMs = LongSamplingCounterArray.readFromParcel(parcel, this.mBsi.mOnBatteryScreenOffTimeBase);
            this.mCpuActiveTimeMs = new LongSamplingCounter(this.mBsi.mOnBatteryTimeBase, parcel);
            this.mCpuClusterTimesMs = new LongSamplingCounterArray(this.mBsi.mOnBatteryTimeBase, parcel);
            int readInt10 = parcel.readInt();
            if (readInt10 == 7) {
                this.mProcStateTimeMs = new LongSamplingCounterArray[readInt10];
                for (int i14 = 0; i14 < readInt10; i14++) {
                    this.mProcStateTimeMs[i14] = LongSamplingCounterArray.readFromParcel(parcel, this.mBsi.mOnBatteryTimeBase);
                }
            } else {
                this.mProcStateTimeMs = null;
            }
            int readInt11 = parcel.readInt();
            if (readInt11 == 7) {
                this.mProcStateScreenOffTimeMs = new LongSamplingCounterArray[readInt11];
                for (int i15 = 0; i15 < readInt11; i15++) {
                    this.mProcStateScreenOffTimeMs[i15] = LongSamplingCounterArray.readFromParcel(parcel, this.mBsi.mOnBatteryScreenOffTimeBase);
                }
            } else {
                this.mProcStateScreenOffTimeMs = null;
            }
            if (parcel.readInt() != 0) {
                this.mMobileRadioApWakeupCount = new LongSamplingCounter(this.mBsi.mOnBatteryTimeBase, parcel);
            } else {
                this.mMobileRadioApWakeupCount = null;
            }
            if (parcel.readInt() != 0) {
                this.mWifiRadioApWakeupCount = new LongSamplingCounter(this.mBsi.mOnBatteryTimeBase, parcel);
            } else {
                this.mWifiRadioApWakeupCount = null;
            }
        }

        public void noteJobsDeferredLocked(int i, long j) {
            this.mJobsDeferredEventCount.addAtomic(1);
            this.mJobsDeferredCount.addAtomic(i);
            if (j != 0) {
                this.mJobsFreshnessTimeMs.addCountLocked(j);
                for (int i2 = 0; i2 < BatteryStats.JOB_FRESHNESS_BUCKETS.length; i2++) {
                    if (j < BatteryStats.JOB_FRESHNESS_BUCKETS[i2]) {
                        if (this.mJobsFreshnessBuckets[i2] == null) {
                            this.mJobsFreshnessBuckets[i2] = new Counter(this.mBsi.mOnBatteryTimeBase);
                        }
                        this.mJobsFreshnessBuckets[i2].addAtomic(1);
                        return;
                    }
                }
            }
        }

        /* loaded from: /home/user/work/dex/classes3.dex */
        public static class Wakelock extends BatteryStats.Uid.Wakelock {
            protected BatteryStatsImpl mBsi;
            StopwatchTimer mTimerDraw;
            StopwatchTimer mTimerFull;
            DualTimer mTimerPartial;
            StopwatchTimer mTimerWindow;
            protected Uid mUid;

            public Wakelock(BatteryStatsImpl batteryStatsImpl, Uid uid) {
                this.mBsi = batteryStatsImpl;
                this.mUid = uid;
            }

            private StopwatchTimer readStopwatchTimerFromParcel(int i, ArrayList<StopwatchTimer> arrayList, TimeBase timeBase, Parcel parcel) {
                if (parcel.readInt() == 0) {
                    return null;
                }
                return new StopwatchTimer(this.mBsi.mClocks, this.mUid, i, arrayList, timeBase, parcel);
            }

            private DualTimer readDualTimerFromParcel(int i, ArrayList<StopwatchTimer> arrayList, TimeBase timeBase, TimeBase timeBase2, Parcel parcel) {
                if (parcel.readInt() == 0) {
                    return null;
                }
                return new DualTimer(this.mBsi.mClocks, this.mUid, i, arrayList, timeBase, timeBase2, parcel);
            }

            boolean reset() {
                boolean z = this.mTimerFull != null ? (!this.mTimerFull.reset(false)) | false : false;
                if (this.mTimerPartial != null) {
                    z |= !this.mTimerPartial.reset(false);
                }
                if (this.mTimerWindow != null) {
                    z |= !this.mTimerWindow.reset(false);
                }
                if (this.mTimerDraw != null) {
                    z |= !this.mTimerDraw.reset(false);
                }
                if (!z) {
                    if (this.mTimerFull != null) {
                        this.mTimerFull.detach();
                        this.mTimerFull = null;
                    }
                    if (this.mTimerPartial != null) {
                        this.mTimerPartial.detach();
                        this.mTimerPartial = null;
                    }
                    if (this.mTimerWindow != null) {
                        this.mTimerWindow.detach();
                        this.mTimerWindow = null;
                    }
                    if (this.mTimerDraw != null) {
                        this.mTimerDraw.detach();
                        this.mTimerDraw = null;
                    }
                }
                return !z;
            }

            void readFromParcelLocked(TimeBase timeBase, TimeBase timeBase2, TimeBase timeBase3, Parcel parcel) {
                this.mTimerPartial = readDualTimerFromParcel(0, this.mBsi.mPartialTimers, timeBase2, timeBase3, parcel);
                this.mTimerFull = readStopwatchTimerFromParcel(1, this.mBsi.mFullTimers, timeBase, parcel);
                this.mTimerWindow = readStopwatchTimerFromParcel(2, this.mBsi.mWindowTimers, timeBase, parcel);
                this.mTimerDraw = readStopwatchTimerFromParcel(18, this.mBsi.mDrawTimers, timeBase, parcel);
            }

            void writeToParcelLocked(Parcel parcel, long j) {
                Timer.writeTimerToParcel(parcel, this.mTimerPartial, j);
                Timer.writeTimerToParcel(parcel, this.mTimerFull, j);
                Timer.writeTimerToParcel(parcel, this.mTimerWindow, j);
                Timer.writeTimerToParcel(parcel, this.mTimerDraw, j);
            }

            public Timer getWakeTime(int i) {
                if (i != 18) {
                    switch (i) {
                        case 0:
                            return this.mTimerPartial;
                        case 1:
                            return this.mTimerFull;
                        case 2:
                            return this.mTimerWindow;
                        default:
                            throw new IllegalArgumentException("type = " + i);
                    }
                }
                return this.mTimerDraw;
            }
        }

        /* loaded from: /home/user/work/dex/classes3.dex */
        public static class Sensor extends BatteryStats.Uid.Sensor {
            protected BatteryStatsImpl mBsi;
            final int mHandle;
            DualTimer mTimer;
            protected Uid mUid;

            public Sensor(BatteryStatsImpl batteryStatsImpl, Uid uid, int i) {
                this.mBsi = batteryStatsImpl;
                this.mUid = uid;
                this.mHandle = i;
            }

            private DualTimer readTimersFromParcel(TimeBase timeBase, TimeBase timeBase2, Parcel parcel) {
                if (parcel.readInt() == 0) {
                    return null;
                }
                ArrayList<StopwatchTimer> arrayList = this.mBsi.mSensorTimers.get(this.mHandle);
                if (arrayList == null) {
                    arrayList = new ArrayList<>();
                    this.mBsi.mSensorTimers.put(this.mHandle, arrayList);
                }
                return new DualTimer(this.mBsi.mClocks, this.mUid, 0, arrayList, timeBase, timeBase2, parcel);
            }

            boolean reset() {
                if (!this.mTimer.reset(true)) {
                    return false;
                }
                this.mTimer = null;
                return true;
            }

            void readFromParcelLocked(TimeBase timeBase, TimeBase timeBase2, Parcel parcel) {
                this.mTimer = readTimersFromParcel(timeBase, timeBase2, parcel);
            }

            void writeToParcelLocked(Parcel parcel, long j) {
                Timer.writeTimerToParcel(parcel, this.mTimer, j);
            }

            public Timer getSensorTime() {
                return this.mTimer;
            }

            public Timer getSensorBackgroundTime() {
                if (this.mTimer == null) {
                    return null;
                }
                return this.mTimer.getSubTimer();
            }

            public int getHandle() {
                return this.mHandle;
            }
        }

        /* loaded from: /home/user/work/dex/classes3.dex */
        public static class Proc extends BatteryStats.Uid.Proc implements TimeBaseObs {
            boolean mActive = true;
            protected BatteryStatsImpl mBsi;
            ArrayList<BatteryStats.Uid.Proc.ExcessivePower> mExcessivePower;
            long mForegroundTime;
            long mLoadedForegroundTime;
            int mLoadedNumAnrs;
            int mLoadedNumCrashes;
            int mLoadedStarts;
            long mLoadedSystemTime;
            long mLoadedUserTime;
            final String mName;
            int mNumAnrs;
            int mNumCrashes;
            int mStarts;
            long mSystemTime;
            long mUnpluggedForegroundTime;
            int mUnpluggedNumAnrs;
            int mUnpluggedNumCrashes;
            int mUnpluggedStarts;
            long mUnpluggedSystemTime;
            long mUnpluggedUserTime;
            long mUserTime;

            @Override // com.android.internal.os.BatteryStatsImpl.TimeBaseObs
            public void onTimeStopped(long j, long j2, long j3) {
            }

            public Proc(BatteryStatsImpl batteryStatsImpl, String str) {
                this.mBsi = batteryStatsImpl;
                this.mName = str;
                this.mBsi.mOnBatteryTimeBase.add(this);
            }

            @Override // com.android.internal.os.BatteryStatsImpl.TimeBaseObs
            public void onTimeStarted(long j, long j2, long j3) {
                this.mUnpluggedUserTime = this.mUserTime;
                this.mUnpluggedSystemTime = this.mSystemTime;
                this.mUnpluggedForegroundTime = this.mForegroundTime;
                this.mUnpluggedStarts = this.mStarts;
                this.mUnpluggedNumCrashes = this.mNumCrashes;
                this.mUnpluggedNumAnrs = this.mNumAnrs;
            }

            void detach() {
                this.mActive = false;
                this.mBsi.mOnBatteryTimeBase.remove(this);
            }

            public int countExcessivePowers() {
                if (this.mExcessivePower != null) {
                    return this.mExcessivePower.size();
                }
                return 0;
            }

            public BatteryStats.Uid.Proc.ExcessivePower getExcessivePower(int i) {
                if (this.mExcessivePower != null) {
                    return this.mExcessivePower.get(i);
                }
                return null;
            }

            public void addExcessiveCpu(long j, long j2) {
                if (this.mExcessivePower == null) {
                    this.mExcessivePower = new ArrayList<>();
                }
                BatteryStats.Uid.Proc.ExcessivePower excessivePower = new BatteryStats.Uid.Proc.ExcessivePower();
                excessivePower.type = 2;
                excessivePower.overTime = j;
                excessivePower.usedTime = j2;
                this.mExcessivePower.add(excessivePower);
            }

            void writeExcessivePowerToParcelLocked(Parcel parcel) {
                if (this.mExcessivePower == null) {
                    parcel.writeInt(0);
                    return;
                }
                int size = this.mExcessivePower.size();
                parcel.writeInt(size);
                for (int i = 0; i < size; i++) {
                    BatteryStats.Uid.Proc.ExcessivePower excessivePower = this.mExcessivePower.get(i);
                    parcel.writeInt(excessivePower.type);
                    parcel.writeLong(excessivePower.overTime);
                    parcel.writeLong(excessivePower.usedTime);
                }
            }

            void readExcessivePowerFromParcelLocked(Parcel parcel) {
                int readInt = parcel.readInt();
                if (readInt == 0) {
                    this.mExcessivePower = null;
                    return;
                }
                if (readInt > 10000) {
                    throw new ParcelFormatException("File corrupt: too many excessive power entries " + readInt);
                }
                this.mExcessivePower = new ArrayList<>();
                for (int i = 0; i < readInt; i++) {
                    BatteryStats.Uid.Proc.ExcessivePower excessivePower = new BatteryStats.Uid.Proc.ExcessivePower();
                    excessivePower.type = parcel.readInt();
                    excessivePower.overTime = parcel.readLong();
                    excessivePower.usedTime = parcel.readLong();
                    this.mExcessivePower.add(excessivePower);
                }
            }

            void writeToParcelLocked(Parcel parcel) {
                parcel.writeLong(this.mUserTime);
                parcel.writeLong(this.mSystemTime);
                parcel.writeLong(this.mForegroundTime);
                parcel.writeInt(this.mStarts);
                parcel.writeInt(this.mNumCrashes);
                parcel.writeInt(this.mNumAnrs);
                parcel.writeLong(this.mLoadedUserTime);
                parcel.writeLong(this.mLoadedSystemTime);
                parcel.writeLong(this.mLoadedForegroundTime);
                parcel.writeInt(this.mLoadedStarts);
                parcel.writeInt(this.mLoadedNumCrashes);
                parcel.writeInt(this.mLoadedNumAnrs);
                parcel.writeLong(this.mUnpluggedUserTime);
                parcel.writeLong(this.mUnpluggedSystemTime);
                parcel.writeLong(this.mUnpluggedForegroundTime);
                parcel.writeInt(this.mUnpluggedStarts);
                parcel.writeInt(this.mUnpluggedNumCrashes);
                parcel.writeInt(this.mUnpluggedNumAnrs);
                writeExcessivePowerToParcelLocked(parcel);
            }

            void readFromParcelLocked(Parcel parcel) {
                this.mUserTime = parcel.readLong();
                this.mSystemTime = parcel.readLong();
                this.mForegroundTime = parcel.readLong();
                this.mStarts = parcel.readInt();
                this.mNumCrashes = parcel.readInt();
                this.mNumAnrs = parcel.readInt();
                this.mLoadedUserTime = parcel.readLong();
                this.mLoadedSystemTime = parcel.readLong();
                this.mLoadedForegroundTime = parcel.readLong();
                this.mLoadedStarts = parcel.readInt();
                this.mLoadedNumCrashes = parcel.readInt();
                this.mLoadedNumAnrs = parcel.readInt();
                this.mUnpluggedUserTime = parcel.readLong();
                this.mUnpluggedSystemTime = parcel.readLong();
                this.mUnpluggedForegroundTime = parcel.readLong();
                this.mUnpluggedStarts = parcel.readInt();
                this.mUnpluggedNumCrashes = parcel.readInt();
                this.mUnpluggedNumAnrs = parcel.readInt();
                readExcessivePowerFromParcelLocked(parcel);
            }

            public void addCpuTimeLocked(int i, int i2) {
                addCpuTimeLocked(i, i2, this.mBsi.mOnBatteryTimeBase.isRunning());
            }

            public void addCpuTimeLocked(int i, int i2, boolean z) {
                if (z) {
                    this.mUserTime += i;
                    this.mSystemTime += i2;
                }
            }

            public void addForegroundTimeLocked(long j) {
                this.mForegroundTime += j;
            }

            public void incStartsLocked() {
                this.mStarts++;
            }

            public void incNumCrashesLocked() {
                this.mNumCrashes++;
            }

            public void incNumAnrsLocked() {
                this.mNumAnrs++;
            }

            public boolean isActive() {
                return this.mActive;
            }

            public long getUserTime(int i) {
                long j = this.mUserTime;
                if (i == 1) {
                    return j - this.mLoadedUserTime;
                }
                return i == 2 ? j - this.mUnpluggedUserTime : j;
            }

            public long getSystemTime(int i) {
                long j = this.mSystemTime;
                if (i == 1) {
                    return j - this.mLoadedSystemTime;
                }
                return i == 2 ? j - this.mUnpluggedSystemTime : j;
            }

            public long getForegroundTime(int i) {
                long j = this.mForegroundTime;
                if (i == 1) {
                    return j - this.mLoadedForegroundTime;
                }
                return i == 2 ? j - this.mUnpluggedForegroundTime : j;
            }

            public int getStarts(int i) {
                int i2 = this.mStarts;
                if (i == 1) {
                    return i2 - this.mLoadedStarts;
                }
                return i == 2 ? i2 - this.mUnpluggedStarts : i2;
            }

            public int getNumCrashes(int i) {
                int i2 = this.mNumCrashes;
                if (i == 1) {
                    return i2 - this.mLoadedNumCrashes;
                }
                return i == 2 ? i2 - this.mUnpluggedNumCrashes : i2;
            }

            public int getNumAnrs(int i) {
                int i2 = this.mNumAnrs;
                if (i == 1) {
                    return i2 - this.mLoadedNumAnrs;
                }
                return i == 2 ? i2 - this.mUnpluggedNumAnrs : i2;
            }
        }

        /* loaded from: /home/user/work/dex/classes3.dex */
        public static class Pkg extends BatteryStats.Uid.Pkg implements TimeBaseObs {
            protected BatteryStatsImpl mBsi;
            ArrayMap<String, Counter> mWakeupAlarms = new ArrayMap<>();
            final ArrayMap<String, Serv> mServiceStats = new ArrayMap<>();

            @Override // com.android.internal.os.BatteryStatsImpl.TimeBaseObs
            public void onTimeStarted(long j, long j2, long j3) {
            }

            @Override // com.android.internal.os.BatteryStatsImpl.TimeBaseObs
            public void onTimeStopped(long j, long j2, long j3) {
            }

            public Pkg(BatteryStatsImpl batteryStatsImpl) {
                this.mBsi = batteryStatsImpl;
                this.mBsi.mOnBatteryScreenOffTimeBase.add(this);
            }

            void detach() {
                this.mBsi.mOnBatteryScreenOffTimeBase.remove(this);
            }

            void readFromParcelLocked(Parcel parcel) {
                int readInt = parcel.readInt();
                this.mWakeupAlarms.clear();
                for (int i = 0; i < readInt; i++) {
                    this.mWakeupAlarms.put(parcel.readString(), new Counter(this.mBsi.mOnBatteryScreenOffTimeBase, parcel));
                }
                int readInt2 = parcel.readInt();
                this.mServiceStats.clear();
                for (int i2 = 0; i2 < readInt2; i2++) {
                    String readString = parcel.readString();
                    Serv serv = new Serv(this.mBsi);
                    this.mServiceStats.put(readString, serv);
                    serv.readFromParcelLocked(parcel);
                }
            }

            void writeToParcelLocked(Parcel parcel) {
                int size = this.mWakeupAlarms.size();
                parcel.writeInt(size);
                for (int i = 0; i < size; i++) {
                    parcel.writeString(this.mWakeupAlarms.keyAt(i));
                    this.mWakeupAlarms.valueAt(i).writeToParcel(parcel);
                }
                int size2 = this.mServiceStats.size();
                parcel.writeInt(size2);
                for (int i2 = 0; i2 < size2; i2++) {
                    parcel.writeString(this.mServiceStats.keyAt(i2));
                    this.mServiceStats.valueAt(i2).writeToParcelLocked(parcel);
                }
            }

            public ArrayMap<String, ? extends BatteryStats.Counter> getWakeupAlarmStats() {
                return this.mWakeupAlarms;
            }

            public void noteWakeupAlarmLocked(String str) {
                Counter counter = this.mWakeupAlarms.get(str);
                if (counter == null) {
                    counter = new Counter(this.mBsi.mOnBatteryScreenOffTimeBase);
                    this.mWakeupAlarms.put(str, counter);
                }
                counter.stepAtomic();
            }

            public ArrayMap<String, ? extends BatteryStats.Uid.Pkg.Serv> getServiceStats() {
                return this.mServiceStats;
            }

            /* loaded from: /home/user/work/dex/classes3.dex */
            public static class Serv extends BatteryStats.Uid.Pkg.Serv implements TimeBaseObs {
                protected BatteryStatsImpl mBsi;
                protected int mLastLaunches;
                protected long mLastStartTime;
                protected int mLastStarts;
                protected boolean mLaunched;
                protected long mLaunchedSince;
                protected long mLaunchedTime;
                protected int mLaunches;
                protected int mLoadedLaunches;
                protected long mLoadedStartTime;
                protected int mLoadedStarts;
                protected Pkg mPkg;
                protected boolean mRunning;
                protected long mRunningSince;
                protected long mStartTime;
                protected int mStarts;
                protected int mUnpluggedLaunches;
                protected long mUnpluggedStartTime;
                protected int mUnpluggedStarts;

                @Override // com.android.internal.os.BatteryStatsImpl.TimeBaseObs
                public void onTimeStopped(long j, long j2, long j3) {
                }

                public Serv(BatteryStatsImpl batteryStatsImpl) {
                    this.mBsi = batteryStatsImpl;
                    this.mBsi.mOnBatteryTimeBase.add(this);
                }

                @Override // com.android.internal.os.BatteryStatsImpl.TimeBaseObs
                public void onTimeStarted(long j, long j2, long j3) {
                    this.mUnpluggedStartTime = getStartTimeToNowLocked(j2);
                    this.mUnpluggedStarts = this.mStarts;
                    this.mUnpluggedLaunches = this.mLaunches;
                }

                public void detach() {
                    this.mBsi.mOnBatteryTimeBase.remove(this);
                }

                public void readFromParcelLocked(Parcel parcel) {
                    this.mStartTime = parcel.readLong();
                    this.mRunningSince = parcel.readLong();
                    this.mRunning = parcel.readInt() != 0;
                    this.mStarts = parcel.readInt();
                    this.mLaunchedTime = parcel.readLong();
                    this.mLaunchedSince = parcel.readLong();
                    this.mLaunched = parcel.readInt() != 0;
                    this.mLaunches = parcel.readInt();
                    this.mLoadedStartTime = parcel.readLong();
                    this.mLoadedStarts = parcel.readInt();
                    this.mLoadedLaunches = parcel.readInt();
                    this.mLastStartTime = 0L;
                    this.mLastStarts = 0;
                    this.mLastLaunches = 0;
                    this.mUnpluggedStartTime = parcel.readLong();
                    this.mUnpluggedStarts = parcel.readInt();
                    this.mUnpluggedLaunches = parcel.readInt();
                }

                public void writeToParcelLocked(Parcel parcel) {
                    parcel.writeLong(this.mStartTime);
                    parcel.writeLong(this.mRunningSince);
                    parcel.writeInt(this.mRunning ? 1 : 0);
                    parcel.writeInt(this.mStarts);
                    parcel.writeLong(this.mLaunchedTime);
                    parcel.writeLong(this.mLaunchedSince);
                    parcel.writeInt(this.mLaunched ? 1 : 0);
                    parcel.writeInt(this.mLaunches);
                    parcel.writeLong(this.mLoadedStartTime);
                    parcel.writeInt(this.mLoadedStarts);
                    parcel.writeInt(this.mLoadedLaunches);
                    parcel.writeLong(this.mUnpluggedStartTime);
                    parcel.writeInt(this.mUnpluggedStarts);
                    parcel.writeInt(this.mUnpluggedLaunches);
                }

                public long getLaunchTimeToNowLocked(long j) {
                    return !this.mLaunched ? this.mLaunchedTime : (this.mLaunchedTime + j) - this.mLaunchedSince;
                }

                public long getStartTimeToNowLocked(long j) {
                    return !this.mRunning ? this.mStartTime : (this.mStartTime + j) - this.mRunningSince;
                }

                public void startLaunchedLocked() {
                    if (this.mLaunched) {
                        return;
                    }
                    this.mLaunches++;
                    this.mLaunchedSince = this.mBsi.getBatteryUptimeLocked();
                    this.mLaunched = true;
                }

                public void stopLaunchedLocked() {
                    if (this.mLaunched) {
                        long batteryUptimeLocked = this.mBsi.getBatteryUptimeLocked() - this.mLaunchedSince;
                        if (batteryUptimeLocked > 0) {
                            this.mLaunchedTime += batteryUptimeLocked;
                        } else {
                            this.mLaunches--;
                        }
                        this.mLaunched = false;
                    }
                }

                public void startRunningLocked() {
                    if (this.mRunning) {
                        return;
                    }
                    this.mStarts++;
                    this.mRunningSince = this.mBsi.getBatteryUptimeLocked();
                    this.mRunning = true;
                }

                public void stopRunningLocked() {
                    if (this.mRunning) {
                        long batteryUptimeLocked = this.mBsi.getBatteryUptimeLocked() - this.mRunningSince;
                        if (batteryUptimeLocked > 0) {
                            this.mStartTime += batteryUptimeLocked;
                        } else {
                            this.mStarts--;
                        }
                        this.mRunning = false;
                    }
                }

                public BatteryStatsImpl getBatteryStats() {
                    return this.mBsi;
                }

                public int getLaunches(int i) {
                    int i2 = this.mLaunches;
                    if (i == 1) {
                        return i2 - this.mLoadedLaunches;
                    }
                    return i == 2 ? i2 - this.mUnpluggedLaunches : i2;
                }

                public long getStartTime(long j, int i) {
                    long startTimeToNowLocked = getStartTimeToNowLocked(j);
                    if (i == 1) {
                        return startTimeToNowLocked - this.mLoadedStartTime;
                    }
                    return i == 2 ? startTimeToNowLocked - this.mUnpluggedStartTime : startTimeToNowLocked;
                }

                public int getStarts(int i) {
                    int i2 = this.mStarts;
                    if (i == 1) {
                        return i2 - this.mLoadedStarts;
                    }
                    return i == 2 ? i2 - this.mUnpluggedStarts : i2;
                }
            }

            final Serv newServiceStatsLocked() {
                return new Serv(this.mBsi);
            }
        }

        public Proc getProcessStatsLocked(String str) {
            Proc proc = this.mProcessStats.get(str);
            if (proc != null) {
                return proc;
            }
            Proc proc2 = new Proc(this.mBsi, str);
            this.mProcessStats.put(str, proc2);
            return proc2;
        }

        @GuardedBy("mBsi")
        public void updateUidProcessStateLocked(int i) {
            boolean z = i == 3;
            int mapToInternalProcessState = BatteryStats.mapToInternalProcessState(i);
            if (this.mProcessState == mapToInternalProcessState && z == this.mInForegroundService) {
                return;
            }
            long elapsedRealtime = this.mBsi.mClocks.elapsedRealtime();
            if (this.mProcessState != mapToInternalProcessState) {
                long uptimeMillis = this.mBsi.mClocks.uptimeMillis();
                if (this.mProcessState != 19) {
                    this.mProcessStateTimer[this.mProcessState].stopRunningLocked(elapsedRealtime);
                    if (this.mBsi.trackPerProcStateCpuTimes()) {
                        if (this.mBsi.mPendingUids.size() == 0) {
                            this.mBsi.mExternalSync.scheduleReadProcStateCpuTimes(this.mBsi.mOnBatteryTimeBase.isRunning(), this.mBsi.mOnBatteryScreenOffTimeBase.isRunning(), this.mBsi.mConstants.PROC_STATE_CPU_TIMES_READ_DELAY_MS);
                            BatteryStatsImpl.access$1408(this.mBsi);
                        } else {
                            BatteryStatsImpl.access$1508(this.mBsi);
                        }
                        if (this.mBsi.mPendingUids.indexOfKey(this.mUid) < 0 || ArrayUtils.contains(CRITICAL_PROC_STATES, this.mProcessState)) {
                            this.mBsi.mPendingUids.put(this.mUid, this.mProcessState);
                        }
                    } else {
                        this.mBsi.mPendingUids.clear();
                    }
                }
                this.mProcessState = mapToInternalProcessState;
                if (mapToInternalProcessState != 19) {
                    if (this.mProcessStateTimer[mapToInternalProcessState] == null) {
                        makeProcessState(mapToInternalProcessState, null);
                    }
                    this.mProcessStateTimer[mapToInternalProcessState].startRunningLocked(elapsedRealtime);
                }
                long j = uptimeMillis * 1000;
                long j2 = 1000 * elapsedRealtime;
                updateOnBatteryBgTimeBase(j, j2);
                updateOnBatteryScreenOffBgTimeBase(j, j2);
            }
            if (z != this.mInForegroundService) {
                if (z) {
                    noteForegroundServiceResumedLocked(elapsedRealtime);
                } else {
                    noteForegroundServicePausedLocked(elapsedRealtime);
                }
                this.mInForegroundService = z;
            }
        }

        public boolean isInBackground() {
            return this.mProcessState >= 3;
        }

        public boolean updateOnBatteryBgTimeBase(long j, long j2) {
            return this.mOnBatteryBackgroundTimeBase.setRunning(this.mBsi.mOnBatteryTimeBase.isRunning() && isInBackground(), j, j2);
        }

        public boolean updateOnBatteryScreenOffBgTimeBase(long j, long j2) {
            return this.mOnBatteryScreenOffBackgroundTimeBase.setRunning(this.mBsi.mOnBatteryScreenOffTimeBase.isRunning() && isInBackground(), j, j2);
        }

        public SparseArray<? extends BatteryStats.Uid.Pid> getPidStats() {
            return this.mPids;
        }

        public BatteryStats.Uid.Pid getPidStatsLocked(int i) {
            BatteryStats.Uid.Pid pid = this.mPids.get(i);
            if (pid != null) {
                return pid;
            }
            BatteryStats.Uid.Pid pid2 = new BatteryStats.Uid.Pid(this);
            this.mPids.put(i, pid2);
            return pid2;
        }

        public Pkg getPackageStatsLocked(String str) {
            Pkg pkg = this.mPackageStats.get(str);
            if (pkg != null) {
                return pkg;
            }
            Pkg pkg2 = new Pkg(this.mBsi);
            this.mPackageStats.put(str, pkg2);
            return pkg2;
        }

        public Pkg.Serv getServiceStatsLocked(String str, String str2) {
            Pkg packageStatsLocked = getPackageStatsLocked(str);
            Pkg.Serv serv = packageStatsLocked.mServiceStats.get(str2);
            if (serv != null) {
                return serv;
            }
            Pkg.Serv newServiceStatsLocked = packageStatsLocked.newServiceStatsLocked();
            packageStatsLocked.mServiceStats.put(str2, newServiceStatsLocked);
            return newServiceStatsLocked;
        }

        public void readSyncSummaryFromParcelLocked(String str, Parcel parcel) {
            DualTimer instantiateObject = this.mSyncStats.instantiateObject();
            instantiateObject.readSummaryFromParcelLocked(parcel);
            this.mSyncStats.add(str, instantiateObject);
        }

        public void readJobSummaryFromParcelLocked(String str, Parcel parcel) {
            DualTimer instantiateObject = this.mJobStats.instantiateObject();
            instantiateObject.readSummaryFromParcelLocked(parcel);
            this.mJobStats.add(str, instantiateObject);
        }

        public void readWakeSummaryFromParcelLocked(String str, Parcel parcel) {
            Wakelock wakelock = new Wakelock(this.mBsi, this);
            this.mWakelockStats.add(str, wakelock);
            if (parcel.readInt() != 0) {
                getWakelockTimerLocked(wakelock, 1).readSummaryFromParcelLocked(parcel);
            }
            if (parcel.readInt() != 0) {
                getWakelockTimerLocked(wakelock, 0).readSummaryFromParcelLocked(parcel);
            }
            if (parcel.readInt() != 0) {
                getWakelockTimerLocked(wakelock, 2).readSummaryFromParcelLocked(parcel);
            }
            if (parcel.readInt() != 0) {
                getWakelockTimerLocked(wakelock, 18).readSummaryFromParcelLocked(parcel);
            }
        }

        public DualTimer getSensorTimerLocked(int i, boolean z) {
            Sensor sensor = this.mSensorStats.get(i);
            if (sensor == null) {
                if (!z) {
                    return null;
                }
                sensor = new Sensor(this.mBsi, this, i);
                this.mSensorStats.put(i, sensor);
            }
            DualTimer dualTimer = sensor.mTimer;
            if (dualTimer != null) {
                return dualTimer;
            }
            ArrayList<StopwatchTimer> arrayList = this.mBsi.mSensorTimers.get(i);
            if (arrayList == null) {
                arrayList = new ArrayList<>();
                this.mBsi.mSensorTimers.put(i, arrayList);
            }
            DualTimer dualTimer2 = new DualTimer(this.mBsi.mClocks, this, 3, arrayList, this.mBsi.mOnBatteryTimeBase, this.mOnBatteryBackgroundTimeBase);
            sensor.mTimer = dualTimer2;
            return dualTimer2;
        }

        public void noteStartSyncLocked(String str, long j) {
            DualTimer startObject = this.mSyncStats.startObject(str);
            if (startObject != null) {
                startObject.startRunningLocked(j);
            }
        }

        public void noteStopSyncLocked(String str, long j) {
            DualTimer stopObject = this.mSyncStats.stopObject(str);
            if (stopObject != null) {
                stopObject.stopRunningLocked(j);
            }
        }

        public void noteStartJobLocked(String str, long j) {
            DualTimer startObject = this.mJobStats.startObject(str);
            if (startObject != null) {
                startObject.startRunningLocked(j);
            }
        }

        public void noteStopJobLocked(String str, long j, int i) {
            DualTimer stopObject = this.mJobStats.stopObject(str);
            if (stopObject != null) {
                stopObject.stopRunningLocked(j);
            }
            if (this.mBsi.mOnBatteryTimeBase.isRunning()) {
                SparseIntArray sparseIntArray = this.mJobCompletions.get(str);
                if (sparseIntArray == null) {
                    sparseIntArray = new SparseIntArray();
                    this.mJobCompletions.put(str, sparseIntArray);
                }
                sparseIntArray.put(i, sparseIntArray.get(i, 0) + 1);
            }
        }

        public StopwatchTimer getWakelockTimerLocked(Wakelock wakelock, int i) {
            if (wakelock == null) {
                return null;
            }
            if (i != 18) {
                switch (i) {
                    case 0:
                        DualTimer dualTimer = wakelock.mTimerPartial;
                        if (dualTimer != null) {
                            return dualTimer;
                        }
                        DualTimer dualTimer2 = new DualTimer(this.mBsi.mClocks, this, 0, this.mBsi.mPartialTimers, this.mBsi.mOnBatteryScreenOffTimeBase, this.mOnBatteryScreenOffBackgroundTimeBase);
                        wakelock.mTimerPartial = dualTimer2;
                        return dualTimer2;
                    case 1:
                        StopwatchTimer stopwatchTimer = wakelock.mTimerFull;
                        if (stopwatchTimer != null) {
                            return stopwatchTimer;
                        }
                        StopwatchTimer stopwatchTimer2 = new StopwatchTimer(this.mBsi.mClocks, this, 1, this.mBsi.mFullTimers, this.mBsi.mOnBatteryTimeBase);
                        wakelock.mTimerFull = stopwatchTimer2;
                        return stopwatchTimer2;
                    case 2:
                        StopwatchTimer stopwatchTimer3 = wakelock.mTimerWindow;
                        if (stopwatchTimer3 != null) {
                            return stopwatchTimer3;
                        }
                        StopwatchTimer stopwatchTimer4 = new StopwatchTimer(this.mBsi.mClocks, this, 2, this.mBsi.mWindowTimers, this.mBsi.mOnBatteryTimeBase);
                        wakelock.mTimerWindow = stopwatchTimer4;
                        return stopwatchTimer4;
                    default:
                        throw new IllegalArgumentException("type=" + i);
                }
            }
            StopwatchTimer stopwatchTimer5 = wakelock.mTimerDraw;
            if (stopwatchTimer5 != null) {
                return stopwatchTimer5;
            }
            StopwatchTimer stopwatchTimer6 = new StopwatchTimer(this.mBsi.mClocks, this, 18, this.mBsi.mDrawTimers, this.mBsi.mOnBatteryTimeBase);
            wakelock.mTimerDraw = stopwatchTimer6;
            return stopwatchTimer6;
        }

        public void noteStartWakeLocked(int i, String str, int i2, long j) {
            Wakelock startObject = this.mWakelockStats.startObject(str);
            if (startObject != null) {
                getWakelockTimerLocked(startObject, i2).startRunningLocked(j);
            }
            if (i2 == 0) {
                createAggregatedPartialWakelockTimerLocked().startRunningLocked(j);
                if (i >= 0) {
                    BatteryStats.Uid.Pid pidStatsLocked = getPidStatsLocked(i);
                    int i3 = pidStatsLocked.mWakeNesting;
                    pidStatsLocked.mWakeNesting = i3 + 1;
                    if (i3 == 0) {
                        pidStatsLocked.mWakeStartMs = j;
                    }
                }
            }
        }

        public void noteStopWakeLocked(int i, String str, int i2, long j) {
            BatteryStats.Uid.Pid pid;
            Wakelock stopObject = this.mWakelockStats.stopObject(str);
            if (stopObject != null) {
                getWakelockTimerLocked(stopObject, i2).stopRunningLocked(j);
            }
            if (i2 == 0) {
                if (this.mAggregatedPartialWakelockTimer != null) {
                    this.mAggregatedPartialWakelockTimer.stopRunningLocked(j);
                }
                if (i < 0 || (pid = this.mPids.get(i)) == null || pid.mWakeNesting <= 0) {
                    return;
                }
                int i3 = pid.mWakeNesting;
                pid.mWakeNesting = i3 - 1;
                if (i3 == 1) {
                    pid.mWakeSumMs += j - pid.mWakeStartMs;
                    pid.mWakeStartMs = 0L;
                }
            }
        }

        public void reportExcessiveCpuLocked(String str, long j, long j2) {
            Proc processStatsLocked = getProcessStatsLocked(str);
            if (processStatsLocked != null) {
                processStatsLocked.addExcessiveCpu(j, j2);
            }
        }

        public void noteStartSensor(int i, long j) {
            getSensorTimerLocked(i, true).startRunningLocked(j);
        }

        public void noteStopSensor(int i, long j) {
            DualTimer sensorTimerLocked = getSensorTimerLocked(i, false);
            if (sensorTimerLocked != null) {
                sensorTimerLocked.stopRunningLocked(j);
            }
        }

        public void noteStartGps(long j) {
            noteStartSensor(-10000, j);
        }

        public void noteStopGps(long j) {
            noteStopSensor(-10000, j);
        }

        public BatteryStatsImpl getBatteryStats() {
            return this.mBsi;
        }
    }

    public long[] getCpuFreqs() {
        return this.mCpuFreqs;
    }

    public BatteryStatsImpl(File file, Handler handler, PlatformIdleStateCallback platformIdleStateCallback, UserInfoProvider userInfoProvider) {
        this(new SystemClocks(), file, handler, platformIdleStateCallback, userInfoProvider);
    }

    private BatteryStatsImpl(Clocks clocks, File file, Handler handler, PlatformIdleStateCallback platformIdleStateCallback, UserInfoProvider userInfoProvider) {
        this.mKernelWakelockReader = new KernelWakelockReader();
        this.mTmpWakelockStats = new KernelWakelockStats();
        this.mKernelUidCpuTimeReader = new KernelUidCpuTimeReader();
        this.mKernelUidCpuFreqTimeReader = new KernelUidCpuFreqTimeReader();
        this.mKernelUidCpuActiveTimeReader = new KernelUidCpuActiveTimeReader();
        this.mKernelUidCpuClusterTimeReader = new KernelUidCpuClusterTimeReader();
        this.mKernelMemoryBandwidthStats = new KernelMemoryBandwidthStats();
        this.mKernelMemoryStats = new LongSparseArray<>();
        this.mPerProcStateCpuTimesAvailable = true;
        this.mPendingUids = new SparseIntArray();
        this.mCpuTimeReadsTrackingStartTime = SystemClock.uptimeMillis();
        this.mTmpRpmStats = new RpmStats();
        this.mLastRpmStatsUpdateTimeMs = -1000L;
        this.mPendingRemovedUids = new LinkedList();
        this.mExternalSync = null;
        this.mUserInfoProvider = null;
        this.mIsolatedUids = new SparseIntArray();
        this.mUidStats = new SparseArray<>();
        this.mPartialTimers = new ArrayList<>();
        this.mFullTimers = new ArrayList<>();
        this.mWindowTimers = new ArrayList<>();
        this.mDrawTimers = new ArrayList<>();
        this.mSensorTimers = new SparseArray<>();
        this.mWifiRunningTimers = new ArrayList<>();
        this.mFullWifiLockTimers = new ArrayList<>();
        this.mWifiMulticastTimers = new ArrayList<>();
        this.mWifiScanTimers = new ArrayList<>();
        this.mWifiBatchedScanTimers = new SparseArray<>();
        this.mAudioTurnedOnTimers = new ArrayList<>();
        this.mVideoTurnedOnTimers = new ArrayList<>();
        this.mFlashlightTurnedOnTimers = new ArrayList<>();
        this.mCameraTurnedOnTimers = new ArrayList<>();
        this.mBluetoothScanOnTimers = new ArrayList<>();
        this.mLastPartialTimers = new ArrayList<>();
        this.mOnBatteryTimeBase = new TimeBase();
        this.mOnBatteryScreenOffTimeBase = new TimeBase();
        this.mActiveEvents = new BatteryStats.HistoryEventTracker();
        this.mHaveBatteryLevel = false;
        this.mRecordingHistory = false;
        this.mHistoryBuffer = Parcel.obtain();
        this.mHistoryLastWritten = new BatteryStats.HistoryItem();
        this.mHistoryLastLastWritten = new BatteryStats.HistoryItem();
        this.mHistoryReadTmp = new BatteryStats.HistoryItem();
        this.mHistoryAddTmp = new BatteryStats.HistoryItem();
        this.mHistoryTagPool = new HashMap<>();
        this.mNextHistoryTagIdx = 0;
        this.mNumHistoryTagChars = 0;
        this.mHistoryBufferLastPos = -1;
        this.mHistoryOverflow = false;
        this.mActiveHistoryStates = -1;
        this.mActiveHistoryStates2 = -1;
        this.mLastHistoryElapsedRealtime = 0L;
        this.mTrackRunningHistoryElapsedRealtime = 0L;
        this.mTrackRunningHistoryUptime = 0L;
        this.mHistoryCur = new BatteryStats.HistoryItem();
        this.mLastHistoryStepDetails = null;
        this.mLastHistoryStepLevel = (byte) 0;
        this.mCurHistoryStepDetails = new BatteryStats.HistoryStepDetails();
        this.mReadHistoryStepDetails = new BatteryStats.HistoryStepDetails();
        this.mTmpHistoryStepDetails = new BatteryStats.HistoryStepDetails();
        this.mScreenState = 0;
        this.mScreenBrightnessBin = -1;
        this.mScreenBrightnessTimer = new StopwatchTimer[5];
        this.mUsbDataState = 0;
        this.mGpsSignalQualityBin = -1;
        this.mGpsSignalQualityTimer = new StopwatchTimer[2];
        this.mPhoneSignalStrengthBin = -1;
        this.mPhoneSignalStrengthBinRaw = -1;
        this.mPhoneSignalStrengthsTimer = new StopwatchTimer[5];
        this.mPhoneDataConnectionType = -1;
        this.mPhoneDataConnectionsTimer = new StopwatchTimer[21];
        this.mNetworkByteActivityCounters = new LongSamplingCounter[10];
        this.mNetworkPacketActivityCounters = new LongSamplingCounter[10];
        this.mHasWifiReporting = false;
        this.mHasBluetoothReporting = false;
        this.mHasModemReporting = false;
        this.mWifiState = -1;
        this.mWifiStateTimer = new StopwatchTimer[8];
        this.mWifiSupplState = -1;
        this.mWifiSupplStateTimer = new StopwatchTimer[13];
        this.mWifiSignalStrengthBin = -1;
        this.mWifiSignalStrengthsTimer = new StopwatchTimer[5];
        this.mIsCellularTxPowerHigh = false;
        this.mMobileRadioPowerState = 1;
        this.mWifiRadioPowerState = 1;
        this.mCharging = true;
        this.mInitStepMode = 0;
        this.mCurStepMode = 0;
        this.mModStepMode = 0;
        this.mDischargeStepTracker = new BatteryStats.LevelStepTracker(200);
        this.mDailyDischargeStepTracker = new BatteryStats.LevelStepTracker(400);
        this.mChargeStepTracker = new BatteryStats.LevelStepTracker(200);
        this.mDailyChargeStepTracker = new BatteryStats.LevelStepTracker(400);
        this.mDailyStartTime = 0L;
        this.mNextMinDailyDeadline = 0L;
        this.mNextMaxDailyDeadline = 0L;
        this.mDailyItems = new ArrayList<>();
        this.mLastWriteTime = 0L;
        this.mPhoneServiceState = -1;
        this.mPhoneServiceStateRaw = -1;
        this.mPhoneSimStateRaw = -1;
        this.mEstimatedBatteryCapacity = -1;
        this.mMinLearnedBatteryCapacity = -1;
        this.mMaxLearnedBatteryCapacity = -1;
        this.mRpmStats = new HashMap<>();
        this.mScreenOffRpmStats = new HashMap<>();
        this.mKernelWakelockStats = new HashMap<>();
        this.mLastWakeupReason = null;
        this.mLastWakeupUptimeMs = 0L;
        this.mWakeupReasonStats = new HashMap<>();
        this.mChangedStates = 0;
        this.mChangedStates2 = 0;
        this.mInitialAcquireWakeUid = -1;
        this.mWifiFullLockNesting = 0;
        this.mWifiScanNesting = 0;
        this.mWifiMulticastNesting = 0;
        this.mNetworkStatsFactory = new NetworkStatsFactory();
        this.mNetworkStatsPool = new Pools.SynchronizedPool(6);
        this.mWifiNetworkLock = new Object();
        this.mWifiIfaces = EmptyArray.STRING;
        this.mLastWifiNetworkStats = new NetworkStats(0L, -1);
        this.mModemNetworkLock = new Object();
        this.mModemIfaces = EmptyArray.STRING;
        this.mLastModemNetworkStats = new NetworkStats(0L, -1);
        this.mLastModemActivityInfo = new ModemActivityInfo(0L, 0, 0, new int[0], 0, 0);
        this.mLastBluetoothActivityInfo = new BluetoothActivityInfoCache();
        this.mPendingWrite = null;
        this.mWriteLock = new ReentrantLock();
        init(clocks);
        if (file != null) {
            this.mFile = new JournaledFile(new File(file, "batterystats.bin"), new File(file, "batterystats.bin.tmp"));
        } else {
            this.mFile = null;
        }
        this.mCheckinFile = new AtomicFile(new File(file, "batterystats-checkin.bin"));
        this.mDailyFile = new AtomicFile(new File(file, "batterystats-daily.xml"));
        this.mHandler = new MyHandler(handler.getLooper());
        this.mConstants = new Constants(this.mHandler);
        this.mStartCount++;
        this.mScreenOnTimer = new StopwatchTimer(this.mClocks, null, -1, null, this.mOnBatteryTimeBase);
        this.mScreenDozeTimer = new StopwatchTimer(this.mClocks, null, -1, null, this.mOnBatteryTimeBase);
        for (int i = 0; i < 5; i++) {
            this.mScreenBrightnessTimer[i] = new StopwatchTimer(this.mClocks, null, (-100) - i, null, this.mOnBatteryTimeBase);
        }
        this.mInteractiveTimer = new StopwatchTimer(this.mClocks, null, -10, null, this.mOnBatteryTimeBase);
        this.mPowerSaveModeEnabledTimer = new StopwatchTimer(this.mClocks, null, -2, null, this.mOnBatteryTimeBase);
        this.mDeviceIdleModeLightTimer = new StopwatchTimer(this.mClocks, null, -11, null, this.mOnBatteryTimeBase);
        this.mDeviceIdleModeFullTimer = new StopwatchTimer(this.mClocks, null, -14, null, this.mOnBatteryTimeBase);
        this.mDeviceLightIdlingTimer = new StopwatchTimer(this.mClocks, null, -15, null, this.mOnBatteryTimeBase);
        this.mDeviceIdlingTimer = new StopwatchTimer(this.mClocks, null, -12, null, this.mOnBatteryTimeBase);
        this.mPhoneOnTimer = new StopwatchTimer(this.mClocks, null, -3, null, this.mOnBatteryTimeBase);
        for (int i2 = 0; i2 < 5; i2++) {
            this.mPhoneSignalStrengthsTimer[i2] = new StopwatchTimer(this.mClocks, null, (-200) - i2, null, this.mOnBatteryTimeBase);
        }
        this.mPhoneSignalScanningTimer = new StopwatchTimer(this.mClocks, null, -199, null, this.mOnBatteryTimeBase);
        for (int i3 = 0; i3 < 21; i3++) {
            this.mPhoneDataConnectionsTimer[i3] = new StopwatchTimer(this.mClocks, null, (-300) - i3, null, this.mOnBatteryTimeBase);
        }
        for (int i4 = 0; i4 < 10; i4++) {
            this.mNetworkByteActivityCounters[i4] = new LongSamplingCounter(this.mOnBatteryTimeBase);
            this.mNetworkPacketActivityCounters[i4] = new LongSamplingCounter(this.mOnBatteryTimeBase);
        }
        this.mWifiActivity = new ControllerActivityCounterImpl(this.mOnBatteryTimeBase, 1);
        this.mBluetoothActivity = new ControllerActivityCounterImpl(this.mOnBatteryTimeBase, 1);
        this.mModemActivity = new ControllerActivityCounterImpl(this.mOnBatteryTimeBase, 5);
        this.mMobileRadioActiveTimer = new StopwatchTimer(this.mClocks, null, -400, null, this.mOnBatteryTimeBase);
        this.mMobileRadioActivePerAppTimer = new StopwatchTimer(this.mClocks, null, -401, null, this.mOnBatteryTimeBase);
        this.mMobileRadioActiveAdjustedTime = new LongSamplingCounter(this.mOnBatteryTimeBase);
        this.mMobileRadioActiveUnknownTime = new LongSamplingCounter(this.mOnBatteryTimeBase);
        this.mMobileRadioActiveUnknownCount = new LongSamplingCounter(this.mOnBatteryTimeBase);
        this.mWifiMulticastWakelockTimer = new StopwatchTimer(this.mClocks, null, 23, null, this.mOnBatteryTimeBase);
        this.mWifiOnTimer = new StopwatchTimer(this.mClocks, null, -4, null, this.mOnBatteryTimeBase);
        this.mGlobalWifiRunningTimer = new StopwatchTimer(this.mClocks, null, -5, null, this.mOnBatteryTimeBase);
        for (int i5 = 0; i5 < 8; i5++) {
            this.mWifiStateTimer[i5] = new StopwatchTimer(this.mClocks, null, (-600) - i5, null, this.mOnBatteryTimeBase);
        }
        for (int i6 = 0; i6 < 13; i6++) {
            this.mWifiSupplStateTimer[i6] = new StopwatchTimer(this.mClocks, null, (-700) - i6, null, this.mOnBatteryTimeBase);
        }
        for (int i7 = 0; i7 < 5; i7++) {
            this.mWifiSignalStrengthsTimer[i7] = new StopwatchTimer(this.mClocks, null, (-800) - i7, null, this.mOnBatteryTimeBase);
        }
        this.mWifiActiveTimer = new StopwatchTimer(this.mClocks, null, -900, null, this.mOnBatteryTimeBase);
        for (int i8 = 0; i8 < 2; i8++) {
            this.mGpsSignalQualityTimer[i8] = new StopwatchTimer(this.mClocks, null, (-1000) - i8, null, this.mOnBatteryTimeBase);
        }
        this.mAudioOnTimer = new StopwatchTimer(this.mClocks, null, -7, null, this.mOnBatteryTimeBase);
        this.mVideoOnTimer = new StopwatchTimer(this.mClocks, null, -8, null, this.mOnBatteryTimeBase);
        this.mFlashlightOnTimer = new StopwatchTimer(this.mClocks, null, -9, null, this.mOnBatteryTimeBase);
        this.mCameraOnTimer = new StopwatchTimer(this.mClocks, null, -13, null, this.mOnBatteryTimeBase);
        this.mBluetoothScanTimer = new StopwatchTimer(this.mClocks, null, -14, null, this.mOnBatteryTimeBase);
        this.mDischargeScreenOffCounter = new LongSamplingCounter(this.mOnBatteryScreenOffTimeBase);
        this.mDischargeScreenDozeCounter = new LongSamplingCounter(this.mOnBatteryTimeBase);
        this.mDischargeLightDozeCounter = new LongSamplingCounter(this.mOnBatteryTimeBase);
        this.mDischargeDeepDozeCounter = new LongSamplingCounter(this.mOnBatteryTimeBase);
        this.mDischargeCounter = new LongSamplingCounter(this.mOnBatteryTimeBase);
        this.mOnBatteryInternal = false;
        this.mOnBattery = false;
        initTimes(this.mClocks.uptimeMillis() * 1000, this.mClocks.elapsedRealtime() * 1000);
        String str = Build.ID;
        this.mEndPlatformVersion = str;
        this.mStartPlatformVersion = str;
        this.mDischargeStartLevel = 0;
        this.mDischargeUnplugLevel = 0;
        this.mDischargePlugLevel = -1;
        this.mDischargeCurrentLevel = 0;
        this.mCurrentBatteryLevel = 0;
        initDischarge();
        clearHistoryLocked();
        updateDailyDeadlineLocked();
        this.mPlatformIdleStateCallback = platformIdleStateCallback;
        this.mUserInfoProvider = userInfoProvider;
    }

    public BatteryStatsImpl(Parcel parcel) {
        this(new SystemClocks(), parcel);
    }

    public BatteryStatsImpl(Clocks clocks, Parcel parcel) {
        this.mKernelWakelockReader = new KernelWakelockReader();
        this.mTmpWakelockStats = new KernelWakelockStats();
        this.mKernelUidCpuTimeReader = new KernelUidCpuTimeReader();
        this.mKernelUidCpuFreqTimeReader = new KernelUidCpuFreqTimeReader();
        this.mKernelUidCpuActiveTimeReader = new KernelUidCpuActiveTimeReader();
        this.mKernelUidCpuClusterTimeReader = new KernelUidCpuClusterTimeReader();
        this.mKernelMemoryBandwidthStats = new KernelMemoryBandwidthStats();
        this.mKernelMemoryStats = new LongSparseArray<>();
        this.mPerProcStateCpuTimesAvailable = true;
        this.mPendingUids = new SparseIntArray();
        this.mCpuTimeReadsTrackingStartTime = SystemClock.uptimeMillis();
        this.mTmpRpmStats = new RpmStats();
        this.mLastRpmStatsUpdateTimeMs = -1000L;
        this.mPendingRemovedUids = new LinkedList();
        this.mExternalSync = null;
        this.mUserInfoProvider = null;
        this.mIsolatedUids = new SparseIntArray();
        this.mUidStats = new SparseArray<>();
        this.mPartialTimers = new ArrayList<>();
        this.mFullTimers = new ArrayList<>();
        this.mWindowTimers = new ArrayList<>();
        this.mDrawTimers = new ArrayList<>();
        this.mSensorTimers = new SparseArray<>();
        this.mWifiRunningTimers = new ArrayList<>();
        this.mFullWifiLockTimers = new ArrayList<>();
        this.mWifiMulticastTimers = new ArrayList<>();
        this.mWifiScanTimers = new ArrayList<>();
        this.mWifiBatchedScanTimers = new SparseArray<>();
        this.mAudioTurnedOnTimers = new ArrayList<>();
        this.mVideoTurnedOnTimers = new ArrayList<>();
        this.mFlashlightTurnedOnTimers = new ArrayList<>();
        this.mCameraTurnedOnTimers = new ArrayList<>();
        this.mBluetoothScanOnTimers = new ArrayList<>();
        this.mLastPartialTimers = new ArrayList<>();
        this.mOnBatteryTimeBase = new TimeBase();
        this.mOnBatteryScreenOffTimeBase = new TimeBase();
        this.mActiveEvents = new BatteryStats.HistoryEventTracker();
        this.mHaveBatteryLevel = false;
        this.mRecordingHistory = false;
        this.mHistoryBuffer = Parcel.obtain();
        this.mHistoryLastWritten = new BatteryStats.HistoryItem();
        this.mHistoryLastLastWritten = new BatteryStats.HistoryItem();
        this.mHistoryReadTmp = new BatteryStats.HistoryItem();
        this.mHistoryAddTmp = new BatteryStats.HistoryItem();
        this.mHistoryTagPool = new HashMap<>();
        this.mNextHistoryTagIdx = 0;
        this.mNumHistoryTagChars = 0;
        this.mHistoryBufferLastPos = -1;
        this.mHistoryOverflow = false;
        this.mActiveHistoryStates = -1;
        this.mActiveHistoryStates2 = -1;
        this.mLastHistoryElapsedRealtime = 0L;
        this.mTrackRunningHistoryElapsedRealtime = 0L;
        this.mTrackRunningHistoryUptime = 0L;
        this.mHistoryCur = new BatteryStats.HistoryItem();
        this.mLastHistoryStepDetails = null;
        this.mLastHistoryStepLevel = (byte) 0;
        this.mCurHistoryStepDetails = new BatteryStats.HistoryStepDetails();
        this.mReadHistoryStepDetails = new BatteryStats.HistoryStepDetails();
        this.mTmpHistoryStepDetails = new BatteryStats.HistoryStepDetails();
        this.mScreenState = 0;
        this.mScreenBrightnessBin = -1;
        this.mScreenBrightnessTimer = new StopwatchTimer[5];
        this.mUsbDataState = 0;
        this.mGpsSignalQualityBin = -1;
        this.mGpsSignalQualityTimer = new StopwatchTimer[2];
        this.mPhoneSignalStrengthBin = -1;
        this.mPhoneSignalStrengthBinRaw = -1;
        this.mPhoneSignalStrengthsTimer = new StopwatchTimer[5];
        this.mPhoneDataConnectionType = -1;
        this.mPhoneDataConnectionsTimer = new StopwatchTimer[21];
        this.mNetworkByteActivityCounters = new LongSamplingCounter[10];
        this.mNetworkPacketActivityCounters = new LongSamplingCounter[10];
        this.mHasWifiReporting = false;
        this.mHasBluetoothReporting = false;
        this.mHasModemReporting = false;
        this.mWifiState = -1;
        this.mWifiStateTimer = new StopwatchTimer[8];
        this.mWifiSupplState = -1;
        this.mWifiSupplStateTimer = new StopwatchTimer[13];
        this.mWifiSignalStrengthBin = -1;
        this.mWifiSignalStrengthsTimer = new StopwatchTimer[5];
        this.mIsCellularTxPowerHigh = false;
        this.mMobileRadioPowerState = 1;
        this.mWifiRadioPowerState = 1;
        this.mCharging = true;
        this.mInitStepMode = 0;
        this.mCurStepMode = 0;
        this.mModStepMode = 0;
        this.mDischargeStepTracker = new BatteryStats.LevelStepTracker(200);
        this.mDailyDischargeStepTracker = new BatteryStats.LevelStepTracker(400);
        this.mChargeStepTracker = new BatteryStats.LevelStepTracker(200);
        this.mDailyChargeStepTracker = new BatteryStats.LevelStepTracker(400);
        this.mDailyStartTime = 0L;
        this.mNextMinDailyDeadline = 0L;
        this.mNextMaxDailyDeadline = 0L;
        this.mDailyItems = new ArrayList<>();
        this.mLastWriteTime = 0L;
        this.mPhoneServiceState = -1;
        this.mPhoneServiceStateRaw = -1;
        this.mPhoneSimStateRaw = -1;
        this.mEstimatedBatteryCapacity = -1;
        this.mMinLearnedBatteryCapacity = -1;
        this.mMaxLearnedBatteryCapacity = -1;
        this.mRpmStats = new HashMap<>();
        this.mScreenOffRpmStats = new HashMap<>();
        this.mKernelWakelockStats = new HashMap<>();
        this.mLastWakeupReason = null;
        this.mLastWakeupUptimeMs = 0L;
        this.mWakeupReasonStats = new HashMap<>();
        this.mChangedStates = 0;
        this.mChangedStates2 = 0;
        this.mInitialAcquireWakeUid = -1;
        this.mWifiFullLockNesting = 0;
        this.mWifiScanNesting = 0;
        this.mWifiMulticastNesting = 0;
        this.mNetworkStatsFactory = new NetworkStatsFactory();
        this.mNetworkStatsPool = new Pools.SynchronizedPool(6);
        this.mWifiNetworkLock = new Object();
        this.mWifiIfaces = EmptyArray.STRING;
        this.mLastWifiNetworkStats = new NetworkStats(0L, -1);
        this.mModemNetworkLock = new Object();
        this.mModemIfaces = EmptyArray.STRING;
        this.mLastModemNetworkStats = new NetworkStats(0L, -1);
        this.mLastModemActivityInfo = new ModemActivityInfo(0L, 0, 0, new int[0], 0, 0);
        this.mLastBluetoothActivityInfo = new BluetoothActivityInfoCache();
        this.mPendingWrite = null;
        this.mWriteLock = new ReentrantLock();
        init(clocks);
        this.mFile = null;
        this.mCheckinFile = null;
        this.mDailyFile = null;
        this.mHandler = null;
        this.mExternalSync = null;
        this.mConstants = new Constants(this.mHandler);
        clearHistoryLocked();
        readFromParcel(parcel);
        this.mPlatformIdleStateCallback = null;
    }

    public void setPowerProfileLocked(PowerProfile powerProfile) {
        this.mPowerProfile = powerProfile;
        int numCpuClusters = this.mPowerProfile.getNumCpuClusters();
        this.mKernelCpuSpeedReaders = new KernelCpuSpeedReader[numCpuClusters];
        int i = 0;
        for (int i2 = 0; i2 < numCpuClusters; i2++) {
            this.mKernelCpuSpeedReaders[i2] = new KernelCpuSpeedReader(i, this.mPowerProfile.getNumSpeedStepsInCpuCluster(i2));
            i += this.mPowerProfile.getNumCoresInCpuCluster(i2);
        }
        if (this.mEstimatedBatteryCapacity == -1) {
            this.mEstimatedBatteryCapacity = (int) this.mPowerProfile.getBatteryCapacity();
        }
    }

    public void setCallback(BatteryCallback batteryCallback) {
        this.mCallback = batteryCallback;
    }

    public void setRadioScanningTimeoutLocked(long j) {
        if (this.mPhoneSignalScanningTimer != null) {
            this.mPhoneSignalScanningTimer.setTimeout(j);
        }
    }

    public void setExternalStatsSyncLocked(ExternalStatsSync externalStatsSync) {
        this.mExternalSync = externalStatsSync;
    }

    public void updateDailyDeadlineLocked() {
        long currentTimeMillis = System.currentTimeMillis();
        this.mDailyStartTime = currentTimeMillis;
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(currentTimeMillis);
        calendar.set(6, calendar.get(6) + 1);
        calendar.set(14, 0);
        calendar.set(13, 0);
        calendar.set(12, 0);
        calendar.set(11, 1);
        this.mNextMinDailyDeadline = calendar.getTimeInMillis();
        calendar.set(11, 3);
        this.mNextMaxDailyDeadline = calendar.getTimeInMillis();
    }

    public void recordDailyStatsIfNeededLocked(boolean z) {
        long currentTimeMillis = System.currentTimeMillis();
        if (currentTimeMillis >= this.mNextMaxDailyDeadline) {
            recordDailyStatsLocked();
            return;
        }
        if (z && currentTimeMillis >= this.mNextMinDailyDeadline) {
            recordDailyStatsLocked();
        } else if (currentTimeMillis < this.mDailyStartTime - 86400000) {
            recordDailyStatsLocked();
        }
    }

    public void recordDailyStatsLocked() {
        boolean z;
        BatteryStats.DailyItem dailyItem = new BatteryStats.DailyItem();
        dailyItem.mStartTime = this.mDailyStartTime;
        dailyItem.mEndTime = System.currentTimeMillis();
        if (this.mDailyDischargeStepTracker.mNumStepDurations > 0) {
            dailyItem.mDischargeSteps = new BatteryStats.LevelStepTracker(this.mDailyDischargeStepTracker.mNumStepDurations, this.mDailyDischargeStepTracker.mStepDurations);
            z = true;
        } else {
            z = false;
        }
        if (this.mDailyChargeStepTracker.mNumStepDurations > 0) {
            dailyItem.mChargeSteps = new BatteryStats.LevelStepTracker(this.mDailyChargeStepTracker.mNumStepDurations, this.mDailyChargeStepTracker.mStepDurations);
            z = true;
        }
        if (this.mDailyPackageChanges != null) {
            dailyItem.mPackageChanges = this.mDailyPackageChanges;
            this.mDailyPackageChanges = null;
            z = true;
        }
        this.mDailyDischargeStepTracker.init();
        this.mDailyChargeStepTracker.init();
        updateDailyDeadlineLocked();
        if (z) {
            long uptimeMillis = SystemClock.uptimeMillis();
            this.mDailyItems.add(dailyItem);
            while (this.mDailyItems.size() > 10) {
                this.mDailyItems.remove(0);
            }
            final ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            try {
                XmlSerializer fastXmlSerializer = new FastXmlSerializer();
                fastXmlSerializer.setOutput(byteArrayOutputStream, StandardCharsets.UTF_8.name());
                writeDailyItemsLocked(fastXmlSerializer);
                final long uptimeMillis2 = SystemClock.uptimeMillis() - uptimeMillis;
                BackgroundThread.getHandler().post(new Runnable() { // from class: com.android.internal.os.BatteryStatsImpl.2
                    @Override // java.lang.Runnable
                    public void run() {
                        FileOutputStream fileOutputStream;
                        synchronized (BatteryStatsImpl.this.mCheckinFile) {
                            long uptimeMillis3 = SystemClock.uptimeMillis();
                            try {
                                fileOutputStream = BatteryStatsImpl.this.mDailyFile.startWrite();
                            } catch (IOException e) {
                                e = e;
                                fileOutputStream = null;
                            }
                            try {
                                byteArrayOutputStream.writeTo(fileOutputStream);
                                fileOutputStream.flush();
                                FileUtils.sync(fileOutputStream);
                                fileOutputStream.close();
                                BatteryStatsImpl.this.mDailyFile.finishWrite(fileOutputStream);
                                EventLogTags.writeCommitSysConfigFile("batterystats-daily", (uptimeMillis2 + SystemClock.uptimeMillis()) - uptimeMillis3);
                            } catch (IOException e2) {
                                e = e2;
                                Slog.w("BatteryStats", "Error writing battery daily items", e);
                                BatteryStatsImpl.this.mDailyFile.failWrite(fileOutputStream);
                            }
                        }
                    }
                });
            } catch (IOException unused) {
            }
        }
    }

    private void writeDailyItemsLocked(XmlSerializer xmlSerializer) throws IOException {
        StringBuilder sb = new StringBuilder(64);
        xmlSerializer.startDocument(null, true);
        xmlSerializer.startTag(null, "daily-items");
        for (int i = 0; i < this.mDailyItems.size(); i++) {
            BatteryStats.DailyItem dailyItem = this.mDailyItems.get(i);
            xmlSerializer.startTag(null, ImsConfig.EXTRA_CHANGED_ITEM);
            xmlSerializer.attribute(null, "start", Long.toString(dailyItem.mStartTime));
            xmlSerializer.attribute(null, "end", Long.toString(dailyItem.mEndTime));
            writeDailyLevelSteps(xmlSerializer, "dis", dailyItem.mDischargeSteps, sb);
            writeDailyLevelSteps(xmlSerializer, "chg", dailyItem.mChargeSteps, sb);
            if (dailyItem.mPackageChanges != null) {
                for (int i2 = 0; i2 < dailyItem.mPackageChanges.size(); i2++) {
                    BatteryStats.PackageChange packageChange = (BatteryStats.PackageChange) dailyItem.mPackageChanges.get(i2);
                    if (packageChange.mUpdate) {
                        xmlSerializer.startTag(null, "upd");
                        xmlSerializer.attribute(null, "pkg", packageChange.mPackageName);
                        xmlSerializer.attribute(null, "ver", Long.toString(packageChange.mVersionCode));
                        xmlSerializer.endTag(null, "upd");
                    } else {
                        xmlSerializer.startTag(null, "rem");
                        xmlSerializer.attribute(null, "pkg", packageChange.mPackageName);
                        xmlSerializer.endTag(null, "rem");
                    }
                }
            }
            xmlSerializer.endTag(null, ImsConfig.EXTRA_CHANGED_ITEM);
        }
        xmlSerializer.endTag(null, "daily-items");
        xmlSerializer.endDocument();
    }

    private void writeDailyLevelSteps(XmlSerializer xmlSerializer, String str, BatteryStats.LevelStepTracker levelStepTracker, StringBuilder sb) throws IOException {
        if (levelStepTracker != null) {
            xmlSerializer.startTag(null, str);
            xmlSerializer.attribute(null, "n", Integer.toString(levelStepTracker.mNumStepDurations));
            for (int i = 0; i < levelStepTracker.mNumStepDurations; i++) {
                xmlSerializer.startTag(null, "s");
                sb.setLength(0);
                levelStepTracker.encodeEntryAt(i, sb);
                xmlSerializer.attribute(null, "v", sb.toString());
                xmlSerializer.endTag(null, "s");
            }
            xmlSerializer.endTag(null, str);
        }
    }

    public void readDailyStatsLocked() {
        Slog.d(TAG, "Reading daily items from " + this.mDailyFile.getBaseFile());
        this.mDailyItems.clear();
        try {
            FileInputStream openRead = this.mDailyFile.openRead();
            try {
                XmlPullParser newPullParser = Xml.newPullParser();
                newPullParser.setInput(openRead, StandardCharsets.UTF_8.name());
                readDailyItemsLocked(newPullParser);
            } catch (XmlPullParserException unused) {
            } catch (Throwable th) {
                try {
                    openRead.close();
                } catch (IOException unused2) {
                }
                throw th;
            }
            try {
                openRead.close();
            } catch (IOException unused3) {
            }
        } catch (FileNotFoundException unused4) {
        }
    }

    private void readDailyItemsLocked(XmlPullParser xmlPullParser) {
        int next;
        do {
            try {
                next = xmlPullParser.next();
                if (next == 2) {
                    break;
                }
            } catch (IOException e) {
                Slog.w(TAG, "Failed parsing daily " + e);
                return;
            } catch (IllegalStateException e2) {
                Slog.w(TAG, "Failed parsing daily " + e2);
                return;
            } catch (IndexOutOfBoundsException e3) {
                Slog.w(TAG, "Failed parsing daily " + e3);
                return;
            } catch (NullPointerException e4) {
                Slog.w(TAG, "Failed parsing daily " + e4);
                return;
            } catch (NumberFormatException e5) {
                Slog.w(TAG, "Failed parsing daily " + e5);
                return;
            } catch (XmlPullParserException e6) {
                Slog.w(TAG, "Failed parsing daily " + e6);
                return;
            }
        } while (next != 1);
        if (next != 2) {
            throw new IllegalStateException("no start tag found");
        }
        int depth = xmlPullParser.getDepth();
        while (true) {
            int next2 = xmlPullParser.next();
            if (next2 == 1) {
                return;
            }
            if (next2 == 3 && xmlPullParser.getDepth() <= depth) {
                return;
            }
            if (next2 != 3 && next2 != 4) {
                if (xmlPullParser.getName().equals(ImsConfig.EXTRA_CHANGED_ITEM)) {
                    readDailyItemTagLocked(xmlPullParser);
                } else {
                    Slog.w(TAG, "Unknown element under <daily-items>: " + xmlPullParser.getName());
                    XmlUtils.skipCurrentTag(xmlPullParser);
                }
            }
        }
    }

    void readDailyItemTagLocked(XmlPullParser xmlPullParser) throws NumberFormatException, XmlPullParserException, IOException {
        BatteryStats.DailyItem dailyItem = new BatteryStats.DailyItem();
        String attributeValue = xmlPullParser.getAttributeValue(null, "start");
        if (attributeValue != null) {
            dailyItem.mStartTime = Long.parseLong(attributeValue);
        }
        String attributeValue2 = xmlPullParser.getAttributeValue(null, "end");
        if (attributeValue2 != null) {
            dailyItem.mEndTime = Long.parseLong(attributeValue2);
        }
        int depth = xmlPullParser.getDepth();
        while (true) {
            int next = xmlPullParser.next();
            if (next == 1 || (next == 3 && xmlPullParser.getDepth() <= depth)) {
                break;
            }
            if (next != 3 && next != 4) {
                String name = xmlPullParser.getName();
                if (name.equals("dis")) {
                    readDailyItemTagDetailsLocked(xmlPullParser, dailyItem, false, "dis");
                } else if (name.equals("chg")) {
                    readDailyItemTagDetailsLocked(xmlPullParser, dailyItem, true, "chg");
                } else if (name.equals("upd")) {
                    if (dailyItem.mPackageChanges == null) {
                        dailyItem.mPackageChanges = new ArrayList();
                    }
                    BatteryStats.PackageChange packageChange = new BatteryStats.PackageChange();
                    packageChange.mUpdate = true;
                    packageChange.mPackageName = xmlPullParser.getAttributeValue(null, "pkg");
                    String attributeValue3 = xmlPullParser.getAttributeValue(null, "ver");
                    packageChange.mVersionCode = attributeValue3 != null ? Long.parseLong(attributeValue3) : 0L;
                    dailyItem.mPackageChanges.add(packageChange);
                    XmlUtils.skipCurrentTag(xmlPullParser);
                } else if (name.equals("rem")) {
                    if (dailyItem.mPackageChanges == null) {
                        dailyItem.mPackageChanges = new ArrayList();
                    }
                    BatteryStats.PackageChange packageChange2 = new BatteryStats.PackageChange();
                    packageChange2.mUpdate = false;
                    packageChange2.mPackageName = xmlPullParser.getAttributeValue(null, "pkg");
                    dailyItem.mPackageChanges.add(packageChange2);
                    XmlUtils.skipCurrentTag(xmlPullParser);
                } else {
                    Slog.w(TAG, "Unknown element under <item>: " + xmlPullParser.getName());
                    XmlUtils.skipCurrentTag(xmlPullParser);
                }
            }
        }
        this.mDailyItems.add(dailyItem);
    }

    void readDailyItemTagDetailsLocked(XmlPullParser xmlPullParser, BatteryStats.DailyItem dailyItem, boolean z, String str) throws NumberFormatException, XmlPullParserException, IOException {
        String attributeValue;
        String attributeValue2 = xmlPullParser.getAttributeValue(null, "n");
        if (attributeValue2 == null) {
            Slog.w(TAG, "Missing 'n' attribute at " + xmlPullParser.getPositionDescription());
            XmlUtils.skipCurrentTag(xmlPullParser);
            return;
        }
        int parseInt = Integer.parseInt(attributeValue2);
        BatteryStats.LevelStepTracker levelStepTracker = new BatteryStats.LevelStepTracker(parseInt);
        if (z) {
            dailyItem.mChargeSteps = levelStepTracker;
        } else {
            dailyItem.mDischargeSteps = levelStepTracker;
        }
        int i = 0;
        int depth = xmlPullParser.getDepth();
        while (true) {
            int next = xmlPullParser.next();
            if (next == 1 || (next == 3 && xmlPullParser.getDepth() <= depth)) {
                break;
            }
            if (next != 3 && next != 4) {
                if (!"s".equals(xmlPullParser.getName())) {
                    Slog.w(TAG, "Unknown element under <" + str + ">: " + xmlPullParser.getName());
                    XmlUtils.skipCurrentTag(xmlPullParser);
                } else if (i < parseInt && (attributeValue = xmlPullParser.getAttributeValue(null, "v")) != null) {
                    levelStepTracker.decodeEntryAt(i, attributeValue);
                    i++;
                }
            }
        }
        levelStepTracker.mNumStepDurations = i;
    }

    public BatteryStats.DailyItem getDailyItemLocked(int i) {
        int size = (this.mDailyItems.size() - 1) - i;
        if (size >= 0) {
            return this.mDailyItems.get(size);
        }
        return null;
    }

    public long getCurrentDailyStartTime() {
        return this.mDailyStartTime;
    }

    public long getNextMinDailyDeadline() {
        return this.mNextMinDailyDeadline;
    }

    public long getNextMaxDailyDeadline() {
        return this.mNextMaxDailyDeadline;
    }

    public boolean startIteratingOldHistoryLocked() {
        BatteryStats.HistoryItem historyItem = this.mHistory;
        this.mHistoryIterator = historyItem;
        if (historyItem == null) {
            return false;
        }
        this.mHistoryBuffer.setDataPosition(0);
        this.mHistoryReadTmp.clear();
        this.mReadOverflow = false;
        this.mIteratingHistory = true;
        return true;
    }

    public boolean getNextOldHistoryLocked(BatteryStats.HistoryItem historyItem) {
        boolean z = this.mHistoryBuffer.dataPosition() >= this.mHistoryBuffer.dataSize();
        if (!z) {
            readHistoryDelta(this.mHistoryBuffer, this.mHistoryReadTmp);
            this.mReadOverflow |= this.mHistoryReadTmp.cmd == 6;
        }
        BatteryStats.HistoryItem historyItem2 = this.mHistoryIterator;
        if (historyItem2 == null) {
            if (!this.mReadOverflow && !z) {
                Slog.w(TAG, "Old history ends before new history!");
            }
            return false;
        }
        historyItem.setTo(historyItem2);
        this.mHistoryIterator = historyItem2.next;
        if (!this.mReadOverflow) {
            if (z) {
                Slog.w(TAG, "New history ends before old history!");
            } else if (!historyItem.same(this.mHistoryReadTmp)) {
                FastPrintWriter fastPrintWriter = new FastPrintWriter((Writer) new LogWriter(5, TAG));
                fastPrintWriter.println("Histories differ!");
                fastPrintWriter.println("Old history:");
                new BatteryStats.HistoryPrinter().printNextItem(fastPrintWriter, historyItem, 0L, false, true);
                fastPrintWriter.println("New history:");
                new BatteryStats.HistoryPrinter().printNextItem(fastPrintWriter, this.mHistoryReadTmp, 0L, false, true);
                fastPrintWriter.flush();
            }
        }
        return true;
    }

    public void finishIteratingOldHistoryLocked() {
        this.mIteratingHistory = false;
        this.mHistoryBuffer.setDataPosition(this.mHistoryBuffer.dataSize());
        this.mHistoryIterator = null;
    }

    public int getHistoryTotalSize() {
        return MAX_HISTORY_BUFFER;
    }

    public int getHistoryUsedSize() {
        return this.mHistoryBuffer.dataSize();
    }

    public boolean startIteratingHistoryLocked() {
        if (this.mHistoryBuffer.dataSize() <= 0) {
            return false;
        }
        this.mHistoryBuffer.setDataPosition(0);
        this.mReadOverflow = false;
        this.mIteratingHistory = true;
        this.mReadHistoryStrings = new String[this.mHistoryTagPool.size()];
        this.mReadHistoryUids = new int[this.mHistoryTagPool.size()];
        this.mReadHistoryChars = 0;
        for (Map.Entry<BatteryStats.HistoryTag, Integer> entry : this.mHistoryTagPool.entrySet()) {
            BatteryStats.HistoryTag key = entry.getKey();
            int intValue = entry.getValue().intValue();
            this.mReadHistoryStrings[intValue] = key.string;
            this.mReadHistoryUids[intValue] = key.uid;
            this.mReadHistoryChars += key.string.length() + 1;
        }
        return true;
    }

    public int getHistoryStringPoolSize() {
        return this.mReadHistoryStrings.length;
    }

    public int getHistoryStringPoolBytes() {
        return (this.mReadHistoryStrings.length * 12) + (this.mReadHistoryChars * 2);
    }

    public String getHistoryTagPoolString(int i) {
        return this.mReadHistoryStrings[i];
    }

    public int getHistoryTagPoolUid(int i) {
        return this.mReadHistoryUids[i];
    }

    public boolean getNextHistoryLocked(BatteryStats.HistoryItem historyItem) {
        int dataPosition = this.mHistoryBuffer.dataPosition();
        if (dataPosition == 0) {
            historyItem.clear();
        }
        if (dataPosition >= this.mHistoryBuffer.dataSize()) {
            return false;
        }
        long j = historyItem.time;
        long j2 = historyItem.currentTime;
        readHistoryDelta(this.mHistoryBuffer, historyItem);
        if (historyItem.cmd != 5 && historyItem.cmd != 7 && j2 != 0) {
            historyItem.currentTime = j2 + (historyItem.time - j);
        }
        return true;
    }

    public void finishIteratingHistoryLocked() {
        this.mIteratingHistory = false;
        this.mHistoryBuffer.setDataPosition(this.mHistoryBuffer.dataSize());
        this.mReadHistoryStrings = null;
    }

    public long getHistoryBaseTime() {
        return this.mHistoryBaseTime;
    }

    public int getStartCount() {
        return this.mStartCount;
    }

    public boolean isOnBattery() {
        return this.mOnBattery;
    }

    public boolean isCharging() {
        return this.mCharging;
    }

    void initTimes(long j, long j2) {
        this.mStartClockTime = System.currentTimeMillis();
        this.mOnBatteryTimeBase.init(j, j2);
        this.mOnBatteryScreenOffTimeBase.init(j, j2);
        this.mRealtime = 0L;
        this.mUptime = 0L;
        this.mRealtimeStart = j2;
        this.mUptimeStart = j;
    }

    void initDischarge() {
        this.mLowDischargeAmountSinceCharge = 0;
        this.mHighDischargeAmountSinceCharge = 0;
        this.mDischargeAmountScreenOn = 0;
        this.mDischargeAmountScreenOnSinceCharge = 0;
        this.mDischargeAmountScreenOff = 0;
        this.mDischargeAmountScreenOffSinceCharge = 0;
        this.mDischargeAmountScreenDoze = 0;
        this.mDischargeAmountScreenDozeSinceCharge = 0;
        this.mDischargeStepTracker.init();
        this.mChargeStepTracker.init();
        this.mDischargeScreenOffCounter.reset(false);
        this.mDischargeScreenDozeCounter.reset(false);
        this.mDischargeLightDozeCounter.reset(false);
        this.mDischargeDeepDozeCounter.reset(false);
        this.mDischargeCounter.reset(false);
    }

    public void resetAllStatsCmdLocked() {
        resetAllStatsLocked();
        long uptimeMillis = this.mClocks.uptimeMillis();
        long j = uptimeMillis * 1000;
        long elapsedRealtime = this.mClocks.elapsedRealtime();
        long j2 = 1000 * elapsedRealtime;
        this.mDischargeStartLevel = this.mHistoryCur.batteryLevel;
        pullPendingStateUpdatesLocked();
        addHistoryRecordLocked(elapsedRealtime, uptimeMillis);
        byte b = this.mHistoryCur.batteryLevel;
        this.mCurrentBatteryLevel = b;
        this.mDischargePlugLevel = b;
        this.mDischargeUnplugLevel = b;
        this.mDischargeCurrentLevel = b;
        this.mOnBatteryTimeBase.reset(j, j2);
        this.mOnBatteryScreenOffTimeBase.reset(j, j2);
        if ((this.mHistoryCur.states & 524288) == 0) {
            if (isScreenOn(this.mScreenState)) {
                this.mDischargeScreenOnUnplugLevel = this.mHistoryCur.batteryLevel;
                this.mDischargeScreenDozeUnplugLevel = 0;
                this.mDischargeScreenOffUnplugLevel = 0;
            } else if (isScreenDoze(this.mScreenState)) {
                this.mDischargeScreenOnUnplugLevel = 0;
                this.mDischargeScreenDozeUnplugLevel = this.mHistoryCur.batteryLevel;
                this.mDischargeScreenOffUnplugLevel = 0;
            } else {
                this.mDischargeScreenOnUnplugLevel = 0;
                this.mDischargeScreenDozeUnplugLevel = 0;
                this.mDischargeScreenOffUnplugLevel = this.mHistoryCur.batteryLevel;
            }
            this.mDischargeAmountScreenOn = 0;
            this.mDischargeAmountScreenOff = 0;
            this.mDischargeAmountScreenDoze = 0;
        }
        initActiveHistoryEventsLocked(elapsedRealtime, uptimeMillis);
    }

    private void resetAllStatsLocked() {
        long uptimeMillis = this.mClocks.uptimeMillis();
        long elapsedRealtime = this.mClocks.elapsedRealtime();
        this.mStartCount = 0;
        long j = uptimeMillis * 1000;
        long j2 = 1000 * elapsedRealtime;
        initTimes(j, j2);
        this.mScreenOnTimer.reset(false);
        this.mScreenDozeTimer.reset(false);
        for (int i = 0; i < 5; i++) {
            this.mScreenBrightnessTimer[i].reset(false);
        }
        if (this.mPowerProfile != null) {
            this.mEstimatedBatteryCapacity = (int) this.mPowerProfile.getBatteryCapacity();
        } else {
            this.mEstimatedBatteryCapacity = -1;
        }
        this.mMinLearnedBatteryCapacity = -1;
        this.mMaxLearnedBatteryCapacity = -1;
        this.mInteractiveTimer.reset(false);
        this.mPowerSaveModeEnabledTimer.reset(false);
        this.mLastIdleTimeStart = elapsedRealtime;
        this.mLongestLightIdleTime = 0L;
        this.mLongestFullIdleTime = 0L;
        this.mDeviceIdleModeLightTimer.reset(false);
        this.mDeviceIdleModeFullTimer.reset(false);
        this.mDeviceLightIdlingTimer.reset(false);
        this.mDeviceIdlingTimer.reset(false);
        this.mPhoneOnTimer.reset(false);
        this.mAudioOnTimer.reset(false);
        this.mVideoOnTimer.reset(false);
        this.mFlashlightOnTimer.reset(false);
        this.mCameraOnTimer.reset(false);
        this.mBluetoothScanTimer.reset(false);
        for (int i2 = 0; i2 < 5; i2++) {
            this.mPhoneSignalStrengthsTimer[i2].reset(false);
        }
        this.mPhoneSignalScanningTimer.reset(false);
        for (int i3 = 0; i3 < 21; i3++) {
            this.mPhoneDataConnectionsTimer[i3].reset(false);
        }
        for (int i4 = 0; i4 < 10; i4++) {
            this.mNetworkByteActivityCounters[i4].reset(false);
            this.mNetworkPacketActivityCounters[i4].reset(false);
        }
        this.mMobileRadioActiveTimer.reset(false);
        this.mMobileRadioActivePerAppTimer.reset(false);
        this.mMobileRadioActiveAdjustedTime.reset(false);
        this.mMobileRadioActiveUnknownTime.reset(false);
        this.mMobileRadioActiveUnknownCount.reset(false);
        this.mWifiOnTimer.reset(false);
        this.mGlobalWifiRunningTimer.reset(false);
        for (int i5 = 0; i5 < 8; i5++) {
            this.mWifiStateTimer[i5].reset(false);
        }
        for (int i6 = 0; i6 < 13; i6++) {
            this.mWifiSupplStateTimer[i6].reset(false);
        }
        for (int i7 = 0; i7 < 5; i7++) {
            this.mWifiSignalStrengthsTimer[i7].reset(false);
        }
        this.mWifiMulticastWakelockTimer.reset(false);
        this.mWifiActiveTimer.reset(false);
        this.mWifiActivity.reset(false);
        for (int i8 = 0; i8 < 2; i8++) {
            this.mGpsSignalQualityTimer[i8].reset(false);
        }
        this.mBluetoothActivity.reset(false);
        this.mModemActivity.reset(false);
        this.mUnpluggedNumConnectivityChange = 0;
        this.mLoadedNumConnectivityChange = 0;
        this.mNumConnectivityChange = 0;
        int i9 = 0;
        while (i9 < this.mUidStats.size()) {
            if (this.mUidStats.valueAt(i9).reset(j, j2)) {
                this.mUidStats.remove(this.mUidStats.keyAt(i9));
                i9--;
            }
            i9++;
        }
        if (this.mRpmStats.size() > 0) {
            Iterator<SamplingTimer> it = this.mRpmStats.values().iterator();
            while (it.hasNext()) {
                this.mOnBatteryTimeBase.remove(it.next());
            }
            this.mRpmStats.clear();
        }
        if (this.mScreenOffRpmStats.size() > 0) {
            Iterator<SamplingTimer> it2 = this.mScreenOffRpmStats.values().iterator();
            while (it2.hasNext()) {
                this.mOnBatteryScreenOffTimeBase.remove(it2.next());
            }
            this.mScreenOffRpmStats.clear();
        }
        if (this.mKernelWakelockStats.size() > 0) {
            Iterator<SamplingTimer> it3 = this.mKernelWakelockStats.values().iterator();
            while (it3.hasNext()) {
                this.mOnBatteryScreenOffTimeBase.remove(it3.next());
            }
            this.mKernelWakelockStats.clear();
        }
        if (this.mKernelMemoryStats.size() > 0) {
            for (int i10 = 0; i10 < this.mKernelMemoryStats.size(); i10++) {
                this.mOnBatteryTimeBase.remove(this.mKernelMemoryStats.valueAt(i10));
            }
            this.mKernelMemoryStats.clear();
        }
        if (this.mWakeupReasonStats.size() > 0) {
            Iterator<SamplingTimer> it4 = this.mWakeupReasonStats.values().iterator();
            while (it4.hasNext()) {
                this.mOnBatteryTimeBase.remove(it4.next());
            }
            this.mWakeupReasonStats.clear();
        }
        this.mLastHistoryStepDetails = null;
        this.mLastStepCpuSystemTime = 0L;
        this.mLastStepCpuUserTime = 0L;
        this.mCurStepCpuSystemTime = 0L;
        this.mCurStepCpuUserTime = 0L;
        this.mCurStepCpuUserTime = 0L;
        this.mLastStepCpuUserTime = 0L;
        this.mCurStepCpuSystemTime = 0L;
        this.mLastStepCpuSystemTime = 0L;
        this.mCurStepStatUserTime = 0L;
        this.mLastStepStatUserTime = 0L;
        this.mCurStepStatSystemTime = 0L;
        this.mLastStepStatSystemTime = 0L;
        this.mCurStepStatIOWaitTime = 0L;
        this.mLastStepStatIOWaitTime = 0L;
        this.mCurStepStatIrqTime = 0L;
        this.mLastStepStatIrqTime = 0L;
        this.mCurStepStatSoftIrqTime = 0L;
        this.mLastStepStatSoftIrqTime = 0L;
        this.mCurStepStatIdleTime = 0L;
        this.mLastStepStatIdleTime = 0L;
        this.mNumAllUidCpuTimeReads = 0;
        this.mNumUidsRemoved = 0;
        initDischarge();
        clearHistoryLocked();
        this.mHandler.sendEmptyMessage(4);
    }

    private void initActiveHistoryEventsLocked(long j, long j2) {
        HashMap stateForEvent;
        for (int i = 0; i < 22; i++) {
            if ((this.mRecordAllHistory || i != 1) && (stateForEvent = this.mActiveEvents.getStateForEvent(i)) != null) {
                for (Map.Entry entry : stateForEvent.entrySet()) {
                    SparseIntArray sparseIntArray = (SparseIntArray) entry.getValue();
                    for (int i2 = 0; i2 < sparseIntArray.size(); i2++) {
                        addHistoryEventLocked(j, j2, i, (String) entry.getKey(), sparseIntArray.keyAt(i2));
                    }
                }
            }
        }
    }

    void updateDischargeScreenLevelsLocked(int i, int i2) {
        updateOldDischargeScreenLevelLocked(i);
        updateNewDischargeScreenLevelLocked(i2);
    }

    private void updateOldDischargeScreenLevelLocked(int i) {
        int i2;
        if (isScreenOn(i)) {
            int i3 = this.mDischargeScreenOnUnplugLevel - this.mDischargeCurrentLevel;
            if (i3 > 0) {
                this.mDischargeAmountScreenOn += i3;
                this.mDischargeAmountScreenOnSinceCharge += i3;
                return;
            }
            return;
        }
        if (isScreenDoze(i)) {
            int i4 = this.mDischargeScreenDozeUnplugLevel - this.mDischargeCurrentLevel;
            if (i4 > 0) {
                this.mDischargeAmountScreenDoze += i4;
                this.mDischargeAmountScreenDozeSinceCharge += i4;
                return;
            }
            return;
        }
        if (!isScreenOff(i) || (i2 = this.mDischargeScreenOffUnplugLevel - this.mDischargeCurrentLevel) <= 0) {
            return;
        }
        this.mDischargeAmountScreenOff += i2;
        this.mDischargeAmountScreenOffSinceCharge += i2;
    }

    private void updateNewDischargeScreenLevelLocked(int i) {
        if (isScreenOn(i)) {
            this.mDischargeScreenOnUnplugLevel = this.mDischargeCurrentLevel;
            this.mDischargeScreenOffUnplugLevel = 0;
            this.mDischargeScreenDozeUnplugLevel = 0;
        } else if (isScreenDoze(i)) {
            this.mDischargeScreenOnUnplugLevel = 0;
            this.mDischargeScreenDozeUnplugLevel = this.mDischargeCurrentLevel;
            this.mDischargeScreenOffUnplugLevel = 0;
        } else if (isScreenOff(i)) {
            this.mDischargeScreenOnUnplugLevel = 0;
            this.mDischargeScreenDozeUnplugLevel = 0;
            this.mDischargeScreenOffUnplugLevel = this.mDischargeCurrentLevel;
        }
    }

    public void pullPendingStateUpdatesLocked() {
        if (this.mOnBatteryInternal) {
            updateDischargeScreenLevelsLocked(this.mScreenState, this.mScreenState);
        }
    }

    private NetworkStats readNetworkStatsLocked(String[] strArr) {
        try {
            if (ArrayUtils.isEmpty(strArr)) {
                return null;
            }
            return this.mNetworkStatsFactory.readNetworkStatsDetail(-1, strArr, 0, (NetworkStats) this.mNetworkStatsPool.acquire());
        } catch (IOException unused) {
            Slog.e(TAG, "failed to read network stats for ifaces: " + Arrays.toString(strArr));
            return null;
        }
    }

    public void updateWifiState(WifiActivityEnergyInfo wifiActivityEnergyInfo) {
        NetworkStats networkStats;
        long j;
        long j2;
        long j3;
        SparseLongArray sparseLongArray;
        int i;
        long j4;
        long j5;
        long j6;
        long j7;
        long j8;
        BatteryStatsImpl batteryStatsImpl = this;
        synchronized (batteryStatsImpl.mWifiNetworkLock) {
            NetworkStats readNetworkStatsLocked = batteryStatsImpl.readNetworkStatsLocked(batteryStatsImpl.mWifiIfaces);
            networkStats = null;
            if (readNetworkStatsLocked != null) {
                networkStats = NetworkStats.subtract(readNetworkStatsLocked, batteryStatsImpl.mLastWifiNetworkStats, (NetworkStats.NonMonotonicObserver) null, (Object) null, (NetworkStats) batteryStatsImpl.mNetworkStatsPool.acquire());
                batteryStatsImpl.mNetworkStatsPool.release(batteryStatsImpl.mLastWifiNetworkStats);
                batteryStatsImpl.mLastWifiNetworkStats = readNetworkStatsLocked;
            }
        }
        synchronized (this) {
            try {
                if (!batteryStatsImpl.mOnBatteryInternal) {
                    if (networkStats != null) {
                        batteryStatsImpl.mNetworkStatsPool.release(networkStats);
                    }
                    return;
                }
                long elapsedRealtime = batteryStatsImpl.mClocks.elapsedRealtime();
                SparseLongArray sparseLongArray2 = new SparseLongArray();
                SparseLongArray sparseLongArray3 = new SparseLongArray();
                long j9 = 0;
                if (networkStats != null) {
                    NetworkStats.Entry entry = new NetworkStats.Entry();
                    int size = networkStats.size();
                    j2 = 0;
                    j3 = 0;
                    NetworkStats.Entry entry2 = entry;
                    int i2 = 0;
                    while (i2 < size) {
                        entry2 = networkStats.getValues(i2, entry2);
                        long j10 = elapsedRealtime;
                        if (entry2.rxBytes != j9 || entry2.txBytes != j9) {
                            Uid uidStatsLocked = batteryStatsImpl.getUidStatsLocked(batteryStatsImpl.mapUid(entry2.uid));
                            if (entry2.rxBytes != j9) {
                                uidStatsLocked.noteNetworkActivityLocked(2, entry2.rxBytes, entry2.rxPackets);
                                if (entry2.set == 0) {
                                    uidStatsLocked.noteNetworkActivityLocked(8, entry2.rxBytes, entry2.rxPackets);
                                }
                                batteryStatsImpl.mNetworkByteActivityCounters[2].addCountLocked(entry2.rxBytes);
                                batteryStatsImpl.mNetworkPacketActivityCounters[2].addCountLocked(entry2.rxPackets);
                                sparseLongArray2.put(uidStatsLocked.getUid(), entry2.rxPackets);
                                j3 += entry2.rxPackets;
                            }
                            if (entry2.txBytes != 0) {
                                uidStatsLocked.noteNetworkActivityLocked(3, entry2.txBytes, entry2.txPackets);
                                if (entry2.set == 0) {
                                    uidStatsLocked.noteNetworkActivityLocked(9, entry2.txBytes, entry2.txPackets);
                                }
                                batteryStatsImpl.mNetworkByteActivityCounters[3].addCountLocked(entry2.txBytes);
                                batteryStatsImpl.mNetworkPacketActivityCounters[3].addCountLocked(entry2.txPackets);
                                sparseLongArray3.put(uidStatsLocked.getUid(), entry2.txPackets);
                                j2 += entry2.txPackets;
                            }
                        }
                        i2++;
                        elapsedRealtime = j10;
                        j9 = 0;
                    }
                    j = elapsedRealtime;
                    batteryStatsImpl.mNetworkStatsPool.release(networkStats);
                } else {
                    j = elapsedRealtime;
                    j2 = 0;
                    j3 = 0;
                }
                if (wifiActivityEnergyInfo != null) {
                    batteryStatsImpl.mHasWifiReporting = true;
                    long controllerTxTimeMillis = wifiActivityEnergyInfo.getControllerTxTimeMillis();
                    long controllerRxTimeMillis = wifiActivityEnergyInfo.getControllerRxTimeMillis();
                    wifiActivityEnergyInfo.getControllerScanTimeMillis();
                    long controllerIdleTimeMillis = wifiActivityEnergyInfo.getControllerIdleTimeMillis();
                    int size2 = batteryStatsImpl.mUidStats.size();
                    int i3 = 0;
                    long j11 = 0;
                    long j12 = 0;
                    while (i3 < size2) {
                        Uid valueAt = batteryStatsImpl.mUidStats.valueAt(i3);
                        long j13 = j3;
                        long j14 = j2;
                        long j15 = j * 1000;
                        j11 += valueAt.mWifiScanTimer.getTimeSinceMarkLocked(j15) / 1000;
                        j12 += valueAt.mFullWifiLockTimer.getTimeSinceMarkLocked(j15) / 1000;
                        i3++;
                        j3 = j13;
                        j2 = j14;
                    }
                    long j16 = j2;
                    long j17 = j3;
                    long j18 = controllerTxTimeMillis;
                    long j19 = controllerRxTimeMillis;
                    int i4 = 0;
                    while (i4 < size2) {
                        try {
                            Uid valueAt2 = batteryStatsImpl.mUidStats.valueAt(i4);
                            int i5 = size2;
                            SparseLongArray sparseLongArray4 = sparseLongArray2;
                            long j20 = j * 1000;
                            long timeSinceMarkLocked = valueAt2.mWifiScanTimer.getTimeSinceMarkLocked(j20) / 1000;
                            if (timeSinceMarkLocked > 0) {
                                sparseLongArray = sparseLongArray3;
                                i = i4;
                                j7 = j;
                                valueAt2.mWifiScanTimer.setMark(j7);
                                if (j11 > controllerRxTimeMillis) {
                                    j5 = controllerRxTimeMillis;
                                    j8 = (controllerRxTimeMillis * timeSinceMarkLocked) / j11;
                                } else {
                                    j5 = controllerRxTimeMillis;
                                    j8 = timeSinceMarkLocked;
                                }
                                if (j11 > controllerTxTimeMillis) {
                                    timeSinceMarkLocked = (timeSinceMarkLocked * controllerTxTimeMillis) / j11;
                                }
                                j4 = controllerTxTimeMillis;
                                long j21 = timeSinceMarkLocked;
                                ControllerActivityCounterImpl orCreateWifiControllerActivityLocked = valueAt2.getOrCreateWifiControllerActivityLocked();
                                j6 = controllerIdleTimeMillis;
                                orCreateWifiControllerActivityLocked.getRxTimeCounter().addCountLocked(j8);
                                orCreateWifiControllerActivityLocked.getTxTimeCounters()[0].addCountLocked(j21);
                                j19 -= j8;
                                j18 -= j21;
                            } else {
                                sparseLongArray = sparseLongArray3;
                                i = i4;
                                j4 = controllerTxTimeMillis;
                                j5 = controllerRxTimeMillis;
                                j6 = controllerIdleTimeMillis;
                                j7 = j;
                            }
                            long timeSinceMarkLocked2 = valueAt2.mFullWifiLockTimer.getTimeSinceMarkLocked(j20) / 1000;
                            if (timeSinceMarkLocked2 > 0) {
                                valueAt2.mFullWifiLockTimer.setMark(j7);
                                valueAt2.getOrCreateWifiControllerActivityLocked().getIdleTimeCounter().addCountLocked((timeSinceMarkLocked2 * j6) / j12);
                            }
                            j = j7;
                            size2 = i5;
                            sparseLongArray3 = sparseLongArray;
                            controllerRxTimeMillis = j5;
                            controllerTxTimeMillis = j4;
                            controllerIdleTimeMillis = j6;
                            batteryStatsImpl = this;
                            i4 = i + 1;
                            sparseLongArray2 = sparseLongArray4;
                        } catch (Throwable th) {
                            th = th;
                            throw th;
                        }
                    }
                    SparseLongArray sparseLongArray5 = sparseLongArray2;
                    SparseLongArray sparseLongArray6 = sparseLongArray3;
                    int i6 = 0;
                    while (i6 < sparseLongArray6.size()) {
                        SparseLongArray sparseLongArray7 = sparseLongArray6;
                        try {
                            getUidStatsLocked(sparseLongArray7.keyAt(i6)).getOrCreateWifiControllerActivityLocked().getTxTimeCounters()[0].addCountLocked((sparseLongArray7.valueAt(i6) * j18) / j16);
                            i6++;
                            sparseLongArray6 = sparseLongArray7;
                        } catch (Throwable th2) {
                            th = th2;
                            throw th;
                        }
                    }
                    int i7 = 0;
                    while (i7 < sparseLongArray5.size()) {
                        SparseLongArray sparseLongArray8 = sparseLongArray5;
                        getUidStatsLocked(sparseLongArray8.keyAt(i7)).getOrCreateWifiControllerActivityLocked().getRxTimeCounter().addCountLocked((sparseLongArray8.valueAt(i7) * j19) / j17);
                        i7++;
                        sparseLongArray5 = sparseLongArray8;
                    }
                    this.mWifiActivity.getRxTimeCounter().addCountLocked(wifiActivityEnergyInfo.getControllerRxTimeMillis());
                    this.mWifiActivity.getTxTimeCounters()[0].addCountLocked(wifiActivityEnergyInfo.getControllerTxTimeMillis());
                    this.mWifiActivity.getScanTimeCounter().addCountLocked(wifiActivityEnergyInfo.getControllerScanTimeMillis());
                    this.mWifiActivity.getIdleTimeCounter().addCountLocked(wifiActivityEnergyInfo.getControllerIdleTimeMillis());
                    double averagePower = this.mPowerProfile.getAveragePower(PowerProfile.POWER_WIFI_CONTROLLER_OPERATING_VOLTAGE) / 1000.0d;
                    if (averagePower != 0.0d) {
                        this.mWifiActivity.getPowerCounter().addCountLocked((long) (wifiActivityEnergyInfo.getControllerEnergyUsed() / averagePower));
                    }
                }
            } catch (Throwable th3) {
                th = th3;
            }
        }
    }

    private ModemActivityInfo getDeltaModemActivityInfo(ModemActivityInfo modemActivityInfo) {
        if (modemActivityInfo == null) {
            return null;
        }
        int[] iArr = new int[5];
        for (int i = 0; i < 5; i++) {
            iArr[i] = modemActivityInfo.getTxTimeMillis()[i] - this.mLastModemActivityInfo.getTxTimeMillis()[i];
        }
        ModemActivityInfo modemActivityInfo2 = new ModemActivityInfo(modemActivityInfo.getTimestamp(), modemActivityInfo.getSleepTimeMillis() - this.mLastModemActivityInfo.getSleepTimeMillis(), modemActivityInfo.getIdleTimeMillis() - this.mLastModemActivityInfo.getIdleTimeMillis(), iArr, modemActivityInfo.getRxTimeMillis() - this.mLastModemActivityInfo.getRxTimeMillis(), modemActivityInfo.getEnergyUsed() - this.mLastModemActivityInfo.getEnergyUsed());
        this.mLastModemActivityInfo = modemActivityInfo;
        return modemActivityInfo2;
    }

    public void updateMobileRadioState(ModemActivityInfo modemActivityInfo) {
        NetworkStats networkStats;
        long j;
        ModemActivityInfo deltaModemActivityInfo = getDeltaModemActivityInfo(modemActivityInfo);
        addModemTxPowerToHistory(deltaModemActivityInfo);
        synchronized (this.mModemNetworkLock) {
            NetworkStats readNetworkStatsLocked = readNetworkStatsLocked(this.mModemIfaces);
            networkStats = null;
            if (readNetworkStatsLocked != null) {
                networkStats = NetworkStats.subtract(readNetworkStatsLocked, this.mLastModemNetworkStats, (NetworkStats.NonMonotonicObserver) null, (Object) null, (NetworkStats) this.mNetworkStatsPool.acquire());
                this.mNetworkStatsPool.release(this.mLastModemNetworkStats);
                this.mLastModemNetworkStats = readNetworkStatsLocked;
            }
        }
        synchronized (this) {
            if (!this.mOnBatteryInternal) {
                if (networkStats != null) {
                    this.mNetworkStatsPool.release(networkStats);
                }
                return;
            }
            if (deltaModemActivityInfo != null) {
                this.mHasModemReporting = true;
                this.mModemActivity.getIdleTimeCounter().addCountLocked(deltaModemActivityInfo.getIdleTimeMillis());
                this.mModemActivity.getSleepTimeCounter().addCountLocked(deltaModemActivityInfo.getSleepTimeMillis());
                this.mModemActivity.getRxTimeCounter().addCountLocked(deltaModemActivityInfo.getRxTimeMillis());
                for (int i = 0; i < 5; i++) {
                    this.mModemActivity.getTxTimeCounters()[i].addCountLocked(deltaModemActivityInfo.getTxTimeMillis()[i]);
                }
                if (this.mPowerProfile.getAveragePower(PowerProfile.POWER_MODEM_CONTROLLER_OPERATING_VOLTAGE) / 1000.0d != 0.0d) {
                    double sleepTimeMillis = (deltaModemActivityInfo.getSleepTimeMillis() * this.mPowerProfile.getAveragePower(PowerProfile.POWER_MODEM_CONTROLLER_SLEEP)) + (deltaModemActivityInfo.getIdleTimeMillis() * this.mPowerProfile.getAveragePower(PowerProfile.POWER_MODEM_CONTROLLER_IDLE)) + (deltaModemActivityInfo.getRxTimeMillis() * this.mPowerProfile.getAveragePower(PowerProfile.POWER_MODEM_CONTROLLER_RX));
                    int[] txTimeMillis = deltaModemActivityInfo.getTxTimeMillis();
                    double d = sleepTimeMillis;
                    for (int i2 = 0; i2 < Math.min(txTimeMillis.length, 5); i2++) {
                        d += txTimeMillis[i2] * this.mPowerProfile.getAveragePower(PowerProfile.POWER_MODEM_CONTROLLER_TX, i2);
                    }
                    this.mModemActivity.getPowerCounter().addCountLocked((long) d);
                }
            }
            long elapsedRealtime = this.mClocks.elapsedRealtime();
            long timeSinceMarkLocked = this.mMobileRadioActivePerAppTimer.getTimeSinceMarkLocked(1000 * elapsedRealtime);
            this.mMobileRadioActivePerAppTimer.setMark(elapsedRealtime);
            if (networkStats != null) {
                NetworkStats.Entry entry = new NetworkStats.Entry();
                int size = networkStats.size();
                long j2 = 0;
                NetworkStats.Entry entry2 = entry;
                long j3 = 0;
                long j4 = 0;
                int i3 = 0;
                while (i3 < size) {
                    entry2 = networkStats.getValues(i3, entry2);
                    int i4 = i3;
                    if (entry2.rxPackets != j2 || entry2.txPackets != j2) {
                        j3 += entry2.rxPackets;
                        j4 += entry2.txPackets;
                        Uid uidStatsLocked = getUidStatsLocked(mapUid(entry2.uid));
                        uidStatsLocked.noteNetworkActivityLocked(0, entry2.rxBytes, entry2.rxPackets);
                        uidStatsLocked.noteNetworkActivityLocked(1, entry2.txBytes, entry2.txPackets);
                        if (entry2.set == 0) {
                            uidStatsLocked.noteNetworkActivityLocked(6, entry2.rxBytes, entry2.rxPackets);
                            uidStatsLocked.noteNetworkActivityLocked(7, entry2.txBytes, entry2.txPackets);
                        }
                        this.mNetworkByteActivityCounters[0].addCountLocked(entry2.rxBytes);
                        this.mNetworkByteActivityCounters[1].addCountLocked(entry2.txBytes);
                        this.mNetworkPacketActivityCounters[0].addCountLocked(entry2.rxPackets);
                        this.mNetworkPacketActivityCounters[1].addCountLocked(entry2.txPackets);
                    }
                    i3 = i4 + 1;
                    j2 = 0;
                }
                long j5 = j3 + j4;
                long j6 = 0;
                if (j5 > 0) {
                    int i5 = 0;
                    while (i5 < size) {
                        entry2 = networkStats.getValues(i5, entry2);
                        NetworkStats networkStats2 = networkStats;
                        if (entry2.rxPackets == j6 && entry2.txPackets == j6) {
                            j = j3;
                        } else {
                            Uid uidStatsLocked2 = getUidStatsLocked(mapUid(entry2.uid));
                            j = j3;
                            long j7 = entry2.rxPackets + entry2.txPackets;
                            long j8 = (timeSinceMarkLocked * j7) / j5;
                            uidStatsLocked2.noteMobileRadioActiveTimeLocked(j8);
                            timeSinceMarkLocked -= j8;
                            j5 -= j7;
                            if (deltaModemActivityInfo != null) {
                                ControllerActivityCounterImpl orCreateModemControllerActivityLocked = uidStatsLocked2.getOrCreateModemControllerActivityLocked();
                                long j9 = 0;
                                if (j > 0) {
                                    if (entry2.rxPackets > 0) {
                                        orCreateModemControllerActivityLocked.getRxTimeCounter().addCountLocked((entry2.rxPackets * deltaModemActivityInfo.getRxTimeMillis()) / j);
                                    }
                                    j9 = 0;
                                }
                                if (j4 > j9 && entry2.txPackets > j9) {
                                    for (int i6 = 0; i6 < 5; i6++) {
                                        orCreateModemControllerActivityLocked.getTxTimeCounters()[i6].addCountLocked((entry2.txPackets * deltaModemActivityInfo.getTxTimeMillis()[i6]) / j4);
                                    }
                                }
                            }
                        }
                        i5++;
                        networkStats = networkStats2;
                        j3 = j;
                        j6 = 0;
                    }
                }
                NetworkStats networkStats3 = networkStats;
                if (timeSinceMarkLocked > j6) {
                    this.mMobileRadioActiveUnknownTime.addCountLocked(timeSinceMarkLocked);
                    this.mMobileRadioActiveUnknownCount.addCountLocked(1L);
                }
                this.mNetworkStatsPool.release(networkStats3);
            }
        }
    }

    private synchronized void addModemTxPowerToHistory(ModemActivityInfo modemActivityInfo) {
        if (modemActivityInfo == null) {
            return;
        }
        int[] txTimeMillis = modemActivityInfo.getTxTimeMillis();
        if (txTimeMillis != null && txTimeMillis.length == 5) {
            long elapsedRealtime = this.mClocks.elapsedRealtime();
            long uptimeMillis = this.mClocks.uptimeMillis();
            int i = 0;
            for (int i2 = 1; i2 < txTimeMillis.length; i2++) {
                if (txTimeMillis[i2] > txTimeMillis[i]) {
                    i = i2;
                }
            }
            if (i == 4) {
                if (!this.mIsCellularTxPowerHigh) {
                    this.mHistoryCur.states2 |= 524288;
                    addHistoryRecordLocked(elapsedRealtime, uptimeMillis);
                    this.mIsCellularTxPowerHigh = true;
                }
                return;
            }
            if (this.mIsCellularTxPowerHigh) {
                this.mHistoryCur.states2 &= -524289;
                addHistoryRecordLocked(elapsedRealtime, uptimeMillis);
                this.mIsCellularTxPowerHigh = false;
            }
        }
    }

    /* loaded from: /home/user/work/dex/classes3.dex */
    private final class BluetoothActivityInfoCache {
        long energy;
        long idleTimeMs;
        long rxTimeMs;
        long txTimeMs;
        SparseLongArray uidRxBytes;
        SparseLongArray uidTxBytes;

        private BluetoothActivityInfoCache() {
            this.uidRxBytes = new SparseLongArray();
            this.uidTxBytes = new SparseLongArray();
        }

        void set(BluetoothActivityEnergyInfo bluetoothActivityEnergyInfo) {
            this.idleTimeMs = bluetoothActivityEnergyInfo.getControllerIdleTimeMillis();
            this.rxTimeMs = bluetoothActivityEnergyInfo.getControllerRxTimeMillis();
            this.txTimeMs = bluetoothActivityEnergyInfo.getControllerTxTimeMillis();
            this.energy = bluetoothActivityEnergyInfo.getControllerEnergyUsed();
            if (bluetoothActivityEnergyInfo.getUidTraffic() != null) {
                for (UidTraffic uidTraffic : bluetoothActivityEnergyInfo.getUidTraffic()) {
                    this.uidRxBytes.put(uidTraffic.getUid(), uidTraffic.getRxBytes());
                    this.uidTxBytes.put(uidTraffic.getUid(), uidTraffic.getTxBytes());
                }
            }
        }
    }

    public void updateBluetoothStateLocked(BluetoothActivityEnergyInfo bluetoothActivityEnergyInfo) {
        long j;
        boolean z;
        long j2;
        long j3;
        if (bluetoothActivityEnergyInfo == null || !this.mOnBatteryInternal) {
            return;
        }
        this.mHasBluetoothReporting = true;
        long elapsedRealtime = this.mClocks.elapsedRealtime();
        long controllerRxTimeMillis = bluetoothActivityEnergyInfo.getControllerRxTimeMillis() - this.mLastBluetoothActivityInfo.rxTimeMs;
        long controllerTxTimeMillis = bluetoothActivityEnergyInfo.getControllerTxTimeMillis() - this.mLastBluetoothActivityInfo.txTimeMs;
        long controllerIdleTimeMillis = bluetoothActivityEnergyInfo.getControllerIdleTimeMillis() - this.mLastBluetoothActivityInfo.idleTimeMs;
        int size = this.mUidStats.size();
        long j4 = 0;
        for (int i = 0; i < size; i++) {
            Uid valueAt = this.mUidStats.valueAt(i);
            if (valueAt.mBluetoothScanTimer != null) {
                j4 += valueAt.mBluetoothScanTimer.getTimeSinceMarkLocked(elapsedRealtime * 1000) / 1000;
            }
        }
        boolean z2 = j4 > controllerRxTimeMillis;
        boolean z3 = j4 > controllerTxTimeMillis;
        long j5 = controllerRxTimeMillis;
        long j6 = controllerTxTimeMillis;
        int i2 = 0;
        while (i2 < size) {
            Uid valueAt2 = this.mUidStats.valueAt(i2);
            int i3 = size;
            if (valueAt2.mBluetoothScanTimer == null) {
                z = z2;
                j2 = elapsedRealtime;
                j = controllerIdleTimeMillis;
            } else {
                j = controllerIdleTimeMillis;
                long timeSinceMarkLocked = valueAt2.mBluetoothScanTimer.getTimeSinceMarkLocked(elapsedRealtime * 1000) / 1000;
                if (timeSinceMarkLocked > 0) {
                    valueAt2.mBluetoothScanTimer.setMark(elapsedRealtime);
                    if (z2) {
                        z = z2;
                        j2 = elapsedRealtime;
                        j3 = (controllerRxTimeMillis * timeSinceMarkLocked) / j4;
                    } else {
                        z = z2;
                        j2 = elapsedRealtime;
                        j3 = timeSinceMarkLocked;
                    }
                    if (z3) {
                        timeSinceMarkLocked = (timeSinceMarkLocked * controllerTxTimeMillis) / j4;
                    }
                    ControllerActivityCounterImpl orCreateBluetoothControllerActivityLocked = valueAt2.getOrCreateBluetoothControllerActivityLocked();
                    orCreateBluetoothControllerActivityLocked.getRxTimeCounter().addCountLocked(j3);
                    orCreateBluetoothControllerActivityLocked.getTxTimeCounters()[0].addCountLocked(timeSinceMarkLocked);
                    j5 -= j3;
                    j6 -= timeSinceMarkLocked;
                } else {
                    z = z2;
                    j2 = elapsedRealtime;
                }
            }
            i2++;
            size = i3;
            controllerIdleTimeMillis = j;
            elapsedRealtime = j2;
            z2 = z;
        }
        long j7 = controllerIdleTimeMillis;
        UidTraffic[] uidTraffic = bluetoothActivityEnergyInfo.getUidTraffic();
        int length = uidTraffic != null ? uidTraffic.length : 0;
        int i4 = 0;
        long j8 = 0;
        long j9 = 0;
        while (i4 < length) {
            UidTraffic uidTraffic2 = uidTraffic[i4];
            long j10 = controllerTxTimeMillis;
            long rxBytes = uidTraffic2.getRxBytes() - this.mLastBluetoothActivityInfo.uidRxBytes.get(uidTraffic2.getUid());
            long j11 = controllerRxTimeMillis;
            long txBytes = uidTraffic2.getTxBytes() - this.mLastBluetoothActivityInfo.uidTxBytes.get(uidTraffic2.getUid());
            this.mNetworkByteActivityCounters[4].addCountLocked(rxBytes);
            this.mNetworkByteActivityCounters[5].addCountLocked(txBytes);
            Uid uidStatsLocked = getUidStatsLocked(mapUid(uidTraffic2.getUid()));
            uidStatsLocked.noteNetworkActivityLocked(4, rxBytes, 0L);
            uidStatsLocked.noteNetworkActivityLocked(5, txBytes, 0L);
            j8 += rxBytes;
            j9 += txBytes;
            i4++;
            controllerTxTimeMillis = j10;
            controllerRxTimeMillis = j11;
        }
        long j12 = controllerRxTimeMillis;
        long j13 = controllerTxTimeMillis;
        if ((j9 != 0 || j8 != 0) && (j5 != 0 || j6 != 0)) {
            for (int i5 = 0; i5 < length; i5++) {
                UidTraffic uidTraffic3 = uidTraffic[i5];
                int uid = uidTraffic3.getUid();
                long rxBytes2 = uidTraffic3.getRxBytes() - this.mLastBluetoothActivityInfo.uidRxBytes.get(uid);
                long txBytes2 = uidTraffic3.getTxBytes() - this.mLastBluetoothActivityInfo.uidTxBytes.get(uid);
                ControllerActivityCounterImpl orCreateBluetoothControllerActivityLocked2 = getUidStatsLocked(mapUid(uid)).getOrCreateBluetoothControllerActivityLocked();
                if (j8 > 0 && rxBytes2 > 0) {
                    long j14 = (rxBytes2 * j5) / j8;
                    orCreateBluetoothControllerActivityLocked2.getRxTimeCounter().addCountLocked(j14);
                    j5 -= j14;
                }
                if (j9 > 0 && txBytes2 > 0) {
                    long j15 = (txBytes2 * j6) / j9;
                    orCreateBluetoothControllerActivityLocked2.getTxTimeCounters()[0].addCountLocked(j15);
                    j6 -= j15;
                }
            }
        }
        this.mBluetoothActivity.getRxTimeCounter().addCountLocked(j12);
        this.mBluetoothActivity.getTxTimeCounters()[0].addCountLocked(j13);
        this.mBluetoothActivity.getIdleTimeCounter().addCountLocked(j7);
        double averagePower = this.mPowerProfile.getAveragePower(PowerProfile.POWER_BLUETOOTH_CONTROLLER_OPERATING_VOLTAGE) / 1000.0d;
        if (averagePower != 0.0d) {
            this.mBluetoothActivity.getPowerCounter().addCountLocked((long) ((bluetoothActivityEnergyInfo.getControllerEnergyUsed() - this.mLastBluetoothActivityInfo.energy) / averagePower));
        }
        this.mLastBluetoothActivityInfo.set(bluetoothActivityEnergyInfo);
    }

    public void updateRpmStatsLocked() {
        if (this.mPlatformIdleStateCallback == null) {
            return;
        }
        long elapsedRealtime = SystemClock.elapsedRealtime();
        if (elapsedRealtime - this.mLastRpmStatsUpdateTimeMs >= 1000) {
            this.mPlatformIdleStateCallback.fillLowPowerStats(this.mTmpRpmStats);
            this.mLastRpmStatsUpdateTimeMs = elapsedRealtime;
        }
        for (Map.Entry<String, RpmStats.PowerStatePlatformSleepState> entry : this.mTmpRpmStats.mPlatformLowPowerStats.entrySet()) {
            String key = entry.getKey();
            getRpmTimerLocked(key).update(entry.getValue().mTimeMs * 1000, entry.getValue().mCount);
            for (Map.Entry<String, RpmStats.PowerStateElement> entry2 : entry.getValue().mVoters.entrySet()) {
                getRpmTimerLocked(key + "." + entry2.getKey()).update(entry2.getValue().mTimeMs * 1000, entry2.getValue().mCount);
            }
        }
        for (Map.Entry<String, RpmStats.PowerStateSubsystem> entry3 : this.mTmpRpmStats.mSubsystemLowPowerStats.entrySet()) {
            String key2 = entry3.getKey();
            for (Map.Entry<String, RpmStats.PowerStateElement> entry4 : entry3.getValue().mStates.entrySet()) {
                getRpmTimerLocked(key2 + "." + entry4.getKey()).update(entry4.getValue().mTimeMs * 1000, entry4.getValue().mCount);
            }
        }
    }

    public void updateKernelWakelocksLocked() {
        KernelWakelockStats readKernelWakelockStats = this.mKernelWakelockReader.readKernelWakelockStats(this.mTmpWakelockStats);
        if (readKernelWakelockStats == null) {
            Slog.w(TAG, "Couldn't get kernel wake lock stats");
            return;
        }
        for (Map.Entry<String, KernelWakelockStats.Entry> entry : readKernelWakelockStats.entrySet()) {
            String key = entry.getKey();
            KernelWakelockStats.Entry value = entry.getValue();
            SamplingTimer samplingTimer = this.mKernelWakelockStats.get(key);
            if (samplingTimer == null) {
                samplingTimer = new SamplingTimer(this.mClocks, this.mOnBatteryScreenOffTimeBase);
                this.mKernelWakelockStats.put(key, samplingTimer);
            }
            samplingTimer.update(value.mTotalTime, value.mCount);
            samplingTimer.setUpdateVersion(value.mVersion);
        }
        int i = 0;
        Iterator<Map.Entry<String, SamplingTimer>> it = this.mKernelWakelockStats.entrySet().iterator();
        while (it.hasNext()) {
            SamplingTimer value2 = it.next().getValue();
            if (value2.getUpdateVersion() != readKernelWakelockStats.kernelWakelockVersion) {
                value2.endSample();
                i++;
            }
        }
        if (readKernelWakelockStats.isEmpty()) {
            Slog.wtf(TAG, "All kernel wakelocks had time of zero");
        }
        if (i == this.mKernelWakelockStats.size()) {
            Slog.wtf(TAG, "All kernel wakelocks were set stale. new version=" + readKernelWakelockStats.kernelWakelockVersion);
        }
    }

    public void updateKernelMemoryBandwidthLocked() {
        SamplingTimer samplingTimer;
        this.mKernelMemoryBandwidthStats.updateStats();
        LongSparseLongArray bandwidthEntries = this.mKernelMemoryBandwidthStats.getBandwidthEntries();
        int size = bandwidthEntries.size();
        for (int i = 0; i < size; i++) {
            int indexOfKey = this.mKernelMemoryStats.indexOfKey(bandwidthEntries.keyAt(i));
            if (indexOfKey >= 0) {
                samplingTimer = this.mKernelMemoryStats.valueAt(indexOfKey);
            } else {
                samplingTimer = new SamplingTimer(this.mClocks, this.mOnBatteryTimeBase);
                this.mKernelMemoryStats.put(bandwidthEntries.keyAt(i), samplingTimer);
            }
            samplingTimer.update(bandwidthEntries.valueAt(i), 1);
        }
    }

    public boolean isOnBatteryLocked() {
        return this.mOnBatteryTimeBase.isRunning();
    }

    public boolean isOnBatteryScreenOffLocked() {
        return this.mOnBatteryScreenOffTimeBase.isRunning();
    }

    @GuardedBy("this")
    public void updateCpuTimeLocked(boolean z, boolean z2) {
        ArrayList<StopwatchTimer> arrayList;
        if (this.mPowerProfile == null) {
            return;
        }
        if (this.mCpuFreqs == null) {
            this.mCpuFreqs = this.mKernelUidCpuFreqTimeReader.readFreqs(this.mPowerProfile);
        }
        if (z2) {
            arrayList = new ArrayList<>();
            for (int size = this.mPartialTimers.size() - 1; size >= 0; size--) {
                StopwatchTimer stopwatchTimer = this.mPartialTimers.get(size);
                if (stopwatchTimer.mInList && stopwatchTimer.mUid != null && stopwatchTimer.mUid.mUid != 1000) {
                    arrayList.add(stopwatchTimer);
                }
            }
        } else {
            arrayList = null;
        }
        markPartialTimersAsEligible();
        if (!z) {
            this.mKernelUidCpuTimeReader.readDelta(null);
            this.mKernelUidCpuFreqTimeReader.readDelta(null);
            this.mNumAllUidCpuTimeReads += 2;
            if (this.mConstants.TRACK_CPU_ACTIVE_CLUSTER_TIME) {
                this.mKernelUidCpuActiveTimeReader.readDelta(null);
                this.mKernelUidCpuClusterTimeReader.readDelta(null);
                this.mNumAllUidCpuTimeReads += 2;
            }
            for (int length = this.mKernelCpuSpeedReaders.length - 1; length >= 0; length--) {
                this.mKernelCpuSpeedReaders[length].readDelta();
            }
            return;
        }
        this.mUserInfoProvider.refreshUserIds();
        SparseLongArray sparseLongArray = this.mKernelUidCpuFreqTimeReader.perClusterTimesAvailable() ? null : new SparseLongArray();
        readKernelUidCpuTimesLocked(arrayList, sparseLongArray, z);
        if (sparseLongArray != null) {
            updateClusterSpeedTimes(sparseLongArray, z);
        }
        readKernelUidCpuFreqTimesLocked(arrayList, z, z2);
        this.mNumAllUidCpuTimeReads += 2;
        if (this.mConstants.TRACK_CPU_ACTIVE_CLUSTER_TIME) {
            readKernelUidCpuActiveTimesLocked(z);
            readKernelUidCpuClusterTimesLocked(z);
            this.mNumAllUidCpuTimeReads += 2;
        }
    }

    @VisibleForTesting
    public void markPartialTimersAsEligible() {
        int i;
        if (ArrayUtils.referenceEquals(this.mPartialTimers, this.mLastPartialTimers)) {
            for (int size = this.mPartialTimers.size() - 1; size >= 0; size--) {
                this.mPartialTimers.get(size).mInList = true;
            }
            return;
        }
        int size2 = this.mLastPartialTimers.size() - 1;
        while (true) {
            if (size2 < 0) {
                break;
            }
            this.mLastPartialTimers.get(size2).mInList = false;
            size2--;
        }
        this.mLastPartialTimers.clear();
        int size3 = this.mPartialTimers.size();
        for (i = 0; i < size3; i++) {
            StopwatchTimer stopwatchTimer = this.mPartialTimers.get(i);
            stopwatchTimer.mInList = true;
            this.mLastPartialTimers.add(stopwatchTimer);
        }
    }

    @VisibleForTesting
    public void updateClusterSpeedTimes(SparseLongArray sparseLongArray, boolean z) {
        BatteryStatsImpl batteryStatsImpl = this;
        SparseLongArray sparseLongArray2 = sparseLongArray;
        long[][] jArr = new long[batteryStatsImpl.mKernelCpuSpeedReaders.length];
        long j = 0;
        for (int i = 0; i < batteryStatsImpl.mKernelCpuSpeedReaders.length; i++) {
            jArr[i] = batteryStatsImpl.mKernelCpuSpeedReaders[i].readDelta();
            if (jArr[i] != null) {
                for (int length = jArr[i].length - 1; length >= 0; length--) {
                    j += jArr[i][length];
                }
            }
        }
        if (j != 0) {
            int size = sparseLongArray.size();
            int i2 = 0;
            while (i2 < size) {
                Uid uidStatsLocked = batteryStatsImpl.getUidStatsLocked(sparseLongArray2.keyAt(i2));
                long valueAt = sparseLongArray2.valueAt(i2);
                int numCpuClusters = batteryStatsImpl.mPowerProfile.getNumCpuClusters();
                if (uidStatsLocked.mCpuClusterSpeedTimesUs == null || uidStatsLocked.mCpuClusterSpeedTimesUs.length != numCpuClusters) {
                    uidStatsLocked.mCpuClusterSpeedTimesUs = new LongSamplingCounter[numCpuClusters];
                }
                int i3 = 0;
                while (i3 < jArr.length) {
                    int length2 = jArr[i3].length;
                    if (uidStatsLocked.mCpuClusterSpeedTimesUs[i3] == null || length2 != uidStatsLocked.mCpuClusterSpeedTimesUs[i3].length) {
                        uidStatsLocked.mCpuClusterSpeedTimesUs[i3] = new LongSamplingCounter[length2];
                    }
                    LongSamplingCounter[] longSamplingCounterArr = uidStatsLocked.mCpuClusterSpeedTimesUs[i3];
                    int i4 = 0;
                    while (i4 < length2) {
                        if (longSamplingCounterArr[i4] == null) {
                            longSamplingCounterArr[i4] = new LongSamplingCounter(batteryStatsImpl.mOnBatteryTimeBase);
                        }
                        longSamplingCounterArr[i4].addCountLocked((jArr[i3][i4] * valueAt) / j, z);
                        i4++;
                        batteryStatsImpl = this;
                    }
                    i3++;
                    batteryStatsImpl = this;
                }
                i2++;
                batteryStatsImpl = this;
                sparseLongArray2 = sparseLongArray;
            }
        }
    }

    @VisibleForTesting
    public void readKernelUidCpuTimesLocked(ArrayList<StopwatchTimer> arrayList, final SparseLongArray sparseLongArray, final boolean z) {
        long j = 0;
        this.mTempTotalCpuSystemTimeUs = 0L;
        this.mTempTotalCpuUserTimeUs = 0L;
        int i = 0;
        final int size = arrayList == null ? 0 : arrayList.size();
        long uptimeMillis = this.mClocks.uptimeMillis();
        this.mKernelUidCpuTimeReader.readDelta(new KernelUidCpuTimeReader.Callback() { // from class: com.android.internal.os.-$$Lambda$BatteryStatsImpl$cVkGM5pv4uMLFgnMwqPRDhEl5a0
            @Override // com.android.internal.os.KernelUidCpuTimeReader.Callback
            public final void onUidCpuTime(int i2, long j2, long j3) {
                BatteryStatsImpl.lambda$readKernelUidCpuTimesLocked$0(BatteryStatsImpl.this, size, z, sparseLongArray, i2, j2, j3);
            }
        });
        long uptimeMillis2 = this.mClocks.uptimeMillis() - uptimeMillis;
        if (uptimeMillis2 >= 100) {
            Slog.d(TAG, "Reading cpu stats took " + uptimeMillis2 + "ms");
        }
        if (size > 0) {
            this.mTempTotalCpuUserTimeUs = (this.mTempTotalCpuUserTimeUs * 50) / 100;
            this.mTempTotalCpuSystemTimeUs = (this.mTempTotalCpuSystemTimeUs * 50) / 100;
            while (i < size) {
                StopwatchTimer stopwatchTimer = arrayList.get(i);
                long j2 = size - i;
                int i2 = (int) (this.mTempTotalCpuUserTimeUs / j2);
                int i3 = (int) (this.mTempTotalCpuSystemTimeUs / j2);
                long j3 = i2;
                stopwatchTimer.mUid.mUserCpuTime.addCountLocked(j3, z);
                long j4 = i3;
                stopwatchTimer.mUid.mSystemCpuTime.addCountLocked(j4, z);
                if (sparseLongArray != null) {
                    int uid = stopwatchTimer.mUid.getUid();
                    sparseLongArray.put(uid, sparseLongArray.get(uid, j) + j3 + j4);
                }
                stopwatchTimer.mUid.getProcessStatsLocked("*wakelock*").addCpuTimeLocked(i2 / 1000, i3 / 1000, z);
                this.mTempTotalCpuUserTimeUs -= j3;
                this.mTempTotalCpuSystemTimeUs -= j4;
                i++;
                j = 0;
            }
        }
    }

    public static /* synthetic */ void lambda$readKernelUidCpuTimesLocked$0(BatteryStatsImpl batteryStatsImpl, int i, boolean z, SparseLongArray sparseLongArray, int i2, long j, long j2) {
        int mapUid = batteryStatsImpl.mapUid(i2);
        if (Process.isIsolated(mapUid)) {
            batteryStatsImpl.mKernelUidCpuTimeReader.removeUid(mapUid);
            Slog.d(TAG, "Got readings for an isolated uid with no mapping: " + mapUid);
            return;
        }
        if (!batteryStatsImpl.mUserInfoProvider.exists(UserHandle.getUserId(mapUid))) {
            Slog.d(TAG, "Got readings for an invalid user's uid " + mapUid);
            batteryStatsImpl.mKernelUidCpuTimeReader.removeUid(mapUid);
            return;
        }
        Uid uidStatsLocked = batteryStatsImpl.getUidStatsLocked(mapUid);
        batteryStatsImpl.mTempTotalCpuUserTimeUs += j;
        batteryStatsImpl.mTempTotalCpuSystemTimeUs += j2;
        if (i > 0) {
            j = (j * 50) / 100;
            j2 = (j2 * 50) / 100;
        }
        uidStatsLocked.mUserCpuTime.addCountLocked(j, z);
        uidStatsLocked.mSystemCpuTime.addCountLocked(j2, z);
        if (sparseLongArray != null) {
            sparseLongArray.put(uidStatsLocked.getUid(), j + j2);
        }
    }

    @VisibleForTesting
    public void readKernelUidCpuFreqTimesLocked(ArrayList<StopwatchTimer> arrayList, final boolean z, final boolean z2) {
        final boolean perClusterTimesAvailable = this.mKernelUidCpuFreqTimeReader.perClusterTimesAvailable();
        int size = arrayList == null ? 0 : arrayList.size();
        final int numCpuClusters = this.mPowerProfile.getNumCpuClusters();
        this.mWakeLockAllocationsUs = null;
        long uptimeMillis = this.mClocks.uptimeMillis();
        final int i = size;
        this.mKernelUidCpuFreqTimeReader.readDelta(new KernelUidCpuFreqTimeReader.Callback() { // from class: com.android.internal.os.-$$Lambda$BatteryStatsImpl$qYIdEyLMO9XI4FHBl_g5LWknDZQ
            @Override // com.android.internal.os.KernelUidCpuFreqTimeReader.Callback
            public final void onUidCpuFreqTime(int i2, long[] jArr) {
                BatteryStatsImpl.lambda$readKernelUidCpuFreqTimesLocked$1(BatteryStatsImpl.this, z, z2, perClusterTimesAvailable, numCpuClusters, i, i2, jArr);
            }
        });
        long uptimeMillis2 = this.mClocks.uptimeMillis() - uptimeMillis;
        if (uptimeMillis2 >= 100) {
            Slog.d(TAG, "Reading cpu freq times took " + uptimeMillis2 + "ms");
        }
        if (this.mWakeLockAllocationsUs != null) {
            for (int i2 = 0; i2 < size; i2++) {
                Uid uid = arrayList.get(i2).mUid;
                if (uid.mCpuClusterSpeedTimesUs == null || uid.mCpuClusterSpeedTimesUs.length != numCpuClusters) {
                    uid.mCpuClusterSpeedTimesUs = new LongSamplingCounter[numCpuClusters];
                }
                for (int i3 = 0; i3 < numCpuClusters; i3++) {
                    int numSpeedStepsInCpuCluster = this.mPowerProfile.getNumSpeedStepsInCpuCluster(i3);
                    if (uid.mCpuClusterSpeedTimesUs[i3] == null || uid.mCpuClusterSpeedTimesUs[i3].length != numSpeedStepsInCpuCluster) {
                        uid.mCpuClusterSpeedTimesUs[i3] = new LongSamplingCounter[numSpeedStepsInCpuCluster];
                    }
                    LongSamplingCounter[] longSamplingCounterArr = uid.mCpuClusterSpeedTimesUs[i3];
                    for (int i4 = 0; i4 < numSpeedStepsInCpuCluster; i4++) {
                        if (longSamplingCounterArr[i4] == null) {
                            longSamplingCounterArr[i4] = new LongSamplingCounter(this.mOnBatteryTimeBase);
                        }
                        long j = this.mWakeLockAllocationsUs[i3][i4] / (size - i2);
                        longSamplingCounterArr[i4].addCountLocked(j, z);
                        long[] jArr = this.mWakeLockAllocationsUs[i3];
                        jArr[i4] = jArr[i4] - j;
                    }
                }
            }
        }
    }

    public static /* synthetic */ void lambda$readKernelUidCpuFreqTimesLocked$1(BatteryStatsImpl batteryStatsImpl, boolean z, boolean z2, boolean z3, int i, int i2, int i3, long[] jArr) {
        long j;
        int mapUid = batteryStatsImpl.mapUid(i3);
        if (Process.isIsolated(mapUid)) {
            batteryStatsImpl.mKernelUidCpuFreqTimeReader.removeUid(mapUid);
            Slog.d(TAG, "Got freq readings for an isolated uid with no mapping: " + mapUid);
            return;
        }
        if (!batteryStatsImpl.mUserInfoProvider.exists(UserHandle.getUserId(mapUid))) {
            Slog.d(TAG, "Got freq readings for an invalid user's uid " + mapUid);
            batteryStatsImpl.mKernelUidCpuFreqTimeReader.removeUid(mapUid);
            return;
        }
        Uid uidStatsLocked = batteryStatsImpl.getUidStatsLocked(mapUid);
        if (uidStatsLocked.mCpuFreqTimeMs == null || uidStatsLocked.mCpuFreqTimeMs.getSize() != jArr.length) {
            uidStatsLocked.mCpuFreqTimeMs = new LongSamplingCounterArray(batteryStatsImpl.mOnBatteryTimeBase);
        }
        uidStatsLocked.mCpuFreqTimeMs.addCountLocked(jArr, z);
        if (uidStatsLocked.mScreenOffCpuFreqTimeMs == null || uidStatsLocked.mScreenOffCpuFreqTimeMs.getSize() != jArr.length) {
            uidStatsLocked.mScreenOffCpuFreqTimeMs = new LongSamplingCounterArray(batteryStatsImpl.mOnBatteryScreenOffTimeBase);
        }
        uidStatsLocked.mScreenOffCpuFreqTimeMs.addCountLocked(jArr, z2);
        if (z3) {
            if (uidStatsLocked.mCpuClusterSpeedTimesUs == null || uidStatsLocked.mCpuClusterSpeedTimesUs.length != i) {
                uidStatsLocked.mCpuClusterSpeedTimesUs = new LongSamplingCounter[i];
            }
            if (i2 > 0 && batteryStatsImpl.mWakeLockAllocationsUs == null) {
                batteryStatsImpl.mWakeLockAllocationsUs = new long[i];
            }
            int i4 = 0;
            int i5 = 0;
            while (i4 < i) {
                int numSpeedStepsInCpuCluster = batteryStatsImpl.mPowerProfile.getNumSpeedStepsInCpuCluster(i4);
                if (uidStatsLocked.mCpuClusterSpeedTimesUs[i4] == null || uidStatsLocked.mCpuClusterSpeedTimesUs[i4].length != numSpeedStepsInCpuCluster) {
                    uidStatsLocked.mCpuClusterSpeedTimesUs[i4] = new LongSamplingCounter[numSpeedStepsInCpuCluster];
                }
                if (i2 > 0 && batteryStatsImpl.mWakeLockAllocationsUs[i4] == null) {
                    batteryStatsImpl.mWakeLockAllocationsUs[i4] = new long[numSpeedStepsInCpuCluster];
                }
                LongSamplingCounter[] longSamplingCounterArr = uidStatsLocked.mCpuClusterSpeedTimesUs[i4];
                int i6 = i5;
                for (int i7 = 0; i7 < numSpeedStepsInCpuCluster; i7++) {
                    if (longSamplingCounterArr[i7] == null) {
                        longSamplingCounterArr[i7] = new LongSamplingCounter(batteryStatsImpl.mOnBatteryTimeBase);
                    }
                    if (batteryStatsImpl.mWakeLockAllocationsUs != null) {
                        j = ((jArr[i6] * 1000) * 50) / 100;
                        long[] jArr2 = batteryStatsImpl.mWakeLockAllocationsUs[i4];
                        jArr2[i7] = jArr2[i7] + ((jArr[i6] * 1000) - j);
                    } else {
                        j = jArr[i6] * 1000;
                    }
                    longSamplingCounterArr[i7].addCountLocked(j, z);
                    i6++;
                }
                i4++;
                i5 = i6;
            }
        }
    }

    @VisibleForTesting
    public void readKernelUidCpuActiveTimesLocked(final boolean z) {
        long uptimeMillis = this.mClocks.uptimeMillis();
        this.mKernelUidCpuActiveTimeReader.readDelta(new KernelUidCpuActiveTimeReader.Callback() { // from class: com.android.internal.os.-$$Lambda$BatteryStatsImpl$mMCK0IbpOZu45KINuNCoRayjoDU
            @Override // com.android.internal.os.KernelUidCpuActiveTimeReader.Callback
            public final void onUidCpuActiveTime(int i, long j) {
                BatteryStatsImpl.lambda$readKernelUidCpuActiveTimesLocked$2(BatteryStatsImpl.this, z, i, j);
            }
        });
        long uptimeMillis2 = this.mClocks.uptimeMillis() - uptimeMillis;
        if (uptimeMillis2 >= 100) {
            Slog.d(TAG, "Reading cpu active times took " + uptimeMillis2 + "ms");
        }
    }

    public static /* synthetic */ void lambda$readKernelUidCpuActiveTimesLocked$2(BatteryStatsImpl batteryStatsImpl, boolean z, int i, long j) {
        int mapUid = batteryStatsImpl.mapUid(i);
        if (Process.isIsolated(mapUid)) {
            batteryStatsImpl.mKernelUidCpuActiveTimeReader.removeUid(mapUid);
            Slog.w(TAG, "Got active times for an isolated uid with no mapping: " + mapUid);
            return;
        }
        if (!batteryStatsImpl.mUserInfoProvider.exists(UserHandle.getUserId(mapUid))) {
            Slog.w(TAG, "Got active times for an invalid user's uid " + mapUid);
            batteryStatsImpl.mKernelUidCpuActiveTimeReader.removeUid(mapUid);
            return;
        }
        batteryStatsImpl.getUidStatsLocked(mapUid).mCpuActiveTimeMs.addCountLocked(j, z);
    }

    @VisibleForTesting
    public void readKernelUidCpuClusterTimesLocked(final boolean z) {
        long uptimeMillis = this.mClocks.uptimeMillis();
        this.mKernelUidCpuClusterTimeReader.readDelta(new KernelUidCpuClusterTimeReader.Callback() { // from class: com.android.internal.os.-$$Lambda$BatteryStatsImpl$WJBQdQHGlhcwV7yfM8vNEWWvVp0
            @Override // com.android.internal.os.KernelUidCpuClusterTimeReader.Callback
            public final void onUidCpuPolicyTime(int i, long[] jArr) {
                BatteryStatsImpl.lambda$readKernelUidCpuClusterTimesLocked$3(BatteryStatsImpl.this, z, i, jArr);
            }
        });
        long uptimeMillis2 = this.mClocks.uptimeMillis() - uptimeMillis;
        if (uptimeMillis2 >= 100) {
            Slog.d(TAG, "Reading cpu cluster times took " + uptimeMillis2 + "ms");
        }
    }

    public static /* synthetic */ void lambda$readKernelUidCpuClusterTimesLocked$3(BatteryStatsImpl batteryStatsImpl, boolean z, int i, long[] jArr) {
        int mapUid = batteryStatsImpl.mapUid(i);
        if (Process.isIsolated(mapUid)) {
            batteryStatsImpl.mKernelUidCpuClusterTimeReader.removeUid(mapUid);
            Slog.w(TAG, "Got cluster times for an isolated uid with no mapping: " + mapUid);
            return;
        }
        if (!batteryStatsImpl.mUserInfoProvider.exists(UserHandle.getUserId(mapUid))) {
            Slog.w(TAG, "Got cluster times for an invalid user's uid " + mapUid);
            batteryStatsImpl.mKernelUidCpuClusterTimeReader.removeUid(mapUid);
            return;
        }
        batteryStatsImpl.getUidStatsLocked(mapUid).mCpuClusterTimesMs.addCountLocked(jArr, z);
    }

    boolean setChargingLocked(boolean z) {
        if (this.mCharging == z) {
            return false;
        }
        this.mCharging = z;
        if (z) {
            this.mHistoryCur.states2 |= 16777216;
        } else {
            this.mHistoryCur.states2 &= -16777217;
        }
        this.mHandler.sendEmptyMessage(3);
        return true;
    }

    @GuardedBy("this")
    protected void setOnBatteryLocked(long j, long j2, boolean z, int i, int i2, int i3) {
        boolean z2;
        boolean z3;
        boolean z4;
        int i4;
        Message obtainMessage = this.mHandler.obtainMessage(2);
        obtainMessage.arg1 = z ? 1 : 0;
        this.mHandler.sendMessage(obtainMessage);
        long j3 = j2 * 1000;
        long j4 = j * 1000;
        int i5 = this.mScreenState;
        if (z) {
            if (this.mNoAutoReset || (i != 5 && i2 < 90 && ((this.mDischargeCurrentLevel >= 20 || i2 < 80) && (getHighDischargeAmountSinceCharge() < 200 || this.mHistoryBuffer.dataSize() < MAX_HISTORY_BUFFER)))) {
                z3 = false;
                z4 = false;
            } else {
                Slog.i(TAG, "Resetting battery stats: level=" + i2 + " status=" + i + " dischargeLevel=" + this.mDischargeCurrentLevel + " lowAmount=" + getLowDischargeAmountSinceCharge() + " highAmount=" + getHighDischargeAmountSinceCharge());
                if (getLowDischargeAmountSinceCharge() >= 20) {
                    long uptimeMillis = SystemClock.uptimeMillis();
                    final Parcel obtain = Parcel.obtain();
                    writeSummaryToParcel(obtain, true);
                    final long uptimeMillis2 = SystemClock.uptimeMillis() - uptimeMillis;
                    BackgroundThread.getHandler().post(new Runnable() { // from class: com.android.internal.os.BatteryStatsImpl.3
                        /* JADX WARN: Multi-variable type inference failed */
                        /* JADX WARN: Type inference failed for: r9v5, types: [android.os.Parcel] */
                        /* JADX WARN: Type inference failed for: r9v7 */
                        /* JADX WARN: Type inference failed for: r9v8 */
                        @Override // java.lang.Runnable
                        public void run() {
                            FileOutputStream fileOutputStream;
                            synchronized (BatteryStatsImpl.this.mCheckinFile) {
                                long uptimeMillis3 = SystemClock.uptimeMillis();
                                try {
                                    try {
                                        fileOutputStream = BatteryStatsImpl.this.mCheckinFile.startWrite();
                                    } catch (Throwable th) {
                                        obtain.recycle();
                                        throw th;
                                    }
                                } catch (IOException e) {
                                    e = e;
                                    fileOutputStream = null;
                                }
                                try {
                                    fileOutputStream.write(obtain.marshall());
                                    fileOutputStream.flush();
                                    FileUtils.sync(fileOutputStream);
                                    fileOutputStream.close();
                                    BatteryStatsImpl.this.mCheckinFile.finishWrite(fileOutputStream);
                                    EventLogTags.writeCommitSysConfigFile("batterystats-checkin", (uptimeMillis2 + SystemClock.uptimeMillis()) - uptimeMillis3);
                                    this = obtain;
                                } catch (IOException e2) {
                                    e = e2;
                                    Slog.w("BatteryStats", "Error writing checkin battery statistics", e);
                                    BatteryStatsImpl.this.mCheckinFile.failWrite(fileOutputStream);
                                    this = obtain;
                                    this.recycle();
                                }
                                this.recycle();
                            }
                        }
                    });
                }
                resetAllStatsLocked();
                if (i3 > 0 && i2 > 0) {
                    this.mEstimatedBatteryCapacity = (int) ((i3 / 1000) / (i2 / 100.0d));
                }
                this.mDischargeStartLevel = i2;
                this.mDischargeStepTracker.init();
                z3 = true;
                z4 = true;
            }
            if (this.mCharging) {
                setChargingLocked(false);
            }
            this.mLastChargingStateLevel = i2;
            this.mOnBatteryInternal = true;
            this.mOnBattery = true;
            this.mLastDischargeStepLevel = i2;
            this.mMinDischargeStepLevel = i2;
            this.mDischargeStepTracker.clearTime();
            this.mDailyDischargeStepTracker.clearTime();
            this.mInitStepMode = this.mCurStepMode;
            this.mModStepMode = 0;
            pullPendingStateUpdatesLocked();
            this.mHistoryCur.batteryLevel = (byte) i2;
            this.mHistoryCur.states &= -524289;
            if (z3) {
                this.mRecordingHistory = true;
                i4 = 0;
                startRecordingHistory(j, j2, z3);
            } else {
                i4 = 0;
            }
            addHistoryRecordLocked(j, j2);
            this.mDischargeUnplugLevel = i2;
            this.mDischargeCurrentLevel = i2;
            if (isScreenOn(i5)) {
                this.mDischargeScreenOnUnplugLevel = i2;
                this.mDischargeScreenDozeUnplugLevel = i4;
                this.mDischargeScreenOffUnplugLevel = i4;
            } else if (isScreenDoze(i5)) {
                this.mDischargeScreenOnUnplugLevel = i4;
                this.mDischargeScreenDozeUnplugLevel = i2;
                this.mDischargeScreenOffUnplugLevel = i4;
            } else {
                this.mDischargeScreenOnUnplugLevel = i4;
                this.mDischargeScreenDozeUnplugLevel = i4;
                this.mDischargeScreenOffUnplugLevel = i2;
            }
            this.mDischargeAmountScreenOn = i4;
            this.mDischargeAmountScreenDoze = i4;
            this.mDischargeAmountScreenOff = i4;
            updateTimeBasesLocked(true, i5, j3, j4);
            z2 = z4;
        } else {
            z2 = false;
            this.mLastChargingStateLevel = i2;
            this.mOnBatteryInternal = false;
            this.mOnBattery = false;
            pullPendingStateUpdatesLocked();
            this.mHistoryCur.batteryLevel = (byte) i2;
            this.mHistoryCur.states |= 524288;
            addHistoryRecordLocked(j, j2);
            this.mDischargePlugLevel = i2;
            this.mDischargeCurrentLevel = i2;
            if (i2 < this.mDischargeUnplugLevel) {
                this.mLowDischargeAmountSinceCharge += (this.mDischargeUnplugLevel - i2) - 1;
                this.mHighDischargeAmountSinceCharge += this.mDischargeUnplugLevel - i2;
            }
            updateDischargeScreenLevelsLocked(i5, i5);
            updateTimeBasesLocked(false, i5, j3, j4);
            this.mChargeStepTracker.init();
            this.mLastChargeStepLevel = i2;
            this.mMaxChargeStepLevel = i2;
            this.mInitStepMode = this.mCurStepMode;
            this.mModStepMode = 0;
        }
        if ((z2 || this.mLastWriteTime + 60000 < j) && this.mFile != null) {
            writeAsyncLocked();
        }
    }

    private void startRecordingHistory(long j, long j2, boolean z) {
        this.mRecordingHistory = true;
        this.mHistoryCur.currentTime = System.currentTimeMillis();
        addHistoryBufferLocked(j, z ? (byte) 7 : (byte) 5, this.mHistoryCur);
        this.mHistoryCur.currentTime = 0L;
        if (z) {
            initActiveHistoryEventsLocked(j, j2);
        }
    }

    private void recordCurrentTimeChangeLocked(long j, long j2, long j3) {
        if (this.mRecordingHistory) {
            this.mHistoryCur.currentTime = j;
            addHistoryBufferLocked(j2, (byte) 5, this.mHistoryCur);
            this.mHistoryCur.currentTime = 0L;
        }
    }

    private void recordShutdownLocked(long j, long j2) {
        if (this.mRecordingHistory) {
            this.mHistoryCur.currentTime = System.currentTimeMillis();
            addHistoryBufferLocked(j, (byte) 8, this.mHistoryCur);
            this.mHistoryCur.currentTime = 0L;
        }
    }

    private void scheduleSyncExternalStatsLocked(String str, int i) {
        if (this.mExternalSync != null) {
            this.mExternalSync.scheduleSync(str, i);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:90:0x0273  */
    @GuardedBy("this")
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void setBatteryStateLocked(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        long j;
        long j2;
        boolean z;
        boolean z2;
        boolean z3;
        boolean chargingLocked;
        int i9;
        int max = Math.max(0, i5);
        reportChangesToStatsLog(this.mHaveBatteryLevel ? this.mHistoryCur : null, i, i3, i4);
        boolean isOnBattery = isOnBattery(i3, i);
        long uptimeMillis = this.mClocks.uptimeMillis();
        long elapsedRealtime = this.mClocks.elapsedRealtime();
        if (!this.mHaveBatteryLevel) {
            this.mHaveBatteryLevel = true;
            if (isOnBattery == this.mOnBattery) {
                if (isOnBattery) {
                    this.mHistoryCur.states &= -524289;
                } else {
                    this.mHistoryCur.states |= 524288;
                }
            }
            this.mHistoryCur.states2 |= 16777216;
            this.mHistoryCur.batteryStatus = (byte) i;
            this.mHistoryCur.batteryLevel = (byte) i4;
            this.mHistoryCur.batteryChargeUAh = i7;
            this.mLastDischargeStepLevel = i4;
            this.mLastChargeStepLevel = i4;
            this.mMinDischargeStepLevel = i4;
            this.mMaxChargeStepLevel = i4;
            this.mLastChargingStateLevel = i4;
        } else if (this.mCurrentBatteryLevel != i4 || this.mOnBattery != isOnBattery) {
            recordDailyStatsIfNeededLocked(i4 >= 100 && isOnBattery);
        }
        byte b = this.mHistoryCur.batteryStatus;
        if (isOnBattery) {
            this.mDischargeCurrentLevel = i4;
            if (this.mRecordingHistory) {
                j = elapsedRealtime;
                j2 = uptimeMillis;
                z = isOnBattery;
            } else {
                this.mRecordingHistory = true;
                j = elapsedRealtime;
                j2 = uptimeMillis;
                z = isOnBattery;
                startRecordingHistory(elapsedRealtime, uptimeMillis, true);
            }
        } else {
            j = elapsedRealtime;
            j2 = uptimeMillis;
            z = isOnBattery;
            if (i4 < 96 && i != 1 && !this.mRecordingHistory) {
                this.mRecordingHistory = true;
                startRecordingHistory(j, j2, true);
            }
        }
        this.mCurrentBatteryLevel = i4;
        if (this.mDischargePlugLevel < 0) {
            this.mDischargePlugLevel = i4;
        }
        if (z != this.mOnBattery) {
            this.mHistoryCur.batteryLevel = (byte) i4;
            this.mHistoryCur.batteryStatus = (byte) i;
            this.mHistoryCur.batteryHealth = (byte) i2;
            this.mHistoryCur.batteryPlugType = (byte) i3;
            this.mHistoryCur.batteryTemperature = (short) max;
            this.mHistoryCur.batteryVoltage = (char) i6;
            if (i7 < this.mHistoryCur.batteryChargeUAh) {
                long j3 = this.mHistoryCur.batteryChargeUAh - i7;
                this.mDischargeCounter.addCountLocked(j3);
                this.mDischargeScreenOffCounter.addCountLocked(j3);
                if (isScreenDoze(this.mScreenState)) {
                    this.mDischargeScreenDozeCounter.addCountLocked(j3);
                }
                if (this.mDeviceIdleMode == 1) {
                    this.mDischargeLightDozeCounter.addCountLocked(j3);
                } else if (this.mDeviceIdleMode == 2) {
                    this.mDischargeDeepDozeCounter.addCountLocked(j3);
                }
            }
            this.mHistoryCur.batteryChargeUAh = i7;
            setOnBatteryLocked(j, j2, z, b, i4, i7);
        } else {
            if (this.mHistoryCur.batteryLevel != i4) {
                this.mHistoryCur.batteryLevel = (byte) i4;
                this.mExternalSync.scheduleSyncDueToBatteryLevelChange(this.mConstants.BATTERY_LEVEL_COLLECTION_DELAY_MS);
                z2 = true;
            } else {
                z2 = false;
            }
            if (this.mHistoryCur.batteryStatus != i) {
                this.mHistoryCur.batteryStatus = (byte) i;
                z2 = true;
            }
            if (this.mHistoryCur.batteryHealth != i2) {
                this.mHistoryCur.batteryHealth = (byte) i2;
                z2 = true;
            }
            if (this.mHistoryCur.batteryPlugType != i3) {
                this.mHistoryCur.batteryPlugType = (byte) i3;
                z2 = true;
            }
            if (max >= this.mHistoryCur.batteryTemperature + 10 || max <= this.mHistoryCur.batteryTemperature - 10) {
                this.mHistoryCur.batteryTemperature = (short) max;
                z2 = true;
            }
            if (i6 > this.mHistoryCur.batteryVoltage + 20 || i6 < this.mHistoryCur.batteryVoltage - 20) {
                this.mHistoryCur.batteryVoltage = (char) i6;
                z2 = true;
            }
            if (i7 >= this.mHistoryCur.batteryChargeUAh + 10 || i7 <= this.mHistoryCur.batteryChargeUAh - 10) {
                if (i7 < this.mHistoryCur.batteryChargeUAh) {
                    long j4 = this.mHistoryCur.batteryChargeUAh - i7;
                    this.mDischargeCounter.addCountLocked(j4);
                    this.mDischargeScreenOffCounter.addCountLocked(j4);
                    if (isScreenDoze(this.mScreenState)) {
                        this.mDischargeScreenDozeCounter.addCountLocked(j4);
                    }
                    if (this.mDeviceIdleMode == 1) {
                        this.mDischargeLightDozeCounter.addCountLocked(j4);
                    } else if (this.mDeviceIdleMode == 2) {
                        this.mDischargeDeepDozeCounter.addCountLocked(j4);
                    }
                }
                this.mHistoryCur.batteryChargeUAh = i7;
                z2 = true;
            }
            long j5 = (this.mInitStepMode << 48) | (this.mModStepMode << 56) | ((i4 & 255) << 40);
            if (z) {
                chargingLocked = z2 | setChargingLocked(false);
                if (this.mLastDischargeStepLevel != i4 && this.mMinDischargeStepLevel > i4) {
                    long j6 = j;
                    this.mDischargeStepTracker.addLevelSteps(this.mLastDischargeStepLevel - i4, j5, j6);
                    this.mDailyDischargeStepTracker.addLevelSteps(this.mLastDischargeStepLevel - i4, j5, j6);
                    this.mLastDischargeStepLevel = i4;
                    this.mMinDischargeStepLevel = i4;
                    this.mInitStepMode = this.mCurStepMode;
                    this.mModStepMode = 0;
                }
            } else {
                if (i4 >= 90) {
                    z3 = true;
                    z2 |= setChargingLocked(true);
                    this.mLastChargeStepLevel = i4;
                } else {
                    z3 = true;
                }
                if (!this.mCharging) {
                    if (this.mLastChargeStepLevel < i4) {
                        chargingLocked = z2 | setChargingLocked(z3);
                        this.mLastChargeStepLevel = i4;
                        if (this.mLastChargeStepLevel != i4 && this.mMaxChargeStepLevel < i4) {
                            long j7 = j;
                            this.mChargeStepTracker.addLevelSteps(i4 - this.mLastChargeStepLevel, j5, j7);
                            this.mDailyChargeStepTracker.addLevelSteps(i4 - this.mLastChargeStepLevel, j5, j7);
                            this.mLastChargeStepLevel = i4;
                            this.mMaxChargeStepLevel = i4;
                            this.mInitStepMode = this.mCurStepMode;
                            this.mModStepMode = 0;
                        }
                    }
                    chargingLocked = z2;
                    if (this.mLastChargeStepLevel != i4) {
                        long j72 = j;
                        this.mChargeStepTracker.addLevelSteps(i4 - this.mLastChargeStepLevel, j5, j72);
                        this.mDailyChargeStepTracker.addLevelSteps(i4 - this.mLastChargeStepLevel, j5, j72);
                        this.mLastChargeStepLevel = i4;
                        this.mMaxChargeStepLevel = i4;
                        this.mInitStepMode = this.mCurStepMode;
                        this.mModStepMode = 0;
                    }
                } else {
                    if (this.mLastChargeStepLevel > i4) {
                        chargingLocked = z2 | setChargingLocked(false);
                        this.mLastChargeStepLevel = i4;
                        if (this.mLastChargeStepLevel != i4) {
                        }
                    }
                    chargingLocked = z2;
                    if (this.mLastChargeStepLevel != i4) {
                    }
                }
            }
            if (chargingLocked) {
                addHistoryRecordLocked(j, j2);
            }
        }
        if (!z && (i == 5 || i == 1)) {
            this.mRecordingHistory = false;
        }
        if (this.mMinLearnedBatteryCapacity == -1) {
            i9 = i8;
            this.mMinLearnedBatteryCapacity = i9;
        } else {
            i9 = i8;
            Math.min(this.mMinLearnedBatteryCapacity, i9);
        }
        this.mMaxLearnedBatteryCapacity = Math.max(this.mMaxLearnedBatteryCapacity, i9);
    }

    private void reportChangesToStatsLog(BatteryStats.HistoryItem historyItem, int i, int i2, int i3) {
        if (historyItem == null || historyItem.batteryStatus != i) {
            StatsLog.write(31, i);
        }
        if (historyItem == null || historyItem.batteryPlugType != i2) {
            StatsLog.write(32, i2);
        }
        if (historyItem == null || historyItem.batteryLevel != i3) {
            StatsLog.write(30, i3);
        }
    }

    public long getAwakeTimeBattery() {
        return computeBatteryUptime(getBatteryUptimeLocked(), 1);
    }

    public long getAwakeTimePlugged() {
        return (this.mClocks.uptimeMillis() * 1000) - getAwakeTimeBattery();
    }

    public long computeUptime(long j, int i) {
        switch (i) {
            case 0:
                return this.mUptime + (j - this.mUptimeStart);
            case 1:
                return j - this.mUptimeStart;
            case 2:
                return j - this.mOnBatteryTimeBase.getUptimeStart();
            default:
                return 0L;
        }
    }

    public long computeRealtime(long j, int i) {
        switch (i) {
            case 0:
                return this.mRealtime + (j - this.mRealtimeStart);
            case 1:
                return j - this.mRealtimeStart;
            case 2:
                return j - this.mOnBatteryTimeBase.getRealtimeStart();
            default:
                return 0L;
        }
    }

    public long computeBatteryUptime(long j, int i) {
        return this.mOnBatteryTimeBase.computeUptime(j, i);
    }

    public long computeBatteryRealtime(long j, int i) {
        return this.mOnBatteryTimeBase.computeRealtime(j, i);
    }

    public long computeBatteryScreenOffUptime(long j, int i) {
        return this.mOnBatteryScreenOffTimeBase.computeUptime(j, i);
    }

    public long computeBatteryScreenOffRealtime(long j, int i) {
        return this.mOnBatteryScreenOffTimeBase.computeRealtime(j, i);
    }

    private long computeTimePerLevel(long[] jArr, int i) {
        if (i <= 0) {
            return -1L;
        }
        long j = 0;
        for (int i2 = 0; i2 < i; i2++) {
            j += jArr[i2] & 1099511627775L;
        }
        return j / i;
    }

    public long computeBatteryTimeRemaining(long j) {
        if (!this.mOnBattery || this.mDischargeStepTracker.mNumStepDurations < 1) {
            return -1L;
        }
        long computeTimePerLevel = this.mDischargeStepTracker.computeTimePerLevel();
        if (computeTimePerLevel <= 0) {
            return -1L;
        }
        return computeTimePerLevel * this.mCurrentBatteryLevel * 1000;
    }

    public BatteryStats.LevelStepTracker getDischargeLevelStepTracker() {
        return this.mDischargeStepTracker;
    }

    public BatteryStats.LevelStepTracker getDailyDischargeLevelStepTracker() {
        return this.mDailyDischargeStepTracker;
    }

    public long computeChargeTimeRemaining(long j) {
        if (this.mOnBattery || this.mChargeStepTracker.mNumStepDurations < 1) {
            return -1L;
        }
        long computeTimePerLevel = this.mChargeStepTracker.computeTimePerLevel();
        if (computeTimePerLevel <= 0) {
            return -1L;
        }
        return computeTimePerLevel * (100 - this.mCurrentBatteryLevel) * 1000;
    }

    public CellularBatteryStats getCellularBatteryStats() {
        CellularBatteryStats cellularBatteryStats = new CellularBatteryStats();
        long elapsedRealtime = SystemClock.elapsedRealtime() * 1000;
        BatteryStats.ControllerActivityCounter modemControllerActivity = getModemControllerActivity();
        long countLocked = modemControllerActivity.getSleepTimeCounter().getCountLocked(0);
        long countLocked2 = modemControllerActivity.getIdleTimeCounter().getCountLocked(0);
        long countLocked3 = modemControllerActivity.getRxTimeCounter().getCountLocked(0);
        long countLocked4 = modemControllerActivity.getPowerCounter().getCountLocked(0);
        long[] jArr = new long[21];
        for (int i = 0; i < jArr.length; i++) {
            jArr[i] = getPhoneDataConnectionTime(i, elapsedRealtime, 0) / 1000;
        }
        long j = 1000;
        long[] jArr2 = new long[5];
        int i2 = 0;
        while (i2 < jArr2.length) {
            int i3 = i2;
            jArr2[i3] = getPhoneSignalStrengthTime(i2, elapsedRealtime, 0) / j;
            i2 = i3 + 1;
            j = 1000;
        }
        long[] jArr3 = new long[Math.min(5, modemControllerActivity.getTxTimeCounters().length)];
        int i4 = 0;
        while (i4 < jArr3.length) {
            jArr3[i4] = modemControllerActivity.getTxTimeCounters()[i4].getCountLocked(0);
            long j2 = jArr3[i4];
            i4++;
            modemControllerActivity = modemControllerActivity;
        }
        cellularBatteryStats.setLoggingDurationMs(computeBatteryRealtime(elapsedRealtime, 0) / 1000);
        cellularBatteryStats.setKernelActiveTimeMs(getMobileRadioActiveTime(elapsedRealtime, 0) / 1000);
        cellularBatteryStats.setNumPacketsTx(getNetworkActivityPackets(1, 0));
        cellularBatteryStats.setNumBytesTx(getNetworkActivityBytes(1, 0));
        cellularBatteryStats.setNumPacketsRx(getNetworkActivityPackets(0, 0));
        cellularBatteryStats.setNumBytesRx(getNetworkActivityBytes(0, 0));
        cellularBatteryStats.setSleepTimeMs(countLocked);
        cellularBatteryStats.setIdleTimeMs(countLocked2);
        cellularBatteryStats.setRxTimeMs(countLocked3);
        cellularBatteryStats.setEnergyConsumedMaMs(countLocked4);
        cellularBatteryStats.setTimeInRatMs(jArr);
        cellularBatteryStats.setTimeInRxSignalStrengthLevelMs(jArr2);
        cellularBatteryStats.setTxTimeMs(jArr3);
        return cellularBatteryStats;
    }

    public WifiBatteryStats getWifiBatteryStats() {
        WifiBatteryStats wifiBatteryStats = new WifiBatteryStats();
        long elapsedRealtime = SystemClock.elapsedRealtime() * 1000;
        BatteryStats.ControllerActivityCounter wifiControllerActivity = getWifiControllerActivity();
        long countLocked = wifiControllerActivity.getIdleTimeCounter().getCountLocked(0);
        long countLocked2 = wifiControllerActivity.getScanTimeCounter().getCountLocked(0);
        long countLocked3 = wifiControllerActivity.getRxTimeCounter().getCountLocked(0);
        long j = countLocked2;
        long countLocked4 = wifiControllerActivity.getTxTimeCounters()[0].getCountLocked(0);
        long j2 = elapsedRealtime;
        long computeBatteryRealtime = (computeBatteryRealtime(SystemClock.elapsedRealtime() * 1000, 0) / 1000) - ((countLocked + countLocked3) + countLocked4);
        long countLocked5 = wifiControllerActivity.getPowerCounter().getCountLocked(0);
        int i = 0;
        long j3 = 0;
        while (i < this.mUidStats.size()) {
            j3 += this.mUidStats.valueAt(i).mWifiScanTimer.getCountLocked(0);
            i++;
            j = j;
            countLocked5 = countLocked5;
        }
        long j4 = countLocked5;
        long j5 = j;
        long[] jArr = new long[8];
        int i2 = 0;
        for (int i3 = 8; i2 < i3; i3 = 8) {
            long j6 = j2;
            jArr[i2] = getWifiStateTime(i2, j6, 0) / 1000;
            i2++;
            j2 = j6;
            j3 = j3;
        }
        long j7 = j3;
        long j8 = j2;
        long[] jArr2 = new long[13];
        for (int i4 = 0; i4 < 13; i4++) {
            jArr2[i4] = getWifiSupplStateTime(i4, j8, 0) / 1000;
        }
        long[] jArr3 = new long[5];
        for (int i5 = 0; i5 < 5; i5++) {
            jArr3[i5] = getWifiSignalStrengthTime(i5, j8, 0) / 1000;
        }
        wifiBatteryStats.setLoggingDurationMs(computeBatteryRealtime(j8, 0) / 1000);
        wifiBatteryStats.setKernelActiveTimeMs(getWifiActiveTime(j8, 0) / 1000);
        wifiBatteryStats.setNumPacketsTx(getNetworkActivityPackets(3, 0));
        wifiBatteryStats.setNumBytesTx(getNetworkActivityBytes(3, 0));
        wifiBatteryStats.setNumPacketsRx(getNetworkActivityPackets(2, 0));
        wifiBatteryStats.setNumBytesRx(getNetworkActivityBytes(2, 0));
        wifiBatteryStats.setSleepTimeMs(computeBatteryRealtime);
        wifiBatteryStats.setIdleTimeMs(countLocked);
        wifiBatteryStats.setRxTimeMs(countLocked3);
        wifiBatteryStats.setTxTimeMs(countLocked4);
        wifiBatteryStats.setScanTimeMs(j5);
        wifiBatteryStats.setEnergyConsumedMaMs(j4);
        wifiBatteryStats.setNumAppScanRequest(j7);
        wifiBatteryStats.setTimeInStateMs(jArr);
        wifiBatteryStats.setTimeInSupplicantStateMs(jArr2);
        wifiBatteryStats.setTimeInRxSignalStrengthLevelMs(jArr3);
        return wifiBatteryStats;
    }

    public GpsBatteryStats getGpsBatteryStats() {
        GpsBatteryStats gpsBatteryStats = new GpsBatteryStats();
        long elapsedRealtime = SystemClock.elapsedRealtime() * 1000;
        gpsBatteryStats.setLoggingDurationMs(computeBatteryRealtime(elapsedRealtime, 0) / 1000);
        gpsBatteryStats.setEnergyConsumedMaMs(getGpsBatteryDrainMaMs());
        long[] jArr = new long[2];
        for (int i = 0; i < jArr.length; i++) {
            jArr[i] = getGpsSignalQualityTime(i, elapsedRealtime, 0) / 1000;
        }
        gpsBatteryStats.setTimeInGpsSignalQualityLevel(jArr);
        return gpsBatteryStats;
    }

    public BatteryStats.LevelStepTracker getChargeLevelStepTracker() {
        return this.mChargeStepTracker;
    }

    public BatteryStats.LevelStepTracker getDailyChargeLevelStepTracker() {
        return this.mDailyChargeStepTracker;
    }

    public ArrayList<BatteryStats.PackageChange> getDailyPackageChanges() {
        return this.mDailyPackageChanges;
    }

    protected long getBatteryUptimeLocked() {
        return this.mOnBatteryTimeBase.getUptime(this.mClocks.uptimeMillis() * 1000);
    }

    public long getBatteryUptime(long j) {
        return this.mOnBatteryTimeBase.getUptime(j);
    }

    public long getBatteryRealtime(long j) {
        return this.mOnBatteryTimeBase.getRealtime(j);
    }

    public int getDischargeStartLevel() {
        int dischargeStartLevelLocked;
        synchronized (this) {
            dischargeStartLevelLocked = getDischargeStartLevelLocked();
        }
        return dischargeStartLevelLocked;
    }

    public int getDischargeStartLevelLocked() {
        return this.mDischargeUnplugLevel;
    }

    public int getDischargeCurrentLevel() {
        int dischargeCurrentLevelLocked;
        synchronized (this) {
            dischargeCurrentLevelLocked = getDischargeCurrentLevelLocked();
        }
        return dischargeCurrentLevelLocked;
    }

    public int getDischargeCurrentLevelLocked() {
        return this.mDischargeCurrentLevel;
    }

    public int getLowDischargeAmountSinceCharge() {
        int i;
        synchronized (this) {
            i = this.mLowDischargeAmountSinceCharge;
            if (this.mOnBattery && this.mDischargeCurrentLevel < this.mDischargeUnplugLevel) {
                i += (this.mDischargeUnplugLevel - this.mDischargeCurrentLevel) - 1;
            }
        }
        return i;
    }

    public int getHighDischargeAmountSinceCharge() {
        int i;
        synchronized (this) {
            i = this.mHighDischargeAmountSinceCharge;
            if (this.mOnBattery && this.mDischargeCurrentLevel < this.mDischargeUnplugLevel) {
                i += this.mDischargeUnplugLevel - this.mDischargeCurrentLevel;
            }
        }
        return i;
    }

    public int getDischargeAmount(int i) {
        int dischargeStartLevel;
        if (i == 0) {
            dischargeStartLevel = getHighDischargeAmountSinceCharge();
        } else {
            dischargeStartLevel = getDischargeStartLevel() - getDischargeCurrentLevel();
        }
        if (dischargeStartLevel < 0) {
            return 0;
        }
        return dischargeStartLevel;
    }

    public int getDischargeAmountScreenOn() {
        int i;
        synchronized (this) {
            i = this.mDischargeAmountScreenOn;
            if (this.mOnBattery && isScreenOn(this.mScreenState) && this.mDischargeCurrentLevel < this.mDischargeScreenOnUnplugLevel) {
                i += this.mDischargeScreenOnUnplugLevel - this.mDischargeCurrentLevel;
            }
        }
        return i;
    }

    public int getDischargeAmountScreenOnSinceCharge() {
        int i;
        synchronized (this) {
            i = this.mDischargeAmountScreenOnSinceCharge;
            if (this.mOnBattery && isScreenOn(this.mScreenState) && this.mDischargeCurrentLevel < this.mDischargeScreenOnUnplugLevel) {
                i += this.mDischargeScreenOnUnplugLevel - this.mDischargeCurrentLevel;
            }
        }
        return i;
    }

    public int getDischargeAmountScreenOff() {
        int dischargeAmountScreenDoze;
        synchronized (this) {
            int i = this.mDischargeAmountScreenOff;
            if (this.mOnBattery && isScreenOff(this.mScreenState) && this.mDischargeCurrentLevel < this.mDischargeScreenOffUnplugLevel) {
                i += this.mDischargeScreenOffUnplugLevel - this.mDischargeCurrentLevel;
            }
            dischargeAmountScreenDoze = i + getDischargeAmountScreenDoze();
        }
        return dischargeAmountScreenDoze;
    }

    public int getDischargeAmountScreenOffSinceCharge() {
        int dischargeAmountScreenDozeSinceCharge;
        synchronized (this) {
            int i = this.mDischargeAmountScreenOffSinceCharge;
            if (this.mOnBattery && isScreenOff(this.mScreenState) && this.mDischargeCurrentLevel < this.mDischargeScreenOffUnplugLevel) {
                i += this.mDischargeScreenOffUnplugLevel - this.mDischargeCurrentLevel;
            }
            dischargeAmountScreenDozeSinceCharge = i + getDischargeAmountScreenDozeSinceCharge();
        }
        return dischargeAmountScreenDozeSinceCharge;
    }

    public int getDischargeAmountScreenDoze() {
        int i;
        synchronized (this) {
            i = this.mDischargeAmountScreenDoze;
            if (this.mOnBattery && isScreenDoze(this.mScreenState) && this.mDischargeCurrentLevel < this.mDischargeScreenDozeUnplugLevel) {
                i += this.mDischargeScreenDozeUnplugLevel - this.mDischargeCurrentLevel;
            }
        }
        return i;
    }

    public int getDischargeAmountScreenDozeSinceCharge() {
        int i;
        synchronized (this) {
            i = this.mDischargeAmountScreenDozeSinceCharge;
            if (this.mOnBattery && isScreenDoze(this.mScreenState) && this.mDischargeCurrentLevel < this.mDischargeScreenDozeUnplugLevel) {
                i += this.mDischargeScreenDozeUnplugLevel - this.mDischargeCurrentLevel;
            }
        }
        return i;
    }

    public Uid getUidStatsLocked(int i) {
        Uid uid = this.mUidStats.get(i);
        if (uid != null) {
            return uid;
        }
        Uid uid2 = new Uid(this, i);
        this.mUidStats.put(i, uid2);
        return uid2;
    }

    public Uid getAvailableUidStatsLocked(int i) {
        return this.mUidStats.get(i);
    }

    public void onCleanupUserLocked(int i) {
        this.mPendingRemovedUids.add(new UidToRemove(UserHandle.getUid(i, 0), UserHandle.getUid(i, 99999), this.mClocks.elapsedRealtime()));
    }

    public void onUserRemovedLocked(int i) {
        int uid = UserHandle.getUid(i, 0);
        int uid2 = UserHandle.getUid(i, 99999);
        this.mUidStats.put(uid, null);
        this.mUidStats.put(uid2, null);
        int indexOfKey = this.mUidStats.indexOfKey(uid);
        this.mUidStats.removeAtRange(indexOfKey, (this.mUidStats.indexOfKey(uid2) - indexOfKey) + 1);
    }

    public void removeUidStatsLocked(int i) {
        this.mUidStats.remove(i);
        this.mPendingRemovedUids.add(new UidToRemove(this, i, this.mClocks.elapsedRealtime()));
    }

    public Uid.Proc getProcessStatsLocked(int i, String str) {
        return getUidStatsLocked(mapUid(i)).getProcessStatsLocked(str);
    }

    public Uid.Pkg getPackageStatsLocked(int i, String str) {
        return getUidStatsLocked(mapUid(i)).getPackageStatsLocked(str);
    }

    public Uid.Pkg.Serv getServiceStatsLocked(int i, String str, String str2) {
        return getUidStatsLocked(mapUid(i)).getServiceStatsLocked(str, str2);
    }

    public void shutdownLocked() {
        recordShutdownLocked(this.mClocks.elapsedRealtime(), this.mClocks.uptimeMillis());
        writeSyncLocked();
        this.mShuttingDown = true;
    }

    public boolean trackPerProcStateCpuTimes() {
        return this.mConstants.TRACK_CPU_TIMES_BY_PROC_STATE && this.mPerProcStateCpuTimesAvailable;
    }

    public void systemServicesReady(Context context) {
        this.mConstants.startObserving(context.getContentResolver());
        registerUsbStateReceiver(context);
    }

    @VisibleForTesting
    /* loaded from: /home/user/work/dex/classes3.dex */
    public final class Constants extends ContentObserver {
        private static final long DEFAULT_BATTERY_LEVEL_COLLECTION_DELAY_MS = 300000;
        private static final long DEFAULT_EXTERNAL_STATS_COLLECTION_RATE_LIMIT_MS = 600000;
        private static final long DEFAULT_KERNEL_UID_READERS_THROTTLE_TIME = 10000;
        private static final long DEFAULT_PROC_STATE_CPU_TIMES_READ_DELAY_MS = 5000;
        private static final boolean DEFAULT_TRACK_CPU_ACTIVE_CLUSTER_TIME = true;
        private static final boolean DEFAULT_TRACK_CPU_TIMES_BY_PROC_STATE = true;
        private static final long DEFAULT_UID_REMOVE_DELAY_MS = 300000;
        public static final String KEY_BATTERY_LEVEL_COLLECTION_DELAY_MS = "battery_level_collection_delay_ms";
        public static final String KEY_EXTERNAL_STATS_COLLECTION_RATE_LIMIT_MS = "external_stats_collection_rate_limit_ms";
        public static final String KEY_KERNEL_UID_READERS_THROTTLE_TIME = "kernel_uid_readers_throttle_time";
        public static final String KEY_PROC_STATE_CPU_TIMES_READ_DELAY_MS = "proc_state_cpu_times_read_delay_ms";
        public static final String KEY_TRACK_CPU_ACTIVE_CLUSTER_TIME = "track_cpu_active_cluster_time";
        public static final String KEY_TRACK_CPU_TIMES_BY_PROC_STATE = "track_cpu_times_by_proc_state";
        public static final String KEY_UID_REMOVE_DELAY_MS = "uid_remove_delay_ms";
        public long BATTERY_LEVEL_COLLECTION_DELAY_MS;
        public long EXTERNAL_STATS_COLLECTION_RATE_LIMIT_MS;
        public long KERNEL_UID_READERS_THROTTLE_TIME;
        public long PROC_STATE_CPU_TIMES_READ_DELAY_MS;
        public boolean TRACK_CPU_ACTIVE_CLUSTER_TIME;
        public boolean TRACK_CPU_TIMES_BY_PROC_STATE;
        public long UID_REMOVE_DELAY_MS;
        private final KeyValueListParser mParser;
        private ContentResolver mResolver;

        public Constants(Handler handler) {
            super(handler);
            this.TRACK_CPU_TIMES_BY_PROC_STATE = true;
            this.TRACK_CPU_ACTIVE_CLUSTER_TIME = true;
            this.PROC_STATE_CPU_TIMES_READ_DELAY_MS = DEFAULT_PROC_STATE_CPU_TIMES_READ_DELAY_MS;
            this.KERNEL_UID_READERS_THROTTLE_TIME = DEFAULT_KERNEL_UID_READERS_THROTTLE_TIME;
            this.UID_REMOVE_DELAY_MS = 300000L;
            this.EXTERNAL_STATS_COLLECTION_RATE_LIMIT_MS = DEFAULT_EXTERNAL_STATS_COLLECTION_RATE_LIMIT_MS;
            this.BATTERY_LEVEL_COLLECTION_DELAY_MS = 300000L;
            this.mParser = new KeyValueListParser(',');
        }

        public void startObserving(ContentResolver contentResolver) {
            this.mResolver = contentResolver;
            this.mResolver.registerContentObserver(Settings.Global.getUriFor("battery_stats_constants"), false, this);
            updateConstants();
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z, Uri uri) {
            updateConstants();
        }

        private void updateConstants() {
            synchronized (BatteryStatsImpl.this) {
                try {
                    this.mParser.setString(Settings.Global.getString(this.mResolver, "battery_stats_constants"));
                } catch (IllegalArgumentException e) {
                    Slog.e(BatteryStatsImpl.TAG, "Bad batterystats settings", e);
                }
                updateTrackCpuTimesByProcStateLocked(this.TRACK_CPU_TIMES_BY_PROC_STATE, this.mParser.getBoolean(KEY_TRACK_CPU_TIMES_BY_PROC_STATE, true));
                this.TRACK_CPU_ACTIVE_CLUSTER_TIME = this.mParser.getBoolean(KEY_TRACK_CPU_ACTIVE_CLUSTER_TIME, true);
                updateProcStateCpuTimesReadDelayMs(this.PROC_STATE_CPU_TIMES_READ_DELAY_MS, this.mParser.getLong(KEY_PROC_STATE_CPU_TIMES_READ_DELAY_MS, DEFAULT_PROC_STATE_CPU_TIMES_READ_DELAY_MS));
                updateKernelUidReadersThrottleTime(this.KERNEL_UID_READERS_THROTTLE_TIME, this.mParser.getLong(KEY_KERNEL_UID_READERS_THROTTLE_TIME, DEFAULT_KERNEL_UID_READERS_THROTTLE_TIME));
                updateUidRemoveDelay(this.mParser.getLong(KEY_UID_REMOVE_DELAY_MS, 300000L));
                this.EXTERNAL_STATS_COLLECTION_RATE_LIMIT_MS = this.mParser.getLong(KEY_EXTERNAL_STATS_COLLECTION_RATE_LIMIT_MS, DEFAULT_EXTERNAL_STATS_COLLECTION_RATE_LIMIT_MS);
                this.BATTERY_LEVEL_COLLECTION_DELAY_MS = this.mParser.getLong(KEY_BATTERY_LEVEL_COLLECTION_DELAY_MS, 300000L);
            }
        }

        private void updateTrackCpuTimesByProcStateLocked(boolean z, boolean z2) {
            this.TRACK_CPU_TIMES_BY_PROC_STATE = z2;
            if (!z2 || z) {
                return;
            }
            BatteryStatsImpl.this.mKernelSingleUidTimeReader.markDataAsStale(true);
            BatteryStatsImpl.this.mExternalSync.scheduleCpuSyncDueToSettingChange();
            BatteryStatsImpl.this.mNumSingleUidCpuTimeReads = 0L;
            BatteryStatsImpl.this.mNumBatchedSingleUidCpuTimeReads = 0L;
            BatteryStatsImpl.this.mCpuTimeReadsTrackingStartTime = BatteryStatsImpl.this.mClocks.uptimeMillis();
        }

        private void updateProcStateCpuTimesReadDelayMs(long j, long j2) {
            this.PROC_STATE_CPU_TIMES_READ_DELAY_MS = j2;
            if (j != j2) {
                BatteryStatsImpl.this.mNumSingleUidCpuTimeReads = 0L;
                BatteryStatsImpl.this.mNumBatchedSingleUidCpuTimeReads = 0L;
                BatteryStatsImpl.this.mCpuTimeReadsTrackingStartTime = BatteryStatsImpl.this.mClocks.uptimeMillis();
            }
        }

        private void updateKernelUidReadersThrottleTime(long j, long j2) {
            this.KERNEL_UID_READERS_THROTTLE_TIME = j2;
            if (j != j2) {
                BatteryStatsImpl.this.mKernelUidCpuTimeReader.setThrottleInterval(this.KERNEL_UID_READERS_THROTTLE_TIME);
                BatteryStatsImpl.this.mKernelUidCpuFreqTimeReader.setThrottleInterval(this.KERNEL_UID_READERS_THROTTLE_TIME);
                BatteryStatsImpl.this.mKernelUidCpuActiveTimeReader.setThrottleInterval(this.KERNEL_UID_READERS_THROTTLE_TIME);
                BatteryStatsImpl.this.mKernelUidCpuClusterTimeReader.setThrottleInterval(this.KERNEL_UID_READERS_THROTTLE_TIME);
            }
        }

        private void updateUidRemoveDelay(long j) {
            this.UID_REMOVE_DELAY_MS = j;
            BatteryStatsImpl.this.clearPendingRemovedUids();
        }

        public void dumpLocked(PrintWriter printWriter) {
            printWriter.print(KEY_TRACK_CPU_TIMES_BY_PROC_STATE);
            printWriter.print("=");
            printWriter.println(this.TRACK_CPU_TIMES_BY_PROC_STATE);
            printWriter.print(KEY_TRACK_CPU_ACTIVE_CLUSTER_TIME);
            printWriter.print("=");
            printWriter.println(this.TRACK_CPU_ACTIVE_CLUSTER_TIME);
            printWriter.print(KEY_PROC_STATE_CPU_TIMES_READ_DELAY_MS);
            printWriter.print("=");
            printWriter.println(this.PROC_STATE_CPU_TIMES_READ_DELAY_MS);
            printWriter.print(KEY_KERNEL_UID_READERS_THROTTLE_TIME);
            printWriter.print("=");
            printWriter.println(this.KERNEL_UID_READERS_THROTTLE_TIME);
            printWriter.print(KEY_EXTERNAL_STATS_COLLECTION_RATE_LIMIT_MS);
            printWriter.print("=");
            printWriter.println(this.EXTERNAL_STATS_COLLECTION_RATE_LIMIT_MS);
            printWriter.print(KEY_BATTERY_LEVEL_COLLECTION_DELAY_MS);
            printWriter.print("=");
            printWriter.println(this.BATTERY_LEVEL_COLLECTION_DELAY_MS);
        }
    }

    public long getExternalStatsCollectionRateLimitMs() {
        long j;
        synchronized (this) {
            j = this.mConstants.EXTERNAL_STATS_COLLECTION_RATE_LIMIT_MS;
        }
        return j;
    }

    @GuardedBy("this")
    public void dumpConstantsLocked(PrintWriter printWriter) {
        this.mConstants.dumpLocked(printWriter);
    }

    @GuardedBy("this")
    public void dumpCpuStatsLocked(PrintWriter printWriter) {
        int size = this.mUidStats.size();
        printWriter.println("Per UID CPU user & system time in ms:");
        for (int i = 0; i < size; i++) {
            int keyAt = this.mUidStats.keyAt(i);
            Uid uid = this.mUidStats.get(keyAt);
            printWriter.print("  ");
            printWriter.print(keyAt);
            printWriter.print(": ");
            printWriter.print(uid.getUserCpuTimeUs(0) / 1000);
            printWriter.print(" ");
            printWriter.println(uid.getSystemCpuTimeUs(0) / 1000);
        }
        printWriter.println("Per UID CPU active time in ms:");
        for (int i2 = 0; i2 < size; i2++) {
            int keyAt2 = this.mUidStats.keyAt(i2);
            Uid uid2 = this.mUidStats.get(keyAt2);
            if (uid2.getCpuActiveTime() > 0) {
                printWriter.print("  ");
                printWriter.print(keyAt2);
                printWriter.print(": ");
                printWriter.println(uid2.getCpuActiveTime());
            }
        }
        printWriter.println("Per UID CPU cluster time in ms:");
        for (int i3 = 0; i3 < size; i3++) {
            int keyAt3 = this.mUidStats.keyAt(i3);
            long[] cpuClusterTimes = this.mUidStats.get(keyAt3).getCpuClusterTimes();
            if (cpuClusterTimes != null) {
                printWriter.print("  ");
                printWriter.print(keyAt3);
                printWriter.print(": ");
                printWriter.println(Arrays.toString(cpuClusterTimes));
            }
        }
        printWriter.println("Per UID CPU frequency time in ms:");
        for (int i4 = 0; i4 < size; i4++) {
            int keyAt4 = this.mUidStats.keyAt(i4);
            long[] cpuFreqTimes = this.mUidStats.get(keyAt4).getCpuFreqTimes(0);
            if (cpuFreqTimes != null) {
                printWriter.print("  ");
                printWriter.print(keyAt4);
                printWriter.print(": ");
                printWriter.println(Arrays.toString(cpuFreqTimes));
            }
        }
    }

    public void writeAsyncLocked() {
        writeLocked(false);
    }

    public void writeSyncLocked() {
        writeLocked(true);
    }

    void writeLocked(boolean z) {
        if (this.mFile == null) {
            Slog.w("BatteryStats", "writeLocked: no file associated with this instance");
            return;
        }
        if (this.mShuttingDown) {
            return;
        }
        Parcel obtain = Parcel.obtain();
        writeSummaryToParcel(obtain, true);
        this.mLastWriteTime = this.mClocks.elapsedRealtime();
        if (this.mPendingWrite != null) {
            this.mPendingWrite.recycle();
        }
        this.mPendingWrite = obtain;
        if (z) {
            commitPendingDataToDisk();
        } else {
            BackgroundThread.getHandler().post(new Runnable() { // from class: com.android.internal.os.BatteryStatsImpl.4
                @Override // java.lang.Runnable
                public void run() {
                    BatteryStatsImpl.this.commitPendingDataToDisk();
                }
            });
        }
    }

    public void commitPendingDataToDisk() {
        synchronized (this) {
            Parcel parcel = this.mPendingWrite;
            this.mPendingWrite = null;
            if (parcel == null) {
                return;
            }
            this.mWriteLock.lock();
            try {
                try {
                    long uptimeMillis = SystemClock.uptimeMillis();
                    FileOutputStream fileOutputStream = new FileOutputStream(this.mFile.chooseForWrite());
                    fileOutputStream.write(parcel.marshall());
                    fileOutputStream.flush();
                    FileUtils.sync(fileOutputStream);
                    fileOutputStream.close();
                    this.mFile.commit();
                    EventLogTags.writeCommitSysConfigFile("batterystats", SystemClock.uptimeMillis() - uptimeMillis);
                } catch (IOException e) {
                    Slog.w("BatteryStats", "Error writing battery statistics", e);
                    this.mFile.rollback();
                }
            } finally {
                parcel.recycle();
                this.mWriteLock.unlock();
            }
        }
    }

    public void readLocked() {
        File chooseForRead;
        if (this.mDailyFile != null) {
            readDailyStatsLocked();
        }
        if (this.mFile == null) {
            Slog.w("BatteryStats", "readLocked: no file associated with this instance");
            return;
        }
        this.mUidStats.clear();
        try {
            chooseForRead = this.mFile.chooseForRead();
        } catch (Exception e) {
            Slog.e("BatteryStats", "Error reading battery statistics", e);
            resetAllStatsLocked();
        }
        if (chooseForRead.exists()) {
            FileInputStream fileInputStream = new FileInputStream(chooseForRead);
            byte[] readFully = BatteryStatsHelper.readFully(fileInputStream);
            Parcel obtain = Parcel.obtain();
            obtain.unmarshall(readFully, 0, readFully.length);
            obtain.setDataPosition(0);
            fileInputStream.close();
            readSummaryFromParcel(obtain);
            this.mEndPlatformVersion = Build.ID;
            if (this.mHistoryBuffer.dataPosition() > 0) {
                this.mRecordingHistory = true;
                long elapsedRealtime = this.mClocks.elapsedRealtime();
                long uptimeMillis = this.mClocks.uptimeMillis();
                addHistoryBufferLocked(elapsedRealtime, (byte) 4, this.mHistoryCur);
                startRecordingHistory(elapsedRealtime, uptimeMillis, false);
            }
            recordDailyStatsIfNeededLocked(false);
        }
    }

    void readHistory(Parcel parcel, boolean z) throws ParcelFormatException {
        long readLong = parcel.readLong();
        this.mHistoryBuffer.setDataSize(0);
        this.mHistoryBuffer.setDataPosition(0);
        this.mHistoryTagPool.clear();
        this.mNextHistoryTagIdx = 0;
        this.mNumHistoryTagChars = 0;
        int readInt = parcel.readInt();
        for (int i = 0; i < readInt; i++) {
            int readInt2 = parcel.readInt();
            String readString = parcel.readString();
            if (readString == null) {
                throw new ParcelFormatException("null history tag string");
            }
            int readInt3 = parcel.readInt();
            BatteryStats.HistoryTag historyTag = new BatteryStats.HistoryTag();
            historyTag.string = readString;
            historyTag.uid = readInt3;
            historyTag.poolIdx = readInt2;
            this.mHistoryTagPool.put(historyTag, Integer.valueOf(readInt2));
            if (readInt2 >= this.mNextHistoryTagIdx) {
                this.mNextHistoryTagIdx = readInt2 + 1;
            }
            this.mNumHistoryTagChars += historyTag.string.length() + 1;
        }
        int readInt4 = parcel.readInt();
        int dataPosition = parcel.dataPosition();
        if (readInt4 >= MAX_MAX_HISTORY_BUFFER * 3) {
            throw new ParcelFormatException("File corrupt: history data buffer too large " + readInt4);
        }
        if ((readInt4 & (-4)) != readInt4) {
            throw new ParcelFormatException("File corrupt: history data buffer not aligned " + readInt4);
        }
        this.mHistoryBuffer.appendFrom(parcel, dataPosition, readInt4);
        parcel.setDataPosition(dataPosition + readInt4);
        if (z) {
            readOldHistory(parcel);
        }
        this.mHistoryBaseTime = readLong;
        if (this.mHistoryBaseTime > 0) {
            this.mHistoryBaseTime = (this.mHistoryBaseTime - this.mClocks.elapsedRealtime()) + 1;
        }
    }

    void writeHistory(Parcel parcel, boolean z, boolean z2) {
        parcel.writeLong(this.mHistoryBaseTime + this.mLastHistoryElapsedRealtime);
        if (!z) {
            parcel.writeInt(0);
            parcel.writeInt(0);
            return;
        }
        parcel.writeInt(this.mHistoryTagPool.size());
        for (Map.Entry<BatteryStats.HistoryTag, Integer> entry : this.mHistoryTagPool.entrySet()) {
            BatteryStats.HistoryTag key = entry.getKey();
            parcel.writeInt(entry.getValue().intValue());
            parcel.writeString(key.string);
            parcel.writeInt(key.uid);
        }
        parcel.writeInt(this.mHistoryBuffer.dataSize());
        parcel.appendFrom(this.mHistoryBuffer, 0, this.mHistoryBuffer.dataSize());
        if (z2) {
            writeOldHistory(parcel);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v14 */
    /* JADX WARN: Type inference failed for: r2v7, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r4v0 */
    /* JADX WARN: Type inference failed for: r4v1, types: [com.android.internal.os.BatteryStatsImpl$LongSamplingCounterArray[], android.os.Parcel, com.android.internal.os.BatteryStatsImpl$LongSamplingCounter[][], com.android.internal.os.BatteryStatsImpl$LongSamplingCounter] */
    /* JADX WARN: Type inference failed for: r4v2 */
    public void readSummaryFromParcel(Parcel parcel) throws ParcelFormatException {
        int i;
        int i2;
        int readInt = parcel.readInt();
        if (readInt != 177) {
            Slog.w("BatteryStats", "readFromParcel: version got " + readInt + ", expected 177; erasing old stats");
            return;
        }
        ?? r2 = 1;
        readHistory(parcel, true);
        this.mStartCount = parcel.readInt();
        this.mUptime = parcel.readLong();
        this.mRealtime = parcel.readLong();
        this.mStartClockTime = parcel.readLong();
        this.mStartPlatformVersion = parcel.readString();
        this.mEndPlatformVersion = parcel.readString();
        this.mOnBatteryTimeBase.readSummaryFromParcel(parcel);
        this.mOnBatteryScreenOffTimeBase.readSummaryFromParcel(parcel);
        this.mDischargeUnplugLevel = parcel.readInt();
        this.mDischargePlugLevel = parcel.readInt();
        this.mDischargeCurrentLevel = parcel.readInt();
        this.mCurrentBatteryLevel = parcel.readInt();
        this.mEstimatedBatteryCapacity = parcel.readInt();
        this.mMinLearnedBatteryCapacity = parcel.readInt();
        this.mMaxLearnedBatteryCapacity = parcel.readInt();
        this.mLowDischargeAmountSinceCharge = parcel.readInt();
        this.mHighDischargeAmountSinceCharge = parcel.readInt();
        this.mDischargeAmountScreenOnSinceCharge = parcel.readInt();
        this.mDischargeAmountScreenOffSinceCharge = parcel.readInt();
        this.mDischargeAmountScreenDozeSinceCharge = parcel.readInt();
        this.mDischargeStepTracker.readFromParcel(parcel);
        this.mChargeStepTracker.readFromParcel(parcel);
        this.mDailyDischargeStepTracker.readFromParcel(parcel);
        this.mDailyChargeStepTracker.readFromParcel(parcel);
        this.mDischargeCounter.readSummaryFromParcelLocked(parcel);
        this.mDischargeScreenOffCounter.readSummaryFromParcelLocked(parcel);
        this.mDischargeScreenDozeCounter.readSummaryFromParcelLocked(parcel);
        this.mDischargeLightDozeCounter.readSummaryFromParcelLocked(parcel);
        this.mDischargeDeepDozeCounter.readSummaryFromParcelLocked(parcel);
        int readInt2 = parcel.readInt();
        ?? r4 = 0;
        boolean z = 0;
        if (readInt2 > 0) {
            this.mDailyPackageChanges = new ArrayList<>(readInt2);
            while (readInt2 > 0) {
                readInt2--;
                BatteryStats.PackageChange packageChange = new BatteryStats.PackageChange();
                packageChange.mPackageName = parcel.readString();
                packageChange.mUpdate = parcel.readInt() != 0;
                packageChange.mVersionCode = parcel.readLong();
                this.mDailyPackageChanges.add(packageChange);
            }
        } else {
            this.mDailyPackageChanges = null;
        }
        this.mDailyStartTime = parcel.readLong();
        this.mNextMinDailyDeadline = parcel.readLong();
        this.mNextMaxDailyDeadline = parcel.readLong();
        this.mStartCount++;
        this.mScreenState = 0;
        this.mScreenOnTimer.readSummaryFromParcelLocked(parcel);
        this.mScreenDozeTimer.readSummaryFromParcelLocked(parcel);
        int i3 = 0;
        while (true) {
            i = 5;
            if (i3 >= 5) {
                break;
            }
            this.mScreenBrightnessTimer[i3].readSummaryFromParcelLocked(parcel);
            i3++;
        }
        this.mInteractive = false;
        this.mInteractiveTimer.readSummaryFromParcelLocked(parcel);
        this.mPhoneOn = false;
        this.mPowerSaveModeEnabledTimer.readSummaryFromParcelLocked(parcel);
        this.mLongestLightIdleTime = parcel.readLong();
        this.mLongestFullIdleTime = parcel.readLong();
        this.mDeviceIdleModeLightTimer.readSummaryFromParcelLocked(parcel);
        this.mDeviceIdleModeFullTimer.readSummaryFromParcelLocked(parcel);
        this.mDeviceLightIdlingTimer.readSummaryFromParcelLocked(parcel);
        this.mDeviceIdlingTimer.readSummaryFromParcelLocked(parcel);
        this.mPhoneOnTimer.readSummaryFromParcelLocked(parcel);
        for (int i4 = 0; i4 < 5; i4++) {
            this.mPhoneSignalStrengthsTimer[i4].readSummaryFromParcelLocked(parcel);
        }
        this.mPhoneSignalScanningTimer.readSummaryFromParcelLocked(parcel);
        for (int i5 = 0; i5 < 21; i5++) {
            this.mPhoneDataConnectionsTimer[i5].readSummaryFromParcelLocked(parcel);
        }
        int i6 = 0;
        while (true) {
            i2 = 10;
            if (i6 >= 10) {
                break;
            }
            this.mNetworkByteActivityCounters[i6].readSummaryFromParcelLocked(parcel);
            this.mNetworkPacketActivityCounters[i6].readSummaryFromParcelLocked(parcel);
            i6++;
        }
        this.mMobileRadioPowerState = 1;
        this.mMobileRadioActiveTimer.readSummaryFromParcelLocked(parcel);
        this.mMobileRadioActivePerAppTimer.readSummaryFromParcelLocked(parcel);
        this.mMobileRadioActiveAdjustedTime.readSummaryFromParcelLocked(parcel);
        this.mMobileRadioActiveUnknownTime.readSummaryFromParcelLocked(parcel);
        this.mMobileRadioActiveUnknownCount.readSummaryFromParcelLocked(parcel);
        this.mWifiMulticastWakelockTimer.readSummaryFromParcelLocked(parcel);
        this.mWifiRadioPowerState = 1;
        this.mWifiOn = false;
        this.mWifiOnTimer.readSummaryFromParcelLocked(parcel);
        this.mGlobalWifiRunning = false;
        this.mGlobalWifiRunningTimer.readSummaryFromParcelLocked(parcel);
        for (int i7 = 0; i7 < 8; i7++) {
            this.mWifiStateTimer[i7].readSummaryFromParcelLocked(parcel);
        }
        for (int i8 = 0; i8 < 13; i8++) {
            this.mWifiSupplStateTimer[i8].readSummaryFromParcelLocked(parcel);
        }
        for (int i9 = 0; i9 < 5; i9++) {
            this.mWifiSignalStrengthsTimer[i9].readSummaryFromParcelLocked(parcel);
        }
        this.mWifiActiveTimer.readSummaryFromParcelLocked(parcel);
        this.mWifiActivity.readSummaryFromParcel(parcel);
        for (int i10 = 0; i10 < 2; i10++) {
            this.mGpsSignalQualityTimer[i10].readSummaryFromParcelLocked(parcel);
        }
        this.mBluetoothActivity.readSummaryFromParcel(parcel);
        this.mModemActivity.readSummaryFromParcel(parcel);
        this.mHasWifiReporting = parcel.readInt() != 0;
        this.mHasBluetoothReporting = parcel.readInt() != 0;
        this.mHasModemReporting = parcel.readInt() != 0;
        int readInt3 = parcel.readInt();
        this.mLoadedNumConnectivityChange = readInt3;
        this.mNumConnectivityChange = readInt3;
        this.mFlashlightOnNesting = 0;
        this.mFlashlightOnTimer.readSummaryFromParcelLocked(parcel);
        this.mCameraOnNesting = 0;
        this.mCameraOnTimer.readSummaryFromParcelLocked(parcel);
        this.mBluetoothScanNesting = 0;
        this.mBluetoothScanTimer.readSummaryFromParcelLocked(parcel);
        this.mIsCellularTxPowerHigh = false;
        int readInt4 = parcel.readInt();
        if (readInt4 > 10000) {
            throw new ParcelFormatException("File corrupt: too many rpm stats " + readInt4);
        }
        for (int i11 = 0; i11 < readInt4; i11++) {
            if (parcel.readInt() != 0) {
                getRpmTimerLocked(parcel.readString()).readSummaryFromParcelLocked(parcel);
            }
        }
        int readInt5 = parcel.readInt();
        if (readInt5 > 10000) {
            throw new ParcelFormatException("File corrupt: too many screen-off rpm stats " + readInt5);
        }
        for (int i12 = 0; i12 < readInt5; i12++) {
            if (parcel.readInt() != 0) {
                getScreenOffRpmTimerLocked(parcel.readString()).readSummaryFromParcelLocked(parcel);
            }
        }
        int readInt6 = parcel.readInt();
        if (readInt6 > 10000) {
            throw new ParcelFormatException("File corrupt: too many kernel wake locks " + readInt6);
        }
        for (int i13 = 0; i13 < readInt6; i13++) {
            if (parcel.readInt() != 0) {
                getKernelWakelockTimerLocked(parcel.readString()).readSummaryFromParcelLocked(parcel);
            }
        }
        int readInt7 = parcel.readInt();
        if (readInt7 > 10000) {
            throw new ParcelFormatException("File corrupt: too many wakeup reasons " + readInt7);
        }
        for (int i14 = 0; i14 < readInt7; i14++) {
            if (parcel.readInt() != 0) {
                getWakeupReasonTimerLocked(parcel.readString()).readSummaryFromParcelLocked(parcel);
            }
        }
        int readInt8 = parcel.readInt();
        for (int i15 = 0; i15 < readInt8; i15++) {
            if (parcel.readInt() != 0) {
                getKernelMemoryTimerLocked(parcel.readLong()).readSummaryFromParcelLocked(parcel);
            }
        }
        int readInt9 = parcel.readInt();
        if (readInt9 > 10000) {
            throw new ParcelFormatException("File corrupt: too many uids " + readInt9);
        }
        int i16 = 0;
        while (i16 < readInt9) {
            int readInt10 = parcel.readInt();
            Uid uid = new Uid(this, readInt10);
            this.mUidStats.put(readInt10, uid);
            uid.mOnBatteryBackgroundTimeBase.readSummaryFromParcel(parcel);
            uid.mOnBatteryScreenOffBackgroundTimeBase.readSummaryFromParcel(parcel);
            uid.mWifiRunning = z;
            if (parcel.readInt() != 0) {
                uid.mWifiRunningTimer.readSummaryFromParcelLocked(parcel);
            }
            uid.mFullWifiLockOut = z;
            if (parcel.readInt() != 0) {
                uid.mFullWifiLockTimer.readSummaryFromParcelLocked(parcel);
            }
            uid.mWifiScanStarted = z;
            if (parcel.readInt() != 0) {
                uid.mWifiScanTimer.readSummaryFromParcelLocked(parcel);
            }
            uid.mWifiBatchedScanBinStarted = -1;
            for (int i17 = z; i17 < i; i17++) {
                if (parcel.readInt() != 0) {
                    uid.makeWifiBatchedScanBin(i17, r4);
                    uid.mWifiBatchedScanTimer[i17].readSummaryFromParcelLocked(parcel);
                }
            }
            uid.mWifiMulticastEnabled = z;
            if (parcel.readInt() != 0) {
                uid.mWifiMulticastTimer.readSummaryFromParcelLocked(parcel);
            }
            if (parcel.readInt() != 0) {
                uid.createAudioTurnedOnTimerLocked().readSummaryFromParcelLocked(parcel);
            }
            if (parcel.readInt() != 0) {
                uid.createVideoTurnedOnTimerLocked().readSummaryFromParcelLocked(parcel);
            }
            if (parcel.readInt() != 0) {
                uid.createFlashlightTurnedOnTimerLocked().readSummaryFromParcelLocked(parcel);
            }
            if (parcel.readInt() != 0) {
                uid.createCameraTurnedOnTimerLocked().readSummaryFromParcelLocked(parcel);
            }
            if (parcel.readInt() != 0) {
                uid.createForegroundActivityTimerLocked().readSummaryFromParcelLocked(parcel);
            }
            if (parcel.readInt() != 0) {
                uid.createForegroundServiceTimerLocked().readSummaryFromParcelLocked(parcel);
            }
            if (parcel.readInt() != 0) {
                uid.createAggregatedPartialWakelockTimerLocked().readSummaryFromParcelLocked(parcel);
            }
            if (parcel.readInt() != 0) {
                uid.createBluetoothScanTimerLocked().readSummaryFromParcelLocked(parcel);
            }
            if (parcel.readInt() != 0) {
                uid.createBluetoothUnoptimizedScanTimerLocked().readSummaryFromParcelLocked(parcel);
            }
            if (parcel.readInt() != 0) {
                uid.createBluetoothScanResultCounterLocked().readSummaryFromParcelLocked(parcel);
            }
            if (parcel.readInt() != 0) {
                uid.createBluetoothScanResultBgCounterLocked().readSummaryFromParcelLocked(parcel);
            }
            uid.mProcessState = 19;
            for (int i18 = z; i18 < 7; i18++) {
                if (parcel.readInt() != 0) {
                    uid.makeProcessState(i18, r4);
                    uid.mProcessStateTimer[i18].readSummaryFromParcelLocked(parcel);
                }
            }
            if (parcel.readInt() != 0) {
                uid.createVibratorOnTimerLocked().readSummaryFromParcelLocked(parcel);
            }
            if (parcel.readInt() != 0) {
                if (uid.mUserActivityCounters == null) {
                    uid.initUserActivityLocked();
                }
                for (int i19 = z; i19 < 4; i19++) {
                    uid.mUserActivityCounters[i19].readSummaryFromParcelLocked(parcel);
                }
            }
            if (parcel.readInt() != 0) {
                if (uid.mNetworkByteActivityCounters == null) {
                    uid.initNetworkActivityLocked();
                }
                for (int i20 = z; i20 < i2; i20++) {
                    uid.mNetworkByteActivityCounters[i20].readSummaryFromParcelLocked(parcel);
                    uid.mNetworkPacketActivityCounters[i20].readSummaryFromParcelLocked(parcel);
                }
                uid.mMobileRadioActiveTime.readSummaryFromParcelLocked(parcel);
                uid.mMobileRadioActiveCount.readSummaryFromParcelLocked(parcel);
            }
            uid.mUserCpuTime.readSummaryFromParcelLocked(parcel);
            uid.mSystemCpuTime.readSummaryFromParcelLocked(parcel);
            if (parcel.readInt() != 0) {
                int readInt11 = parcel.readInt();
                if (this.mPowerProfile != null && this.mPowerProfile.getNumCpuClusters() != readInt11) {
                    throw new ParcelFormatException("Incompatible cpu cluster arrangement");
                }
                uid.mCpuClusterSpeedTimesUs = new LongSamplingCounter[readInt11];
                for (int i21 = z; i21 < readInt11; i21++) {
                    if (parcel.readInt() != 0) {
                        int readInt12 = parcel.readInt();
                        if (this.mPowerProfile != null && this.mPowerProfile.getNumSpeedStepsInCpuCluster(i21) != readInt12) {
                            throw new ParcelFormatException("File corrupt: too many speed bins " + readInt12);
                        }
                        uid.mCpuClusterSpeedTimesUs[i21] = new LongSamplingCounter[readInt12];
                        for (int i22 = 0; i22 < readInt12; i22++) {
                            if (parcel.readInt() != 0) {
                                uid.mCpuClusterSpeedTimesUs[i21][i22] = new LongSamplingCounter(this.mOnBatteryTimeBase);
                                uid.mCpuClusterSpeedTimesUs[i21][i22].readSummaryFromParcelLocked(parcel);
                            }
                        }
                    } else {
                        uid.mCpuClusterSpeedTimesUs[i21] = r4;
                    }
                }
            } else {
                uid.mCpuClusterSpeedTimesUs = r4;
            }
            uid.mCpuFreqTimeMs = LongSamplingCounterArray.readSummaryFromParcelLocked(parcel, this.mOnBatteryTimeBase);
            uid.mScreenOffCpuFreqTimeMs = LongSamplingCounterArray.readSummaryFromParcelLocked(parcel, this.mOnBatteryScreenOffTimeBase);
            uid.mCpuActiveTimeMs.readSummaryFromParcelLocked(parcel);
            uid.mCpuClusterTimesMs.readSummaryFromParcelLocked(parcel);
            int readInt13 = parcel.readInt();
            if (readInt13 == 7) {
                uid.mProcStateTimeMs = new LongSamplingCounterArray[readInt13];
                for (int i23 = 0; i23 < readInt13; i23++) {
                    uid.mProcStateTimeMs[i23] = LongSamplingCounterArray.readSummaryFromParcelLocked(parcel, this.mOnBatteryTimeBase);
                }
            } else {
                uid.mProcStateTimeMs = r4;
            }
            int readInt14 = parcel.readInt();
            if (readInt14 == 7) {
                uid.mProcStateScreenOffTimeMs = new LongSamplingCounterArray[readInt14];
                for (int i24 = 0; i24 < readInt14; i24++) {
                    uid.mProcStateScreenOffTimeMs[i24] = LongSamplingCounterArray.readSummaryFromParcelLocked(parcel, this.mOnBatteryScreenOffTimeBase);
                }
            } else {
                uid.mProcStateScreenOffTimeMs = r4;
            }
            if (parcel.readInt() != 0) {
                uid.mMobileRadioApWakeupCount = new LongSamplingCounter(this.mOnBatteryTimeBase);
                uid.mMobileRadioApWakeupCount.readSummaryFromParcelLocked(parcel);
            } else {
                uid.mMobileRadioApWakeupCount = r4;
            }
            if (parcel.readInt() != 0) {
                uid.mWifiRadioApWakeupCount = new LongSamplingCounter(this.mOnBatteryTimeBase);
                uid.mWifiRadioApWakeupCount.readSummaryFromParcelLocked(parcel);
            } else {
                uid.mWifiRadioApWakeupCount = r4;
            }
            int readInt15 = parcel.readInt();
            if (readInt15 > MAX_WAKELOCKS_PER_UID + r2) {
                throw new ParcelFormatException("File corrupt: too many wake locks " + readInt15);
            }
            for (int i25 = 0; i25 < readInt15; i25++) {
                uid.readWakeSummaryFromParcelLocked(parcel.readString(), parcel);
            }
            int readInt16 = parcel.readInt();
            if (readInt16 > MAX_WAKELOCKS_PER_UID + r2) {
                throw new ParcelFormatException("File corrupt: too many syncs " + readInt16);
            }
            for (int i26 = 0; i26 < readInt16; i26++) {
                uid.readSyncSummaryFromParcelLocked(parcel.readString(), parcel);
            }
            int readInt17 = parcel.readInt();
            if (readInt17 > MAX_WAKELOCKS_PER_UID + r2) {
                throw new ParcelFormatException("File corrupt: too many job timers " + readInt17);
            }
            for (int i27 = 0; i27 < readInt17; i27++) {
                uid.readJobSummaryFromParcelLocked(parcel.readString(), parcel);
            }
            uid.readJobCompletionsFromParcelLocked(parcel);
            uid.mJobsDeferredEventCount.readSummaryFromParcelLocked(parcel);
            uid.mJobsDeferredCount.readSummaryFromParcelLocked(parcel);
            uid.mJobsFreshnessTimeMs.readSummaryFromParcelLocked(parcel);
            for (int i28 = 0; i28 < JOB_FRESHNESS_BUCKETS.length; i28++) {
                if (parcel.readInt() != 0) {
                    uid.mJobsFreshnessBuckets[i28] = new Counter(uid.mBsi.mOnBatteryTimeBase);
                    uid.mJobsFreshnessBuckets[i28].readSummaryFromParcelLocked(parcel);
                }
            }
            int readInt18 = parcel.readInt();
            if (readInt18 > 1000) {
                throw new ParcelFormatException("File corrupt: too many sensors " + readInt18);
            }
            for (int i29 = 0; i29 < readInt18; i29++) {
                int readInt19 = parcel.readInt();
                if (parcel.readInt() != 0) {
                    uid.getSensorTimerLocked(readInt19, r2).readSummaryFromParcelLocked(parcel);
                }
            }
            int readInt20 = parcel.readInt();
            if (readInt20 > 1000) {
                throw new ParcelFormatException("File corrupt: too many processes " + readInt20);
            }
            for (int i30 = 0; i30 < readInt20; i30++) {
                Uid.Proc processStatsLocked = uid.getProcessStatsLocked(parcel.readString());
                long readLong = parcel.readLong();
                processStatsLocked.mLoadedUserTime = readLong;
                processStatsLocked.mUserTime = readLong;
                long readLong2 = parcel.readLong();
                processStatsLocked.mLoadedSystemTime = readLong2;
                processStatsLocked.mSystemTime = readLong2;
                long readLong3 = parcel.readLong();
                processStatsLocked.mLoadedForegroundTime = readLong3;
                processStatsLocked.mForegroundTime = readLong3;
                int readInt21 = parcel.readInt();
                processStatsLocked.mLoadedStarts = readInt21;
                processStatsLocked.mStarts = readInt21;
                int readInt22 = parcel.readInt();
                processStatsLocked.mLoadedNumCrashes = readInt22;
                processStatsLocked.mNumCrashes = readInt22;
                int readInt23 = parcel.readInt();
                processStatsLocked.mLoadedNumAnrs = readInt23;
                processStatsLocked.mNumAnrs = readInt23;
                processStatsLocked.readExcessivePowerFromParcelLocked(parcel);
            }
            int readInt24 = parcel.readInt();
            if (readInt24 > 10000) {
                throw new ParcelFormatException("File corrupt: too many packages " + readInt24);
            }
            for (int i31 = 0; i31 < readInt24; i31++) {
                String readString = parcel.readString();
                Uid.Pkg packageStatsLocked = uid.getPackageStatsLocked(readString);
                int readInt25 = parcel.readInt();
                if (readInt25 > 1000) {
                    throw new ParcelFormatException("File corrupt: too many wakeup alarms " + readInt25);
                }
                packageStatsLocked.mWakeupAlarms.clear();
                for (int i32 = 0; i32 < readInt25; i32++) {
                    String readString2 = parcel.readString();
                    Counter counter = new Counter(this.mOnBatteryScreenOffTimeBase);
                    counter.readSummaryFromParcelLocked(parcel);
                    packageStatsLocked.mWakeupAlarms.put(readString2, counter);
                }
                int readInt26 = parcel.readInt();
                if (readInt26 > 1000) {
                    throw new ParcelFormatException("File corrupt: too many services " + readInt26);
                }
                for (int i33 = 0; i33 < readInt26; i33++) {
                    Uid.Pkg.Serv serviceStatsLocked = uid.getServiceStatsLocked(readString, parcel.readString());
                    long readLong4 = parcel.readLong();
                    serviceStatsLocked.mLoadedStartTime = readLong4;
                    serviceStatsLocked.mStartTime = readLong4;
                    int readInt27 = parcel.readInt();
                    serviceStatsLocked.mLoadedStarts = readInt27;
                    serviceStatsLocked.mStarts = readInt27;
                    int readInt28 = parcel.readInt();
                    serviceStatsLocked.mLoadedLaunches = readInt28;
                    serviceStatsLocked.mLaunches = readInt28;
                }
            }
            i16++;
            r2 = 1;
            r4 = 0;
            z = 0;
            i = 5;
            i2 = 10;
        }
    }

    public void writeSummaryToParcel(Parcel parcel, boolean z) {
        int i;
        pullPendingStateUpdatesLocked();
        long startClockTime = getStartClockTime();
        long uptimeMillis = this.mClocks.uptimeMillis() * 1000;
        long elapsedRealtime = this.mClocks.elapsedRealtime() * 1000;
        parcel.writeInt(177);
        writeHistory(parcel, z, true);
        parcel.writeInt(this.mStartCount);
        parcel.writeLong(computeUptime(uptimeMillis, 0));
        parcel.writeLong(computeRealtime(elapsedRealtime, 0));
        parcel.writeLong(startClockTime);
        parcel.writeString(this.mStartPlatformVersion);
        parcel.writeString(this.mEndPlatformVersion);
        this.mOnBatteryTimeBase.writeSummaryToParcel(parcel, uptimeMillis, elapsedRealtime);
        this.mOnBatteryScreenOffTimeBase.writeSummaryToParcel(parcel, uptimeMillis, elapsedRealtime);
        parcel.writeInt(this.mDischargeUnplugLevel);
        parcel.writeInt(this.mDischargePlugLevel);
        parcel.writeInt(this.mDischargeCurrentLevel);
        parcel.writeInt(this.mCurrentBatteryLevel);
        parcel.writeInt(this.mEstimatedBatteryCapacity);
        parcel.writeInt(this.mMinLearnedBatteryCapacity);
        parcel.writeInt(this.mMaxLearnedBatteryCapacity);
        parcel.writeInt(getLowDischargeAmountSinceCharge());
        parcel.writeInt(getHighDischargeAmountSinceCharge());
        parcel.writeInt(getDischargeAmountScreenOnSinceCharge());
        parcel.writeInt(getDischargeAmountScreenOffSinceCharge());
        parcel.writeInt(getDischargeAmountScreenDozeSinceCharge());
        this.mDischargeStepTracker.writeToParcel(parcel);
        this.mChargeStepTracker.writeToParcel(parcel);
        this.mDailyDischargeStepTracker.writeToParcel(parcel);
        this.mDailyChargeStepTracker.writeToParcel(parcel);
        this.mDischargeCounter.writeSummaryFromParcelLocked(parcel);
        this.mDischargeScreenOffCounter.writeSummaryFromParcelLocked(parcel);
        this.mDischargeScreenDozeCounter.writeSummaryFromParcelLocked(parcel);
        this.mDischargeLightDozeCounter.writeSummaryFromParcelLocked(parcel);
        this.mDischargeDeepDozeCounter.writeSummaryFromParcelLocked(parcel);
        if (this.mDailyPackageChanges != null) {
            int size = this.mDailyPackageChanges.size();
            parcel.writeInt(size);
            for (int i2 = 0; i2 < size; i2++) {
                BatteryStats.PackageChange packageChange = this.mDailyPackageChanges.get(i2);
                parcel.writeString(packageChange.mPackageName);
                parcel.writeInt(packageChange.mUpdate ? 1 : 0);
                parcel.writeLong(packageChange.mVersionCode);
            }
        } else {
            parcel.writeInt(0);
        }
        parcel.writeLong(this.mDailyStartTime);
        parcel.writeLong(this.mNextMinDailyDeadline);
        parcel.writeLong(this.mNextMaxDailyDeadline);
        this.mScreenOnTimer.writeSummaryFromParcelLocked(parcel, elapsedRealtime);
        this.mScreenDozeTimer.writeSummaryFromParcelLocked(parcel, elapsedRealtime);
        int i3 = 0;
        while (true) {
            i = 5;
            if (i3 >= 5) {
                break;
            }
            this.mScreenBrightnessTimer[i3].writeSummaryFromParcelLocked(parcel, elapsedRealtime);
            i3++;
        }
        this.mInteractiveTimer.writeSummaryFromParcelLocked(parcel, elapsedRealtime);
        this.mPowerSaveModeEnabledTimer.writeSummaryFromParcelLocked(parcel, elapsedRealtime);
        parcel.writeLong(this.mLongestLightIdleTime);
        parcel.writeLong(this.mLongestFullIdleTime);
        this.mDeviceIdleModeLightTimer.writeSummaryFromParcelLocked(parcel, elapsedRealtime);
        this.mDeviceIdleModeFullTimer.writeSummaryFromParcelLocked(parcel, elapsedRealtime);
        this.mDeviceLightIdlingTimer.writeSummaryFromParcelLocked(parcel, elapsedRealtime);
        this.mDeviceIdlingTimer.writeSummaryFromParcelLocked(parcel, elapsedRealtime);
        this.mPhoneOnTimer.writeSummaryFromParcelLocked(parcel, elapsedRealtime);
        for (int i4 = 0; i4 < 5; i4++) {
            this.mPhoneSignalStrengthsTimer[i4].writeSummaryFromParcelLocked(parcel, elapsedRealtime);
        }
        this.mPhoneSignalScanningTimer.writeSummaryFromParcelLocked(parcel, elapsedRealtime);
        for (int i5 = 0; i5 < 21; i5++) {
            this.mPhoneDataConnectionsTimer[i5].writeSummaryFromParcelLocked(parcel, elapsedRealtime);
        }
        for (int i6 = 0; i6 < 10; i6++) {
            this.mNetworkByteActivityCounters[i6].writeSummaryFromParcelLocked(parcel);
            this.mNetworkPacketActivityCounters[i6].writeSummaryFromParcelLocked(parcel);
        }
        this.mMobileRadioActiveTimer.writeSummaryFromParcelLocked(parcel, elapsedRealtime);
        this.mMobileRadioActivePerAppTimer.writeSummaryFromParcelLocked(parcel, elapsedRealtime);
        this.mMobileRadioActiveAdjustedTime.writeSummaryFromParcelLocked(parcel);
        this.mMobileRadioActiveUnknownTime.writeSummaryFromParcelLocked(parcel);
        this.mMobileRadioActiveUnknownCount.writeSummaryFromParcelLocked(parcel);
        this.mWifiMulticastWakelockTimer.writeSummaryFromParcelLocked(parcel, elapsedRealtime);
        this.mWifiOnTimer.writeSummaryFromParcelLocked(parcel, elapsedRealtime);
        this.mGlobalWifiRunningTimer.writeSummaryFromParcelLocked(parcel, elapsedRealtime);
        for (int i7 = 0; i7 < 8; i7++) {
            this.mWifiStateTimer[i7].writeSummaryFromParcelLocked(parcel, elapsedRealtime);
        }
        for (int i8 = 0; i8 < 13; i8++) {
            this.mWifiSupplStateTimer[i8].writeSummaryFromParcelLocked(parcel, elapsedRealtime);
        }
        for (int i9 = 0; i9 < 5; i9++) {
            this.mWifiSignalStrengthsTimer[i9].writeSummaryFromParcelLocked(parcel, elapsedRealtime);
        }
        this.mWifiActiveTimer.writeSummaryFromParcelLocked(parcel, elapsedRealtime);
        this.mWifiActivity.writeSummaryToParcel(parcel);
        for (int i10 = 0; i10 < 2; i10++) {
            this.mGpsSignalQualityTimer[i10].writeSummaryFromParcelLocked(parcel, elapsedRealtime);
        }
        this.mBluetoothActivity.writeSummaryToParcel(parcel);
        this.mModemActivity.writeSummaryToParcel(parcel);
        parcel.writeInt(this.mHasWifiReporting ? 1 : 0);
        parcel.writeInt(this.mHasBluetoothReporting ? 1 : 0);
        parcel.writeInt(this.mHasModemReporting ? 1 : 0);
        parcel.writeInt(this.mNumConnectivityChange);
        this.mFlashlightOnTimer.writeSummaryFromParcelLocked(parcel, elapsedRealtime);
        this.mCameraOnTimer.writeSummaryFromParcelLocked(parcel, elapsedRealtime);
        this.mBluetoothScanTimer.writeSummaryFromParcelLocked(parcel, elapsedRealtime);
        parcel.writeInt(this.mRpmStats.size());
        for (Map.Entry<String, SamplingTimer> entry : this.mRpmStats.entrySet()) {
            SamplingTimer value = entry.getValue();
            if (value != null) {
                parcel.writeInt(1);
                parcel.writeString(entry.getKey());
                value.writeSummaryFromParcelLocked(parcel, elapsedRealtime);
            } else {
                parcel.writeInt(0);
            }
        }
        parcel.writeInt(this.mScreenOffRpmStats.size());
        for (Map.Entry<String, SamplingTimer> entry2 : this.mScreenOffRpmStats.entrySet()) {
            SamplingTimer value2 = entry2.getValue();
            if (value2 != null) {
                parcel.writeInt(1);
                parcel.writeString(entry2.getKey());
                value2.writeSummaryFromParcelLocked(parcel, elapsedRealtime);
            } else {
                parcel.writeInt(0);
            }
        }
        parcel.writeInt(this.mKernelWakelockStats.size());
        for (Map.Entry<String, SamplingTimer> entry3 : this.mKernelWakelockStats.entrySet()) {
            SamplingTimer value3 = entry3.getValue();
            if (value3 != null) {
                parcel.writeInt(1);
                parcel.writeString(entry3.getKey());
                value3.writeSummaryFromParcelLocked(parcel, elapsedRealtime);
            } else {
                parcel.writeInt(0);
            }
        }
        parcel.writeInt(this.mWakeupReasonStats.size());
        for (Map.Entry<String, SamplingTimer> entry4 : this.mWakeupReasonStats.entrySet()) {
            SamplingTimer value4 = entry4.getValue();
            if (value4 != null) {
                parcel.writeInt(1);
                parcel.writeString(entry4.getKey());
                value4.writeSummaryFromParcelLocked(parcel, elapsedRealtime);
            } else {
                parcel.writeInt(0);
            }
        }
        parcel.writeInt(this.mKernelMemoryStats.size());
        for (int i11 = 0; i11 < this.mKernelMemoryStats.size(); i11++) {
            SamplingTimer valueAt = this.mKernelMemoryStats.valueAt(i11);
            if (valueAt != null) {
                parcel.writeInt(1);
                parcel.writeLong(this.mKernelMemoryStats.keyAt(i11));
                valueAt.writeSummaryFromParcelLocked(parcel, elapsedRealtime);
            } else {
                parcel.writeInt(0);
            }
        }
        int size2 = this.mUidStats.size();
        parcel.writeInt(size2);
        int i12 = 0;
        while (i12 < size2) {
            parcel.writeInt(this.mUidStats.keyAt(i12));
            Uid valueAt2 = this.mUidStats.valueAt(i12);
            int i13 = size2;
            int i14 = i12;
            valueAt2.mOnBatteryBackgroundTimeBase.writeSummaryToParcel(parcel, uptimeMillis, elapsedRealtime);
            valueAt2.mOnBatteryScreenOffBackgroundTimeBase.writeSummaryToParcel(parcel, uptimeMillis, elapsedRealtime);
            if (valueAt2.mWifiRunningTimer != null) {
                parcel.writeInt(1);
                valueAt2.mWifiRunningTimer.writeSummaryFromParcelLocked(parcel, elapsedRealtime);
            } else {
                parcel.writeInt(0);
            }
            if (valueAt2.mFullWifiLockTimer != null) {
                parcel.writeInt(1);
                valueAt2.mFullWifiLockTimer.writeSummaryFromParcelLocked(parcel, elapsedRealtime);
            } else {
                parcel.writeInt(0);
            }
            if (valueAt2.mWifiScanTimer != null) {
                parcel.writeInt(1);
                valueAt2.mWifiScanTimer.writeSummaryFromParcelLocked(parcel, elapsedRealtime);
            } else {
                parcel.writeInt(0);
            }
            for (int i15 = 0; i15 < i; i15++) {
                if (valueAt2.mWifiBatchedScanTimer[i15] != null) {
                    parcel.writeInt(1);
                    valueAt2.mWifiBatchedScanTimer[i15].writeSummaryFromParcelLocked(parcel, elapsedRealtime);
                } else {
                    parcel.writeInt(0);
                }
            }
            if (valueAt2.mWifiMulticastTimer != null) {
                parcel.writeInt(1);
                valueAt2.mWifiMulticastTimer.writeSummaryFromParcelLocked(parcel, elapsedRealtime);
            } else {
                parcel.writeInt(0);
            }
            if (valueAt2.mAudioTurnedOnTimer != null) {
                parcel.writeInt(1);
                valueAt2.mAudioTurnedOnTimer.writeSummaryFromParcelLocked(parcel, elapsedRealtime);
            } else {
                parcel.writeInt(0);
            }
            if (valueAt2.mVideoTurnedOnTimer != null) {
                parcel.writeInt(1);
                valueAt2.mVideoTurnedOnTimer.writeSummaryFromParcelLocked(parcel, elapsedRealtime);
            } else {
                parcel.writeInt(0);
            }
            if (valueAt2.mFlashlightTurnedOnTimer != null) {
                parcel.writeInt(1);
                valueAt2.mFlashlightTurnedOnTimer.writeSummaryFromParcelLocked(parcel, elapsedRealtime);
            } else {
                parcel.writeInt(0);
            }
            if (valueAt2.mCameraTurnedOnTimer != null) {
                parcel.writeInt(1);
                valueAt2.mCameraTurnedOnTimer.writeSummaryFromParcelLocked(parcel, elapsedRealtime);
            } else {
                parcel.writeInt(0);
            }
            if (valueAt2.mForegroundActivityTimer != null) {
                parcel.writeInt(1);
                valueAt2.mForegroundActivityTimer.writeSummaryFromParcelLocked(parcel, elapsedRealtime);
            } else {
                parcel.writeInt(0);
            }
            if (valueAt2.mForegroundServiceTimer != null) {
                parcel.writeInt(1);
                valueAt2.mForegroundServiceTimer.writeSummaryFromParcelLocked(parcel, elapsedRealtime);
            } else {
                parcel.writeInt(0);
            }
            if (valueAt2.mAggregatedPartialWakelockTimer != null) {
                parcel.writeInt(1);
                valueAt2.mAggregatedPartialWakelockTimer.writeSummaryFromParcelLocked(parcel, elapsedRealtime);
            } else {
                parcel.writeInt(0);
            }
            if (valueAt2.mBluetoothScanTimer != null) {
                parcel.writeInt(1);
                valueAt2.mBluetoothScanTimer.writeSummaryFromParcelLocked(parcel, elapsedRealtime);
            } else {
                parcel.writeInt(0);
            }
            if (valueAt2.mBluetoothUnoptimizedScanTimer != null) {
                parcel.writeInt(1);
                valueAt2.mBluetoothUnoptimizedScanTimer.writeSummaryFromParcelLocked(parcel, elapsedRealtime);
            } else {
                parcel.writeInt(0);
            }
            if (valueAt2.mBluetoothScanResultCounter != null) {
                parcel.writeInt(1);
                valueAt2.mBluetoothScanResultCounter.writeSummaryFromParcelLocked(parcel);
            } else {
                parcel.writeInt(0);
            }
            if (valueAt2.mBluetoothScanResultBgCounter != null) {
                parcel.writeInt(1);
                valueAt2.mBluetoothScanResultBgCounter.writeSummaryFromParcelLocked(parcel);
            } else {
                parcel.writeInt(0);
            }
            for (int i16 = 0; i16 < 7; i16++) {
                if (valueAt2.mProcessStateTimer[i16] != null) {
                    parcel.writeInt(1);
                    valueAt2.mProcessStateTimer[i16].writeSummaryFromParcelLocked(parcel, elapsedRealtime);
                } else {
                    parcel.writeInt(0);
                }
            }
            if (valueAt2.mVibratorOnTimer != null) {
                parcel.writeInt(1);
                valueAt2.mVibratorOnTimer.writeSummaryFromParcelLocked(parcel, elapsedRealtime);
            } else {
                parcel.writeInt(0);
            }
            if (valueAt2.mUserActivityCounters == null) {
                parcel.writeInt(0);
            } else {
                parcel.writeInt(1);
                for (int i17 = 0; i17 < 4; i17++) {
                    valueAt2.mUserActivityCounters[i17].writeSummaryFromParcelLocked(parcel);
                }
            }
            if (valueAt2.mNetworkByteActivityCounters == null) {
                parcel.writeInt(0);
            } else {
                parcel.writeInt(1);
                for (int i18 = 0; i18 < 10; i18++) {
                    valueAt2.mNetworkByteActivityCounters[i18].writeSummaryFromParcelLocked(parcel);
                    valueAt2.mNetworkPacketActivityCounters[i18].writeSummaryFromParcelLocked(parcel);
                }
                valueAt2.mMobileRadioActiveTime.writeSummaryFromParcelLocked(parcel);
                valueAt2.mMobileRadioActiveCount.writeSummaryFromParcelLocked(parcel);
            }
            valueAt2.mUserCpuTime.writeSummaryFromParcelLocked(parcel);
            valueAt2.mSystemCpuTime.writeSummaryFromParcelLocked(parcel);
            if (valueAt2.mCpuClusterSpeedTimesUs != null) {
                parcel.writeInt(1);
                parcel.writeInt(valueAt2.mCpuClusterSpeedTimesUs.length);
                for (LongSamplingCounter[] longSamplingCounterArr : valueAt2.mCpuClusterSpeedTimesUs) {
                    if (longSamplingCounterArr != null) {
                        parcel.writeInt(1);
                        parcel.writeInt(longSamplingCounterArr.length);
                        for (LongSamplingCounter longSamplingCounter : longSamplingCounterArr) {
                            if (longSamplingCounter != null) {
                                parcel.writeInt(1);
                                longSamplingCounter.writeSummaryFromParcelLocked(parcel);
                            } else {
                                parcel.writeInt(0);
                            }
                        }
                    } else {
                        parcel.writeInt(0);
                    }
                }
            } else {
                parcel.writeInt(0);
            }
            LongSamplingCounterArray.writeSummaryToParcelLocked(parcel, valueAt2.mCpuFreqTimeMs);
            LongSamplingCounterArray.writeSummaryToParcelLocked(parcel, valueAt2.mScreenOffCpuFreqTimeMs);
            valueAt2.mCpuActiveTimeMs.writeSummaryFromParcelLocked(parcel);
            valueAt2.mCpuClusterTimesMs.writeSummaryToParcelLocked(parcel);
            if (valueAt2.mProcStateTimeMs != null) {
                parcel.writeInt(valueAt2.mProcStateTimeMs.length);
                LongSamplingCounterArray[] longSamplingCounterArrayArr = valueAt2.mProcStateTimeMs;
                for (LongSamplingCounterArray longSamplingCounterArray : longSamplingCounterArrayArr) {
                    LongSamplingCounterArray.writeSummaryToParcelLocked(parcel, longSamplingCounterArray);
                }
            } else {
                parcel.writeInt(0);
            }
            if (valueAt2.mProcStateScreenOffTimeMs != null) {
                parcel.writeInt(valueAt2.mProcStateScreenOffTimeMs.length);
                LongSamplingCounterArray[] longSamplingCounterArrayArr2 = valueAt2.mProcStateScreenOffTimeMs;
                for (LongSamplingCounterArray longSamplingCounterArray2 : longSamplingCounterArrayArr2) {
                    LongSamplingCounterArray.writeSummaryToParcelLocked(parcel, longSamplingCounterArray2);
                }
            } else {
                parcel.writeInt(0);
            }
            if (valueAt2.mMobileRadioApWakeupCount != null) {
                parcel.writeInt(1);
                valueAt2.mMobileRadioApWakeupCount.writeSummaryFromParcelLocked(parcel);
            } else {
                parcel.writeInt(0);
            }
            if (valueAt2.mWifiRadioApWakeupCount != null) {
                parcel.writeInt(1);
                valueAt2.mWifiRadioApWakeupCount.writeSummaryFromParcelLocked(parcel);
            } else {
                parcel.writeInt(0);
            }
            ArrayMap<String, Uid.Wakelock> map = valueAt2.mWakelockStats.getMap();
            int size3 = map.size();
            parcel.writeInt(size3);
            for (int i19 = 0; i19 < size3; i19++) {
                parcel.writeString(map.keyAt(i19));
                Uid.Wakelock valueAt3 = map.valueAt(i19);
                if (valueAt3.mTimerFull != null) {
                    parcel.writeInt(1);
                    valueAt3.mTimerFull.writeSummaryFromParcelLocked(parcel, elapsedRealtime);
                } else {
                    parcel.writeInt(0);
                }
                if (valueAt3.mTimerPartial != null) {
                    parcel.writeInt(1);
                    valueAt3.mTimerPartial.writeSummaryFromParcelLocked(parcel, elapsedRealtime);
                } else {
                    parcel.writeInt(0);
                }
                if (valueAt3.mTimerWindow != null) {
                    parcel.writeInt(1);
                    valueAt3.mTimerWindow.writeSummaryFromParcelLocked(parcel, elapsedRealtime);
                } else {
                    parcel.writeInt(0);
                }
                if (valueAt3.mTimerDraw != null) {
                    parcel.writeInt(1);
                    valueAt3.mTimerDraw.writeSummaryFromParcelLocked(parcel, elapsedRealtime);
                } else {
                    parcel.writeInt(0);
                }
            }
            ArrayMap<String, DualTimer> map2 = valueAt2.mSyncStats.getMap();
            int size4 = map2.size();
            parcel.writeInt(size4);
            for (int i20 = 0; i20 < size4; i20++) {
                parcel.writeString(map2.keyAt(i20));
                map2.valueAt(i20).writeSummaryFromParcelLocked(parcel, elapsedRealtime);
            }
            ArrayMap<String, DualTimer> map3 = valueAt2.mJobStats.getMap();
            int size5 = map3.size();
            parcel.writeInt(size5);
            for (int i21 = 0; i21 < size5; i21++) {
                parcel.writeString(map3.keyAt(i21));
                map3.valueAt(i21).writeSummaryFromParcelLocked(parcel, elapsedRealtime);
            }
            valueAt2.writeJobCompletionsToParcelLocked(parcel);
            valueAt2.mJobsDeferredEventCount.writeSummaryFromParcelLocked(parcel);
            valueAt2.mJobsDeferredCount.writeSummaryFromParcelLocked(parcel);
            valueAt2.mJobsFreshnessTimeMs.writeSummaryFromParcelLocked(parcel);
            for (int i22 = 0; i22 < JOB_FRESHNESS_BUCKETS.length; i22++) {
                if (valueAt2.mJobsFreshnessBuckets[i22] != null) {
                    parcel.writeInt(1);
                    valueAt2.mJobsFreshnessBuckets[i22].writeSummaryFromParcelLocked(parcel);
                } else {
                    parcel.writeInt(0);
                }
            }
            int size6 = valueAt2.mSensorStats.size();
            parcel.writeInt(size6);
            for (int i23 = 0; i23 < size6; i23++) {
                parcel.writeInt(valueAt2.mSensorStats.keyAt(i23));
                Uid.Sensor valueAt4 = valueAt2.mSensorStats.valueAt(i23);
                if (valueAt4.mTimer != null) {
                    parcel.writeInt(1);
                    valueAt4.mTimer.writeSummaryFromParcelLocked(parcel, elapsedRealtime);
                } else {
                    parcel.writeInt(0);
                }
            }
            int size7 = valueAt2.mProcessStats.size();
            parcel.writeInt(size7);
            for (int i24 = 0; i24 < size7; i24++) {
                parcel.writeString(valueAt2.mProcessStats.keyAt(i24));
                Uid.Proc valueAt5 = valueAt2.mProcessStats.valueAt(i24);
                parcel.writeLong(valueAt5.mUserTime);
                parcel.writeLong(valueAt5.mSystemTime);
                parcel.writeLong(valueAt5.mForegroundTime);
                parcel.writeInt(valueAt5.mStarts);
                parcel.writeInt(valueAt5.mNumCrashes);
                parcel.writeInt(valueAt5.mNumAnrs);
                valueAt5.writeExcessivePowerToParcelLocked(parcel);
            }
            int size8 = valueAt2.mPackageStats.size();
            parcel.writeInt(size8);
            if (size8 > 0) {
                for (Map.Entry<String, Uid.Pkg> entry5 : valueAt2.mPackageStats.entrySet()) {
                    parcel.writeString(entry5.getKey());
                    Uid.Pkg value5 = entry5.getValue();
                    int size9 = value5.mWakeupAlarms.size();
                    parcel.writeInt(size9);
                    for (int i25 = 0; i25 < size9; i25++) {
                        parcel.writeString(value5.mWakeupAlarms.keyAt(i25));
                        value5.mWakeupAlarms.valueAt(i25).writeSummaryFromParcelLocked(parcel);
                    }
                    int size10 = value5.mServiceStats.size();
                    parcel.writeInt(size10);
                    for (int i26 = 0; i26 < size10; i26++) {
                        parcel.writeString(value5.mServiceStats.keyAt(i26));
                        Uid.Pkg.Serv valueAt6 = value5.mServiceStats.valueAt(i26);
                        parcel.writeLong(valueAt6.getStartTimeToNowLocked(this.mOnBatteryTimeBase.getUptime(uptimeMillis)));
                        parcel.writeInt(valueAt6.mStarts);
                        parcel.writeInt(valueAt6.mLaunches);
                    }
                }
            }
            i12 = i14 + 1;
            size2 = i13;
            i = 5;
        }
    }

    public void readFromParcel(Parcel parcel) {
        readFromParcelLocked(parcel);
    }

    void readFromParcelLocked(Parcel parcel) {
        int readInt = parcel.readInt();
        if (readInt != MAGIC) {
            throw new ParcelFormatException("Bad magic number: #" + Integer.toHexString(readInt));
        }
        readHistory(parcel, false);
        this.mStartCount = parcel.readInt();
        this.mStartClockTime = parcel.readLong();
        this.mStartPlatformVersion = parcel.readString();
        this.mEndPlatformVersion = parcel.readString();
        this.mUptime = parcel.readLong();
        this.mUptimeStart = parcel.readLong();
        this.mRealtime = parcel.readLong();
        this.mRealtimeStart = parcel.readLong();
        this.mOnBattery = parcel.readInt() != 0;
        this.mEstimatedBatteryCapacity = parcel.readInt();
        this.mMinLearnedBatteryCapacity = parcel.readInt();
        this.mMaxLearnedBatteryCapacity = parcel.readInt();
        this.mOnBatteryInternal = false;
        this.mOnBatteryTimeBase.readFromParcel(parcel);
        this.mOnBatteryScreenOffTimeBase.readFromParcel(parcel);
        this.mScreenState = 0;
        this.mScreenOnTimer = new StopwatchTimer(this.mClocks, null, -1, null, this.mOnBatteryTimeBase, parcel);
        this.mScreenDozeTimer = new StopwatchTimer(this.mClocks, null, -1, null, this.mOnBatteryTimeBase, parcel);
        for (int i = 0; i < 5; i++) {
            this.mScreenBrightnessTimer[i] = new StopwatchTimer(this.mClocks, null, (-100) - i, null, this.mOnBatteryTimeBase, parcel);
        }
        this.mInteractive = false;
        this.mInteractiveTimer = new StopwatchTimer(this.mClocks, null, -10, null, this.mOnBatteryTimeBase, parcel);
        this.mPhoneOn = false;
        this.mPowerSaveModeEnabledTimer = new StopwatchTimer(this.mClocks, null, -2, null, this.mOnBatteryTimeBase, parcel);
        this.mLongestLightIdleTime = parcel.readLong();
        this.mLongestFullIdleTime = parcel.readLong();
        this.mDeviceIdleModeLightTimer = new StopwatchTimer(this.mClocks, null, -14, null, this.mOnBatteryTimeBase, parcel);
        this.mDeviceIdleModeFullTimer = new StopwatchTimer(this.mClocks, null, -11, null, this.mOnBatteryTimeBase, parcel);
        this.mDeviceLightIdlingTimer = new StopwatchTimer(this.mClocks, null, -15, null, this.mOnBatteryTimeBase, parcel);
        this.mDeviceIdlingTimer = new StopwatchTimer(this.mClocks, null, -12, null, this.mOnBatteryTimeBase, parcel);
        this.mPhoneOnTimer = new StopwatchTimer(this.mClocks, null, -3, null, this.mOnBatteryTimeBase, parcel);
        for (int i2 = 0; i2 < 5; i2++) {
            this.mPhoneSignalStrengthsTimer[i2] = new StopwatchTimer(this.mClocks, null, (-200) - i2, null, this.mOnBatteryTimeBase, parcel);
        }
        this.mPhoneSignalScanningTimer = new StopwatchTimer(this.mClocks, null, -199, null, this.mOnBatteryTimeBase, parcel);
        for (int i3 = 0; i3 < 21; i3++) {
            this.mPhoneDataConnectionsTimer[i3] = new StopwatchTimer(this.mClocks, null, (-300) - i3, null, this.mOnBatteryTimeBase, parcel);
        }
        for (int i4 = 0; i4 < 10; i4++) {
            this.mNetworkByteActivityCounters[i4] = new LongSamplingCounter(this.mOnBatteryTimeBase, parcel);
            this.mNetworkPacketActivityCounters[i4] = new LongSamplingCounter(this.mOnBatteryTimeBase, parcel);
        }
        this.mMobileRadioPowerState = 1;
        this.mMobileRadioActiveTimer = new StopwatchTimer(this.mClocks, null, -400, null, this.mOnBatteryTimeBase, parcel);
        this.mMobileRadioActivePerAppTimer = new StopwatchTimer(this.mClocks, null, -401, null, this.mOnBatteryTimeBase, parcel);
        this.mMobileRadioActiveAdjustedTime = new LongSamplingCounter(this.mOnBatteryTimeBase, parcel);
        this.mMobileRadioActiveUnknownTime = new LongSamplingCounter(this.mOnBatteryTimeBase, parcel);
        this.mMobileRadioActiveUnknownCount = new LongSamplingCounter(this.mOnBatteryTimeBase, parcel);
        this.mWifiMulticastWakelockTimer = new StopwatchTimer(this.mClocks, null, -4, null, this.mOnBatteryTimeBase, parcel);
        this.mWifiRadioPowerState = 1;
        this.mWifiOn = false;
        this.mWifiOnTimer = new StopwatchTimer(this.mClocks, null, -4, null, this.mOnBatteryTimeBase, parcel);
        this.mGlobalWifiRunning = false;
        this.mGlobalWifiRunningTimer = new StopwatchTimer(this.mClocks, null, -5, null, this.mOnBatteryTimeBase, parcel);
        for (int i5 = 0; i5 < 8; i5++) {
            this.mWifiStateTimer[i5] = new StopwatchTimer(this.mClocks, null, (-600) - i5, null, this.mOnBatteryTimeBase, parcel);
        }
        for (int i6 = 0; i6 < 13; i6++) {
            this.mWifiSupplStateTimer[i6] = new StopwatchTimer(this.mClocks, null, (-700) - i6, null, this.mOnBatteryTimeBase, parcel);
        }
        for (int i7 = 0; i7 < 5; i7++) {
            this.mWifiSignalStrengthsTimer[i7] = new StopwatchTimer(this.mClocks, null, (-800) - i7, null, this.mOnBatteryTimeBase, parcel);
        }
        this.mWifiActiveTimer = new StopwatchTimer(this.mClocks, null, -900, null, this.mOnBatteryTimeBase, parcel);
        this.mWifiActivity = new ControllerActivityCounterImpl(this.mOnBatteryTimeBase, 1, parcel);
        for (int i8 = 0; i8 < 2; i8++) {
            this.mGpsSignalQualityTimer[i8] = new StopwatchTimer(this.mClocks, null, (-1000) - i8, null, this.mOnBatteryTimeBase, parcel);
        }
        this.mBluetoothActivity = new ControllerActivityCounterImpl(this.mOnBatteryTimeBase, 1, parcel);
        this.mModemActivity = new ControllerActivityCounterImpl(this.mOnBatteryTimeBase, 5, parcel);
        this.mHasWifiReporting = parcel.readInt() != 0;
        this.mHasBluetoothReporting = parcel.readInt() != 0;
        this.mHasModemReporting = parcel.readInt() != 0;
        this.mNumConnectivityChange = parcel.readInt();
        this.mLoadedNumConnectivityChange = parcel.readInt();
        this.mUnpluggedNumConnectivityChange = parcel.readInt();
        this.mAudioOnNesting = 0;
        this.mAudioOnTimer = new StopwatchTimer(this.mClocks, null, -7, null, this.mOnBatteryTimeBase);
        this.mVideoOnNesting = 0;
        this.mVideoOnTimer = new StopwatchTimer(this.mClocks, null, -8, null, this.mOnBatteryTimeBase);
        this.mFlashlightOnNesting = 0;
        this.mFlashlightOnTimer = new StopwatchTimer(this.mClocks, null, -9, null, this.mOnBatteryTimeBase, parcel);
        this.mCameraOnNesting = 0;
        this.mCameraOnTimer = new StopwatchTimer(this.mClocks, null, -13, null, this.mOnBatteryTimeBase, parcel);
        this.mBluetoothScanNesting = 0;
        this.mBluetoothScanTimer = new StopwatchTimer(this.mClocks, null, -14, null, this.mOnBatteryTimeBase, parcel);
        this.mIsCellularTxPowerHigh = false;
        this.mDischargeUnplugLevel = parcel.readInt();
        this.mDischargePlugLevel = parcel.readInt();
        this.mDischargeCurrentLevel = parcel.readInt();
        this.mCurrentBatteryLevel = parcel.readInt();
        this.mLowDischargeAmountSinceCharge = parcel.readInt();
        this.mHighDischargeAmountSinceCharge = parcel.readInt();
        this.mDischargeAmountScreenOn = parcel.readInt();
        this.mDischargeAmountScreenOnSinceCharge = parcel.readInt();
        this.mDischargeAmountScreenOff = parcel.readInt();
        this.mDischargeAmountScreenOffSinceCharge = parcel.readInt();
        this.mDischargeAmountScreenDoze = parcel.readInt();
        this.mDischargeAmountScreenDozeSinceCharge = parcel.readInt();
        this.mDischargeStepTracker.readFromParcel(parcel);
        this.mChargeStepTracker.readFromParcel(parcel);
        this.mDischargeCounter = new LongSamplingCounter(this.mOnBatteryTimeBase, parcel);
        this.mDischargeScreenOffCounter = new LongSamplingCounter(this.mOnBatteryScreenOffTimeBase, parcel);
        this.mDischargeScreenDozeCounter = new LongSamplingCounter(this.mOnBatteryTimeBase, parcel);
        this.mDischargeLightDozeCounter = new LongSamplingCounter(this.mOnBatteryTimeBase, parcel);
        this.mDischargeDeepDozeCounter = new LongSamplingCounter(this.mOnBatteryTimeBase, parcel);
        this.mLastWriteTime = parcel.readLong();
        this.mRpmStats.clear();
        int readInt2 = parcel.readInt();
        for (int i9 = 0; i9 < readInt2; i9++) {
            if (parcel.readInt() != 0) {
                this.mRpmStats.put(parcel.readString(), new SamplingTimer(this.mClocks, this.mOnBatteryTimeBase, parcel));
            }
        }
        this.mScreenOffRpmStats.clear();
        int readInt3 = parcel.readInt();
        for (int i10 = 0; i10 < readInt3; i10++) {
            if (parcel.readInt() != 0) {
                this.mScreenOffRpmStats.put(parcel.readString(), new SamplingTimer(this.mClocks, this.mOnBatteryScreenOffTimeBase, parcel));
            }
        }
        this.mKernelWakelockStats.clear();
        int readInt4 = parcel.readInt();
        for (int i11 = 0; i11 < readInt4; i11++) {
            if (parcel.readInt() != 0) {
                this.mKernelWakelockStats.put(parcel.readString(), new SamplingTimer(this.mClocks, this.mOnBatteryScreenOffTimeBase, parcel));
            }
        }
        this.mWakeupReasonStats.clear();
        int readInt5 = parcel.readInt();
        for (int i12 = 0; i12 < readInt5; i12++) {
            if (parcel.readInt() != 0) {
                this.mWakeupReasonStats.put(parcel.readString(), new SamplingTimer(this.mClocks, this.mOnBatteryTimeBase, parcel));
            }
        }
        this.mKernelMemoryStats.clear();
        int readInt6 = parcel.readInt();
        for (int i13 = 0; i13 < readInt6; i13++) {
            if (parcel.readInt() != 0) {
                this.mKernelMemoryStats.put(Long.valueOf(parcel.readLong()).longValue(), new SamplingTimer(this.mClocks, this.mOnBatteryTimeBase, parcel));
            }
        }
        this.mPartialTimers.clear();
        this.mFullTimers.clear();
        this.mWindowTimers.clear();
        this.mWifiRunningTimers.clear();
        this.mFullWifiLockTimers.clear();
        this.mWifiScanTimers.clear();
        this.mWifiBatchedScanTimers.clear();
        this.mWifiMulticastTimers.clear();
        this.mAudioTurnedOnTimers.clear();
        this.mVideoTurnedOnTimers.clear();
        this.mFlashlightTurnedOnTimers.clear();
        this.mCameraTurnedOnTimers.clear();
        int readInt7 = parcel.readInt();
        this.mUidStats.clear();
        for (int i14 = 0; i14 < readInt7; i14++) {
            int readInt8 = parcel.readInt();
            Uid uid = new Uid(this, readInt8);
            uid.readFromParcelLocked(this.mOnBatteryTimeBase, this.mOnBatteryScreenOffTimeBase, parcel);
            this.mUidStats.append(readInt8, uid);
        }
    }

    public void writeToParcel(Parcel parcel, int i) {
        writeToParcelLocked(parcel, true, i);
    }

    public void writeToParcelWithoutUids(Parcel parcel, int i) {
        writeToParcelLocked(parcel, false, i);
    }

    void writeToParcelLocked(Parcel parcel, boolean z, int i) {
        pullPendingStateUpdatesLocked();
        long startClockTime = getStartClockTime();
        long uptimeMillis = this.mClocks.uptimeMillis() * 1000;
        long elapsedRealtime = this.mClocks.elapsedRealtime() * 1000;
        this.mOnBatteryTimeBase.getRealtime(elapsedRealtime);
        this.mOnBatteryScreenOffTimeBase.getRealtime(elapsedRealtime);
        parcel.writeInt(MAGIC);
        writeHistory(parcel, true, false);
        parcel.writeInt(this.mStartCount);
        parcel.writeLong(startClockTime);
        parcel.writeString(this.mStartPlatformVersion);
        parcel.writeString(this.mEndPlatformVersion);
        parcel.writeLong(this.mUptime);
        parcel.writeLong(this.mUptimeStart);
        parcel.writeLong(this.mRealtime);
        parcel.writeLong(this.mRealtimeStart);
        parcel.writeInt(this.mOnBattery ? 1 : 0);
        parcel.writeInt(this.mEstimatedBatteryCapacity);
        parcel.writeInt(this.mMinLearnedBatteryCapacity);
        parcel.writeInt(this.mMaxLearnedBatteryCapacity);
        this.mOnBatteryTimeBase.writeToParcel(parcel, uptimeMillis, elapsedRealtime);
        this.mOnBatteryScreenOffTimeBase.writeToParcel(parcel, uptimeMillis, elapsedRealtime);
        this.mScreenOnTimer.writeToParcel(parcel, elapsedRealtime);
        this.mScreenDozeTimer.writeToParcel(parcel, elapsedRealtime);
        for (int i2 = 0; i2 < 5; i2++) {
            this.mScreenBrightnessTimer[i2].writeToParcel(parcel, elapsedRealtime);
        }
        this.mInteractiveTimer.writeToParcel(parcel, elapsedRealtime);
        this.mPowerSaveModeEnabledTimer.writeToParcel(parcel, elapsedRealtime);
        parcel.writeLong(this.mLongestLightIdleTime);
        parcel.writeLong(this.mLongestFullIdleTime);
        this.mDeviceIdleModeLightTimer.writeToParcel(parcel, elapsedRealtime);
        this.mDeviceIdleModeFullTimer.writeToParcel(parcel, elapsedRealtime);
        this.mDeviceLightIdlingTimer.writeToParcel(parcel, elapsedRealtime);
        this.mDeviceIdlingTimer.writeToParcel(parcel, elapsedRealtime);
        this.mPhoneOnTimer.writeToParcel(parcel, elapsedRealtime);
        for (int i3 = 0; i3 < 5; i3++) {
            this.mPhoneSignalStrengthsTimer[i3].writeToParcel(parcel, elapsedRealtime);
        }
        this.mPhoneSignalScanningTimer.writeToParcel(parcel, elapsedRealtime);
        for (int i4 = 0; i4 < 21; i4++) {
            this.mPhoneDataConnectionsTimer[i4].writeToParcel(parcel, elapsedRealtime);
        }
        for (int i5 = 0; i5 < 10; i5++) {
            this.mNetworkByteActivityCounters[i5].writeToParcel(parcel);
            this.mNetworkPacketActivityCounters[i5].writeToParcel(parcel);
        }
        this.mMobileRadioActiveTimer.writeToParcel(parcel, elapsedRealtime);
        this.mMobileRadioActivePerAppTimer.writeToParcel(parcel, elapsedRealtime);
        this.mMobileRadioActiveAdjustedTime.writeToParcel(parcel);
        this.mMobileRadioActiveUnknownTime.writeToParcel(parcel);
        this.mMobileRadioActiveUnknownCount.writeToParcel(parcel);
        this.mWifiMulticastWakelockTimer.writeToParcel(parcel, elapsedRealtime);
        this.mWifiOnTimer.writeToParcel(parcel, elapsedRealtime);
        this.mGlobalWifiRunningTimer.writeToParcel(parcel, elapsedRealtime);
        for (int i6 = 0; i6 < 8; i6++) {
            this.mWifiStateTimer[i6].writeToParcel(parcel, elapsedRealtime);
        }
        for (int i7 = 0; i7 < 13; i7++) {
            this.mWifiSupplStateTimer[i7].writeToParcel(parcel, elapsedRealtime);
        }
        for (int i8 = 0; i8 < 5; i8++) {
            this.mWifiSignalStrengthsTimer[i8].writeToParcel(parcel, elapsedRealtime);
        }
        this.mWifiActiveTimer.writeToParcel(parcel, elapsedRealtime);
        this.mWifiActivity.writeToParcel(parcel, 0);
        for (int i9 = 0; i9 < 2; i9++) {
            this.mGpsSignalQualityTimer[i9].writeToParcel(parcel, elapsedRealtime);
        }
        this.mBluetoothActivity.writeToParcel(parcel, 0);
        this.mModemActivity.writeToParcel(parcel, 0);
        parcel.writeInt(this.mHasWifiReporting ? 1 : 0);
        parcel.writeInt(this.mHasBluetoothReporting ? 1 : 0);
        parcel.writeInt(this.mHasModemReporting ? 1 : 0);
        parcel.writeInt(this.mNumConnectivityChange);
        parcel.writeInt(this.mLoadedNumConnectivityChange);
        parcel.writeInt(this.mUnpluggedNumConnectivityChange);
        this.mFlashlightOnTimer.writeToParcel(parcel, elapsedRealtime);
        this.mCameraOnTimer.writeToParcel(parcel, elapsedRealtime);
        this.mBluetoothScanTimer.writeToParcel(parcel, elapsedRealtime);
        parcel.writeInt(this.mDischargeUnplugLevel);
        parcel.writeInt(this.mDischargePlugLevel);
        parcel.writeInt(this.mDischargeCurrentLevel);
        parcel.writeInt(this.mCurrentBatteryLevel);
        parcel.writeInt(this.mLowDischargeAmountSinceCharge);
        parcel.writeInt(this.mHighDischargeAmountSinceCharge);
        parcel.writeInt(this.mDischargeAmountScreenOn);
        parcel.writeInt(this.mDischargeAmountScreenOnSinceCharge);
        parcel.writeInt(this.mDischargeAmountScreenOff);
        parcel.writeInt(this.mDischargeAmountScreenOffSinceCharge);
        parcel.writeInt(this.mDischargeAmountScreenDoze);
        parcel.writeInt(this.mDischargeAmountScreenDozeSinceCharge);
        this.mDischargeStepTracker.writeToParcel(parcel);
        this.mChargeStepTracker.writeToParcel(parcel);
        this.mDischargeCounter.writeToParcel(parcel);
        this.mDischargeScreenOffCounter.writeToParcel(parcel);
        this.mDischargeScreenDozeCounter.writeToParcel(parcel);
        this.mDischargeLightDozeCounter.writeToParcel(parcel);
        this.mDischargeDeepDozeCounter.writeToParcel(parcel);
        parcel.writeLong(this.mLastWriteTime);
        parcel.writeInt(this.mRpmStats.size());
        for (Map.Entry<String, SamplingTimer> entry : this.mRpmStats.entrySet()) {
            SamplingTimer value = entry.getValue();
            if (value != null) {
                parcel.writeInt(1);
                parcel.writeString(entry.getKey());
                value.writeToParcel(parcel, elapsedRealtime);
            } else {
                parcel.writeInt(0);
            }
        }
        parcel.writeInt(this.mScreenOffRpmStats.size());
        for (Map.Entry<String, SamplingTimer> entry2 : this.mScreenOffRpmStats.entrySet()) {
            SamplingTimer value2 = entry2.getValue();
            if (value2 != null) {
                parcel.writeInt(1);
                parcel.writeString(entry2.getKey());
                value2.writeToParcel(parcel, elapsedRealtime);
            } else {
                parcel.writeInt(0);
            }
        }
        if (z) {
            parcel.writeInt(this.mKernelWakelockStats.size());
            for (Map.Entry<String, SamplingTimer> entry3 : this.mKernelWakelockStats.entrySet()) {
                SamplingTimer value3 = entry3.getValue();
                if (value3 != null) {
                    parcel.writeInt(1);
                    parcel.writeString(entry3.getKey());
                    value3.writeToParcel(parcel, elapsedRealtime);
                } else {
                    parcel.writeInt(0);
                }
            }
            parcel.writeInt(this.mWakeupReasonStats.size());
            for (Map.Entry<String, SamplingTimer> entry4 : this.mWakeupReasonStats.entrySet()) {
                SamplingTimer value4 = entry4.getValue();
                if (value4 != null) {
                    parcel.writeInt(1);
                    parcel.writeString(entry4.getKey());
                    value4.writeToParcel(parcel, elapsedRealtime);
                } else {
                    parcel.writeInt(0);
                }
            }
        } else {
            parcel.writeInt(0);
            parcel.writeInt(0);
        }
        parcel.writeInt(this.mKernelMemoryStats.size());
        for (int i10 = 0; i10 < this.mKernelMemoryStats.size(); i10++) {
            SamplingTimer valueAt = this.mKernelMemoryStats.valueAt(i10);
            if (valueAt != null) {
                parcel.writeInt(1);
                parcel.writeLong(this.mKernelMemoryStats.keyAt(i10));
                valueAt.writeToParcel(parcel, elapsedRealtime);
            } else {
                parcel.writeInt(0);
            }
        }
        if (z) {
            int size = this.mUidStats.size();
            parcel.writeInt(size);
            for (int i11 = 0; i11 < size; i11++) {
                parcel.writeInt(this.mUidStats.keyAt(i11));
                this.mUidStats.valueAt(i11).writeToParcelLocked(parcel, uptimeMillis, elapsedRealtime);
            }
            return;
        }
        parcel.writeInt(0);
    }

    public void prepareForDumpLocked() {
        pullPendingStateUpdatesLocked();
        getStartClockTime();
    }

    public void dumpLocked(Context context, PrintWriter printWriter, int i, int i2, long j) {
        super.dumpLocked(context, printWriter, i, i2, j);
        printWriter.print("Total cpu time reads: ");
        printWriter.println(this.mNumSingleUidCpuTimeReads);
        printWriter.print("Batched cpu time reads: ");
        printWriter.println(this.mNumBatchedSingleUidCpuTimeReads);
        printWriter.print("Batching Duration (min): ");
        printWriter.println((this.mClocks.uptimeMillis() - this.mCpuTimeReadsTrackingStartTime) / 60000);
        printWriter.print("All UID cpu time reads since the later of device start or stats reset: ");
        printWriter.println(this.mNumAllUidCpuTimeReads);
        printWriter.print("UIDs removed since the later of device start or stats reset: ");
        printWriter.println(this.mNumUidsRemoved);
    }
}
