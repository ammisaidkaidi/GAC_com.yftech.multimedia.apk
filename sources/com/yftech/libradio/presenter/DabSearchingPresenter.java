package com.yftech.libradio.presenter;

import android.app.Activity;
import com.yftech.libmvpmodule.BasePresenter;
import com.yftech.libradio.model.DabModel;
import com.yftech.libradio.model.interfaces.IDabModel;
import com.yftech.libradio.presenter.interfaces.IDabSearchingPresenter;
import com.yftech.libradio.view.IDabSearchingDialogView;

/* loaded from: /home/user/work/dex/classes4.dex */
public class DabSearchingPresenter extends BasePresenter<IDabSearchingDialogView> implements IDabSearchingPresenter {
    private final DabModel dabModel;

    public DabSearchingPresenter(Activity activity) {
        super(activity);
        this.dabModel = new DabModel();
    }

    @Override // com.yftech.libradio.presenter.interfaces.IDabSearchingPresenter
    public void startScan() {
        this.dabModel.startScan(this, new IDabModel.OnDabChannelScanResultLoadListener() { // from class: com.yftech.libradio.presenter.DabSearchingPresenter.1
            @Override // com.yftech.libradio.model.interfaces.IDabModel.OnDabChannelScanResultLoadListener
            public void onComplete(final boolean z) {
                if (DabSearchingPresenter.this.getActivity() != null) {
                    DabSearchingPresenter.this.getActivity().runOnUiThread(new Runnable() { // from class: com.yftech.libradio.presenter.DabSearchingPresenter.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (DabSearchingPresenter.this.isViewAttach()) {
                                ((IDabSearchingDialogView) DabSearchingPresenter.this.getView()).displaySearchResult(z);
                            }
                        }
                    });
                }
            }
        });
    }

    @Override // com.yftech.libradio.presenter.interfaces.IDabSearchingPresenter
    public void stopScan() {
        this.dabModel.stopScan(this);
    }
}
