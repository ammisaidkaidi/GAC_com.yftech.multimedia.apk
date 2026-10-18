package com.media.common.util;

import android.app.Activity;
import android.content.Context;
import android.graphics.Rect;
import android.os.Build;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.inputmethod.InputMethodManager;
import android.widget.FrameLayout;

/* loaded from: /home/user/work/dex/classes3.dex */
public class SoftHideKeyBoardUtil {
    private int contentHeight;
    private FrameLayout.LayoutParams frameLayoutParams;
    private boolean isfirst = true;
    private View mChildOfContent;
    private int statusBarHeight;
    private int usableHeightPrevious;

    public static void assistActivity(Activity activity) {
        new SoftHideKeyBoardUtil(activity);
    }

    private SoftHideKeyBoardUtil(Activity activity) {
        this.mChildOfContent = ((FrameLayout) activity.findViewById(16908290)).getChildAt(0);
        this.mChildOfContent.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.media.common.util.SoftHideKeyBoardUtil.1
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                if (SoftHideKeyBoardUtil.this.isfirst) {
                    SoftHideKeyBoardUtil.this.contentHeight = SoftHideKeyBoardUtil.this.mChildOfContent.getHeight();
                    SoftHideKeyBoardUtil.this.isfirst = false;
                }
                SoftHideKeyBoardUtil.this.possiblyResizeChildOfContent();
            }
        });
        this.frameLayoutParams = (FrameLayout.LayoutParams) this.mChildOfContent.getLayoutParams();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void possiblyResizeChildOfContent() {
        int computeUsableHeight = computeUsableHeight();
        if (computeUsableHeight != this.usableHeightPrevious) {
            int height = this.mChildOfContent.getRootView().getHeight();
            int i = height - computeUsableHeight;
            if (i > height / 4) {
                if (Build.VERSION.SDK_INT >= 19) {
                    this.frameLayoutParams.height = (height - i) + this.statusBarHeight;
                } else {
                    this.frameLayoutParams.height = height - i;
                }
            } else {
                this.frameLayoutParams.height = this.contentHeight;
            }
            this.mChildOfContent.requestLayout();
            this.usableHeightPrevious = computeUsableHeight;
        }
    }

    private int computeUsableHeight() {
        Rect rect = new Rect();
        this.mChildOfContent.getWindowVisibleDisplayFrame(rect);
        return rect.bottom - rect.top;
    }

    public static void isShowKeyBoard(Context context, View view, boolean z) {
        InputMethodManager inputMethodManager = (InputMethodManager) context.getSystemService("input_method");
        if (!z) {
            inputMethodManager.hideSoftInputFromWindow(view.getWindowToken(), 0);
        } else if (view.isFocused()) {
            inputMethodManager.showSoftInput(view, 0);
        } else {
            inputMethodManager.toggleSoftInput(2, 0);
        }
    }
}
