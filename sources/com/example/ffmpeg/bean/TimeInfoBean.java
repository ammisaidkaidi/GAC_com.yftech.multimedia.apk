package com.example.ffmpeg.bean;

/* loaded from: /home/user/work/dex/classes3.dex */
public class TimeInfoBean {
    private int currentTime;
    private int totalTime;

    public int getCurrentTime() {
        return this.currentTime;
    }

    public void setCurrentTime(int i) {
        this.currentTime = i;
    }

    public int getTotalTime() {
        return this.totalTime;
    }

    public void setTotalTime(int i) {
        this.totalTime = i;
    }

    public String toString() {
        return "WlTimeInfoBean{currentTime=" + this.currentTime + ", totalTime=" + this.totalTime + '}';
    }
}
