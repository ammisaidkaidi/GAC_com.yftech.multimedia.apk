package com.yftech.car.widget.media.video;

import com.yftech.car.media.data.entity.MediaFile;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: /home/user/work/dex/classes3.dex */
public class VideoDataPlayManager {
    private static VideoDataPlayManager mVideoDataPlayManager;
    private MediaFile mMediaFile;
    private int mPosition;
    private final List<MediaFile> mList = new ArrayList();
    private final List<OnMediaDataListUpdateListener> mUpdateListenerList = new ArrayList();
    private long mPlayVideoId = -1;
    private boolean isPlaying = false;

    /* loaded from: /home/user/work/dex/classes3.dex */
    public interface OnMediaDataListUpdateListener {
        void onPlayChange();
    }

    public static VideoDataPlayManager getInstance() {
        if (mVideoDataPlayManager == null) {
            synchronized (VideoDataPlayManager.class) {
                if (mVideoDataPlayManager == null) {
                    mVideoDataPlayManager = new VideoDataPlayManager();
                }
            }
        }
        return mVideoDataPlayManager;
    }

    public VideoDataPlayManager setPlaying(boolean z) {
        this.isPlaying = z;
        return this;
    }

    public VideoDataPlayManager setPlayVideoId(long j) {
        this.mPlayVideoId = j;
        return this;
    }

    public VideoDataPlayManager setPlayVideoFile(MediaFile mediaFile) {
        this.mPlayVideoId = mediaFile.getId();
        this.mMediaFile = new MediaFile(mediaFile);
        return this;
    }

    public long getPlayVideoId() {
        return this.mPlayVideoId;
    }

    public boolean isPlaying() {
        return this.isPlaying;
    }

    public void setPlayListData(List<MediaFile> list, int i) {
        if (!this.mList.isEmpty()) {
            this.mList.clear();
        }
        this.mList.addAll(list);
        this.mPosition = i;
    }

    public int getPlayPosition() {
        return this.mPosition;
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

    public MediaFile getMediaFile() {
        return this.mMediaFile;
    }
}
