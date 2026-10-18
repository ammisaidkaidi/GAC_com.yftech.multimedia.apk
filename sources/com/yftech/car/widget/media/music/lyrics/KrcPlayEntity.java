package com.yftech.car.widget.media.music.lyrics;

import java.util.Arrays;

/* loaded from: /home/user/work/dex/classes3.dex */
public class KrcPlayEntity {
    private String lyrics;
    private int[] playTime;

    public String toString() {
        return "KrcPlayEntity{playTime=" + Arrays.toString(this.playTime) + ", lyrics='" + this.lyrics + "'}";
    }

    public int[] getPlayTime() {
        return this.playTime;
    }

    public void setPlayTime(int[] iArr) {
        this.playTime = iArr;
    }

    public String getLyrics() {
        return this.lyrics;
    }

    public void setLyrics(String str) {
        this.lyrics = str;
    }
}
