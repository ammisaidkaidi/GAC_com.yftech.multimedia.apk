package com.yftech.car.widget.media.photo.util;

import com.yftech.car.media.data.entity.MediaFile;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: /home/user/work/dex/classes3.dex */
public class PhotoDataPlayManager {
    private static PhotoDataPlayManager mVideoDataPlayManager;
    private MediaFile mMediaFile;
    private final List<MediaFile> mList = new ArrayList();
    private final List<OnMediaDataListUpdateListener> mUpdateListenerList = new ArrayList();
    private long mPlayId = -1;
    private boolean isPlaying = false;

    /* loaded from: /home/user/work/dex/classes3.dex */
    public interface OnMediaDataListUpdateListener {
        void onPlayChange();
    }

    public static PhotoDataPlayManager getInstance() {
        if (mVideoDataPlayManager == null) {
            synchronized (PhotoDataPlayManager.class) {
                if (mVideoDataPlayManager == null) {
                    mVideoDataPlayManager = new PhotoDataPlayManager();
                }
            }
        }
        return mVideoDataPlayManager;
    }

    public PhotoDataPlayManager setPlaying(boolean z) {
        this.isPlaying = z;
        return this;
    }

    public void setMediaFile(MediaFile mediaFile) {
        this.mMediaFile = mediaFile;
        this.mPlayId = mediaFile.getId();
    }

    public PhotoDataPlayManager setPlayId(long j) {
        this.mPlayId = j;
        Iterator<MediaFile> it = this.mList.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            MediaFile next = it.next();
            if (next.getId() == j) {
                this.mMediaFile = new MediaFile(next);
                break;
            }
        }
        return this;
    }

    public long getPlayId() {
        return this.mPlayId;
    }

    public MediaFile getMediaFile() {
        return this.mMediaFile;
    }

    public boolean isPlaying() {
        return this.isPlaying;
    }

    public void setPlayListData(List<MediaFile> list, long j) {
        if (!this.mList.isEmpty()) {
            this.mList.clear();
        }
        for (MediaFile mediaFile : list) {
            if (mediaFile.getType() == 2) {
                this.mList.add(mediaFile);
            }
        }
        this.mPlayId = j;
    }

    public boolean removeMediaFile(MediaFile mediaFile) {
        for (int i = 0; i < this.mList.size(); i++) {
            if (this.mList.get(i).getId() == mediaFile.getId()) {
                this.mList.remove(i);
                updatePlayChange();
                return true;
            }
        }
        return false;
    }

    public int getPlayPosition() {
        for (int i = 0; i < this.mList.size(); i++) {
            if (this.mList.get(i).getId() == this.mPlayId) {
                return i;
            }
        }
        return 0;
    }

    public List<MediaFile> getPlayList() {
        return this.mList;
    }

    public void clearListData() {
        this.mList.clear();
    }

    public void updatePlayChange() {
        Iterator<OnMediaDataListUpdateListener> it = this.mUpdateListenerList.iterator();
        while (it.hasNext()) {
            it.next().onPlayChange();
        }
    }

    public void addPlayFinishCallback(OnMediaDataListUpdateListener onMediaDataListUpdateListener) {
        this.mUpdateListenerList.add(onMediaDataListUpdateListener);
    }

    public void removePlayFinishCallback(OnMediaDataListUpdateListener onMediaDataListUpdateListener) {
        this.mUpdateListenerList.remove(onMediaDataListUpdateListener);
    }
}
