package com.yftech.libmvpmodule.mvp;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.yftech.libmvpmodule.mvp.BaseMvpPresenter;

/* loaded from: /home/user/work/dex/classes4.dex */
public abstract class BaseMvpDialogFragment<T extends BaseMvpPresenter> extends BaseDialogFragment implements IMvpView {
    protected boolean isCreateView;
    protected Activity mActivity;
    protected T mCurrentPresenter;

    protected abstract T createPresenter();

    protected abstract void initView(View view);

    protected abstract View onBindView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, Bundle bundle);

    protected void onUnbindView() {
    }

    public T getPresenter() {
        return this.mCurrentPresenter;
    }

    public void onAttach(Context context) {
        super.onAttach(context);
        this.mActivity = (Activity) context;
    }

    @Nullable
    public View onCreateView(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        this.mCurrentPresenter = createPresenter();
        if (this.mCurrentPresenter != null) {
            this.mCurrentPresenter.attachView(this);
        }
        View onBindView = onBindView(layoutInflater, viewGroup, bundle);
        this.isCreateView = true;
        initView(onBindView);
        return onBindView;
    }

    public void onDestroyView() {
        super.onDestroyView();
        if (this.mCurrentPresenter != null) {
            this.mCurrentPresenter.detachView();
        }
        this.isCreateView = false;
        onUnbindView();
    }
}
