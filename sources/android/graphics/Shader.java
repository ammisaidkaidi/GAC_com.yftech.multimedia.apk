package android.graphics;

import libcore.util.NativeAllocationRegistry;

/* loaded from: /home/user/work/dex/classes.dex */
public class Shader {
    private Runnable mCleaner;
    private Matrix mLocalMatrix;
    private long mNativeInstance;

    private static native long nativeGetFinalizer();

    long createNativeInstance(long j) {
        return 0L;
    }

    protected void verifyNativeInstance() {
    }

    static /* synthetic */ long access$000() {
        return nativeGetFinalizer();
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    private static class NoImagePreloadHolder {
        public static final NativeAllocationRegistry sRegistry = new NativeAllocationRegistry(Shader.class.getClassLoader(), Shader.access$000(), 50);

        private NoImagePreloadHolder() {
        }
    }

    @Deprecated
    public Shader() {
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public enum TileMode {
        CLAMP(0),
        REPEAT(1),
        MIRROR(2);

        final int nativeInt;

        TileMode(int i) {
            this.nativeInt = i;
        }
    }

    public boolean getLocalMatrix(Matrix matrix) {
        if (this.mLocalMatrix == null) {
            return false;
        }
        matrix.set(this.mLocalMatrix);
        return true;
    }

    public void setLocalMatrix(Matrix matrix) {
        if (matrix == null || matrix.isIdentity()) {
            if (this.mLocalMatrix != null) {
                this.mLocalMatrix = null;
                discardNativeInstance();
                return;
            }
            return;
        }
        if (this.mLocalMatrix == null) {
            this.mLocalMatrix = new Matrix(matrix);
            discardNativeInstance();
        } else {
            if (this.mLocalMatrix.equals(matrix)) {
                return;
            }
            this.mLocalMatrix.set(matrix);
            discardNativeInstance();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void discardNativeInstance() {
        if (this.mNativeInstance != 0) {
            this.mCleaner.run();
            this.mCleaner = null;
            this.mNativeInstance = 0L;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Shader copy() {
        Shader shader = new Shader();
        copyLocalMatrix(shader);
        return shader;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void copyLocalMatrix(Shader shader) {
        shader.mLocalMatrix.set(this.mLocalMatrix);
    }

    public final long getNativeInstance() {
        verifyNativeInstance();
        if (this.mNativeInstance == 0) {
            this.mNativeInstance = createNativeInstance(this.mLocalMatrix == null ? 0L : this.mLocalMatrix.native_instance);
            if (this.mNativeInstance != 0) {
                this.mCleaner = NoImagePreloadHolder.sRegistry.registerNativeAllocation(this, this.mNativeInstance);
            }
        }
        return this.mNativeInstance;
    }
}
