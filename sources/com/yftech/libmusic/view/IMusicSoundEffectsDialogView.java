package com.yftech.libmusic.view;

import com.yftech.libmvpmodule.mvp.IMvpView;

/* loaded from: /home/user/work/dex/classes4.dex */
public interface IMusicSoundEffectsDialogView extends IMvpView {
    void displayBandCurValue(float[] fArr);

    void displayBandMaxValue(float[] fArr);

    void displayBandMinValue(float[] fArr);

    void displayBandValueSetting(boolean z);

    void displayDTSTypeSetting(boolean z);

    void displayEQType(int i);

    void displayEQTypeSetting(boolean z);
}
