package com.yftech.libradio.presenter.interfaces;

import com.yftech.car.media.radio.dab.entity.DabEnsemble;

/* loaded from: /home/user/work/dex/classes4.dex */
public interface IDabMainPresenter {
    void pause();

    void play();

    void setFreq(DabEnsemble dabEnsemble, long j);

    void startAllScan();

    void stopAllScan();

    void stopSearch();

    void updateEnsembleList();
}
