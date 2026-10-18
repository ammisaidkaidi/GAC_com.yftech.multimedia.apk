package com.android.internal.app;

import android.app.Activity;
import android.app.ActivityManager;
import android.app.ActivityThread;
import android.app.AppGlobals;
import android.content.Intent;
import android.content.pm.IPackageManager;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.UserInfo;
import android.os.Bundle;
import android.os.RemoteException;
import android.os.UserHandle;
import android.os.UserManager;
import android.util.Slog;
import android.widget.Toast;
import com.android.internal.annotations.VisibleForTesting;

/* loaded from: /home/user/work/dex/classes3.dex */
public class IntentForwarderActivity extends Activity {
    public static String FORWARD_INTENT_TO_MANAGED_PROFILE = "com.android.internal.app.ForwardIntentToManagedProfile";
    public static String FORWARD_INTENT_TO_PARENT = "com.android.internal.app.ForwardIntentToParent";
    public static String TAG = "IntentForwarderActivity";
    private Injector mInjector;

    /* loaded from: /home/user/work/dex/classes3.dex */
    public interface Injector {
        IPackageManager getIPackageManager();

        PackageManager getPackageManager();

        UserManager getUserManager();
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x0114  */
    @Override // android.app.Activity
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    protected void onCreate(Bundle bundle) {
        int i;
        int i2;
        int i3;
        String str;
        super.onCreate(bundle);
        this.mInjector = createInjector();
        Intent intent = getIntent();
        String className = intent.getComponent().getClassName();
        if (className.equals(FORWARD_INTENT_TO_PARENT)) {
            i = 17039935;
            i2 = getProfileParent();
        } else if (className.equals(FORWARD_INTENT_TO_MANAGED_PROFILE)) {
            i = 17039936;
            i2 = getManagedProfile();
        } else {
            Slog.wtf(TAG, IntentForwarderActivity.class.getName() + " cannot be called directly");
            i = -1;
            i2 = -10000;
        }
        if (i2 == -10000) {
            finish();
            return;
        }
        int userId = getUserId();
        Intent canForward = canForward(intent, i2);
        if (canForward != null) {
            if ("android.intent.action.CHOOSER".equals(canForward.getAction())) {
                ((Intent) canForward.getParcelableExtra("android.intent.extra.INTENT")).prepareToLeaveUser(userId);
            } else {
                canForward.prepareToLeaveUser(userId);
            }
            ResolveInfo resolveActivityAsUser = this.mInjector.getPackageManager().resolveActivityAsUser(canForward, 65536, i2);
            boolean z = resolveActivityAsUser == null || resolveActivityAsUser.activityInfo == null || !"android".equals(resolveActivityAsUser.activityInfo.packageName) || !(ResolverActivity.class.getName().equals(resolveActivityAsUser.activityInfo.name) || ChooserActivity.class.getName().equals(resolveActivityAsUser.activityInfo.name));
            try {
                startActivityAsCaller(canForward, null, false, i2);
            } catch (RuntimeException e) {
                try {
                    i3 = ActivityManager.getService().getLaunchedFromUid(getActivityToken());
                    try {
                        str = ActivityManager.getService().getLaunchedFromPackage(getActivityToken());
                    } catch (RemoteException unused) {
                        str = "?";
                        Slog.wtf(TAG, "Unable to launch as UID " + i3 + " package " + str + ", while running in " + ActivityThread.currentProcessName(), e);
                        if (z) {
                        }
                        finish();
                    }
                } catch (RemoteException unused2) {
                    i3 = -1;
                }
                Slog.wtf(TAG, "Unable to launch as UID " + i3 + " package " + str + ", while running in " + ActivityThread.currentProcessName(), e);
            }
            if (z) {
                Toast.makeText(this, getString(i), 1).show();
            }
        } else {
            Slog.wtf(TAG, "the intent: " + intent + " cannot be forwarded from user " + userId + " to user " + i2);
        }
        finish();
    }

    Intent canForward(Intent intent, int i) {
        Intent intent2;
        Intent intent3 = new Intent(intent);
        intent3.addFlags(50331648);
        sanitizeIntent(intent3);
        if (!"android.intent.action.CHOOSER".equals(intent3.getAction())) {
            intent2 = intent3;
        } else {
            if (intent3.hasExtra("android.intent.extra.INITIAL_INTENTS")) {
                Slog.wtf(TAG, "An chooser intent with extra initial intents cannot be forwarded to a different user");
                return null;
            }
            if (intent3.hasExtra("android.intent.extra.REPLACEMENT_EXTRAS")) {
                Slog.wtf(TAG, "A chooser intent with replacement extras cannot be forwarded to a different user");
                return null;
            }
            intent2 = (Intent) intent3.getParcelableExtra("android.intent.extra.INTENT");
            if (intent2 == null) {
                Slog.wtf(TAG, "Cannot forward a chooser intent with no extra android.intent.extra.INTENT");
                return null;
            }
        }
        if (intent3.getSelector() != null) {
            intent2 = intent3.getSelector();
        }
        String resolveTypeIfNeeded = intent2.resolveTypeIfNeeded(getContentResolver());
        sanitizeIntent(intent2);
        try {
        } catch (RemoteException unused) {
            Slog.e(TAG, "PackageManagerService is dead?");
        }
        if (this.mInjector.getIPackageManager().canForwardTo(intent2, resolveTypeIfNeeded, getUserId(), i)) {
            return intent3;
        }
        return null;
    }

    private int getManagedProfile() {
        for (UserInfo userInfo : this.mInjector.getUserManager().getProfiles(UserHandle.myUserId())) {
            if (userInfo.isManagedProfile()) {
                return userInfo.id;
            }
        }
        Slog.wtf(TAG, FORWARD_INTENT_TO_MANAGED_PROFILE + " has been called, but there is no managed profile");
        return -10000;
    }

    private int getProfileParent() {
        UserInfo profileParent = this.mInjector.getUserManager().getProfileParent(UserHandle.myUserId());
        if (profileParent == null) {
            Slog.wtf(TAG, FORWARD_INTENT_TO_PARENT + " has been called, but there is no parent");
            return -10000;
        }
        return profileParent.id;
    }

    private void sanitizeIntent(Intent intent) {
        intent.setPackage(null);
        intent.setComponent(null);
    }

    @VisibleForTesting
    protected Injector createInjector() {
        return new InjectorImpl();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes3.dex */
    public class InjectorImpl implements Injector {
        private InjectorImpl() {
        }

        @Override // com.android.internal.app.IntentForwarderActivity.Injector
        public IPackageManager getIPackageManager() {
            return AppGlobals.getPackageManager();
        }

        @Override // com.android.internal.app.IntentForwarderActivity.Injector
        public UserManager getUserManager() {
            return (UserManager) IntentForwarderActivity.this.getSystemService(UserManager.class);
        }

        @Override // com.android.internal.app.IntentForwarderActivity.Injector
        public PackageManager getPackageManager() {
            return IntentForwarderActivity.this.getPackageManager();
        }
    }
}
