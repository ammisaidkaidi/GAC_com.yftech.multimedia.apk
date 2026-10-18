package com.yftech.libmvpmodule.mvp;

import androidx.fragment.app.DialogFragment;

/* loaded from: /home/user/work/dex/classes4.dex */
public class BaseDialogFragment extends DialogFragment {
    private OnDestotyListener onDestotyListener;

    /* loaded from: /home/user/work/dex/classes4.dex */
    public interface OnDestotyListener {
        void onDestoryCallback();
    }

    public void onDestroy() {
        if (this.onDestotyListener != null) {
            this.onDestotyListener.onDestoryCallback();
        }
        super.onDestroy();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setOnDestotyListener(OnDestotyListener onDestotyListener) {
        this.onDestotyListener = onDestotyListener;
    }
}
