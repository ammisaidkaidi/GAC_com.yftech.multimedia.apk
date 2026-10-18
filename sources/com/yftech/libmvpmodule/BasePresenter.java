package com.yftech.libmvpmodule;

import android.app.Activity;
import androidx.annotation.Nullable;
import com.yftech.libmvpmodule.mvp.BaseMvpPresenter;
import com.yftech.libmvpmodule.mvp.IMvpView;
import java.lang.ref.WeakReference;

/* loaded from: /home/user/work/dex/classes4.dex */
public class BasePresenter<T extends IMvpView> extends BaseMvpPresenter<T> {
    private WeakReference<Activity> mActivity;

    public BasePresenter() {
    }

    public BasePresenter(Activity activity) {
        this.mActivity = new WeakReference<>(activity);
    }

    @Nullable
    public Activity getActivity() {
        if (this.mActivity != null) {
            return this.mActivity.get();
        }
        return null;
    }
}
