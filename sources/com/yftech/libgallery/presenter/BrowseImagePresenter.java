package com.yftech.libgallery.presenter;

import android.app.Activity;
import com.yftech.car.media.data.entity.MediaFile;
import com.yftech.libgallery.model.PictureModel;
import com.yftech.libgallery.model.interfaces.IPictureModel;
import com.yftech.libgallery.presenter.interfaces.IBrowseImagePresenter;
import com.yftech.libgallery.view.IBrowseImageFragmentView;
import com.yftech.libmvpmodule.BasePresenter;
import java.util.List;

/* loaded from: /home/user/work/dex/classes.dex */
public class BrowseImagePresenter extends BasePresenter<IBrowseImageFragmentView> implements IBrowseImagePresenter {
    private PictureModel pictureModel;

    public BrowseImagePresenter(Activity activity) {
        super(activity);
        this.pictureModel = new PictureModel();
    }

    @Override // com.yftech.libgallery.presenter.interfaces.IBrowseImagePresenter
    public void getImageList(String str, int i) {
        this.pictureModel.getImageList(str, i, this, new IPictureModel.OnImageListLoadListener() { // from class: com.yftech.libgallery.presenter.BrowseImagePresenter.1
            @Override // com.yftech.libgallery.model.interfaces.IPictureModel.OnImageListLoadListener
            public void onComplete(final int i2, final List<MediaFile> list) {
                if (BrowseImagePresenter.this.getActivity() != null) {
                    BrowseImagePresenter.this.getActivity().runOnUiThread(new Runnable() { // from class: com.yftech.libgallery.presenter.BrowseImagePresenter.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (BrowseImagePresenter.this.isViewAttach()) {
                                BrowseImagePresenter.this.getView().displayImageList(i2, list);
                            }
                        }
                    });
                }
            }
        });
    }
}
