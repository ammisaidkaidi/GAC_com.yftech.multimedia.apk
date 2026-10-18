package com.yftech.libgallery.model;

import android.app.Activity;
import android.text.TextUtils;
import com.media.common.entity.QuickMultipleEntity;
import com.media.common.util.BaseApplication;
import com.media.common.util.LogUtil;
import com.yftech.car.media.data.CarMediaDataManager;
import com.yftech.car.media.data.entity.MediaFile;
import com.yftech.libgallery.bean.MediaFileForDataItem;
import com.yftech.libgallery.bean.MediaFileForDateItem;
import com.yftech.libgallery.bean.MediaFileItem;
import com.yftech.libgallery.model.interfaces.IPictureModel;
import com.yftech.libgallery.utils.MyPhotoDataManager;
import com.yftech.libmvpmodule.BasePresenter;
import com.yftech.libmvpmodule.mvp.IMvpView;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

/* loaded from: /home/user/work/dex/classes.dex */
public class PictureModel implements IPictureModel {
    @Override // com.yftech.libgallery.model.interfaces.IPictureModel
    public void getGallery(final int i, BasePresenter<? extends IMvpView> basePresenter, final IPictureModel.OnGalleryLoadListener onGalleryLoadListener) {
        Activity activity = basePresenter.getActivity();
        if (activity != null) {
            BaseApplication application = activity.getApplication();
            if (application instanceof BaseApplication) {
                application.getFixedThreadPool().execute(new Runnable() { // from class: com.yftech.libgallery.model.PictureModel.1
                    @Override // java.lang.Runnable
                    public void run() {
                        List<MediaFile> filePhoto = CarMediaDataManager.getInstance().getFilePhoto(i);
                        TreeMap treeMap = new TreeMap(new Comparator<String>() { // from class: com.yftech.libgallery.model.PictureModel.1.1
                            @Override // java.util.Comparator
                            public int compare(String str, String str2) {
                                return str2.compareTo(str);
                            }
                        });
                        if (filePhoto != null && !filePhoto.isEmpty()) {
                            for (MediaFile mediaFile : filePhoto) {
                                String valueOf = String.valueOf(mediaFile.getCurrentTime());
                                MediaFileItem mediaFileItem = new MediaFileItem(mediaFile);
                                List list = (List) treeMap.get(valueOf);
                                if (list == null) {
                                    ArrayList arrayList = new ArrayList();
                                    arrayList.add(mediaFileItem);
                                    treeMap.put(valueOf, arrayList);
                                } else {
                                    list.add(mediaFileItem);
                                }
                            }
                        }
                        ArrayList arrayList2 = new ArrayList();
                        MyPhotoDataManager.getInstance().resetData(i);
                        for (Map.Entry entry : treeMap.entrySet()) {
                            List list2 = (List) entry.getValue();
                            if (list2 != null && !list2.isEmpty()) {
                                arrayList2.add(new MediaFileForDateItem(String.valueOf(((MediaFileItem) list2.get(0)).getLastModified())));
                            }
                            Collections.sort((List) entry.getValue(), new Comparator<MediaFileItem>() { // from class: com.yftech.libgallery.model.PictureModel.1.2
                                @Override // java.util.Comparator
                                public int compare(MediaFileItem mediaFileItem2, MediaFileItem mediaFileItem3) {
                                    if (mediaFileItem3.getLastModified() == mediaFileItem2.getLastModified()) {
                                        return 0;
                                    }
                                    return mediaFileItem3.getLastModified() > mediaFileItem2.getLastModified() ? 1 : -1;
                                }
                            });
                            for (MediaFileItem mediaFileItem2 : (List) entry.getValue()) {
                                arrayList2.add(new MediaFileForDataItem(mediaFileItem2));
                                MyPhotoDataManager.getInstance().setNewData(i, mediaFileItem2);
                            }
                        }
                        LogUtil.d("getGallery:index=" + i + ",DisplayFilePhotoSize=" + MyPhotoDataManager.getInstance().getData(i).size());
                        onGalleryLoadListener.onComplete(arrayList2);
                    }
                });
            }
        }
    }

    @Override // com.yftech.libgallery.model.interfaces.IPictureModel
    public void getImageList(String str, int i, BasePresenter<? extends IMvpView> basePresenter, IPictureModel.OnImageListLoadListener onImageListLoadListener) {
        List<MediaFile> data = MyPhotoDataManager.getInstance().getData(i);
        int i2 = -1;
        if (data != null && !data.isEmpty()) {
            for (int i3 = 0; i3 < data.size(); i3++) {
                MediaFile mediaFile = data.get(i3);
                if (mediaFile != null && !TextUtils.isEmpty(mediaFile.getData()) && mediaFile.getData().equals(str)) {
                    i2 = i3;
                }
            }
        }
        onImageListLoadListener.onComplete(i2, data);
    }

    @Override // com.yftech.libgallery.model.interfaces.IPictureModel
    public void deleteImages(final List<QuickMultipleEntity> list, BasePresenter<? extends IMvpView> basePresenter, final IPictureModel.OnImageDeleteLoadListener onImageDeleteLoadListener) {
        Activity activity = basePresenter.getActivity();
        if (activity != null) {
            BaseApplication application = activity.getApplication();
            if (application instanceof BaseApplication) {
                application.getFixedThreadPool().execute(new Runnable() { // from class: com.yftech.libgallery.model.PictureModel.2
                    @Override // java.lang.Runnable
                    public void run() {
                        ArrayList arrayList = new ArrayList();
                        for (QuickMultipleEntity quickMultipleEntity : list) {
                            if (quickMultipleEntity instanceof MediaFileForDataItem) {
                                MediaFile mediaFile = new MediaFile(2);
                                mediaFile.setData(((MediaFileForDataItem) quickMultipleEntity).getData());
                                arrayList.add(mediaFile);
                            }
                        }
                        if (!arrayList.isEmpty()) {
                            LogUtil.d("deleteMediaFileList");
                            CarMediaDataManager.getInstance().deleteMediaFileList(arrayList);
                        }
                        onImageDeleteLoadListener.onComplete(true);
                    }
                });
            }
        }
    }
}
