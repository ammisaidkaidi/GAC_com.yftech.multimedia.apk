package com.facebook.datasource;

import javax.annotation.Nonnull;

/* loaded from: /home/user/work/dex/classes3.dex */
public interface DataSubscriber<T> {
    void onCancellation(@Nonnull DataSource<T> dataSource);

    void onFailure(@Nonnull DataSource<T> dataSource);

    void onNewResult(@Nonnull DataSource<T> dataSource);

    void onProgressUpdate(@Nonnull DataSource<T> dataSource);
}
