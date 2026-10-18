package android.text;

import android.R;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.provider.UserDictionary;
import android.view.View;
import android.view.textclassifier.TextClassifier;
import com.android.internal.util.XmlUtils;
import java.io.IOException;
import java.util.Locale;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: /home/user/work/dex/classes2.dex */
public class AutoText {
    private static final int DEFAULT = 14337;
    private static final int INCREMENT = 1024;
    private static final int RIGHT = 9300;
    private static final int TRIE_C = 0;
    private static final int TRIE_CHILD = 2;
    private static final int TRIE_NEXT = 3;
    private static final char TRIE_NULL = 65535;
    private static final int TRIE_OFF = 1;
    private static final int TRIE_ROOT = 0;
    private static final int TRIE_SIZEOF = 4;
    private static AutoText sInstance = new AutoText(Resources.getSystem());
    private static Object sLock = new Object();
    private Locale mLocale;
    private int mSize;
    private String mText;
    private char[] mTrie;
    private char mTrieUsed;

    private AutoText(Resources resources) {
        this.mLocale = resources.getConfiguration().locale;
        init(resources);
    }

    private static AutoText getInstance(View view) {
        AutoText autoText;
        Resources resources = view.getContext().getResources();
        Locale locale = resources.getConfiguration().locale;
        synchronized (sLock) {
            autoText = sInstance;
            if (!locale.equals(autoText.mLocale)) {
                autoText = new AutoText(resources);
                sInstance = autoText;
            }
        }
        return autoText;
    }

    public static String get(CharSequence charSequence, int i, int i2, View view) {
        return getInstance(view).lookup(charSequence, i, i2);
    }

    public static int getSize(View view) {
        return getInstance(view).getSize();
    }

    private int getSize() {
        return this.mSize;
    }

    private String lookup(CharSequence charSequence, int i, int i2) {
        char c = this.mTrie[0];
        while (i < i2) {
            char charAt = charSequence.charAt(i);
            while (true) {
                if (c == 65535) {
                    break;
                }
                if (charAt != this.mTrie[c + 0]) {
                    c = this.mTrie[c + 3];
                } else {
                    if (i == i2 - 1) {
                        int i3 = c + 1;
                        if (this.mTrie[i3] != 65535) {
                            char c2 = this.mTrie[i3];
                            char charAt2 = this.mText.charAt(c2);
                            int i4 = c2 + 1;
                            return this.mText.substring(i4, charAt2 + i4);
                        }
                    }
                    c = this.mTrie[c + 2];
                }
            }
            if (c == 65535) {
                return null;
            }
            i++;
        }
        return null;
    }

    private void init(Resources resources) {
        char length;
        XmlResourceParser xml = resources.getXml(R.xml.autotext);
        StringBuilder sb = new StringBuilder(RIGHT);
        this.mTrie = new char[DEFAULT];
        this.mTrie[0] = TRIE_NULL;
        this.mTrieUsed = (char) 1;
        try {
            try {
                XmlUtils.beginDocument(xml, "words");
                while (true) {
                    XmlUtils.nextElement(xml);
                    String name = xml.getName();
                    if (name == null || !name.equals(UserDictionary.Words.WORD)) {
                        break;
                    }
                    String attributeValue = xml.getAttributeValue(null, "src");
                    if (xml.next() == 4) {
                        String text = xml.getText();
                        if (text.equals(TextClassifier.TYPE_UNKNOWN)) {
                            length = 0;
                        } else {
                            length = (char) sb.length();
                            sb.append((char) text.length());
                            sb.append(text);
                        }
                        add(attributeValue, length);
                    }
                }
                resources.flushLayoutCache();
                xml.close();
                this.mText = sb.toString();
            } catch (IOException e) {
                throw new RuntimeException(e);
            } catch (XmlPullParserException e2) {
                throw new RuntimeException(e2);
            }
        } catch (Throwable th) {
            xml.close();
            throw th;
        }
    }

    private void add(String str, char c) {
        int i;
        boolean z;
        int length = str.length();
        this.mSize++;
        int i2 = 0;
        for (int i3 = 0; i3 < length; i3++) {
            char charAt = str.charAt(i3);
            while (true) {
                if (this.mTrie[i2] == 65535) {
                    i = i2;
                    z = false;
                    break;
                } else if (charAt != this.mTrie[this.mTrie[i2] + 0]) {
                    i2 = this.mTrie[i2] + 3;
                } else if (i3 == length - 1) {
                    this.mTrie[this.mTrie[i2] + 1] = c;
                    return;
                } else {
                    i = this.mTrie[i2] + 2;
                    z = true;
                }
            }
            if (z) {
                i2 = i;
            } else {
                this.mTrie[i] = newTrieNode();
                this.mTrie[this.mTrie[i] + 0] = charAt;
                this.mTrie[this.mTrie[i] + 1] = TRIE_NULL;
                this.mTrie[this.mTrie[i] + 3] = TRIE_NULL;
                this.mTrie[this.mTrie[i] + 2] = TRIE_NULL;
                if (i3 == length - 1) {
                    this.mTrie[this.mTrie[i] + 1] = c;
                    return;
                }
                i2 = this.mTrie[i] + 2;
            }
        }
    }

    private char newTrieNode() {
        if (this.mTrieUsed + 4 > this.mTrie.length) {
            char[] cArr = new char[this.mTrie.length + 1024];
            System.arraycopy(this.mTrie, 0, cArr, 0, this.mTrie.length);
            this.mTrie = cArr;
        }
        char c = this.mTrieUsed;
        this.mTrieUsed = (char) (this.mTrieUsed + 4);
        return c;
    }
}
