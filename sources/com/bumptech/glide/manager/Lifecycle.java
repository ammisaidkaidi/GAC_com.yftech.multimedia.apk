package com.bumptech.glide.manager;

import androidx.annotation.NonNull;

/* loaded from: /home/user/work/dex/classes3.dex */
public interface Lifecycle {
    void addListener(@NonNull LifecycleListener lifecycleListener);

    void removeListener(@NonNull LifecycleListener lifecycleListener);
}
