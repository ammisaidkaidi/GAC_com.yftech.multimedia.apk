package com.media.common.entity;

import com.yftech.car.media.data.entity.MediaFile;

/* loaded from: /home/user/work/dex/classes3.dex */
public class MediaFileInfo extends MediaFile {
    private byte[] thumbData;

    public MediaFileInfo(int i) {
        super(i);
    }

    public MediaFileInfo(MediaFile mediaFile) {
        super(mediaFile.getType());
        setTitle(mediaFile.getTitle());
        setAlbum(mediaFile.getAlbum());
        setArtist(mediaFile.getArtist());
        setCurrentTime(mediaFile.getCurrentTime());
        setData(mediaFile.getData());
        setDuration(mediaFile.getDuration());
        setFileName(mediaFile.getFileName());
        setFolder(mediaFile.getFolder());
        setId(mediaFile.getId());
        setGenre(mediaFile.getGenre());
        setFileName(mediaFile.getFileName());
        setSize(mediaFile.getSize());
        setLastModified(mediaFile.getLastModified());
    }

    public byte[] getThumbData() {
        return this.thumbData;
    }

    public void setThumbData(byte[] bArr) {
        this.thumbData = bArr;
    }
}
