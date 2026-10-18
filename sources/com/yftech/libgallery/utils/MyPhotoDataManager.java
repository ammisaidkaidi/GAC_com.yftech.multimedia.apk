package com.yftech.libgallery.utils;

import androidx.annotation.NonNull;
import com.yftech.car.media.data.entity.MediaFile;
import java.util.ArrayList;
import java.util.List;

/* loaded from: /home/user/work/dex/classes4.dex */
public class MyPhotoDataManager {
    private static volatile MyPhotoDataManager instance;
    private int usb1LastViewedPosition = -1;
    private int usb2LastViewedPosition = -1;
    private boolean isPhotoPlayingBeforeSwitchPage = true;
    private List<MediaFile> usb1Photos = new ArrayList();
    private List<MediaFile> usb2Photos = new ArrayList();

    public static MyPhotoDataManager getInstance() {
        if (instance == null) {
            synchronized (MyPhotoDataManager.class) {
                if (instance == null) {
                    instance = new MyPhotoDataManager();
                }
            }
        }
        return instance;
    }

    private MyPhotoDataManager() {
    }

    public void setNewData(int i, @NonNull List<MediaFile> list) {
        if (i == 0) {
            this.usb1Photos.clear();
            this.usb1Photos.addAll(list);
        } else if (i == 1) {
            this.usb2Photos.clear();
            this.usb2Photos.addAll(list);
        }
    }

    public void setNewData(int i, @NonNull MediaFile mediaFile) {
        if (i == 0) {
            this.usb1Photos.add(mediaFile);
        } else if (i == 1) {
            this.usb2Photos.add(mediaFile);
        }
    }

    public void resetData(int i) {
        if (i == 0) {
            this.usb1Photos.clear();
        } else if (i == 1) {
            this.usb2Photos.clear();
        }
    }

    public List<MediaFile> getData(int i) {
        if (i == 0) {
            return this.usb1Photos;
        }
        if (i == 1) {
            return this.usb2Photos;
        }
        return null;
    }

    public void setLastViewedPosition(int i, int i2) {
        if (i == 0) {
            this.usb1LastViewedPosition = i2;
        } else if (i == 1) {
            this.usb2LastViewedPosition = i2;
        }
    }

    public int getLastViewedPosition(int i) {
        if (i == 0) {
            return this.usb1LastViewedPosition;
        }
        if (i == 1) {
            return this.usb2LastViewedPosition;
        }
        return -1;
    }

    public boolean isPhotoPlayingBeforeSwitchPage() {
        return this.isPhotoPlayingBeforeSwitchPage;
    }

    public void setPhotoPlayingBeforeSwitchPage(boolean z) {
        this.isPhotoPlayingBeforeSwitchPage = z;
    }
}
