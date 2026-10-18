package com.facebook.imageformat;

import com.android.internal.telephony.IccCardConstants;
import com.facebook.infer.annotation.Nullsafe;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;

@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: /home/user/work/dex/classes3.dex */
public class ImageFormat {
    public static final ImageFormat UNKNOWN = new ImageFormat(IccCardConstants.INTENT_VALUE_ICC_UNKNOWN, null);

    @Nullable
    private final String mFileExtension;
    private final String mName;

    /* loaded from: /home/user/work/dex/classes3.dex */
    public interface FormatChecker {
        @Nullable
        ImageFormat determineFormat(@Nonnull byte[] bArr, int i);

        int getHeaderSize();
    }

    public ImageFormat(String str, @Nullable String str2) {
        this.mName = str;
        this.mFileExtension = str2;
    }

    @Nullable
    public String getFileExtension() {
        return this.mFileExtension;
    }

    public String toString() {
        return getName();
    }

    public String getName() {
        return this.mName;
    }
}
