package com.yftech.libradio.model;

import android.app.Activity;
import com.media.common.util.BaseApplication;
import com.media.common.util.LogUtil;
import com.yftech.car.media.radio.dab.CarDabRadioManager;
import com.yftech.car.media.radio.dab.entity.DabEnsemble;
import com.yftech.libmvpmodule.BasePresenter;
import com.yftech.libmvpmodule.mvp.IMvpView;
import com.yftech.libradio.DabDataManager;
import com.yftech.libradio.Utils;
import com.yftech.libradio.bean.DabChannelInfo;
import com.yftech.libradio.model.interfaces.IDabModel;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: /home/user/work/dex/classes4.dex */
public class DabModel implements IDabModel {
    @Override // com.yftech.libradio.model.interfaces.IDabModel
    public void startScan(BasePresenter<? extends IMvpView> basePresenter, final IDabModel.OnDabChannelScanResultLoadListener onDabChannelScanResultLoadListener) {
        Activity activity = basePresenter.getActivity();
        if (activity != null) {
            BaseApplication application = activity.getApplication();
            if (application instanceof BaseApplication) {
                application.getFixedThreadPool().execute(new Runnable() { // from class: com.yftech.libradio.model.DabModel.1
                    @Override // java.lang.Runnable
                    public void run() {
                        LogUtil.d("ThreadId:" + Thread.currentThread().getId());
                        LogUtil.d("DAB 自动搜台");
                        CarDabRadioManager.getInstance().startAllScan();
                        onDabChannelScanResultLoadListener.onComplete(true);
                    }
                });
            }
        }
    }

    @Override // com.yftech.libradio.model.interfaces.IDabModel
    public void stopScan(BasePresenter<? extends IMvpView> basePresenter) {
        Activity activity = basePresenter.getActivity();
        if (activity != null) {
            BaseApplication application = activity.getApplication();
            if (application instanceof BaseApplication) {
                application.getFixedThreadPool().execute(new Runnable() { // from class: com.yftech.libradio.model.DabModel.2
                    @Override // java.lang.Runnable
                    public void run() {
                        LogUtil.d("ThreadId:" + Thread.currentThread().getId());
                        LogUtil.d("DAB 停止自动搜台");
                        CarDabRadioManager.getInstance().stopAllScan();
                    }
                });
            }
        }
    }

    @Override // com.yftech.libradio.model.interfaces.IDabModel
    public void getFavors(BasePresenter<? extends IMvpView> basePresenter, final IDabModel.OnDabFavorListLoadListener onDabFavorListLoadListener) {
        Activity activity = basePresenter.getActivity();
        if (activity != null) {
            BaseApplication application = activity.getApplication();
            if (application instanceof BaseApplication) {
                application.getFixedThreadPool().execute(new Runnable() { // from class: com.yftech.libradio.model.DabModel.3
                    @Override // java.lang.Runnable
                    public void run() {
                        LogUtil.d("getFavors,ThreadId:" + Thread.currentThread().getId());
                        DabEnsemble[] favoredList = CarDabRadioManager.getInstance().getFavoredList();
                        ArrayList arrayList = new ArrayList();
                        Utils.convertDabInfos(favoredList, arrayList, null);
                        if (arrayList.size() > 0) {
                            LogUtil.d(" getFavors,freq:" + CarDabRadioManager.getInstance().getPlayInfo().toString() + " size:" + arrayList.size());
                            List<DabChannelInfo> dabChannelInfoList = DabDataManager.getInstance().getDabChannelInfoList();
                            for (int i = 0; i < arrayList.size(); i++) {
                                DabChannelInfo dabChannelInfo = (DabChannelInfo) arrayList.get(i);
                                if (dabChannelInfoList.size() > 0) {
                                    Iterator<DabChannelInfo> it = dabChannelInfoList.iterator();
                                    while (true) {
                                        if (it.hasNext()) {
                                            DabChannelInfo next = it.next();
                                            if (next.getFrequency() == dabChannelInfo.getFrequency() && next.getEnsembleId() == dabChannelInfo.getEnsembleId() && next.getServiceId() == dabChannelInfo.getServiceId()) {
                                                if (next.getImageData() != null) {
                                                    dabChannelInfo.setImageData(next.getImageData());
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        } else {
                            LogUtil.d("getFavors,searchList is empty");
                        }
                        Iterator it2 = arrayList.iterator();
                        while (it2.hasNext()) {
                            if (((DabChannelInfo) it2.next()).getFrequency() <= 0) {
                                it2.remove();
                            }
                        }
                        LogUtil.d("getFavors,results size:" + arrayList.size() + " index:-1");
                        onDabFavorListLoadListener.onComplete(-1, arrayList);
                    }
                });
            }
        }
    }
}
