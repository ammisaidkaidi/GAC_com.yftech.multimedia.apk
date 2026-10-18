package com.yftech.libgallery.bean;

import com.yftech.car.media.data.entity.MediaFile;

/* loaded from: /home/user/work/dex/classes.dex */
public class MediaFileItem extends MediaFile {
    private boolean isViewed;

    public MediaFileItem(int i) {
        super(i);
    }

    public MediaFileItem(MediaFile mediaFile) {
        super(mediaFile.getType());
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
        setLastModified(mediaFile.getLastModified());
    }

    public MediaFileItem(MediaFileForDataItem mediaFileForDataItem) {
        super(2);
        setAlbum(mediaFileForDataItem.getAlbum());
        setArtist(mediaFileForDataItem.getArtist());
        setCurrentTime(mediaFileForDataItem.getCurrentTime());
        setData(mediaFileForDataItem.getData());
        setDuration(mediaFileForDataItem.getDuration());
        setFileName(mediaFileForDataItem.getFileName());
        setFolder(mediaFileForDataItem.getFolder());
        setGenre(mediaFileForDataItem.getGenre());
        setFileName(mediaFileForDataItem.getFileName());
        setSize(mediaFileForDataItem.getSize());
    }

    public boolean isViewed() {
        return this.isViewed;
    }

    public void setViewed(boolean z) {
        this.isViewed = z;
    }
}
