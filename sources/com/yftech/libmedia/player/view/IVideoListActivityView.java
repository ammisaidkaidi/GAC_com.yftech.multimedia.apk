package com.yftech.libmedia.player.view;

import com.media.common.entity.QuickMultipleEntity;
import com.yftech.libmvpmodule.mvp.IMvpView;
import java.util.List;

/* loaded from: /home/user/work/dex/classes4.dex */
public interface IVideoListActivityView extends IMvpView {
    void displayVideoList(List<QuickMultipleEntity> list);
}
