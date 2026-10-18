package com.yftech.libgallery.model.interfaces;

import com.media.common.entity.QuickMultipleEntity;
import com.yftech.car.media.data.entity.MediaFile;
import com.yftech.libmvpmodule.BasePresenter;
import com.yftech.libmvpmodule.mvp.IMvpView;
import java.util.List;

/* loaded from: /home/user/work/dex/classes.dex */
public interface IPictureModel {

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface OnGalleryLoadListener {
        void onComplete(List<QuickMultipleEntity> list);
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface OnImageDeleteLoadListener {
        void onComplete(boolean z);
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface OnImageListLoadListener {
        void onComplete(int i, List<MediaFile> list);
    }

    void deleteImages(List<QuickMultipleEntity> list, BasePresenter<? extends IMvpView> basePresenter, OnImageDeleteLoadListener onImageDeleteLoadListener);

    void getGallery(int i, BasePresenter<? extends IMvpView> basePresenter, OnGalleryLoadListener onGalleryLoadListener);

    void getImageList(String str, int i, BasePresenter<? extends IMvpView> basePresenter, OnImageListLoadListener onImageListLoadListener);
}
