package android.app.admin;

import android.content.Intent;
import java.util.List;

/* loaded from: /home/user/work/dex/classes.dex */
public abstract class DevicePolicyManagerInternal {

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface OnCrossProfileWidgetProvidersChangeListener {
        void onCrossProfileWidgetProvidersChanged(int i, List<String> list);
    }

    public abstract void addOnCrossProfileWidgetProvidersChangeListener(OnCrossProfileWidgetProvidersChangeListener onCrossProfileWidgetProvidersChangeListener);

    public abstract boolean canUserHaveUntrustedCredentialReset(int i);

    public abstract Intent createShowAdminSupportIntent(int i, boolean z);

    public abstract Intent createUserRestrictionSupportIntent(int i, String str);

    public abstract List<String> getCrossProfileWidgetProviders(int i);

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract DevicePolicyCache getDevicePolicyCache();

    public abstract CharSequence getPrintingDisabledReasonForUser(int i);

    public abstract boolean isActiveAdminWithPolicy(int i, int i2);

    public abstract boolean isUserAffiliatedWithDevice(int i);

    public abstract void reportSeparateProfileChallengeChanged(int i);
}
