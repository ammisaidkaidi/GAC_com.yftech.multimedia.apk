package android.opengl;

/* loaded from: /home/user/work/dex/classes2.dex */
public class EGLSurface extends EGLObjectHandle {
    private EGLSurface(long j) {
        super(j);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof EGLSurface) && getNativeHandle() == ((EGLSurface) obj).getNativeHandle();
    }
}
