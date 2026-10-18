package com.media.common.ui.widget.top_snackbar;

import android.content.Context;
import android.content.res.ColorStateList;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.StringRes;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.media.common.ui.widget.R;
import com.media.common.ui.widget.top_snackbar.BaseTransientBottomBar;

/* loaded from: /home/user/work/dex/classes3.dex */
public final class TopSnackBar extends BaseTransientBottomBar<TopSnackBar> {
    public static final int LENGTH_INDEFINITE = -2;
    public static final int LENGTH_LONG = 0;
    public static final int LENGTH_SHORT = -1;

    @Nullable
    private BaseTransientBottomBar.BaseCallback<TopSnackBar> mCallback;

    /* loaded from: /home/user/work/dex/classes3.dex */
    public static class Callback extends BaseTransientBottomBar.BaseCallback<TopSnackBar> {
        public static final int DISMISS_EVENT_ACTION = 1;
        public static final int DISMISS_EVENT_CONSECUTIVE = 4;
        public static final int DISMISS_EVENT_MANUAL = 3;
        public static final int DISMISS_EVENT_SWIPE = 0;
        public static final int DISMISS_EVENT_TIMEOUT = 2;

        @Override // com.media.common.ui.widget.top_snackbar.BaseTransientBottomBar.BaseCallback
        public void onDismissed(TopSnackBar topSnackBar, int i) {
        }

        @Override // com.media.common.ui.widget.top_snackbar.BaseTransientBottomBar.BaseCallback
        public void onShown(TopSnackBar topSnackBar) {
        }
    }

    private TopSnackBar(ViewGroup viewGroup, View view, BaseTransientBottomBar.ContentViewCallback contentViewCallback) {
        super(viewGroup, view, contentViewCallback);
    }

    @NonNull
    public static TopSnackBar make(@NonNull View view, @NonNull CharSequence charSequence, int i) {
        ViewGroup findSuitableParent = findSuitableParent(view);
        if (findSuitableParent == null) {
            throw new IllegalArgumentException("No suitable parent found from the given view. Please provide a valid view.");
        }
        SnackbarContentLayout snackbarContentLayout = (SnackbarContentLayout) LayoutInflater.from(findSuitableParent.getContext()).inflate(R.layout.design_layout_top_snackbar_include, findSuitableParent, false);
        TopSnackBar topSnackBar = new TopSnackBar(findSuitableParent, snackbarContentLayout, snackbarContentLayout);
        topSnackBar.setText(charSequence);
        topSnackBar.setDuration(i);
        return topSnackBar;
    }

    @NonNull
    public static TopSnackBar make(@NonNull View view, int i, @NonNull CharSequence charSequence, int i2) {
        ViewGroup findSuitableParent = findSuitableParent(view);
        if (findSuitableParent == null) {
            throw new IllegalArgumentException("No suitable parent found from the given view. Please provide a valid view.");
        }
        SnackbarContentLayout snackbarContentLayout = (SnackbarContentLayout) LayoutInflater.from(findSuitableParent.getContext()).inflate(i, findSuitableParent, false);
        TopSnackBar topSnackBar = new TopSnackBar(findSuitableParent, snackbarContentLayout, snackbarContentLayout);
        topSnackBar.setText(charSequence);
        topSnackBar.setDuration(i2);
        return topSnackBar;
    }

    @NonNull
    public static TopSnackBar make(@NonNull View view, int i, @StringRes int i2, int i3) {
        return make(view, i, view.getResources().getText(i2), i3);
    }

    @NonNull
    public static TopSnackBar make(@NonNull View view, @StringRes int i, int i2) {
        return make(view, view.getResources().getText(i), i2);
    }

    private static ViewGroup findSuitableParent(View view) {
        ViewGroup viewGroup = null;
        while (!(view instanceof CoordinatorLayout)) {
            if (view instanceof FrameLayout) {
                if (view.getId() == 16908290) {
                    return (ViewGroup) view;
                }
                viewGroup = (ViewGroup) view;
            }
            if (view != null) {
                Object parent = view.getParent();
                view = parent instanceof View ? (View) parent : null;
            }
            if (view == null) {
                return viewGroup;
            }
        }
        return (ViewGroup) view;
    }

    @NonNull
    public TopSnackBar setText(@NonNull CharSequence charSequence) {
        ((SnackbarContentLayout) this.mView.getChildAt(0)).getMessageView().setText(charSequence);
        return this;
    }

    @NonNull
    public TopSnackBar setText(@StringRes int i) {
        return setText(getContext().getText(i));
    }

    @NonNull
    public TopSnackBar setAction(@StringRes int i, View.OnClickListener onClickListener) {
        return setAction(getContext().getText(i), onClickListener);
    }

    @NonNull
    public TopSnackBar setAction(CharSequence charSequence, final View.OnClickListener onClickListener) {
        Button actionView = ((SnackbarContentLayout) this.mView.getChildAt(0)).getActionView();
        if (TextUtils.isEmpty(charSequence) || onClickListener == null) {
            actionView.setVisibility(8);
            actionView.setOnClickListener(null);
        } else {
            actionView.setVisibility(0);
            actionView.setText(charSequence);
            actionView.setOnClickListener(new View.OnClickListener() { // from class: com.media.common.ui.widget.top_snackbar.TopSnackBar.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    onClickListener.onClick(view);
                    TopSnackBar.this.dispatchDismiss(1);
                }
            });
        }
        return this;
    }

    @NonNull
    public TopSnackBar setActionTextColor(ColorStateList colorStateList) {
        ((SnackbarContentLayout) this.mView.getChildAt(0)).getActionView().setTextColor(colorStateList);
        return this;
    }

    @NonNull
    public TopSnackBar setActionTextColor(@ColorInt int i) {
        ((SnackbarContentLayout) this.mView.getChildAt(0)).getActionView().setTextColor(i);
        return this;
    }

    @NonNull
    @Deprecated
    public TopSnackBar setCallback(Callback callback) {
        if (this.mCallback != null) {
            removeCallback(this.mCallback);
        }
        if (callback != null) {
            addCallback(callback);
        }
        this.mCallback = callback;
        return this;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* loaded from: /home/user/work/dex/classes3.dex */
    public static final class SnackBarLayout extends BaseTransientBottomBar.SnackbarBaseLayout {
        public SnackBarLayout(Context context) {
            super(context);
        }

        public SnackBarLayout(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        @Override // android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            super.onMeasure(i, i2);
            int childCount = getChildCount();
            int measuredWidth = (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight();
            for (int i3 = 0; i3 < childCount; i3++) {
                View childAt = getChildAt(i3);
                if (childAt.getLayoutParams().width == -1) {
                    childAt.measure(View.MeasureSpec.makeMeasureSpec(measuredWidth, 1073741824), View.MeasureSpec.makeMeasureSpec(childAt.getMeasuredHeight(), 1073741824));
                }
            }
        }
    }
}
