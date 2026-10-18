package android.hardware.camera2;

import android.content.Context;
import android.hardware.CameraStatus;
import android.hardware.ICameraService;
import android.hardware.ICameraServiceListener;
import android.hardware.camera2.CameraDevice;
import android.hardware.camera2.CameraManager;
import android.hardware.camera2.impl.CameraDeviceImpl;
import android.hardware.camera2.impl.CameraMetadataNative;
import android.hardware.camera2.legacy.CameraDeviceUserShim;
import android.hardware.camera2.legacy.LegacyMetadataMapper;
import android.os.Binder;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.IBinder;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.os.ServiceSpecificException;
import android.os.SystemProperties;
import android.util.ArrayMap;
import android.util.Log;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* loaded from: /home/user/work/dex/classes.dex */
public final class CameraManager {
    private static final int API_VERSION_1 = 1;
    private static final int API_VERSION_2 = 2;
    private static final int CAMERA_TYPE_ALL = 1;
    private static final int CAMERA_TYPE_BACKWARD_COMPATIBLE = 0;
    private static final String TAG = "CameraManager";
    private static final int USE_CALLING_UID = -1;
    private final Context mContext;
    private ArrayList<String> mDeviceIdList;
    private final boolean DEBUG = false;
    private final Object mLock = new Object();

    /* loaded from: /home/user/work/dex/classes.dex */
    public static abstract class AvailabilityCallback {
        public void onCameraAvailable(String str) {
        }

        public void onCameraUnavailable(String str) {
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static abstract class TorchCallback {
        public void onTorchModeChanged(String str, boolean z) {
        }

        public void onTorchModeUnavailable(String str) {
        }
    }

    public CameraManager(Context context) {
        synchronized (this.mLock) {
            this.mContext = context;
        }
    }

    public String[] getCameraIdList() throws CameraAccessException {
        return CameraManagerGlobal.get().getCameraIdList();
    }

    public void registerAvailabilityCallback(AvailabilityCallback availabilityCallback, Handler handler) {
        CameraManagerGlobal.get().registerAvailabilityCallback(availabilityCallback, CameraDeviceImpl.checkAndWrapHandler(handler));
    }

    public void registerAvailabilityCallback(Executor executor, AvailabilityCallback availabilityCallback) {
        if (executor == null) {
            throw new IllegalArgumentException("executor was null");
        }
        CameraManagerGlobal.get().registerAvailabilityCallback(availabilityCallback, executor);
    }

    public void unregisterAvailabilityCallback(AvailabilityCallback availabilityCallback) {
        CameraManagerGlobal.get().unregisterAvailabilityCallback(availabilityCallback);
    }

    public void registerTorchCallback(TorchCallback torchCallback, Handler handler) {
        CameraManagerGlobal.get().registerTorchCallback(torchCallback, CameraDeviceImpl.checkAndWrapHandler(handler));
    }

    public void registerTorchCallback(Executor executor, TorchCallback torchCallback) {
        if (executor == null) {
            throw new IllegalArgumentException("executor was null");
        }
        CameraManagerGlobal.get().registerTorchCallback(torchCallback, executor);
    }

    public void unregisterTorchCallback(TorchCallback torchCallback) {
        CameraManagerGlobal.get().unregisterTorchCallback(torchCallback);
    }

    public CameraCharacteristics getCameraCharacteristics(String str) throws CameraAccessException {
        CameraCharacteristics cameraCharacteristics;
        if (CameraManagerGlobal.sCameraServiceDisabled) {
            throw new IllegalArgumentException("No cameras available on device");
        }
        synchronized (this.mLock) {
            ICameraService cameraService = CameraManagerGlobal.get().getCameraService();
            if (cameraService == null) {
                throw new CameraAccessException(2, "Camera service is currently unavailable");
            }
            try {
                if (!supportsCamera2ApiLocked(str)) {
                    int parseInt = Integer.parseInt(str);
                    cameraCharacteristics = LegacyMetadataMapper.createCharacteristics(cameraService.getLegacyParameters(parseInt), cameraService.getCameraInfo(parseInt));
                } else {
                    cameraCharacteristics = new CameraCharacteristics(cameraService.getCameraCharacteristics(str));
                }
            } catch (ServiceSpecificException e) {
                throwAsPublicException(e);
                cameraCharacteristics = null;
            } catch (RemoteException e2) {
                throw new CameraAccessException(2, "Camera service is currently unavailable", e2);
            }
        }
        return cameraCharacteristics;
    }

    private CameraDevice openCameraDeviceUserAsync(String str, CameraDevice.StateCallback stateCallback, Executor executor, int i) throws CameraAccessException {
        CameraDeviceImpl cameraDeviceImpl;
        ICameraDeviceUser connectBinderShim;
        CameraCharacteristics cameraCharacteristics = getCameraCharacteristics(str);
        synchronized (this.mLock) {
            ICameraDeviceUser iCameraDeviceUser = null;
            cameraDeviceImpl = new CameraDeviceImpl(str, stateCallback, executor, cameraCharacteristics, this.mContext.getApplicationInfo().targetSdkVersion);
            CameraDeviceImpl.CameraDeviceCallbacks callbacks = cameraDeviceImpl.getCallbacks();
            try {
                if (supportsCamera2ApiLocked(str)) {
                    ICameraService cameraService = CameraManagerGlobal.get().getCameraService();
                    if (cameraService == null) {
                        throw new ServiceSpecificException(4, "Camera service is currently unavailable");
                    }
                    connectBinderShim = cameraService.connectDevice(callbacks, str, this.mContext.getOpPackageName(), i);
                } else {
                    try {
                        int parseInt = Integer.parseInt(str);
                        Log.i(TAG, "Using legacy camera HAL.");
                        connectBinderShim = CameraDeviceUserShim.connectBinderShim(callbacks, parseInt);
                    } catch (NumberFormatException unused) {
                        throw new IllegalArgumentException("Expected cameraId to be numeric, but it was: " + str);
                    }
                }
                iCameraDeviceUser = connectBinderShim;
            } catch (ServiceSpecificException e) {
                if (e.errorCode == 9) {
                    throw new AssertionError("Should've gone down the shim path");
                }
                if (e.errorCode != 7 && e.errorCode != 8 && e.errorCode != 6 && e.errorCode != 4 && e.errorCode != 10) {
                    throwAsPublicException(e);
                }
                cameraDeviceImpl.setRemoteFailure(e);
                if (e.errorCode == 6 || e.errorCode == 4 || e.errorCode == 7) {
                    throwAsPublicException(e);
                }
            } catch (RemoteException unused2) {
                ServiceSpecificException serviceSpecificException = new ServiceSpecificException(4, "Camera service is currently unavailable");
                cameraDeviceImpl.setRemoteFailure(serviceSpecificException);
                throwAsPublicException(serviceSpecificException);
            }
            cameraDeviceImpl.setRemoteDevice(iCameraDeviceUser);
        }
        return cameraDeviceImpl;
    }

    public void openCamera(String str, CameraDevice.StateCallback stateCallback, Handler handler) throws CameraAccessException {
        openCameraForUid(str, stateCallback, CameraDeviceImpl.checkAndWrapHandler(handler), -1);
    }

    public void openCamera(String str, Executor executor, CameraDevice.StateCallback stateCallback) throws CameraAccessException {
        if (executor == null) {
            throw new IllegalArgumentException("executor was null");
        }
        openCameraForUid(str, stateCallback, executor, -1);
    }

    public void openCameraForUid(String str, CameraDevice.StateCallback stateCallback, Executor executor, int i) throws CameraAccessException {
        if (str == null) {
            throw new IllegalArgumentException("cameraId was null");
        }
        if (stateCallback == null) {
            throw new IllegalArgumentException("callback was null");
        }
        if (CameraManagerGlobal.sCameraServiceDisabled) {
            throw new IllegalArgumentException("No cameras available on device");
        }
        openCameraDeviceUserAsync(str, stateCallback, executor, i);
    }

    public void setTorchMode(String str, boolean z) throws CameraAccessException {
        if (CameraManagerGlobal.sCameraServiceDisabled) {
            throw new IllegalArgumentException("No cameras available on device");
        }
        CameraManagerGlobal.get().setTorchMode(str, z);
    }

    public static void throwAsPublicException(Throwable th) throws CameraAccessException {
        int i = 2;
        if (th instanceof ServiceSpecificException) {
            ServiceSpecificException serviceSpecificException = (ServiceSpecificException) th;
            switch (serviceSpecificException.errorCode) {
                case 1:
                    throw new SecurityException(serviceSpecificException.getMessage(), serviceSpecificException);
                case 2:
                case 3:
                    throw new IllegalArgumentException(serviceSpecificException.getMessage(), serviceSpecificException);
                case 4:
                    break;
                case 5:
                default:
                    i = 3;
                    break;
                case 6:
                    i = 1;
                    break;
                case 7:
                    i = 4;
                    break;
                case 8:
                    i = 5;
                    break;
                case 9:
                    i = 1000;
                    break;
            }
            throw new CameraAccessException(i, serviceSpecificException.getMessage(), serviceSpecificException);
        }
        if (th instanceof DeadObjectException) {
            throw new CameraAccessException(2, "Camera service has died unexpectedly", th);
        }
        if (th instanceof RemoteException) {
            throw new UnsupportedOperationException("An unknown RemoteException was thrown which should never happen.", th);
        }
        if (th instanceof RuntimeException) {
            throw ((RuntimeException) th);
        }
    }

    private boolean supportsCamera2ApiLocked(String str) {
        return supportsCameraApiLocked(str, 2);
    }

    private boolean supportsCameraApiLocked(String str, int i) {
        try {
            ICameraService cameraService = CameraManagerGlobal.get().getCameraService();
            if (cameraService == null) {
                return false;
            }
            return cameraService.supportsCameraApi(str, i);
        } catch (RemoteException unused) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static final class CameraManagerGlobal extends ICameraServiceListener.Stub implements IBinder.DeathRecipient {
        private static final String CAMERA_SERVICE_BINDER_NAME = "media.camera";
        private static final String TAG = "CameraManagerGlobal";
        private static final CameraManagerGlobal gCameraManager = new CameraManagerGlobal();
        public static final boolean sCameraServiceDisabled = SystemProperties.getBoolean("config.disable_cameraservice", false);
        private ICameraService mCameraService;
        private final boolean DEBUG = false;
        private final int CAMERA_SERVICE_RECONNECT_DELAY_MS = 1000;
        private final ScheduledExecutorService mScheduler = Executors.newScheduledThreadPool(1);
        private final ArrayMap<String, Integer> mDeviceStatus = new ArrayMap<>();
        private final ArrayMap<AvailabilityCallback, Executor> mCallbackMap = new ArrayMap<>();
        private Binder mTorchClientBinder = new Binder();
        private final ArrayMap<String, Integer> mTorchStatus = new ArrayMap<>();
        private final ArrayMap<TorchCallback, Executor> mTorchCallbackMap = new ArrayMap<>();
        private final Object mLock = new Object();

        private boolean isAvailable(int i) {
            return i == 1;
        }

        private boolean validStatus(int i) {
            if (i == -2) {
                return true;
            }
            switch (i) {
                case 0:
                case 1:
                case 2:
                    return true;
                default:
                    return false;
            }
        }

        private boolean validTorchStatus(int i) {
            switch (i) {
                case 0:
                case 1:
                case 2:
                    return true;
                default:
                    return false;
            }
        }

        @Override // android.hardware.ICameraServiceListener.Stub, android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        private CameraManagerGlobal() {
        }

        public static CameraManagerGlobal get() {
            return gCameraManager;
        }

        public ICameraService getCameraService() {
            ICameraService iCameraService;
            synchronized (this.mLock) {
                connectCameraServiceLocked();
                if (this.mCameraService == null && !sCameraServiceDisabled) {
                    Log.e(TAG, "Camera service is unavailable");
                }
                iCameraService = this.mCameraService;
            }
            return iCameraService;
        }

        private void connectCameraServiceLocked() {
            if (this.mCameraService != null || sCameraServiceDisabled) {
                return;
            }
            Log.i(TAG, "Connecting to camera service");
            IBinder service = ServiceManager.getService(CAMERA_SERVICE_BINDER_NAME);
            if (service == null) {
                return;
            }
            try {
                service.linkToDeath(this, 0);
                ICameraService asInterface = ICameraService.Stub.asInterface(service);
                try {
                    CameraMetadataNative.setupGlobalVendorTagDescriptor();
                } catch (ServiceSpecificException e) {
                    handleRecoverableSetupErrors(e);
                }
                try {
                    for (CameraStatus cameraStatus : asInterface.addListener(this)) {
                        onStatusChangedLocked(cameraStatus.status, cameraStatus.cameraId);
                    }
                    this.mCameraService = asInterface;
                } catch (RemoteException unused) {
                } catch (ServiceSpecificException e2) {
                    throw new IllegalStateException("Failed to register a camera service listener", e2);
                }
            } catch (RemoteException unused2) {
            }
        }

        public String[] getCameraIdList() {
            String[] strArr;
            synchronized (this.mLock) {
                connectCameraServiceLocked();
                int i = 0;
                for (int i2 = 0; i2 < this.mDeviceStatus.size(); i2++) {
                    int intValue = this.mDeviceStatus.valueAt(i2).intValue();
                    if (intValue != 0 && intValue != 2) {
                        i++;
                    }
                }
                strArr = new String[i];
                int i3 = 0;
                for (int i4 = 0; i4 < this.mDeviceStatus.size(); i4++) {
                    int intValue2 = this.mDeviceStatus.valueAt(i4).intValue();
                    if (intValue2 != 0 && intValue2 != 2) {
                        strArr[i3] = this.mDeviceStatus.keyAt(i4);
                        i3++;
                    }
                }
            }
            Arrays.sort(strArr, new Comparator<String>() { // from class: android.hardware.camera2.CameraManager.CameraManagerGlobal.1
                @Override // java.util.Comparator
                public int compare(String str, String str2) {
                    int i5;
                    int i6;
                    try {
                        i5 = Integer.parseInt(str);
                    } catch (NumberFormatException unused) {
                        i5 = -1;
                    }
                    try {
                        i6 = Integer.parseInt(str2);
                    } catch (NumberFormatException unused2) {
                        i6 = -1;
                    }
                    if (i5 >= 0 && i6 >= 0) {
                        return i5 - i6;
                    }
                    if (i5 >= 0) {
                        return -1;
                    }
                    if (i6 >= 0) {
                        return 1;
                    }
                    return str.compareTo(str2);
                }
            });
            return strArr;
        }

        public void setTorchMode(String str, boolean z) throws CameraAccessException {
            synchronized (this.mLock) {
                if (str == null) {
                    throw new IllegalArgumentException("cameraId was null");
                }
                ICameraService cameraService = getCameraService();
                if (cameraService == null) {
                    throw new CameraAccessException(2, "Camera service is currently unavailable");
                }
                try {
                    try {
                        cameraService.setTorchMode(str, z, this.mTorchClientBinder);
                    } catch (RemoteException unused) {
                        throw new CameraAccessException(2, "Camera service is currently unavailable");
                    }
                } catch (ServiceSpecificException e) {
                    CameraManager.throwAsPublicException(e);
                }
            }
        }

        private void handleRecoverableSetupErrors(ServiceSpecificException serviceSpecificException) {
            if (serviceSpecificException.errorCode == 4) {
                Log.w(TAG, serviceSpecificException.getMessage());
                return;
            }
            throw new IllegalStateException((Throwable) serviceSpecificException);
        }

        private void postSingleUpdate(final AvailabilityCallback availabilityCallback, Executor executor, final String str, int i) {
            long clearCallingIdentity;
            if (isAvailable(i)) {
                clearCallingIdentity = Binder.clearCallingIdentity();
                try {
                    executor.execute(new Runnable() { // from class: android.hardware.camera2.CameraManager.CameraManagerGlobal.2
                        @Override // java.lang.Runnable
                        public void run() {
                            availabilityCallback.onCameraAvailable(str);
                        }
                    });
                } finally {
                }
            } else {
                clearCallingIdentity = Binder.clearCallingIdentity();
                try {
                    executor.execute(new Runnable() { // from class: android.hardware.camera2.CameraManager.CameraManagerGlobal.3
                        @Override // java.lang.Runnable
                        public void run() {
                            availabilityCallback.onCameraUnavailable(str);
                        }
                    });
                } finally {
                }
            }
        }

        private void postSingleTorchUpdate(final TorchCallback torchCallback, Executor executor, final String str, final int i) {
            long clearCallingIdentity;
            switch (i) {
                case 1:
                case 2:
                    clearCallingIdentity = Binder.clearCallingIdentity();
                    try {
                        executor.execute(new Runnable() { // from class: android.hardware.camera2.-$$Lambda$CameraManager$CameraManagerGlobal$CONvadOBAEkcHSpx8j61v67qRGM
                            @Override // java.lang.Runnable
                            public final void run() {
                                CameraManager.TorchCallback torchCallback2 = CameraManager.TorchCallback.this;
                                String str2 = str;
                                int i2 = i;
                                torchCallback2.onTorchModeChanged(str2, r3 == 2);
                            }
                        });
                        return;
                    } finally {
                    }
                default:
                    clearCallingIdentity = Binder.clearCallingIdentity();
                    try {
                        executor.execute(new Runnable() { // from class: android.hardware.camera2.-$$Lambda$CameraManager$CameraManagerGlobal$6Ptxoe4wF_VCkE_pml8t66mklao
                            @Override // java.lang.Runnable
                            public final void run() {
                                CameraManager.TorchCallback.this.onTorchModeUnavailable(str);
                            }
                        });
                        return;
                    } finally {
                    }
            }
        }

        private void updateCallbackLocked(AvailabilityCallback availabilityCallback, Executor executor) {
            for (int i = 0; i < this.mDeviceStatus.size(); i++) {
                postSingleUpdate(availabilityCallback, executor, this.mDeviceStatus.keyAt(i), this.mDeviceStatus.valueAt(i).intValue());
            }
        }

        private void onStatusChangedLocked(int i, String str) {
            Integer put;
            if (!validStatus(i)) {
                Log.e(TAG, String.format("Ignoring invalid device %s status 0x%x", str, Integer.valueOf(i)));
                return;
            }
            if (i == 0) {
                put = this.mDeviceStatus.remove(str);
            } else {
                put = this.mDeviceStatus.put(str, Integer.valueOf(i));
            }
            if (put == null || put.intValue() != i) {
                if (put == null || isAvailable(i) != isAvailable(put.intValue())) {
                    int size = this.mCallbackMap.size();
                    for (int i2 = 0; i2 < size; i2++) {
                        postSingleUpdate(this.mCallbackMap.keyAt(i2), this.mCallbackMap.valueAt(i2), str, i);
                    }
                }
            }
        }

        private void updateTorchCallbackLocked(TorchCallback torchCallback, Executor executor) {
            for (int i = 0; i < this.mTorchStatus.size(); i++) {
                postSingleTorchUpdate(torchCallback, executor, this.mTorchStatus.keyAt(i), this.mTorchStatus.valueAt(i).intValue());
            }
        }

        private void onTorchStatusChangedLocked(int i, String str) {
            if (!validTorchStatus(i)) {
                Log.e(TAG, String.format("Ignoring invalid device %s torch status 0x%x", str, Integer.valueOf(i)));
                return;
            }
            Integer put = this.mTorchStatus.put(str, Integer.valueOf(i));
            if (put == null || put.intValue() != i) {
                int size = this.mTorchCallbackMap.size();
                for (int i2 = 0; i2 < size; i2++) {
                    postSingleTorchUpdate(this.mTorchCallbackMap.keyAt(i2), this.mTorchCallbackMap.valueAt(i2), str, i);
                }
            }
        }

        public void registerAvailabilityCallback(AvailabilityCallback availabilityCallback, Executor executor) {
            synchronized (this.mLock) {
                connectCameraServiceLocked();
                if (this.mCallbackMap.put(availabilityCallback, executor) == null) {
                    updateCallbackLocked(availabilityCallback, executor);
                }
                if (this.mCameraService == null) {
                    scheduleCameraServiceReconnectionLocked();
                }
            }
        }

        public void unregisterAvailabilityCallback(AvailabilityCallback availabilityCallback) {
            synchronized (this.mLock) {
                this.mCallbackMap.remove(availabilityCallback);
            }
        }

        public void registerTorchCallback(TorchCallback torchCallback, Executor executor) {
            synchronized (this.mLock) {
                connectCameraServiceLocked();
                if (this.mTorchCallbackMap.put(torchCallback, executor) == null) {
                    updateTorchCallbackLocked(torchCallback, executor);
                }
                if (this.mCameraService == null) {
                    scheduleCameraServiceReconnectionLocked();
                }
            }
        }

        public void unregisterTorchCallback(TorchCallback torchCallback) {
            synchronized (this.mLock) {
                this.mTorchCallbackMap.remove(torchCallback);
            }
        }

        @Override // android.hardware.ICameraServiceListener
        public void onStatusChanged(int i, String str) throws RemoteException {
            synchronized (this.mLock) {
                onStatusChangedLocked(i, str);
            }
        }

        @Override // android.hardware.ICameraServiceListener
        public void onTorchStatusChanged(int i, String str) throws RemoteException {
            synchronized (this.mLock) {
                onTorchStatusChangedLocked(i, str);
            }
        }

        private void scheduleCameraServiceReconnectionLocked() {
            if (this.mCallbackMap.isEmpty() && this.mTorchCallbackMap.isEmpty()) {
                return;
            }
            try {
                this.mScheduler.schedule(new Runnable() { // from class: android.hardware.camera2.-$$Lambda$CameraManager$CameraManagerGlobal$w1y8myi6vgxAcTEs8WArI-NN3R0
                    @Override // java.lang.Runnable
                    public final void run() {
                        CameraManager.CameraManagerGlobal.lambda$scheduleCameraServiceReconnectionLocked$2(CameraManager.CameraManagerGlobal.this);
                    }
                }, 1000L, TimeUnit.MILLISECONDS);
            } catch (RejectedExecutionException e) {
                Log.e(TAG, "Failed to schedule camera service re-connect: " + e);
            }
        }

        public static /* synthetic */ void lambda$scheduleCameraServiceReconnectionLocked$2(CameraManagerGlobal cameraManagerGlobal) {
            if (cameraManagerGlobal.getCameraService() == null) {
                synchronized (cameraManagerGlobal.mLock) {
                    cameraManagerGlobal.scheduleCameraServiceReconnectionLocked();
                }
            }
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            synchronized (this.mLock) {
                if (this.mCameraService == null) {
                    return;
                }
                this.mCameraService = null;
                for (int i = 0; i < this.mDeviceStatus.size(); i++) {
                    onStatusChangedLocked(0, this.mDeviceStatus.keyAt(i));
                }
                for (int i2 = 0; i2 < this.mTorchStatus.size(); i2++) {
                    onTorchStatusChangedLocked(0, this.mTorchStatus.keyAt(i2));
                }
                scheduleCameraServiceReconnectionLocked();
            }
        }
    }
}
