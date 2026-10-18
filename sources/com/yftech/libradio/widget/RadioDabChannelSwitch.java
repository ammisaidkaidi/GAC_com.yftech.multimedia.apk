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
import com.yftech.libradio.Utils;
import com.yftech.vehicle.internal.adapter.ICarEvDevice;
import com.yftech.vehicle.internal.adapter.ICarLight;

/* loaded from: /home/user/work/dex/classes4.dex */
public class RadioDabChannelSwitch extends FrameLayout implements FlowRadioGroup.OnCheckedChangeListener {
    private OnCheckChangeListener onCheckChangeListener;
    private RadioButton rb_am;
    private RadioButton rb_dab;
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

    public RadioDabChannelSwitch(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.translationOffset = 90;
        init();
    }

    private void init() {
        View inflate;
        FrameLayout.LayoutParams layoutParams;
        removeAllViews();
        if (Utils.isRadioDABPresent()) {
            if (Utils.isFMAndAMPresent()) {
                inflate = LayoutInflater.from(getContext()).inflate(R.layout.layout_fm_am_dab_switch, (ViewGroup) null);
                this.rb_dab = (RadioButton) inflate.findViewById(R.id.rb_dab);
                this.translationOffset = 106;
                layoutParams = new FrameLayout.LayoutParams(ICarEvDevice.CHARGE_SOC_PERCENT_STATE, 72);
            } else {
                FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(106, 72);
                View inflate2 = LayoutInflater.from(getContext()).inflate(R.layout.layout_dab_switch, (ViewGroup) null);
                this.rg = inflate2.findViewById(R.id.rg);
                this.rb_dab = (RadioButton) this.rg.findViewById(R.id.rb_dab);
                this.translationOffset = 0;
                layoutParams = layoutParams2;
                inflate = inflate2;
            }
        } else {
            inflate = LayoutInflater.from(getContext()).inflate(R.layout.layout_fm_am_switch, (ViewGroup) null);
            this.translationOffset = 90;
            layoutParams = new FrameLayout.LayoutParams(ICarLight.ILBC_SETTING, 72);
        }
        this.v_selected = inflate.findViewById(R.id.v_selected);
        this.rg = inflate.findViewById(R.id.rg);
        this.rb_fm = (RadioButton) inflate.findViewById(R.id.rb_fm);
        this.rb_am = (RadioButton) inflate.findViewById(R.id.rb_am);
        this.rg.setOnCheckedChangeListener(this);
        addView(inflate, layoutParams);
    }

    public void onCheckedChanged(FlowRadioGroup flowRadioGroup, int i) {
        if (isRTL()) {
            if (i == R.id.rb_fm) {
                this.v_selected.animate().translationX(0.0f).start();
            } else if (i == R.id.rb_am) {
                this.v_selected.animate().translationX(-this.translationOffset).start();
            } else if (Utils.isRadioDABPresent() && !Utils.isFMAndAMPresent()) {
                this.v_selected.animate().translationX(0.0f).start();
            } else {
                this.v_selected.animate().translationX((-this.translationOffset) * 2).start();
            }
        } else if (i == R.id.rb_fm) {
            this.v_selected.animate().translationX(0.0f).start();
        } else if (i == R.id.rb_am) {
            this.v_selected.animate().translationX(this.translationOffset).start();
        } else if (Utils.isRadioDABPresent() && !Utils.isFMAndAMPresent()) {
            this.v_selected.animate().translationX(0.0f).start();
        } else {
            this.v_selected.animate().translationX(this.translationOffset * 2).start();
        }
        Typeface font = ResourcesCompat.getFont(getContext(), R.font.roboto_regular);
        Typeface font2 = ResourcesCompat.getFont(getContext(), R.font.roboto_medium);
        if (i == R.id.rb_fm) {
            if (this.rb_fm != null) {
                this.rb_fm.setTypeface(font2);
            }
            if (this.rb_am != null) {
                this.rb_am.setTypeface(font);
            }
            if (this.rb_dab != null) {
                this.rb_dab.setTypeface(font);
            }
        } else if (i == R.id.rb_am) {
            if (this.rb_fm != null) {
                this.rb_fm.setTypeface(font2);
            }
            if (this.rb_am != null) {
                this.rb_am.setTypeface(font);
            }
            if (this.rb_dab != null) {
                this.rb_dab.setTypeface(font);
            }
        } else if (i == R.id.rb_dab) {
            if (this.rb_fm != null) {
                this.rb_fm.setTypeface(font2);
            }
            if (this.rb_am != null) {
                this.rb_am.setTypeface(font);
            }
            if (this.rb_dab != null) {
                this.rb_dab.setTypeface(font2);
            }
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
