package com.yftech.libradio.presenter;

import android.app.Activity;
import com.yftech.libmvpmodule.BasePresenter;
import com.yftech.libradio.bean.DabChannelInfo;
import com.yftech.libradio.model.DabModel;
import com.yftech.libradio.model.interfaces.IDabModel;
import com.yftech.libradio.presenter.interfaces.IDabFavorPresenter;
import com.yftech.libradio.view.IDabFavorView;
import java.util.List;

/* loaded from: /home/user/work/dex/classes4.dex */
public class DabFavorPresenter extends BasePresenter<IDabFavorView> implements IDabFavorPresenter {
    private DabModel dabModel;

    public DabFavorPresenter(Activity activity) {
        super(activity);
        this.dabModel = new DabModel();
    }

    @Override // com.yftech.libradio.presenter.interfaces.IDabFavorPresenter
    public void getFavors() {
        this.dabModel.getFavors(this, new IDabModel.OnDabFavorListLoadListener() { // from class: com.yftech.libradio.presenter.DabFavorPresenter.1
            @Override // com.yftech.libradio.model.interfaces.IDabModel.OnDabFavorListLoadListener
            public void onComplete(final int i, final List<DabChannelInfo> list) {
                if (DabFavorPresenter.this.getActivity() != null) {
                    DabFavorPresenter.this.getActivity().runOnUiThread(new Runnable() { // from class: com.yftech.libradio.presenter.DabFavorPresenter.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (DabFavorPresenter.this.isViewAttach()) {
                                ((IDabFavorView) DabFavorPresenter.this.getView()).displayFavorList(i, list);
                            }
                        }
                    });
                }
            }
        });
    }
}
