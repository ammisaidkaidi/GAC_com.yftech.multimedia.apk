package com.yftech.libradio.presenter;

import android.app.Activity;
import com.yftech.libmvpmodule.BasePresenter;
import com.yftech.libradio.bean.RadioChannelInfo;
import com.yftech.libradio.model.RadioModel;
import com.yftech.libradio.model.interfaces.IRadioModel;
import com.yftech.libradio.presenter.interfaces.IRadioFavorPresenter;
import com.yftech.libradio.view.IRadioFavorDialogView;
import java.util.List;

/* loaded from: /home/user/work/dex/classes4.dex */
public class RadioFavorPresenter extends BasePresenter<IRadioFavorDialogView> implements IRadioFavorPresenter {
    private RadioModel radioModel;

    public RadioFavorPresenter(Activity activity) {
        super(activity);
        this.radioModel = new RadioModel();
    }

    @Override // com.yftech.libradio.presenter.interfaces.IRadioFavorPresenter
    public void getFavors(int i) {
        this.radioModel.getFavors(i, this, new IRadioModel.OnRadioFavorListLoadListener() { // from class: com.yftech.libradio.presenter.RadioFavorPresenter.1
            @Override // com.yftech.libradio.model.interfaces.IRadioModel.OnRadioFavorListLoadListener
            public void onComplete(final int i2, final List<RadioChannelInfo> list) {
                if (RadioFavorPresenter.this.getActivity() != null) {
                    RadioFavorPresenter.this.getActivity().runOnUiThread(new Runnable() { // from class: com.yftech.libradio.presenter.RadioFavorPresenter.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (RadioFavorPresenter.this.isViewAttach()) {
                                ((IRadioFavorDialogView) RadioFavorPresenter.this.getView()).displayFavorList(i2, list);
                            }
                        }
                    });
                }
            }
        });
    }
}
