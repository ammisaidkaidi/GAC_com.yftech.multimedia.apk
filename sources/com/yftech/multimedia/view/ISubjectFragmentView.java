package com.yftech.multimedia.view;

import android.graphics.Bitmap;
import com.yftech.car.media.data.entity.MediaFile;
import com.yftech.libmvpmodule.mvp.IMvpView;

/* loaded from: /home/user/work/dex/classes4.dex */
public interface ISubjectFragmentView extends IMvpView {
    void displayPhotoFileExist(int i);

    void displayPhotoFileFrame(MediaFile mediaFile);

    void displayPhotoFileSize(int i);

    void displayVideoFileExist(int i);

    void displayVideoFileFrame(Bitmap bitmap);

    void displayVideoFileSize(int i);
}
