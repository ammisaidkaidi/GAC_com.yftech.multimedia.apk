package android.hardware.camera2.impl;

import android.hardware.camera2.impl.CameraDeviceImpl;

/* loaded from: /home/user/work/dex/classes.dex */
public interface CameraCaptureSessionCore {
    CameraDeviceImpl.StateCallbackKK getDeviceStateCallback();

    boolean isAborting();

    void replaceSessionClose();
}
