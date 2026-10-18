package android.opengl;

/* loaded from: /home/user/work/dex/classes2.dex */
public class EGLDisplay extends EGLObjectHandle {
    private EGLDisplay(long j) {
        super(j);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof EGLDisplay) && getNativeHandle() == ((EGLDisplay) obj).getNativeHandle();
    }
}
