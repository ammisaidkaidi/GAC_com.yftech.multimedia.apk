package com.media.common.ui.widget;

import android.app.Activity;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* loaded from: /home/user/work/dex/classes3.dex */
public class MyActionBar extends RelativeLayout {
    public static final int TAG_TITLE_GRAVITY_CENTER = 0;
    public static final int TAG_TITLE_GRAVITY_LEFT = 1;
    private Context context;
    private boolean showLine;
    private String title;
    private ColorStateList titleColor;
    private int titleGravity;
    private TextView tvTitle;
    private View viewLine;

    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: /home/user/work/dex/classes3.dex */
    @interface TitleGravity {
    }

    public MyActionBar(Context context) {
        super(context);
    }

    public MyActionBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.context = context;
        LayoutInflater.from(context).inflate(R.layout.actionbar, (ViewGroup) this, true);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.MyActionBar);
        this.title = obtainStyledAttributes.getString(R.styleable.MyActionBar_title);
        this.titleColor = obtainStyledAttributes.getColorStateList(R.styleable.MyActionBar_titleColor) == null ? ContextCompat.getColorStateList(context, R.color.color_title_default) : obtainStyledAttributes.getColorStateList(R.styleable.MyActionBar_titleColor);
        this.showLine = obtainStyledAttributes.getBoolean(R.styleable.MyActionBar_showLine, false);
        this.titleGravity = obtainStyledAttributes.getInt(R.styleable.MyActionBar_titleGravity, 1);
        obtainStyledAttributes.recycle();
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.tvTitle = (TextView) findViewById(R.id.tv_actionbar_title);
        this.viewLine = findViewById(R.id.view_line);
        this.tvTitle.setTextSize(0, 36.0f);
        if (this.title != null) {
            setTitleText(this.title);
        }
        setTitleColor(this.titleColor);
        setTitleGravity(this.titleGravity);
        showLine(this.showLine);
        setOnBackPressClickListner(new View.OnClickListener() { // from class: com.media.common.ui.widget.MyActionBar.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (MyActionBar.this.context instanceof Activity) {
                    ((Activity) MyActionBar.this.context).onBackPressed();
                }
            }
        });
    }

    public void showLine(boolean z) {
        if (z) {
            this.viewLine.setVisibility(0);
        } else {
            this.viewLine.setVisibility(8);
        }
    }

    public void setTitleText(String str) {
        this.tvTitle.setText(str);
    }

    private void setTitleColor(int i) {
        this.tvTitle.setTextColor(i);
    }

    private void setTitleColor(ColorStateList colorStateList) {
        this.tvTitle.setTextColor(colorStateList);
    }

    private void setTitleGravity(int i) {
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.tvTitle.getLayoutParams();
        switch (i) {
            case 0:
                if (layoutParams != null) {
                    layoutParams.width = -1;
                }
                this.tvTitle.setGravity(17);
                break;
            case 1:
                if (layoutParams != null) {
                    layoutParams.width = -2;
                }
                this.tvTitle.setGravity(8388627);
                break;
        }
        this.tvTitle.setLayoutParams(layoutParams);
    }

    public TextView getTitle() {
        return this.tvTitle;
    }

    public void setOnBackPressClickListner(View.OnClickListener onClickListener) {
        if (this.tvTitle != null) {
            this.tvTitle.setOnClickListener(onClickListener);
        }
    }
}
