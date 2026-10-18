package android.util;

import android.R;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageItemInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.UserHandle;
import android.os.UserManager;
import com.android.internal.annotations.VisibleForTesting;

/* loaded from: /home/user/work/dex/classes2.dex */
public class IconDrawableFactory {

    @VisibleForTesting
    public static final int[] CORP_BADGE_COLORS = {R.color.keyguard_avatar_frame_color, R.color.keyguard_avatar_frame_pressed_color, R.color.keyguard_avatar_frame_shadow_color};
    protected final Context mContext;
    protected final boolean mEmbedShadow;
    protected final LauncherIcons mLauncherIcons;
    protected final PackageManager mPm;
    protected final UserManager mUm;

    private IconDrawableFactory(Context context, boolean z) {
        this.mContext = context;
        this.mPm = context.getPackageManager();
        this.mUm = (UserManager) context.getSystemService(UserManager.class);
        this.mLauncherIcons = new LauncherIcons(context);
        this.mEmbedShadow = z;
    }

    protected boolean needsBadging(ApplicationInfo applicationInfo, int i) {
        return applicationInfo.isInstantApp() || this.mUm.isManagedProfile(i);
    }

    public Drawable getBadgedIcon(ApplicationInfo applicationInfo) {
        return getBadgedIcon(applicationInfo, UserHandle.getUserId(applicationInfo.uid));
    }

    public Drawable getBadgedIcon(ApplicationInfo applicationInfo, int i) {
        return getBadgedIcon(applicationInfo, applicationInfo, i);
    }

    public Drawable getBadgedIcon(PackageItemInfo packageItemInfo, ApplicationInfo applicationInfo, int i) {
        Drawable loadUnbadgedItemIcon = this.mPm.loadUnbadgedItemIcon(packageItemInfo, applicationInfo);
        if (!this.mEmbedShadow && !needsBadging(applicationInfo, i)) {
            return loadUnbadgedItemIcon;
        }
        Drawable shadowedIcon = getShadowedIcon(loadUnbadgedItemIcon);
        if (applicationInfo.isInstantApp()) {
            shadowedIcon = this.mLauncherIcons.getBadgedDrawable(shadowedIcon, R.drawable.ic_dialog_usb, Resources.getSystem().getColor(R.color.car_teal_800, null));
        }
        return this.mUm.isManagedProfile(i) ? this.mLauncherIcons.getBadgedDrawable(shadowedIcon, R.drawable.ic_btn_square_browser_zoom_fit_page_disabled, getUserBadgeColor(this.mUm, i)) : shadowedIcon;
    }

    public Drawable getShadowedIcon(Drawable drawable) {
        return this.mLauncherIcons.wrapIconDrawableWithShadow(drawable);
    }

    public static int getUserBadgeColor(UserManager userManager, int i) {
        int managedProfileBadge = userManager.getManagedProfileBadge(i);
        if (managedProfileBadge < 0) {
            managedProfileBadge = 0;
        }
        return Resources.getSystem().getColor(CORP_BADGE_COLORS[managedProfileBadge % CORP_BADGE_COLORS.length], null);
    }

    public static IconDrawableFactory newInstance(Context context) {
        return new IconDrawableFactory(context, true);
    }

    public static IconDrawableFactory newInstance(Context context, boolean z) {
        return new IconDrawableFactory(context, z);
    }
}
