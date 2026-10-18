package com.yftech.car.widget.media.video;

import android.graphics.Bitmap;
import android.util.Log;
import com.yftech.car.media.data.entity.MediaFile;
import com.yftech.car.utils.Loger;
import com.yftech.car.widget.media.video.BaseVideo;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: /home/user/work/dex/classes3.dex */
public class VideoCallbackManager {
    private static final String TAG = "VideoCallbackManager";
    private final List<BaseVideo.VideoListener> mVideoCallbackList = new ArrayList();

    public void addCallback(BaseVideo.VideoListener videoListener) {
        if (videoListener != null) {
            synchronized (this.mVideoCallbackList) {
                int size = this.mVideoCallbackList.size();
                if (size > 0) {
                    int i = 0;
                    while (true) {
                        if (i >= size) {
                            break;
                        }
                        if (this.mVideoCallbackList.get(i) == videoListener) {
                            this.mVideoCallbackList.remove(i);
                            break;
                        }
                        i++;
                    }
                }
                this.mVideoCallbackList.add(videoListener);
            }
            Loger.e(TAG, " addCallback: mVideoCallbackList==" + this.mVideoCallbackList.size());
            return;
        }
        throw new NullPointerException("NullPointerException callback == null");
    }

    public void removeCallback(BaseVideo.VideoListener videoListener) {
        if (videoListener != null) {
            Log.d(TAG, "removeCallback: isRemove==" + this.mVideoCallbackList.remove(videoListener));
            return;
        }
        this.mVideoCallbackList.clear();
    }

    public void onPlayChange(MediaFile mediaFile) {
        VideoDataPlayManager.getInstance().setPlayVideoFile(mediaFile);
        if (this.mVideoCallbackList.isEmpty()) {
            return;
        }
        synchronized (this.mVideoCallbackList) {
            Iterator<BaseVideo.VideoListener> it = this.mVideoCallbackList.iterator();
            while (it.hasNext()) {
                it.next().onPlayChange(mediaFile);
            }
        }
    }

    public void onProgress(int i) {
        if (this.mVideoCallbackList.isEmpty()) {
            return;
        }
        synchronized (this.mVideoCallbackList) {
            Iterator<BaseVideo.VideoListener> it = this.mVideoCallbackList.iterator();
            while (it.hasNext()) {
                it.next().onProgress(i);
            }
        }
    }

    public void onStartTrackingTouch(int i, boolean z) {
        if (this.mVideoCallbackList.isEmpty()) {
            return;
        }
        synchronized (this.mVideoCallbackList) {
            Iterator<BaseVideo.VideoListener> it = this.mVideoCallbackList.iterator();
            while (it.hasNext()) {
                it.next().onStartTrackingTouch(i, z);
            }
        }
    }

    public void onPrepared(int i) {
        if (this.mVideoCallbackList.isEmpty()) {
            return;
        }
        synchronized (this.mVideoCallbackList) {
            Iterator<BaseVideo.VideoListener> it = this.mVideoCallbackList.iterator();
            while (it.hasNext()) {
                it.next().onPrepared(i);
            }
        }
    }

    public void onPlayMode(int i) {
        if (this.mVideoCallbackList.isEmpty()) {
            return;
        }
        synchronized (this.mVideoCallbackList) {
            Iterator<BaseVideo.VideoListener> it = this.mVideoCallbackList.iterator();
            while (it.hasNext()) {
                it.next().onPlayMode(i);
            }
        }
    }

    public void onScaleType(int i) {
        if (this.mVideoCallbackList.isEmpty()) {
            return;
        }
        synchronized (this.mVideoCallbackList) {
            Iterator<BaseVideo.VideoListener> it = this.mVideoCallbackList.iterator();
            while (it.hasNext()) {
                it.next().onScaleType(i);
            }
        }
    }

    public void onPlayingChange(boolean z) {
        VideoDataPlayManager.getInstance().setPlaying(z);
        if (this.mVideoCallbackList.isEmpty()) {
            return;
        }
        synchronized (this.mVideoCallbackList) {
            Iterator<BaseVideo.VideoListener> it = this.mVideoCallbackList.iterator();
            while (it.hasNext()) {
                it.next().onPlayingChange(z);
            }
        }
    }

    public boolean onPlayerError(int i, int i2) {
        boolean z = false;
        if (!this.mVideoCallbackList.isEmpty()) {
            synchronized (this.mVideoCallbackList) {
                Iterator<BaseVideo.VideoListener> it = this.mVideoCallbackList.iterator();
                while (it.hasNext()) {
                    if (it.next().onPlayerError(i, i2)) {
                        z = true;
                    }
                }
            }
        }
        return z;
    }

    public boolean onInfo(int i, int i2) {
        boolean z = false;
        if (!this.mVideoCallbackList.isEmpty()) {
            synchronized (this.mVideoCallbackList) {
                Iterator<BaseVideo.VideoListener> it = this.mVideoCallbackList.iterator();
                while (it.hasNext()) {
                    if (it.next().onInfo(i, i2)) {
                        z = true;
                    }
                }
            }
        }
        return z;
    }

    public void onSlideProgress(boolean z, int i, long j, boolean z2) {
        if (this.mVideoCallbackList.isEmpty()) {
            return;
        }
        synchronized (this.mVideoCallbackList) {
            Iterator<BaseVideo.VideoListener> it = this.mVideoCallbackList.iterator();
            while (it.hasNext()) {
                it.next().onSlideProgress(z, i, j, z2);
            }
        }
    }

    public void onDoubleClick(boolean z) {
        if (this.mVideoCallbackList.isEmpty()) {
            return;
        }
        synchronized (this.mVideoCallbackList) {
            Iterator<BaseVideo.VideoListener> it = this.mVideoCallbackList.iterator();
            while (it.hasNext()) {
                it.next().onDoubleClick(z);
            }
        }
    }

    public void onPlaySequenceCompletion() {
        if (this.mVideoCallbackList.isEmpty()) {
            return;
        }
        synchronized (this.mVideoCallbackList) {
            Iterator<BaseVideo.VideoListener> it = this.mVideoCallbackList.iterator();
            while (it.hasNext()) {
                it.next().onPlaySequenceCompletion();
            }
        }
    }

    public void onPlaybackParams(float f) {
        if (this.mVideoCallbackList.isEmpty()) {
            return;
        }
        synchronized (this.mVideoCallbackList) {
            Iterator<BaseVideo.VideoListener> it = this.mVideoCallbackList.iterator();
            while (it.hasNext()) {
                it.next().onPlaybackParams(f);
            }
        }
    }

    public void onPlayError(int i) {
        if (this.mVideoCallbackList.isEmpty()) {
            return;
        }
        synchronized (this.mVideoCallbackList) {
            Iterator<BaseVideo.VideoListener> it = this.mVideoCallbackList.iterator();
            while (it.hasNext()) {
                it.next().onPlayError(i);
            }
        }
    }

    public boolean onPlayException(int i) {
        boolean z = false;
        if (!this.mVideoCallbackList.isEmpty()) {
            synchronized (this.mVideoCallbackList) {
                Iterator<BaseVideo.VideoListener> it = this.mVideoCallbackList.iterator();
                while (it.hasNext()) {
                    if (it.next().onPlayException(i)) {
                        z = true;
                    }
                }
            }
        }
        return z;
    }

    public boolean onAudioFocusChange(int i) {
        boolean z = false;
        if (!this.mVideoCallbackList.isEmpty()) {
            synchronized (this.mVideoCallbackList) {
                Iterator<BaseVideo.VideoListener> it = this.mVideoCallbackList.iterator();
                while (it.hasNext()) {
                    if (it.next().onAudioFocusChange(i)) {
                        z = true;
                    }
                }
            }
        }
        return z;
    }

    public void onStorageDisconnect() {
        if (this.mVideoCallbackList.isEmpty()) {
            return;
        }
        synchronized (this.mVideoCallbackList) {
            Iterator<BaseVideo.VideoListener> it = this.mVideoCallbackList.iterator();
            while (it.hasNext()) {
                it.next().onStorageDisconnect();
            }
        }
    }

    public Bitmap loadSeekProgressImage(String str, long j, int i, int i2) {
        if (this.mVideoCallbackList.isEmpty()) {
            return null;
        }
        synchronized (this.mVideoCallbackList) {
            Iterator<BaseVideo.VideoListener> it = this.mVideoCallbackList.iterator();
            while (it.hasNext()) {
                Bitmap loadSeekProgressImage = it.next().loadSeekProgressImage(str, j, i, i2);
                if (loadSeekProgressImage != null) {
                    return loadSeekProgressImage;
                }
            }
            return null;
        }
    }
}
