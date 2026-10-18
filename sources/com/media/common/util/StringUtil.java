package com.media.common.util;

import android.text.Html;
import android.text.Spanned;
import androidx.annotation.NonNull;
import java.util.Locale;

/* loaded from: /home/user/work/dex/classes3.dex */
public class StringUtil {
    public static Spanned getHighLightByKeyword(@NonNull String str, @NonNull String str2) {
        StringBuilder sb = new StringBuilder();
        int indexOf = str.indexOf(str2);
        if (indexOf != -1) {
            sb.append(str.substring(0, indexOf));
            sb.append(String.format(Locale.getDefault(), "<font color='#ff8800'>%s</font>", str.substring(indexOf, str2.length() + indexOf)));
            if (str2.length() + indexOf < str.length()) {
                sb.append(str.substring(indexOf + str2.length()));
            }
        }
        return Html.fromHtml(sb.toString());
    }
}
