package com.yftech.libradio.presenter;

import android.app.Activity;
import com.media.common.util.BaseApplication;
import com.media.common.util.LogUtil;
import com.yftech.car.media.radio.dab.CarDabRadioManager;
import com.yftech.car.media.radio.dab.entity.DabEnsemble;
import com.yftech.libmvpmodule.BasePresenter;
import com.yftech.libradio.presenter.interfaces.IDabMainPresenter;
import com.yftech.libradio.view.IDabMainView;

/* loaded from: /home/user/work/dex/classes4.dex */
public class DabMainPresenter extends BasePresenter<IDabMainView> implements IDabMainPresenter {
    public DabMainPresenter(Activity activity) {
        super(activity);
    }

    @Override // com.yftech.libradio.presenter.interfaces.IDabMainPresenter
    public void setFreq(final DabEnsemble dabEnsemble, final long j) {
        BaseApplication baseApplication = getBaseApplication();
        LogUtil.d("setFreq Ensembleid: " + dabEnsemble.getEnsembleId() + " ,ServiceId: " + j);
        if (baseApplication != null) {
            baseApplication.getDataThreadPool().execute(new Runnable() { // from class: com.yftech.libradio.presenter.-$$Lambda$DabMainPresenter$0_5FHlE8SoQC5ydvXQFzEEwdBsI
                @Override // java.lang.Runnable
                public final void run() {
                    CarDabRadioManager.getInstance().setFreq(dabEnsemble, j);
                }
            });
        }
    }

    @Override // com.yftech.libradio.presenter.interfaces.IDabMainPresenter
    public void startAllScan() {
        BaseApplication baseApplication = getBaseApplication();
        if (baseApplication != null) {
            baseApplication.getDataThreadPool().execute(new Runnable() { // from class: com.yftech.libradio.presenter.-$$Lambda$DabMainPresenter$7IAgFUbnJ6e84ywTrLOvIxx7jDI
                @Override // java.lang.Runnable
                public final void run() {
                    CarDabRadioManager.getInstance().startAllScan();
                }
            });
        }
    }

    @Override // com.yftech.libradio.presenter.interfaces.IDabMainPresenter
    public void stopAllScan() {
        BaseApplication baseApplication = getBaseApplication();
        if (baseApplication != null) {
            baseApplication.getDataThreadPool().execute(new Runnable() { // from class: com.yftech.libradio.presenter.-$$Lambda$DabMainPresenter$ZQJKt6LRKxnMzjGcASS_o6nr1pQ
                @Override // java.lang.Runnable
                public final void run() {
                    CarDabRadioManager.getInstance().stopAllScan();
                }
            });
        }
    }

    @Override // com.yftech.libradio.presenter.interfaces.IDabMainPresenter
    public void stopSearch() {
        BaseApplication baseApplication = getBaseApplication();
        if (baseApplication != null) {
            baseApplication.getDataThreadPool().execute(new Runnable() { // from class: com.yftech.libradio.presenter.-$$Lambda$DabMainPresenter$5-y8nk68thlmxiVlXse0DhDlyi0
                @Override // java.lang.Runnable
                public final void run() {
                    CarDabRadioManager.getInstance().stopSearch();
                }
            });
        }
    }

    @Override // com.yftech.libradio.presenter.interfaces.IDabMainPresenter
    public void updateEnsembleList() {
        BaseApplication baseApplication = getBaseApplication();
        if (baseApplication != null) {
            baseApplication.getDataThreadPool().execute(new Runnable() { // from class: com.yftech.libradio.presenter.-$$Lambda$DabMainPresenter$4WhtHzDRZxRCgfZcxXU00ar0MLk
                @Override // java.lang.Runnable
                public final void run() {
                    CarDabRadioManager.getInstance().updateEnsembleList();
                }
            });
        }
    }

    @Override // com.yftech.libradio.presenter.interfaces.IDabMainPresenter
    public void play() {
        BaseApplication baseApplication = getBaseApplication();
        if (baseApplication != null) {
            baseApplication.getDataThreadPool().execute(new Runnable() { // from class: com.yftech.libradio.presenter.-$$Lambda$DabMainPresenter$h7IsASru2tqvUbdw_6gSWMTi078
                @Override // java.lang.Runnable
                public final void run() {
                    CarDabRadioManager.getInstance().play();
                }
            });
        }
    }

    @Override // com.yftech.libradio.presenter.interfaces.IDabMainPresenter
    public void pause() {
        BaseApplication baseApplication = getBaseApplication();
        if (baseApplication != null) {
            baseApplication.getDataThreadPool().execute(new Runnable() { // from class: com.yftech.libradio.presenter.-$$Lambda$DabMainPresenter$oCmW1csIpXXQmtv5sqfv_bxBwSc
                @Override // java.lang.Runnable
                public final void run() {
                    CarDabRadioManager.getInstance().pause();
                }
            });
        }
    }

    private BaseApplication getBaseApplication() {
        Activity activity = getActivity();
        if (activity != null) {
            BaseApplication application = activity.getApplication();
            if (application instanceof BaseApplication) {
                return application;
            }
            LogUtil.w("application not instanceof ,className: " + application.getClass().getSimpleName());
            return null;
        }
        LogUtil.w("activity is null ---");
        return null;
    }
}
