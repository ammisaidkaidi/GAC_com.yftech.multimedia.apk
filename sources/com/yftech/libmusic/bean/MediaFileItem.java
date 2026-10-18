package com.yftech.libmusic.bean;

import com.yftech.car.media.data.entity.MediaFile;

/* loaded from: /home/user/work/dex/classes4.dex */
public class MediaFileItem extends MediaFile {
    private boolean isDir;
    private byte[] thumbData;

    public MediaFileItem(int i) {
        super(i);
    }

    public MediaFileItem(MediaFile mediaFile) {
        super(mediaFile.getType());
        setTitle(mediaFile.getTitle());
        setAlbum(mediaFile.getAlbum());
        setArtist(mediaFile.getArtist());
        setCurrentTime(mediaFile.getCurrentTime());
        setData(mediaFile.getData());
        setDuration(mediaFile.getDuration());
        setFileName(mediaFile.getFileName());
        setFolder(mediaFile.getFolder());
        setGenre(mediaFile.getGenre());
        setFileName(mediaFile.getFileName());
        setSize(mediaFile.getSize());
    }

    public byte[] getThumbData() {
        return this.thumbData;
    }

    public void setThumbData(byte[] bArr) {
        this.thumbData = bArr;
    }

    public boolean isDir() {
        return this.isDir;
    }

    public void setDir(boolean z) {
        this.isDir = z;
    }
}
