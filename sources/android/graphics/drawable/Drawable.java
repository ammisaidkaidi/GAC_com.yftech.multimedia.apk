package android.graphics.drawable;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.ImageDecoder;
import android.graphics.Insets;
import android.graphics.NinePatch;
import android.graphics.Outline;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.Xfermode;
import android.media.session.PlaybackState;
import android.os.Trace;
import android.util.AttributeSet;
import android.util.Log;
import android.util.StateSet;
import android.util.TypedValue;
import android.util.Xml;
import com.android.internal.R;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: /home/user/work/dex/classes.dex */
public abstract class Drawable {
    private int mLayoutDirection;
    private static final Rect ZERO_BOUNDS_RECT = new Rect();
    static final PorterDuff.Mode DEFAULT_TINT_MODE = PorterDuff.Mode.SRC_IN;
    private int[] mStateSet = StateSet.WILD_CARD;
    private int mLevel = 0;
    private int mChangingConfigurations = 0;
    private Rect mBounds = ZERO_BOUNDS_RECT;
    private WeakReference<Callback> mCallback = null;
    private boolean mVisible = true;
    protected int mSrcDensityOverride = 0;

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface Callback {
        void invalidateDrawable(Drawable drawable);

        void scheduleDrawable(Drawable drawable, Runnable runnable, long j);

        void unscheduleDrawable(Drawable drawable, Runnable runnable);
    }

    public static int resolveOpacity(int i, int i2) {
        if (i == i2) {
            return i;
        }
        if (i == 0 || i2 == 0) {
            return 0;
        }
        if (i == -3 || i2 == -3) {
            return -3;
        }
        return (i == -2 || i2 == -2) ? -2 : -1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static float scaleFromDensity(float f, int i, int i2) {
        return (f * i2) / i;
    }

    public void applyTheme(Resources.Theme theme) {
    }

    public boolean canApplyTheme() {
        return false;
    }

    public void clearMutated() {
    }

    public abstract void draw(Canvas canvas);

    public int getAlpha() {
        return 255;
    }

    public ColorFilter getColorFilter() {
        return null;
    }

    public ConstantState getConstantState() {
        return null;
    }

    public Drawable getCurrent() {
        return this;
    }

    public int getIntrinsicHeight() {
        return -1;
    }

    public int getIntrinsicWidth() {
        return -1;
    }

    public abstract int getOpacity();

    public Region getTransparentRegion() {
        return null;
    }

    public boolean hasFocusStateSpecified() {
        return false;
    }

    public boolean isAutoMirrored() {
        return false;
    }

    public boolean isFilterBitmap() {
        return false;
    }

    public boolean isProjected() {
        return false;
    }

    public boolean isStateful() {
        return false;
    }

    public void jumpToCurrentState() {
    }

    public Drawable mutate() {
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onBoundsChange(Rect rect) {
    }

    public boolean onLayoutDirectionChanged(int i) {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean onLevelChange(int i) {
        return false;
    }

    protected boolean onStateChange(int[] iArr) {
        return false;
    }

    public abstract void setAlpha(int i);

    public void setAutoMirrored(boolean z) {
    }

    public abstract void setColorFilter(ColorFilter colorFilter);

    @Deprecated
    public void setDither(boolean z) {
    }

    public void setFilterBitmap(boolean z) {
    }

    public void setHotspot(float f, float f2) {
    }

    public void setHotspotBounds(int i, int i2, int i3, int i4) {
    }

    public void setTintList(ColorStateList colorStateList) {
    }

    public void setTintMode(PorterDuff.Mode mode) {
    }

    public void setXfermode(Xfermode xfermode) {
    }

    public void setBounds(int i, int i2, int i3, int i4) {
        Rect rect = this.mBounds;
        if (rect == ZERO_BOUNDS_RECT) {
            rect = new Rect();
            this.mBounds = rect;
        }
        if (rect.left == i && rect.top == i2 && rect.right == i3 && rect.bottom == i4) {
            return;
        }
        if (!rect.isEmpty()) {
            invalidateSelf();
        }
        this.mBounds.set(i, i2, i3, i4);
        onBoundsChange(this.mBounds);
    }

    public void setBounds(Rect rect) {
        setBounds(rect.left, rect.top, rect.right, rect.bottom);
    }

    public final void copyBounds(Rect rect) {
        rect.set(this.mBounds);
    }

    public final Rect copyBounds() {
        return new Rect(this.mBounds);
    }

    public final Rect getBounds() {
        if (this.mBounds == ZERO_BOUNDS_RECT) {
            this.mBounds = new Rect();
        }
        return this.mBounds;
    }

    public Rect getDirtyBounds() {
        return getBounds();
    }

    public void setChangingConfigurations(int i) {
        this.mChangingConfigurations = i;
    }

    public int getChangingConfigurations() {
        return this.mChangingConfigurations;
    }

    public final void setCallback(Callback callback) {
        this.mCallback = callback != null ? new WeakReference<>(callback) : null;
    }

    public Callback getCallback() {
        if (this.mCallback != null) {
            return this.mCallback.get();
        }
        return null;
    }

    public void invalidateSelf() {
        Callback callback = getCallback();
        if (callback != null) {
            callback.invalidateDrawable(this);
        }
    }

    public void scheduleSelf(Runnable runnable, long j) {
        Callback callback = getCallback();
        if (callback != null) {
            callback.scheduleDrawable(this, runnable, j);
        }
    }

    public void unscheduleSelf(Runnable runnable) {
        Callback callback = getCallback();
        if (callback != null) {
            callback.unscheduleDrawable(this, runnable);
        }
    }

    public int getLayoutDirection() {
        return this.mLayoutDirection;
    }

    public final boolean setLayoutDirection(int i) {
        if (this.mLayoutDirection == i) {
            return false;
        }
        this.mLayoutDirection = i;
        return onLayoutDirectionChanged(i);
    }

    public void setColorFilter(int i, PorterDuff.Mode mode) {
        if (getColorFilter() instanceof PorterDuffColorFilter) {
            PorterDuffColorFilter porterDuffColorFilter = (PorterDuffColorFilter) getColorFilter();
            if (porterDuffColorFilter.getColor() == i && porterDuffColorFilter.getMode() == mode) {
                return;
            }
        }
        setColorFilter(new PorterDuffColorFilter(i, mode));
    }

    public void setTint(int i) {
        setTintList(ColorStateList.valueOf(i));
    }

    public void clearColorFilter() {
        setColorFilter(null);
    }

    public void getHotspotBounds(Rect rect) {
        rect.set(getBounds());
    }

    public boolean setState(int[] iArr) {
        if (Arrays.equals(this.mStateSet, iArr)) {
            return false;
        }
        this.mStateSet = iArr;
        return onStateChange(iArr);
    }

    public int[] getState() {
        return this.mStateSet;
    }

    public final boolean setLevel(int i) {
        if (this.mLevel == i) {
            return false;
        }
        this.mLevel = i;
        return onLevelChange(i);
    }

    public final int getLevel() {
        return this.mLevel;
    }

    public boolean setVisible(boolean z, boolean z2) {
        boolean z3 = this.mVisible != z;
        if (z3) {
            this.mVisible = z;
            invalidateSelf();
        }
        return z3;
    }

    public final boolean isVisible() {
        return this.mVisible;
    }

    public int getMinimumWidth() {
        int intrinsicWidth = getIntrinsicWidth();
        if (intrinsicWidth > 0) {
            return intrinsicWidth;
        }
        return 0;
    }

    public int getMinimumHeight() {
        int intrinsicHeight = getIntrinsicHeight();
        if (intrinsicHeight > 0) {
            return intrinsicHeight;
        }
        return 0;
    }

    public boolean getPadding(Rect rect) {
        rect.set(0, 0, 0, 0);
        return false;
    }

    public Insets getOpticalInsets() {
        return Insets.NONE;
    }

    public void getOutline(Outline outline) {
        outline.setRect(getBounds());
        outline.setAlpha(0.0f);
    }

    public static Drawable createFromStream(InputStream inputStream, String str) {
        Trace.traceBegin(PlaybackState.ACTION_PLAY_FROM_URI, str != null ? str : "Unknown drawable");
        try {
            return createFromResourceStream(null, null, inputStream, str);
        } finally {
            Trace.traceEnd(PlaybackState.ACTION_PLAY_FROM_URI);
        }
    }

    public static Drawable createFromResourceStream(Resources resources, TypedValue typedValue, InputStream inputStream, String str) {
        Trace.traceBegin(PlaybackState.ACTION_PLAY_FROM_URI, str != null ? str : "Unknown drawable");
        try {
            return createFromResourceStream(resources, typedValue, inputStream, str, null);
        } finally {
            Trace.traceEnd(PlaybackState.ACTION_PLAY_FROM_URI);
        }
    }

    public static Drawable createFromResourceStream(Resources resources, TypedValue typedValue, InputStream inputStream, String str, BitmapFactory.Options options) {
        byte[] bArr;
        Rect rect;
        if (inputStream == null) {
            return null;
        }
        if (options == null) {
            return getBitmapDrawable(resources, typedValue, inputStream);
        }
        Rect rect2 = new Rect();
        options.inScreenDensity = resolveDensity(resources, 0);
        Bitmap decodeResourceStream = BitmapFactory.decodeResourceStream(resources, typedValue, inputStream, rect2, options);
        if (decodeResourceStream == null) {
            return null;
        }
        byte[] ninePatchChunk = decodeResourceStream.getNinePatchChunk();
        if (ninePatchChunk == null || !NinePatch.isNinePatchChunk(ninePatchChunk)) {
            bArr = null;
            rect = null;
        } else {
            bArr = ninePatchChunk;
            rect = rect2;
        }
        Rect rect3 = new Rect();
        decodeResourceStream.getOpticalInsets(rect3);
        return drawableFromBitmap(resources, decodeResourceStream, bArr, rect, rect3, str);
    }

    private static Drawable getBitmapDrawable(Resources resources, TypedValue typedValue, InputStream inputStream) {
        ImageDecoder.Source createSource;
        try {
            if (typedValue != null) {
                int i = 0;
                if (typedValue.density == 0) {
                    i = 160;
                } else if (typedValue.density != 65535) {
                    i = typedValue.density;
                }
                createSource = ImageDecoder.createSource(resources, inputStream, i);
            } else {
                createSource = ImageDecoder.createSource(resources, inputStream);
            }
            return ImageDecoder.decodeDrawable(createSource, new ImageDecoder.OnHeaderDecodedListener() { // from class: android.graphics.drawable.-$$Lambda$Drawable$wmqxcnFJRLY7tFDmv2eEGR5vtvU
                @Override // android.graphics.ImageDecoder.OnHeaderDecodedListener
                public final void onHeaderDecoded(ImageDecoder imageDecoder, ImageDecoder.ImageInfo imageInfo, ImageDecoder.Source source) {
                    imageDecoder.setAllocator(1);
                }
            });
        } catch (IOException e) {
            Log.e("Drawable", "Unable to decode stream: " + e);
            return null;
        }
    }

    public static Drawable createFromXml(Resources resources, XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        return createFromXml(resources, xmlPullParser, null);
    }

    public static Drawable createFromXml(Resources resources, XmlPullParser xmlPullParser, Resources.Theme theme) throws XmlPullParserException, IOException {
        return createFromXmlForDensity(resources, xmlPullParser, 0, theme);
    }

    public static Drawable createFromXmlForDensity(Resources resources, XmlPullParser xmlPullParser, int i, Resources.Theme theme) throws XmlPullParserException, IOException {
        int next;
        AttributeSet asAttributeSet = Xml.asAttributeSet(xmlPullParser);
        do {
            next = xmlPullParser.next();
            if (next == 2) {
                break;
            }
        } while (next != 1);
        if (next != 2) {
            throw new XmlPullParserException("No start tag found");
        }
        Drawable createFromXmlInnerForDensity = createFromXmlInnerForDensity(resources, xmlPullParser, asAttributeSet, i, theme);
        if (createFromXmlInnerForDensity != null) {
            return createFromXmlInnerForDensity;
        }
        throw new RuntimeException("Unknown initial tag: " + xmlPullParser.getName());
    }

    public static Drawable createFromXmlInner(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet) throws XmlPullParserException, IOException {
        return createFromXmlInner(resources, xmlPullParser, attributeSet, null);
    }

    public static Drawable createFromXmlInner(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        return createFromXmlInnerForDensity(resources, xmlPullParser, attributeSet, 0, theme);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Drawable createFromXmlInnerForDensity(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, int i, Resources.Theme theme) throws XmlPullParserException, IOException {
        return resources.getDrawableInflater().inflateFromXmlForDensity(xmlPullParser.getName(), xmlPullParser, attributeSet, i, theme);
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x002d A[Catch: all -> 0x0031, IOException -> 0x0036, TryCatch #6 {IOException -> 0x0036, all -> 0x0031, blocks: (B:7:0x0009, B:10:0x0012, B:24:0x0024, B:22:0x0030, B:21:0x002d, B:28:0x0029), top: B:6:0x0009, inners: #5 }] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0024 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static Drawable createFromPath(String str) {
        Throwable th;
        if (str == null) {
            return null;
        }
        Trace.traceBegin(PlaybackState.ACTION_PLAY_FROM_URI, str);
        try {
            FileInputStream fileInputStream = new FileInputStream(str);
            try {
                Drawable bitmapDrawable = getBitmapDrawable(null, null, fileInputStream);
                fileInputStream.close();
                return bitmapDrawable;
            } catch (Throwable th2) {
                th = th2;
                th = null;
                if (th != null) {
                }
            }
        } catch (IOException unused) {
            return null;
        } finally {
            Trace.traceEnd(PlaybackState.ACTION_PLAY_FROM_URI);
        }
    }

    public void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet) throws XmlPullParserException, IOException {
        inflate(resources, xmlPullParser, attributeSet, null);
    }

    public void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        TypedArray obtainAttributes = obtainAttributes(resources, theme, attributeSet, R.styleable.Drawable);
        this.mVisible = obtainAttributes.getBoolean(0, this.mVisible);
        obtainAttributes.recycle();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void inflateWithAttributes(Resources resources, XmlPullParser xmlPullParser, TypedArray typedArray, int i) throws XmlPullParserException, IOException {
        this.mVisible = typedArray.getBoolean(i, this.mVisible);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void setSrcDensityOverride(int i) {
        this.mSrcDensityOverride = i;
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static abstract class ConstantState {
        public boolean canApplyTheme() {
            return false;
        }

        public abstract int getChangingConfigurations();

        public abstract Drawable newDrawable();

        public Drawable newDrawable(Resources resources) {
            return newDrawable();
        }

        public Drawable newDrawable(Resources resources, Resources.Theme theme) {
            return newDrawable(resources);
        }
    }

    private static Drawable drawableFromBitmap(Resources resources, Bitmap bitmap, byte[] bArr, Rect rect, Rect rect2, String str) {
        if (bArr != null) {
            return new NinePatchDrawable(resources, bitmap, bArr, rect, rect2, str);
        }
        return new BitmapDrawable(resources, bitmap);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public PorterDuffColorFilter updateTintFilter(PorterDuffColorFilter porterDuffColorFilter, ColorStateList colorStateList, PorterDuff.Mode mode) {
        if (colorStateList == null || mode == null) {
            return null;
        }
        int colorForState = colorStateList.getColorForState(getState(), 0);
        if (porterDuffColorFilter == null) {
            return new PorterDuffColorFilter(colorForState, mode);
        }
        porterDuffColorFilter.setColor(colorForState);
        porterDuffColorFilter.setMode(mode);
        return porterDuffColorFilter;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static TypedArray obtainAttributes(Resources resources, Resources.Theme theme, AttributeSet attributeSet, int[] iArr) {
        if (theme == null) {
            return resources.obtainAttributes(attributeSet, iArr);
        }
        return theme.obtainStyledAttributes(attributeSet, iArr, 0, 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int scaleFromDensity(int i, int i2, int i3, boolean z) {
        if (i == 0 || i2 == i3) {
            return i;
        }
        float f = (i3 * i) / i2;
        if (!z) {
            return (int) f;
        }
        int round = Math.round(f);
        return round != 0 ? round : i > 0 ? 1 : -1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int resolveDensity(Resources resources, int i) {
        if (resources != null) {
            i = resources.getDisplayMetrics().densityDpi;
        }
        if (i == 0) {
            return 160;
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void rethrowAsRuntimeException(Exception exc) throws RuntimeException {
        RuntimeException runtimeException = new RuntimeException(exc);
        runtimeException.setStackTrace(new StackTraceElement[0]);
        throw runtimeException;
    }

    public static PorterDuff.Mode parseTintMode(int i, PorterDuff.Mode mode) {
        if (i == 3) {
            return PorterDuff.Mode.SRC_OVER;
        }
        if (i == 5) {
            return PorterDuff.Mode.SRC_IN;
        }
        if (i == 9) {
            return PorterDuff.Mode.SRC_ATOP;
        }
        switch (i) {
            case 14:
                return PorterDuff.Mode.MULTIPLY;
            case 15:
                return PorterDuff.Mode.SCREEN;
            case 16:
                return PorterDuff.Mode.ADD;
            default:
                return mode;
        }
    }
}
