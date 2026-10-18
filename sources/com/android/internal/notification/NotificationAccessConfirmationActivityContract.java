package com.android.internal.notification;

import android.content.ComponentName;
import android.content.Intent;

/* loaded from: /home/user/work/dex/classes3.dex */
public final class NotificationAccessConfirmationActivityContract {
    private static final ComponentName COMPONENT_NAME = new ComponentName("com.android.settings", "com.android.settings.notification.NotificationAccessConfirmationActivity");
    public static final String EXTRA_COMPONENT_NAME = "component_name";
    public static final String EXTRA_PACKAGE_TITLE = "package_title";
    public static final String EXTRA_USER_ID = "user_id";

    public static Intent launcherIntent(int i, ComponentName componentName, String str) {
        return new Intent().setComponent(COMPONENT_NAME).putExtra(EXTRA_USER_ID, i).putExtra(EXTRA_COMPONENT_NAME, componentName).putExtra(EXTRA_PACKAGE_TITLE, str);
    }
}
