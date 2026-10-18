package com.yftech.vehicle.internal.project;

import android.util.Log;
import com.yftech.vehicle.internal.adapter.ICarDashBoard;
import com.yftech.vehicle.internal.adapter.ICarParking;
import java.nio.charset.StandardCharsets;

/* loaded from: /home/user/work/dex/classes4.dex */
public class Ihu12DashBoard {
    public static final byte INFO_TYPE_NAVI_BASE_INFO = 7;
    public static final byte INFO_TYPE_NAVI_GUIDE_COMPASS = 8;
    public static final byte INFO_TYPE_NAVI_GUIDE_CURR_LOAD_NAME = 9;
    public static final byte INFO_TYPE_NAVI_GUIDE_NEXT_LOAD_NAME = 10;
    public static final byte INFO_TYPE_NAVI_GUIDE_NEXT_PATH_CALCULATION = 11;
    public static final byte INFO_TYPE_PHONE_INFO = 3;
    public static final byte INFO_TYPE_PHONE_NAME = 5;
    public static final byte INFO_TYPE_PHONE_NUMBER = 4;
    public static final byte INFO_TYPE_PHONE_TIMES = 6;
    public static final byte INFO_TYPE_SONG_ARTIST = 2;
    public static final byte INFO_TYPE_SONG_TITLE = 1;
    private static final String TAG = "Ihu12DashBoard";
    static ICarDashBoard.AbsDashBoardInfo mAbsInfo;
    private static byte[] mDashBoardInfoDataByteArrayForIhu12 = new byte[18];
    private static int mLastSource;

    public static void setCurrentSource(int i) {
        mLastSource = i;
    }

    public static boolean isCurrentSource(int i) {
        return mLastSource != i;
    }

    public static boolean isMediaChange(ICarDashBoard.AbsDashBoardInfo absDashBoardInfo) {
        ICarDashBoard.MediaInfo mediaInfo = (ICarDashBoard.MediaInfo) absDashBoardInfo;
        if (mediaInfo.title == null || mediaInfo.artist == null) {
            Log.w(TAG, "isMediaChange() USB MediaInfo.title is null or AbsDashBoardInfo is not MediaInfo");
            return false;
        }
        boolean z = true;
        if (mAbsInfo == null || !(mAbsInfo instanceof ICarDashBoard.MediaInfo)) {
            mAbsInfo = new ICarDashBoard.MediaInfo(absDashBoardInfo.getDashBoardSource());
            ((ICarDashBoard.MediaInfo) mAbsInfo).setInfoDiff(mediaInfo);
        } else if (mLastSource != mAbsInfo.getDashBoardSource()) {
            mAbsInfo.setDashBoardSource(mediaInfo.getDashBoardSource());
        } else {
            ICarDashBoard.MediaInfo mediaInfo2 = (ICarDashBoard.MediaInfo) mAbsInfo;
            if (mediaInfo2 == null || !mediaInfo2.isInfoDiff(mediaInfo)) {
                z = false;
            } else {
                mediaInfo2.setInfoDiff(mediaInfo);
            }
        }
        Log.d(TAG, "isMediaChange()-3 mLastSource=" + mLastSource + " mAbsInfo.getDashBoardSource()=" + mAbsInfo.getDashBoardSource() + ", isMediaUpdate =" + z);
        return z;
    }

    public static boolean isBtInfoChange(ICarDashBoard.AbsDashBoardInfo absDashBoardInfo) {
        if (absDashBoardInfo == null) {
            Log.w(TAG, "isBtInfoChange()  BtInfo is null)");
            return false;
        }
        ICarDashBoard.BtInfo btInfo = (ICarDashBoard.BtInfo) absDashBoardInfo;
        if (btInfo.mBtCallNumber == null) {
            Log.w(TAG, "isBtInfoChange()  BtInfo.mBtCallNumber is null)");
            return false;
        }
        boolean z = true;
        if (mAbsInfo == null || !(mAbsInfo instanceof ICarDashBoard.BtInfo)) {
            mAbsInfo = new ICarDashBoard.BtInfo();
        } else {
            ICarDashBoard.BtInfo btInfo2 = (ICarDashBoard.BtInfo) mAbsInfo;
            if (btInfo2 == null || !btInfo2.isInfoDiff(btInfo)) {
                z = false;
            } else {
                btInfo2.setInfoDiff(btInfo);
            }
        }
        Log.d(TAG, "isBtInfoChange() isBtInfoChange =" + z);
        return z;
    }

    public static byte[] getDashBoardSourceDataByteArray(int i, ICarDashBoard.AbsDashBoardInfo absDashBoardInfo) {
        byte[] bArr = new byte[18];
        bArr[0] = -124;
        bArr[1] = 16;
        bArr[2] = 1;
        bArr[3] = 0;
        switch (i) {
            case -1:
            case 0:
                bArr[3] = 0;
                break;
            default:
                bArr = null;
                break;
        }
        if (absDashBoardInfo == null) {
            Log.d(TAG, "MCU_IHU12  getDashBoardSourceDataByteArray->source=" + i + ",info is null continue");
        }
        return bArr;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:14:0x0048. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:15:0x004b  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0050  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00ae A[FALL_THROUGH] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00b2  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00ba  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static byte[] getDashBoardInfoDataByteArrayForIhu12(ICarDashBoard.AbsDashBoardInfo absDashBoardInfo) {
        int dashBoardSource;
        byte[] bArr = mDashBoardInfoDataByteArrayForIhu12;
        bArr[0] = -124;
        bArr[1] = 16;
        bArr[2] = 1;
        bArr[3] = 0;
        int dashBoardSource2 = absDashBoardInfo.getDashBoardSource();
        if (dashBoardSource2 != 9) {
            switch (dashBoardSource2) {
                case 1:
                    break;
                case 2:
                    break;
                case 3:
                    bArr[3] = 4;
                    break;
                case 4:
                    bArr[3] = 22;
                    break;
                case 5:
                    bArr[3] = 6;
                    break;
                default:
                    switch (dashBoardSource2) {
                        case 12:
                            bArr[3] = 33;
                            break;
                        case 13:
                            bArr[3] = 32;
                            break;
                        case 14:
                            bArr[3] = 20;
                            break;
                    }
            }
            dashBoardSource = absDashBoardInfo.getDashBoardSource();
            if (dashBoardSource != 5 && dashBoardSource != 9) {
                switch (dashBoardSource) {
                    case 1:
                        if (!(absDashBoardInfo instanceof ICarDashBoard.RadioInfo)) {
                            Log.w(TAG, "formartDashBoardInfoDataBytes() AbsDashBoardInfo is not RadioInfo");
                            return bArr;
                        }
                        ICarDashBoard.RadioInfo radioInfo = (ICarDashBoard.RadioInfo) absDashBoardInfo;
                        switch (radioInfo.mBandType) {
                            case 0:
                            case 1:
                            case 2:
                                bArr[3] = 15;
                                break;
                            case 3:
                            case 4:
                                bArr[3] = 14;
                                break;
                        }
                        bArr[13] = radioInfo.scanMode == 1 ? (byte) 0 : radioInfo.scanMode;
                        switch (radioInfo.mBandType) {
                            case 0:
                            case 1:
                            case 2:
                                int i = (radioInfo.mFrequency / 10) - 6500;
                                if (i < 0) {
                                    i = 0;
                                }
                                bArr[14] = (byte) ((i >> 8) & ICarParking.PARKING_RADAR_ALARM_SETTING);
                                bArr[15] = (byte) (i & ICarParking.PARKING_RADAR_ALARM_SETTING);
                                break;
                            case 3:
                            case 4:
                                int i2 = radioInfo.mFrequency - 144;
                                if (i2 < 0) {
                                    i2 = 0;
                                }
                                bArr[16] = (byte) ((i2 >> 8) & ICarParking.PARKING_RADAR_ALARM_SETTING);
                                bArr[17] = (byte) (i2 & ICarParking.PARKING_RADAR_ALARM_SETTING);
                                break;
                        }
                        return bArr;
                    default:
                        switch (dashBoardSource) {
                            case 12:
                            case 13:
                            case 14:
                                break;
                            default:
                                return bArr;
                        }
                    case 2:
                    case 3:
                        if (!(absDashBoardInfo instanceof ICarDashBoard.MediaInfo)) {
                            Log.w(TAG, "getDashBoardInfoDataByteArrayForIhu12() AbsDashBoardInfo is not MediaInfo");
                            return bArr;
                        }
                        ICarDashBoard.MediaInfo mediaInfo = (ICarDashBoard.MediaInfo) absDashBoardInfo;
                        if (mediaInfo.status == 2) {
                            bArr[4] = 1;
                        } else if (mediaInfo.status == 1) {
                            bArr[4] = 2;
                        }
                        bArr[5] = (byte) mediaInfo.playType;
                        int i3 = (mediaInfo.total % 86400000) / 3600000;
                        int i4 = (mediaInfo.total % 3600000) / 60000;
                        int i5 = (mediaInfo.total % 60000) / 1000;
                        Log.w(TAG, "ihu12:" + i3 + " totalHours " + i4 + " totalMinutes " + i5 + " totalSeconds ");
                        int i6 = (mediaInfo.current % 86400000) / 3600000;
                        int i7 = (mediaInfo.current % 3600000) / 60000;
                        int i8 = (mediaInfo.current % 60000) / 1000;
                        Log.w(TAG, "ihu12:" + i3 + " currHours " + i4 + " currMinutes " + i5 + " currSeconds ");
                        bArr[6] = (byte) i3;
                        bArr[7] = (byte) i4;
                        bArr[8] = (byte) i5;
                        bArr[9] = (byte) i6;
                        bArr[10] = (byte) i7;
                        bArr[11] = (byte) i8;
                        bArr[12] = (byte) (!mediaInfo.isMute ? 1 : 0);
                        return bArr;
                }
            }
            if (!(absDashBoardInfo instanceof ICarDashBoard.MediaInfo)) {
            }
        }
        bArr[3] = 3;
        dashBoardSource = absDashBoardInfo.getDashBoardSource();
        if (dashBoardSource != 5) {
            switch (dashBoardSource) {
            }
        }
        if (!(absDashBoardInfo instanceof ICarDashBoard.MediaInfo)) {
        }
    }

    public static byte[] getMediaInfo(byte b, ICarDashBoard.AbsDashBoardInfo absDashBoardInfo) {
        String str;
        String str2;
        String str3;
        String str4;
        byte[] bArr = new byte[8];
        switch (b) {
            case 1:
                if (!(absDashBoardInfo instanceof ICarDashBoard.MediaInfo)) {
                    Log.w(TAG, "getMediaInfo() - SONG_TITLE info is not MediaInfo");
                    return bArr;
                }
                ICarDashBoard.MediaInfo mediaInfo = (ICarDashBoard.MediaInfo) absDashBoardInfo;
                if (mediaInfo.title == null) {
                    str = "";
                } else {
                    str = mediaInfo.title + " ";
                }
                int length = str != null ? str.getBytes(StandardCharsets.UTF_16BE).length : 0;
                if (str.length() > 27) {
                    str = str.substring(0, 24) + "...";
                    length = str != null ? str.getBytes(StandardCharsets.UTF_16BE).length : 0;
                }
                byte[] bArr2 = new byte[length + 5];
                bArr2[0] = -124;
                bArr2[1] = 16;
                bArr2[2] = 2;
                bArr2[3] = (byte) length;
                bArr2[4] = 0;
                if (length == 0) {
                    return bArr2;
                }
                System.arraycopy(str.getBytes(StandardCharsets.UTF_16BE), 0, bArr2, 5, length);
                return bArr2;
            case 2:
                if (!(absDashBoardInfo instanceof ICarDashBoard.MediaInfo)) {
                    Log.w(TAG, "getMediaInfo() - SONG_ARTIST info is not MediaInfo");
                    return bArr;
                }
                ICarDashBoard.MediaInfo mediaInfo2 = (ICarDashBoard.MediaInfo) absDashBoardInfo;
                if (mediaInfo2.artist == null) {
                    str2 = "";
                } else {
                    str2 = mediaInfo2.artist + " ";
                }
                int length2 = str2 != null ? str2.getBytes(StandardCharsets.UTF_16BE).length : 0;
                if (str2.length() > 27) {
                    str2 = str2.substring(0, 24) + "...";
                    length2 = str2 != null ? str2.getBytes(StandardCharsets.UTF_16BE).length : 0;
                }
                byte[] bArr3 = new byte[length2 + 5];
                bArr3[0] = -124;
                bArr3[1] = 16;
                bArr3[2] = 3;
                bArr3[3] = (byte) length2;
                bArr3[4] = 0;
                if (length2 == 0) {
                    return bArr3;
                }
                System.arraycopy(str2.getBytes(StandardCharsets.UTF_16BE), 0, bArr3, 5, length2);
                return bArr3;
            case 3:
                if (!(absDashBoardInfo instanceof ICarDashBoard.BtInfo)) {
                    Log.w(TAG, "getMediaInfo() - PHONE_INFO info is not BtInfo");
                    return bArr;
                }
                ICarDashBoard.BtInfo btInfo = (ICarDashBoard.BtInfo) absDashBoardInfo;
                byte[] bArr4 = new byte[8];
                bArr4[0] = -124;
                bArr4[1] = 17;
                bArr4[2] = 1;
                if (btInfo.mBtStatus != 0) {
                    bArr4[3] = 1;
                } else {
                    bArr4[3] = 0;
                }
                bArr4[4] = 0;
                bArr4[5] = 0;
                byte b2 = btInfo.mBtStatus;
                if (b2 != 0) {
                    switch (b2) {
                        case 2:
                            bArr4[6] = 1;
                            break;
                        case 3:
                            bArr4[6] = 2;
                            break;
                        case 4:
                        case 7:
                            bArr4[6] = 3;
                            break;
                        case 5:
                            bArr4[6] = 4;
                            break;
                        case 6:
                            bArr4[6] = 5;
                            break;
                        default:
                            bArr4[6] = 0;
                            break;
                    }
                } else {
                    bArr4[6] = 0;
                }
                bArr4[7] = 1;
                if (btInfo.mPhoneSourceType == 4) {
                    bArr4[7] = 2;
                }
                if (btInfo.mPhoneSourceType != 5) {
                    return bArr4;
                }
                bArr4[7] = 3;
                return bArr4;
            case 4:
                if (!(absDashBoardInfo instanceof ICarDashBoard.BtInfo)) {
                    Log.w(TAG, "getMediaInfo() - PHONE_NUMBER info is not BtInfo");
                    return bArr;
                }
                ICarDashBoard.BtInfo btInfo2 = (ICarDashBoard.BtInfo) absDashBoardInfo;
                if (btInfo2.mBtCallNumber == null) {
                    str3 = "";
                } else {
                    str3 = btInfo2.mBtCallNumber + " ";
                }
                int length3 = str3 != null ? str3.getBytes(StandardCharsets.UTF_16BE).length : 0;
                if (str3.length() > 27) {
                    str3 = str3.substring(0, 24) + "...";
                    length3 = str3 != null ? str3.getBytes(StandardCharsets.UTF_16BE).length : 0;
                }
                byte[] bArr5 = new byte[length3 + 5];
                bArr5[0] = -124;
                bArr5[1] = 17;
                bArr5[2] = 2;
                bArr5[3] = (byte) length3;
                bArr5[4] = 0;
                if (length3 == 0) {
                    return bArr5;
                }
                System.arraycopy(str3.getBytes(StandardCharsets.UTF_16BE), 0, bArr5, 5, length3);
                return bArr5;
            case 5:
                if (!(absDashBoardInfo instanceof ICarDashBoard.BtInfo)) {
                    Log.w(TAG, "getMediaInfo() - PHONE_NAME info is not BtInfo");
                    return bArr;
                }
                ICarDashBoard.BtInfo btInfo3 = (ICarDashBoard.BtInfo) absDashBoardInfo;
                if (btInfo3.mBtName == null) {
                    str4 = "";
                } else {
                    str4 = btInfo3.mBtName + " ";
                }
                int length4 = str4 != null ? str4.getBytes(StandardCharsets.UTF_16BE).length : 0;
                if (str4.length() > 27) {
                    str4 = str4.substring(0, 24) + "...";
                    length4 = str4 != null ? str4.getBytes(StandardCharsets.UTF_16BE).length : 0;
                }
                byte[] bArr6 = new byte[length4 + 5];
                bArr6[0] = -124;
                bArr6[1] = 17;
                bArr6[2] = 3;
                bArr6[3] = (byte) length4;
                bArr6[4] = 0;
                if (length4 == 0) {
                    return bArr6;
                }
                System.arraycopy(str4.getBytes(StandardCharsets.UTF_16BE), 0, bArr6, 5, length4);
                return bArr6;
            case 6:
                if (!(absDashBoardInfo instanceof ICarDashBoard.BtInfo)) {
                    Log.w(TAG, "getMediaInfo() - PHONE_TIMES info is not btInfo");
                    return bArr;
                }
                ICarDashBoard.BtInfo btInfo4 = (ICarDashBoard.BtInfo) absDashBoardInfo;
                int i = (btInfo4.talkTimes % 86400000) / 3600000;
                int i2 = (btInfo4.talkTimes % 3600000) / 60000;
                int i3 = (btInfo4.talkTimes % 60000) / 1000;
                Log.w(TAG, "INFO_TYPE_PHONE_TIMES: " + i + " currHours " + i2 + " currMinutes " + i3 + " currSeconds ");
                return new byte[]{-124, 17, 4, (byte) ((i >> 8) & ICarParking.PARKING_RADAR_ALARM_SETTING), (byte) (i & ICarParking.PARKING_RADAR_ALARM_SETTING), (byte) i2, (byte) i3};
            default:
                return bArr;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum SeaLevel {
        BELOW_SEA(0),
        ABOVE_SEA(1),
        __UNKNOWN__(-1);

        public final int value;

        SeaLevel(int i) {
            this.value = i;
        }

        public static SeaLevel valueOf(int i) {
            return i == BELOW_SEA.value ? BELOW_SEA : i == ABOVE_SEA.value ? ABOVE_SEA : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum GpsSignal {
        NO_SIGNAL(0),
        HAVE_SIGNAL(1),
        __UNKNOWN__(-1);

        public final int value;

        GpsSignal(int i) {
            this.value = i;
        }

        public static GpsSignal valueOf(int i) {
            return i == NO_SIGNAL.value ? NO_SIGNAL : i == HAVE_SIGNAL.value ? HAVE_SIGNAL : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public static class NaviGuideBaseInfo {
        public int azimuthInfo;
        public CaculationState caculationState;
        public CompassGuide compass;
        public GpsSignal gpsSignal;
        public int naviIcon_RC;
        public int naviIcon_TBT;
        public int naviIcon_WS;
        public NaviState naviState;
        public String nextRoadName;
        public String roadName;
        public SeaLevel seaLevel;

        public NaviGuideBaseInfo(SeaLevel seaLevel, GpsSignal gpsSignal, int i, NaviState naviState, int i2, int i3, int i4, CompassGuide compassGuide, String str, String str2, CaculationState caculationState) {
            this.seaLevel = SeaLevel.__UNKNOWN__;
            this.gpsSignal = GpsSignal.__UNKNOWN__;
            this.naviState = NaviState.__UNKNOWN__;
            this.compass = CompassGuide.__UNKNOWN__;
            this.roadName = "";
            this.nextRoadName = "";
            this.caculationState = CaculationState.__UNKNOWN__;
            this.seaLevel = seaLevel;
            this.gpsSignal = gpsSignal;
            this.azimuthInfo = i;
            this.naviState = naviState;
            this.naviIcon_TBT = i2;
            this.naviIcon_RC = i3;
            this.naviIcon_WS = i4;
            this.compass = compassGuide;
            this.roadName = str;
            this.nextRoadName = str2;
            this.caculationState = caculationState;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum NaviDistUnit {
        METER(1),
        KILOMETER(2),
        MILE(3),
        __UNKNOWN__(-1);

        public final int value;

        NaviDistUnit(int i) {
            this.value = i;
        }

        public static NaviDistUnit valueOf(int i) {
            return i == METER.value ? METER : i == KILOMETER.value ? KILOMETER : i == MILE.value ? MILE : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public static class NaviUpdateData {
        public int NaviDestDistInfo;
        public int NaviDist;
        public int NaviDistBar;
        public int NaviHour;
        public int NaviMinitue;
        public NaviDistUnit naviDistUnit;
        public NaviDistUnit naviSumDistUnit;

        public NaviUpdateData(NaviDistUnit naviDistUnit, int i, int i2, NaviDistUnit naviDistUnit2, int i3, int i4, int i5) {
            this.naviDistUnit = NaviDistUnit.__UNKNOWN__;
            this.naviSumDistUnit = NaviDistUnit.__UNKNOWN__;
            this.naviDistUnit = naviDistUnit;
            this.NaviDist = i;
            this.NaviDistBar = i2;
            this.naviSumDistUnit = naviDistUnit2;
            this.NaviMinitue = i3;
            this.NaviHour = i4;
            this.NaviDestDistInfo = i5;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum NaviState {
        NOT_NAVIGATED(0),
        NAV_PLANNING(1),
        NAV_START(2),
        NAVIGATING(3),
        NAV_OVER(4),
        __UNKNOWN__(-1);

        public final int value;

        NaviState(int i) {
            this.value = i;
        }

        public static NaviState valueOf(int i) {
            return i == NOT_NAVIGATED.value ? NOT_NAVIGATED : i == NAV_PLANNING.value ? NAV_PLANNING : i == NAV_START.value ? NAV_START : i == NAVIGATING.value ? NAVIGATING : i == NAV_OVER.value ? NAV_OVER : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum CaculationState {
        IN_CACULATION(0),
        CACULATION_DONE(1),
        NOT_IN_NAVI(2),
        __UNKNOWN__(-1);

        public final int value;

        CaculationState(int i) {
            this.value = i;
        }

        public static CaculationState valueOf(int i) {
            return i == IN_CACULATION.value ? IN_CACULATION : i == CACULATION_DONE.value ? CACULATION_DONE : i == NOT_IN_NAVI.value ? NOT_IN_NAVI : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public enum CompassGuide {
        N(1),
        NE(2),
        E(3),
        SE(4),
        S(5),
        SW(6),
        W(7),
        NW(8),
        __UNKNOWN__(-1);

        public final int value;

        CompassGuide(int i) {
            this.value = i;
        }

        public static CompassGuide valueOf(int i) {
            return i == N.ordinal() ? N : i == NE.ordinal() ? NE : i == E.ordinal() ? E : i == SE.ordinal() ? SE : i == S.ordinal() ? S : i == SW.ordinal() ? SW : i == W.ordinal() ? W : i == NW.ordinal() ? NW : __UNKNOWN__;
        }
    }

    public static byte[] getNaviGuideBaseInfoDataProtocol(byte b, NaviGuideBaseInfo naviGuideBaseInfo) {
        String str;
        String str2;
        byte[] bArr = new byte[8];
        if (naviGuideBaseInfo == null) {
            Log.w(TAG, "getNaviGuideInfoDataProtocol() - PHONE_NUMBER info is null");
            return bArr;
        }
        switch (b) {
            case 7:
                return new byte[]{-124, 18, 1, (byte) naviGuideBaseInfo.seaLevel.ordinal(), (byte) naviGuideBaseInfo.gpsSignal.ordinal(), (byte) ((naviGuideBaseInfo.azimuthInfo >> 8) & ICarParking.PARKING_RADAR_ALARM_SETTING), (byte) (naviGuideBaseInfo.azimuthInfo & ICarParking.PARKING_RADAR_ALARM_SETTING), (byte) naviGuideBaseInfo.naviState.value, (byte) naviGuideBaseInfo.naviIcon_TBT, (byte) naviGuideBaseInfo.naviIcon_RC, (byte) naviGuideBaseInfo.naviIcon_WS};
            case 8:
                return new byte[]{-124, 18, 2, (byte) naviGuideBaseInfo.compass.ordinal()};
            case 9:
                if (!(naviGuideBaseInfo instanceof NaviGuideBaseInfo)) {
                    Log.w(TAG, "getNaviGuideBaseInfoDataProtocol() - INFO_TYPE_NAVI_GUIDE_CURR_LOAD_NAME info is not NaviGuideBaseInfo");
                    return bArr;
                }
                if (naviGuideBaseInfo.roadName == null || "".equals(naviGuideBaseInfo.roadName)) {
                    Log.w(TAG, "getNaviGuideInfoDataProtocol() - info.roadName is null");
                    return bArr;
                }
                if (naviGuideBaseInfo.roadName == null) {
                    str = "";
                } else {
                    str = naviGuideBaseInfo.roadName + " ";
                }
                int length = str != null ? str.getBytes(StandardCharsets.UTF_16BE).length : 0;
                if (str.length() > 27) {
                    str = str.substring(0, 24) + "...";
                    length = str != null ? str.getBytes(StandardCharsets.UTF_16BE).length : 0;
                }
                byte[] bArr2 = new byte[length + 5];
                bArr2[0] = -124;
                bArr2[1] = 18;
                bArr2[2] = 3;
                bArr2[3] = (byte) length;
                bArr2[4] = 0;
                if (length == 0) {
                    return bArr2;
                }
                System.arraycopy(str.getBytes(StandardCharsets.UTF_16BE), 0, bArr2, 5, length);
                return bArr2;
            case 10:
                if (!(naviGuideBaseInfo instanceof NaviGuideBaseInfo)) {
                    Log.w(TAG, "getNaviGuideBaseInfoDataProtocol() - INFO_TYPE_NAVI_GUIDE_CURR_LOAD_NAME info is not NaviGuideBaseInfo");
                    return bArr;
                }
                if (naviGuideBaseInfo.nextRoadName == null || "".equals(naviGuideBaseInfo.nextRoadName)) {
                    Log.w(TAG, "getNaviGuideInfoDataProtocol() - info.nextRoadName is null");
                    return bArr;
                }
                if (naviGuideBaseInfo.nextRoadName == null) {
                    str2 = "";
                } else {
                    str2 = naviGuideBaseInfo.nextRoadName + " ";
                }
                int length2 = str2 != null ? str2.getBytes(StandardCharsets.UTF_16BE).length : 0;
                if (str2.length() > 27) {
                    str2 = str2.substring(0, 24) + "...";
                    length2 = str2 != null ? str2.getBytes(StandardCharsets.UTF_16BE).length : 0;
                }
                byte[] bArr3 = new byte[length2 + 5];
                bArr3[0] = -124;
                bArr3[1] = 18;
                bArr3[2] = 4;
                bArr3[3] = (byte) length2;
                bArr3[4] = 0;
                if (length2 == 0) {
                    return bArr3;
                }
                System.arraycopy(str2.getBytes(StandardCharsets.UTF_16BE), 0, bArr3, 5, length2);
                return bArr3;
            case 11:
                if (naviGuideBaseInfo.caculationState == null) {
                    Log.w(TAG, "getNaviGuideInfoDataProtocol() - info.caculationState is null");
                    return bArr;
                }
                return new byte[]{-124, 18, 5, (byte) naviGuideBaseInfo.caculationState.ordinal()};
            default:
                return bArr;
        }
    }

    public static byte[] getNaviGuideUpdateDataProtocol(NaviUpdateData naviUpdateData) {
        byte[] bArr = new byte[8];
        if (naviUpdateData == null) {
            Log.w(TAG, "getNaviGuideUpdateDataProtocol() - updateData is null");
            return bArr;
        }
        return new byte[]{-124, 18, 6, (byte) naviUpdateData.naviDistUnit.ordinal(), (byte) ((naviUpdateData.NaviDist >> 16) & ICarParking.PARKING_RADAR_ALARM_SETTING), (byte) ((naviUpdateData.NaviDist >> 8) & ICarParking.PARKING_RADAR_ALARM_SETTING), (byte) (naviUpdateData.NaviDist & ICarParking.PARKING_RADAR_ALARM_SETTING), (byte) ((naviUpdateData.NaviDistBar >> 16) & ICarParking.PARKING_RADAR_ALARM_SETTING), (byte) ((naviUpdateData.NaviDistBar >> 8) & ICarParking.PARKING_RADAR_ALARM_SETTING), (byte) (naviUpdateData.NaviDistBar & ICarParking.PARKING_RADAR_ALARM_SETTING), (byte) naviUpdateData.naviSumDistUnit.ordinal(), (byte) naviUpdateData.NaviMinitue, (byte) ((naviUpdateData.NaviHour >> 8) & ICarParking.PARKING_RADAR_ALARM_SETTING), (byte) (naviUpdateData.NaviHour & ICarParking.PARKING_RADAR_ALARM_SETTING), (byte) ((naviUpdateData.NaviDestDistInfo >> 24) & ICarParking.PARKING_RADAR_ALARM_SETTING), (byte) ((naviUpdateData.NaviDestDistInfo >> 16) & ICarParking.PARKING_RADAR_ALARM_SETTING), (byte) ((naviUpdateData.NaviDestDistInfo >> 8) & ICarParking.PARKING_RADAR_ALARM_SETTING), (byte) (naviUpdateData.NaviDestDistInfo & ICarParking.PARKING_RADAR_ALARM_SETTING)};
    }
}
