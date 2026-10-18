package com.yftech.libgallery.presenter;

import android.app.Activity;
import com.yftech.car.media.data.entity.MediaFile;
import com.yftech.libgallery.model.PictureModel;
import com.yftech.libgallery.model.interfaces.IPictureModel;
import com.yftech.libgallery.presenter.interfaces.IFullScreenImagePresenter;
import com.yftech.libgallery.view.IFullScreenImageFragmentView;
import com.yftech.libmvpmodule.BasePresenter;
import java.util.List;

/* loaded from: /home/user/work/dex/classes.dex */
public class FullScreenImagePresenter extends BasePresenter<IFullScreenImageFragmentView> implements IFullScreenImagePresenter {
    private PictureModel pictureModel;

    public FullScreenImagePresenter(Activity activity) {
        super(activity);
        this.pictureModel = new PictureModel();
    }

    @Override // com.yftech.libgallery.presenter.interfaces.IFullScreenImagePresenter
    public void getImagesByIndex(int i, String str) {
        this.pictureModel.getImageList(str, i, this, new IPictureModel.OnImageListLoadListener() { // from class: com.yftech.libgallery.presenter.FullScreenImagePresenter.1
            @Override // com.yftech.libgallery.model.interfaces.IPictureModel.OnImageListLoadListener
            public void onComplete(final int i2, final List<MediaFile> list) {
                if (FullScreenImagePresenter.this.getActivity() != null) {
                    FullScreenImagePresenter.this.getActivity().runOnUiThread(new Runnable() { // from class: com.yftech.libgallery.presenter.FullScreenImagePresenter.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (FullScreenImagePresenter.this.isViewAttach()) {
                                FullScreenImagePresenter.this.getView().displayImages(i2, list);
                            }
                        }
                    });
                }
            }
        });
    }
}
