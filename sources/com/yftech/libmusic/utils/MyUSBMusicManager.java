package com.yftech.libmusic.utils;

import androidx.annotation.NonNull;
import com.yftech.car.media.data.entity.MediaFile;
import java.util.ArrayList;
import java.util.List;

/* loaded from: /home/user/work/dex/classes4.dex */
public class MyUSBMusicManager {
    private static volatile MyUSBMusicManager instance;
    private List<MediaFile> usb1Music = new ArrayList();
    private List<MediaFile> usb2Music = new ArrayList();

    public static MyUSBMusicManager getInstance() {
        if (instance == null) {
            synchronized (MyUSBMusicManager.class) {
                if (instance == null) {
                    instance = new MyUSBMusicManager();
                }
            }
        }
        return instance;
    }

    private MyUSBMusicManager() {
    }

    public void setNewData(int i, @NonNull List<MediaFile> list) {
        if (i == 0) {
            this.usb1Music.clear();
            this.usb1Music.addAll(list);
        } else if (i == 1) {
            this.usb2Music.clear();
            this.usb2Music.addAll(list);
        }
    }

    public void setNewData(int i, @NonNull MediaFile mediaFile) {
        if (i == 0) {
            this.usb1Music.add(mediaFile);
        } else if (i == 1) {
            this.usb2Music.add(mediaFile);
        }
    }

    public void resetData(int i) {
        if (i == 0) {
            this.usb1Music.clear();
        } else if (i == 1) {
            this.usb2Music.clear();
        }
    }

    public List<MediaFile> getData(int i) {
        if (i == 0) {
            return this.usb1Music;
        }
        if (i == 1) {
            return this.usb2Music;
        }
        return null;
    }
}
