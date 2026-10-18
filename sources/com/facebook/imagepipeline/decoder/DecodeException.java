package com.facebook.imagepipeline.decoder;

import com.facebook.imagepipeline.image.EncodedImage;
import com.facebook.infer.annotation.Nullsafe;

@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: /home/user/work/dex/classes3.dex */
public class DecodeException extends RuntimeException {
    private final EncodedImage mEncodedImage;

    public DecodeException(String str, EncodedImage encodedImage) {
        super(str);
        this.mEncodedImage = encodedImage;
    }

    public DecodeException(String str, Throwable th, EncodedImage encodedImage) {
        super(str, th);
        this.mEncodedImage = encodedImage;
    }

    public EncodedImage getEncodedImage() {
        return this.mEncodedImage;
    }
}
