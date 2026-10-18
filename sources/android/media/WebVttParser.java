package android.media;

import android.app.Instrumentation;
import android.net.wifi.WifiEnterpriseConfig;
import android.util.Log;
import java.util.Vector;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: WebVttRenderer.java */
/* loaded from: /home/user/work/dex/classes.dex */
public class WebVttParser {
    private static final String TAG = "WebVttParser";
    private TextTrackCue mCue;
    private WebVttCueListener mListener;
    private final Phase mSkipRest = new Phase() { // from class: android.media.WebVttParser.1
        @Override // android.media.WebVttParser.Phase
        public void parse(String str) {
        }
    };
    private final Phase mParseStart = new Phase() { // from class: android.media.WebVttParser.2
        @Override // android.media.WebVttParser.Phase
        public void parse(String str) {
            if (str.startsWith("\ufeff")) {
                str = str.substring(1);
            }
            if (!str.equals("WEBVTT") && !str.startsWith("WEBVTT ") && !str.startsWith("WEBVTT\t")) {
                WebVttParser.this.log_warning("Not a WEBVTT header", str);
                WebVttParser.this.mPhase = WebVttParser.this.mSkipRest;
            } else {
                WebVttParser.this.mPhase = WebVttParser.this.mParseHeader;
            }
        }
    };
    private final Phase mParseHeader = new Phase() { // from class: android.media.WebVttParser.3
        static final /* synthetic */ boolean $assertionsDisabled = false;

        TextTrackRegion parseRegion(String str) {
            TextTrackRegion textTrackRegion = new TextTrackRegion();
            for (String str2 : str.split(" +")) {
                int indexOf = str2.indexOf(61);
                if (indexOf > 0 && indexOf != str2.length() - 1) {
                    String substring = str2.substring(0, indexOf);
                    String substring2 = str2.substring(indexOf + 1);
                    if (substring.equals(Instrumentation.REPORT_KEY_IDENTIFIER)) {
                        textTrackRegion.mId = substring2;
                    } else if (substring.equals(MediaFormat.KEY_WIDTH)) {
                        try {
                            textTrackRegion.mWidth = WebVttParser.parseFloatPercentage(substring2);
                        } catch (NumberFormatException e) {
                            WebVttParser.this.log_warning("region setting", substring, "has invalid value", e.getMessage(), substring2);
                        }
                    } else if (substring.equals("lines")) {
                        if (substring2.matches(".*[^0-9].*")) {
                            WebVttParser.this.log_warning("lines", substring, "contains an invalid character", substring2);
                        } else {
                            try {
                                textTrackRegion.mLines = Integer.parseInt(substring2);
                            } catch (NumberFormatException unused) {
                                WebVttParser.this.log_warning("region setting", substring, "is not numeric", substring2);
                            }
                        }
                    } else if (substring.equals("regionanchor") || substring.equals("viewportanchor")) {
                        int indexOf2 = substring2.indexOf(",");
                        if (indexOf2 < 0) {
                            WebVttParser.this.log_warning("region setting", substring, "contains no comma", substring2);
                        } else {
                            String substring3 = substring2.substring(0, indexOf2);
                            String substring4 = substring2.substring(indexOf2 + 1);
                            try {
                                float parseFloatPercentage = WebVttParser.parseFloatPercentage(substring3);
                                try {
                                    float parseFloatPercentage2 = WebVttParser.parseFloatPercentage(substring4);
                                    if (substring.charAt(0) == 'r') {
                                        textTrackRegion.mAnchorPointX = parseFloatPercentage;
                                        textTrackRegion.mAnchorPointY = parseFloatPercentage2;
                                    } else {
                                        textTrackRegion.mViewportAnchorPointX = parseFloatPercentage;
                                        textTrackRegion.mViewportAnchorPointY = parseFloatPercentage2;
                                    }
                                } catch (NumberFormatException e2) {
                                    WebVttParser.this.log_warning("region setting", substring, "has invalid y component", e2.getMessage(), substring4);
                                }
                            } catch (NumberFormatException e3) {
                                WebVttParser.this.log_warning("region setting", substring, "has invalid x component", e3.getMessage(), substring3);
                            }
                        }
                    } else if (substring.equals("scroll")) {
                        if (!substring2.equals("up")) {
                            WebVttParser.this.log_warning("region setting", substring, "has invalid value", substring2);
                        } else {
                            textTrackRegion.mScrollValue = MediaFile.FILE_TYPE_CR2;
                        }
                    }
                }
            }
            return textTrackRegion;
        }

        @Override // android.media.WebVttParser.Phase
        public void parse(String str) {
            if (str.length() == 0) {
                WebVttParser.this.mPhase = WebVttParser.this.mParseCueId;
                return;
            }
            if (str.contains("-->")) {
                WebVttParser.this.mPhase = WebVttParser.this.mParseCueTime;
                WebVttParser.this.mPhase.parse(str);
                return;
            }
            int indexOf = str.indexOf(58);
            if (indexOf <= 0 || indexOf >= str.length() - 1) {
                WebVttParser.this.log_warning("meta data header has invalid format", str);
            }
            String substring = str.substring(0, indexOf);
            String substring2 = str.substring(indexOf + 1);
            if (substring.equals("Region")) {
                WebVttParser.this.mListener.onRegionParsed(parseRegion(substring2));
            }
        }
    };
    private final Phase mParseCueId = new Phase() { // from class: android.media.WebVttParser.4
        static final /* synthetic */ boolean $assertionsDisabled = false;

        @Override // android.media.WebVttParser.Phase
        public void parse(String str) {
            if (str.length() == 0) {
                return;
            }
            if (str.equals("NOTE") || str.startsWith("NOTE ")) {
                WebVttParser.this.mPhase = WebVttParser.this.mParseCueText;
            }
            WebVttParser.this.mCue = new TextTrackCue();
            WebVttParser.this.mCueTexts.clear();
            WebVttParser.this.mPhase = WebVttParser.this.mParseCueTime;
            if (str.contains("-->")) {
                WebVttParser.this.mPhase.parse(str);
            } else {
                WebVttParser.this.mCue.mId = str;
            }
        }
    };
    private final Phase mParseCueTime = new Phase() { // from class: android.media.WebVttParser.5
        static final /* synthetic */ boolean $assertionsDisabled = false;

        @Override // android.media.WebVttParser.Phase
        public void parse(String str) {
            int indexOf = str.indexOf("-->");
            if (indexOf < 0) {
                WebVttParser.this.mCue = null;
                WebVttParser.this.mPhase = WebVttParser.this.mParseCueId;
                return;
            }
            String trim = str.substring(0, indexOf).trim();
            String replaceFirst = str.substring(indexOf + 3).replaceFirst("^\\s+", "").replaceFirst("\\s+", WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER);
            int indexOf2 = replaceFirst.indexOf(32);
            String substring = indexOf2 > 0 ? replaceFirst.substring(0, indexOf2) : replaceFirst;
            String substring2 = indexOf2 > 0 ? replaceFirst.substring(indexOf2 + 1) : "";
            WebVttParser.this.mCue.mStartTimeMs = WebVttParser.parseTimestampMs(trim);
            WebVttParser.this.mCue.mEndTimeMs = WebVttParser.parseTimestampMs(substring);
            for (String str2 : substring2.split(" +")) {
                int indexOf3 = str2.indexOf(58);
                if (indexOf3 > 0 && indexOf3 != str2.length() - 1) {
                    String substring3 = str2.substring(0, indexOf3);
                    String substring4 = str2.substring(indexOf3 + 1);
                    if (substring3.equals(TtmlUtils.TAG_REGION)) {
                        WebVttParser.this.mCue.mRegionId = substring4;
                    } else if (substring3.equals("vertical")) {
                        if (substring4.equals("rl")) {
                            WebVttParser.this.mCue.mWritingDirection = 101;
                        } else if (substring4.equals("lr")) {
                            WebVttParser.this.mCue.mWritingDirection = 102;
                        } else {
                            WebVttParser.this.log_warning("cue setting", substring3, "has invalid value", substring4);
                        }
                    } else if (substring3.equals("line")) {
                        try {
                            if (substring4.endsWith("%")) {
                                WebVttParser.this.mCue.mSnapToLines = false;
                                WebVttParser.this.mCue.mLinePosition = Integer.valueOf(WebVttParser.parseIntPercentage(substring4));
                            } else if (substring4.matches(".*[^0-9].*")) {
                                WebVttParser.this.log_warning("cue setting", substring3, "contains an invalid character", substring4);
                            } else {
                                WebVttParser.this.mCue.mSnapToLines = true;
                                WebVttParser.this.mCue.mLinePosition = Integer.valueOf(Integer.parseInt(substring4));
                            }
                        } catch (NumberFormatException unused) {
                            WebVttParser.this.log_warning("cue setting", substring3, "is not numeric or percentage", substring4);
                        }
                    } else if (substring3.equals("position")) {
                        try {
                            WebVttParser.this.mCue.mTextPosition = WebVttParser.parseIntPercentage(substring4);
                        } catch (NumberFormatException unused2) {
                            WebVttParser.this.log_warning("cue setting", substring3, "is not numeric or percentage", substring4);
                        }
                    } else if (substring3.equals("size")) {
                        try {
                            WebVttParser.this.mCue.mSize = WebVttParser.parseIntPercentage(substring4);
                        } catch (NumberFormatException unused3) {
                            WebVttParser.this.log_warning("cue setting", substring3, "is not numeric or percentage", substring4);
                        }
                    } else if (substring3.equals("align")) {
                        if (substring4.equals("start")) {
                            WebVttParser.this.mCue.mAlignment = 201;
                        } else if (substring4.equals("middle")) {
                            WebVttParser.this.mCue.mAlignment = 200;
                        } else if (substring4.equals(TtmlUtils.ATTR_END)) {
                            WebVttParser.this.mCue.mAlignment = 202;
                        } else if (substring4.equals("left")) {
                            WebVttParser.this.mCue.mAlignment = 203;
                        } else if (substring4.equals("right")) {
                            WebVttParser.this.mCue.mAlignment = 204;
                        } else {
                            WebVttParser.this.log_warning("cue setting", substring3, "has invalid value", substring4);
                        }
                    }
                }
            }
            if (WebVttParser.this.mCue.mLinePosition != null || WebVttParser.this.mCue.mSize != 100 || WebVttParser.this.mCue.mWritingDirection != 100) {
                WebVttParser.this.mCue.mRegionId = "";
            }
            WebVttParser.this.mPhase = WebVttParser.this.mParseCueText;
        }
    };
    private final Phase mParseCueText = new Phase() { // from class: android.media.WebVttParser.6
        @Override // android.media.WebVttParser.Phase
        public void parse(String str) {
            if (str.length() != 0) {
                if (WebVttParser.this.mCue != null) {
                    WebVttParser.this.mCueTexts.add(str);
                }
            } else {
                WebVttParser.this.yieldCue();
                WebVttParser.this.mPhase = WebVttParser.this.mParseCueId;
            }
        }
    };
    private Phase mPhase = this.mParseStart;
    private String mBuffer = "";
    private Vector<String> mCueTexts = new Vector<>();

    /* compiled from: WebVttRenderer.java */
    /* loaded from: /home/user/work/dex/classes.dex */
    interface Phase {
        void parse(String str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public WebVttParser(WebVttCueListener webVttCueListener) {
        this.mListener = webVttCueListener;
    }

    public static float parseFloatPercentage(String str) throws NumberFormatException {
        if (!str.endsWith("%")) {
            throw new NumberFormatException("does not end in %");
        }
        String substring = str.substring(0, str.length() - 1);
        if (substring.matches(".*[^0-9.].*")) {
            throw new NumberFormatException("contains an invalid character");
        }
        try {
            float parseFloat = Float.parseFloat(substring);
            if (parseFloat < 0.0f || parseFloat > 100.0f) {
                throw new NumberFormatException("is out of range");
            }
            return parseFloat;
        } catch (NumberFormatException unused) {
            throw new NumberFormatException("is not a number");
        }
    }

    public static int parseIntPercentage(String str) throws NumberFormatException {
        if (!str.endsWith("%")) {
            throw new NumberFormatException("does not end in %");
        }
        String substring = str.substring(0, str.length() - 1);
        if (substring.matches(".*[^0-9].*")) {
            throw new NumberFormatException("contains an invalid character");
        }
        try {
            int parseInt = Integer.parseInt(substring);
            if (parseInt < 0 || parseInt > 100) {
                throw new NumberFormatException("is out of range");
            }
            return parseInt;
        } catch (NumberFormatException unused) {
            throw new NumberFormatException("is not a number");
        }
    }

    public static long parseTimestampMs(String str) throws NumberFormatException {
        if (!str.matches("(\\d+:)?[0-5]\\d:[0-5]\\d\\.\\d{3}")) {
            throw new NumberFormatException("has invalid format");
        }
        String[] split = str.split("\\.", 2);
        long j = 0;
        for (String str2 : split[0].split(":")) {
            j = (j * 60) + Long.parseLong(str2);
        }
        return (j * 1000) + Long.parseLong(split[1]);
    }

    public static String timeToString(long j) {
        return String.format("%d:%02d:%02d.%03d", Long.valueOf(j / 3600000), Long.valueOf((j / 60000) % 60), Long.valueOf((j / 1000) % 60), Long.valueOf(j % 1000));
    }

    public void parse(String str) {
        boolean z;
        this.mBuffer = (this.mBuffer + str.replace("\u0000", "�")).replace("\r\n", "\n");
        if (this.mBuffer.endsWith("\r")) {
            this.mBuffer = this.mBuffer.substring(0, this.mBuffer.length() - 1);
            z = true;
        } else {
            z = false;
        }
        String[] split = this.mBuffer.split("[\r\n]");
        for (int i = 0; i < split.length - 1; i++) {
            this.mPhase.parse(split[i]);
        }
        this.mBuffer = split[split.length - 1];
        if (z) {
            this.mBuffer += "\r";
        }
    }

    public void eos() {
        if (this.mBuffer.endsWith("\r")) {
            this.mBuffer = this.mBuffer.substring(0, this.mBuffer.length() - 1);
        }
        this.mPhase.parse(this.mBuffer);
        this.mBuffer = "";
        yieldCue();
        this.mPhase = this.mParseStart;
    }

    public void yieldCue() {
        if (this.mCue != null && this.mCueTexts.size() > 0) {
            this.mCue.mStrings = new String[this.mCueTexts.size()];
            this.mCueTexts.toArray(this.mCue.mStrings);
            this.mCueTexts.clear();
            this.mListener.onCueParsed(this.mCue);
        }
        this.mCue = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void log_warning(String str, String str2, String str3, String str4, String str5) {
        Log.w(getClass().getName(), str + " '" + str2 + "' " + str3 + " ('" + str5 + "' " + str4 + ")");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void log_warning(String str, String str2, String str3, String str4) {
        Log.w(getClass().getName(), str + " '" + str2 + "' " + str3 + " ('" + str4 + "')");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void log_warning(String str, String str2) {
        Log.w(getClass().getName(), str + " ('" + str2 + "')");
    }
}
