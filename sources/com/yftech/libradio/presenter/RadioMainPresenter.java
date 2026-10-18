package com.yftech.libradio.presenter;

import android.app.Activity;
import com.yftech.libmvpmodule.BasePresenter;
import com.yftech.libradio.model.RadioModel;
import com.yftech.libradio.model.interfaces.IRadioModel;
import com.yftech.libradio.presenter.interfaces.IRadioMainPresenter;
import com.yftech.libradio.view.IRadioMainActivityView;
import java.util.List;

/* loaded from: /home/user/work/dex/classes4.dex */
public class RadioMainPresenter extends BasePresenter<IRadioMainActivityView> implements IRadioMainPresenter {
    private RadioModel radioModel;

    public RadioMainPresenter(Activity activity) {
        super(activity);
        this.radioModel = new RadioModel();
    }

    @Override // com.yftech.libradio.presenter.interfaces.IRadioMainPresenter
    public void setFreqList(int i) {
        this.radioModel.setFreqList(i, this, new IRadioModel.OnFreqListLoadListener() { // from class: com.yftech.libradio.presenter.RadioMainPresenter.1
            @Override // com.yftech.libradio.model.interfaces.IRadioModel.OnFreqListLoadListener
            public void onComplete(final List<String> list, final int i2) {
                if (RadioMainPresenter.this.getActivity() != null) {
                    RadioMainPresenter.this.getActivity().runOnUiThread(new Runnable() { // from class: com.yftech.libradio.presenter.RadioMainPresenter.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (RadioMainPresenter.this.isViewAttach()) {
                                ((IRadioMainActivityView) RadioMainPresenter.this.getView()).displayFreqList(list, i2);
                            }
                        }
                    });
                }
            }
        });
    }
}
