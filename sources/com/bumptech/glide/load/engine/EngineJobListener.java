package com.bumptech.glide.load.engine;

import com.bumptech.glide.load.Key;

/* loaded from: /home/user/work/dex/classes3.dex */
interface EngineJobListener {
    void onEngineJobCancelled(EngineJob<?> engineJob, Key key);

    void onEngineJobComplete(EngineJob<?> engineJob, Key key, EngineResource<?> engineResource);
}
