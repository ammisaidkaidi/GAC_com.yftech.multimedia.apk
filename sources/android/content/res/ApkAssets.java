package android.content.res;

import com.android.internal.annotations.GuardedBy;
import com.android.internal.util.Preconditions;
import java.io.FileDescriptor;
import java.io.IOException;

/* loaded from: /home/user/work/dex/classes.dex */
public final class ApkAssets {

    @GuardedBy("this")
    private final long mNativePtr;

    @GuardedBy("this")
    private StringBlock mStringBlock;

    private static native void nativeDestroy(long j);

    private static native String nativeGetAssetPath(long j);

    private static native long nativeGetStringBlock(long j);

    private static native boolean nativeIsUpToDate(long j);

    private static native long nativeLoad(String str, boolean z, boolean z2, boolean z3) throws IOException;

    private static native long nativeLoadFromFd(FileDescriptor fileDescriptor, String str, boolean z, boolean z2) throws IOException;

    private static native long nativeOpenXml(long j, String str) throws IOException;

    public static ApkAssets loadFromPath(String str) throws IOException {
        return new ApkAssets(str, false, false, false);
    }

    public static ApkAssets loadFromPath(String str, boolean z) throws IOException {
        return new ApkAssets(str, z, false, false);
    }

    public static ApkAssets loadFromPath(String str, boolean z, boolean z2) throws IOException {
        return new ApkAssets(str, z, z2, false);
    }

    public static ApkAssets loadFromFd(FileDescriptor fileDescriptor, String str, boolean z, boolean z2) throws IOException {
        return new ApkAssets(fileDescriptor, str, z, z2);
    }

    public static ApkAssets loadOverlayFromPath(String str, boolean z) throws IOException {
        return new ApkAssets(str, z, false, true);
    }

    private ApkAssets(String str, boolean z, boolean z2, boolean z3) throws IOException {
        Preconditions.checkNotNull(str, "path");
        this.mNativePtr = nativeLoad(str, z, z2, z3);
        this.mStringBlock = new StringBlock(nativeGetStringBlock(this.mNativePtr), true);
    }

    private ApkAssets(FileDescriptor fileDescriptor, String str, boolean z, boolean z2) throws IOException {
        Preconditions.checkNotNull(fileDescriptor, "fd");
        Preconditions.checkNotNull(str, "friendlyName");
        this.mNativePtr = nativeLoadFromFd(fileDescriptor, str, z, z2);
        this.mStringBlock = new StringBlock(nativeGetStringBlock(this.mNativePtr), true);
    }

    public String getAssetPath() {
        String nativeGetAssetPath;
        synchronized (this) {
            nativeGetAssetPath = nativeGetAssetPath(this.mNativePtr);
        }
        return nativeGetAssetPath;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public CharSequence getStringFromPool(int i) {
        CharSequence charSequence;
        synchronized (this) {
            charSequence = this.mStringBlock.get(i);
        }
        return charSequence;
    }

    public XmlResourceParser openXml(String str) throws IOException {
        XmlResourceParser newParser;
        Preconditions.checkNotNull(str, "fileName");
        synchronized (this) {
            XmlBlock xmlBlock = new XmlBlock(null, nativeOpenXml(this.mNativePtr, str));
            try {
                newParser = xmlBlock.newParser();
                if (newParser == null) {
                    throw new AssertionError("block.newParser() returned a null parser");
                }
                xmlBlock.close();
            } finally {
            }
        }
        return newParser;
    }

    public boolean isUpToDate() {
        boolean nativeIsUpToDate;
        synchronized (this) {
            nativeIsUpToDate = nativeIsUpToDate(this.mNativePtr);
        }
        return nativeIsUpToDate;
    }

    public String toString() {
        return "ApkAssets{path=" + getAssetPath() + "}";
    }

    protected void finalize() throws Throwable {
        nativeDestroy(this.mNativePtr);
    }
}
