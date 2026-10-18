package com.yftech.multimedia.model;

import com.media.common.util.LogUtil;
import com.yftech.car.media.data.CarMediaDataManager;
import com.yftech.car.media.data.entity.MediaFile;
import com.yftech.car.media.video.util.VideoBitmapUtil;
import com.yftech.libgallery.utils.MyPhotoDataManager;
import com.yftech.libmvpmodule.BasePresenter;
import com.yftech.libmvpmodule.mvp.IMvpView;
import com.yftech.multimedia.MediaApplication;
import com.yftech.multimedia.model.interfaces.ISubjectModel;
import com.yftech.vehicle.internal.adapter.ICarLight;
import com.yftech.vehicle.internal.adapter.ICarSwc;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

/* loaded from: /home/user/work/dex/classes4.dex */
public class SubjectModel implements ISubjectModel {
    @Override // com.yftech.multimedia.model.interfaces.ISubjectModel
    public void getVideoFileExist(int i, BasePresenter<? extends IMvpView> basePresenter, final ISubjectModel.OnFileExistLoadListener onFileExistLoadListener) {
        MediaApplication.getInstance().getFixedThreadPool().execute(new Runnable() { // from class: com.yftech.multimedia.model.SubjectModel.1
            @Override // java.lang.Runnable
            public void run() {
                int videoFileExists = CarMediaDataManager.getInstance().getVideoFileExists();
                LogUtil.d("getVideoFileExist=" + videoFileExists);
                onFileExistLoadListener.onComplete(videoFileExists);
            }
        });
    }

    @Override // com.yftech.multimedia.model.interfaces.ISubjectModel
    public void getPhotoFileExist(int i, BasePresenter<? extends IMvpView> basePresenter, final ISubjectModel.OnFileExistLoadListener onFileExistLoadListener) {
        MediaApplication.getInstance().getFixedThreadPool().execute(new Runnable() { // from class: com.yftech.multimedia.model.SubjectModel.2
            @Override // java.lang.Runnable
            public void run() {
                onFileExistLoadListener.onComplete(CarMediaDataManager.getInstance().getPhotoFileExists());
            }
        });
    }

    @Override // com.yftech.multimedia.model.interfaces.ISubjectModel
    public void getVideoFileSize(final int i, BasePresenter<? extends IMvpView> basePresenter, final ISubjectModel.OnFileSizeLoadListener onFileSizeLoadListener) {
        MediaApplication.getInstance().getFixedThreadPool().execute(new Runnable() { // from class: com.yftech.multimedia.model.SubjectModel.3
            @Override // java.lang.Runnable
            public void run() {
                int videoFileSize = CarMediaDataManager.getInstance().getVideoFileSize(i);
                LogUtil.d("getVideoFileSize:videoFileSize=" + videoFileSize);
                onFileSizeLoadListener.onComplete(videoFileSize);
            }
        });
    }

    @Override // com.yftech.multimedia.model.interfaces.ISubjectModel
    public void getPhotoFileSize(final int i, BasePresenter<? extends IMvpView> basePresenter, final ISubjectModel.OnFileSizeLoadListener onFileSizeLoadListener) {
        MediaApplication.getInstance().getFixedThreadPool().execute(new Runnable() { // from class: com.yftech.multimedia.model.SubjectModel.4
            @Override // java.lang.Runnable
            public void run() {
                int photoFileSize = CarMediaDataManager.getInstance().getPhotoFileSize(i);
                LogUtil.d("getPhotoFileSize:photoFileSize=" + photoFileSize);
                onFileSizeLoadListener.onComplete(photoFileSize);
            }
        });
    }

    @Override // com.yftech.multimedia.model.interfaces.ISubjectModel
    public void getVideoFileFrame(final int i, BasePresenter<? extends IMvpView> basePresenter, final ISubjectModel.OnVideoFrameLoadListener onVideoFrameLoadListener) {
        MediaApplication.getInstance().getFixedThreadPool().execute(new Runnable() { // from class: com.yftech.multimedia.model.SubjectModel.5
            @Override // java.lang.Runnable
            public void run() {
                List fileVideo = CarMediaDataManager.getInstance().getFileVideo(i);
                Collections.sort(fileVideo, new Comparator<MediaFile>() { // from class: com.yftech.multimedia.model.SubjectModel.5.1
                    @Override // java.util.Comparator
                    public int compare(MediaFile mediaFile, MediaFile mediaFile2) {
                        if (mediaFile2.getLastModified() == mediaFile.getLastModified()) {
                            return 0;
                        }
                        return mediaFile2.getLastModified() > mediaFile.getLastModified() ? 1 : -1;
                    }
                });
                MediaFile mediaFile = (fileVideo == null || fileVideo.isEmpty()) ? null : (MediaFile) fileVideo.get(0);
                onVideoFrameLoadListener.onComplete(mediaFile != null ? VideoBitmapUtil.loadVideo(mediaFile.getData(), 5000L, ICarSwc.SWC_ANGLE_VD_STATE, ICarLight.ILBC_SETTING) : null);
            }
        });
    }

    @Override // com.yftech.multimedia.model.interfaces.ISubjectModel
    public void getPhotoFileFrame(final int i, BasePresenter<? extends IMvpView> basePresenter, final ISubjectModel.OnPhotoFrameLoadListener onPhotoFrameLoadListener) {
        MediaApplication.getInstance().getFixedThreadPool().execute(new Runnable() { // from class: com.yftech.multimedia.model.SubjectModel.6
            @Override // java.lang.Runnable
            public void run() {
                List<MediaFile> filePhoto = CarMediaDataManager.getInstance().getFilePhoto(i);
                if (!filePhoto.isEmpty()) {
                    Collections.sort(filePhoto, new Comparator<MediaFile>() { // from class: com.yftech.multimedia.model.SubjectModel.6.1
                        @Override // java.util.Comparator
                        public int compare(MediaFile mediaFile, MediaFile mediaFile2) {
                            if (mediaFile2.getLastModified() == mediaFile.getLastModified()) {
                                return 0;
                            }
                            return mediaFile2.getLastModified() > mediaFile.getLastModified() ? 1 : -1;
                        }
                    });
                }
                MyPhotoDataManager.getInstance().setNewData(i, filePhoto);
                onPhotoFrameLoadListener.onComplete(!filePhoto.isEmpty() ? filePhoto.get(0) : null);
            }
        });
    }
}
