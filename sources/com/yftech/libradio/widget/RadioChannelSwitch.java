package com.yftech.libradio.widget;

import android.content.Context;
import android.graphics.Typeface;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.RadioButton;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.content.res.ResourcesCompat;
import com.media.common.ui.widget.FlowRadioGroup;
import com.yftech.libradio.R;
import com.yftech.vehicle.internal.adapter.ICarLight;

/* loaded from: /home/user/work/dex/classes4.dex */
public class RadioChannelSwitch extends FrameLayout implements FlowRadioGroup.OnCheckedChangeListener {
    private OnCheckChangeListener onCheckChangeListener;
    private RadioButton rb_am;
    private RadioButton rb_fm;
    private FlowRadioGroup rg;
    private int translationOffset;
    private View v_selected;

    /* loaded from: /home/user/work/dex/classes4.dex */
    public interface OnCheckChangeListener {
        void onCheckChange(FlowRadioGroup flowRadioGroup, int i);
    }

    private boolean isRTL() {
        return false;
    }

    public RadioChannelSwitch(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.translationOffset = 90;
        init();
    }

    private void init() {
        removeAllViews();
        View inflate = LayoutInflater.from(getContext()).inflate(R.layout.layout_fm_am_switch, (ViewGroup) null);
        this.v_selected = inflate.findViewById(R.id.v_selected);
        this.rg = inflate.findViewById(R.id.rg);
        this.rb_fm = (RadioButton) this.rg.findViewById(R.id.rb_fm);
        this.rb_am = (RadioButton) this.rg.findViewById(R.id.rb_am);
        this.rg.setOnCheckedChangeListener(this);
        addView(inflate, new FrameLayout.LayoutParams(ICarLight.ILBC_SETTING, 72));
    }

    public void onCheckedChanged(FlowRadioGroup flowRadioGroup, int i) {
        if (isRTL()) {
            this.v_selected.animate().translationX(i != R.id.rb_fm ? -this.translationOffset : 0.0f).start();
        } else {
            this.v_selected.animate().translationX(i != R.id.rb_fm ? this.translationOffset : 0.0f).start();
        }
        Typeface font = ResourcesCompat.getFont(getContext(), R.font.roboto_regular);
        Typeface font2 = ResourcesCompat.getFont(getContext(), R.font.roboto_medium);
        if (i == R.id.rb_fm) {
            this.rb_fm.setTypeface(font2);
            this.rb_am.setTypeface(font);
        } else {
            this.rb_fm.setTypeface(font);
            this.rb_am.setTypeface(font2);
        }
        if (this.onCheckChangeListener != null) {
            this.onCheckChangeListener.onCheckChange(flowRadioGroup, i);
        }
    }

    public void setOnCheckChangeListener(OnCheckChangeListener onCheckChangeListener) {
        this.onCheckChangeListener = onCheckChangeListener;
    }

    public void check(int i) {
        this.rg.check(i);
    }

    public int getCheckedId() {
        return this.rg.getCheckedRadioButtonId();
    }
}
