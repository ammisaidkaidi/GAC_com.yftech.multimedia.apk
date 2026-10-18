package com.google.android.gles_jni;

import com.android.internal.logging.nano.MetricsProto;
import javax.microedition.khronos.egl.EGLContext;
import javax.microedition.khronos.opengles.GL;

/* loaded from: /home/user/work/dex/classes3.dex */
public class EGLContextImpl extends EGLContext {
    long mEGLContext;
    private GLImpl mGLContext = new GLImpl();

    public EGLContextImpl(long j) {
        this.mEGLContext = j;
    }

    @Override // javax.microedition.khronos.egl.EGLContext
    public GL getGL() {
        return this.mGLContext;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && getClass() == obj.getClass() && this.mEGLContext == ((EGLContextImpl) obj).mEGLContext;
    }

    public int hashCode() {
        return MetricsProto.MetricsEvent.DIALOG_SUPPORT_PHONE + ((int) (this.mEGLContext ^ (this.mEGLContext >>> 32)));
    }
}
