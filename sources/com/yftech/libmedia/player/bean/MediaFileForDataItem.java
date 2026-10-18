package com.yftech.libmedia.player.bean;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.media.common.entity.MediaFileInfo;
import com.media.common.entity.QuickMultipleEntity;

/* loaded from: /home/user/work/dex/classes4.dex */
public class MediaFileForDataItem extends QuickMultipleEntity {
    private String album;
    private String artist;
    private int currentTime;
    private String data;
    private long duration;
    private String fileName;
    private String folder = "null";
    private String genre;
    private long id;
    private long lastModified;
    private long size;
    private byte[] thumbData;
    private String title;

    public int getItemType() {
        return 3;
    }

    public MediaFileForDataItem() {
    }

    public MediaFileForDataItem(MediaFileInfo mediaFileInfo) {
        setAlbum(mediaFileInfo.getAlbum());
        setArtist(mediaFileInfo.getArtist());
        setCurrentTime(mediaFileInfo.getCurrentTime());
        setData(mediaFileInfo.getData());
        setDuration(mediaFileInfo.getDuration());
        setFileName(mediaFileInfo.getFileName());
        setFolder(mediaFileInfo.getFolder());
        setGenre(mediaFileInfo.getGenre());
        setFileName(mediaFileInfo.getFileName());
        setSize(mediaFileInfo.getSize());
        setId(mediaFileInfo.getId());
        setLastModified(mediaFileInfo.getLastModified());
        setThumbData(mediaFileInfo.getThumbData());
    }

    public long getId() {
        return this.id;
    }

    public void setId(long j) {
        this.id = j;
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

    public byte[] getThumbData() {
        return this.thumbData;
    }

    public void setThumbData(byte[] bArr) {
        this.thumbData = bArr;
    }

    public boolean equals(@Nullable Object obj) {
        if (obj instanceof MediaFileForDataItem) {
            return !TextUtils.isEmpty(getData()) && getData().equals(((MediaFileForDataItem) obj).getData());
        }
        return false;
    }
}
