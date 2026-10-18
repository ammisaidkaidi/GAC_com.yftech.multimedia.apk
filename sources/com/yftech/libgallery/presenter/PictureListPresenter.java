package com.yftech.libgallery.presenter;

import android.app.Activity;
import com.media.common.entity.QuickMultipleEntity;
import com.yftech.libgallery.model.PictureModel;
import com.yftech.libgallery.model.interfaces.IPictureModel;
import com.yftech.libgallery.presenter.interfaces.IPictureListPresenter;
import com.yftech.libgallery.view.IPictureListActivityView;
import com.yftech.libmvpmodule.BasePresenter;
import java.util.List;

/* loaded from: /home/user/work/dex/classes.dex */
public class PictureListPresenter extends BasePresenter<IPictureListActivityView> implements IPictureListPresenter {
    private final PictureModel pictureModel;

    public PictureListPresenter(Activity activity) {
        super(activity);
        this.pictureModel = new PictureModel();
    }

    @Override // com.yftech.libgallery.presenter.interfaces.IPictureListPresenter
    public void getPictureListData(int i) {
        this.pictureModel.getGallery(i, this, new IPictureModel.OnGalleryLoadListener() { // from class: com.yftech.libgallery.presenter.PictureListPresenter.1
            @Override // com.yftech.libgallery.model.interfaces.IPictureModel.OnGalleryLoadListener
            public void onComplete(final List<QuickMultipleEntity> list) {
                if (PictureListPresenter.this.getActivity() != null) {
                    PictureListPresenter.this.getActivity().runOnUiThread(new Runnable() { // from class: com.yftech.libgallery.presenter.PictureListPresenter.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (PictureListPresenter.this.isViewAttach()) {
                                PictureListPresenter.this.getView().displayPictureList(list);
                            }
                        }
                    });
                }
            }
        });
    }

    @Override // com.yftech.libgallery.presenter.interfaces.IPictureListPresenter
    public void deletePicture(List<QuickMultipleEntity> list) {
        this.pictureModel.deleteImages(list, this, new IPictureModel.OnImageDeleteLoadListener() { // from class: com.yftech.libgallery.presenter.PictureListPresenter.2
            @Override // com.yftech.libgallery.model.interfaces.IPictureModel.OnImageDeleteLoadListener
            public void onComplete(final boolean z) {
                if (PictureListPresenter.this.getActivity() != null) {
                    PictureListPresenter.this.getActivity().runOnUiThread(new Runnable() { // from class: com.yftech.libgallery.presenter.PictureListPresenter.2.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (PictureListPresenter.this.isViewAttach()) {
                                PictureListPresenter.this.getView().displayPictureDeleteResult(z);
                            }
                        }
                    });
                }
            }
        });
    }

    @Override // com.yftech.libgallery.presenter.interfaces.IPictureListPresenter
    public void getPictureDataAfterDeleting(int i) {
        this.pictureModel.getGallery(i, this, new IPictureModel.OnGalleryLoadListener() { // from class: com.yftech.libgallery.presenter.PictureListPresenter.3
            @Override // com.yftech.libgallery.model.interfaces.IPictureModel.OnGalleryLoadListener
            public void onComplete(final List<QuickMultipleEntity> list) {
                if (PictureListPresenter.this.getActivity() != null) {
                    PictureListPresenter.this.getActivity().runOnUiThread(new Runnable() { // from class: com.yftech.libgallery.presenter.PictureListPresenter.3.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (PictureListPresenter.this.isViewAttach()) {
                                PictureListPresenter.this.getView().displayPictureListAfterDeleting(list);
                            }
                        }
                    });
                }
            }
        });
    }
}
