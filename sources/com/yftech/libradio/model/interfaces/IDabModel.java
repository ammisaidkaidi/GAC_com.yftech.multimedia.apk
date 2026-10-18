package com.yftech.libradio.model.interfaces;

import com.yftech.libmvpmodule.BasePresenter;
import com.yftech.libmvpmodule.mvp.IMvpView;
import com.yftech.libradio.bean.DabChannelInfo;
import java.util.List;

/* loaded from: /home/user/work/dex/classes4.dex */
public interface IDabModel {

    /* loaded from: /home/user/work/dex/classes4.dex */
    public interface OnDabChannelScanResultLoadListener {
        void onComplete(boolean z);
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public interface OnDabFavorListLoadListener {
        void onComplete(int i, List<DabChannelInfo> list);
    }

    void getFavors(BasePresenter<? extends IMvpView> basePresenter, OnDabFavorListLoadListener onDabFavorListLoadListener);

    void startScan(BasePresenter<? extends IMvpView> basePresenter, OnDabChannelScanResultLoadListener onDabChannelScanResultLoadListener);

    void stopScan(BasePresenter<? extends IMvpView> basePresenter);
}
