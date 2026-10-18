package com.yftech.libmusic.presenter;

import android.app.Activity;
import com.yftech.libmusic.model.MusicModel;
import com.yftech.libmusic.model.interfaces.IMusicModel;
import com.yftech.libmusic.presenter.interfaces.IMusicSoundEffectsPresenter;
import com.yftech.libmusic.view.IMusicSoundEffectsDialogView;
import com.yftech.libmvpmodule.BasePresenter;

/* loaded from: /home/user/work/dex/classes4.dex */
public class MusicSoundEffectsPresenter extends BasePresenter<IMusicSoundEffectsDialogView> implements IMusicSoundEffectsPresenter {
    private MusicModel musicModel;

    public MusicSoundEffectsPresenter(Activity activity) {
        super(activity);
        this.musicModel = new MusicModel();
    }

    @Override // com.yftech.libmusic.presenter.interfaces.IMusicSoundEffectsPresenter
    public void getEQType() {
        this.musicModel.getEQType(this, new IMusicModel.OnEQTypeLoadListener() { // from class: com.yftech.libmusic.presenter.MusicSoundEffectsPresenter.1
            @Override // com.yftech.libmusic.model.interfaces.IMusicModel.OnEQTypeLoadListener
            public void onComplete(final int i) {
                if (MusicSoundEffectsPresenter.this.getActivity() != null) {
                    MusicSoundEffectsPresenter.this.getActivity().runOnUiThread(new Runnable() { // from class: com.yftech.libmusic.presenter.MusicSoundEffectsPresenter.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (MusicSoundEffectsPresenter.this.isViewAttach()) {
                                ((IMusicSoundEffectsDialogView) MusicSoundEffectsPresenter.this.getView()).displayEQType(i);
                            }
                        }
                    });
                }
            }
        });
    }

    @Override // com.yftech.libmusic.presenter.interfaces.IMusicSoundEffectsPresenter
    public void setEQType(int i) {
        this.musicModel.setEQType(i, this, new IMusicModel.OnEQTypeSettingResultLoadListener() { // from class: com.yftech.libmusic.presenter.MusicSoundEffectsPresenter.2
            @Override // com.yftech.libmusic.model.interfaces.IMusicModel.OnEQTypeSettingResultLoadListener
            public void onComplete(final boolean z) {
                if (MusicSoundEffectsPresenter.this.getActivity() != null) {
                    MusicSoundEffectsPresenter.this.getActivity().runOnUiThread(new Runnable() { // from class: com.yftech.libmusic.presenter.MusicSoundEffectsPresenter.2.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (MusicSoundEffectsPresenter.this.isViewAttach()) {
                                ((IMusicSoundEffectsDialogView) MusicSoundEffectsPresenter.this.getView()).displayEQTypeSetting(z);
                            }
                        }
                    });
                }
            }
        });
    }

    @Override // com.yftech.libmusic.presenter.interfaces.IMusicSoundEffectsPresenter
    public void setBandValue(float[] fArr) {
        this.musicModel.setBandValue(fArr, this, new IMusicModel.OnBandValueSettingResultLoadListener() { // from class: com.yftech.libmusic.presenter.MusicSoundEffectsPresenter.3
            @Override // com.yftech.libmusic.model.interfaces.IMusicModel.OnBandValueSettingResultLoadListener
            public void onComplete(final boolean z) {
                if (MusicSoundEffectsPresenter.this.getActivity() != null) {
                    MusicSoundEffectsPresenter.this.getActivity().runOnUiThread(new Runnable() { // from class: com.yftech.libmusic.presenter.MusicSoundEffectsPresenter.3.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (MusicSoundEffectsPresenter.this.isViewAttach()) {
                                ((IMusicSoundEffectsDialogView) MusicSoundEffectsPresenter.this.getView()).displayBandValueSetting(z);
                            }
                        }
                    });
                }
            }
        });
    }

    @Override // com.yftech.libmusic.presenter.interfaces.IMusicSoundEffectsPresenter
    public void getBandCurValue() {
        this.musicModel.getBandCurValue(this, new IMusicModel.OnBandValueLoadListener() { // from class: com.yftech.libmusic.presenter.MusicSoundEffectsPresenter.4
            @Override // com.yftech.libmusic.model.interfaces.IMusicModel.OnBandValueLoadListener
            public void onComplete(final float[] fArr) {
                if (MusicSoundEffectsPresenter.this.getActivity() != null) {
                    MusicSoundEffectsPresenter.this.getActivity().runOnUiThread(new Runnable() { // from class: com.yftech.libmusic.presenter.MusicSoundEffectsPresenter.4.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (MusicSoundEffectsPresenter.this.isViewAttach()) {
                                ((IMusicSoundEffectsDialogView) MusicSoundEffectsPresenter.this.getView()).displayBandCurValue(fArr);
                            }
                        }
                    });
                }
            }
        });
    }

    @Override // com.yftech.libmusic.presenter.interfaces.IMusicSoundEffectsPresenter
    public void getBandMinValue() {
        this.musicModel.getBandMinValue(this, new IMusicModel.OnBandValueLoadListener() { // from class: com.yftech.libmusic.presenter.MusicSoundEffectsPresenter.5
            @Override // com.yftech.libmusic.model.interfaces.IMusicModel.OnBandValueLoadListener
            public void onComplete(final float[] fArr) {
                if (MusicSoundEffectsPresenter.this.getActivity() != null) {
                    MusicSoundEffectsPresenter.this.getActivity().runOnUiThread(new Runnable() { // from class: com.yftech.libmusic.presenter.MusicSoundEffectsPresenter.5.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (MusicSoundEffectsPresenter.this.isViewAttach()) {
                                ((IMusicSoundEffectsDialogView) MusicSoundEffectsPresenter.this.getView()).displayBandMinValue(fArr);
                            }
                        }
                    });
                }
            }
        });
    }

    @Override // com.yftech.libmusic.presenter.interfaces.IMusicSoundEffectsPresenter
    public void getBandMaxValue() {
        this.musicModel.getBandMaxValue(this, new IMusicModel.OnBandValueLoadListener() { // from class: com.yftech.libmusic.presenter.MusicSoundEffectsPresenter.6
            @Override // com.yftech.libmusic.model.interfaces.IMusicModel.OnBandValueLoadListener
            public void onComplete(final float[] fArr) {
                if (MusicSoundEffectsPresenter.this.getActivity() != null) {
                    MusicSoundEffectsPresenter.this.getActivity().runOnUiThread(new Runnable() { // from class: com.yftech.libmusic.presenter.MusicSoundEffectsPresenter.6.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (MusicSoundEffectsPresenter.this.isViewAttach()) {
                                ((IMusicSoundEffectsDialogView) MusicSoundEffectsPresenter.this.getView()).displayBandMaxValue(fArr);
                            }
                        }
                    });
                }
            }
        });
    }

    @Override // com.yftech.libmusic.presenter.interfaces.IMusicSoundEffectsPresenter
    public void setDTSType(int i) {
        this.musicModel.setDTSType(i, this, new IMusicModel.OnsetDTSTypeSettingResultLoadListener() { // from class: com.yftech.libmusic.presenter.MusicSoundEffectsPresenter.7
            @Override // com.yftech.libmusic.model.interfaces.IMusicModel.OnsetDTSTypeSettingResultLoadListener
            public void onComplete(final boolean z) {
                if (MusicSoundEffectsPresenter.this.getActivity() != null) {
                    MusicSoundEffectsPresenter.this.getActivity().runOnUiThread(new Runnable() { // from class: com.yftech.libmusic.presenter.MusicSoundEffectsPresenter.7.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (MusicSoundEffectsPresenter.this.isViewAttach()) {
                                ((IMusicSoundEffectsDialogView) MusicSoundEffectsPresenter.this.getView()).displayDTSTypeSetting(z);
                            }
                        }
                    });
                }
            }
        });
    }
}
