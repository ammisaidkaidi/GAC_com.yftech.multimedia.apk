package com.yftech.libmedia.player.view;

import com.yftech.car.media.data.entity.MediaFile;
import com.yftech.libmvpmodule.mvp.IMvpView;
import java.util.List;

/* loaded from: /home/user/work/dex/classes4.dex */
public interface IPlayActivityView extends IMvpView {
    void displayVideoPlayList(int i, List<MediaFile> list);
}
