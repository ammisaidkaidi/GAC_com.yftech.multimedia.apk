package com.yftech.libgallery.bean;

import com.media.common.entity.QuickMultipleEntity;

/* loaded from: /home/user/work/dex/classes.dex */
public class MediaFileForDateItem extends QuickMultipleEntity {
    private String date;

    public int getItemType() {
        return 0;
    }

    public MediaFileForDateItem() {
    }

    public MediaFileForDateItem(String str) {
        this.date = str;
    }

    public String getDate() {
        return this.date;
    }

    public void setDate(String str) {
        this.date = str;
    }
}
