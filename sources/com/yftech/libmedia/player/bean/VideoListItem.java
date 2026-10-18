package com.yftech.libmedia.player.bean;

/* loaded from: /home/user/work/dex/classes4.dex */
public class VideoListItem extends MediaFileItem {
    private long duration;
    private long lastModify;
    private String suffix;
    private byte[] thumbData;
    private String title;

    public VideoListItem() {
        super(1);
    }

    public byte[] getThumbData() {
        return this.thumbData;
    }

    public void setThumbData(byte[] bArr) {
        this.thumbData = bArr;
    }

    public long getDuration() {
        return this.duration;
    }

    public void setDuration(long j) {
        this.duration = j;
    }

    public String getTitle() {
        return this.title;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public long getLastModify() {
        return this.lastModify;
    }

    public void setLastModify(long j) {
        this.lastModify = j;
    }

    public String getSuffix() {
        return this.suffix;
    }

    public void setSuffix(String str) {
        this.suffix = str;
    }
}
