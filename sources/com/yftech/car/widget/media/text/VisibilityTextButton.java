package com.yftech.car.widget.media.text;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatTextView;
import com.android.internal.logging.nano.MetricsProto;
import com.yftech.car.widget.media.R;

/* loaded from: /home/user/work/dex/classes3.dex */
public class VisibilityTextButton extends AppCompatTextView implements View.OnClickListener {
    public static final int GRADUAL_CHANGE = 2;
    public static final int HIDE_SYSTEM_UI = 8;
    public static final int HIDE_VIEW = 2;
    public static final int NO_ANIMATION = 0;
    public static final int SHOW_SYSTEM_UI = 4;
    public static final int SHOW_VIEW = 1;
    private static final String TAG = "VisibilityTextButton";
    public static final int TRANSLATION = 1;
    private Drawable mCurrentDrawable;
    private String mCurrentText;
    private int mHideShowAnimation;
    private int mHideShowAnimationDuration;
    private OnClickVisibilityListener mOnClickVisibilityListener;
    private int mVideoPlayClick;
    private final int[] mVideoPlayClickViewId;
    private final int[] mVisibilityGoneVisibleClickViewId;
    private Drawable mVisibilityShowDrawable;
    private String mVisibilityShowText;
    private final int[] mVisibilityVisibleClickViewId;

    /* loaded from: /home/user/work/dex/classes3.dex */
    public interface OnClickVisibilityListener {
        void onClickVisibility(int[] iArr, int i, int i2, int i3);

        void onClickVisibilityGone(int[] iArr, int i, int i2);

        void onClickVisibilityVisible(int[] iArr, int i, int i2);
    }

    public VisibilityTextButton(Context context) {
        super(context);
        this.mVideoPlayClickViewId = new int[5];
        this.mVisibilityVisibleClickViewId = new int[5];
        this.mVisibilityGoneVisibleClickViewId = new int[5];
    }

    public VisibilityTextButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mVideoPlayClickViewId = new int[5];
        this.mVisibilityVisibleClickViewId = new int[5];
        this.mVisibilityGoneVisibleClickViewId = new int[5];
        initStatus(context, attributeSet);
    }

    public VisibilityTextButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mVideoPlayClickViewId = new int[5];
        this.mVisibilityVisibleClickViewId = new int[5];
        this.mVisibilityGoneVisibleClickViewId = new int[5];
        initStatus(context, attributeSet);
    }

    private void initStatus(Context context, AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.VisibilityTextButton);
        this.mVideoPlayClick = obtainStyledAttributes.getInt(R.styleable.VisibilityTextButton_click_switch_visibility, 0);
        this.mVideoPlayClickViewId[0] = obtainStyledAttributes.getResourceId(R.styleable.VisibilityTextButton_visibility_click_view1_id, -1);
        this.mVideoPlayClickViewId[1] = obtainStyledAttributes.getResourceId(R.styleable.VisibilityTextButton_visibility_click_view2_id, -1);
        this.mVideoPlayClickViewId[2] = obtainStyledAttributes.getResourceId(R.styleable.VisibilityTextButton_visibility_click_view3_id, -1);
        this.mVideoPlayClickViewId[3] = obtainStyledAttributes.getResourceId(R.styleable.VisibilityTextButton_visibility_click_view4_id, -1);
        this.mVideoPlayClickViewId[4] = obtainStyledAttributes.getResourceId(R.styleable.VisibilityTextButton_visibility_click_view5_id, -1);
        this.mVisibilityVisibleClickViewId[0] = obtainStyledAttributes.getResourceId(R.styleable.VisibilityTextButton_visibility_visible_click_view1_id, -1);
        this.mVisibilityVisibleClickViewId[1] = obtainStyledAttributes.getResourceId(R.styleable.VisibilityTextButton_visibility_visible_click_view2_id, -1);
        this.mVisibilityVisibleClickViewId[2] = obtainStyledAttributes.getResourceId(R.styleable.VisibilityTextButton_visibility_visible_click_view3_id, -1);
        this.mVisibilityVisibleClickViewId[3] = obtainStyledAttributes.getResourceId(R.styleable.VisibilityTextButton_visibility_visible_click_view4_id, -1);
        this.mVisibilityVisibleClickViewId[4] = obtainStyledAttributes.getResourceId(R.styleable.VisibilityTextButton_visibility_visible_click_view5_id, -1);
        this.mVisibilityGoneVisibleClickViewId[0] = obtainStyledAttributes.getResourceId(R.styleable.VisibilityTextButton_visibility_gone_visible_click_view1_id, -1);
        this.mVisibilityGoneVisibleClickViewId[1] = obtainStyledAttributes.getResourceId(R.styleable.VisibilityTextButton_visibility_gone_visible_click_view2_id, -1);
        this.mVisibilityGoneVisibleClickViewId[2] = obtainStyledAttributes.getResourceId(R.styleable.VisibilityTextButton_visibility_gone_visible_click_view3_id, -1);
        this.mVisibilityGoneVisibleClickViewId[3] = obtainStyledAttributes.getResourceId(R.styleable.VisibilityTextButton_visibility_gone_visible_click_view4_id, -1);
        this.mVisibilityGoneVisibleClickViewId[4] = obtainStyledAttributes.getResourceId(R.styleable.VisibilityTextButton_visibility_gone_visible_click_view5_id, -1);
        this.mVisibilityShowDrawable = obtainStyledAttributes.getDrawable(R.styleable.VisibilityTextButton_visibility_show_drawable);
        this.mVisibilityShowText = obtainStyledAttributes.getString(R.styleable.VisibilityTextButton_visibility_show_text);
        this.mHideShowAnimation = obtainStyledAttributes.getInt(R.styleable.VisibilityTextButton_visibility_hide_show_animation, -1);
        this.mHideShowAnimationDuration = obtainStyledAttributes.getInt(R.styleable.VisibilityTextButton_visibility_hide_show_animation_duration, MetricsProto.MetricsEvent.KEYBOARD_SHORTCUTS_HELPER);
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        CharSequence text = getText();
        if (text != null) {
            this.mCurrentText = text.toString();
        }
        if (this.mVisibilityShowText == null) {
            this.mVisibilityShowText = this.mCurrentText;
        }
        this.mCurrentDrawable = getBackground();
        if (this.mVisibilityShowDrawable == null) {
            this.mVisibilityShowDrawable = this.mCurrentDrawable;
        }
        if (this.mVideoPlayClick > 0) {
            setOnClickListener(this);
        }
    }

    public void setVisibilityShow(boolean z) {
        setText(z ? this.mVisibilityShowText : this.mCurrentText);
        setBackground(z ? this.mVisibilityShowDrawable : this.mCurrentDrawable);
    }

    public void setOnClickVisibilityListener(OnClickVisibilityListener onClickVisibilityListener) {
        this.mOnClickVisibilityListener = onClickVisibilityListener;
    }

    public boolean isMediaDataListShow(View view) {
        for (int i : this.mVideoPlayClickViewId) {
            if (i != -1) {
                View findViewById = view.findViewById(i);
                if ((findViewById instanceof ViewGroup) && findViewById.getVisibility() == 0) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (this.mOnClickVisibilityListener != null) {
            if (getVisibility() == 0) {
                this.mOnClickVisibilityListener.onClickVisibility(this.mVideoPlayClickViewId, this.mVideoPlayClick, this.mHideShowAnimation, this.mHideShowAnimationDuration);
                this.mOnClickVisibilityListener.onClickVisibilityVisible(this.mVisibilityVisibleClickViewId, this.mHideShowAnimation, this.mHideShowAnimationDuration);
                this.mOnClickVisibilityListener.onClickVisibilityGone(this.mVisibilityGoneVisibleClickViewId, this.mHideShowAnimation, this.mHideShowAnimationDuration);
                return;
            }
            Log.e(TAG, "onClick: no VISIBLE");
        }
    }
}
