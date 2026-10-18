package android.graphics.drawable;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.PathParser;
import com.android.internal.R;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: /home/user/work/dex/classes.dex */
public class AdaptiveIconDrawable extends Drawable implements Drawable.Callback {
    private static final int BACKGROUND_ID = 0;
    private static final float DEFAULT_VIEW_PORT_SCALE = 0.6666667f;
    private static final float EXTRA_INSET_PERCENTAGE = 0.25f;
    private static final int FOREGROUND_ID = 1;
    public static final float MASK_SIZE = 100.0f;
    private static final float SAFEZONE_SCALE = 0.9166667f;
    private static Path sMask;
    private final Canvas mCanvas;
    private boolean mChildRequestedInvalidation;
    private Rect mHotspotBounds;
    LayerState mLayerState;
    private Bitmap mLayersBitmap;
    private Shader mLayersShader;
    private final Path mMask;
    private Bitmap mMaskBitmap;
    private final Matrix mMaskMatrix;
    private boolean mMutated;
    private Paint mPaint;
    private boolean mSuspendChildInvalidation;
    private final Rect mTmpOutRect;
    private final Region mTransparentRegion;

    public static float getExtraInsetFraction() {
        return 0.25f;
    }

    public static float getExtraInsetPercentage() {
        return 0.25f;
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return -3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AdaptiveIconDrawable() {
        this((LayerState) null, (Resources) null);
    }

    AdaptiveIconDrawable(LayerState layerState, Resources resources) {
        this.mTmpOutRect = new Rect();
        this.mPaint = new Paint(7);
        this.mLayerState = createConstantState(layerState, resources);
        if (sMask == null) {
            sMask = PathParser.createPathFromPathData(Resources.getSystem().getString(17039688));
        }
        this.mMask = PathParser.createPathFromPathData(Resources.getSystem().getString(17039688));
        this.mMaskMatrix = new Matrix();
        this.mCanvas = new Canvas();
        this.mTransparentRegion = new Region();
    }

    private ChildDrawable createChildDrawable(Drawable drawable) {
        ChildDrawable childDrawable = new ChildDrawable(this.mLayerState.mDensity);
        childDrawable.mDrawable = drawable;
        childDrawable.mDrawable.setCallback(this);
        this.mLayerState.mChildrenChangingConfigurations |= childDrawable.mDrawable.getChangingConfigurations();
        return childDrawable;
    }

    LayerState createConstantState(LayerState layerState, Resources resources) {
        return new LayerState(layerState, this, resources);
    }

    public AdaptiveIconDrawable(Drawable drawable, Drawable drawable2) {
        this((LayerState) null, (Resources) null);
        if (drawable != null) {
            addLayer(0, createChildDrawable(drawable));
        }
        if (drawable2 != null) {
            addLayer(1, createChildDrawable(drawable2));
        }
    }

    private void addLayer(int i, ChildDrawable childDrawable) {
        this.mLayerState.mChildren[i] = childDrawable;
        this.mLayerState.invalidateCache();
    }

    @Override // android.graphics.drawable.Drawable
    public void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        super.inflate(resources, xmlPullParser, attributeSet, theme);
        LayerState layerState = this.mLayerState;
        if (layerState == null) {
            return;
        }
        int resolveDensity = Drawable.resolveDensity(resources, 0);
        layerState.setDensity(resolveDensity);
        layerState.mSrcDensityOverride = this.mSrcDensityOverride;
        ChildDrawable[] childDrawableArr = layerState.mChildren;
        for (int i = 0; i < layerState.mChildren.length; i++) {
            childDrawableArr[i].setDensity(resolveDensity);
        }
        inflateLayers(resources, xmlPullParser, attributeSet, theme);
    }

    public Path getIconMask() {
        return this.mMask;
    }

    public Drawable getForeground() {
        return this.mLayerState.mChildren[1].mDrawable;
    }

    public Drawable getBackground() {
        return this.mLayerState.mChildren[0].mDrawable;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        if (rect.isEmpty()) {
            return;
        }
        updateLayerBounds(rect);
    }

    private void updateLayerBounds(Rect rect) {
        if (rect.isEmpty()) {
            return;
        }
        try {
            suspendChildInvalidation();
            updateLayerBoundsInternal(rect);
            updateMaskBoundsInternal(rect);
        } finally {
            resumeChildInvalidation();
        }
    }

    private void updateLayerBoundsInternal(Rect rect) {
        Drawable drawable;
        int width = rect.width() / 2;
        int height = rect.height() / 2;
        LayerState layerState = this.mLayerState;
        for (int i = 0; i < 2; i++) {
            ChildDrawable childDrawable = this.mLayerState.mChildren[i];
            if (childDrawable != null && (drawable = childDrawable.mDrawable) != null) {
                int width2 = (int) (rect.width() / 1.3333334f);
                int height2 = (int) (rect.height() / 1.3333334f);
                Rect rect2 = this.mTmpOutRect;
                rect2.set(width - width2, height - height2, width2 + width, height2 + height);
                drawable.setBounds(rect2);
            }
        }
    }

    private void updateMaskBoundsInternal(Rect rect) {
        this.mMaskMatrix.setScale(rect.width() / 100.0f, rect.height() / 100.0f);
        sMask.transform(this.mMaskMatrix, this.mMask);
        if (this.mMaskBitmap == null || this.mMaskBitmap.getWidth() != rect.width() || this.mMaskBitmap.getHeight() != rect.height()) {
            this.mMaskBitmap = Bitmap.createBitmap(rect.width(), rect.height(), Bitmap.Config.ALPHA_8);
            this.mLayersBitmap = Bitmap.createBitmap(rect.width(), rect.height(), Bitmap.Config.ARGB_8888);
        }
        this.mCanvas.setBitmap(this.mMaskBitmap);
        this.mPaint.setShader(null);
        this.mCanvas.drawPath(this.mMask, this.mPaint);
        this.mMaskMatrix.postTranslate(rect.left, rect.top);
        this.mMask.reset();
        sMask.transform(this.mMaskMatrix, this.mMask);
        this.mTransparentRegion.setEmpty();
        this.mLayersShader = null;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Drawable drawable;
        if (this.mLayersBitmap == null) {
            return;
        }
        if (this.mLayersShader == null) {
            this.mCanvas.setBitmap(this.mLayersBitmap);
            this.mCanvas.drawColor(-16777216);
            int i = 0;
            while (true) {
                LayerState layerState = this.mLayerState;
                if (i >= 2) {
                    break;
                }
                if (this.mLayerState.mChildren[i] != null && (drawable = this.mLayerState.mChildren[i].mDrawable) != null) {
                    drawable.draw(this.mCanvas);
                }
                i++;
            }
            this.mLayersShader = new BitmapShader(this.mLayersBitmap, Shader.TileMode.CLAMP, Shader.TileMode.CLAMP);
            this.mPaint.setShader(this.mLayersShader);
        }
        if (this.mMaskBitmap != null) {
            Rect bounds = getBounds();
            canvas.drawBitmap(this.mMaskBitmap, bounds.left, bounds.top, this.mPaint);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void invalidateSelf() {
        this.mLayersShader = null;
        super.invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void getOutline(Outline outline) {
        outline.setConvexPath(this.mMask);
    }

    public Region getSafeZone() {
        this.mMaskMatrix.reset();
        this.mMaskMatrix.setScale(SAFEZONE_SCALE, SAFEZONE_SCALE, getBounds().centerX(), getBounds().centerY());
        Path path = new Path();
        this.mMask.transform(this.mMaskMatrix, path);
        Region region = new Region(getBounds());
        region.setPath(path, region);
        return region;
    }

    @Override // android.graphics.drawable.Drawable
    public Region getTransparentRegion() {
        if (this.mTransparentRegion.isEmpty()) {
            this.mMask.toggleInverseFillType();
            this.mTransparentRegion.set(getBounds());
            this.mTransparentRegion.setPath(this.mMask, this.mTransparentRegion);
            this.mMask.toggleInverseFillType();
        }
        return this.mTransparentRegion;
    }

    @Override // android.graphics.drawable.Drawable
    public void applyTheme(Resources.Theme theme) {
        super.applyTheme(theme);
        LayerState layerState = this.mLayerState;
        if (layerState == null) {
            return;
        }
        int resolveDensity = Drawable.resolveDensity(theme.getResources(), 0);
        layerState.setDensity(resolveDensity);
        ChildDrawable[] childDrawableArr = layerState.mChildren;
        for (int i = 0; i < 2; i++) {
            ChildDrawable childDrawable = childDrawableArr[i];
            childDrawable.setDensity(resolveDensity);
            if (childDrawable.mThemeAttrs != null) {
                TypedArray resolveAttributes = theme.resolveAttributes(childDrawable.mThemeAttrs, R.styleable.AdaptiveIconDrawableLayer);
                updateLayerFromTypedArray(childDrawable, resolveAttributes);
                resolveAttributes.recycle();
            }
            Drawable drawable = childDrawable.mDrawable;
            if (drawable != null && drawable.canApplyTheme()) {
                drawable.applyTheme(theme);
                layerState.mChildrenChangingConfigurations = drawable.getChangingConfigurations() | layerState.mChildrenChangingConfigurations;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x004e, code lost:
    
        if (r4.mThemeAttrs == null) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0050, code lost:
    
        r6 = r10.next();
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0055, code lost:
    
        if (r6 != 4) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0058, code lost:
    
        if (r6 != 2) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x005a, code lost:
    
        r4.mDrawable = android.graphics.drawable.Drawable.createFromXmlInnerForDensity(r9, r10, r11, r8.mLayerState.mSrcDensityOverride, r12);
        r4.mDrawable.setCallback(r8);
        r0.mChildrenChangingConfigurations |= r4.mDrawable.getChangingConfigurations();
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x008f, code lost:
    
        throw new org.xmlpull.v1.XmlPullParserException(r10.getPositionDescription() + ": <foreground> or <background> tag requires a 'drawable'attribute or child tag defining a drawable");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void inflateLayers(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        int i;
        LayerState layerState = this.mLayerState;
        int depth = xmlPullParser.getDepth() + 1;
        while (true) {
            int next = xmlPullParser.next();
            if (next == 1) {
                return;
            }
            int depth2 = xmlPullParser.getDepth();
            if (depth2 < depth && next == 3) {
                return;
            }
            if (next == 2 && depth2 <= depth) {
                String name = xmlPullParser.getName();
                if (name.equals("background")) {
                    i = 0;
                } else if (name.equals("foreground")) {
                    i = 1;
                } else {
                    continue;
                }
                ChildDrawable childDrawable = new ChildDrawable(layerState.mDensity);
                TypedArray obtainAttributes = obtainAttributes(resources, theme, attributeSet, R.styleable.AdaptiveIconDrawableLayer);
                updateLayerFromTypedArray(childDrawable, obtainAttributes);
                obtainAttributes.recycle();
                if (childDrawable.mDrawable == null) {
                }
                addLayer(i, childDrawable);
            }
        }
    }

    private void updateLayerFromTypedArray(ChildDrawable childDrawable, TypedArray typedArray) {
        LayerState layerState = this.mLayerState;
        layerState.mChildrenChangingConfigurations |= typedArray.getChangingConfigurations();
        childDrawable.mThemeAttrs = typedArray.extractThemeAttrs();
        Drawable drawableForDensity = typedArray.getDrawableForDensity(0, layerState.mSrcDensityOverride);
        if (drawableForDensity != null) {
            if (childDrawable.mDrawable != null) {
                childDrawable.mDrawable.setCallback(null);
            }
            childDrawable.mDrawable = drawableForDensity;
            childDrawable.mDrawable.setCallback(this);
            layerState.mChildrenChangingConfigurations |= childDrawable.mDrawable.getChangingConfigurations();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean canApplyTheme() {
        return (this.mLayerState != null && this.mLayerState.canApplyTheme()) || super.canApplyTheme();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isProjected() {
        if (super.isProjected()) {
            return true;
        }
        ChildDrawable[] childDrawableArr = this.mLayerState.mChildren;
        int i = 0;
        while (true) {
            LayerState layerState = this.mLayerState;
            if (i >= 2) {
                return false;
            }
            if (childDrawableArr[i].mDrawable.isProjected()) {
                return true;
            }
            i++;
        }
    }

    private void suspendChildInvalidation() {
        this.mSuspendChildInvalidation = true;
    }

    private void resumeChildInvalidation() {
        this.mSuspendChildInvalidation = false;
        if (this.mChildRequestedInvalidation) {
            this.mChildRequestedInvalidation = false;
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(Drawable drawable) {
        if (this.mSuspendChildInvalidation) {
            this.mChildRequestedInvalidation = true;
        } else {
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
        scheduleSelf(runnable, j);
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        unscheduleSelf(runnable);
    }

    @Override // android.graphics.drawable.Drawable
    public int getChangingConfigurations() {
        return this.mLayerState.getChangingConfigurations() | super.getChangingConfigurations();
    }

    @Override // android.graphics.drawable.Drawable
    public void setHotspot(float f, float f2) {
        ChildDrawable[] childDrawableArr = this.mLayerState.mChildren;
        int i = 0;
        while (true) {
            LayerState layerState = this.mLayerState;
            if (i >= 2) {
                return;
            }
            Drawable drawable = childDrawableArr[i].mDrawable;
            if (drawable != null) {
                drawable.setHotspot(f, f2);
            }
            i++;
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setHotspotBounds(int i, int i2, int i3, int i4) {
        ChildDrawable[] childDrawableArr = this.mLayerState.mChildren;
        int i5 = 0;
        while (true) {
            LayerState layerState = this.mLayerState;
            if (i5 >= 2) {
                break;
            }
            Drawable drawable = childDrawableArr[i5].mDrawable;
            if (drawable != null) {
                drawable.setHotspotBounds(i, i2, i3, i4);
            }
            i5++;
        }
        if (this.mHotspotBounds == null) {
            this.mHotspotBounds = new Rect(i, i2, i3, i4);
        } else {
            this.mHotspotBounds.set(i, i2, i3, i4);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void getHotspotBounds(Rect rect) {
        if (this.mHotspotBounds != null) {
            rect.set(this.mHotspotBounds);
        } else {
            super.getHotspotBounds(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        boolean visible = super.setVisible(z, z2);
        ChildDrawable[] childDrawableArr = this.mLayerState.mChildren;
        int i = 0;
        while (true) {
            LayerState layerState = this.mLayerState;
            if (i >= 2) {
                return visible;
            }
            Drawable drawable = childDrawableArr[i].mDrawable;
            if (drawable != null) {
                drawable.setVisible(z, z2);
            }
            i++;
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setDither(boolean z) {
        ChildDrawable[] childDrawableArr = this.mLayerState.mChildren;
        int i = 0;
        while (true) {
            LayerState layerState = this.mLayerState;
            if (i >= 2) {
                return;
            }
            Drawable drawable = childDrawableArr[i].mDrawable;
            if (drawable != null) {
                drawable.setDither(z);
            }
            i++;
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.mPaint.setAlpha(i);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        ChildDrawable[] childDrawableArr = this.mLayerState.mChildren;
        int i = 0;
        while (true) {
            LayerState layerState = this.mLayerState;
            if (i >= 2) {
                return;
            }
            Drawable drawable = childDrawableArr[i].mDrawable;
            if (drawable != null) {
                drawable.setColorFilter(colorFilter);
            }
            i++;
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintList(ColorStateList colorStateList) {
        ChildDrawable[] childDrawableArr = this.mLayerState.mChildren;
        LayerState layerState = this.mLayerState;
        for (int i = 0; i < 2; i++) {
            Drawable drawable = childDrawableArr[i].mDrawable;
            if (drawable != null) {
                drawable.setTintList(colorStateList);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintMode(PorterDuff.Mode mode) {
        ChildDrawable[] childDrawableArr = this.mLayerState.mChildren;
        LayerState layerState = this.mLayerState;
        for (int i = 0; i < 2; i++) {
            Drawable drawable = childDrawableArr[i].mDrawable;
            if (drawable != null) {
                drawable.setTintMode(mode);
            }
        }
    }

    public void setOpacity(int i) {
        this.mLayerState.mOpacityOverride = i;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        if (this.mLayerState.mOpacityOverride != 0) {
            return this.mLayerState.mOpacityOverride;
        }
        return this.mLayerState.getOpacity();
    }

    @Override // android.graphics.drawable.Drawable
    public void setAutoMirrored(boolean z) {
        this.mLayerState.mAutoMirrored = z;
        ChildDrawable[] childDrawableArr = this.mLayerState.mChildren;
        int i = 0;
        while (true) {
            LayerState layerState = this.mLayerState;
            if (i >= 2) {
                return;
            }
            Drawable drawable = childDrawableArr[i].mDrawable;
            if (drawable != null) {
                drawable.setAutoMirrored(z);
            }
            i++;
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isAutoMirrored() {
        return this.mLayerState.mAutoMirrored;
    }

    @Override // android.graphics.drawable.Drawable
    public void jumpToCurrentState() {
        ChildDrawable[] childDrawableArr = this.mLayerState.mChildren;
        int i = 0;
        while (true) {
            LayerState layerState = this.mLayerState;
            if (i >= 2) {
                return;
            }
            Drawable drawable = childDrawableArr[i].mDrawable;
            if (drawable != null) {
                drawable.jumpToCurrentState();
            }
            i++;
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        return this.mLayerState.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean hasFocusStateSpecified() {
        return this.mLayerState.hasFocusStateSpecified();
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onStateChange(int[] iArr) {
        ChildDrawable[] childDrawableArr = this.mLayerState.mChildren;
        int i = 0;
        boolean z = false;
        while (true) {
            LayerState layerState = this.mLayerState;
            if (i >= 2) {
                break;
            }
            Drawable drawable = childDrawableArr[i].mDrawable;
            if (drawable != null && drawable.isStateful() && drawable.setState(iArr)) {
                z = true;
            }
            i++;
        }
        if (z) {
            updateLayerBounds(getBounds());
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.graphics.drawable.Drawable
    public boolean onLevelChange(int i) {
        ChildDrawable[] childDrawableArr = this.mLayerState.mChildren;
        int i2 = 0;
        boolean z = false;
        while (true) {
            LayerState layerState = this.mLayerState;
            if (i2 >= 2) {
                break;
            }
            Drawable drawable = childDrawableArr[i2].mDrawable;
            if (drawable != null && drawable.setLevel(i)) {
                z = true;
            }
            i2++;
        }
        if (z) {
            updateLayerBounds(getBounds());
        }
        return z;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return (int) (getMaxIntrinsicWidth() * DEFAULT_VIEW_PORT_SCALE);
    }

    private int getMaxIntrinsicWidth() {
        int intrinsicWidth;
        int i = -1;
        int i2 = 0;
        while (true) {
            LayerState layerState = this.mLayerState;
            if (i2 >= 2) {
                return i;
            }
            ChildDrawable childDrawable = this.mLayerState.mChildren[i2];
            if (childDrawable.mDrawable != null && (intrinsicWidth = childDrawable.mDrawable.getIntrinsicWidth()) > i) {
                i = intrinsicWidth;
            }
            i2++;
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return (int) (getMaxIntrinsicHeight() * DEFAULT_VIEW_PORT_SCALE);
    }

    private int getMaxIntrinsicHeight() {
        int intrinsicHeight;
        int i = -1;
        int i2 = 0;
        while (true) {
            LayerState layerState = this.mLayerState;
            if (i2 >= 2) {
                return i;
            }
            ChildDrawable childDrawable = this.mLayerState.mChildren[i2];
            if (childDrawable.mDrawable != null && (intrinsicHeight = childDrawable.mDrawable.getIntrinsicHeight()) > i) {
                i = intrinsicHeight;
            }
            i2++;
        }
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable.ConstantState getConstantState() {
        if (!this.mLayerState.canConstantState()) {
            return null;
        }
        this.mLayerState.mChangingConfigurations = getChangingConfigurations();
        return this.mLayerState;
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable mutate() {
        if (!this.mMutated && super.mutate() == this) {
            this.mLayerState = createConstantState(this.mLayerState, null);
            int i = 0;
            while (true) {
                LayerState layerState = this.mLayerState;
                if (i >= 2) {
                    break;
                }
                Drawable drawable = this.mLayerState.mChildren[i].mDrawable;
                if (drawable != null) {
                    drawable.mutate();
                }
                i++;
            }
            this.mMutated = true;
        }
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    public void clearMutated() {
        super.clearMutated();
        ChildDrawable[] childDrawableArr = this.mLayerState.mChildren;
        int i = 0;
        while (true) {
            LayerState layerState = this.mLayerState;
            if (i < 2) {
                Drawable drawable = childDrawableArr[i].mDrawable;
                if (drawable != null) {
                    drawable.clearMutated();
                }
                i++;
            } else {
                this.mMutated = false;
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class ChildDrawable {
        public int mDensity;
        public Drawable mDrawable;
        public int[] mThemeAttrs;

        ChildDrawable(int i) {
            this.mDensity = 160;
            this.mDensity = i;
        }

        ChildDrawable(ChildDrawable childDrawable, AdaptiveIconDrawable adaptiveIconDrawable, Resources resources) {
            Drawable drawable;
            this.mDensity = 160;
            Drawable drawable2 = childDrawable.mDrawable;
            if (drawable2 != null) {
                Drawable.ConstantState constantState = drawable2.getConstantState();
                if (constantState == null) {
                    drawable = drawable2;
                } else if (resources != null) {
                    drawable = constantState.newDrawable(resources);
                } else {
                    drawable = constantState.newDrawable();
                }
                drawable.setCallback(adaptiveIconDrawable);
                drawable.setBounds(drawable2.getBounds());
                drawable.setLevel(drawable2.getLevel());
            } else {
                drawable = null;
            }
            this.mDrawable = drawable;
            this.mThemeAttrs = childDrawable.mThemeAttrs;
            this.mDensity = Drawable.resolveDensity(resources, childDrawable.mDensity);
        }

        public boolean canApplyTheme() {
            return this.mThemeAttrs != null || (this.mDrawable != null && this.mDrawable.canApplyTheme());
        }

        public final void setDensity(int i) {
            if (this.mDensity != i) {
                this.mDensity = i;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class LayerState extends Drawable.ConstantState {
        static final int N_CHILDREN = 2;
        private boolean mAutoMirrored;
        int mChangingConfigurations;
        private boolean mCheckedOpacity;
        private boolean mCheckedStateful;
        ChildDrawable[] mChildren;
        int mChildrenChangingConfigurations;
        int mDensity;
        private boolean mIsStateful;
        private int mOpacity;
        int mOpacityOverride;
        int mSrcDensityOverride;
        private int[] mThemeAttrs;

        LayerState(LayerState layerState, AdaptiveIconDrawable adaptiveIconDrawable, Resources resources) {
            int i = 0;
            this.mSrcDensityOverride = 0;
            this.mOpacityOverride = 0;
            this.mAutoMirrored = false;
            this.mDensity = Drawable.resolveDensity(resources, layerState != null ? layerState.mDensity : 0);
            this.mChildren = new ChildDrawable[2];
            if (layerState == null) {
                while (i < 2) {
                    this.mChildren[i] = new ChildDrawable(this.mDensity);
                    i++;
                }
                return;
            }
            ChildDrawable[] childDrawableArr = layerState.mChildren;
            this.mChangingConfigurations = layerState.mChangingConfigurations;
            this.mChildrenChangingConfigurations = layerState.mChildrenChangingConfigurations;
            while (i < 2) {
                this.mChildren[i] = new ChildDrawable(childDrawableArr[i], adaptiveIconDrawable, resources);
                i++;
            }
            this.mCheckedOpacity = layerState.mCheckedOpacity;
            this.mOpacity = layerState.mOpacity;
            this.mCheckedStateful = layerState.mCheckedStateful;
            this.mIsStateful = layerState.mIsStateful;
            this.mAutoMirrored = layerState.mAutoMirrored;
            this.mThemeAttrs = layerState.mThemeAttrs;
            this.mOpacityOverride = layerState.mOpacityOverride;
            this.mSrcDensityOverride = layerState.mSrcDensityOverride;
        }

        public final void setDensity(int i) {
            if (this.mDensity != i) {
                this.mDensity = i;
            }
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public boolean canApplyTheme() {
            if (this.mThemeAttrs != null || super.canApplyTheme()) {
                return true;
            }
            ChildDrawable[] childDrawableArr = this.mChildren;
            for (int i = 0; i < 2; i++) {
                if (childDrawableArr[i].canApplyTheme()) {
                    return true;
                }
            }
            return false;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            return new AdaptiveIconDrawable(this, (Resources) null);
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources) {
            return new AdaptiveIconDrawable(this, resources);
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return this.mChildrenChangingConfigurations | this.mChangingConfigurations;
        }

        public final int getOpacity() {
            if (this.mCheckedOpacity) {
                return this.mOpacity;
            }
            ChildDrawable[] childDrawableArr = this.mChildren;
            int i = -1;
            int i2 = 0;
            while (true) {
                if (i2 >= 2) {
                    break;
                }
                if (childDrawableArr[i2].mDrawable != null) {
                    i = i2;
                    break;
                }
                i2++;
            }
            int opacity = i >= 0 ? childDrawableArr[i].mDrawable.getOpacity() : -2;
            for (int i3 = i + 1; i3 < 2; i3++) {
                Drawable drawable = childDrawableArr[i3].mDrawable;
                if (drawable != null) {
                    opacity = Drawable.resolveOpacity(opacity, drawable.getOpacity());
                }
            }
            this.mOpacity = opacity;
            this.mCheckedOpacity = true;
            return opacity;
        }

        public final boolean isStateful() {
            if (this.mCheckedStateful) {
                return this.mIsStateful;
            }
            ChildDrawable[] childDrawableArr = this.mChildren;
            boolean z = false;
            int i = 0;
            while (true) {
                if (i < 2) {
                    Drawable drawable = childDrawableArr[i].mDrawable;
                    if (drawable != null && drawable.isStateful()) {
                        z = true;
                        break;
                    }
                    i++;
                } else {
                    break;
                }
            }
            this.mIsStateful = z;
            this.mCheckedStateful = true;
            return z;
        }

        public final boolean hasFocusStateSpecified() {
            ChildDrawable[] childDrawableArr = this.mChildren;
            for (int i = 0; i < 2; i++) {
                Drawable drawable = childDrawableArr[i].mDrawable;
                if (drawable != null && drawable.hasFocusStateSpecified()) {
                    return true;
                }
            }
            return false;
        }

        public final boolean canConstantState() {
            ChildDrawable[] childDrawableArr = this.mChildren;
            for (int i = 0; i < 2; i++) {
                Drawable drawable = childDrawableArr[i].mDrawable;
                if (drawable != null && drawable.getConstantState() == null) {
                    return false;
                }
            }
            return true;
        }

        public void invalidateCache() {
            this.mCheckedOpacity = false;
            this.mCheckedStateful = false;
        }
    }
}
