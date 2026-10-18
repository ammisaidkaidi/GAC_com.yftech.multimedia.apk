package android.content.res;

import android.animation.Animator;
import android.animation.StateListAnimator;
import android.app.slice.Slice;
import android.content.pm.ActivityInfo;
import android.content.res.AssetManager;
import android.content.res.FontResourcesParser;
import android.content.res.Resources;
import android.content.res.XmlBlock;
import android.graphics.Bitmap;
import android.graphics.ImageDecoder;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.DrawableContainer;
import android.icu.text.PluralRules;
import android.media.session.PlaybackState;
import android.net.wifi.WifiEnterpriseConfig;
import android.os.Build;
import android.os.LocaleList;
import android.os.Process;
import android.os.SystemClock;
import android.os.SystemProperties;
import android.os.Trace;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.util.LongSparseArray;
import android.util.TypedValue;
import android.util.Xml;
import android.view.DisplayAdjustments;
import com.android.internal.util.GrowingArrayUtils;
import java.io.IOException;
import java.io.InputStream;
import java.util.Arrays;
import java.util.Locale;
import java.util.function.Supplier;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: /home/user/work/dex/classes.dex */
public class ResourcesImpl {
    private static final boolean DEBUG_CONFIG = false;
    private static final boolean DEBUG_LOAD = false;
    private static final int ID_OTHER = 16777220;
    static final String TAG = "Resources";
    static final String TAG_PRELOAD = "Resources.preload";
    private static final boolean TRACE_FOR_MISS_PRELOAD = false;
    private static final boolean TRACE_FOR_PRELOAD = false;
    private static final int XML_BLOCK_CACHE_SIZE = 4;
    private static int sPreloadTracingNumLoadedDrawables;
    private static boolean sPreloaded;
    final AssetManager mAssets;
    private final DisplayAdjustments mDisplayAdjustments;
    private PluralRules mPluralRule;
    private long mPreloadTracingPreloadStartTime;
    private long mPreloadTracingStartBitmapCount;
    private long mPreloadTracingStartBitmapSize;
    private boolean mPreloading;
    public static final boolean TRACE_FOR_DETAILED_PRELOAD = SystemProperties.getBoolean("debug.trace_resource_preload", false);
    private static final Object sSync = new Object();
    private static final LongSparseArray<Drawable.ConstantState> sPreloadedColorDrawables = new LongSparseArray<>();
    private static final LongSparseArray<ConstantState<ComplexColor>> sPreloadedComplexColors = new LongSparseArray<>();
    private static final LongSparseArray<Drawable.ConstantState>[] sPreloadedDrawables = new LongSparseArray[2];
    private final Object mAccessLock = new Object();
    private final Configuration mTmpConfig = new Configuration();
    private final DrawableCache mDrawableCache = new DrawableCache();
    private final DrawableCache mColorDrawableCache = new DrawableCache();
    private final ConfigurationBoundResourceCache<ComplexColor> mComplexColorCache = new ConfigurationBoundResourceCache<>();
    private final ConfigurationBoundResourceCache<Animator> mAnimatorCache = new ConfigurationBoundResourceCache<>();
    private final ConfigurationBoundResourceCache<StateListAnimator> mStateListAnimatorCache = new ConfigurationBoundResourceCache<>();
    private final ThreadLocal<LookupStack> mLookupStack = ThreadLocal.withInitial(new Supplier() { // from class: android.content.res.-$$Lambda$ResourcesImpl$h3PTRX185BeQl8SVC2_w9arp5Og
        @Override // java.util.function.Supplier
        public final Object get() {
            return ResourcesImpl.lambda$new$0();
        }
    });
    private int mLastCachedXmlBlockIndex = -1;
    private final int[] mCachedXmlBlockCookies = new int[4];
    private final String[] mCachedXmlBlockFiles = new String[4];
    private final XmlBlock[] mCachedXmlBlocks = new XmlBlock[4];
    private final DisplayMetrics mMetrics = new DisplayMetrics();
    private final Configuration mConfiguration = new Configuration();

    static {
        sPreloadedDrawables[0] = new LongSparseArray<>();
        sPreloadedDrawables[1] = new LongSparseArray<>();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ LookupStack lambda$new$0() {
        return new LookupStack();
    }

    public ResourcesImpl(AssetManager assetManager, DisplayMetrics displayMetrics, Configuration configuration, DisplayAdjustments displayAdjustments) {
        this.mAssets = assetManager;
        this.mMetrics.setToDefaults();
        this.mDisplayAdjustments = displayAdjustments;
        this.mConfiguration.setToDefaults();
        updateConfiguration(configuration, displayMetrics, displayAdjustments.getCompatibilityInfo());
    }

    public DisplayAdjustments getDisplayAdjustments() {
        return this.mDisplayAdjustments;
    }

    public AssetManager getAssets() {
        return this.mAssets;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public DisplayMetrics getDisplayMetrics() {
        return this.mMetrics;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Configuration getConfiguration() {
        return this.mConfiguration;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Configuration[] getSizeConfigurations() {
        return this.mAssets.getSizeConfigurations();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public CompatibilityInfo getCompatibilityInfo() {
        return this.mDisplayAdjustments.getCompatibilityInfo();
    }

    private PluralRules getPluralRule() {
        PluralRules pluralRules;
        synchronized (sSync) {
            if (this.mPluralRule == null) {
                this.mPluralRule = PluralRules.forLocale(this.mConfiguration.getLocales().get(0));
            }
            pluralRules = this.mPluralRule;
        }
        return pluralRules;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void getValue(int i, TypedValue typedValue, boolean z) throws Resources.NotFoundException {
        if (this.mAssets.getResourceValue(i, 0, typedValue, z)) {
            return;
        }
        throw new Resources.NotFoundException("Resource ID #0x" + Integer.toHexString(i));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void getValueForDensity(int i, int i2, TypedValue typedValue, boolean z) throws Resources.NotFoundException {
        if (this.mAssets.getResourceValue(i, i2, typedValue, z)) {
            return;
        }
        throw new Resources.NotFoundException("Resource ID #0x" + Integer.toHexString(i));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void getValue(String str, TypedValue typedValue, boolean z) throws Resources.NotFoundException {
        int identifier = getIdentifier(str, "string", null);
        if (identifier != 0) {
            getValue(identifier, typedValue, z);
            return;
        }
        throw new Resources.NotFoundException("String resource name " + str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getIdentifier(String str, String str2, String str3) {
        if (str == null) {
            throw new NullPointerException("name is null");
        }
        try {
            return Integer.parseInt(str);
        } catch (Exception unused) {
            return this.mAssets.getResourceIdentifier(str, str2, str3);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String getResourceName(int i) throws Resources.NotFoundException {
        String resourceName = this.mAssets.getResourceName(i);
        if (resourceName != null) {
            return resourceName;
        }
        throw new Resources.NotFoundException("Unable to find resource ID #0x" + Integer.toHexString(i));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String getResourcePackageName(int i) throws Resources.NotFoundException {
        String resourcePackageName = this.mAssets.getResourcePackageName(i);
        if (resourcePackageName != null) {
            return resourcePackageName;
        }
        throw new Resources.NotFoundException("Unable to find resource ID #0x" + Integer.toHexString(i));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String getResourceTypeName(int i) throws Resources.NotFoundException {
        String resourceTypeName = this.mAssets.getResourceTypeName(i);
        if (resourceTypeName != null) {
            return resourceTypeName;
        }
        throw new Resources.NotFoundException("Unable to find resource ID #0x" + Integer.toHexString(i));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String getResourceEntryName(int i) throws Resources.NotFoundException {
        String resourceEntryName = this.mAssets.getResourceEntryName(i);
        if (resourceEntryName != null) {
            return resourceEntryName;
        }
        throw new Resources.NotFoundException("Unable to find resource ID #0x" + Integer.toHexString(i));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public CharSequence getQuantityText(int i, int i2) throws Resources.NotFoundException {
        PluralRules pluralRule = getPluralRule();
        double d = i2;
        CharSequence resourceBagText = this.mAssets.getResourceBagText(i, attrForQuantityCode(pluralRule.select(d)));
        if (resourceBagText != null) {
            return resourceBagText;
        }
        CharSequence resourceBagText2 = this.mAssets.getResourceBagText(i, ID_OTHER);
        if (resourceBagText2 != null) {
            return resourceBagText2;
        }
        throw new Resources.NotFoundException("Plural resource ID #0x" + Integer.toHexString(i) + " quantity=" + i2 + " item=" + pluralRule.select(d));
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private static int attrForQuantityCode(String str) {
        char c;
        switch (str.hashCode()) {
            case 101272:
                if (str.equals("few")) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            case 110182:
                if (str.equals("one")) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            case 115276:
                if (str.equals("two")) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case 3343967:
                if (str.equals("many")) {
                    c = 4;
                    break;
                }
                c = 65535;
                break;
            case 3735208:
                if (str.equals("zero")) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        switch (c) {
            case 0:
                return 16777221;
            case 1:
                return 16777222;
            case 2:
                return 16777223;
            case 3:
                return 16777224;
            case 4:
                return 16777225;
            default:
                return ID_OTHER;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AssetFileDescriptor openRawResourceFd(int i, TypedValue typedValue) throws Resources.NotFoundException {
        getValue(i, typedValue, true);
        try {
            return this.mAssets.openNonAssetFd(typedValue.assetCookie, typedValue.string.toString());
        } catch (Exception e) {
            throw new Resources.NotFoundException("File " + typedValue.string.toString() + " from drawable resource ID #0x" + Integer.toHexString(i), e);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public InputStream openRawResource(int i, TypedValue typedValue) throws Resources.NotFoundException {
        getValue(i, typedValue, true);
        try {
            return this.mAssets.openNonAsset(typedValue.assetCookie, typedValue.string.toString(), 2);
        } catch (Exception e) {
            StringBuilder sb = new StringBuilder();
            sb.append("File ");
            sb.append(typedValue.string == null ? "(null)" : typedValue.string.toString());
            sb.append(" from drawable resource ID #0x");
            sb.append(Integer.toHexString(i));
            Resources.NotFoundException notFoundException = new Resources.NotFoundException(sb.toString());
            notFoundException.initCause(e);
            throw notFoundException;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ConfigurationBoundResourceCache<Animator> getAnimatorCache() {
        return this.mAnimatorCache;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ConfigurationBoundResourceCache<StateListAnimator> getStateListAnimatorCache() {
        return this.mStateListAnimatorCache;
    }

    public void updateConfiguration(Configuration configuration, DisplayMetrics displayMetrics, CompatibilityInfo compatibilityInfo) {
        long j;
        int i;
        int i2;
        Locale firstMatchWithEnglishSupported;
        Trace.traceBegin(PlaybackState.ACTION_PLAY_FROM_URI, "ResourcesImpl#updateConfiguration");
        try {
            synchronized (this.mAccessLock) {
                try {
                    if (compatibilityInfo != null) {
                        try {
                            this.mDisplayAdjustments.setCompatibilityInfo(compatibilityInfo);
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                    if (displayMetrics != null) {
                        this.mMetrics.setTo(displayMetrics);
                    }
                    this.mDisplayAdjustments.getCompatibilityInfo().applyToDisplayMetrics(this.mMetrics);
                    int calcConfigChanges = calcConfigChanges(configuration);
                    LocaleList locales = this.mConfiguration.getLocales();
                    if (locales.isEmpty()) {
                        locales = LocaleList.getDefault();
                        this.mConfiguration.setLocales(locales);
                    }
                    if ((calcConfigChanges & 4) != 0 && locales.size() > 1) {
                        String[] nonSystemLocales = this.mAssets.getNonSystemLocales();
                        if (LocaleList.isPseudoLocalesOnly(nonSystemLocales)) {
                            nonSystemLocales = this.mAssets.getLocales();
                            if (LocaleList.isPseudoLocalesOnly(nonSystemLocales)) {
                                nonSystemLocales = null;
                            }
                        }
                        if (nonSystemLocales != null && (firstMatchWithEnglishSupported = locales.getFirstMatchWithEnglishSupported(nonSystemLocales)) != null && firstMatchWithEnglishSupported != locales.get(0)) {
                            this.mConfiguration.setLocales(new LocaleList(firstMatchWithEnglishSupported, locales));
                        }
                    }
                    if (this.mConfiguration.densityDpi != 0) {
                        this.mMetrics.densityDpi = this.mConfiguration.densityDpi;
                        this.mMetrics.density = this.mConfiguration.densityDpi * 0.00625f;
                    }
                    this.mMetrics.scaledDensity = this.mMetrics.density * (this.mConfiguration.fontScale != 0.0f ? this.mConfiguration.fontScale : 1.0f);
                    if (this.mMetrics.widthPixels >= this.mMetrics.heightPixels) {
                        i = this.mMetrics.widthPixels;
                        i2 = this.mMetrics.heightPixels;
                    } else {
                        i = this.mMetrics.heightPixels;
                        i2 = this.mMetrics.widthPixels;
                    }
                    this.mAssets.setConfiguration(this.mConfiguration.mcc, this.mConfiguration.mnc, adjustLanguageTag(this.mConfiguration.getLocales().get(0).toLanguageTag()), this.mConfiguration.orientation, this.mConfiguration.touchscreen, this.mConfiguration.densityDpi, this.mConfiguration.keyboard, (this.mConfiguration.keyboardHidden == 1 && this.mConfiguration.hardKeyboardHidden == 2) ? 3 : this.mConfiguration.keyboardHidden, this.mConfiguration.navigation, i, i2, this.mConfiguration.smallestScreenWidthDp, this.mConfiguration.screenWidthDp, this.mConfiguration.screenHeightDp, this.mConfiguration.screenLayout, this.mConfiguration.uiMode, this.mConfiguration.colorMode, Build.VERSION.RESOURCES_SDK_INT);
                    this.mDrawableCache.onConfigurationChange(calcConfigChanges);
                    this.mColorDrawableCache.onConfigurationChange(calcConfigChanges);
                    this.mComplexColorCache.onConfigurationChange(calcConfigChanges);
                    this.mAnimatorCache.onConfigurationChange(calcConfigChanges);
                    this.mStateListAnimatorCache.onConfigurationChange(calcConfigChanges);
                    flushLayoutCache();
                } catch (Throwable th2) {
                    th = th2;
                    j = PlaybackState.ACTION_PLAY_FROM_URI;
                    Trace.traceEnd(j);
                    throw th;
                }
            }
            synchronized (sSync) {
                if (this.mPluralRule != null) {
                    this.mPluralRule = PluralRules.forLocale(this.mConfiguration.getLocales().get(0));
                }
            }
            Trace.traceEnd(PlaybackState.ACTION_PLAY_FROM_URI);
        } catch (Throwable th3) {
            th = th3;
            j = 8192;
        }
    }

    public int calcConfigChanges(Configuration configuration) {
        if (configuration == null) {
            return -1;
        }
        this.mTmpConfig.setTo(configuration);
        int i = configuration.densityDpi;
        if (i == 0) {
            i = this.mMetrics.noncompatDensityDpi;
        }
        this.mDisplayAdjustments.getCompatibilityInfo().applyToConfiguration(i, this.mTmpConfig);
        if (this.mTmpConfig.getLocales().isEmpty()) {
            this.mTmpConfig.setLocales(LocaleList.getDefault());
        }
        return this.mConfiguration.updateFrom(this.mTmpConfig);
    }

    private static String adjustLanguageTag(String str) {
        String substring;
        int indexOf = str.indexOf(45);
        if (indexOf == -1) {
            substring = "";
        } else {
            String substring2 = str.substring(0, indexOf);
            substring = str.substring(indexOf);
            str = substring2;
        }
        return Locale.adjustLanguageCode(str) + substring;
    }

    public void flushLayoutCache() {
        synchronized (this.mCachedXmlBlocks) {
            Arrays.fill(this.mCachedXmlBlockCookies, 0);
            Arrays.fill(this.mCachedXmlBlockFiles, (Object) null);
            XmlBlock[] xmlBlockArr = this.mCachedXmlBlocks;
            for (int i = 0; i < 4; i++) {
                XmlBlock xmlBlock = xmlBlockArr[i];
                if (xmlBlock != null) {
                    xmlBlock.close();
                }
            }
            Arrays.fill(xmlBlockArr, (Object) null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Drawable loadDrawable(Resources resources, TypedValue typedValue, int i, int i2, Resources.Theme theme) throws Resources.NotFoundException {
        String str;
        DrawableCache drawableCache;
        long j;
        boolean z;
        Drawable.ConstantState constantState;
        Drawable loadDrawableForCookie;
        Drawable.ConstantState constantState2;
        String resourceName;
        Drawable drawableCache2;
        boolean z2 = i2 == 0 || typedValue.density == this.mMetrics.densityDpi;
        if (i2 > 0 && typedValue.density > 0 && typedValue.density != 65535) {
            if (typedValue.density == i2) {
                typedValue.density = this.mMetrics.densityDpi;
            } else {
                typedValue.density = (typedValue.density * this.mMetrics.densityDpi) / i2;
            }
        }
        try {
            if (typedValue.type >= 28 && typedValue.type <= 31) {
                drawableCache = this.mColorDrawableCache;
                j = typedValue.data;
                z = true;
            } else {
                drawableCache = this.mDrawableCache;
                j = (typedValue.assetCookie << 32) | typedValue.data;
                z = false;
            }
            if (!this.mPreloading && z2 && (drawableCache2 = drawableCache.getInstance(j, resources, theme)) != null) {
                drawableCache2.setChangingConfigurations(typedValue.changingConfigurations);
                return drawableCache2;
            }
            if (z) {
                constantState = sPreloadedColorDrawables.get(j);
            } else {
                constantState = sPreloadedDrawables[this.mConfiguration.getLayoutDirection()].get(j);
            }
            if (constantState != null) {
                if (TRACE_FOR_DETAILED_PRELOAD && (i >>> 24) == 1 && Process.myUid() != 0 && (resourceName = getResourceName(i)) != null) {
                    Log.d(TAG_PRELOAD, "Hit preloaded FW drawable #" + Integer.toHexString(i) + WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER + resourceName);
                }
                loadDrawableForCookie = constantState.newDrawable(resources);
            } else if (z) {
                loadDrawableForCookie = new ColorDrawable(typedValue.data);
            } else {
                loadDrawableForCookie = loadDrawableForCookie(resources, typedValue, i, i2);
            }
            boolean z3 = loadDrawableForCookie instanceof DrawableContainer;
            boolean z4 = loadDrawableForCookie != null && loadDrawableForCookie.canApplyTheme();
            if (z4 && theme != null) {
                loadDrawableForCookie = loadDrawableForCookie.mutate();
                loadDrawableForCookie.applyTheme(theme);
                loadDrawableForCookie.clearMutated();
            }
            Drawable drawable = loadDrawableForCookie;
            if (drawable == null) {
                return drawable;
            }
            drawable.setChangingConfigurations(typedValue.changingConfigurations);
            if (!z2) {
                return drawable;
            }
            cacheDrawable(typedValue, z, drawableCache, theme, z4, j, drawable);
            return (!z3 || (constantState2 = drawable.getConstantState()) == null) ? drawable : constantState2.newDrawable(resources);
        } catch (Exception e) {
            try {
                str = getResourceName(i);
            } catch (Resources.NotFoundException unused) {
                str = "(missing name)";
            }
            Resources.NotFoundException notFoundException = new Resources.NotFoundException("Drawable " + str + " with resource ID #0x" + Integer.toHexString(i), e);
            notFoundException.setStackTrace(new StackTraceElement[0]);
            throw notFoundException;
        }
    }

    private void cacheDrawable(TypedValue typedValue, boolean z, DrawableCache drawableCache, Resources.Theme theme, boolean z2, long j, Drawable drawable) {
        Drawable.ConstantState constantState = drawable.getConstantState();
        if (constantState == null) {
            return;
        }
        if (this.mPreloading) {
            int changingConfigurations = constantState.getChangingConfigurations();
            if (z) {
                if (verifyPreloadConfig(changingConfigurations, 0, typedValue.resourceId, "drawable")) {
                    sPreloadedColorDrawables.put(j, constantState);
                    return;
                }
                return;
            } else {
                if (verifyPreloadConfig(changingConfigurations, 8192, typedValue.resourceId, "drawable")) {
                    if ((changingConfigurations & 8192) == 0) {
                        sPreloadedDrawables[0].put(j, constantState);
                        sPreloadedDrawables[1].put(j, constantState);
                        return;
                    } else {
                        sPreloadedDrawables[this.mConfiguration.getLayoutDirection()].put(j, constantState);
                        return;
                    }
                }
                return;
            }
        }
        synchronized (this.mAccessLock) {
            drawableCache.put(j, theme, constantState, z2);
        }
    }

    private boolean verifyPreloadConfig(int i, int i2, int i3, String str) {
        String str2;
        if ((i & (-1073745921) & (~i2)) == 0) {
            return true;
        }
        try {
            str2 = getResourceName(i3);
        } catch (Resources.NotFoundException unused) {
            str2 = "?";
        }
        Log.w(TAG, "Preloaded " + str + " resource #0x" + Integer.toHexString(i3) + " (" + str2 + ") that varies with configuration!!");
        return false;
    }

    private Drawable decodeImageDrawable(AssetManager.AssetInputStream assetInputStream, Resources resources, TypedValue typedValue) {
        try {
            return ImageDecoder.decodeDrawable(new ImageDecoder.AssetInputStreamSource(assetInputStream, resources, typedValue), new ImageDecoder.OnHeaderDecodedListener() { // from class: android.content.res.-$$Lambda$ResourcesImpl$99dm2ENnzo9b0SIUjUj2Kl3pi90
                @Override // android.graphics.ImageDecoder.OnHeaderDecodedListener
                public final void onHeaderDecoded(ImageDecoder imageDecoder, ImageDecoder.ImageInfo imageInfo, ImageDecoder.Source source) {
                    imageDecoder.setAllocator(1);
                }
            });
        } catch (IOException unused) {
            return null;
        }
    }

    private Drawable loadDrawableForCookie(Resources resources, TypedValue typedValue, int i, int i2) {
        long j;
        int i3;
        int i4;
        long j2;
        Drawable decodeImageDrawable;
        String resourceName;
        if (typedValue.string == null) {
            throw new Resources.NotFoundException("Resource \"" + getResourceName(i) + "\" (" + Integer.toHexString(i) + ") is not a Drawable (color or path): " + typedValue);
        }
        String charSequence = typedValue.string.toString();
        long j3 = 0;
        if (TRACE_FOR_DETAILED_PRELOAD) {
            j3 = System.nanoTime();
            i3 = Bitmap.sPreloadTracingNumInstantiatedBitmaps;
            j = Bitmap.sPreloadTracingTotalBitmapsSize;
            i4 = sPreloadTracingNumLoadedDrawables;
        } else {
            j = 0;
            i3 = 0;
            i4 = 0;
        }
        Trace.traceBegin(PlaybackState.ACTION_PLAY_FROM_URI, charSequence);
        LookupStack lookupStack = this.mLookupStack.get();
        try {
            try {
                if (lookupStack.contains(i)) {
                    throw new Exception("Recursive reference in drawable");
                }
                lookupStack.push(i);
                try {
                    if (charSequence.endsWith(".xml")) {
                        XmlResourceParser loadXmlResourceParser = loadXmlResourceParser(charSequence, i, typedValue.assetCookie, "drawable");
                        decodeImageDrawable = Drawable.createFromXmlForDensity(resources, loadXmlResourceParser, i2, null);
                        loadXmlResourceParser.close();
                    } else {
                        decodeImageDrawable = decodeImageDrawable((AssetManager.AssetInputStream) this.mAssets.openNonAsset(typedValue.assetCookie, charSequence, 2), resources, typedValue);
                    }
                    Trace.traceEnd(PlaybackState.ACTION_PLAY_FROM_URI);
                    if (TRACE_FOR_DETAILED_PRELOAD && (i >>> 24) == 1 && (resourceName = getResourceName(i)) != null) {
                        long nanoTime = System.nanoTime() - j3;
                        int i5 = Bitmap.sPreloadTracingNumInstantiatedBitmaps - i3;
                        long j4 = Bitmap.sPreloadTracingTotalBitmapsSize - j;
                        int i6 = sPreloadTracingNumLoadedDrawables - i4;
                        sPreloadTracingNumLoadedDrawables++;
                        boolean z = Process.myUid() == 0;
                        StringBuilder sb = new StringBuilder();
                        sb.append(z ? "Preloaded FW drawable #" : "Loaded non-preloaded FW drawable #");
                        sb.append(Integer.toHexString(i));
                        sb.append(WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER);
                        sb.append(resourceName);
                        sb.append(WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER);
                        sb.append(charSequence);
                        sb.append(WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER);
                        sb.append(decodeImageDrawable.getClass().getCanonicalName());
                        sb.append(" #nested_drawables= ");
                        sb.append(i6);
                        sb.append(" #bitmaps= ");
                        sb.append(i5);
                        sb.append(" total_bitmap_size= ");
                        sb.append(j4);
                        sb.append(" in[us] ");
                        sb.append(nanoTime / 1000);
                        Log.d(TAG_PRELOAD, sb.toString());
                    }
                    return decodeImageDrawable;
                } finally {
                    lookupStack.pop();
                }
            } catch (Exception | StackOverflowError e) {
                e = e;
                j2 = PlaybackState.ACTION_PLAY_FROM_URI;
                Trace.traceEnd(j2);
                Resources.NotFoundException notFoundException = new Resources.NotFoundException("File " + charSequence + " from drawable resource ID #0x" + Integer.toHexString(i));
                notFoundException.initCause(e);
                throw notFoundException;
            }
        } catch (Exception | StackOverflowError e2) {
            e = e2;
            j2 = 8192;
        }
    }

    public Typeface loadFont(Resources resources, TypedValue typedValue, int i) {
        if (typedValue.string == null) {
            throw new Resources.NotFoundException("Resource \"" + getResourceName(i) + "\" (" + Integer.toHexString(i) + ") is not a Font: " + typedValue);
        }
        String charSequence = typedValue.string.toString();
        if (!charSequence.startsWith("res/")) {
            return null;
        }
        Typeface findFromCache = Typeface.findFromCache(this.mAssets, charSequence);
        if (findFromCache != null) {
            return findFromCache;
        }
        Trace.traceBegin(PlaybackState.ACTION_PLAY_FROM_URI, charSequence);
        try {
            try {
                if (!charSequence.endsWith("xml")) {
                    return Typeface.createFromResources(this.mAssets, charSequence, typedValue.assetCookie);
                }
                FontResourcesParser.FamilyResourceEntry parse = FontResourcesParser.parse(loadXmlResourceParser(charSequence, i, typedValue.assetCookie, "font"), resources);
                if (parse == null) {
                    return null;
                }
                return Typeface.createFromResources(parse, this.mAssets, charSequence);
            } catch (IOException e) {
                Log.e(TAG, "Failed to read xml resource " + charSequence, e);
                return null;
            } catch (XmlPullParserException e2) {
                Log.e(TAG, "Failed to parse xml resource " + charSequence, e2);
                return null;
            }
        } finally {
            Trace.traceEnd(PlaybackState.ACTION_PLAY_FROM_URI);
        }
    }

    private ComplexColor loadComplexColorFromName(Resources resources, Resources.Theme theme, TypedValue typedValue, int i) {
        long j = (typedValue.assetCookie << 32) | typedValue.data;
        ConfigurationBoundResourceCache<ComplexColor> configurationBoundResourceCache = this.mComplexColorCache;
        ComplexColor configurationBoundResourceCache2 = configurationBoundResourceCache.getInstance(j, resources, theme);
        if (configurationBoundResourceCache2 != null) {
            return configurationBoundResourceCache2;
        }
        ConstantState<ComplexColor> constantState = sPreloadedComplexColors.get(j);
        if (constantState != null) {
            configurationBoundResourceCache2 = constantState.newInstance2(resources, theme);
        }
        if (configurationBoundResourceCache2 == null) {
            configurationBoundResourceCache2 = loadComplexColorForCookie(resources, typedValue, i, theme);
        }
        if (configurationBoundResourceCache2 != null) {
            configurationBoundResourceCache2.setBaseChangingConfigurations(typedValue.changingConfigurations);
            if (this.mPreloading) {
                if (verifyPreloadConfig(configurationBoundResourceCache2.getChangingConfigurations(), 0, typedValue.resourceId, Slice.SUBTYPE_COLOR)) {
                    sPreloadedComplexColors.put(j, configurationBoundResourceCache2.getConstantState());
                }
            } else {
                configurationBoundResourceCache.put(j, theme, configurationBoundResourceCache2.getConstantState());
            }
        }
        return configurationBoundResourceCache2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ComplexColor loadComplexColor(Resources resources, TypedValue typedValue, int i, Resources.Theme theme) {
        long j = (typedValue.assetCookie << 32) | typedValue.data;
        if (typedValue.type >= 28 && typedValue.type <= 31) {
            return getColorStateListFromInt(typedValue, j);
        }
        String charSequence = typedValue.string.toString();
        if (charSequence.endsWith(".xml")) {
            try {
                return loadComplexColorFromName(resources, theme, typedValue, i);
            } catch (Exception e) {
                Resources.NotFoundException notFoundException = new Resources.NotFoundException("File " + charSequence + " from complex color resource ID #0x" + Integer.toHexString(i));
                notFoundException.initCause(e);
                throw notFoundException;
            }
        }
        throw new Resources.NotFoundException("File " + charSequence + " from drawable resource ID #0x" + Integer.toHexString(i) + ": .xml extension required");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ColorStateList loadColorStateList(Resources resources, TypedValue typedValue, int i, Resources.Theme theme) throws Resources.NotFoundException {
        long j = (typedValue.assetCookie << 32) | typedValue.data;
        if (typedValue.type >= 28 && typedValue.type <= 31) {
            return getColorStateListFromInt(typedValue, j);
        }
        ComplexColor loadComplexColorFromName = loadComplexColorFromName(resources, theme, typedValue, i);
        if (loadComplexColorFromName != null && (loadComplexColorFromName instanceof ColorStateList)) {
            return (ColorStateList) loadComplexColorFromName;
        }
        throw new Resources.NotFoundException("Can't find ColorStateList from drawable resource ID #0x" + Integer.toHexString(i));
    }

    private ColorStateList getColorStateListFromInt(TypedValue typedValue, long j) {
        ConstantState<ComplexColor> constantState = sPreloadedComplexColors.get(j);
        if (constantState != null) {
            return (ColorStateList) constantState.newInstance2();
        }
        ColorStateList valueOf = ColorStateList.valueOf(typedValue.data);
        if (this.mPreloading && verifyPreloadConfig(typedValue.changingConfigurations, 0, typedValue.resourceId, Slice.SUBTYPE_COLOR)) {
            sPreloadedComplexColors.put(j, valueOf.getConstantState());
        }
        return valueOf;
    }

    private ComplexColor loadComplexColorForCookie(Resources resources, TypedValue typedValue, int i, Resources.Theme theme) {
        int next;
        if (typedValue.string == null) {
            throw new UnsupportedOperationException("Can't convert to ComplexColor: type=0x" + typedValue.type);
        }
        String charSequence = typedValue.string.toString();
        ComplexColor complexColor = null;
        Trace.traceBegin(PlaybackState.ACTION_PLAY_FROM_URI, charSequence);
        if (charSequence.endsWith(".xml")) {
            try {
                XmlResourceParser loadXmlResourceParser = loadXmlResourceParser(charSequence, i, typedValue.assetCookie, "ComplexColor");
                AttributeSet asAttributeSet = Xml.asAttributeSet(loadXmlResourceParser);
                do {
                    next = loadXmlResourceParser.next();
                    if (next == 2) {
                        break;
                    }
                } while (next != 1);
                if (next != 2) {
                    throw new XmlPullParserException("No start tag found");
                }
                String name = loadXmlResourceParser.getName();
                if (name.equals("gradient")) {
                    complexColor = GradientColor.createFromXmlInner(resources, loadXmlResourceParser, asAttributeSet, theme);
                } else if (name.equals("selector")) {
                    complexColor = ColorStateList.createFromXmlInner(resources, loadXmlResourceParser, asAttributeSet, theme);
                }
                loadXmlResourceParser.close();
                Trace.traceEnd(PlaybackState.ACTION_PLAY_FROM_URI);
                return complexColor;
            } catch (Exception e) {
                Trace.traceEnd(PlaybackState.ACTION_PLAY_FROM_URI);
                Resources.NotFoundException notFoundException = new Resources.NotFoundException("File " + charSequence + " from ComplexColor resource ID #0x" + Integer.toHexString(i));
                notFoundException.initCause(e);
                throw notFoundException;
            }
        }
        Trace.traceEnd(PlaybackState.ACTION_PLAY_FROM_URI);
        throw new Resources.NotFoundException("File " + charSequence + " from drawable resource ID #0x" + Integer.toHexString(i) + ": .xml extension required");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public XmlResourceParser loadXmlResourceParser(String str, int i, int i2, String str2) throws Resources.NotFoundException {
        if (i != 0) {
            try {
                synchronized (this.mCachedXmlBlocks) {
                    int[] iArr = this.mCachedXmlBlockCookies;
                    String[] strArr = this.mCachedXmlBlockFiles;
                    XmlBlock[] xmlBlockArr = this.mCachedXmlBlocks;
                    int length = strArr.length;
                    for (int i3 = 0; i3 < length; i3++) {
                        if (iArr[i3] == i2 && strArr[i3] != null && strArr[i3].equals(str)) {
                            return xmlBlockArr[i3].newParser();
                        }
                    }
                    XmlBlock openXmlBlockAsset = this.mAssets.openXmlBlockAsset(i2, str);
                    if (openXmlBlockAsset != null) {
                        int i4 = (this.mLastCachedXmlBlockIndex + 1) % length;
                        this.mLastCachedXmlBlockIndex = i4;
                        XmlBlock xmlBlock = xmlBlockArr[i4];
                        if (xmlBlock != null) {
                            xmlBlock.close();
                        }
                        iArr[i4] = i2;
                        strArr[i4] = str;
                        xmlBlockArr[i4] = openXmlBlockAsset;
                        return openXmlBlockAsset.newParser();
                    }
                }
            } catch (Exception e) {
                Resources.NotFoundException notFoundException = new Resources.NotFoundException("File " + str + " from xml type " + str2 + " resource ID #0x" + Integer.toHexString(i));
                notFoundException.initCause(e);
                throw notFoundException;
            }
        }
        throw new Resources.NotFoundException("File " + str + " from xml type " + str2 + " resource ID #0x" + Integer.toHexString(i));
    }

    public final void startPreloading() {
        synchronized (sSync) {
            if (sPreloaded) {
                throw new IllegalStateException("Resources already preloaded");
            }
            sPreloaded = true;
            this.mPreloading = true;
            this.mConfiguration.densityDpi = DisplayMetrics.DENSITY_DEVICE;
            updateConfiguration(null, null, null);
            if (TRACE_FOR_DETAILED_PRELOAD) {
                this.mPreloadTracingPreloadStartTime = SystemClock.uptimeMillis();
                this.mPreloadTracingStartBitmapSize = Bitmap.sPreloadTracingTotalBitmapsSize;
                this.mPreloadTracingStartBitmapCount = Bitmap.sPreloadTracingNumInstantiatedBitmaps;
                Log.d(TAG_PRELOAD, "Preload starting");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void finishPreloading() {
        if (this.mPreloading) {
            if (TRACE_FOR_DETAILED_PRELOAD) {
                long uptimeMillis = SystemClock.uptimeMillis() - this.mPreloadTracingPreloadStartTime;
                long j = Bitmap.sPreloadTracingTotalBitmapsSize - this.mPreloadTracingStartBitmapSize;
                Log.d(TAG_PRELOAD, "Preload finished, " + (Bitmap.sPreloadTracingNumInstantiatedBitmaps - this.mPreloadTracingStartBitmapCount) + " bitmaps of " + j + " bytes in " + uptimeMillis + " ms");
            }
            this.mPreloading = false;
            flushLayoutCache();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public LongSparseArray<Drawable.ConstantState> getPreloadedDrawables() {
        return sPreloadedDrawables[0];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ThemeImpl newThemeImpl() {
        return new ThemeImpl();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ThemeImpl newThemeImpl(Resources.ThemeKey themeKey) {
        ThemeImpl themeImpl = new ThemeImpl();
        themeImpl.mKey.setTo(themeKey);
        themeImpl.rebase();
        return themeImpl;
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public class ThemeImpl {
        private final AssetManager mAssets;
        private final long mTheme;
        private final Resources.ThemeKey mKey = new Resources.ThemeKey();
        private int mThemeResId = 0;

        ThemeImpl() {
            this.mAssets = ResourcesImpl.this.mAssets;
            this.mTheme = this.mAssets.createTheme();
        }

        protected void finalize() throws Throwable {
            super.finalize();
            this.mAssets.releaseTheme(this.mTheme);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public Resources.ThemeKey getKey() {
            return this.mKey;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public long getNativeTheme() {
            return this.mTheme;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public int getAppliedStyleResId() {
            return this.mThemeResId;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void applyStyle(int i, boolean z) {
            synchronized (this.mKey) {
                this.mAssets.applyStyleToTheme(this.mTheme, i, z);
                this.mThemeResId = i;
                this.mKey.append(i, z);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void setTo(ThemeImpl themeImpl) {
            synchronized (this.mKey) {
                synchronized (themeImpl.mKey) {
                    AssetManager.nativeThemeCopy(this.mTheme, themeImpl.mTheme);
                    this.mThemeResId = themeImpl.mThemeResId;
                    this.mKey.setTo(themeImpl.getKey());
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public TypedArray obtainStyledAttributes(Resources.Theme theme, AttributeSet attributeSet, int[] iArr, int i, int i2) {
            TypedArray obtain;
            synchronized (this.mKey) {
                obtain = TypedArray.obtain(theme.getResources(), iArr.length);
                XmlBlock.Parser parser = (XmlBlock.Parser) attributeSet;
                this.mAssets.applyStyle(this.mTheme, i, i2, parser, iArr, obtain.mDataAddress, obtain.mIndicesAddress);
                obtain.mTheme = theme;
                obtain.mXml = parser;
            }
            return obtain;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public TypedArray resolveAttributes(Resources.Theme theme, int[] iArr, int[] iArr2) {
            TypedArray obtain;
            synchronized (this.mKey) {
                int length = iArr2.length;
                if (iArr == null || length != iArr.length) {
                    throw new IllegalArgumentException("Base attribute values must the same length as attrs");
                }
                obtain = TypedArray.obtain(theme.getResources(), length);
                this.mAssets.resolveAttrs(this.mTheme, 0, 0, iArr, iArr2, obtain.mData, obtain.mIndices);
                obtain.mTheme = theme;
                obtain.mXml = null;
            }
            return obtain;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public boolean resolveAttribute(int i, TypedValue typedValue, boolean z) {
            boolean themeValue;
            synchronized (this.mKey) {
                themeValue = this.mAssets.getThemeValue(this.mTheme, i, typedValue, z);
            }
            return themeValue;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public int[] getAllAttributes() {
            return this.mAssets.getStyleAttributes(getAppliedStyleResId());
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public int getChangingConfigurations() {
            int activityInfoConfigNativeToJava;
            synchronized (this.mKey) {
                activityInfoConfigNativeToJava = ActivityInfo.activityInfoConfigNativeToJava(AssetManager.nativeThemeGetChangingConfigurations(this.mTheme));
            }
            return activityInfoConfigNativeToJava;
        }

        public void dump(int i, String str, String str2) {
            synchronized (this.mKey) {
                this.mAssets.dumpTheme(this.mTheme, i, str, str2);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public String[] getTheme() {
            String[] strArr;
            synchronized (this.mKey) {
                int i = this.mKey.mCount;
                strArr = new String[i * 2];
                int i2 = 0;
                int i3 = i - 1;
                while (i2 < strArr.length) {
                    int i4 = this.mKey.mResId[i3];
                    boolean z = this.mKey.mForce[i3];
                    try {
                        strArr[i2] = ResourcesImpl.this.getResourceName(i4);
                    } catch (Resources.NotFoundException unused) {
                        strArr[i2] = Integer.toHexString(i2);
                    }
                    strArr[i2 + 1] = z ? "forced" : "not forced";
                    i2 += 2;
                    i3--;
                }
            }
            return strArr;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void rebase() {
            synchronized (this.mKey) {
                AssetManager.nativeThemeClear(this.mTheme);
                for (int i = 0; i < this.mKey.mCount; i++) {
                    this.mAssets.applyStyleToTheme(this.mTheme, this.mKey.mResId[i], this.mKey.mForce[i]);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class LookupStack {
        private int[] mIds;
        private int mSize;

        private LookupStack() {
            this.mIds = new int[4];
            this.mSize = 0;
        }

        public void push(int i) {
            this.mIds = GrowingArrayUtils.append(this.mIds, this.mSize, i);
            this.mSize++;
        }

        public boolean contains(int i) {
            for (int i2 = 0; i2 < this.mSize; i2++) {
                if (this.mIds[i2] == i) {
                    return true;
                }
            }
            return false;
        }

        public void pop() {
            this.mSize--;
        }
    }
}
