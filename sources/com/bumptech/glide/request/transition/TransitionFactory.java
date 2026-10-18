package com.bumptech.glide.request.transition;

import com.bumptech.glide.load.DataSource;

/* loaded from: /home/user/work/dex/classes3.dex */
public interface TransitionFactory<R> {
    Transition<R> build(DataSource dataSource, boolean z);
}
