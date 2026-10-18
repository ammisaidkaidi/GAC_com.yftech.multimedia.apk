package android.media;

import android.net.wifi.WifiEnterpriseConfig;
import android.util.Log;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: WebVttRenderer.java */
/* loaded from: /home/user/work/dex/classes.dex */
public class Tokenizer {
    private static final String TAG = "Tokenizer";
    private int mHandledLen;
    private String mLine;
    private OnTokenListener mListener;
    private TokenizerPhase mPhase;
    private TokenizerPhase mDataTokenizer = new DataTokenizer();
    private TokenizerPhase mTagTokenizer = new TagTokenizer();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: WebVttRenderer.java */
    /* loaded from: /home/user/work/dex/classes.dex */
    public interface OnTokenListener {
        void onData(String str);

        void onEnd(String str);

        void onLineEnd();

        void onStart(String str, String[] strArr, String str2);

        void onTimeStamp(long j);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: WebVttRenderer.java */
    /* loaded from: /home/user/work/dex/classes.dex */
    public interface TokenizerPhase {
        TokenizerPhase start();

        void tokenize();
    }

    static /* synthetic */ int access$108(Tokenizer tokenizer) {
        int i = tokenizer.mHandledLen;
        tokenizer.mHandledLen = i + 1;
        return i;
    }

    static /* synthetic */ int access$112(Tokenizer tokenizer, int i) {
        int i2 = tokenizer.mHandledLen + i;
        tokenizer.mHandledLen = i2;
        return i2;
    }

    /* compiled from: WebVttRenderer.java */
    /* loaded from: /home/user/work/dex/classes.dex */
    class DataTokenizer implements TokenizerPhase {
        private StringBuilder mData;

        DataTokenizer() {
        }

        @Override // android.media.Tokenizer.TokenizerPhase
        public TokenizerPhase start() {
            this.mData = new StringBuilder();
            return this;
        }

        private boolean replaceEscape(String str, String str2, int i) {
            if (!Tokenizer.this.mLine.startsWith(str, i)) {
                return false;
            }
            this.mData.append(Tokenizer.this.mLine.substring(Tokenizer.this.mHandledLen, i));
            this.mData.append(str2);
            Tokenizer.this.mHandledLen = i + str.length();
            int unused = Tokenizer.this.mHandledLen;
            return true;
        }

        @Override // android.media.Tokenizer.TokenizerPhase
        public void tokenize() {
            int length = Tokenizer.this.mLine.length();
            int i = Tokenizer.this.mHandledLen;
            while (true) {
                if (i >= Tokenizer.this.mLine.length()) {
                    break;
                }
                if (Tokenizer.this.mLine.charAt(i) != '&') {
                    if (Tokenizer.this.mLine.charAt(i) == '<') {
                        Tokenizer.this.mPhase = Tokenizer.this.mTagTokenizer.start();
                        length = i;
                        break;
                    }
                } else if (!replaceEscape("&amp;", "&", i) && !replaceEscape("&lt;", "<", i) && !replaceEscape("&gt;", ">", i) && !replaceEscape("&lrm;", "\u200e", i) && !replaceEscape("&rlm;", "\u200f", i)) {
                    replaceEscape("&nbsp;", " ", i);
                }
                i++;
            }
            this.mData.append(Tokenizer.this.mLine.substring(Tokenizer.this.mHandledLen, length));
            Tokenizer.this.mListener.onData(this.mData.toString());
            this.mData.delete(0, this.mData.length());
            Tokenizer.this.mHandledLen = length;
        }
    }

    /* compiled from: WebVttRenderer.java */
    /* loaded from: /home/user/work/dex/classes.dex */
    class TagTokenizer implements TokenizerPhase {
        private String mAnnotation;
        private boolean mAtAnnotation;
        private String mName;

        TagTokenizer() {
        }

        @Override // android.media.Tokenizer.TokenizerPhase
        public TokenizerPhase start() {
            this.mAnnotation = "";
            this.mName = "";
            this.mAtAnnotation = false;
            return this;
        }

        @Override // android.media.Tokenizer.TokenizerPhase
        public void tokenize() {
            if (!this.mAtAnnotation) {
                Tokenizer.access$108(Tokenizer.this);
            }
            if (Tokenizer.this.mHandledLen < Tokenizer.this.mLine.length()) {
                String[] split = (this.mAtAnnotation || Tokenizer.this.mLine.charAt(Tokenizer.this.mHandledLen) == '/') ? Tokenizer.this.mLine.substring(Tokenizer.this.mHandledLen).split(">") : Tokenizer.this.mLine.substring(Tokenizer.this.mHandledLen).split("[\t\f >]");
                String substring = Tokenizer.this.mLine.substring(Tokenizer.this.mHandledLen, Tokenizer.this.mHandledLen + split[0].length());
                Tokenizer.access$112(Tokenizer.this, split[0].length());
                if (this.mAtAnnotation) {
                    this.mAnnotation += WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER + substring;
                } else {
                    this.mName = substring;
                }
            }
            this.mAtAnnotation = true;
            if (Tokenizer.this.mHandledLen >= Tokenizer.this.mLine.length() || Tokenizer.this.mLine.charAt(Tokenizer.this.mHandledLen) != '>') {
                return;
            }
            yield_tag();
            Tokenizer.this.mPhase = Tokenizer.this.mDataTokenizer.start();
            Tokenizer.access$108(Tokenizer.this);
        }

        private void yield_tag() {
            if (this.mName.startsWith("/")) {
                Tokenizer.this.mListener.onEnd(this.mName.substring(1));
                return;
            }
            if (this.mName.length() > 0 && Character.isDigit(this.mName.charAt(0))) {
                try {
                    Tokenizer.this.mListener.onTimeStamp(WebVttParser.parseTimestampMs(this.mName));
                    return;
                } catch (NumberFormatException unused) {
                    Log.d(Tokenizer.TAG, "invalid timestamp tag: <" + this.mName + ">");
                    return;
                }
            }
            this.mAnnotation = this.mAnnotation.replaceAll("\\s+", WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER);
            if (this.mAnnotation.startsWith(WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER)) {
                this.mAnnotation = this.mAnnotation.substring(1);
            }
            if (this.mAnnotation.endsWith(WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER)) {
                this.mAnnotation = this.mAnnotation.substring(0, this.mAnnotation.length() - 1);
            }
            String[] strArr = null;
            int indexOf = this.mName.indexOf(46);
            if (indexOf >= 0) {
                strArr = this.mName.substring(indexOf + 1).split("\\.");
                this.mName = this.mName.substring(0, indexOf);
            }
            Tokenizer.this.mListener.onStart(this.mName, strArr, this.mAnnotation);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Tokenizer(OnTokenListener onTokenListener) {
        reset();
        this.mListener = onTokenListener;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void reset() {
        this.mPhase = this.mDataTokenizer.start();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void tokenize(String str) {
        this.mHandledLen = 0;
        this.mLine = str;
        while (this.mHandledLen < this.mLine.length()) {
            this.mPhase.tokenize();
        }
        if (this.mPhase instanceof TagTokenizer) {
            return;
        }
        this.mListener.onLineEnd();
    }
}
