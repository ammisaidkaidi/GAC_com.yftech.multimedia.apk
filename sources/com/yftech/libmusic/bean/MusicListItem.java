package com.yftech.libmusic.bean;

import com.yftech.car.media.data.entity.MediaFile;
import java.util.Arrays;
import java.util.List;

/* loaded from: /home/user/work/dex/classes4.dex */
public class MusicListItem {
    private String album;
    private String artist;
    private List<MusicListItem> data;
    private long duration;
    private String filePath;
    private String foloder;
    private boolean isDir;
    private String suffix;
    private byte[] thumbData;
    private String title;

    public MusicListItem() {
    }

    public MusicListItem(MediaFile mediaFile) {
        this.isDir = false;
        this.foloder = mediaFile.getFolder();
        this.duration = mediaFile.getDuration();
        this.title = mediaFile.getTitle();
        this.artist = mediaFile.getArtist();
        this.album = mediaFile.getAlbum();
        this.filePath = mediaFile.getData();
    }

    public String toString() {
        return "MusicListItem{isDir=" + this.isDir + ", foloder='" + this.foloder + "', thumbData=" + Arrays.toString(this.thumbData) + ", duration=" + this.duration + ", title='" + this.title + "', artist='" + this.artist + "', album='" + this.album + "', suffix='" + this.suffix + "', filePath='" + this.filePath + "', data=" + this.data + '}';
    }

    public boolean isDir() {
        return this.isDir;
    }

    public void setDir(boolean z) {
        this.isDir = z;
    }

    public String getFoloder() {
        return this.foloder;
    }

    public void setFoloder(String str) {
        this.foloder = str;
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

    public String getArtist() {
        return this.artist;
    }

    public void setArtist(String str) {
        this.artist = str;
    }

    public String getAlbum() {
        return this.album;
    }

    public void setAlbum(String str) {
        this.album = str;
    }

    public String getSuffix() {
        return this.suffix;
    }

    public void setSuffix(String str) {
        this.suffix = str;
    }

    public String getFilePath() {
        return this.filePath;
    }

    public void setFilePath(String str) {
        this.filePath = str;
    }

    public List<MusicListItem> getData() {
        return this.data;
    }

    public void setData(List<MusicListItem> list) {
        this.data = list;
    }
}
