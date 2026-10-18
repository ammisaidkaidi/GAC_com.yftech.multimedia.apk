package android.graphics;

import android.app.backup.FullBackup;
import android.content.ContentResolver;
import android.content.res.AssetFileDescriptor;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.graphics.ColorSpace;
import android.graphics.drawable.AnimatedImageDrawable;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.NinePatchDrawable;
import android.net.Uri;
import android.os.SystemProperties;
import android.system.ErrnoException;
import android.system.Os;
import android.system.OsConstants;
import android.util.Size;
import android.util.TypedValue;
import dalvik.system.CloseGuard;
import java.io.File;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.nio.ByteBuffer;
import java.util.concurrent.atomic.AtomicBoolean;
import libcore.io.IoUtils;

/* loaded from: /home/user/work/dex/classes.dex */
public final class ImageDecoder implements AutoCloseable {
    public static final int ALLOCATOR_DEFAULT = 0;
    public static final int ALLOCATOR_HARDWARE = 3;
    public static final int ALLOCATOR_SHARED_MEMORY = 2;
    public static final int ALLOCATOR_SOFTWARE = 1;
    private static final boolean ATC_AOSP_ENHANCEMENT = SystemProperties.getBoolean("ro.atc.aosp_enhancement", false);

    @Deprecated
    public static final int ERROR_SOURCE_ERROR = 3;

    @Deprecated
    public static final int ERROR_SOURCE_EXCEPTION = 1;

    @Deprecated
    public static final int ERROR_SOURCE_INCOMPLETE = 2;
    public static final int MEMORY_POLICY_DEFAULT = 1;
    public static final int MEMORY_POLICY_LOW_RAM = 0;
    public static int sApiLevel;
    private final boolean mAnimated;
    private AssetFileDescriptor mAssetFd;
    private Rect mCropRect;
    private int mDesiredHeight;
    private int mDesiredWidth;
    private final int mHeight;
    private InputStream mInputStream;
    private final boolean mIsNinePatch;
    private long mNativePtr;
    private OnPartialImageListener mOnPartialImageListener;
    private Rect mOutPaddingRect;
    private boolean mOwnsInputStream;
    private PostProcessor mPostProcessor;
    private Source mSource;
    private byte[] mTempStorage;
    private final int mWidth;
    private int mAllocator = 0;
    private boolean mUnpremultipliedRequired = false;
    private boolean mMutable = false;
    private boolean mConserveMemory = false;
    private boolean mDecodeAsAlphaMask = false;
    private ColorSpace mDesiredColorSpace = null;
    private final AtomicBoolean mClosed = new AtomicBoolean();
    private final CloseGuard mCloseGuard = CloseGuard.get();

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: /home/user/work/dex/classes.dex */
    public @interface Allocator {
    }

    @Deprecated
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class IncompleteException extends IOException {
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: /home/user/work/dex/classes.dex */
    public @interface MemoryPolicy {
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface OnHeaderDecodedListener {
        void onHeaderDecoded(ImageDecoder imageDecoder, ImageInfo imageInfo, Source source);
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface OnPartialImageListener {
        boolean onPartialImage(DecodeException decodeException);
    }

    private static native void nClose(long j);

    private static native ImageDecoder nCreate(long j, Source source) throws IOException;

    /* JADX INFO: Access modifiers changed from: private */
    public static native ImageDecoder nCreate(FileDescriptor fileDescriptor, Source source) throws IOException;

    private static native ImageDecoder nCreate(InputStream inputStream, byte[] bArr, Source source) throws IOException;

    /* JADX INFO: Access modifiers changed from: private */
    public static native ImageDecoder nCreate(ByteBuffer byteBuffer, int i, int i2, Source source) throws IOException;

    /* JADX INFO: Access modifiers changed from: private */
    public static native ImageDecoder nCreate(byte[] bArr, int i, int i2, Source source) throws IOException;

    private static native Bitmap nDecodeBitmap(long j, ImageDecoder imageDecoder, boolean z, int i, int i2, Rect rect, boolean z2, int i3, boolean z3, boolean z4, boolean z5, ColorSpace colorSpace) throws IOException;

    private static native ColorSpace nGetColorSpace(long j);

    private static native String nGetMimeType(long j);

    private static native void nGetPadding(long j, Rect rect);

    private static native Size nGetSampledSize(long j, int i);

    /* loaded from: /home/user/work/dex/classes.dex */
    public static abstract class Source {
        abstract ImageDecoder createImageDecoder() throws IOException;

        int getDensity() {
            return 0;
        }

        Resources getResources() {
            return null;
        }

        private Source() {
        }

        final int computeDstDensity() {
            Resources resources = getResources();
            if (resources == null) {
                return Bitmap.getDefaultDensity();
            }
            return resources.getDisplayMetrics().densityDpi;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class ByteArraySource extends Source {
        private final byte[] mData;
        private final int mLength;
        private final int mOffset;

        ByteArraySource(byte[] bArr, int i, int i2) {
            super();
            this.mData = bArr;
            this.mOffset = i;
            this.mLength = i2;
        }

        @Override // android.graphics.ImageDecoder.Source
        public ImageDecoder createImageDecoder() throws IOException {
            return ImageDecoder.nCreate(this.mData, this.mOffset, this.mLength, this);
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    private static class ByteBufferSource extends Source {
        private final ByteBuffer mBuffer;

        ByteBufferSource(ByteBuffer byteBuffer) {
            super();
            this.mBuffer = byteBuffer;
        }

        @Override // android.graphics.ImageDecoder.Source
        public ImageDecoder createImageDecoder() throws IOException {
            if (!this.mBuffer.isDirect() && this.mBuffer.hasArray()) {
                return ImageDecoder.nCreate(this.mBuffer.array(), this.mBuffer.arrayOffset() + this.mBuffer.position(), this.mBuffer.limit() - this.mBuffer.position(), this);
            }
            ByteBuffer slice = this.mBuffer.slice();
            return ImageDecoder.nCreate(slice, slice.position(), slice.limit(), this);
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    private static class ContentResolverSource extends Source {
        private final ContentResolver mResolver;
        private final Resources mResources;
        private final Uri mUri;

        ContentResolverSource(ContentResolver contentResolver, Uri uri, Resources resources) {
            super();
            this.mResolver = contentResolver;
            this.mUri = uri;
            this.mResources = resources;
        }

        @Override // android.graphics.ImageDecoder.Source
        Resources getResources() {
            return this.mResources;
        }

        @Override // android.graphics.ImageDecoder.Source
        public ImageDecoder createImageDecoder() throws IOException {
            AssetFileDescriptor openAssetFileDescriptor;
            ImageDecoder createFromStream;
            try {
                if (this.mUri.getScheme() == "content") {
                    openAssetFileDescriptor = this.mResolver.openTypedAssetFileDescriptor(this.mUri, "image/*", null);
                } else {
                    openAssetFileDescriptor = this.mResolver.openAssetFileDescriptor(this.mUri, FullBackup.ROOT_TREE_TOKEN);
                }
                FileDescriptor fileDescriptor = openAssetFileDescriptor.getFileDescriptor();
                try {
                    try {
                        Os.lseek(fileDescriptor, openAssetFileDescriptor.getStartOffset(), OsConstants.SEEK_SET);
                        createFromStream = ImageDecoder.nCreate(fileDescriptor, this);
                    } catch (ErrnoException unused) {
                        createFromStream = ImageDecoder.createFromStream(new FileInputStream(fileDescriptor), true, this);
                    }
                    if (createFromStream != null) {
                        createFromStream.mAssetFd = openAssetFileDescriptor;
                    }
                    return createFromStream;
                } finally {
                    IoUtils.closeQuietly(openAssetFileDescriptor);
                }
            } catch (FileNotFoundException unused2) {
                InputStream openInputStream = this.mResolver.openInputStream(this.mUri);
                if (openInputStream != null) {
                    return ImageDecoder.createFromStream(openInputStream, true, this);
                }
                throw new FileNotFoundException(this.mUri.toString());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static ImageDecoder createFromFile(File file, Source source) throws IOException {
        FileInputStream fileInputStream = new FileInputStream(file);
        FileDescriptor fd = fileInputStream.getFD();
        try {
            Os.lseek(fd, 0L, OsConstants.SEEK_CUR);
            try {
                ImageDecoder nCreate = nCreate(fd, source);
                if (nCreate != null) {
                    nCreate.mInputStream = fileInputStream;
                    nCreate.mOwnsInputStream = true;
                }
                return nCreate;
            } finally {
                IoUtils.closeQuietly(fileInputStream);
            }
        } catch (ErrnoException unused) {
            return createFromStream(fileInputStream, true, source);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static ImageDecoder createFromStream(InputStream inputStream, boolean z, Source source) throws IOException {
        byte[] bArr = new byte[16384];
        try {
            ImageDecoder nCreate = nCreate(inputStream, bArr, source);
            if (nCreate != null) {
                nCreate.mInputStream = inputStream;
                nCreate.mOwnsInputStream = z;
                nCreate.mTempStorage = bArr;
            }
            return nCreate;
        } finally {
            if (z) {
                IoUtils.closeQuietly(inputStream);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class InputStreamSource extends Source {
        final int mInputDensity;
        InputStream mInputStream;
        final Resources mResources;

        InputStreamSource(Resources resources, InputStream inputStream, int i) {
            super();
            if (inputStream == null) {
                throw new IllegalArgumentException("The InputStream cannot be null");
            }
            this.mResources = resources;
            this.mInputStream = inputStream;
            this.mInputDensity = resources == null ? 0 : i;
        }

        @Override // android.graphics.ImageDecoder.Source
        public Resources getResources() {
            return this.mResources;
        }

        @Override // android.graphics.ImageDecoder.Source
        public int getDensity() {
            return this.mInputDensity;
        }

        @Override // android.graphics.ImageDecoder.Source
        public ImageDecoder createImageDecoder() throws IOException {
            ImageDecoder createFromStream;
            synchronized (this) {
                if (this.mInputStream == null) {
                    throw new IOException("Cannot reuse InputStreamSource");
                }
                InputStream inputStream = this.mInputStream;
                this.mInputStream = null;
                createFromStream = ImageDecoder.createFromStream(inputStream, false, this);
            }
            return createFromStream;
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class AssetInputStreamSource extends Source {
        private AssetManager.AssetInputStream mAssetInputStream;
        private final int mDensity;
        private final Resources mResources;

        public AssetInputStreamSource(AssetManager.AssetInputStream assetInputStream, Resources resources, TypedValue typedValue) {
            super();
            this.mAssetInputStream = assetInputStream;
            this.mResources = resources;
            if (typedValue.density == 0) {
                this.mDensity = 160;
            } else if (typedValue.density != 65535) {
                this.mDensity = typedValue.density;
            } else {
                this.mDensity = 0;
            }
        }

        @Override // android.graphics.ImageDecoder.Source
        public Resources getResources() {
            return this.mResources;
        }

        @Override // android.graphics.ImageDecoder.Source
        public int getDensity() {
            return this.mDensity;
        }

        @Override // android.graphics.ImageDecoder.Source
        public ImageDecoder createImageDecoder() throws IOException {
            ImageDecoder createFromAsset;
            synchronized (this) {
                if (this.mAssetInputStream == null) {
                    throw new IOException("Cannot reuse AssetInputStreamSource");
                }
                AssetManager.AssetInputStream assetInputStream = this.mAssetInputStream;
                this.mAssetInputStream = null;
                createFromAsset = ImageDecoder.createFromAsset(assetInputStream, this);
            }
            return createFromAsset;
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    private static class ResourceSource extends Source {
        private Object mLock;
        int mResDensity;
        final int mResId;
        final Resources mResources;

        ResourceSource(Resources resources, int i) {
            super();
            this.mLock = new Object();
            this.mResources = resources;
            this.mResId = i;
            this.mResDensity = 0;
        }

        @Override // android.graphics.ImageDecoder.Source
        public Resources getResources() {
            return this.mResources;
        }

        @Override // android.graphics.ImageDecoder.Source
        public int getDensity() {
            int i;
            synchronized (this.mLock) {
                i = this.mResDensity;
            }
            return i;
        }

        @Override // android.graphics.ImageDecoder.Source
        public ImageDecoder createImageDecoder() throws IOException {
            TypedValue typedValue = new TypedValue();
            InputStream openRawResource = this.mResources.openRawResource(this.mResId, typedValue);
            synchronized (this.mLock) {
                if (typedValue.density == 0) {
                    this.mResDensity = 160;
                } else if (typedValue.density != 65535) {
                    this.mResDensity = typedValue.density;
                }
            }
            return ImageDecoder.createFromAsset((AssetManager.AssetInputStream) openRawResource, this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static ImageDecoder createFromAsset(AssetManager.AssetInputStream assetInputStream, Source source) throws IOException {
        try {
            ImageDecoder nCreate = nCreate(assetInputStream.getNativeAsset(), source);
            if (nCreate != null) {
                nCreate.mInputStream = assetInputStream;
                nCreate.mOwnsInputStream = true;
            }
            return nCreate;
        } finally {
            IoUtils.closeQuietly(assetInputStream);
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    private static class AssetSource extends Source {
        private final AssetManager mAssets;
        private final String mFileName;

        AssetSource(AssetManager assetManager, String str) {
            super();
            this.mAssets = assetManager;
            this.mFileName = str;
        }

        @Override // android.graphics.ImageDecoder.Source
        public ImageDecoder createImageDecoder() throws IOException {
            return ImageDecoder.createFromAsset((AssetManager.AssetInputStream) this.mAssets.open(this.mFileName), this);
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    private static class FileSource extends Source {
        private final File mFile;

        FileSource(File file) {
            super();
            this.mFile = file;
        }

        @Override // android.graphics.ImageDecoder.Source
        public ImageDecoder createImageDecoder() throws IOException {
            return ImageDecoder.createFromFile(this.mFile, this);
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class ImageInfo {
        private ImageDecoder mDecoder;
        private final Size mSize;

        private ImageInfo(ImageDecoder imageDecoder) {
            this.mSize = new Size(imageDecoder.mWidth, imageDecoder.mHeight);
            this.mDecoder = imageDecoder;
        }

        public Size getSize() {
            return this.mSize;
        }

        public String getMimeType() {
            return this.mDecoder.getMimeType();
        }

        public boolean isAnimated() {
            return this.mDecoder.mAnimated;
        }

        public ColorSpace getColorSpace() {
            return this.mDecoder.getColorSpace();
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static final class DecodeException extends IOException {
        public static final int SOURCE_EXCEPTION = 1;
        public static final int SOURCE_INCOMPLETE = 2;
        public static final int SOURCE_MALFORMED_DATA = 3;
        final int mError;
        final Source mSource;

        @Retention(RetentionPolicy.SOURCE)
        /* loaded from: /home/user/work/dex/classes.dex */
        public @interface Error {
        }

        DecodeException(int i, Throwable th, Source source) {
            super(errorMessage(i, th), th);
            this.mError = i;
            this.mSource = source;
        }

        DecodeException(int i, String str, Throwable th, Source source) {
            super(str + errorMessage(i, th), th);
            this.mError = i;
            this.mSource = source;
        }

        public int getError() {
            return this.mError;
        }

        public Source getSource() {
            return this.mSource;
        }

        private static String errorMessage(int i, Throwable th) {
            switch (i) {
                case 1:
                    return "Exception in input: " + th;
                case 2:
                    return "Input was incomplete.";
                case 3:
                    return "Input contained an error.";
                default:
                    return "";
            }
        }
    }

    private ImageDecoder(long j, int i, int i2, boolean z, boolean z2) {
        this.mNativePtr = j;
        this.mWidth = i;
        this.mHeight = i2;
        this.mDesiredWidth = i;
        this.mDesiredHeight = i2;
        this.mAnimated = z;
        this.mIsNinePatch = z2;
        this.mCloseGuard.open("close");
    }

    protected void finalize() throws Throwable {
        try {
            if (this.mCloseGuard != null) {
                this.mCloseGuard.warnIfOpen();
            }
            this.mInputStream = null;
            this.mAssetFd = null;
            close();
        } finally {
            super.finalize();
        }
    }

    public static Source createSource(Resources resources, int i) {
        return new ResourceSource(resources, i);
    }

    public static Source createSource(ContentResolver contentResolver, Uri uri) {
        return new ContentResolverSource(contentResolver, uri, null);
    }

    public static Source createSource(ContentResolver contentResolver, Uri uri, Resources resources) {
        return new ContentResolverSource(contentResolver, uri, resources);
    }

    public static Source createSource(AssetManager assetManager, String str) {
        return new AssetSource(assetManager, str);
    }

    public static Source createSource(byte[] bArr, int i, int i2) throws ArrayIndexOutOfBoundsException {
        if (bArr == null) {
            throw new NullPointerException("null byte[] in createSource!");
        }
        if (i < 0 || i2 < 0 || i >= bArr.length || i + i2 > bArr.length) {
            throw new ArrayIndexOutOfBoundsException("invalid offset/length!");
        }
        return new ByteArraySource(bArr, i, i2);
    }

    public static Source createSource(byte[] bArr) {
        return createSource(bArr, 0, bArr.length);
    }

    public static Source createSource(ByteBuffer byteBuffer) {
        return new ByteBufferSource(byteBuffer);
    }

    public static Source createSource(Resources resources, InputStream inputStream) {
        return new InputStreamSource(resources, inputStream, Bitmap.getDefaultDensity());
    }

    public static Source createSource(Resources resources, InputStream inputStream, int i) {
        return new InputStreamSource(resources, inputStream, i);
    }

    public static Source createSource(File file) {
        return new FileSource(file);
    }

    public Size getSampledSize(int i) {
        if (i > 0) {
            if (this.mNativePtr == 0) {
                throw new IllegalStateException("ImageDecoder is closed!");
            }
            return nGetSampledSize(this.mNativePtr, i);
        }
        throw new IllegalArgumentException("sampleSize must be positive! provided " + i);
    }

    @Deprecated
    public ImageDecoder setResize(int i, int i2) {
        setTargetSize(i, i2);
        return this;
    }

    public void setTargetSize(int i, int i2) {
        if (i <= 0 || i2 <= 0) {
            throw new IllegalArgumentException("Dimensions must be positive! provided (" + i + ", " + i2 + ")");
        }
        this.mDesiredWidth = i;
        this.mDesiredHeight = i2;
    }

    @Deprecated
    public ImageDecoder setResize(int i) {
        setTargetSampleSize(i);
        return this;
    }

    private int getTargetDimension(int i, int i2, int i3) {
        if (i2 >= i) {
            return 1;
        }
        int i4 = i / i2;
        return (i3 != i4 && Math.abs((i3 * i2) - i) >= i2) ? i4 : i3;
    }

    public void setTargetSampleSize(int i) {
        Size sampledSize = getSampledSize(i);
        setTargetSize(getTargetDimension(this.mWidth, i, sampledSize.getWidth()), getTargetDimension(this.mHeight, i, sampledSize.getHeight()));
    }

    private boolean requestedResize() {
        return (this.mWidth == this.mDesiredWidth && this.mHeight == this.mDesiredHeight) ? false : true;
    }

    public void setAllocator(int i) {
        if (i < 0 || i > 3) {
            throw new IllegalArgumentException("invalid allocator " + i);
        }
        this.mAllocator = i;
    }

    public int getAllocator() {
        return this.mAllocator;
    }

    public void setUnpremultipliedRequired(boolean z) {
        this.mUnpremultipliedRequired = z;
    }

    @Deprecated
    public ImageDecoder setRequireUnpremultiplied(boolean z) {
        setUnpremultipliedRequired(z);
        return this;
    }

    public boolean isUnpremultipliedRequired() {
        return this.mUnpremultipliedRequired;
    }

    @Deprecated
    public boolean getRequireUnpremultiplied() {
        return isUnpremultipliedRequired();
    }

    public void setPostProcessor(PostProcessor postProcessor) {
        this.mPostProcessor = postProcessor;
    }

    public PostProcessor getPostProcessor() {
        return this.mPostProcessor;
    }

    public void setOnPartialImageListener(OnPartialImageListener onPartialImageListener) {
        this.mOnPartialImageListener = onPartialImageListener;
    }

    public OnPartialImageListener getOnPartialImageListener() {
        return this.mOnPartialImageListener;
    }

    public void setCrop(Rect rect) {
        this.mCropRect = rect;
    }

    public Rect getCrop() {
        return this.mCropRect;
    }

    public void setOutPaddingRect(Rect rect) {
        this.mOutPaddingRect = rect;
    }

    public void setMutableRequired(boolean z) {
        this.mMutable = z;
    }

    @Deprecated
    public ImageDecoder setMutable(boolean z) {
        setMutableRequired(z);
        return this;
    }

    public boolean isMutableRequired() {
        return this.mMutable;
    }

    @Deprecated
    public boolean getMutable() {
        return isMutableRequired();
    }

    public void setMemorySizePolicy(int i) {
        this.mConserveMemory = i == 0;
    }

    public int getMemorySizePolicy() {
        return !this.mConserveMemory ? 1 : 0;
    }

    @Deprecated
    public void setConserveMemory(boolean z) {
        this.mConserveMemory = z;
    }

    @Deprecated
    public boolean getConserveMemory() {
        return this.mConserveMemory;
    }

    public void setDecodeAsAlphaMaskEnabled(boolean z) {
        this.mDecodeAsAlphaMask = z;
    }

    @Deprecated
    public ImageDecoder setDecodeAsAlphaMask(boolean z) {
        setDecodeAsAlphaMaskEnabled(z);
        return this;
    }

    @Deprecated
    public ImageDecoder setAsAlphaMask(boolean z) {
        setDecodeAsAlphaMask(z);
        return this;
    }

    public boolean isDecodeAsAlphaMaskEnabled() {
        return this.mDecodeAsAlphaMask;
    }

    @Deprecated
    public boolean getDecodeAsAlphaMask() {
        return this.mDecodeAsAlphaMask;
    }

    @Deprecated
    public boolean getAsAlphaMask() {
        return getDecodeAsAlphaMask();
    }

    public void setTargetColorSpace(ColorSpace colorSpace) {
        this.mDesiredColorSpace = colorSpace;
    }

    @Override // java.lang.AutoCloseable
    public void close() {
        this.mCloseGuard.close();
        if (this.mClosed.compareAndSet(false, true)) {
            nClose(this.mNativePtr);
            this.mNativePtr = 0L;
            if (this.mOwnsInputStream) {
                IoUtils.closeQuietly(this.mInputStream);
            }
            IoUtils.closeQuietly(this.mAssetFd);
            this.mInputStream = null;
            this.mAssetFd = null;
            this.mTempStorage = null;
        }
    }

    private void checkState() {
        if (this.mNativePtr == 0) {
            throw new IllegalStateException("Cannot use closed ImageDecoder!");
        }
        checkSubset(this.mDesiredWidth, this.mDesiredHeight, this.mCropRect);
        if (this.mAllocator == 3) {
            if (this.mMutable) {
                throw new IllegalStateException("Cannot make mutable HARDWARE Bitmap!");
            }
            if (this.mDecodeAsAlphaMask) {
                throw new IllegalStateException("Cannot make HARDWARE Alpha mask Bitmap!");
            }
        }
        if (this.mPostProcessor != null && this.mUnpremultipliedRequired) {
            throw new IllegalStateException("Cannot draw to unpremultiplied pixels!");
        }
        if (this.mDesiredColorSpace != null) {
            if (!(this.mDesiredColorSpace instanceof ColorSpace.Rgb)) {
                throw new IllegalArgumentException("The target color space must use the RGB color model - provided: " + this.mDesiredColorSpace);
            }
            if (((ColorSpace.Rgb) this.mDesiredColorSpace).getTransferParameters() != null) {
                return;
            }
            throw new IllegalArgumentException("The target color space must use an ICC parametric transfer function - provided: " + this.mDesiredColorSpace);
        }
    }

    private static void checkSubset(int i, int i2, Rect rect) {
        if (rect == null) {
            return;
        }
        if (rect.left < 0 || rect.top < 0 || rect.right > i || rect.bottom > i2) {
            throw new IllegalStateException("Subset " + rect + " not contained by scaled image bounds: (" + i + " x " + i2 + ")");
        }
    }

    private Bitmap decodeBitmapInternal() throws IOException {
        checkState();
        return nDecodeBitmap(this.mNativePtr, this, this.mPostProcessor != null, this.mDesiredWidth, this.mDesiredHeight, this.mCropRect, this.mMutable, this.mAllocator, this.mUnpremultipliedRequired, this.mConserveMemory, this.mDecodeAsAlphaMask, this.mDesiredColorSpace);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void callHeaderDecoded(OnHeaderDecodedListener onHeaderDecodedListener, Source source) {
        if (onHeaderDecodedListener != null) {
            ImageDecoder imageDecoder = null;
            ImageInfo imageInfo = new ImageInfo();
            try {
                onHeaderDecodedListener.onHeaderDecoded(this, imageInfo, source);
            } finally {
                imageInfo.mDecoder = null;
            }
        }
    }

    public static Drawable decodeDrawable(Source source, OnHeaderDecodedListener onHeaderDecodedListener) throws IOException {
        if (onHeaderDecodedListener == null) {
            throw new IllegalArgumentException("listener cannot be null! Use decodeDrawable(Source) to not have a listener");
        }
        return decodeDrawableImpl(source, onHeaderDecodedListener);
    }

    private static Drawable decodeDrawableImpl(Source source, OnHeaderDecodedListener onHeaderDecodedListener) throws IOException {
        ImageDecoder createImageDecoder = source.createImageDecoder();
        try {
            createImageDecoder.mSource = source;
            createImageDecoder.callHeaderDecoded(onHeaderDecodedListener, source);
            if (createImageDecoder.mUnpremultipliedRequired) {
                throw new IllegalStateException("Cannot decode a Drawable with unpremultiplied pixels!");
            }
            if (createImageDecoder.mMutable) {
                throw new IllegalStateException("Cannot decode a mutable Drawable!");
            }
            int computeDensity = createImageDecoder.computeDensity(source);
            if (createImageDecoder.mAnimated) {
                AnimatedImageDrawable animatedImageDrawable = new AnimatedImageDrawable(createImageDecoder.mNativePtr, createImageDecoder.mPostProcessor == null ? null : createImageDecoder, createImageDecoder.mDesiredWidth, createImageDecoder.mDesiredHeight, computeDensity, source.computeDstDensity(), createImageDecoder.mCropRect, createImageDecoder.mInputStream, createImageDecoder.mAssetFd);
                createImageDecoder.mInputStream = null;
                createImageDecoder.mAssetFd = null;
                return animatedImageDrawable;
            }
            Bitmap decodeBitmapInternal = createImageDecoder.decodeBitmapInternal();
            decodeBitmapInternal.setDensity(computeDensity);
            Resources resources = source.getResources();
            byte[] ninePatchChunk = decodeBitmapInternal.getNinePatchChunk();
            if (ninePatchChunk == null || !NinePatch.isNinePatchChunk(ninePatchChunk)) {
                BitmapDrawable bitmapDrawable = new BitmapDrawable(resources, decodeBitmapInternal);
                if (createImageDecoder != null) {
                    $closeResource(null, createImageDecoder);
                }
                return bitmapDrawable;
            }
            Rect rect = new Rect();
            decodeBitmapInternal.getOpticalInsets(rect);
            Rect rect2 = createImageDecoder.mOutPaddingRect;
            if (rect2 == null) {
                rect2 = new Rect();
            }
            Rect rect3 = rect2;
            nGetPadding(createImageDecoder.mNativePtr, rect3);
            NinePatchDrawable ninePatchDrawable = new NinePatchDrawable(resources, decodeBitmapInternal, ninePatchChunk, rect3, rect, null);
            if (createImageDecoder != null) {
                $closeResource(null, createImageDecoder);
            }
            return ninePatchDrawable;
        } finally {
            if (createImageDecoder != null) {
                $closeResource(null, createImageDecoder);
            }
        }
    }

    private static /* synthetic */ void $closeResource(Throwable th, AutoCloseable autoCloseable) {
        if (th == null) {
            autoCloseable.close();
            return;
        }
        try {
            autoCloseable.close();
        } catch (Throwable th2) {
            th.addSuppressed(th2);
        }
    }

    public static Drawable decodeDrawable(Source source) throws IOException {
        return decodeDrawableImpl(source, null);
    }

    public static Bitmap decodeBitmap(Source source, OnHeaderDecodedListener onHeaderDecodedListener) throws IOException {
        if (onHeaderDecodedListener == null) {
            throw new IllegalArgumentException("listener cannot be null! Use decodeBitmap(Source) to not have a listener");
        }
        return decodeBitmapImpl(source, onHeaderDecodedListener);
    }

    private static Bitmap decodeBitmapImpl(Source source, OnHeaderDecodedListener onHeaderDecodedListener) throws IOException {
        byte[] ninePatchChunk;
        ImageDecoder createImageDecoder = source.createImageDecoder();
        try {
            createImageDecoder.mSource = source;
            createImageDecoder.callHeaderDecoded(onHeaderDecodedListener, source);
            int computeDensity = createImageDecoder.computeDensity(source);
            Bitmap decodeBitmapInternal = createImageDecoder.decodeBitmapInternal();
            decodeBitmapInternal.setDensity(computeDensity);
            Rect rect = createImageDecoder.mOutPaddingRect;
            if (rect != null && (ninePatchChunk = decodeBitmapInternal.getNinePatchChunk()) != null && NinePatch.isNinePatchChunk(ninePatchChunk)) {
                nGetPadding(createImageDecoder.mNativePtr, rect);
            }
            return decodeBitmapInternal;
        } finally {
            if (createImageDecoder != null) {
                $closeResource(null, createImageDecoder);
            }
        }
    }

    private int computeDensity(Source source) {
        int computeDstDensity;
        if (requestedResize()) {
            return 0;
        }
        int density = source.getDensity();
        if (density == 0) {
            return density;
        }
        if (this.mIsNinePatch && this.mPostProcessor == null) {
            return density;
        }
        Resources resources = source.getResources();
        if ((resources != null && resources.getDisplayMetrics().noncompatDensityDpi == density) || density == (computeDstDensity = source.computeDstDensity())) {
            return density;
        }
        if (density < computeDstDensity && sApiLevel >= 28) {
            return density;
        }
        float f = computeDstDensity / density;
        int i = (int) ((this.mWidth * f) + 0.5f);
        int i2 = (int) ((this.mHeight * f) + 0.5f);
        if (ATC_AOSP_ENHANCEMENT) {
            if (this.mWidth > 0 && i == 0) {
                i = 1;
            }
            if (this.mHeight > 0 && i2 == 0) {
                i2 = 1;
            }
        }
        setTargetSize(i, i2);
        return computeDstDensity;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getMimeType() {
        return nGetMimeType(this.mNativePtr);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ColorSpace getColorSpace() {
        return nGetColorSpace(this.mNativePtr);
    }

    public static Bitmap decodeBitmap(Source source) throws IOException {
        return decodeBitmapImpl(source, null);
    }

    private int postProcessAndRelease(Canvas canvas) {
        try {
            return this.mPostProcessor.onPostProcess(canvas);
        } finally {
            canvas.release();
        }
    }

    private void onPartialImage(int i, Throwable th) throws DecodeException {
        DecodeException decodeException = new DecodeException(i, th, this.mSource);
        if (this.mOnPartialImageListener != null) {
            if (!this.mOnPartialImageListener.onPartialImage(decodeException)) {
                throw decodeException;
            }
            return;
        }
        throw decodeException;
    }
}
