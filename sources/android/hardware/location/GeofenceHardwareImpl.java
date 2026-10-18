package android.hardware.location;

import android.Manifest;
import android.content.Context;
import android.location.IFusedGeofenceHardware;
import android.location.IGpsGeofenceHardware;
import android.location.Location;
import android.os.Handler;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Message;
import android.os.PowerManager;
import android.os.RemoteException;
import android.util.Log;
import android.util.SparseArray;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: /home/user/work/dex/classes.dex */
public final class GeofenceHardwareImpl {
    private static final int ADD_GEOFENCE_CALLBACK = 2;
    private static final int CALLBACK_ADD = 2;
    private static final int CALLBACK_REMOVE = 3;
    private static final int CAPABILITY_GNSS = 1;
    private static final int FIRST_VERSION_WITH_CAPABILITIES = 2;
    private static final int GEOFENCE_CALLBACK_BINDER_DIED = 6;
    private static final int GEOFENCE_STATUS = 1;
    private static final int GEOFENCE_TRANSITION_CALLBACK = 1;
    private static final int LOCATION_HAS_ACCURACY = 16;
    private static final int LOCATION_HAS_ALTITUDE = 2;
    private static final int LOCATION_HAS_BEARING = 8;
    private static final int LOCATION_HAS_LAT_LONG = 1;
    private static final int LOCATION_HAS_SPEED = 4;
    private static final int LOCATION_INVALID = 0;
    private static final int MONITOR_CALLBACK_BINDER_DIED = 4;
    private static final int PAUSE_GEOFENCE_CALLBACK = 4;
    private static final int REAPER_GEOFENCE_ADDED = 1;
    private static final int REAPER_MONITOR_CALLBACK_ADDED = 2;
    private static final int REAPER_REMOVED = 3;
    private static final int REMOVE_GEOFENCE_CALLBACK = 3;
    private static final int RESOLUTION_LEVEL_COARSE = 2;
    private static final int RESOLUTION_LEVEL_FINE = 3;
    private static final int RESOLUTION_LEVEL_NONE = 1;
    private static final int RESUME_GEOFENCE_CALLBACK = 5;
    private static GeofenceHardwareImpl sInstance;
    private int mCapabilities;
    private final Context mContext;
    private IFusedGeofenceHardware mFusedService;
    private IGpsGeofenceHardware mGpsService;
    private PowerManager.WakeLock mWakeLock;
    private static final String TAG = "GeofenceHardwareImpl";
    private static final boolean DEBUG = Log.isLoggable(TAG, 3);
    private final SparseArray<IGeofenceHardwareCallback> mGeofences = new SparseArray<>();
    private final ArrayList<IGeofenceHardwareMonitorCallback>[] mCallbacks = new ArrayList[2];
    private final ArrayList<Reaper> mReapers = new ArrayList<>();
    private int mVersion = 1;
    private int[] mSupportedMonitorTypes = new int[2];
    private Handler mGeofenceHandler = new Handler() { // from class: android.hardware.location.GeofenceHardwareImpl.1
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            IGeofenceHardwareCallback iGeofenceHardwareCallback;
            IGeofenceHardwareCallback iGeofenceHardwareCallback2;
            IGeofenceHardwareCallback iGeofenceHardwareCallback3;
            boolean z;
            IGeofenceHardwareCallback iGeofenceHardwareCallback4;
            IGeofenceHardwareCallback iGeofenceHardwareCallback5;
            switch (message.what) {
                case 1:
                    GeofenceTransition geofenceTransition = (GeofenceTransition) message.obj;
                    synchronized (GeofenceHardwareImpl.this.mGeofences) {
                        iGeofenceHardwareCallback = (IGeofenceHardwareCallback) GeofenceHardwareImpl.this.mGeofences.get(geofenceTransition.mGeofenceId);
                        if (GeofenceHardwareImpl.DEBUG) {
                            Log.d(GeofenceHardwareImpl.TAG, "GeofenceTransistionCallback: GPS : GeofenceId: " + geofenceTransition.mGeofenceId + " Transition: " + geofenceTransition.mTransition + " Location: " + geofenceTransition.mLocation + ":" + GeofenceHardwareImpl.this.mGeofences);
                        }
                    }
                    if (iGeofenceHardwareCallback != null) {
                        try {
                            iGeofenceHardwareCallback.onGeofenceTransition(geofenceTransition.mGeofenceId, geofenceTransition.mTransition, geofenceTransition.mLocation, geofenceTransition.mTimestamp, geofenceTransition.mMonitoringType);
                        } catch (RemoteException unused) {
                        }
                    }
                    GeofenceHardwareImpl.this.releaseWakeLock();
                    return;
                case 2:
                    int i = message.arg1;
                    synchronized (GeofenceHardwareImpl.this.mGeofences) {
                        iGeofenceHardwareCallback2 = (IGeofenceHardwareCallback) GeofenceHardwareImpl.this.mGeofences.get(i);
                    }
                    if (iGeofenceHardwareCallback2 != null) {
                        try {
                            iGeofenceHardwareCallback2.onGeofenceAdd(i, message.arg2);
                        } catch (RemoteException e) {
                            Log.i(GeofenceHardwareImpl.TAG, "Remote Exception:" + e);
                        }
                    }
                    GeofenceHardwareImpl.this.releaseWakeLock();
                    return;
                case 3:
                    int i2 = message.arg1;
                    synchronized (GeofenceHardwareImpl.this.mGeofences) {
                        iGeofenceHardwareCallback3 = (IGeofenceHardwareCallback) GeofenceHardwareImpl.this.mGeofences.get(i2);
                    }
                    if (iGeofenceHardwareCallback3 != null) {
                        try {
                            iGeofenceHardwareCallback3.onGeofenceRemove(i2, message.arg2);
                        } catch (RemoteException unused2) {
                        }
                        IBinder asBinder = iGeofenceHardwareCallback3.asBinder();
                        synchronized (GeofenceHardwareImpl.this.mGeofences) {
                            GeofenceHardwareImpl.this.mGeofences.remove(i2);
                            int i3 = 0;
                            while (true) {
                                if (i3 >= GeofenceHardwareImpl.this.mGeofences.size()) {
                                    z = false;
                                } else if (((IGeofenceHardwareCallback) GeofenceHardwareImpl.this.mGeofences.valueAt(i3)).asBinder() == asBinder) {
                                    z = true;
                                } else {
                                    i3++;
                                }
                            }
                        }
                        if (!z) {
                            Iterator it = GeofenceHardwareImpl.this.mReapers.iterator();
                            while (it.hasNext()) {
                                Reaper reaper = (Reaper) it.next();
                                if (reaper.mCallback != null && reaper.mCallback.asBinder() == asBinder) {
                                    it.remove();
                                    reaper.unlinkToDeath();
                                    if (GeofenceHardwareImpl.DEBUG) {
                                        Log.d(GeofenceHardwareImpl.TAG, String.format("Removed reaper %s because binder %s is no longer needed.", reaper, asBinder));
                                    }
                                }
                            }
                        }
                    }
                    GeofenceHardwareImpl.this.releaseWakeLock();
                    return;
                case 4:
                    int i4 = message.arg1;
                    synchronized (GeofenceHardwareImpl.this.mGeofences) {
                        iGeofenceHardwareCallback4 = (IGeofenceHardwareCallback) GeofenceHardwareImpl.this.mGeofences.get(i4);
                    }
                    if (iGeofenceHardwareCallback4 != null) {
                        try {
                            iGeofenceHardwareCallback4.onGeofencePause(i4, message.arg2);
                        } catch (RemoteException unused3) {
                        }
                    }
                    GeofenceHardwareImpl.this.releaseWakeLock();
                    return;
                case 5:
                    int i5 = message.arg1;
                    synchronized (GeofenceHardwareImpl.this.mGeofences) {
                        iGeofenceHardwareCallback5 = (IGeofenceHardwareCallback) GeofenceHardwareImpl.this.mGeofences.get(i5);
                    }
                    if (iGeofenceHardwareCallback5 != null) {
                        try {
                            iGeofenceHardwareCallback5.onGeofenceResume(i5, message.arg2);
                        } catch (RemoteException unused4) {
                        }
                    }
                    GeofenceHardwareImpl.this.releaseWakeLock();
                    return;
                case 6:
                    IGeofenceHardwareCallback iGeofenceHardwareCallback6 = (IGeofenceHardwareCallback) message.obj;
                    if (GeofenceHardwareImpl.DEBUG) {
                        Log.d(GeofenceHardwareImpl.TAG, "Geofence callback reaped:" + iGeofenceHardwareCallback6);
                    }
                    int i6 = message.arg1;
                    synchronized (GeofenceHardwareImpl.this.mGeofences) {
                        for (int i7 = 0; i7 < GeofenceHardwareImpl.this.mGeofences.size(); i7++) {
                            if (((IGeofenceHardwareCallback) GeofenceHardwareImpl.this.mGeofences.valueAt(i7)).equals(iGeofenceHardwareCallback6)) {
                                int keyAt = GeofenceHardwareImpl.this.mGeofences.keyAt(i7);
                                GeofenceHardwareImpl.this.removeGeofence(GeofenceHardwareImpl.this.mGeofences.keyAt(i7), i6);
                                GeofenceHardwareImpl.this.mGeofences.remove(keyAt);
                            }
                        }
                    }
                    return;
                default:
                    return;
            }
        }
    };
    private Handler mCallbacksHandler = new Handler() { // from class: android.hardware.location.GeofenceHardwareImpl.2
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            switch (message.what) {
                case 1:
                    GeofenceHardwareMonitorEvent geofenceHardwareMonitorEvent = (GeofenceHardwareMonitorEvent) message.obj;
                    ArrayList arrayList = GeofenceHardwareImpl.this.mCallbacks[geofenceHardwareMonitorEvent.getMonitoringType()];
                    if (arrayList != null) {
                        if (GeofenceHardwareImpl.DEBUG) {
                            Log.d(GeofenceHardwareImpl.TAG, "MonitoringSystemChangeCallback: " + geofenceHardwareMonitorEvent);
                        }
                        Iterator it = arrayList.iterator();
                        while (it.hasNext()) {
                            try {
                                ((IGeofenceHardwareMonitorCallback) it.next()).onMonitoringSystemChange(geofenceHardwareMonitorEvent);
                            } catch (RemoteException e) {
                                Log.d(GeofenceHardwareImpl.TAG, "Error reporting onMonitoringSystemChange.", e);
                            }
                        }
                    }
                    GeofenceHardwareImpl.this.releaseWakeLock();
                    return;
                case 2:
                    int i = message.arg1;
                    IGeofenceHardwareMonitorCallback iGeofenceHardwareMonitorCallback = (IGeofenceHardwareMonitorCallback) message.obj;
                    ArrayList arrayList2 = GeofenceHardwareImpl.this.mCallbacks[i];
                    if (arrayList2 == null) {
                        arrayList2 = new ArrayList();
                        GeofenceHardwareImpl.this.mCallbacks[i] = arrayList2;
                    }
                    if (arrayList2.contains(iGeofenceHardwareMonitorCallback)) {
                        return;
                    }
                    arrayList2.add(iGeofenceHardwareMonitorCallback);
                    return;
                case 3:
                    int i2 = message.arg1;
                    IGeofenceHardwareMonitorCallback iGeofenceHardwareMonitorCallback2 = (IGeofenceHardwareMonitorCallback) message.obj;
                    ArrayList arrayList3 = GeofenceHardwareImpl.this.mCallbacks[i2];
                    if (arrayList3 != null) {
                        arrayList3.remove(iGeofenceHardwareMonitorCallback2);
                        return;
                    }
                    return;
                case 4:
                    IGeofenceHardwareMonitorCallback iGeofenceHardwareMonitorCallback3 = (IGeofenceHardwareMonitorCallback) message.obj;
                    if (GeofenceHardwareImpl.DEBUG) {
                        Log.d(GeofenceHardwareImpl.TAG, "Monitor callback reaped:" + iGeofenceHardwareMonitorCallback3);
                    }
                    ArrayList arrayList4 = GeofenceHardwareImpl.this.mCallbacks[message.arg1];
                    if (arrayList4 == null || !arrayList4.contains(iGeofenceHardwareMonitorCallback3)) {
                        return;
                    }
                    arrayList4.remove(iGeofenceHardwareMonitorCallback3);
                    return;
                default:
                    return;
            }
        }
    };
    private Handler mReaperHandler = new Handler() { // from class: android.hardware.location.GeofenceHardwareImpl.3
        /* JADX WARN: Failed to find 'out' block for switch in B:3:0x0003. Please report as an issue. */
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            try {
                switch (message.what) {
                    case 1:
                        IGeofenceHardwareCallback iGeofenceHardwareCallback = (IGeofenceHardwareCallback) message.obj;
                        Reaper reaper = new Reaper(iGeofenceHardwareCallback, message.arg1);
                        if (GeofenceHardwareImpl.this.mReapers.contains(reaper)) {
                            return;
                        }
                        GeofenceHardwareImpl.this.mReapers.add(reaper);
                        iGeofenceHardwareCallback.asBinder().linkToDeath(reaper, 0);
                        return;
                    case 2:
                        IGeofenceHardwareMonitorCallback iGeofenceHardwareMonitorCallback = (IGeofenceHardwareMonitorCallback) message.obj;
                        Reaper reaper2 = new Reaper(iGeofenceHardwareMonitorCallback, message.arg1);
                        if (GeofenceHardwareImpl.this.mReapers.contains(reaper2)) {
                            return;
                        }
                        GeofenceHardwareImpl.this.mReapers.add(reaper2);
                        iGeofenceHardwareMonitorCallback.asBinder().linkToDeath(reaper2, 0);
                        return;
                    case 3:
                        GeofenceHardwareImpl.this.mReapers.remove((Reaper) message.obj);
                        return;
                    default:
                        return;
                }
            } catch (RemoteException unused) {
            }
        }
    };

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getMonitoringResolutionLevel(int i) {
        switch (i) {
            case 0:
                return 3;
            case 1:
                return 3;
            default:
                return 1;
        }
    }

    public static synchronized GeofenceHardwareImpl getInstance(Context context) {
        GeofenceHardwareImpl geofenceHardwareImpl;
        synchronized (GeofenceHardwareImpl.class) {
            if (sInstance == null) {
                sInstance = new GeofenceHardwareImpl(context);
            }
            geofenceHardwareImpl = sInstance;
        }
        return geofenceHardwareImpl;
    }

    private GeofenceHardwareImpl(Context context) {
        this.mContext = context;
        setMonitorAvailability(0, 2);
        setMonitorAvailability(1, 2);
    }

    private void acquireWakeLock() {
        if (this.mWakeLock == null) {
            this.mWakeLock = ((PowerManager) this.mContext.getSystemService(Context.POWER_SERVICE)).newWakeLock(1, TAG);
        }
        this.mWakeLock.acquire();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void releaseWakeLock() {
        if (this.mWakeLock.isHeld()) {
            this.mWakeLock.release();
        }
    }

    private void updateGpsHardwareAvailability() {
        boolean z;
        try {
            z = this.mGpsService.isHardwareGeofenceSupported();
        } catch (RemoteException unused) {
            Log.e(TAG, "Remote Exception calling LocationManagerService");
            z = false;
        }
        if (z) {
            setMonitorAvailability(0, 0);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0014 A[Catch: RemoteException -> 0x0020, TRY_LEAVE, TryCatch #0 {RemoteException -> 0x0020, blocks: (B:3:0x0002, B:5:0x0007, B:9:0x0010, B:11:0x0014), top: B:2:0x0002 }] */
    /* JADX WARN: Removed duplicated region for block: B:16:0x002a  */
    /* JADX WARN: Removed duplicated region for block: B:19:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void updateFusedHardwareAvailability() {
        boolean z;
        boolean z2;
        try {
        } catch (RemoteException unused) {
            Log.e(TAG, "RemoteException calling LocationManagerService");
        }
        if (this.mVersion >= 2 && (this.mCapabilities & 1) == 0) {
            z2 = false;
            if (this.mFusedService != null) {
                if (this.mFusedService.isSupported() && z2) {
                    z = true;
                    if (z) {
                        setMonitorAvailability(1, 0);
                        return;
                    }
                    return;
                }
            }
            z = false;
            if (z) {
            }
        }
        z2 = true;
        if (this.mFusedService != null) {
        }
        z = false;
        if (z) {
        }
    }

    public void setGpsHardwareGeofence(IGpsGeofenceHardware iGpsGeofenceHardware) {
        if (this.mGpsService == null) {
            this.mGpsService = iGpsGeofenceHardware;
            updateGpsHardwareAvailability();
        } else if (iGpsGeofenceHardware == null) {
            this.mGpsService = null;
            Log.w(TAG, "GPS Geofence Hardware service seems to have crashed");
        } else {
            Log.e(TAG, "Error: GpsService being set again.");
        }
    }

    public void onCapabilities(int i) {
        this.mCapabilities = i;
        updateFusedHardwareAvailability();
    }

    public void setVersion(int i) {
        this.mVersion = i;
        updateFusedHardwareAvailability();
    }

    public void setFusedGeofenceHardware(IFusedGeofenceHardware iFusedGeofenceHardware) {
        if (this.mFusedService == null) {
            this.mFusedService = iFusedGeofenceHardware;
            updateFusedHardwareAvailability();
        } else if (iFusedGeofenceHardware == null) {
            this.mFusedService = null;
            Log.w(TAG, "Fused Geofence Hardware service seems to have crashed");
        } else {
            Log.e(TAG, "Error: FusedService being set again");
        }
    }

    public int[] getMonitoringTypes() {
        boolean z;
        boolean z2;
        synchronized (this.mSupportedMonitorTypes) {
            z = this.mSupportedMonitorTypes[0] != 2;
            z2 = this.mSupportedMonitorTypes[1] != 2;
        }
        if (z) {
            if (z2) {
                return new int[]{0, 1};
            }
            return new int[]{0};
        }
        if (z2) {
            return new int[]{1};
        }
        return new int[0];
    }

    public int getStatusOfMonitoringType(int i) {
        int i2;
        synchronized (this.mSupportedMonitorTypes) {
            if (i >= this.mSupportedMonitorTypes.length || i < 0) {
                throw new IllegalArgumentException("Unknown monitoring type");
            }
            i2 = this.mSupportedMonitorTypes[i];
        }
        return i2;
    }

    public int getCapabilitiesForMonitoringType(int i) {
        if (this.mSupportedMonitorTypes[i] != 0) {
            return 0;
        }
        switch (i) {
            case 0:
                return 1;
            case 1:
                if (this.mVersion >= 2) {
                    return this.mCapabilities;
                }
                return 1;
            default:
                return 0;
        }
    }

    public boolean addCircularFence(int i, GeofenceHardwareRequestParcelable geofenceHardwareRequestParcelable, IGeofenceHardwareCallback iGeofenceHardwareCallback) {
        int id = geofenceHardwareRequestParcelable.getId();
        boolean z = false;
        if (DEBUG) {
            Log.d(TAG, String.format("addCircularFence: monitoringType=%d, %s", Integer.valueOf(i), geofenceHardwareRequestParcelable));
        }
        synchronized (this.mGeofences) {
            this.mGeofences.put(id, iGeofenceHardwareCallback);
        }
        switch (i) {
            case 0:
                if (this.mGpsService != null) {
                    try {
                        z = this.mGpsService.addCircularHardwareGeofence(geofenceHardwareRequestParcelable.getId(), geofenceHardwareRequestParcelable.getLatitude(), geofenceHardwareRequestParcelable.getLongitude(), geofenceHardwareRequestParcelable.getRadius(), geofenceHardwareRequestParcelable.getLastTransition(), geofenceHardwareRequestParcelable.getMonitorTransitions(), geofenceHardwareRequestParcelable.getNotificationResponsiveness(), geofenceHardwareRequestParcelable.getUnknownTimer());
                        break;
                    } catch (RemoteException unused) {
                        Log.e(TAG, "AddGeofence: Remote Exception calling LocationManagerService");
                        break;
                    }
                } else {
                    return false;
                }
            case 1:
                if (this.mFusedService != null) {
                    try {
                        this.mFusedService.addGeofences(new GeofenceHardwareRequestParcelable[]{geofenceHardwareRequestParcelable});
                        z = true;
                        break;
                    } catch (RemoteException unused2) {
                        Log.e(TAG, "AddGeofence: RemoteException calling LocationManagerService");
                        break;
                    }
                } else {
                    return false;
                }
        }
        if (z) {
            Message obtainMessage = this.mReaperHandler.obtainMessage(1, iGeofenceHardwareCallback);
            obtainMessage.arg1 = i;
            this.mReaperHandler.sendMessage(obtainMessage);
        } else {
            synchronized (this.mGeofences) {
                this.mGeofences.remove(id);
            }
        }
        if (DEBUG) {
            Log.d(TAG, "addCircularFence: Result is: " + z);
        }
        return z;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:11:0x0028. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:30:0x005b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean removeGeofence(int i, int i2) {
        if (DEBUG) {
            Log.d(TAG, "Remove Geofence: GeofenceId: " + i);
        }
        synchronized (this.mGeofences) {
            if (this.mGeofences.get(i) == null) {
                throw new IllegalArgumentException("Geofence " + i + " not registered.");
            }
        }
        boolean z = true;
        boolean z2 = false;
        switch (i2) {
            case 0:
                if (this.mGpsService == null) {
                    return false;
                }
                try {
                    z = this.mGpsService.removeHardwareGeofence(i);
                    z2 = z;
                } catch (RemoteException unused) {
                    Log.e(TAG, "RemoveGeofence: Remote Exception calling LocationManagerService");
                }
                if (DEBUG) {
                    Log.d(TAG, "removeGeofence: Result is: " + z2);
                }
                return z2;
            case 1:
                if (this.mFusedService == null) {
                    return false;
                }
                try {
                    this.mFusedService.removeGeofences(new int[]{i});
                    z2 = z;
                } catch (RemoteException unused2) {
                    Log.e(TAG, "RemoveGeofence: RemoteException calling LocationManagerService");
                }
                if (DEBUG) {
                }
                return z2;
            default:
                if (DEBUG) {
                }
                return z2;
        }
    }

    public boolean pauseGeofence(int i, int i2) {
        if (DEBUG) {
            Log.d(TAG, "Pause Geofence: GeofenceId: " + i);
        }
        synchronized (this.mGeofences) {
            if (this.mGeofences.get(i) == null) {
                throw new IllegalArgumentException("Geofence " + i + " not registered.");
            }
        }
        boolean z = false;
        switch (i2) {
            case 0:
                if (this.mGpsService != null) {
                    try {
                        z = this.mGpsService.pauseHardwareGeofence(i);
                        break;
                    } catch (RemoteException unused) {
                        Log.e(TAG, "PauseGeofence: Remote Exception calling LocationManagerService");
                        break;
                    }
                } else {
                    return false;
                }
            case 1:
                if (this.mFusedService != null) {
                    try {
                        this.mFusedService.pauseMonitoringGeofence(i);
                        z = true;
                        break;
                    } catch (RemoteException unused2) {
                        Log.e(TAG, "PauseGeofence: RemoteException calling LocationManagerService");
                        break;
                    }
                } else {
                    return false;
                }
        }
        if (DEBUG) {
            Log.d(TAG, "pauseGeofence: Result is: " + z);
        }
        return z;
    }

    public boolean resumeGeofence(int i, int i2, int i3) {
        if (DEBUG) {
            Log.d(TAG, "Resume Geofence: GeofenceId: " + i);
        }
        synchronized (this.mGeofences) {
            if (this.mGeofences.get(i) == null) {
                throw new IllegalArgumentException("Geofence " + i + " not registered.");
            }
        }
        boolean z = false;
        switch (i2) {
            case 0:
                if (this.mGpsService != null) {
                    try {
                        z = this.mGpsService.resumeHardwareGeofence(i, i3);
                        break;
                    } catch (RemoteException unused) {
                        Log.e(TAG, "ResumeGeofence: Remote Exception calling LocationManagerService");
                        break;
                    }
                } else {
                    return false;
                }
            case 1:
                if (this.mFusedService != null) {
                    try {
                        this.mFusedService.resumeMonitoringGeofence(i, i3);
                        z = true;
                        break;
                    } catch (RemoteException unused2) {
                        Log.e(TAG, "ResumeGeofence: RemoteException calling LocationManagerService");
                        break;
                    }
                } else {
                    return false;
                }
        }
        if (DEBUG) {
            Log.d(TAG, "resumeGeofence: Result is: " + z);
        }
        return z;
    }

    public boolean registerForMonitorStateChangeCallback(int i, IGeofenceHardwareMonitorCallback iGeofenceHardwareMonitorCallback) {
        Message obtainMessage = this.mReaperHandler.obtainMessage(2, iGeofenceHardwareMonitorCallback);
        obtainMessage.arg1 = i;
        this.mReaperHandler.sendMessage(obtainMessage);
        Message obtainMessage2 = this.mCallbacksHandler.obtainMessage(2, iGeofenceHardwareMonitorCallback);
        obtainMessage2.arg1 = i;
        this.mCallbacksHandler.sendMessage(obtainMessage2);
        return true;
    }

    public boolean unregisterForMonitorStateChangeCallback(int i, IGeofenceHardwareMonitorCallback iGeofenceHardwareMonitorCallback) {
        Message obtainMessage = this.mCallbacksHandler.obtainMessage(3, iGeofenceHardwareMonitorCallback);
        obtainMessage.arg1 = i;
        this.mCallbacksHandler.sendMessage(obtainMessage);
        return true;
    }

    public void reportGeofenceTransition(int i, Location location, int i2, long j, int i3, int i4) {
        if (location == null) {
            Log.e(TAG, String.format("Invalid Geofence Transition: location=null", new Object[0]));
            return;
        }
        if (DEBUG) {
            Log.d(TAG, "GeofenceTransition| " + location + ", transition:" + i2 + ", transitionTimestamp:" + j + ", monitoringType:" + i3 + ", sourcesUsed:" + i4);
        }
        GeofenceTransition geofenceTransition = new GeofenceTransition(i, i2, j, location, i3, i4);
        acquireWakeLock();
        this.mGeofenceHandler.obtainMessage(1, geofenceTransition).sendToTarget();
    }

    public void reportGeofenceMonitorStatus(int i, int i2, Location location, int i3) {
        setMonitorAvailability(i, i2);
        acquireWakeLock();
        this.mCallbacksHandler.obtainMessage(1, new GeofenceHardwareMonitorEvent(i, i2, i3, location)).sendToTarget();
    }

    private void reportGeofenceOperationStatus(int i, int i2, int i3) {
        acquireWakeLock();
        Message obtainMessage = this.mGeofenceHandler.obtainMessage(i);
        obtainMessage.arg1 = i2;
        obtainMessage.arg2 = i3;
        obtainMessage.sendToTarget();
    }

    public void reportGeofenceAddStatus(int i, int i2) {
        if (DEBUG) {
            Log.d(TAG, "AddCallback| id:" + i + ", status:" + i2);
        }
        reportGeofenceOperationStatus(2, i, i2);
    }

    public void reportGeofenceRemoveStatus(int i, int i2) {
        if (DEBUG) {
            Log.d(TAG, "RemoveCallback| id:" + i + ", status:" + i2);
        }
        reportGeofenceOperationStatus(3, i, i2);
    }

    public void reportGeofencePauseStatus(int i, int i2) {
        if (DEBUG) {
            Log.d(TAG, "PauseCallbac| id:" + i + ", status" + i2);
        }
        reportGeofenceOperationStatus(4, i, i2);
    }

    public void reportGeofenceResumeStatus(int i, int i2) {
        if (DEBUG) {
            Log.d(TAG, "ResumeCallback| id:" + i + ", status:" + i2);
        }
        reportGeofenceOperationStatus(5, i, i2);
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    private class GeofenceTransition {
        private int mGeofenceId;
        private Location mLocation;
        private int mMonitoringType;
        private int mSourcesUsed;
        private long mTimestamp;
        private int mTransition;

        GeofenceTransition(int i, int i2, long j, Location location, int i3, int i4) {
            this.mGeofenceId = i;
            this.mTransition = i2;
            this.mTimestamp = j;
            this.mLocation = location;
            this.mMonitoringType = i3;
            this.mSourcesUsed = i4;
        }
    }

    private void setMonitorAvailability(int i, int i2) {
        synchronized (this.mSupportedMonitorTypes) {
            this.mSupportedMonitorTypes[i] = i2;
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    class Reaper implements IBinder.DeathRecipient {
        private IGeofenceHardwareCallback mCallback;
        private IGeofenceHardwareMonitorCallback mMonitorCallback;
        private int mMonitoringType;

        Reaper(IGeofenceHardwareCallback iGeofenceHardwareCallback, int i) {
            this.mCallback = iGeofenceHardwareCallback;
            this.mMonitoringType = i;
        }

        Reaper(IGeofenceHardwareMonitorCallback iGeofenceHardwareMonitorCallback, int i) {
            this.mMonitorCallback = iGeofenceHardwareMonitorCallback;
            this.mMonitoringType = i;
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            if (this.mCallback != null) {
                Message obtainMessage = GeofenceHardwareImpl.this.mGeofenceHandler.obtainMessage(6, this.mCallback);
                obtainMessage.arg1 = this.mMonitoringType;
                GeofenceHardwareImpl.this.mGeofenceHandler.sendMessage(obtainMessage);
            } else if (this.mMonitorCallback != null) {
                Message obtainMessage2 = GeofenceHardwareImpl.this.mCallbacksHandler.obtainMessage(4, this.mMonitorCallback);
                obtainMessage2.arg1 = this.mMonitoringType;
                GeofenceHardwareImpl.this.mCallbacksHandler.sendMessage(obtainMessage2);
            }
            GeofenceHardwareImpl.this.mReaperHandler.sendMessage(GeofenceHardwareImpl.this.mReaperHandler.obtainMessage(3, this));
        }

        public int hashCode() {
            return ((((527 + (this.mCallback != null ? this.mCallback.asBinder().hashCode() : 0)) * 31) + (this.mMonitorCallback != null ? this.mMonitorCallback.asBinder().hashCode() : 0)) * 31) + this.mMonitoringType;
        }

        public boolean equals(Object obj) {
            if (obj == null) {
                return false;
            }
            if (obj == this) {
                return true;
            }
            Reaper reaper = (Reaper) obj;
            return binderEquals(reaper.mCallback, this.mCallback) && binderEquals(reaper.mMonitorCallback, this.mMonitorCallback) && reaper.mMonitoringType == this.mMonitoringType;
        }

        private boolean binderEquals(IInterface iInterface, IInterface iInterface2) {
            return iInterface == null ? iInterface2 == null : iInterface2 != null && iInterface.asBinder() == iInterface2.asBinder();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean unlinkToDeath() {
            if (this.mMonitorCallback != null) {
                return this.mMonitorCallback.asBinder().unlinkToDeath(this, 0);
            }
            if (this.mCallback != null) {
                return this.mCallback.asBinder().unlinkToDeath(this, 0);
            }
            return true;
        }

        private boolean callbackEquals(IGeofenceHardwareCallback iGeofenceHardwareCallback) {
            return this.mCallback != null && this.mCallback.asBinder() == iGeofenceHardwareCallback.asBinder();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getAllowedResolutionLevel(int i, int i2) {
        if (this.mContext.checkPermission(Manifest.permission.ACCESS_FINE_LOCATION, i, i2) == 0) {
            return 3;
        }
        return this.mContext.checkPermission(Manifest.permission.ACCESS_COARSE_LOCATION, i, i2) == 0 ? 2 : 1;
    }
}
