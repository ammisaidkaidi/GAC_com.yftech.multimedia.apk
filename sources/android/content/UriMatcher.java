package android.content;

import android.net.Uri;
import java.util.ArrayList;
import java.util.List;

/* loaded from: /home/user/work/dex/classes.dex */
public class UriMatcher {
    private static final int EXACT = 0;
    public static final int NO_MATCH = -1;
    private static final int NUMBER = 1;
    private static final int TEXT = 2;
    private ArrayList<UriMatcher> mChildren;
    private int mCode;
    private String mText;
    private int mWhich;

    public UriMatcher(int i) {
        this.mCode = i;
        this.mWhich = -1;
        this.mChildren = new ArrayList<>();
        this.mText = null;
    }

    private UriMatcher() {
        this.mCode = -1;
        this.mWhich = -1;
        this.mChildren = new ArrayList<>();
        this.mText = null;
    }

    public void addURI(String str, String str2, int i) {
        if (i < 0) {
            throw new IllegalArgumentException("code " + i + " is invalid: it must be positive");
        }
        String[] strArr = null;
        if (str2 != null) {
            if (str2.length() > 1 && str2.charAt(0) == '/') {
                str2 = str2.substring(1);
            }
            strArr = str2.split("/");
        }
        int length = strArr != null ? strArr.length : 0;
        int i2 = -1;
        while (i2 < length) {
            String str3 = i2 < 0 ? str : strArr[i2];
            ArrayList<UriMatcher> arrayList = this.mChildren;
            int size = arrayList.size();
            int i3 = 0;
            while (true) {
                if (i3 >= size) {
                    break;
                }
                UriMatcher uriMatcher = arrayList.get(i3);
                if (str3.equals(uriMatcher.mText)) {
                    this = uriMatcher;
                    break;
                }
                i3++;
            }
            if (i3 == size) {
                UriMatcher uriMatcher2 = new UriMatcher();
                if (str3.equals("#")) {
                    uriMatcher2.mWhich = 1;
                } else if (str3.equals("*")) {
                    uriMatcher2.mWhich = 2;
                } else {
                    uriMatcher2.mWhich = 0;
                }
                uriMatcher2.mText = str3;
                this.mChildren.add(uriMatcher2);
                this = uriMatcher2;
            }
            i2++;
        }
        this.mCode = i;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x005d, code lost:
    
        if (r9.mText.equals(r4) != false) goto L31;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:17:0x003c. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:36:0x006a A[LOOP:0: B:9:0x0016->B:36:0x006a, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0069 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int match(Uri uri) {
        int i;
        List<String> pathSegments = uri.getPathSegments();
        int size = pathSegments.size();
        if (size == 0 && uri.getAuthority() == null) {
            return this.mCode;
        }
        UriMatcher uriMatcher = this;
        int i2 = -1;
        while (i2 < size) {
            String authority = i2 < 0 ? uri.getAuthority() : pathSegments.get(i2);
            ArrayList<UriMatcher> arrayList = uriMatcher.mChildren;
            if (arrayList != null) {
                int size2 = arrayList.size();
                UriMatcher uriMatcher2 = null;
                for (int i3 = 0; i3 < size2; i3++) {
                    UriMatcher uriMatcher3 = arrayList.get(i3);
                    switch (uriMatcher3.mWhich) {
                        case 1:
                            int length = authority.length();
                            for (0; i < length; i + 1) {
                                char charAt = authority.charAt(i);
                                i = (charAt >= '0' && charAt <= '9') ? i + 1 : 0;
                            }
                            uriMatcher2 = uriMatcher3;
                            break;
                        case 2:
                            uriMatcher2 = uriMatcher3;
                            break;
                    }
                    if (uriMatcher2 != null) {
                        uriMatcher = uriMatcher2;
                        if (uriMatcher != null) {
                            return -1;
                        }
                        i2++;
                    }
                }
                uriMatcher = uriMatcher2;
                if (uriMatcher != null) {
                }
            } else {
                return uriMatcher.mCode;
            }
        }
        return uriMatcher.mCode;
    }
}
