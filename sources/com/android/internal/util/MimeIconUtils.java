package com.android.internal.util;

import android.content.Context;
import android.graphics.drawable.Drawable;
import com.android.internal.os.PowerProfile;
import java.util.HashMap;

/* loaded from: /home/user/work/dex/classes3.dex */
public class MimeIconUtils {
    private static HashMap<String, Integer> sMimeIcons = new HashMap<>();

    static {
        add("application/vnd.android.package-archive", 17302349);
        add("application/ogg", 17302350);
        add("application/x-flac", 17302350);
        add("application/pgp-keys", 17302351);
        add("application/pgp-signature", 17302351);
        add("application/x-pkcs12", 17302351);
        add("application/x-pkcs7-certreqresp", 17302351);
        add("application/x-pkcs7-crl", 17302351);
        add("application/x-x509-ca-cert", 17302351);
        add("application/x-x509-user-cert", 17302351);
        add("application/x-pkcs7-certificates", 17302351);
        add("application/x-pkcs7-mime", 17302351);
        add("application/x-pkcs7-signature", 17302351);
        add("application/rdf+xml", 17302352);
        add("application/rss+xml", 17302352);
        add("application/x-object", 17302352);
        add("application/xhtml+xml", 17302352);
        add("text/css", 17302352);
        add("text/html", 17302352);
        add("text/xml", 17302352);
        add("text/x-c++hdr", 17302352);
        add("text/x-c++src", 17302352);
        add("text/x-chdr", 17302352);
        add("text/x-csrc", 17302352);
        add("text/x-dsrc", 17302352);
        add("text/x-csh", 17302352);
        add("text/x-haskell", 17302352);
        add("text/x-java", 17302352);
        add("text/x-literate-haskell", 17302352);
        add("text/x-pascal", 17302352);
        add("text/x-tcl", 17302352);
        add("text/x-tex", 17302352);
        add("application/x-latex", 17302352);
        add("application/x-texinfo", 17302352);
        add("application/atom+xml", 17302352);
        add("application/ecmascript", 17302352);
        add("application/json", 17302352);
        add("application/javascript", 17302352);
        add("application/xml", 17302352);
        add("text/javascript", 17302352);
        add("application/x-javascript", 17302352);
        add("application/mac-binhex40", 17302353);
        add("application/rar", 17302353);
        add("application/zip", 17302353);
        add("application/x-apple-diskimage", 17302353);
        add("application/x-debian-package", 17302353);
        add("application/x-gtar", 17302353);
        add("application/x-iso9660-image", 17302353);
        add("application/x-lha", 17302353);
        add("application/x-lzh", 17302353);
        add("application/x-lzx", 17302353);
        add("application/x-stuffit", 17302353);
        add("application/x-tar", 17302353);
        add("application/x-webarchive", 17302353);
        add("application/x-webarchive-xml", 17302353);
        add("application/gzip", 17302353);
        add("application/x-7z-compressed", 17302353);
        add("application/x-deb", 17302353);
        add("application/x-rar-compressed", 17302353);
        add("text/x-vcard", 17302354);
        add("text/vcard", 17302354);
        add("text/calendar", 17302356);
        add("text/x-vcalendar", 17302356);
        add("application/x-font", 17302359);
        add("application/font-woff", 17302359);
        add("application/x-font-woff", 17302359);
        add("application/x-font-ttf", 17302359);
        add("application/vnd.oasis.opendocument.graphics", 17302361);
        add("application/vnd.oasis.opendocument.graphics-template", 17302361);
        add("application/vnd.oasis.opendocument.image", 17302361);
        add("application/vnd.stardivision.draw", 17302361);
        add("application/vnd.sun.xml.draw", 17302361);
        add("application/vnd.sun.xml.draw.template", 17302361);
        add("application/pdf", 17302362);
        add("application/vnd.stardivision.impress", 17302364);
        add("application/vnd.sun.xml.impress", 17302364);
        add("application/vnd.sun.xml.impress.template", 17302364);
        add("application/x-kpresenter", 17302364);
        add("application/vnd.oasis.opendocument.presentation", 17302364);
        add("application/vnd.oasis.opendocument.spreadsheet", 17302365);
        add("application/vnd.oasis.opendocument.spreadsheet-template", 17302365);
        add("application/vnd.stardivision.calc", 17302365);
        add("application/vnd.sun.xml.calc", 17302365);
        add("application/vnd.sun.xml.calc.template", 17302365);
        add("application/x-kspread", 17302365);
        add("application/vnd.oasis.opendocument.text", 17302355);
        add("application/vnd.oasis.opendocument.text-master", 17302355);
        add("application/vnd.oasis.opendocument.text-template", 17302355);
        add("application/vnd.oasis.opendocument.text-web", 17302355);
        add("application/vnd.stardivision.writer", 17302355);
        add("application/vnd.stardivision.writer-global", 17302355);
        add("application/vnd.sun.xml.writer", 17302355);
        add("application/vnd.sun.xml.writer.global", 17302355);
        add("application/vnd.sun.xml.writer.template", 17302355);
        add("application/x-abiword", 17302355);
        add("application/x-kword", 17302355);
        add("application/x-quicktimeplayer", 17302367);
        add("application/x-shockwave-flash", 17302367);
        add("application/msword", 17302368);
        add("application/vnd.openxmlformats-officedocument.wordprocessingml.document", 17302368);
        add("application/vnd.openxmlformats-officedocument.wordprocessingml.template", 17302368);
        add("application/vnd.ms-excel", 17302357);
        add("application/vnd.openxmlformats-officedocument.spreadsheetml.sheet", 17302357);
        add("application/vnd.openxmlformats-officedocument.spreadsheetml.template", 17302357);
        add("application/vnd.ms-powerpoint", 17302363);
        add("application/vnd.openxmlformats-officedocument.presentationml.presentation", 17302363);
        add("application/vnd.openxmlformats-officedocument.presentationml.template", 17302363);
        add("application/vnd.openxmlformats-officedocument.presentationml.slideshow", 17302363);
    }

    private static void add(String str, int i) {
        if (sMimeIcons.put(str, Integer.valueOf(i)) == null) {
            return;
        }
        throw new RuntimeException(str + " already registered!");
    }

    public static Drawable loadMimeIcon(Context context, String str) {
        if ("vnd.android.document/directory".equals(str)) {
            return context.getDrawable(17302358);
        }
        Integer num = sMimeIcons.get(str);
        if (num != null) {
            return context.getDrawable(num.intValue());
        }
        if (str == null) {
            return null;
        }
        String str2 = str.split("/")[0];
        if (PowerProfile.POWER_AUDIO.equals(str2)) {
            return context.getDrawable(17302350);
        }
        if ("image".equals(str2)) {
            return context.getDrawable(17302361);
        }
        if ("text".equals(str2)) {
            return context.getDrawable(17302366);
        }
        if (PowerProfile.POWER_VIDEO.equals(str2)) {
            return context.getDrawable(17302367);
        }
        return context.getDrawable(17302360);
    }
}
