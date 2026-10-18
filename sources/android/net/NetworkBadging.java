package android.net;

import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

@Deprecated
/* loaded from: /home/user/work/dex/classes.dex */
public class NetworkBadging {
    public static final int BADGING_4K = 30;
    public static final int BADGING_HD = 20;
    public static final int BADGING_NONE = 0;
    public static final int BADGING_SD = 10;

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: /home/user/work/dex/classes.dex */
    public @interface Badging {
    }

    private NetworkBadging() {
    }

    public static Drawable getWifiIcon(int i, int i2, Resources.Theme theme) {
        return Resources.getSystem().getDrawable(getWifiSignalResource(i), theme);
    }

    private static int getWifiSignalResource(int i) {
        switch (i) {
            case 0:
                return 17302784;
            case 1:
                return 17302785;
            case 2:
                return 17302786;
            case 3:
                return 17302787;
            case 4:
                return 17302788;
            default:
                throw new IllegalArgumentException("Invalid signal level: " + i);
        }
    }

    private static int getBadgedWifiSignalResource(int i) {
        switch (i) {
            case 0:
                return 17302745;
            case 1:
                return 17302746;
            case 2:
                return 17302747;
            case 3:
                return 17302748;
            case 4:
                return 17302749;
            default:
                throw new IllegalArgumentException("Invalid signal level: " + i);
        }
    }
}
