package android.content;

import android.content.res.Configuration;

/* loaded from: /home/user/work/dex/classes.dex */
public interface ComponentCallbacks {
    void onConfigurationChanged(Configuration configuration);

    void onLowMemory();
}
