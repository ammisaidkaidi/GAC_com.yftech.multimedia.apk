package com.yftech.libmedia.player.model.interfaces;

import com.media.common.entity.QuickMultipleEntity;
import com.yftech.car.media.data.entity.MediaFile;
import com.yftech.libmvpmodule.BasePresenter;
import com.yftech.libmvpmodule.mvp.IMvpView;
import java.util.List;

/* loaded from: /home/user/work/dex/classes4.dex */
public interface IVideoModel {

    /* loaded from: /home/user/work/dex/classes4.dex */
    public interface OnVideoLoadListener {
        void onComplete(List<QuickMultipleEntity> list);
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public interface OnVideoPlayListLoadListener {
        void onComplete(int i, List<MediaFile> list);
    }

    void getVideo(int i, BasePresenter<? extends IMvpView> basePresenter, OnVideoLoadListener onVideoLoadListener);

    void getVideoPlayList(int i, String str, BasePresenter<? extends IMvpView> basePresenter, OnVideoPlayListLoadListener onVideoPlayListLoadListener);
}
