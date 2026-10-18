package com.yftech.libmedia.player.bean;

import com.media.common.entity.QuickMultipleEntity;

/* loaded from: /home/user/work/dex/classes4.dex */
public class MediaFileForDateItem extends QuickMultipleEntity {
    private String date;

    public int getItemType() {
        return 2;
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
