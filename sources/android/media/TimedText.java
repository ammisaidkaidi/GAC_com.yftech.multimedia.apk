package android.media;

import android.graphics.Rect;
import android.os.Parcel;
import android.os.SystemProperties;
import android.util.Log;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Set;

/* loaded from: /home/user/work/dex/classes.dex */
public final class TimedText {
    private static final int FIRST_PRIVATE_KEY = 101;
    private static final int FIRST_PUBLIC_KEY = 1;
    private static final int KEY_BACKGROUND_COLOR_RGBA = 3;
    private static final int KEY_DISPLAY_FLAGS = 1;
    private static final int KEY_END_CHAR = 104;
    private static final int KEY_FONT_ID = 105;
    private static final int KEY_FONT_SIZE = 106;
    private static final int KEY_GLOBAL_SETTING = 101;
    private static final int KEY_HIGHLIGHT_COLOR_RGBA = 4;
    private static final int KEY_LOCAL_SETTING = 102;
    private static final int KEY_SCROLL_DELAY = 5;
    private static final int KEY_START_CHAR = 103;
    private static final int KEY_START_TIME = 7;
    private static final int KEY_STRUCT_BITMAP = 17;
    private static final int KEY_STRUCT_BITMAP_HEIGHT = 19;
    private static final int KEY_STRUCT_BITMAP_INDEX = 20;
    private static final int KEY_STRUCT_BITMAP_WIDTH = 18;
    private static final int KEY_STRUCT_BLINKING_TEXT_LIST = 8;
    private static final int KEY_STRUCT_FONT_LIST = 9;
    private static final int KEY_STRUCT_HIGHLIGHT_LIST = 10;
    private static final int KEY_STRUCT_HYPER_TEXT_LIST = 11;
    private static final int KEY_STRUCT_JUSTIFICATION = 15;
    private static final int KEY_STRUCT_KARAOKE_LIST = 12;
    private static final int KEY_STRUCT_STYLE_LIST = 13;
    private static final int KEY_STRUCT_TEXT = 16;
    private static final int KEY_STRUCT_TEXT_POS = 14;
    private static final int KEY_STYLE_FLAGS = 2;
    private static final int KEY_TEXT_COLOR_RGBA = 107;
    private static final int KEY_WRAP_TEXT = 6;
    private static final int LAST_PRIVATE_KEY = 107;
    private static final int LAST_PUBLIC_KEY = 16;
    private static final String TAG = "TimedText";
    private Justification mJustification;
    private static boolean DEBUG = SystemProperties.getBoolean("persist.timedtext.log.on", false);
    private static boolean ATC_AOSP_ENHANCEMENT = SystemProperties.getBoolean("ro.atc.aosp_enhancement", false);
    private final HashMap<Integer, Object> mKeyObjectMap = new HashMap<>();
    private int mDisplayFlags = -1;
    private int mBackgroundColorRGBA = -1;
    private int mHighlightColorRGBA = -1;
    private int mScrollDelay = -1;
    private int mWrapText = -1;
    private List<CharPos> mBlinkingPosList = null;
    private List<CharPos> mHighlightPosList = null;
    private List<Karaoke> mKaraokeList = null;
    private List<Font> mFontList = null;
    private List<Style> mStyleList = null;
    private List<HyperText> mHyperTextList = null;
    private Rect mTextBounds = null;
    private String mTextChars = null;

    /* loaded from: /home/user/work/dex/classes.dex */
    public static final class CharPos {
        public final int endChar;
        public final int startChar;

        public CharPos(int i, int i2) {
            this.startChar = i;
            this.endChar = i2;
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static final class Justification {
        public final int horizontalJustification;
        public final int verticalJustification;

        public Justification(int i, int i2) {
            this.horizontalJustification = i;
            this.verticalJustification = i2;
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static final class Style {
        public final int colorRGBA;
        public final int endChar;
        public final int fontID;
        public final int fontSize;
        public final boolean isBold;
        public final boolean isItalic;
        public final boolean isUnderlined;
        public final int startChar;

        public Style(int i, int i2, int i3, boolean z, boolean z2, boolean z3, int i4, int i5) {
            this.startChar = i;
            this.endChar = i2;
            this.fontID = i3;
            this.isBold = z;
            this.isItalic = z2;
            this.isUnderlined = z3;
            this.fontSize = i4;
            this.colorRGBA = i5;
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static final class Font {
        public final int ID;
        public final String name;

        public Font(int i, String str) {
            this.ID = i;
            this.name = str;
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static final class Karaoke {
        public final int endChar;
        public final int endTimeMs;
        public final int startChar;
        public final int startTimeMs;

        public Karaoke(int i, int i2, int i3, int i4) {
            this.startTimeMs = i;
            this.endTimeMs = i2;
            this.startChar = i3;
            this.endChar = i4;
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static final class HyperText {
        public final String URL;
        public final String altString;
        public final int endChar;
        public final int startChar;

        public HyperText(int i, int i2, String str, String str2) {
            this.startChar = i;
            this.endChar = i2;
            this.URL = str;
            this.altString = str2;
        }
    }

    public TimedText(Parcel parcel) {
        if (parseParcel(parcel)) {
            return;
        }
        this.mKeyObjectMap.clear();
        throw new IllegalArgumentException("parseParcel() fails");
    }

    public String getText() {
        return this.mTextChars;
    }

    public Rect getBounds() {
        return this.mTextBounds;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:33:0x00fd. Please report as an issue. */
    private boolean parseParcel(Parcel parcel) {
        Object valueOf;
        parcel.setDataPosition(0);
        if (parcel.dataAvail() == 0) {
            Log.w(TAG, "Invalid timed text parcel size");
            return false;
        }
        int readInt = parcel.readInt();
        if (readInt == 102) {
            int readInt2 = parcel.readInt();
            if (readInt2 != 7) {
                Log.w(TAG, "Invalid timed text type found 0: " + readInt2);
                return false;
            }
            int readInt3 = parcel.readInt();
            this.mKeyObjectMap.put(Integer.valueOf(readInt2), Integer.valueOf(readInt3));
            if (DEBUG) {
                Log.d(TAG, "timed text timeMs:" + readInt3);
            }
            int readInt4 = parcel.readInt();
            if (readInt4 != 16) {
                Log.w(TAG, "Invalid timed text type found 1: " + readInt4);
                return false;
            }
            parcel.readInt();
            byte[] createByteArray = parcel.createByteArray();
            if (createByteArray == null || createByteArray.length == 0) {
                this.mTextChars = null;
            } else {
                this.mTextChars = new String(createByteArray);
            }
            if (DEBUG) {
                Log.d(TAG, "receive timedtext:" + this.mTextChars);
            }
        } else if (readInt != 101) {
            Log.w(TAG, "Invalid timed text key found 0: " + readInt);
            return false;
        }
        while (parcel.dataAvail() > 0) {
            int readInt5 = parcel.readInt();
            if (!isValidKey(readInt5)) {
                Log.w(TAG, "Invalid timed text key found 1: " + readInt5);
                return false;
            }
            switch (readInt5) {
                case 1:
                    this.mDisplayFlags = parcel.readInt();
                    valueOf = Integer.valueOf(this.mDisplayFlags);
                    break;
                case 2:
                case 7:
                default:
                    if (ATC_AOSP_ENHANCEMENT && readInt5 == 17) {
                        int readInt6 = parcel.readInt();
                        int readInt7 = parcel.readInt();
                        int readInt8 = parcel.readInt();
                        if (DEBUG) {
                            Log.d(TAG, "receive vob sub, width:" + readInt6 + ", height:" + readInt7 + ", index:" + readInt8);
                        }
                        if (!this.mKeyObjectMap.containsKey(18)) {
                            this.mKeyObjectMap.put(18, Integer.valueOf(readInt6));
                        }
                        if (!this.mKeyObjectMap.containsKey(19)) {
                            this.mKeyObjectMap.put(19, Integer.valueOf(readInt7));
                        }
                        if (!this.mKeyObjectMap.containsKey(20)) {
                            this.mKeyObjectMap.put(20, Integer.valueOf(readInt8));
                        }
                    }
                    valueOf = null;
                    break;
                case 3:
                    this.mBackgroundColorRGBA = parcel.readInt();
                    valueOf = Integer.valueOf(this.mBackgroundColorRGBA);
                    break;
                case 4:
                    this.mHighlightColorRGBA = parcel.readInt();
                    valueOf = Integer.valueOf(this.mHighlightColorRGBA);
                    break;
                case 5:
                    this.mScrollDelay = parcel.readInt();
                    valueOf = Integer.valueOf(this.mScrollDelay);
                    break;
                case 6:
                    this.mWrapText = parcel.readInt();
                    valueOf = Integer.valueOf(this.mWrapText);
                    break;
                case 8:
                    readBlinkingText(parcel);
                    valueOf = this.mBlinkingPosList;
                    break;
                case 9:
                    readFont(parcel);
                    valueOf = this.mFontList;
                    break;
                case 10:
                    readHighlight(parcel);
                    valueOf = this.mHighlightPosList;
                    break;
                case 11:
                    readHyperText(parcel);
                    valueOf = this.mHyperTextList;
                    break;
                case 12:
                    readKaraoke(parcel);
                    valueOf = this.mKaraokeList;
                    break;
                case 13:
                    readStyle(parcel);
                    valueOf = this.mStyleList;
                    break;
                case 14:
                    this.mTextBounds = new Rect(parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt());
                    valueOf = null;
                    break;
                case 15:
                    this.mJustification = new Justification(parcel.readInt(), parcel.readInt());
                    valueOf = this.mJustification;
                    break;
            }
            if (valueOf != null) {
                if (this.mKeyObjectMap.containsKey(Integer.valueOf(readInt5))) {
                    this.mKeyObjectMap.remove(Integer.valueOf(readInt5));
                }
                this.mKeyObjectMap.put(Integer.valueOf(readInt5), valueOf);
            }
            if (ATC_AOSP_ENHANCEMENT && readInt5 == 17) {
                return true;
            }
        }
        return true;
    }

    private void readStyle(Parcel parcel) {
        int i = -1;
        int i2 = -1;
        int i3 = -1;
        int i4 = -1;
        int i5 = -1;
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        boolean z4 = false;
        while (!z && parcel.dataAvail() > 0) {
            int readInt = parcel.readInt();
            if (readInt != 2) {
                switch (readInt) {
                    case 103:
                        i = parcel.readInt();
                        break;
                    case 104:
                        i2 = parcel.readInt();
                        break;
                    case 105:
                        i3 = parcel.readInt();
                        break;
                    case 106:
                        i4 = parcel.readInt();
                        break;
                    case 107:
                        i5 = parcel.readInt();
                        break;
                    default:
                        parcel.setDataPosition(parcel.dataPosition() - 4);
                        z = true;
                        break;
                }
            } else {
                int readInt2 = parcel.readInt();
                z2 = readInt2 % 2 == 1;
                z3 = readInt2 % 4 >= 2;
                z4 = readInt2 / 4 == 1;
            }
        }
        Style style = new Style(i, i2, i3, z2, z3, z4, i4, i5);
        if (this.mStyleList == null) {
            this.mStyleList = new ArrayList();
        }
        this.mStyleList.add(style);
    }

    private void readFont(Parcel parcel) {
        int readInt = parcel.readInt();
        for (int i = 0; i < readInt; i++) {
            Font font = new Font(parcel.readInt(), new String(parcel.createByteArray(), 0, parcel.readInt()));
            if (this.mFontList == null) {
                this.mFontList = new ArrayList();
            }
            this.mFontList.add(font);
        }
    }

    private void readHighlight(Parcel parcel) {
        CharPos charPos = new CharPos(parcel.readInt(), parcel.readInt());
        if (this.mHighlightPosList == null) {
            this.mHighlightPosList = new ArrayList();
        }
        this.mHighlightPosList.add(charPos);
    }

    private void readKaraoke(Parcel parcel) {
        int readInt = parcel.readInt();
        for (int i = 0; i < readInt; i++) {
            Karaoke karaoke = new Karaoke(parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt());
            if (this.mKaraokeList == null) {
                this.mKaraokeList = new ArrayList();
            }
            this.mKaraokeList.add(karaoke);
        }
    }

    private void readHyperText(Parcel parcel) {
        HyperText hyperText = new HyperText(parcel.readInt(), parcel.readInt(), new String(parcel.createByteArray(), 0, parcel.readInt()), new String(parcel.createByteArray(), 0, parcel.readInt()));
        if (this.mHyperTextList == null) {
            this.mHyperTextList = new ArrayList();
        }
        this.mHyperTextList.add(hyperText);
    }

    private void readBlinkingText(Parcel parcel) {
        CharPos charPos = new CharPos(parcel.readInt(), parcel.readInt());
        if (this.mBlinkingPosList == null) {
            this.mBlinkingPosList = new ArrayList();
        }
        this.mBlinkingPosList.add(charPos);
    }

    private boolean isValidKey(int i) {
        if ((i >= 1 && i <= 16) || (i >= 101 && i <= 107)) {
            return true;
        }
        if (ATC_AOSP_ENHANCEMENT) {
            return i == 17 || i == 18 || i == 19 || i == 20;
        }
        return false;
    }

    private boolean containsKey(int i) {
        return isValidKey(i) && this.mKeyObjectMap.containsKey(Integer.valueOf(i));
    }

    private Set keySet() {
        return this.mKeyObjectMap.keySet();
    }

    private Object getObject(int i) {
        if (containsKey(i)) {
            return this.mKeyObjectMap.get(Integer.valueOf(i));
        }
        throw new IllegalArgumentException("Invalid key: " + i);
    }
}
