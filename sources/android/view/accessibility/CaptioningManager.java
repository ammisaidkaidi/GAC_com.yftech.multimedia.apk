package android.view.accessibility;

import android.content.ContentResolver;
import android.content.Context;
import android.database.ContentObserver;
import android.graphics.Typeface;
import android.net.Uri;
import android.os.Handler;
import android.provider.Settings;
import android.telecom.Logging.Session;
import android.text.TextUtils;
import android.text.style.QuoteSpan;
import android.view.InputDevice;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Locale;

/* loaded from: /home/user/work/dex/classes2.dex */
public class CaptioningManager {
    private static final int DEFAULT_ENABLED = 0;
    private static final float DEFAULT_FONT_SCALE = 1.0f;
    private static final int DEFAULT_PRESET = 0;
    private final ContentObserver mContentObserver;
    private final ContentResolver mContentResolver;
    private final ArrayList<CaptioningChangeListener> mListeners = new ArrayList<>();
    private final Runnable mStyleChangedRunnable = new Runnable() { // from class: android.view.accessibility.CaptioningManager.1
        @Override // java.lang.Runnable
        public void run() {
            CaptioningManager.this.notifyUserStyleChanged();
        }
    };

    /* loaded from: /home/user/work/dex/classes2.dex */
    public static abstract class CaptioningChangeListener {
        public void onEnabledChanged(boolean z) {
        }

        public void onFontScaleChanged(float f) {
        }

        public void onLocaleChanged(Locale locale) {
        }

        public void onUserStyleChanged(CaptionStyle captionStyle) {
        }
    }

    public CaptioningManager(Context context) {
        this.mContentResolver = context.getContentResolver();
        this.mContentObserver = new MyContentObserver(new Handler(context.getMainLooper()));
    }

    public final boolean isEnabled() {
        return Settings.Secure.getInt(this.mContentResolver, Settings.Secure.ACCESSIBILITY_CAPTIONING_ENABLED, 0) == 1;
    }

    public final String getRawLocale() {
        return Settings.Secure.getString(this.mContentResolver, Settings.Secure.ACCESSIBILITY_CAPTIONING_LOCALE);
    }

    public final Locale getLocale() {
        String rawLocale = getRawLocale();
        if (TextUtils.isEmpty(rawLocale)) {
            return null;
        }
        String[] split = rawLocale.split(Session.SESSION_SEPARATION_CHAR_CHILD);
        switch (split.length) {
            case 1:
                return new Locale(split[0]);
            case 2:
                return new Locale(split[0], split[1]);
            case 3:
                return new Locale(split[0], split[1], split[2]);
            default:
                return null;
        }
    }

    public final float getFontScale() {
        return Settings.Secure.getFloat(this.mContentResolver, Settings.Secure.ACCESSIBILITY_CAPTIONING_FONT_SCALE, 1.0f);
    }

    public int getRawUserStyle() {
        return Settings.Secure.getInt(this.mContentResolver, Settings.Secure.ACCESSIBILITY_CAPTIONING_PRESET, 0);
    }

    public CaptionStyle getUserStyle() {
        int rawUserStyle = getRawUserStyle();
        if (rawUserStyle == -1) {
            return CaptionStyle.getCustomStyle(this.mContentResolver);
        }
        return CaptionStyle.PRESETS[rawUserStyle];
    }

    public void addCaptioningChangeListener(CaptioningChangeListener captioningChangeListener) {
        synchronized (this.mListeners) {
            if (this.mListeners.isEmpty()) {
                registerObserver(Settings.Secure.ACCESSIBILITY_CAPTIONING_ENABLED);
                registerObserver(Settings.Secure.ACCESSIBILITY_CAPTIONING_FOREGROUND_COLOR);
                registerObserver(Settings.Secure.ACCESSIBILITY_CAPTIONING_BACKGROUND_COLOR);
                registerObserver(Settings.Secure.ACCESSIBILITY_CAPTIONING_WINDOW_COLOR);
                registerObserver(Settings.Secure.ACCESSIBILITY_CAPTIONING_EDGE_TYPE);
                registerObserver(Settings.Secure.ACCESSIBILITY_CAPTIONING_EDGE_COLOR);
                registerObserver(Settings.Secure.ACCESSIBILITY_CAPTIONING_TYPEFACE);
                registerObserver(Settings.Secure.ACCESSIBILITY_CAPTIONING_FONT_SCALE);
                registerObserver(Settings.Secure.ACCESSIBILITY_CAPTIONING_LOCALE);
                registerObserver(Settings.Secure.ACCESSIBILITY_CAPTIONING_PRESET);
            }
            this.mListeners.add(captioningChangeListener);
        }
    }

    private void registerObserver(String str) {
        this.mContentResolver.registerContentObserver(Settings.Secure.getUriFor(str), false, this.mContentObserver);
    }

    public void removeCaptioningChangeListener(CaptioningChangeListener captioningChangeListener) {
        synchronized (this.mListeners) {
            this.mListeners.remove(captioningChangeListener);
            if (this.mListeners.isEmpty()) {
                this.mContentResolver.unregisterContentObserver(this.mContentObserver);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyEnabledChanged() {
        boolean isEnabled = isEnabled();
        synchronized (this.mListeners) {
            Iterator<CaptioningChangeListener> it = this.mListeners.iterator();
            while (it.hasNext()) {
                it.next().onEnabledChanged(isEnabled);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyUserStyleChanged() {
        CaptionStyle userStyle = getUserStyle();
        synchronized (this.mListeners) {
            Iterator<CaptioningChangeListener> it = this.mListeners.iterator();
            while (it.hasNext()) {
                it.next().onUserStyleChanged(userStyle);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyLocaleChanged() {
        Locale locale = getLocale();
        synchronized (this.mListeners) {
            Iterator<CaptioningChangeListener> it = this.mListeners.iterator();
            while (it.hasNext()) {
                it.next().onLocaleChanged(locale);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyFontScaleChanged() {
        float fontScale = getFontScale();
        synchronized (this.mListeners) {
            Iterator<CaptioningChangeListener> it = this.mListeners.iterator();
            while (it.hasNext()) {
                it.next().onFontScaleChanged(fontScale);
            }
        }
    }

    /* loaded from: /home/user/work/dex/classes2.dex */
    private class MyContentObserver extends ContentObserver {
        private final Handler mHandler;

        public MyContentObserver(Handler handler) {
            super(handler);
            this.mHandler = handler;
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z, Uri uri) {
            String path = uri.getPath();
            String substring = path.substring(path.lastIndexOf(47) + 1);
            if (Settings.Secure.ACCESSIBILITY_CAPTIONING_ENABLED.equals(substring)) {
                CaptioningManager.this.notifyEnabledChanged();
                return;
            }
            if (Settings.Secure.ACCESSIBILITY_CAPTIONING_LOCALE.equals(substring)) {
                CaptioningManager.this.notifyLocaleChanged();
            } else if (Settings.Secure.ACCESSIBILITY_CAPTIONING_FONT_SCALE.equals(substring)) {
                CaptioningManager.this.notifyFontScaleChanged();
            } else {
                this.mHandler.removeCallbacks(CaptioningManager.this.mStyleChangedRunnable);
                this.mHandler.post(CaptioningManager.this.mStyleChangedRunnable);
            }
        }
    }

    /* loaded from: /home/user/work/dex/classes2.dex */
    public static final class CaptionStyle {
        private static final int COLOR_NONE_OPAQUE = 255;
        public static final int COLOR_UNSPECIFIED = 16777215;
        public static final int EDGE_TYPE_DEPRESSED = 4;
        public static final int EDGE_TYPE_DROP_SHADOW = 2;
        public static final int EDGE_TYPE_NONE = 0;
        public static final int EDGE_TYPE_OUTLINE = 1;
        public static final int EDGE_TYPE_RAISED = 3;
        public static final int EDGE_TYPE_UNSPECIFIED = -1;
        public static final int PRESET_CUSTOM = -1;
        public final int backgroundColor;
        public final int edgeColor;
        public final int edgeType;
        public final int foregroundColor;
        private final boolean mHasBackgroundColor;
        private final boolean mHasEdgeColor;
        private final boolean mHasEdgeType;
        private final boolean mHasForegroundColor;
        private final boolean mHasWindowColor;
        private Typeface mParsedTypeface;
        public final String mRawTypeface;
        public final int windowColor;
        private static final CaptionStyle WHITE_ON_BLACK = new CaptionStyle(-1, -16777216, 0, -16777216, 255, null);
        private static final CaptionStyle BLACK_ON_WHITE = new CaptionStyle(-16777216, -1, 0, -16777216, 255, null);
        private static final CaptionStyle YELLOW_ON_BLACK = new CaptionStyle(InputDevice.SOURCE_ANY, -16777216, 0, -16777216, 255, null);
        private static final CaptionStyle YELLOW_ON_BLUE = new CaptionStyle(InputDevice.SOURCE_ANY, QuoteSpan.STANDARD_COLOR, 0, -16777216, 255, null);
        private static final CaptionStyle UNSPECIFIED = new CaptionStyle(16777215, 16777215, -1, 16777215, 16777215, null);
        public static final CaptionStyle[] PRESETS = {WHITE_ON_BLACK, BLACK_ON_WHITE, YELLOW_ON_BLACK, YELLOW_ON_BLUE, UNSPECIFIED};
        private static final CaptionStyle DEFAULT_CUSTOM = WHITE_ON_BLACK;
        public static final CaptionStyle DEFAULT = WHITE_ON_BLACK;

        public static boolean hasColor(int i) {
            return (i >>> 24) != 0 || (i & 16776960) == 0;
        }

        private CaptionStyle(int i, int i2, int i3, int i4, int i5, String str) {
            this.mHasForegroundColor = hasColor(i);
            this.mHasBackgroundColor = hasColor(i2);
            this.mHasEdgeType = i3 != -1;
            this.mHasEdgeColor = hasColor(i4);
            this.mHasWindowColor = hasColor(i5);
            this.foregroundColor = this.mHasForegroundColor ? i : -1;
            this.backgroundColor = this.mHasBackgroundColor ? i2 : -16777216;
            this.edgeType = this.mHasEdgeType ? i3 : 0;
            this.edgeColor = this.mHasEdgeColor ? i4 : -16777216;
            this.windowColor = this.mHasWindowColor ? i5 : 255;
            this.mRawTypeface = str;
        }

        public CaptionStyle applyStyle(CaptionStyle captionStyle) {
            return new CaptionStyle(captionStyle.hasForegroundColor() ? captionStyle.foregroundColor : this.foregroundColor, captionStyle.hasBackgroundColor() ? captionStyle.backgroundColor : this.backgroundColor, captionStyle.hasEdgeType() ? captionStyle.edgeType : this.edgeType, captionStyle.hasEdgeColor() ? captionStyle.edgeColor : this.edgeColor, captionStyle.hasWindowColor() ? captionStyle.windowColor : this.windowColor, captionStyle.mRawTypeface != null ? captionStyle.mRawTypeface : this.mRawTypeface);
        }

        public boolean hasBackgroundColor() {
            return this.mHasBackgroundColor;
        }

        public boolean hasForegroundColor() {
            return this.mHasForegroundColor;
        }

        public boolean hasEdgeType() {
            return this.mHasEdgeType;
        }

        public boolean hasEdgeColor() {
            return this.mHasEdgeColor;
        }

        public boolean hasWindowColor() {
            return this.mHasWindowColor;
        }

        public Typeface getTypeface() {
            if (this.mParsedTypeface == null && !TextUtils.isEmpty(this.mRawTypeface)) {
                this.mParsedTypeface = Typeface.create(this.mRawTypeface, 0);
            }
            return this.mParsedTypeface;
        }

        public static CaptionStyle getCustomStyle(ContentResolver contentResolver) {
            CaptionStyle captionStyle = DEFAULT_CUSTOM;
            int i = Settings.Secure.getInt(contentResolver, Settings.Secure.ACCESSIBILITY_CAPTIONING_FOREGROUND_COLOR, captionStyle.foregroundColor);
            int i2 = Settings.Secure.getInt(contentResolver, Settings.Secure.ACCESSIBILITY_CAPTIONING_BACKGROUND_COLOR, captionStyle.backgroundColor);
            int i3 = Settings.Secure.getInt(contentResolver, Settings.Secure.ACCESSIBILITY_CAPTIONING_EDGE_TYPE, captionStyle.edgeType);
            int i4 = Settings.Secure.getInt(contentResolver, Settings.Secure.ACCESSIBILITY_CAPTIONING_EDGE_COLOR, captionStyle.edgeColor);
            int i5 = Settings.Secure.getInt(contentResolver, Settings.Secure.ACCESSIBILITY_CAPTIONING_WINDOW_COLOR, captionStyle.windowColor);
            String string = Settings.Secure.getString(contentResolver, Settings.Secure.ACCESSIBILITY_CAPTIONING_TYPEFACE);
            if (string == null) {
                string = captionStyle.mRawTypeface;
            }
            return new CaptionStyle(i, i2, i3, i4, i5, string);
        }
    }
}
