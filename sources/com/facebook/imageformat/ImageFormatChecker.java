package com.facebook.imageformat;

import com.facebook.common.internal.ByteStreams;
import com.facebook.common.internal.Closeables;
import com.facebook.common.internal.Preconditions;
import com.facebook.common.internal.Throwables;
import com.facebook.imageformat.ImageFormat;
import com.facebook.infer.annotation.Nullsafe;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Iterator;
import java.util.List;
import javax.annotation.Nullable;

@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: /home/user/work/dex/classes3.dex */
public class ImageFormatChecker {
    private static ImageFormatChecker sInstance;

    @Nullable
    private List<ImageFormat.FormatChecker> mCustomImageFormatCheckers;
    private final ImageFormat.FormatChecker mDefaultFormatChecker = new DefaultImageFormatChecker();
    private int mMaxHeaderLength;

    private ImageFormatChecker() {
        updateMaxHeaderLength();
    }

    public void setCustomImageFormatCheckers(@Nullable List<ImageFormat.FormatChecker> list) {
        this.mCustomImageFormatCheckers = list;
        updateMaxHeaderLength();
    }

    public ImageFormat determineImageFormat(InputStream inputStream) throws IOException {
        Preconditions.checkNotNull(inputStream);
        byte[] bArr = new byte[this.mMaxHeaderLength];
        int readHeaderFromStream = readHeaderFromStream(this.mMaxHeaderLength, inputStream, bArr);
        ImageFormat determineFormat = this.mDefaultFormatChecker.determineFormat(bArr, readHeaderFromStream);
        if (determineFormat != null && determineFormat != ImageFormat.UNKNOWN) {
            return determineFormat;
        }
        if (this.mCustomImageFormatCheckers != null) {
            Iterator<ImageFormat.FormatChecker> it = this.mCustomImageFormatCheckers.iterator();
            while (it.hasNext()) {
                ImageFormat determineFormat2 = it.next().determineFormat(bArr, readHeaderFromStream);
                if (determineFormat2 != null && determineFormat2 != ImageFormat.UNKNOWN) {
                    return determineFormat2;
                }
            }
        }
        return ImageFormat.UNKNOWN;
    }

    private void updateMaxHeaderLength() {
        this.mMaxHeaderLength = this.mDefaultFormatChecker.getHeaderSize();
        if (this.mCustomImageFormatCheckers != null) {
            Iterator<ImageFormat.FormatChecker> it = this.mCustomImageFormatCheckers.iterator();
            while (it.hasNext()) {
                this.mMaxHeaderLength = Math.max(this.mMaxHeaderLength, it.next().getHeaderSize());
            }
        }
    }

    private static int readHeaderFromStream(int i, InputStream inputStream, byte[] bArr) throws IOException {
        Preconditions.checkNotNull(inputStream);
        Preconditions.checkNotNull(bArr);
        Preconditions.checkArgument(Boolean.valueOf(bArr.length >= i));
        if (inputStream.markSupported()) {
            try {
                inputStream.mark(i);
                return ByteStreams.read(inputStream, bArr, 0, i);
            } finally {
                inputStream.reset();
            }
        }
        return ByteStreams.read(inputStream, bArr, 0, i);
    }

    public static synchronized ImageFormatChecker getInstance() {
        ImageFormatChecker imageFormatChecker;
        synchronized (ImageFormatChecker.class) {
            if (sInstance == null) {
                sInstance = new ImageFormatChecker();
            }
            imageFormatChecker = sInstance;
        }
        return imageFormatChecker;
    }

    public static ImageFormat getImageFormat(InputStream inputStream) throws IOException {
        return getInstance().determineImageFormat(inputStream);
    }

    public static ImageFormat getImageFormat_WrapIOException(InputStream inputStream) {
        try {
            return getImageFormat(inputStream);
        } catch (IOException e) {
            throw Throwables.propagate(e);
        }
    }

    public static ImageFormat getImageFormat(String str) {
        FileInputStream fileInputStream;
        FileInputStream fileInputStream2 = null;
        try {
            try {
                fileInputStream = new FileInputStream(str);
            } catch (Throwable th) {
                th = th;
            }
        } catch (IOException unused) {
        }
        try {
            ImageFormat imageFormat = getImageFormat(fileInputStream);
            Closeables.closeQuietly(fileInputStream);
            return imageFormat;
        } catch (IOException unused2) {
            fileInputStream2 = fileInputStream;
            ImageFormat imageFormat2 = ImageFormat.UNKNOWN;
            Closeables.closeQuietly(fileInputStream2);
            return imageFormat2;
        } catch (Throwable th2) {
            th = th2;
            fileInputStream2 = fileInputStream;
            Closeables.closeQuietly(fileInputStream2);
            throw th;
        }
    }
}
