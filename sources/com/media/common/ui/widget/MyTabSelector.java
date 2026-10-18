package com.media.common.ui.widget;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.content.ContextCompat;
import com.media.common.util.SystemUtil;
import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* loaded from: /home/user/work/dex/classes3.dex */
public class MyTabSelector extends RelativeLayout {
    private final String TAG;
    private ICustomStyle customStyle;
    private float default_textSize;
    private int index;
    private View index_line;
    private int index_line_height;
    private int line_reference;
    private OnTabClickListener onTabClickListener;
    private int start_Index;
    private TextView[] tabs;
    private String[] tabs_title;
    private View[] v_tips_dot;

    /* loaded from: /home/user/work/dex/classes3.dex */
    public interface ICustomStyle {
        int getIndexBackgroundResource();

        int getIndexMode();

        int getStartIndex();

        void setIndexLineLayoutParamsExtra(RelativeLayout.LayoutParams layoutParams);

        void setTabLayoutParamsExtra(RelativeLayout.LayoutParams layoutParams, int i);

        int setTabSelectedStyle(@Nullable TextView textView, TextView textView2);

        void setTabStyle(TextView textView, int i);
    }

    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: /home/user/work/dex/classes3.dex */
    @interface IndexMode {
    }

    /* loaded from: /home/user/work/dex/classes3.dex */
    public interface IndexModeType {
        public static final int BOTTOM_UNDERLINE = 10001;
        public static final int FILL_WITH_BACKGROUND = 10002;
    }

    /* loaded from: /home/user/work/dex/classes3.dex */
    public interface OnTabClickListener {
        void onTabClick(View view, int i);
    }

    public MyTabSelector(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.TAG = MyTabSelector.class.getSimpleName();
        this.tabs = new TextView[3];
        this.tabs_title = new String[]{"Tab1", "Tab2", "Tab3"};
        this.v_tips_dot = new View[3];
        this.index = -1;
        this.start_Index = -1;
        this.default_textSize = getContext().getResources().getDimensionPixelSize(R.dimen.dp_14);
        this.index_line_height = getContext().getResources().getDimensionPixelSize(R.dimen.dp_6);
        this.line_reference = R.drawable.shape_tab_index;
        init();
    }

    private void init() {
        removeAllViews();
        if (this.customStyle != null) {
            this.start_Index = this.customStyle.getStartIndex();
            this.index = this.start_Index;
        }
        for (final int i = 0; i < this.tabs.length; i++) {
            this.tabs[i] = new TextView(getContext());
            this.tabs[i].setElevation(5.0f);
            this.tabs[i].setId(generateViewId());
            this.tabs[i].setMaxLines(1);
            this.tabs[i].setEllipsize(TextUtils.TruncateAt.END);
            this.tabs[i].setText(this.tabs_title[i]);
            this.tabs[i].setGravity(17);
            this.tabs[i].setPadding(getContext().getResources().getDimensionPixelSize(R.dimen.dp_9), getContext().getResources().getDimensionPixelSize(R.dimen.dp_8), getContext().getResources().getDimensionPixelSize(R.dimen.dp_9), getContext().getResources().getDimensionPixelSize(R.dimen.dp_8));
            this.tabs[i].setTextSize(0, this.default_textSize);
            if (this.customStyle != null) {
                this.customStyle.setTabStyle(this.tabs[i], i);
            } else if (i == this.start_Index) {
                this.tabs[i].setTextColor(ContextCompat.getColor(getContext(), R.color.colorFDC10A));
            } else {
                this.tabs[i].setTextColor(ContextCompat.getColor(getContext(), R.color.colorB0BFCC));
            }
            this.tabs[i].setOnClickListener(new View.OnClickListener() { // from class: com.media.common.ui.widget.MyTabSelector.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    if (SystemUtil.isFastDoubleClick()) {
                        return;
                    }
                    if (MyTabSelector.this.index_line == null || MyTabSelector.this.start_Index < 0 || MyTabSelector.this.index < 0) {
                        MyTabSelector.this.index_line = new View(MyTabSelector.this.getContext());
                        MyTabSelector.this.index_line.setBackgroundResource(MyTabSelector.this.customStyle == null ? MyTabSelector.this.line_reference : MyTabSelector.this.customStyle.getIndexBackgroundResource());
                        if (MyTabSelector.this.customStyle != null && MyTabSelector.this.customStyle.getIndexMode() != 10001) {
                            if (MyTabSelector.this.customStyle != null && MyTabSelector.this.customStyle.getIndexMode() == 10002) {
                                RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
                                layoutParams.addRule(6, MyTabSelector.this.tabs[i % MyTabSelector.this.tabs.length].getId());
                                layoutParams.addRule(18, MyTabSelector.this.tabs[i % MyTabSelector.this.tabs.length].getId());
                                layoutParams.addRule(19, MyTabSelector.this.tabs[i % MyTabSelector.this.tabs.length].getId());
                                layoutParams.addRule(8, MyTabSelector.this.tabs[i % MyTabSelector.this.tabs.length].getId());
                                if (MyTabSelector.this.customStyle != null) {
                                    MyTabSelector.this.customStyle.setIndexLineLayoutParamsExtra(layoutParams);
                                }
                                MyTabSelector.this.addView(MyTabSelector.this.index_line, layoutParams);
                            }
                        } else {
                            RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, MyTabSelector.this.index_line_height);
                            layoutParams2.addRule(3, MyTabSelector.this.tabs[i % MyTabSelector.this.tabs.length].getId());
                            layoutParams2.addRule(18, MyTabSelector.this.tabs[i % MyTabSelector.this.tabs.length].getId());
                            layoutParams2.addRule(19, MyTabSelector.this.tabs[i % MyTabSelector.this.tabs.length].getId());
                            if (MyTabSelector.this.customStyle != null) {
                                MyTabSelector.this.customStyle.setIndexLineLayoutParamsExtra(layoutParams2);
                            }
                            MyTabSelector.this.addView(MyTabSelector.this.index_line, layoutParams2);
                        }
                        if (MyTabSelector.this.customStyle == null || MyTabSelector.this.customStyle.setTabSelectedStyle(null, MyTabSelector.this.tabs[i]) == 0) {
                            MyTabSelector.this.tabs[MyTabSelector.this.index].setTextColor(ContextCompat.getColor(MyTabSelector.this.getContext(), R.color.colorB0BFCC));
                            MyTabSelector.this.tabs[i].setTextColor(ContextCompat.getColor(MyTabSelector.this.getContext(), R.color.colorFDC10A));
                        }
                        MyTabSelector.this.index = i;
                        MyTabSelector.this.start_Index = i;
                    } else if (MyTabSelector.this.index != i && MyTabSelector.this.index < MyTabSelector.this.tabs.length) {
                        if (MyTabSelector.this.customStyle == null || MyTabSelector.this.customStyle.setTabSelectedStyle(MyTabSelector.this.tabs[MyTabSelector.this.index], MyTabSelector.this.tabs[i]) == 0) {
                            MyTabSelector.this.tabs[MyTabSelector.this.index].setTextColor(ContextCompat.getColor(MyTabSelector.this.getContext(), R.color.colorB0BFCC));
                            MyTabSelector.this.tabs[i].setTextColor(ContextCompat.getColor(MyTabSelector.this.getContext(), R.color.colorFDC10A));
                        }
                        if (MyTabSelector.this.customStyle != null && MyTabSelector.this.customStyle.getIndexMode() != 10002) {
                            if (MyTabSelector.this.customStyle != null && MyTabSelector.this.customStyle.getIndexMode() == 10001) {
                                RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(MyTabSelector.this.tabs[i].getMeasuredWidth(), MyTabSelector.this.index_line_height);
                                layoutParams3.addRule(3, MyTabSelector.this.tabs[0].getId());
                                if (MyTabSelector.this.customStyle != null) {
                                    MyTabSelector.this.customStyle.setIndexLineLayoutParamsExtra(layoutParams3);
                                }
                                MyTabSelector.this.index_line.setLayoutParams(layoutParams3);
                            }
                        } else {
                            RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(MyTabSelector.this.tabs[i].getMeasuredWidth(), -2);
                            layoutParams4.width = MyTabSelector.this.tabs[i].getWidth();
                            layoutParams4.addRule(6, MyTabSelector.this.tabs[i].getId());
                            layoutParams4.addRule(8, MyTabSelector.this.tabs[i].getId());
                            if (MyTabSelector.this.customStyle != null) {
                                MyTabSelector.this.customStyle.setIndexLineLayoutParamsExtra(layoutParams4);
                            }
                            MyTabSelector.this.index_line.setLayoutParams(layoutParams4);
                        }
                        MyTabSelector.this.index_line.animate().translationX(MyTabSelector.this.tabs[i].getX()).start();
                        MyTabSelector.this.index = i;
                    }
                    if (MyTabSelector.this.onTabClickListener != null) {
                        MyTabSelector.this.onTabClickListener.onTabClick(view, i);
                    }
                }
            });
        }
        if (this.start_Index >= 0) {
            this.index_line = new View(getContext());
            this.index_line.setBackgroundResource(this.customStyle == null ? this.line_reference : this.customStyle.getIndexBackgroundResource());
            if (this.customStyle == null || this.customStyle.getIndexMode() == 10001) {
                RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, this.index_line_height);
                layoutParams.addRule(3, this.tabs[this.start_Index % this.tabs.length].getId());
                layoutParams.addRule(18, this.tabs[this.start_Index % this.tabs.length].getId());
                layoutParams.addRule(19, this.tabs[this.start_Index % this.tabs.length].getId());
                if (this.customStyle != null) {
                    this.customStyle.setIndexLineLayoutParamsExtra(layoutParams);
                }
                addView(this.index_line, layoutParams);
            } else if (this.customStyle != null && this.customStyle.getIndexMode() == 10002) {
                RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
                layoutParams2.addRule(6, this.tabs[this.start_Index % this.tabs.length].getId());
                layoutParams2.addRule(18, this.tabs[this.start_Index % this.tabs.length].getId());
                layoutParams2.addRule(19, this.tabs[this.start_Index % this.tabs.length].getId());
                layoutParams2.addRule(8, this.tabs[this.start_Index % this.tabs.length].getId());
                if (this.customStyle != null) {
                    this.customStyle.setIndexLineLayoutParamsExtra(layoutParams2);
                }
                addView(this.index_line, layoutParams2);
            }
        }
        for (int i2 = 0; i2 < this.tabs.length; i2++) {
            RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams3.addRule(15, -1);
            if (i2 > 0) {
                layoutParams3.addRule(1, this.tabs[i2 - 1].getId());
            }
            if (this.customStyle != null) {
                this.customStyle.setTabLayoutParamsExtra(layoutParams3, i2);
            }
            addView(this.tabs[i2], layoutParams3);
        }
    }

    public void setOnTabClickListener(OnTabClickListener onTabClickListener) {
        this.onTabClickListener = onTabClickListener;
    }

    public void setCustomStyle(ICustomStyle iCustomStyle) {
        this.customStyle = iCustomStyle;
        init();
    }

    public int getIndex() {
        return this.index;
    }

    public void setIndexTab(int i) {
        if (i < this.tabs.length) {
            this.tabs[i].callOnClick();
        }
    }

    public void setTabEnable(int i, boolean z) {
        this.tabs[i].setEnabled(z);
        if (z) {
            if (this.index == -1) {
                setIndexTab(i);
                return;
            }
            return;
        }
        boolean z2 = false;
        int i2 = 1;
        while (true) {
            if (i2 >= this.tabs.length) {
                break;
            }
            int length = (i + i2) % this.tabs.length;
            if (this.tabs[length].isEnabled()) {
                setIndexTab(length);
                z2 = true;
                break;
            }
            i2++;
        }
        if (z2) {
            return;
        }
        removeView(this.index_line);
        this.index_line = null;
        this.index = -1;
    }

    public int getTabCount() {
        if (this.tabs_title != null) {
            return this.tabs_title.length;
        }
        return 0;
    }

    public void setTabArray(@NonNull String[] strArr) {
        if (strArr.length == 0) {
            throw new IllegalArgumentException("Tab不能为空");
        }
        this.tabs_title = strArr;
        this.tabs = new TextView[this.tabs_title.length];
        this.v_tips_dot = new View[this.tabs_title.length];
        init();
    }
}
