package com.yftech.multimedia.presenter;

import android.app.Activity;
import android.graphics.Bitmap;
import com.yftech.car.media.data.entity.MediaFile;
import com.yftech.libmvpmodule.BasePresenter;
import com.yftech.multimedia.model.SubjectModel;
import com.yftech.multimedia.model.interfaces.ISubjectModel;
import com.yftech.multimedia.presenter.interfaces.ISubjectPresenter;
import com.yftech.multimedia.view.ISubjectFragmentView;

/* loaded from: /home/user/work/dex/classes4.dex */
public class SubjectPresenter extends BasePresenter<ISubjectFragmentView> implements ISubjectPresenter {
    private final SubjectModel subjectModel;

    public SubjectPresenter(Activity activity) {
        super(activity);
        this.subjectModel = new SubjectModel();
    }

    @Override // com.yftech.multimedia.presenter.interfaces.ISubjectPresenter
    public void getVideoFileExist(int i) {
        this.subjectModel.getVideoFileExist(i, this, new ISubjectModel.OnFileExistLoadListener() { // from class: com.yftech.multimedia.presenter.SubjectPresenter.1
            @Override // com.yftech.multimedia.model.interfaces.ISubjectModel.OnFileExistLoadListener
            public void onComplete(final int i2) {
                if (SubjectPresenter.this.getActivity() != null) {
                    SubjectPresenter.this.getActivity().runOnUiThread(new Runnable() { // from class: com.yftech.multimedia.presenter.SubjectPresenter.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (SubjectPresenter.this.isViewAttach()) {
                                ((ISubjectFragmentView) SubjectPresenter.this.getView()).displayVideoFileExist(i2);
                            }
                        }
                    });
                }
            }
        });
    }

    @Override // com.yftech.multimedia.presenter.interfaces.ISubjectPresenter
    public void getPhotoFileExist(int i) {
        this.subjectModel.getPhotoFileExist(i, this, new ISubjectModel.OnFileExistLoadListener() { // from class: com.yftech.multimedia.presenter.SubjectPresenter.2
            @Override // com.yftech.multimedia.model.interfaces.ISubjectModel.OnFileExistLoadListener
            public void onComplete(final int i2) {
                if (SubjectPresenter.this.getActivity() != null) {
                    SubjectPresenter.this.getActivity().runOnUiThread(new Runnable() { // from class: com.yftech.multimedia.presenter.SubjectPresenter.2.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (SubjectPresenter.this.isViewAttach()) {
                                ((ISubjectFragmentView) SubjectPresenter.this.getView()).displayPhotoFileExist(i2);
                            }
                        }
                    });
                }
            }
        });
    }

    @Override // com.yftech.multimedia.presenter.interfaces.ISubjectPresenter
    public void getVideoFileSize(int i) {
        this.subjectModel.getVideoFileSize(i, this, new ISubjectModel.OnFileSizeLoadListener() { // from class: com.yftech.multimedia.presenter.SubjectPresenter.3
            @Override // com.yftech.multimedia.model.interfaces.ISubjectModel.OnFileSizeLoadListener
            public void onComplete(final int i2) {
                if (SubjectPresenter.this.getActivity() != null) {
                    SubjectPresenter.this.getActivity().runOnUiThread(new Runnable() { // from class: com.yftech.multimedia.presenter.SubjectPresenter.3.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (SubjectPresenter.this.isViewAttach()) {
                                ((ISubjectFragmentView) SubjectPresenter.this.getView()).displayVideoFileSize(i2);
                            }
                        }
                    });
                }
            }
        });
    }

    @Override // com.yftech.multimedia.presenter.interfaces.ISubjectPresenter
    public void getPhotoFileSize(int i) {
        this.subjectModel.getPhotoFileSize(i, this, new ISubjectModel.OnFileSizeLoadListener() { // from class: com.yftech.multimedia.presenter.SubjectPresenter.4
            @Override // com.yftech.multimedia.model.interfaces.ISubjectModel.OnFileSizeLoadListener
            public void onComplete(final int i2) {
                if (SubjectPresenter.this.getActivity() != null) {
                    SubjectPresenter.this.getActivity().runOnUiThread(new Runnable() { // from class: com.yftech.multimedia.presenter.SubjectPresenter.4.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (SubjectPresenter.this.isViewAttach()) {
                                ((ISubjectFragmentView) SubjectPresenter.this.getView()).displayPhotoFileSize(i2);
                            }
                        }
                    });
                }
            }
        });
    }

    @Override // com.yftech.multimedia.presenter.interfaces.ISubjectPresenter
    public void getVideoFileFrame(int i) {
        this.subjectModel.getVideoFileFrame(i, this, new ISubjectModel.OnVideoFrameLoadListener() { // from class: com.yftech.multimedia.presenter.SubjectPresenter.5
            @Override // com.yftech.multimedia.model.interfaces.ISubjectModel.OnVideoFrameLoadListener
            public void onComplete(final Bitmap bitmap) {
                if (SubjectPresenter.this.getActivity() != null) {
                    SubjectPresenter.this.getActivity().runOnUiThread(new Runnable() { // from class: com.yftech.multimedia.presenter.SubjectPresenter.5.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (SubjectPresenter.this.isViewAttach()) {
                                ((ISubjectFragmentView) SubjectPresenter.this.getView()).displayVideoFileFrame(bitmap);
                            }
                        }
                    });
                }
            }
        });
    }

    @Override // com.yftech.multimedia.presenter.interfaces.ISubjectPresenter
    public void getPhotoFileFrame(int i) {
        this.subjectModel.getPhotoFileFrame(i, this, new ISubjectModel.OnPhotoFrameLoadListener() { // from class: com.yftech.multimedia.presenter.SubjectPresenter.6
            @Override // com.yftech.multimedia.model.interfaces.ISubjectModel.OnPhotoFrameLoadListener
            public void onComplete(final MediaFile mediaFile) {
                if (SubjectPresenter.this.getActivity() != null) {
                    SubjectPresenter.this.getActivity().runOnUiThread(new Runnable() { // from class: com.yftech.multimedia.presenter.SubjectPresenter.6.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (SubjectPresenter.this.isViewAttach()) {
                                ((ISubjectFragmentView) SubjectPresenter.this.getView()).displayPhotoFileFrame(mediaFile);
                            }
                        }
                    });
                }
            }
        });
    }
}
