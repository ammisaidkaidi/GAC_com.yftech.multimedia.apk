package com.facebook.imagepipeline.postprocessors;

import android.content.Context;
import android.graphics.Bitmap;
import com.facebook.cache.common.CacheKey;
import com.facebook.cache.common.SimpleCacheKey;
import com.facebook.common.internal.Preconditions;
import com.facebook.imagepipeline.filter.IterativeBoxBlurFilter;
import com.facebook.imagepipeline.filter.RenderScriptBlurFilter;
import com.facebook.imagepipeline.request.BasePostprocessor;
import com.facebook.infer.annotation.Nullsafe;
import java.util.Locale;
import javax.annotation.Nullable;

@Nullsafe(Nullsafe.Mode.LOCAL)
/* loaded from: /home/user/work/dex/classes3.dex */
public class BlurPostProcessor extends BasePostprocessor {
    private static final int DEFAULT_ITERATIONS = 3;
    private static final boolean canUseRenderScript = RenderScriptBlurFilter.canUseRenderScript();
    private final int mBlurRadius;

    @Nullable
    private CacheKey mCacheKey;
    private final Context mContext;
    private final int mIterations;

    public BlurPostProcessor(int i, Context context, int i2) {
        Preconditions.checkArgument(Boolean.valueOf(i > 0 && i <= 25));
        Preconditions.checkArgument(Boolean.valueOf(i2 > 0));
        Preconditions.checkNotNull(context);
        this.mIterations = i2;
        this.mBlurRadius = i;
        this.mContext = context;
    }

    public BlurPostProcessor(int i, Context context) {
        this(i, context, 3);
    }

    @Override // com.facebook.imagepipeline.request.BasePostprocessor
    public void process(Bitmap bitmap, Bitmap bitmap2) {
        if (canUseRenderScript) {
            RenderScriptBlurFilter.blurBitmap(bitmap, bitmap2, this.mContext, this.mBlurRadius);
        } else {
            super.process(bitmap, bitmap2);
        }
    }

    @Override // com.facebook.imagepipeline.request.BasePostprocessor
    public void process(Bitmap bitmap) {
        IterativeBoxBlurFilter.boxBlurBitmapInPlace(bitmap, this.mIterations, this.mBlurRadius);
    }

    @Override // com.facebook.imagepipeline.request.BasePostprocessor, com.facebook.imagepipeline.request.Postprocessor
    @Nullable
    public CacheKey getPostprocessorCacheKey() {
        String format;
        if (this.mCacheKey == null) {
            if (canUseRenderScript) {
                format = String.format((Locale) null, "IntrinsicBlur;%d", Integer.valueOf(this.mBlurRadius));
            } else {
                format = String.format((Locale) null, "IterativeBoxBlur;%d;%d", Integer.valueOf(this.mIterations), Integer.valueOf(this.mBlurRadius));
            }
            this.mCacheKey = new SimpleCacheKey(format);
        }
        return this.mCacheKey;
    }
}
