package com.yftech.libmusic.model.interfaces;

import com.yftech.car.media.data.entity.MediaFile;
import com.yftech.libmusic.bean.LyricObject;
import com.yftech.libmusic.bean.MediaFileItem;
import com.yftech.libmusic.bean.MusicListItem;
import com.yftech.libmvpmodule.BasePresenter;
import com.yftech.libmvpmodule.mvp.IMvpView;
import java.util.List;

/* loaded from: /home/user/work/dex/classes4.dex */
public interface IMusicModel {

    /* loaded from: /home/user/work/dex/classes4.dex */
    public interface OnBandValueLoadListener {
        void onComplete(float[] fArr);
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public interface OnBandValueSettingResultLoadListener {
        void onComplete(boolean z);
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public interface OnEQTypeLoadListener {
        void onComplete(int i);
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public interface OnEQTypeSettingResultLoadListener {
        void onComplete(boolean z);
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public interface OnHotMusicLoadListener {
        void onComplete(List<String> list);
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public interface OnMusicFilesLoadListener {
        void onComplete(List<MediaFile> list);
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public interface OnMusicLoadListener {
        void onComplete(MediaFile mediaFile, List<MusicListItem> list);
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public interface OnMusicLyricLoadListener {
        void onComplete(List<LyricObject> list);
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public interface OnMusicPlayPositionLoadListener {
        void onComplete(int i);
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public interface OnMusicSearchResultLoadListener {
        void onComplete(MediaFile mediaFile, List<MediaFileItem> list);
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public interface OnMusicSongListLoadListener {
        void onComplete(int i, List<MediaFileItem> list);
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public interface OnPlayListSizeLoadListener {
        void onComplete(int i);
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public interface OnThumbDataLoadListener {
        void onComplete(byte[] bArr);
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public interface OnsetDTSTypeSettingResultLoadListener {
        void onComplete(boolean z);
    }

    void getBandCurValue(BasePresenter<? extends IMvpView> basePresenter, OnBandValueLoadListener onBandValueLoadListener);

    void getBandMaxValue(BasePresenter<? extends IMvpView> basePresenter, OnBandValueLoadListener onBandValueLoadListener);

    void getBandMinValue(BasePresenter<? extends IMvpView> basePresenter, OnBandValueLoadListener onBandValueLoadListener);

    void getCurrentPlayList(BasePresenter<? extends IMvpView> basePresenter, OnMusicSongListLoadListener onMusicSongListLoadListener);

    void getEQType(BasePresenter<? extends IMvpView> basePresenter, OnEQTypeLoadListener onEQTypeLoadListener);

    void getHotMusicByKeyword(String str, BasePresenter<? extends IMvpView> basePresenter, OnHotMusicLoadListener onHotMusicLoadListener);

    void getLyricFromFile(MediaFile mediaFile, BasePresenter<? extends IMvpView> basePresenter, OnMusicLyricLoadListener onMusicLyricLoadListener);

    void getMusic(int i, BasePresenter<? extends IMvpView> basePresenter, OnMusicLoadListener onMusicLoadListener);

    void getMusicFiles(String str, BasePresenter<? extends IMvpView> basePresenter, OnMusicFilesLoadListener onMusicFilesLoadListener);

    void getPlayListSize(BasePresenter<? extends IMvpView> basePresenter, OnPlayListSizeLoadListener onPlayListSizeLoadListener);

    void getPlayPosition(BasePresenter<? extends IMvpView> basePresenter, OnMusicPlayPositionLoadListener onMusicPlayPositionLoadListener);

    void getThumbDataByPath(String str, BasePresenter<? extends IMvpView> basePresenter, OnThumbDataLoadListener onThumbDataLoadListener);

    void searchMusic(String str, int i, BasePresenter<? extends IMvpView> basePresenter, OnMusicSearchResultLoadListener onMusicSearchResultLoadListener);

    void setBandValue(float[] fArr, BasePresenter<? extends IMvpView> basePresenter, OnBandValueSettingResultLoadListener onBandValueSettingResultLoadListener);

    void setDTSType(int i, BasePresenter<? extends IMvpView> basePresenter, OnsetDTSTypeSettingResultLoadListener onsetDTSTypeSettingResultLoadListener);

    void setEQType(int i, BasePresenter<? extends IMvpView> basePresenter, OnEQTypeSettingResultLoadListener onEQTypeSettingResultLoadListener);
}
