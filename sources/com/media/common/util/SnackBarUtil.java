package com.media.common.util;

import android.view.View;
import com.media.common.ui.widget.R;
import com.media.common.ui.widget.top_snackbar.TopSnackBar;
import com.yftech.libmvpmodule.mvp.BaseMvpActivity;

/* loaded from: /home/user/work/dex/classes3.dex */
public class SnackBarUtil {
    public static void showNormalMessage(View view, String str, int i) {
        TopSnackBar.make(view, R.layout.design_snackbar_normal, str, i).show();
    }

    public static void showNormalMessage(View view, int i, int i2) {
        TopSnackBar.make(view, R.layout.design_snackbar_normal, i, i2).show();
    }

    public static void showNormalMessage(BaseMvpActivity baseMvpActivity, String str, int i) {
        TopSnackBar.make(baseMvpActivity.main, R.layout.design_snackbar_normal, str, i).show();
    }

    public static void showNormalMessage(BaseMvpActivity baseMvpActivity, int i, int i2) {
        TopSnackBar.make(baseMvpActivity.main, R.layout.design_snackbar_normal, i, i2).show();
    }

    public static void showFailMessage(View view, String str, int i) {
        TopSnackBar.make(view, R.layout.design_snackbar_fail, str, i).show();
    }

    public static void showFailMessage(View view, int i, int i2) {
        TopSnackBar.make(view, R.layout.design_snackbar_fail, i, i2).show();
    }

    public static void showFailMessage(BaseMvpActivity baseMvpActivity, int i, int i2) {
        TopSnackBar.make(baseMvpActivity.main, R.layout.design_snackbar_fail, i, i2).show();
    }

    public static void showFailMessage(BaseMvpActivity baseMvpActivity, String str, int i) {
        TopSnackBar.make(baseMvpActivity.main, R.layout.design_snackbar_fail, str, i).show();
    }
}
