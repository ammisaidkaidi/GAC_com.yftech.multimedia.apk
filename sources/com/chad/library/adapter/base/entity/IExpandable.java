package com.chad.library.adapter.base.entity;

import java.util.List;

/* loaded from: /home/user/work/dex/classes3.dex */
public interface IExpandable<T> {
    int getLevel();

    List<T> getSubItems();

    boolean isExpanded();

    void setExpanded(boolean z);
}
