package com.yftech.libmusic.view;

import com.yftech.car.media.data.entity.MediaFile;
import com.yftech.libmusic.bean.LyricObject;
import com.yftech.libmvpmodule.mvp.IMvpView;
import java.util.List;

/* loaded from: /home/user/work/dex/classes4.dex */
public interface IMusicPlayerFragmentView extends IMvpView {
    void displayMusicFiles(List<MediaFile> list);

    void displayMusicLyricPath(List<LyricObject> list);

    void displayThumbDataByPath(String str, byte[] bArr);
}
