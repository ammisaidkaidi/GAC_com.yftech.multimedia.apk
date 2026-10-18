package com.yftech.libgallery.view;

import com.media.common.entity.QuickMultipleEntity;
import com.yftech.libmvpmodule.mvp.IMvpView;
import java.util.List;

/* loaded from: /home/user/work/dex/classes4.dex */
public interface IPictureListActivityView extends IMvpView {
    void displayPictureDeleteResult(boolean z);

    void displayPictureList(List<QuickMultipleEntity> list);

    void displayPictureListAfterDeleting(List<QuickMultipleEntity> list);
}
