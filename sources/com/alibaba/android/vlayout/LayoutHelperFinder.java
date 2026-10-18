package com.alibaba.android.vlayout;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.List;

/* loaded from: /home/user/work/dex/classes3.dex */
public abstract class LayoutHelperFinder implements Iterable<LayoutHelper> {
    @Nullable
    public abstract LayoutHelper getLayoutHelper(int i);

    /* JADX INFO: Access modifiers changed from: protected */
    @NonNull
    public abstract List<LayoutHelper> getLayoutHelpers();

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract Iterable<LayoutHelper> reverse();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void setLayouts(@Nullable List<LayoutHelper> list);
}
