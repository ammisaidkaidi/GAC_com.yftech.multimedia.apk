package com.yftech.libradio.presenter;

import android.app.Activity;
import com.yftech.car.media.radio.entity.DataOfRadio;
import com.yftech.libmvpmodule.BasePresenter;
import com.yftech.libradio.model.RadioModel;
import com.yftech.libradio.model.interfaces.IRadioModel;
import com.yftech.libradio.presenter.interfaces.IRadioSearchChannelPresenter;
import com.yftech.libradio.view.IRadioSearchChannelDialogView;
import java.util.List;

/* loaded from: /home/user/work/dex/classes4.dex */
public class RadioSearchChannelPresenter extends BasePresenter<IRadioSearchChannelDialogView> implements IRadioSearchChannelPresenter {
    private RadioModel radioModel;

    public RadioSearchChannelPresenter(Activity activity) {
        super(activity);
        this.radioModel = new RadioModel();
    }

    @Override // com.yftech.libradio.presenter.interfaces.IRadioSearchChannelPresenter
    public void getSearchList(int i) {
        this.radioModel.getSearchList(i, this, new IRadioModel.OnRadioChannelSearchListLoadListener() { // from class: com.yftech.libradio.presenter.RadioSearchChannelPresenter.1
            @Override // com.yftech.libradio.model.interfaces.IRadioModel.OnRadioChannelSearchListLoadListener
            public void onComplete(final int i2, final List<DataOfRadio> list) {
                if (RadioSearchChannelPresenter.this.getActivity() != null) {
                    RadioSearchChannelPresenter.this.getActivity().runOnUiThread(new Runnable() { // from class: com.yftech.libradio.presenter.RadioSearchChannelPresenter.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (RadioSearchChannelPresenter.this.isViewAttach()) {
                                ((IRadioSearchChannelDialogView) RadioSearchChannelPresenter.this.getView()).displaySearchList(i2, list);
                            }
                        }
                    });
                }
            }
        });
    }
}
