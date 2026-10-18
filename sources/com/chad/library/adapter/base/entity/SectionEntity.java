package com.chad.library.adapter.base.entity;

import java.io.Serializable;

/* loaded from: /home/user/work/dex/classes3.dex */
public abstract class SectionEntity<T> implements Serializable {
    public String header;
    public boolean isHeader;
    public T t;

    public SectionEntity(boolean z, String str) {
        this.isHeader = z;
        this.header = str;
        this.t = null;
    }

    public SectionEntity(T t) {
        this.isHeader = false;
        this.header = null;
        this.t = t;
    }
}
