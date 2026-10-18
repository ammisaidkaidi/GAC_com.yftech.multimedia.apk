package android.hardware.camera2.legacy;

import android.hardware.Camera;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.CaptureResult;
import android.hardware.camera2.impl.CameraMetadataNative;
import android.hardware.camera2.utils.ParamsUtils;
import android.util.Log;
import com.android.internal.util.Preconditions;
import java.util.Objects;

/* loaded from: /home/user/work/dex/classes.dex */
public class LegacyFocusStateMapper {
    private static final boolean DEBUG = false;
    private static String TAG = "LegacyFocusStateMapper";
    private final Camera mCamera;
    private int mAfStatePrevious = 0;
    private String mAfModePrevious = null;
    private final Object mLock = new Object();
    private int mAfRun = 0;
    private int mAfState = 0;

    public LegacyFocusStateMapper(Camera camera) {
        this.mCamera = (Camera) Preconditions.checkNotNull(camera, "camera must not be null");
    }

    /* JADX WARN: Code restructure failed: missing block: B:56:0x00de, code lost:
    
        if (r13.equals(android.hardware.Camera.Parameters.FOCUS_MODE_CONTINUOUS_PICTURE) == false) goto L73;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void processRequestTriggers(CaptureRequest captureRequest, Camera.Parameters parameters) {
        final int i;
        boolean z;
        final int i2;
        Preconditions.checkNotNull(captureRequest, "captureRequest must not be null");
        int i3 = 0;
        int intValue = ((Integer) ParamsUtils.getOrDefault(captureRequest, CaptureRequest.CONTROL_AF_TRIGGER, 0)).intValue();
        final String focusMode = parameters.getFocusMode();
        if (!Objects.equals(this.mAfModePrevious, focusMode)) {
            synchronized (this.mLock) {
                this.mAfRun++;
                this.mAfState = 0;
            }
            this.mCamera.cancelAutoFocus();
        }
        this.mAfModePrevious = focusMode;
        synchronized (this.mLock) {
            i = this.mAfRun;
        }
        Camera.AutoFocusMoveCallback autoFocusMoveCallback = new Camera.AutoFocusMoveCallback() { // from class: android.hardware.camera2.legacy.LegacyFocusStateMapper.1
            /* JADX WARN: Removed duplicated region for block: B:20:0x005d A[Catch: all -> 0x007f, TryCatch #0 {, blocks: (B:4:0x0007, B:6:0x0011, B:7:0x002c, B:13:0x0034, B:19:0x005a, B:20:0x005d, B:21:0x0078, B:22:0x007d, B:24:0x0046, B:27:0x0050), top: B:3:0x0007 }] */
            @Override // android.hardware.Camera.AutoFocusMoveCallback
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public void onAutoFocusMoving(boolean z2, Camera camera) {
                synchronized (LegacyFocusStateMapper.this.mLock) {
                    if (i != LegacyFocusStateMapper.this.mAfRun) {
                        Log.d(LegacyFocusStateMapper.TAG, "onAutoFocusMoving - ignoring move callbacks from old af run" + i);
                        return;
                    }
                    boolean z3 = true;
                    int i4 = z2 ? 1 : 2;
                    String str = focusMode;
                    int hashCode = str.hashCode();
                    if (hashCode != -194628547) {
                        if (hashCode == 910005312 && str.equals(Camera.Parameters.FOCUS_MODE_CONTINUOUS_PICTURE)) {
                            z3 = false;
                            switch (z3) {
                                case false:
                                case true:
                                    break;
                                default:
                                    Log.w(LegacyFocusStateMapper.TAG, "onAutoFocus - got unexpected onAutoFocus in mode " + focusMode);
                                    break;
                            }
                            LegacyFocusStateMapper.this.mAfState = i4;
                        }
                        z3 = -1;
                        switch (z3) {
                        }
                        LegacyFocusStateMapper.this.mAfState = i4;
                    }
                    if (str.equals(Camera.Parameters.FOCUS_MODE_CONTINUOUS_VIDEO)) {
                        switch (z3) {
                        }
                        LegacyFocusStateMapper.this.mAfState = i4;
                    }
                    z3 = -1;
                    switch (z3) {
                    }
                    LegacyFocusStateMapper.this.mAfState = i4;
                }
            }
        };
        int hashCode = focusMode.hashCode();
        char c = 2;
        if (hashCode == -194628547) {
            if (focusMode.equals(Camera.Parameters.FOCUS_MODE_CONTINUOUS_VIDEO)) {
                z = 3;
            }
            z = -1;
        } else if (hashCode == 3005871) {
            if (focusMode.equals("auto")) {
                z = false;
            }
            z = -1;
        } else if (hashCode != 103652300) {
            if (hashCode == 910005312 && focusMode.equals(Camera.Parameters.FOCUS_MODE_CONTINUOUS_PICTURE)) {
                z = 2;
            }
            z = -1;
        } else {
            if (focusMode.equals(Camera.Parameters.FOCUS_MODE_MACRO)) {
                z = true;
            }
            z = -1;
        }
        switch (z) {
            case false:
            case true:
            case true:
            case true:
                this.mCamera.setAutoFocusMoveCallback(autoFocusMoveCallback);
                break;
        }
        switch (intValue) {
            case 0:
                return;
            case 1:
                int hashCode2 = focusMode.hashCode();
                if (hashCode2 == -194628547) {
                    if (focusMode.equals(Camera.Parameters.FOCUS_MODE_CONTINUOUS_VIDEO)) {
                        c = 3;
                    }
                    c = 65535;
                } else if (hashCode2 == 3005871) {
                    if (focusMode.equals("auto")) {
                        c = 0;
                    }
                    c = 65535;
                } else if (hashCode2 != 103652300) {
                    if (hashCode2 == 910005312) {
                        break;
                    }
                    c = 65535;
                } else {
                    if (focusMode.equals(Camera.Parameters.FOCUS_MODE_MACRO)) {
                        c = 1;
                    }
                    c = 65535;
                }
                switch (c) {
                    case 0:
                    case 1:
                        i3 = 3;
                        break;
                    case 2:
                    case 3:
                        i3 = 1;
                        break;
                }
                synchronized (this.mLock) {
                    i2 = this.mAfRun + 1;
                    this.mAfRun = i2;
                    this.mAfState = i3;
                }
                if (i3 == 0) {
                    return;
                }
                this.mCamera.autoFocus(new Camera.AutoFocusCallback() { // from class: android.hardware.camera2.legacy.LegacyFocusStateMapper.2
                    /* JADX WARN: Removed duplicated region for block: B:23:0x0081 A[Catch: all -> 0x00a3, TryCatch #0 {, blocks: (B:4:0x0007, B:6:0x0014, B:7:0x0032, B:12:0x0039, B:22:0x007e, B:23:0x0081, B:24:0x009c, B:25:0x00a1, B:27:0x0055, B:30:0x005e, B:33:0x0069, B:36:0x0073), top: B:3:0x0007 }] */
                    @Override // android.hardware.Camera.AutoFocusCallback
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                    */
                    public void onAutoFocus(boolean z2, Camera camera) {
                        synchronized (LegacyFocusStateMapper.this.mLock) {
                            int i4 = LegacyFocusStateMapper.this.mAfRun;
                            char c2 = 1;
                            if (i4 != i2) {
                                Log.d(LegacyFocusStateMapper.TAG, String.format("onAutoFocus - ignoring AF callback (old run %d, new run %d)", Integer.valueOf(i2), Integer.valueOf(i4)));
                                return;
                            }
                            int i5 = z2 ? 4 : 5;
                            String str = focusMode;
                            int hashCode3 = str.hashCode();
                            if (hashCode3 == -194628547) {
                                if (str.equals(Camera.Parameters.FOCUS_MODE_CONTINUOUS_VIDEO)) {
                                    c2 = 2;
                                    switch (c2) {
                                    }
                                    LegacyFocusStateMapper.this.mAfState = i5;
                                }
                                c2 = 65535;
                                switch (c2) {
                                }
                                LegacyFocusStateMapper.this.mAfState = i5;
                            }
                            if (hashCode3 == 3005871) {
                                if (str.equals("auto")) {
                                    c2 = 0;
                                    switch (c2) {
                                    }
                                    LegacyFocusStateMapper.this.mAfState = i5;
                                }
                                c2 = 65535;
                                switch (c2) {
                                }
                                LegacyFocusStateMapper.this.mAfState = i5;
                            }
                            if (hashCode3 != 103652300) {
                                if (hashCode3 == 910005312 && str.equals(Camera.Parameters.FOCUS_MODE_CONTINUOUS_PICTURE)) {
                                    switch (c2) {
                                        case 0:
                                        case 1:
                                        case 2:
                                        case 3:
                                            break;
                                        default:
                                            Log.w(LegacyFocusStateMapper.TAG, "onAutoFocus - got unexpected onAutoFocus in mode " + focusMode);
                                            break;
                                    }
                                    LegacyFocusStateMapper.this.mAfState = i5;
                                }
                                c2 = 65535;
                                switch (c2) {
                                }
                                LegacyFocusStateMapper.this.mAfState = i5;
                            }
                            if (str.equals(Camera.Parameters.FOCUS_MODE_MACRO)) {
                                c2 = 3;
                                switch (c2) {
                                }
                                LegacyFocusStateMapper.this.mAfState = i5;
                            }
                            c2 = 65535;
                            switch (c2) {
                            }
                            LegacyFocusStateMapper.this.mAfState = i5;
                        }
                    }
                });
                return;
            case 2:
                synchronized (this.mLock) {
                    synchronized (this.mLock) {
                        this.mAfRun++;
                        this.mAfState = 0;
                    }
                    this.mCamera.cancelAutoFocus();
                }
                return;
            default:
                Log.w(TAG, "processRequestTriggers - ignoring unknown control.afTrigger = " + intValue);
                return;
        }
    }

    public void mapResultTriggers(CameraMetadataNative cameraMetadataNative) {
        int i;
        Preconditions.checkNotNull(cameraMetadataNative, "result must not be null");
        synchronized (this.mLock) {
            i = this.mAfState;
        }
        cameraMetadataNative.set((CaptureResult.Key<CaptureResult.Key<Integer>>) CaptureResult.CONTROL_AF_STATE, (CaptureResult.Key<Integer>) Integer.valueOf(i));
        this.mAfStatePrevious = i;
    }

    private static String afStateToString(int i) {
        switch (i) {
            case 0:
                return "INACTIVE";
            case 1:
                return "PASSIVE_SCAN";
            case 2:
                return "PASSIVE_FOCUSED";
            case 3:
                return "ACTIVE_SCAN";
            case 4:
                return "FOCUSED_LOCKED";
            case 5:
                return "NOT_FOCUSED_LOCKED";
            case 6:
                return "PASSIVE_UNFOCUSED";
            default:
                return "UNKNOWN(" + i + ")";
        }
    }
}
