package com.yftech.multimedia.model.interfaces;

import android.graphics.Bitmap;
import com.yftech.car.media.data.entity.MediaFile;
import com.yftech.libmvpmodule.BasePresenter;
import com.yftech.libmvpmodule.mvp.IMvpView;

/* loaded from: /home/user/work/dex/classes4.dex */
public interface ISubjectModel {

    /* loaded from: /home/user/work/dex/classes4.dex */
    public interface OnFileExistLoadListener {
        void onComplete(int i);
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public interface OnFileSizeLoadListener {
        void onComplete(int i);
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public interface OnPhotoFrameLoadListener {
        void onComplete(MediaFile mediaFile);
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public interface OnVideoFrameLoadListener {
        void onComplete(Bitmap bitmap);
    }

    void getPhotoFileExist(int i, BasePresenter<? extends IMvpView> basePresenter, OnFileExistLoadListener onFileExistLoadListener);

    void getPhotoFileFrame(int i, BasePresenter<? extends IMvpView> basePresenter, OnPhotoFrameLoadListener onPhotoFrameLoadListener);

    void getPhotoFileSize(int i, BasePresenter<? extends IMvpView> basePresenter, OnFileSizeLoadListener onFileSizeLoadListener);

    void getVideoFileExist(int i, BasePresenter<? extends IMvpView> basePresenter, OnFileExistLoadListener onFileExistLoadListener);

    void getVideoFileFrame(int i, BasePresenter<? extends IMvpView> basePresenter, OnVideoFrameLoadListener onVideoFrameLoadListener);

    void getVideoFileSize(int i, BasePresenter<? extends IMvpView> basePresenter, OnFileSizeLoadListener onFileSizeLoadListener);
}
