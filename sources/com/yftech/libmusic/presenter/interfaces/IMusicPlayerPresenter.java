package com.yftech.libmusic.presenter.interfaces;

import com.yftech.car.media.data.entity.MediaFile;

/* loaded from: /home/user/work/dex/classes4.dex */
public interface IMusicPlayerPresenter {
    void getLyricFromFile(String str, MediaFile mediaFile);

    void getMusicFiles(String str);

    void getThumbDataByPath(String str);
}
