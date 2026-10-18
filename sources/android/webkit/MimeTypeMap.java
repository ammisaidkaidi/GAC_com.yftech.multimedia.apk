package android.webkit;

import android.text.TextUtils;
import android.view.textclassifier.TextClassifier;
import java.util.regex.Pattern;
import libcore.net.MimeUtils;

/* loaded from: /home/user/work/dex/classes2.dex */
public class MimeTypeMap {
    private static final MimeTypeMap sMimeTypeMap = new MimeTypeMap();

    private MimeTypeMap() {
    }

    public static String getFileExtensionFromUrl(String str) {
        int lastIndexOf;
        if (TextUtils.isEmpty(str)) {
            return TextClassifier.TYPE_UNKNOWN;
        }
        int lastIndexOf2 = str.lastIndexOf(35);
        if (lastIndexOf2 > 0) {
            str = str.substring(0, lastIndexOf2);
        }
        int lastIndexOf3 = str.lastIndexOf(63);
        if (lastIndexOf3 > 0) {
            str = str.substring(0, lastIndexOf3);
        }
        int lastIndexOf4 = str.lastIndexOf(47);
        if (lastIndexOf4 >= 0) {
            str = str.substring(lastIndexOf4 + 1);
        }
        return (str.isEmpty() || !Pattern.matches("[a-zA-Z_0-9\\.\\-\\(\\)\\%]+", str) || (lastIndexOf = str.lastIndexOf(46)) < 0) ? TextClassifier.TYPE_UNKNOWN : str.substring(lastIndexOf + 1);
    }

    public boolean hasMimeType(String str) {
        return MimeUtils.hasMimeType(str);
    }

    public String getMimeTypeFromExtension(String str) {
        return MimeUtils.guessMimeTypeFromExtension(str);
    }

    private static String mimeTypeFromExtension(String str) {
        return MimeUtils.guessMimeTypeFromExtension(str);
    }

    public boolean hasExtension(String str) {
        return MimeUtils.hasExtension(str);
    }

    public String getExtensionFromMimeType(String str) {
        return MimeUtils.guessExtensionFromMimeType(str);
    }

    String remapGenericMimeType(String str, String str2, String str3) {
        if (!"text/plain".equals(str) && !"application/octet-stream".equals(str)) {
            return "text/vnd.wap.wml".equals(str) ? "text/plain" : "application/vnd.wap.xhtml+xml".equals(str) ? "application/xhtml+xml" : str;
        }
        String parseContentDisposition = str3 != null ? URLUtil.parseContentDisposition(str3) : null;
        if (parseContentDisposition != null) {
            str2 = parseContentDisposition;
        }
        String mimeTypeFromExtension = getMimeTypeFromExtension(getFileExtensionFromUrl(str2));
        return mimeTypeFromExtension != null ? mimeTypeFromExtension : str;
    }

    public static MimeTypeMap getSingleton() {
        return sMimeTypeMap;
    }
}
