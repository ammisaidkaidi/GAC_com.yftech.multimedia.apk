package com.yftech.car.widget.media.radio;

import com.yftech.car.media.radio.entity.DataOfRadio;

/* loaded from: /home/user/work/dex/classes3.dex */
public class RadioDataPlayManager {
    private static RadioDataPlayManager mRadioDataPlayManager;
    private boolean isPlaying;
    private DataOfRadio mDataOfRadio;
    private String mFavorStatusAddFavorFail;
    private String mFavorStatusAddFavorSuccess;
    private String mFavorStatusIncreasedMaxLimit;
    private String mFavorStatusRemoveFavorFail;
    private String mFavorStatusRemoveFavorSuccess;
    private int mFavorStatusFmFavorMax = 0;
    private int mFavorStatusFm1FavorMax = 0;
    private int mFavorStatusAmFavorMax = 0;
    private boolean mFavorStatusMaxUpdateoldData = false;

    public static RadioDataPlayManager getInstance() {
        if (mRadioDataPlayManager == null) {
            synchronized (RadioDataPlayManager.class) {
                if (mRadioDataPlayManager == null) {
                    mRadioDataPlayManager = new RadioDataPlayManager();
                }
            }
        }
        return mRadioDataPlayManager;
    }

    public int getFavorStatusFmFavorMax() {
        return this.mFavorStatusFmFavorMax;
    }

    public void setFavorStatusFmFavorMax(int i) {
        this.mFavorStatusFmFavorMax = i;
    }

    public int getFavorStatusFm1FavorMax() {
        return this.mFavorStatusFm1FavorMax;
    }

    public void setFavorStatusFm1FavorMax(int i) {
        this.mFavorStatusFm1FavorMax = i;
    }

    public int getFavorStatusAmFavorMax() {
        return this.mFavorStatusAmFavorMax;
    }

    public void setFavorStatusAmFavorMax(int i) {
        this.mFavorStatusAmFavorMax = i;
    }

    public String getFavorStatusAddFavorSuccess() {
        return this.mFavorStatusAddFavorSuccess;
    }

    public void setFavorStatusAddFavorSuccess(String str) {
        this.mFavorStatusAddFavorSuccess = str;
    }

    public String getFavorStatusAddFavorFail() {
        return this.mFavorStatusAddFavorFail;
    }

    public void setFavorStatusAddFavorFail(String str) {
        this.mFavorStatusAddFavorFail = str;
    }

    public String getFavorStatusRemoveFavorSuccess() {
        return this.mFavorStatusRemoveFavorSuccess;
    }

    public void setFavorStatusRemoveFavorSuccess(String str) {
        this.mFavorStatusRemoveFavorSuccess = str;
    }

    public String getFavorStatusRemoveFavorFail() {
        return this.mFavorStatusRemoveFavorFail;
    }

    public void setFavorStatusRemoveFavorFail(String str) {
        this.mFavorStatusRemoveFavorFail = str;
    }

    public String getFavorStatusIncreasedMaxLimit() {
        return this.mFavorStatusIncreasedMaxLimit;
    }

    public void setFavorStatusIncreasedMaxLimit(String str) {
        this.mFavorStatusIncreasedMaxLimit = str;
    }

    public boolean isFavorStatusMaxUpdateoldData() {
        return this.mFavorStatusMaxUpdateoldData;
    }

    public void setFavorStatusMaxUpdateoldData(boolean z) {
        this.mFavorStatusMaxUpdateoldData = z;
    }

    public RadioDataPlayManager setPlaying(boolean z) {
        this.isPlaying = z;
        return this;
    }

    public RadioDataPlayManager setPlayFreq(DataOfRadio dataOfRadio) {
        this.mDataOfRadio = dataOfRadio;
        return this;
    }

    public DataOfRadio getDataOfRadio() {
        return this.mDataOfRadio;
    }

    public boolean isPlaying() {
        return this.isPlaying;
    }
}
