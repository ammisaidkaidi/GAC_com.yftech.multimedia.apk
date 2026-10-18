package com.yftech.libradio.presenter;

import android.app.Activity;
import com.yftech.libmvpmodule.BasePresenter;
import com.yftech.libradio.model.RadioModel;
import com.yftech.libradio.model.interfaces.IRadioModel;
import com.yftech.libradio.presenter.interfaces.IRadioSearchingPresenter;
import com.yftech.libradio.view.IRadioSearchingDialogView;

/* loaded from: /home/user/work/dex/classes4.dex */
public class RadioSearchingPresenter extends BasePresenter<IRadioSearchingDialogView> implements IRadioSearchingPresenter {
    private final RadioModel radioModel;

    public RadioSearchingPresenter(Activity activity) {
        super(activity);
        this.radioModel = new RadioModel();
    }

    @Override // com.yftech.libradio.presenter.interfaces.IRadioSearchingPresenter
    public void scanSave(int i) {
        this.radioModel.scanSave(i, this, new IRadioModel.OnRadioChannelScanResultLoadListener() { // from class: com.yftech.libradio.presenter.RadioSearchingPresenter.1
            @Override // com.yftech.libradio.model.interfaces.IRadioModel.OnRadioChannelScanResultLoadListener
            public void onComplete(final boolean z) {
                if (RadioSearchingPresenter.this.getActivity() != null) {
                    RadioSearchingPresenter.this.getActivity().runOnUiThread(new Runnable() { // from class: com.yftech.libradio.presenter.RadioSearchingPresenter.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (RadioSearchingPresenter.this.isViewAttach()) {
                                ((IRadioSearchingDialogView) RadioSearchingPresenter.this.getView()).displaySearchResult(z);
                            }
                        }
                    });
                }
            }
        });
    }
}
