package com.yftech.libgallery.presenter.interfaces;

import com.media.common.entity.QuickMultipleEntity;
import java.util.List;

/* loaded from: /home/user/work/dex/classes.dex */
public interface IPictureListPresenter {
    void deletePicture(List<QuickMultipleEntity> list);

    void getPictureDataAfterDeleting(int i);

    void getPictureListData(int i);
}
