package android.graphics;

import libcore.util.NativeAllocationRegistry;

/* loaded from: /home/user/work/dex/classes.dex */
public class ColorFilter {
    private Runnable mCleaner;
    private long mNativeInstance;

    private static native long nativeGetFinalizer();

    long createNativeInstance() {
        return 0L;
    }

    static /* synthetic */ long access$000() {
        return nativeGetFinalizer();
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    private static class NoImagePreloadHolder {
        public static final NativeAllocationRegistry sRegistry = new NativeAllocationRegistry(ColorFilter.class.getClassLoader(), ColorFilter.access$000(), 50);

        private NoImagePreloadHolder() {
        }
    }

    @Deprecated
    public ColorFilter() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void discardNativeInstance() {
        if (this.mNativeInstance != 0) {
            this.mCleaner.run();
            this.mCleaner = null;
            this.mNativeInstance = 0L;
        }
    }

    public long getNativeInstance() {
        if (this.mNativeInstance == 0) {
            this.mNativeInstance = createNativeInstance();
            if (this.mNativeInstance != 0) {
                this.mCleaner = NoImagePreloadHolder.sRegistry.registerNativeAllocation(this, this.mNativeInstance);
            }
        }
        return this.mNativeInstance;
    }
}
