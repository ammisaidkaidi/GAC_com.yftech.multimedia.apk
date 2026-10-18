package android.opengl;

/* loaded from: /home/user/work/dex/classes2.dex */
public class EGLConfig extends EGLObjectHandle {
    private EGLConfig(long j) {
        super(j);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof EGLConfig) && getNativeHandle() == ((EGLConfig) obj).getNativeHandle();
    }
}
