package com.yftech.libmedia.player.bean;

import com.yftech.car.media.data.entity.MediaFile;

/* loaded from: /home/user/work/dex/classes4.dex */
public class MediaFileItem extends MediaFile {
    private VideoListItem information;
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
    }

    public MediaFileItem(MediaFileForDataItem mediaFileForDataItem) {
        super(1);
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

    public VideoListItem getInformation() {
        return this.information;
    }

    public void setInformation(VideoListItem videoListItem) {
        this.information = videoListItem;
    }
}
