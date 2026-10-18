package com.alibaba.android.vlayout.layout;

import android.view.View;
import android.view.ViewPropertyAnimator;
import com.alibaba.android.vlayout.LayoutManagerHelper;

/* loaded from: /home/user/work/dex/classes3.dex */
public abstract class FixAreaLayoutHelper extends BaseLayoutHelper {
    protected FixAreaAdjuster mAdjuster = FixAreaAdjuster.mDefaultAdjuster;
    protected FixViewAnimatorHelper mFixViewAnimatorHelper;

    /* loaded from: /home/user/work/dex/classes3.dex */
    public interface FixViewAnimatorHelper {
        ViewPropertyAnimator onGetFixViewAppearAnimator(View view);

        ViewPropertyAnimator onGetFixViewDisappearAnimator(View view);
    }

    @Override // com.alibaba.android.vlayout.layout.BaseLayoutHelper, com.alibaba.android.vlayout.LayoutHelper
    public void adjustLayout(int i, int i2, LayoutManagerHelper layoutManagerHelper) {
    }

    @Override // com.alibaba.android.vlayout.layout.MarginLayoutHelper, com.alibaba.android.vlayout.LayoutHelper
    public int computeMarginEnd(int i, boolean z, boolean z2, LayoutManagerHelper layoutManagerHelper) {
        return 0;
    }

    @Override // com.alibaba.android.vlayout.layout.MarginLayoutHelper, com.alibaba.android.vlayout.LayoutHelper
    public int computeMarginStart(int i, boolean z, boolean z2, LayoutManagerHelper layoutManagerHelper) {
        return 0;
    }

    @Override // com.alibaba.android.vlayout.layout.MarginLayoutHelper, com.alibaba.android.vlayout.LayoutHelper
    public int computePaddingEnd(int i, boolean z, boolean z2, LayoutManagerHelper layoutManagerHelper) {
        return 0;
    }

    @Override // com.alibaba.android.vlayout.layout.MarginLayoutHelper, com.alibaba.android.vlayout.LayoutHelper
    public int computePaddingStart(int i, boolean z, boolean z2, LayoutManagerHelper layoutManagerHelper) {
        return 0;
    }

    @Override // com.alibaba.android.vlayout.layout.BaseLayoutHelper, com.alibaba.android.vlayout.LayoutHelper
    public boolean isFixLayout() {
        return true;
    }

    public void setAdjuster(FixAreaAdjuster fixAreaAdjuster) {
        this.mAdjuster = fixAreaAdjuster;
    }

    public void setFixViewAnimatorHelper(FixViewAnimatorHelper fixViewAnimatorHelper) {
        this.mFixViewAnimatorHelper = fixViewAnimatorHelper;
    }
}
