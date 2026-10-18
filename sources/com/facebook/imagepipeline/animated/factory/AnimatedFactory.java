package com.facebook.imagepipeline.animated.factory;

import android.content.Context;
import android.graphics.Bitmap;
import com.facebook.imagepipeline.decoder.ImageDecoder;
import com.facebook.imagepipeline.drawable.DrawableFactory;
import javax.annotation.Nullable;
import javax.annotation.concurrent.NotThreadSafe;

@NotThreadSafe
/* loaded from: /home/user/work/dex/classes3.dex */
public interface AnimatedFactory {
    @Nullable
    DrawableFactory getAnimatedDrawableFactory(@Nullable Context context);

    @Nullable
    ImageDecoder getGifDecoder(Bitmap.Config config);

    @Nullable
    ImageDecoder getWebPDecoder(Bitmap.Config config);
}
