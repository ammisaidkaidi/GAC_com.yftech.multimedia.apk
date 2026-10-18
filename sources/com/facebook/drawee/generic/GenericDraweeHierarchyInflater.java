package com.facebook.drawee.generic;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import com.facebook.drawee.R;
import com.facebook.drawee.drawable.AutoRotateDrawable;
import com.facebook.drawee.drawable.ScalingUtils;
import com.facebook.imagepipeline.systrace.FrescoSystrace;
import com.facebook.infer.annotation.ReturnsOwnership;
import javax.annotation.Nullable;

/* loaded from: /home/user/work/dex/classes3.dex */
public class GenericDraweeHierarchyInflater {
    public static GenericDraweeHierarchy inflateHierarchy(Context context, @Nullable AttributeSet attributeSet) {
        return inflateBuilder(context, attributeSet).build();
    }

    public static GenericDraweeHierarchyBuilder inflateBuilder(Context context, @Nullable AttributeSet attributeSet) {
        if (FrescoSystrace.isTracing()) {
            FrescoSystrace.beginSection("GenericDraweeHierarchyBuilder#inflateBuilder");
        }
        GenericDraweeHierarchyBuilder updateBuilder = updateBuilder(new GenericDraweeHierarchyBuilder(context.getResources()), context, attributeSet);
        if (FrescoSystrace.isTracing()) {
            FrescoSystrace.endSection();
        }
        return updateBuilder;
    }

    /* JADX WARN: Code restructure failed: missing block: B:126:0x01da, code lost:
    
        if (r14 != false) goto L136;
     */
    /* JADX WARN: Code restructure failed: missing block: B:127:0x01f6, code lost:
    
        r5 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:163:0x01f4, code lost:
    
        if (r15 != false) goto L136;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static GenericDraweeHierarchyBuilder updateBuilder(GenericDraweeHierarchyBuilder genericDraweeHierarchyBuilder, Context context, @Nullable AttributeSet attributeSet) {
        boolean z;
        int i;
        boolean z2;
        boolean z3;
        boolean z4;
        int i2;
        int i3;
        Context context2 = context;
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = context2.obtainStyledAttributes(attributeSet, R.styleable.GenericDraweeHierarchy);
            try {
                int indexCount = obtainStyledAttributes.getIndexCount();
                boolean z5 = true;
                i2 = 0;
                int i4 = 0;
                boolean z6 = true;
                boolean z7 = true;
                boolean z8 = true;
                boolean z9 = true;
                boolean z10 = true;
                boolean z11 = true;
                boolean z12 = true;
                int i5 = 0;
                while (i4 < indexCount) {
                    try {
                        int index = obtainStyledAttributes.getIndex(i4);
                        if (index == R.styleable.GenericDraweeHierarchy_actualImageScaleType) {
                            genericDraweeHierarchyBuilder.setActualImageScaleType(getScaleTypeFromXml(obtainStyledAttributes, index));
                        } else if (index == R.styleable.GenericDraweeHierarchy_placeholderImage) {
                            genericDraweeHierarchyBuilder.setPlaceholderImage(getDrawable(context2, obtainStyledAttributes, index));
                        } else if (index == R.styleable.GenericDraweeHierarchy_pressedStateOverlayImage) {
                            genericDraweeHierarchyBuilder.setPressedStateOverlay(getDrawable(context2, obtainStyledAttributes, index));
                        } else if (index == R.styleable.GenericDraweeHierarchy_progressBarImage) {
                            genericDraweeHierarchyBuilder.setProgressBarImage(getDrawable(context2, obtainStyledAttributes, index));
                        } else if (index == R.styleable.GenericDraweeHierarchy_fadeDuration) {
                            genericDraweeHierarchyBuilder.setFadeDuration(obtainStyledAttributes.getInt(index, 0));
                        } else if (index == R.styleable.GenericDraweeHierarchy_viewAspectRatio) {
                            genericDraweeHierarchyBuilder.setDesiredAspectRatio(obtainStyledAttributes.getFloat(index, 0.0f));
                        } else if (index == R.styleable.GenericDraweeHierarchy_placeholderImageScaleType) {
                            genericDraweeHierarchyBuilder.setPlaceholderImageScaleType(getScaleTypeFromXml(obtainStyledAttributes, index));
                        } else if (index == R.styleable.GenericDraweeHierarchy_retryImage) {
                            genericDraweeHierarchyBuilder.setRetryImage(getDrawable(context2, obtainStyledAttributes, index));
                        } else if (index == R.styleable.GenericDraweeHierarchy_retryImageScaleType) {
                            genericDraweeHierarchyBuilder.setRetryImageScaleType(getScaleTypeFromXml(obtainStyledAttributes, index));
                        } else if (index == R.styleable.GenericDraweeHierarchy_failureImage) {
                            genericDraweeHierarchyBuilder.setFailureImage(getDrawable(context2, obtainStyledAttributes, index));
                        } else if (index == R.styleable.GenericDraweeHierarchy_failureImageScaleType) {
                            genericDraweeHierarchyBuilder.setFailureImageScaleType(getScaleTypeFromXml(obtainStyledAttributes, index));
                        } else if (index == R.styleable.GenericDraweeHierarchy_progressBarImageScaleType) {
                            genericDraweeHierarchyBuilder.setProgressBarImageScaleType(getScaleTypeFromXml(obtainStyledAttributes, index));
                        } else {
                            if (index == R.styleable.GenericDraweeHierarchy_progressBarAutoRotateInterval) {
                                i2 = obtainStyledAttributes.getInteger(index, i2);
                            } else if (index == R.styleable.GenericDraweeHierarchy_backgroundImage) {
                                genericDraweeHierarchyBuilder.setBackground(getDrawable(context2, obtainStyledAttributes, index));
                            } else if (index == R.styleable.GenericDraweeHierarchy_overlayImage) {
                                genericDraweeHierarchyBuilder.setOverlay(getDrawable(context2, obtainStyledAttributes, index));
                            } else if (index == R.styleable.GenericDraweeHierarchy_roundAsCircle) {
                                getRoundingParams(genericDraweeHierarchyBuilder).setRoundAsCircle(obtainStyledAttributes.getBoolean(index, false));
                            } else if (index == R.styleable.GenericDraweeHierarchy_roundedCornerRadius) {
                                i5 = obtainStyledAttributes.getDimensionPixelSize(index, i5);
                            } else {
                                int i6 = i5;
                                if (index == R.styleable.GenericDraweeHierarchy_roundTopLeft) {
                                    z6 = obtainStyledAttributes.getBoolean(index, z6);
                                } else if (index == R.styleable.GenericDraweeHierarchy_roundTopRight) {
                                    z9 = obtainStyledAttributes.getBoolean(index, z9);
                                } else if (index == R.styleable.GenericDraweeHierarchy_roundBottomLeft) {
                                    z5 = obtainStyledAttributes.getBoolean(index, z5);
                                } else if (index == R.styleable.GenericDraweeHierarchy_roundBottomRight) {
                                    z10 = obtainStyledAttributes.getBoolean(index, z10);
                                } else if (index == R.styleable.GenericDraweeHierarchy_roundTopStart) {
                                    z7 = obtainStyledAttributes.getBoolean(index, z7);
                                } else if (index == R.styleable.GenericDraweeHierarchy_roundTopEnd) {
                                    z8 = obtainStyledAttributes.getBoolean(index, z8);
                                } else if (index == R.styleable.GenericDraweeHierarchy_roundBottomStart) {
                                    z12 = obtainStyledAttributes.getBoolean(index, z12);
                                } else if (index == R.styleable.GenericDraweeHierarchy_roundBottomEnd) {
                                    z11 = obtainStyledAttributes.getBoolean(index, z11);
                                } else {
                                    if (index == R.styleable.GenericDraweeHierarchy_roundWithOverlayColor) {
                                        i3 = i6;
                                        getRoundingParams(genericDraweeHierarchyBuilder).setOverlayColor(obtainStyledAttributes.getColor(index, 0));
                                    } else {
                                        i3 = i6;
                                        if (index == R.styleable.GenericDraweeHierarchy_roundingBorderWidth) {
                                            getRoundingParams(genericDraweeHierarchyBuilder).setBorderWidth(obtainStyledAttributes.getDimensionPixelSize(index, 0));
                                        } else if (index == R.styleable.GenericDraweeHierarchy_roundingBorderColor) {
                                            getRoundingParams(genericDraweeHierarchyBuilder).setBorderColor(obtainStyledAttributes.getColor(index, 0));
                                        } else if (index == R.styleable.GenericDraweeHierarchy_roundingBorderPadding) {
                                            getRoundingParams(genericDraweeHierarchyBuilder).setPadding(obtainStyledAttributes.getDimensionPixelSize(index, 0));
                                            i5 = i3;
                                            i4++;
                                            context2 = context;
                                        }
                                    }
                                    i5 = i3;
                                    i4++;
                                    context2 = context;
                                }
                                i5 = i6;
                            }
                            i4++;
                            context2 = context;
                        }
                        i3 = i5;
                        i5 = i3;
                        i4++;
                        context2 = context;
                    } catch (Throwable th) {
                        th = th;
                        obtainStyledAttributes.recycle();
                        if (Build.VERSION.SDK_INT >= 17) {
                            context.getResources().getConfiguration().getLayoutDirection();
                        }
                        throw th;
                    }
                }
                int i7 = i5;
                obtainStyledAttributes.recycle();
                if (Build.VERSION.SDK_INT < 17 || context.getResources().getConfiguration().getLayoutDirection() != 1) {
                    z2 = z6 && z7;
                    z = z9 && z8;
                    z3 = z10 && z11;
                    if (z5) {
                    }
                    z4 = false;
                } else {
                    z2 = z6 && z8;
                    z = z9 && z7;
                    z3 = z10 && z12;
                    if (z5) {
                    }
                    z4 = false;
                }
                i = i7;
            } catch (Throwable th2) {
                th = th2;
            }
        } else {
            z = true;
            i = 0;
            z2 = true;
            z3 = true;
            z4 = true;
            i2 = 0;
        }
        if (genericDraweeHierarchyBuilder.getProgressBarImage() != null && i2 > 0) {
            genericDraweeHierarchyBuilder.setProgressBarImage(new AutoRotateDrawable(genericDraweeHierarchyBuilder.getProgressBarImage(), i2));
        }
        if (i > 0) {
            getRoundingParams(genericDraweeHierarchyBuilder).setCornersRadii(z2 ? i : 0.0f, z ? i : 0.0f, z3 ? i : 0.0f, z4 ? i : 0.0f);
        }
        return genericDraweeHierarchyBuilder;
    }

    @ReturnsOwnership
    private static RoundingParams getRoundingParams(GenericDraweeHierarchyBuilder genericDraweeHierarchyBuilder) {
        if (genericDraweeHierarchyBuilder.getRoundingParams() == null) {
            genericDraweeHierarchyBuilder.setRoundingParams(new RoundingParams());
        }
        return genericDraweeHierarchyBuilder.getRoundingParams();
    }

    @Nullable
    private static Drawable getDrawable(Context context, TypedArray typedArray, int i) {
        int resourceId = typedArray.getResourceId(i, 0);
        if (resourceId == 0) {
            return null;
        }
        return context.getResources().getDrawable(resourceId);
    }

    @Nullable
    private static ScalingUtils.ScaleType getScaleTypeFromXml(TypedArray typedArray, int i) {
        switch (typedArray.getInt(i, -2)) {
            case -1:
                return null;
            case 0:
                return ScalingUtils.ScaleType.FIT_XY;
            case 1:
                return ScalingUtils.ScaleType.FIT_START;
            case 2:
                return ScalingUtils.ScaleType.FIT_CENTER;
            case 3:
                return ScalingUtils.ScaleType.FIT_END;
            case 4:
                return ScalingUtils.ScaleType.CENTER;
            case 5:
                return ScalingUtils.ScaleType.CENTER_INSIDE;
            case 6:
                return ScalingUtils.ScaleType.CENTER_CROP;
            case 7:
                return ScalingUtils.ScaleType.FOCUS_CROP;
            case 8:
                return ScalingUtils.ScaleType.FIT_BOTTOM_START;
            default:
                throw new RuntimeException("XML attribute not specified!");
        }
    }
}
