package com.yftech.libmvpmodule.mvp;

import android.R;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.View;
import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;
import com.yftech.libmvpmodule.mvp.BaseMvpPresenter;
import com.yftech.libmvpmodule.utils.Constants;

/* loaded from: /home/user/work/dex/classes4.dex */
public abstract class BaseMvpActivity<T extends BaseMvpPresenter> extends AppCompatActivity implements IMvpView {
    private final String TAG = BaseMvpActivity.class.getSimpleName();
    public boolean isDisplaying = true;
    protected T mCurrentPresenter;
    public View main;

    protected abstract T createPresenter();

    public T getPresenter() {
        return this.mCurrentPresenter;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        this.mCurrentPresenter = createPresenter();
        if (this.mCurrentPresenter != null) {
            this.mCurrentPresenter.attachView(this);
        }
        if (Constants.displayHeight == 0 || Constants.displayWidth == 0) {
            DisplayMetrics displayMetrics = new DisplayMetrics();
            getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
            Constants.displayWidth = displayMetrics.widthPixels;
            Constants.displayHeight = displayMetrics.heightPixels;
        }
        this.main = findViewById(R.id.content);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onResume() {
        super.onResume();
        Log.d(this.TAG, "onResume");
        this.isDisplaying = true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onStop() {
        super.onStop();
        Log.d(this.TAG, "onStop");
        this.isDisplaying = false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onDestroy() {
        super.onDestroy();
        if (this.mCurrentPresenter != null) {
            this.mCurrentPresenter.detachView();
        }
    }
}
