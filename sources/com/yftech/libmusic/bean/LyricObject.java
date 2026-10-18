package com.yftech.libmusic.bean;

/* loaded from: /home/user/work/dex/classes4.dex */
public class LyricObject {
    public int begintime;
    public int endtime;
    public String lrc;
    public int timeline;

    public LyricObject() {
        this.lrc = " ";
    }

    public LyricObject(String str) {
        this.lrc = str;
    }
}
