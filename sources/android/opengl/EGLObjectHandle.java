package android.opengl;

/* loaded from: /home/user/work/dex/classes2.dex */
public abstract class EGLObjectHandle {
    private final long mHandle;

    @Deprecated
    protected EGLObjectHandle(int i) {
        this.mHandle = i;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public EGLObjectHandle(long j) {
        this.mHandle = j;
    }

    @Deprecated
    public int getHandle() {
        if ((this.mHandle & 4294967295L) != this.mHandle) {
            throw new UnsupportedOperationException();
        }
        return (int) this.mHandle;
    }

    public long getNativeHandle() {
        return this.mHandle;
    }

    public int hashCode() {
        return 527 + ((int) (this.mHandle ^ (this.mHandle >>> 32)));
    }
}
