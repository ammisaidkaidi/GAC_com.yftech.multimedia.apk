package com.yftech.libmusic.utils;

import android.os.Handler;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.media.common.util.LogUtil;
import com.yftech.car.phonelink.CarPhoneLinkManager;
import com.yftech.car.phonelink.CarPhoneLinkMediaManager;
import com.yftech.car.phonelink.PhoneLink;
import com.yftech.car.phonelink.PhoneLinkMediaInfo;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: /home/user/work/dex/classes4.dex */
public class CarLifeMusicManager {
    private static volatile CarLifeMusicManager instance = null;
    private static final String string_unknown = "unknown";
    private boolean mIsCarLifeConnect;
    private String mSinger;
    private String mTitle;
    private int mPlayState = 2;
    private int mProgress = 0;
    private int mDuration = 0;
    private CarPhoneLinkManager.CarPhoneLinkCallback mCarPhoneLinkCallback = new CarPhoneLinkManager.CarPhoneLinkCallback() { // from class: com.yftech.libmusic.utils.CarLifeMusicManager.1
        public void onDeviceChanged(PhoneLink phoneLink) {
            LogUtil.d("onDeviceChanged:phoneLink=" + phoneLink.toString());
        }

        public void onConnectedStatusChanged(String str) {
            LogUtil.d("onConnectedStatusChanged:status=" + str);
            CarLifeMusicManager.this.mIsCarLifeConnect = "carlife".equals(str);
            Iterator it = CarLifeMusicManager.this.onCarLifeDataChangedCallbacks.iterator();
            while (it.hasNext()) {
                ((OnCarLifeDataChangedCallback) it.next()).onConnectionStatusChanged(CarLifeMusicManager.this.mIsCarLifeConnect);
            }
        }

        public void onShowHuaWeiConnectedDialog() {
            LogUtil.d("onShowHuaWeiConnectedDialog");
        }

        public void onVRStatusChanged(int i) {
            LogUtil.i("onVRStatusChanged:status=" + i);
        }
    };
    private CarPhoneLinkMediaManager.CarPhoneLinkMediaCallback mCarPhoneLinkMediaCallback = new CarPhoneLinkMediaManager.CarPhoneLinkMediaCallback() { // from class: com.yftech.libmusic.utils.CarLifeMusicManager.2
        public void onMediaInfoChanged(PhoneLinkMediaInfo phoneLinkMediaInfo) {
            if (CarLifeMusicManager.this.mIsCarLifeConnect && phoneLinkMediaInfo != null) {
                long duration = phoneLinkMediaInfo.getDuration();
                long progress = phoneLinkMediaInfo.getProgress();
                LogUtil.e("onMediaInfoChanged mTitle:" + phoneLinkMediaInfo.getSong() + ", mSinger:" + phoneLinkMediaInfo.getArtist() + ", mPlayState before:" + CarLifeMusicManager.this.mPlayState + ", mPlayState now:" + phoneLinkMediaInfo.isPlaying() + ", totalTime:" + duration + ", progress:" + progress);
                if (CarLifeMusicManager.this.mPlayState != phoneLinkMediaInfo.isPlaying()) {
                    Iterator it = CarLifeMusicManager.this.onCarLifeDataChangedCallbacks.iterator();
                    while (it.hasNext()) {
                        ((OnCarLifeDataChangedCallback) it.next()).onMusicPlayStatusChanged(phoneLinkMediaInfo.isPlaying());
                    }
                }
                CarLifeMusicManager.this.mPlayState = phoneLinkMediaInfo.isPlaying();
                if (2 == phoneLinkMediaInfo.isPlaying()) {
                    CarLifeMusicManager.this.tempInfo.title = "";
                    CarLifeMusicManager.this.tempInfo.artist = "";
                    CarLifeMusicManager.this.tempInfo.album = "";
                } else {
                    CarLifeMusicManager.this.tempInfo.title = (phoneLinkMediaInfo.getSong() == null || TextUtils.isEmpty(phoneLinkMediaInfo.getSong().trim())) ? CarLifeMusicManager.string_unknown : phoneLinkMediaInfo.getSong();
                    CarLifeMusicManager.this.tempInfo.artist = (phoneLinkMediaInfo.getArtist() == null || TextUtils.isEmpty(phoneLinkMediaInfo.getArtist().trim())) ? CarLifeMusicManager.string_unknown : phoneLinkMediaInfo.getArtist();
                    CarLifeMusicManager.this.tempInfo.album = "";
                }
                if (!CarLifeMusicManager.this.tempInfo.title.equals(CarLifeMusicManager.this.mTitle) || !CarLifeMusicManager.this.tempInfo.artist.equals(CarLifeMusicManager.this.mSinger)) {
                    Iterator it2 = CarLifeMusicManager.this.onCarLifeDataChangedCallbacks.iterator();
                    while (it2.hasNext()) {
                        ((OnCarLifeDataChangedCallback) it2.next()).onMusicInformationChanged(CarLifeMusicManager.this.tempInfo);
                    }
                    CarLifeMusicManager.this.mTitle = phoneLinkMediaInfo.getSong();
                    CarLifeMusicManager.this.mSinger = phoneLinkMediaInfo.getArtist();
                }
                Iterator it3 = CarLifeMusicManager.this.onCarLifeDataChangedCallbacks.iterator();
                while (it3.hasNext()) {
                    ((OnCarLifeDataChangedCallback) it3.next()).onMusicProgressChanged(CarLifeMusicManager.this.mProgress);
                }
                CarLifeMusicManager.this.mProgress = (int) progress;
                if (duration <= 0 || CarLifeMusicManager.this.mDuration == duration) {
                    return;
                }
                Iterator it4 = CarLifeMusicManager.this.onCarLifeDataChangedCallbacks.iterator();
                while (it4.hasNext()) {
                    ((OnCarLifeDataChangedCallback) it4.next()).onMusicDurationChanged((int) duration);
                }
                CarLifeMusicManager.this.mDuration = (int) duration;
            }
        }
    };
    private List<OnCarLifeDataChangedCallback> onCarLifeDataChangedCallbacks = new ArrayList();
    private OnCarLifeDataChangedCallback.MusicInfo tempInfo = new OnCarLifeDataChangedCallback.MusicInfo();

    public static CarLifeMusicManager getInstance() {
        if (instance == null) {
            synchronized (CarLifeMusicManager.class) {
                if (instance == null) {
                    instance = new CarLifeMusicManager();
                }
            }
        }
        return instance;
    }

    private CarLifeMusicManager() {
        LogUtil.d("CarLifeMusicManager:registerCallback");
        CarPhoneLinkManager.getInstance().registerCarPhoneLinkCallback(this.mCarPhoneLinkCallback, (Handler) null);
        CarPhoneLinkMediaManager.getInstance().registerCarPhoneLinkMediaCallback(this.mCarPhoneLinkMediaCallback, (Handler) null);
        this.mIsCarLifeConnect = "carlife".equals(CarPhoneLinkManager.getInstance().getConnectedLinkStatus());
    }

    public void release() {
        LogUtil.d("release");
        CarPhoneLinkManager.getInstance().unregisterCarPhoneLinkCallback(this.mCarPhoneLinkCallback);
        CarPhoneLinkMediaManager.getInstance().unregisterCarPhoneLinkCallback(this.mCarPhoneLinkMediaCallback);
        if (this.onCarLifeDataChangedCallbacks != null) {
            this.onCarLifeDataChangedCallbacks.clear();
            this.onCarLifeDataChangedCallbacks = null;
        }
        instance = null;
    }

    public void registerMusicControlCallback(OnCarLifeDataChangedCallback onCarLifeDataChangedCallback) {
        this.onCarLifeDataChangedCallbacks.add(onCarLifeDataChangedCallback);
    }

    public void unregisterMusicControlCallback(OnCarLifeDataChangedCallback onCarLifeDataChangedCallback) {
        this.onCarLifeDataChangedCallbacks.remove(onCarLifeDataChangedCallback);
    }

    public void setMusicControl(int i) {
        LogUtil.d("Control CarLife Music:value=" + i);
        switch (i) {
            case 0:
                CarPhoneLinkMediaManager.getInstance().stop();
                return;
            case 1:
                CarPhoneLinkMediaManager.getInstance().play();
                return;
            case 2:
                CarPhoneLinkMediaManager.getInstance().next();
                return;
            case 3:
                CarPhoneLinkMediaManager.getInstance().previous();
                return;
            default:
                return;
        }
    }

    public boolean getCarLifeConnectionStatus() {
        this.mIsCarLifeConnect = "carlife".equals(CarPhoneLinkManager.getInstance().getConnectedLinkStatus());
        LogUtil.d("getCarLifeConnectionStatus:mIsCarLifeConnect=" + this.mIsCarLifeConnect);
        return this.mIsCarLifeConnect;
    }

    public int getCarLifeMusicPlayStatus() {
        LogUtil.d("getCarLifeMusicPlayStatus:mPlayState=" + this.mPlayState);
        return this.mPlayState;
    }

    public OnCarLifeDataChangedCallback.MusicInfo getCarLifeMusicInformation() {
        OnCarLifeDataChangedCallback.MusicInfo musicInfo = new OnCarLifeDataChangedCallback.MusicInfo();
        if (!TextUtils.isEmpty(this.mTitle) && !TextUtils.isEmpty(this.mSinger)) {
            LogUtil.d("songInfo:mTitle" + this.mTitle + ", mSinger=" + this.mSinger);
            musicInfo.title = this.mTitle;
            musicInfo.artist = this.mSinger;
            musicInfo.album = "";
        } else {
            musicInfo.title = string_unknown;
            musicInfo.artist = string_unknown;
            musicInfo.album = string_unknown;
        }
        return musicInfo;
    }

    public int getCarLifeMusicDuration() {
        return this.mDuration;
    }

    public int getCarLifeMusicProgress() {
        return this.mProgress;
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public interface OnCarLifeDataChangedCallback {
        void onConnectionStatusChanged(boolean z);

        void onMusicDurationChanged(int i);

        void onMusicInformationChanged(MusicInfo musicInfo);

        void onMusicPlayStatusChanged(int i);

        void onMusicProgressChanged(int i);

        /* loaded from: /home/user/work/dex/classes4.dex */
        public static class MusicInfo {
            public String album;
            public String artist;
            public String title;

            @NonNull
            public String toString() {
                return "MusicInfo:title:" + this.title + " artist:" + this.artist + " album:" + this.album;
            }
        }
    }
}
