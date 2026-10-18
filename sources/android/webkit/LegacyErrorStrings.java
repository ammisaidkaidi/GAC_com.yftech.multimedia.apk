package android.webkit;

import android.R;
import android.content.Context;
import android.util.Log;

/* loaded from: /home/user/work/dex/classes2.dex */
class LegacyErrorStrings {
    private static final String LOGTAG = "Http";

    private LegacyErrorStrings() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String getString(int i, Context context) {
        return context.getText(getResource(i)).toString();
    }

    private static int getResource(int i) {
        switch (i) {
            case -15:
                return R.string.data_usage_limit_snoozed_body;
            case -14:
                return R.string.country_detector;
            case -13:
                return R.string.copied;
            case -12:
                return R.string.httpErrorBadUrl;
            case -11:
                return R.string.conversation_title_fallback_one_to_one;
            case -10:
                return R.string.httpErrorUnsupportedScheme;
            case -9:
                return R.string.data_saver_enable_title;
            case -8:
                return R.string.data_usage_limit_body;
            case -7:
                return R.string.country_selection_title;
            case -6:
                return R.string.conversation_title_fallback_group_chat;
            case -5:
                return R.string.data_saver_enable_button;
            case -4:
                return R.string.conversation_single_line_name_display;
            case -3:
                return R.string.data_usage_mobile_limit_snoozed_title;
            case -2:
                return R.string.create_contact_using;
            case -1:
                return R.string.conversation_single_line_image_placeholder;
            case 0:
                return R.string.data_saver_description;
            default:
                Log.w(LOGTAG, "Using generic message for unknown error code: " + i);
                return R.string.conversation_single_line_image_placeholder;
        }
    }
}
