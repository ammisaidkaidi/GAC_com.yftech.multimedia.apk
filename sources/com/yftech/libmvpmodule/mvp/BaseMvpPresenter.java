package com.yftech.libmvpmodule.mvp;

import com.yftech.libmvpmodule.mvp.IMvpView;
import java.lang.ref.WeakReference;

/* loaded from: /home/user/work/dex/classes4.dex */
public class BaseMvpPresenter<T extends IMvpView> {
    private WeakReference<T> mReference;

    /* JADX INFO: Access modifiers changed from: package-private */
    public void attachView(T t) {
        this.mReference = new WeakReference<>(t);
    }

    public T getView() {
        return this.mReference.get();
    }

    public boolean isViewAttach() {
        return (this.mReference == null || this.mReference.get() == null) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void detachView() {
        if (this.mReference != null) {
            this.mReference.clear();
            this.mReference = null;
        }
    }
}
