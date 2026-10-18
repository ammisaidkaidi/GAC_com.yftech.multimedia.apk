package com.yftech.libradio.model.interfaces;

import com.yftech.car.media.radio.entity.DataOfRadio;
import com.yftech.libmvpmodule.BasePresenter;
import com.yftech.libmvpmodule.mvp.IMvpView;
import com.yftech.libradio.bean.RadioChannelInfo;
import java.util.List;

/* loaded from: /home/user/work/dex/classes4.dex */
public interface IRadioModel {

    /* loaded from: /home/user/work/dex/classes4.dex */
    public interface OnFreqListLoadListener {
        void onComplete(List<String> list, int i);
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public interface OnRadioChannelScanResultLoadListener {
        void onComplete(boolean z);
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public interface OnRadioChannelSearchListLoadListener {
        void onComplete(int i, List<DataOfRadio> list);
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public interface OnRadioFavorListLoadListener {
        void onComplete(int i, List<RadioChannelInfo> list);
    }

    void getFavors(int i, BasePresenter<? extends IMvpView> basePresenter, OnRadioFavorListLoadListener onRadioFavorListLoadListener);

    void getSearchList(int i, BasePresenter<? extends IMvpView> basePresenter, OnRadioChannelSearchListLoadListener onRadioChannelSearchListLoadListener);

    void scanSave(int i, BasePresenter<? extends IMvpView> basePresenter, OnRadioChannelScanResultLoadListener onRadioChannelScanResultLoadListener);

    void setFreqList(int i, BasePresenter<? extends IMvpView> basePresenter, OnFreqListLoadListener onFreqListLoadListener);
}
