package com.yftech.libgallery.bean;

import com.media.common.entity.QuickMultipleEntity;
import com.yftech.car.media.data.entity.MediaFile;

/* loaded from: /home/user/work/dex/classes.dex */
public class MediaFileForDataItem extends QuickMultipleEntity {
    private String album;
    private String artist;
    private int currentTime;
    private String data;
    private long duration;
    private String fileName;
    private String folder = "null";
    private String genre;
    private long lastModified;
    private long size;
    private String title;

    public int getItemType() {
        return 1;
    }

    public MediaFileForDataItem() {
    }

    public MediaFileForDataItem(MediaFile mediaFile) {
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

    public String getFileName() {
        return this.fileName;
    }

    public void setFileName(String str) {
        this.fileName = str;
    }

    public String getTitle() {
        return this.title;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public String getAlbum() {
        return this.album;
    }

    public void setAlbum(String str) {
        this.album = str;
    }

    public String getArtist() {
        return this.artist;
    }

    public void setArtist(String str) {
        this.artist = str;
    }

    public String getGenre() {
        return this.genre;
    }

    public void setGenre(String str) {
        this.genre = str;
    }

    public long getDuration() {
        return this.duration;
    }

    public void setDuration(long j) {
        this.duration = j;
    }

    public int getCurrentTime() {
        return this.currentTime;
    }

    public void setCurrentTime(int i) {
        this.currentTime = i;
    }

    public long getSize() {
        return this.size;
    }

    public void setSize(long j) {
        this.size = j;
    }

    public long getLastModified() {
        return this.lastModified;
    }

    public void setLastModified(long j) {
        this.lastModified = j;
    }

    public String getData() {
        return this.data;
    }

    public void setData(String str) {
        this.data = str;
    }

    public String getFolder() {
        return this.folder;
    }

    public void setFolder(String str) {
        this.folder = str;
    }
}
