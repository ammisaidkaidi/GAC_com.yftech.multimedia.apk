package android.app;

import android.animation.LayoutTransition;
import android.app.FragmentManager;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.Gravity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.android.internal.R;

@Deprecated
/* loaded from: /home/user/work/dex/classes.dex */
public class FragmentBreadCrumbs extends ViewGroup implements FragmentManager.OnBackStackChangedListener {
    private static final int DEFAULT_GRAVITY = 8388627;
    Activity mActivity;
    LinearLayout mContainer;
    private int mGravity;
    LayoutInflater mInflater;
    private int mLayoutResId;
    int mMaxVisible;
    private OnBreadCrumbClickListener mOnBreadCrumbClickListener;
    private View.OnClickListener mOnClickListener;
    private View.OnClickListener mParentClickListener;
    BackStackRecord mParentEntry;
    private int mTextColor;
    BackStackRecord mTopEntry;

    @Deprecated
    /* loaded from: /home/user/work/dex/classes.dex */
    public interface OnBreadCrumbClickListener {
        boolean onBreadCrumbClick(FragmentManager.BackStackEntry backStackEntry, int i);
    }

    public FragmentBreadCrumbs(Context context) {
        this(context, null);
    }

    public FragmentBreadCrumbs(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 17891389);
    }

    public FragmentBreadCrumbs(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, 0);
    }

    public FragmentBreadCrumbs(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.mMaxVisible = -1;
        this.mOnClickListener = new View.OnClickListener() { // from class: android.app.FragmentBreadCrumbs.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (view.getTag() instanceof FragmentManager.BackStackEntry) {
                    FragmentManager.BackStackEntry backStackEntry = (FragmentManager.BackStackEntry) view.getTag();
                    if (backStackEntry == FragmentBreadCrumbs.this.mParentEntry) {
                        if (FragmentBreadCrumbs.this.mParentClickListener != null) {
                            FragmentBreadCrumbs.this.mParentClickListener.onClick(view);
                            return;
                        }
                        return;
                    }
                    if (FragmentBreadCrumbs.this.mOnBreadCrumbClickListener != null) {
                        if (FragmentBreadCrumbs.this.mOnBreadCrumbClickListener.onBreadCrumbClick(backStackEntry == FragmentBreadCrumbs.this.mTopEntry ? null : backStackEntry, 0)) {
                            return;
                        }
                    }
                    if (backStackEntry == FragmentBreadCrumbs.this.mTopEntry) {
                        FragmentBreadCrumbs.this.mActivity.getFragmentManager().popBackStack();
                    } else {
                        FragmentBreadCrumbs.this.mActivity.getFragmentManager().popBackStack(backStackEntry.getId(), 0);
                    }
                }
            }
        };
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.FragmentBreadCrumbs, i, i2);
        this.mGravity = obtainStyledAttributes.getInt(0, DEFAULT_GRAVITY);
        this.mLayoutResId = obtainStyledAttributes.getResourceId(2, 17367143);
        this.mTextColor = obtainStyledAttributes.getColor(1, 0);
        obtainStyledAttributes.recycle();
    }

    public void setActivity(Activity activity) {
        this.mActivity = activity;
        this.mInflater = (LayoutInflater) activity.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
        this.mContainer = (LinearLayout) this.mInflater.inflate(17367145, (ViewGroup) this, false);
        addView(this.mContainer);
        activity.getFragmentManager().addOnBackStackChangedListener(this);
        updateCrumbs();
        setLayoutTransition(new LayoutTransition());
    }

    public void setMaxVisible(int i) {
        if (i < 1) {
            throw new IllegalArgumentException("visibleCrumbs must be greater than zero");
        }
        this.mMaxVisible = i;
    }

    public void setParentTitle(CharSequence charSequence, CharSequence charSequence2, View.OnClickListener onClickListener) {
        this.mParentEntry = createBackStackEntry(charSequence, charSequence2);
        this.mParentClickListener = onClickListener;
        updateCrumbs();
    }

    public void setOnBreadCrumbClickListener(OnBreadCrumbClickListener onBreadCrumbClickListener) {
        this.mOnBreadCrumbClickListener = onBreadCrumbClickListener;
    }

    private BackStackRecord createBackStackEntry(CharSequence charSequence, CharSequence charSequence2) {
        if (charSequence == null) {
            return null;
        }
        BackStackRecord backStackRecord = new BackStackRecord((FragmentManagerImpl) this.mActivity.getFragmentManager());
        backStackRecord.setBreadCrumbTitle(charSequence);
        backStackRecord.setBreadCrumbShortTitle(charSequence2);
        return backStackRecord;
    }

    public void setTitle(CharSequence charSequence, CharSequence charSequence2) {
        this.mTopEntry = createBackStackEntry(charSequence, charSequence2);
        updateCrumbs();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int measuredWidth;
        int measuredWidth2;
        if (getChildCount() == 0) {
            return;
        }
        View childAt = getChildAt(0);
        int i5 = this.mPaddingTop;
        int measuredHeight = (this.mPaddingTop + childAt.getMeasuredHeight()) - this.mPaddingBottom;
        int absoluteGravity = Gravity.getAbsoluteGravity(this.mGravity & 8388615, getLayoutDirection());
        if (absoluteGravity == 1) {
            measuredWidth = this.mPaddingLeft + (((this.mRight - this.mLeft) - childAt.getMeasuredWidth()) / 2);
            measuredWidth2 = childAt.getMeasuredWidth() + measuredWidth;
        } else if (absoluteGravity == 5) {
            measuredWidth2 = (this.mRight - this.mLeft) - this.mPaddingRight;
            measuredWidth = measuredWidth2 - childAt.getMeasuredWidth();
        } else {
            measuredWidth = this.mPaddingLeft;
            measuredWidth2 = childAt.getMeasuredWidth() + measuredWidth;
        }
        if (measuredWidth < this.mPaddingLeft) {
            measuredWidth = this.mPaddingLeft;
        }
        if (measuredWidth2 > (this.mRight - this.mLeft) - this.mPaddingRight) {
            measuredWidth2 = (this.mRight - this.mLeft) - this.mPaddingRight;
        }
        childAt.layout(measuredWidth, i5, measuredWidth2, measuredHeight);
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        int childCount = getChildCount();
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        for (int i6 = 0; i6 < childCount; i6++) {
            View childAt = getChildAt(i6);
            if (childAt.getVisibility() != 8) {
                measureChild(childAt, i, i2);
                i3 = Math.max(i3, childAt.getMeasuredWidth());
                i4 = Math.max(i4, childAt.getMeasuredHeight());
                i5 = combineMeasuredStates(i5, childAt.getMeasuredState());
            }
        }
        setMeasuredDimension(resolveSizeAndState(Math.max(i3 + this.mPaddingLeft + this.mPaddingRight, getSuggestedMinimumWidth()), i, i5), resolveSizeAndState(Math.max(i4 + this.mPaddingTop + this.mPaddingBottom, getSuggestedMinimumHeight()), i2, i5 << 16));
    }

    @Override // android.app.FragmentManager.OnBackStackChangedListener
    public void onBackStackChanged() {
        updateCrumbs();
    }

    private int getPreEntryCount() {
        return (this.mTopEntry != null ? 1 : 0) + (this.mParentEntry != null ? 1 : 0);
    }

    private FragmentManager.BackStackEntry getPreEntry(int i) {
        if (this.mParentEntry != null) {
            return i == 0 ? this.mParentEntry : this.mTopEntry;
        }
        return this.mTopEntry;
    }

    void updateCrumbs() {
        int i;
        FragmentManager.BackStackEntry backStackEntryAt;
        FragmentManager fragmentManager = this.mActivity.getFragmentManager();
        int backStackEntryCount = fragmentManager.getBackStackEntryCount();
        int preEntryCount = getPreEntryCount();
        int childCount = this.mContainer.getChildCount();
        int i2 = 0;
        while (true) {
            i = backStackEntryCount + preEntryCount;
            if (i2 >= i) {
                break;
            }
            if (i2 < preEntryCount) {
                backStackEntryAt = getPreEntry(i2);
            } else {
                backStackEntryAt = fragmentManager.getBackStackEntryAt(i2 - preEntryCount);
            }
            if (i2 < childCount && this.mContainer.getChildAt(i2).getTag() != backStackEntryAt) {
                for (int i3 = i2; i3 < childCount; i3++) {
                    this.mContainer.removeViewAt(i2);
                }
                childCount = i2;
            }
            if (i2 >= childCount) {
                View inflate = this.mInflater.inflate(this.mLayoutResId, (ViewGroup) this, false);
                TextView textView = (TextView) inflate.findViewById(android.R.id.title);
                textView.setText(backStackEntryAt.getBreadCrumbTitle());
                textView.setTag(backStackEntryAt);
                textView.setTextColor(this.mTextColor);
                if (i2 == 0) {
                    inflate.findViewById(16909024).setVisibility(8);
                }
                this.mContainer.addView(inflate);
                textView.setOnClickListener(this.mOnClickListener);
            }
            i2++;
        }
        int childCount2 = this.mContainer.getChildCount();
        while (childCount2 > i) {
            this.mContainer.removeViewAt(childCount2 - 1);
            childCount2--;
        }
        int i4 = 0;
        while (i4 < childCount2) {
            View childAt = this.mContainer.getChildAt(i4);
            childAt.findViewById(android.R.id.title).setEnabled(i4 < childCount2 + (-1));
            if (this.mMaxVisible > 0) {
                childAt.setVisibility(i4 < childCount2 - this.mMaxVisible ? 8 : 0);
                childAt.findViewById(16909024).setVisibility((i4 <= childCount2 - this.mMaxVisible || i4 == 0) ? 8 : 0);
            }
            i4++;
        }
    }
}
