package com.android.internal.alsa;

/* loaded from: /home/user/work/dex/classes3.dex */
public class LineTokenizer {
    public static final int kTokenNotFound = -1;
    private final String mDelimiters;

    public LineTokenizer(String str) {
        this.mDelimiters = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int nextToken(String str, int i) {
        int length = str.length();
        while (i < length && this.mDelimiters.indexOf(str.charAt(i)) != -1) {
            i++;
        }
        if (i < length) {
            return i;
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int nextDelimiter(String str, int i) {
        int length = str.length();
        while (i < length && this.mDelimiters.indexOf(str.charAt(i)) == -1) {
            i++;
        }
        if (i < length) {
            return i;
        }
        return -1;
    }
}
