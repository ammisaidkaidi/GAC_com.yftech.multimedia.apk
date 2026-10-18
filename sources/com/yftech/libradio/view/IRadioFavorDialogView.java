package com.yftech.libradio.view;

import com.yftech.libmvpmodule.mvp.IMvpView;
import com.yftech.libradio.bean.RadioChannelInfo;
import java.util.List;

/* loaded from: /home/user/work/dex/classes4.dex */
public interface IRadioFavorDialogView extends IMvpView {
    void displayFavorList(int i, List<RadioChannelInfo> list);
}
