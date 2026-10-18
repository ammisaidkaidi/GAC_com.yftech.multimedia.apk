package com.yftech.libmusic.dialog;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.media.common.ui.widget.FlowRadioGroup;
import com.media.common.ui.widget.SeekBarView;
import com.media.common.util.AudioSettingUtil;
import com.media.common.util.LogUtil;
import com.media.common.util.SharedPrefsUtil;
import com.media.common.util.ValueUtil;
import com.yftech.car.audio.CarSoundEffectManager;
import com.yftech.libmusic.R;
import com.yftech.libmusic.presenter.MusicSoundEffectsPresenter;
import com.yftech.libmusic.view.IMusicSoundEffectsDialogView;
import com.yftech.libmvpmodule.mvp.BaseMvpDialogFragment;
import com.yftech.vehicle.internal.adapter.ICarConfig;
import com.yftech.vehicle.sdk.CarConfig;
import java.math.RoundingMode;
import java.text.DecimalFormat;
import java.util.Objects;

/* loaded from: /home/user/work/dex/classes4.dex */
public class MusicSoundEffectsDialog extends BaseMvpDialogFragment<MusicSoundEffectsPresenter> implements IMusicSoundEffectsDialogView, View.OnClickListener {
    private int EQType;
    private float[] bandCurValue;
    private CheckBox cb_3d_type;
    private float[] customVale;
    private float highLimit;
    private LinearLayout lin_mode;
    private float lowLimit;
    private boolean mIsSupportDTS;
    private float middleLimit;
    private RelativeLayout rel_selection;
    private FlowRadioGroup rg_3d_mode;
    private FlowRadioGroup rg_eq_mode;
    private FlowRadioGroup rg_sound_3d_type;
    private SeekBarView seekBar_high;
    private SeekBarView seekBar_low;
    private SeekBarView seekBar_middle;
    private int sound3dType;
    private TextView tv_high;
    private TextView tv_low;
    private TextView tv_middle;
    private LinearLayout vg_3d;
    private LinearLayout vg_eq;
    private final int limit = 10;
    private boolean isAutoSwitch = false;
    private boolean dismissOutOfView = false;
    private DecimalFormat df = new DecimalFormat("0");
    private CarSoundEffectManager.CarSoundEffectCallback callback = new CarSoundEffectManager.CarSoundEffectCallback() { // from class: com.yftech.libmusic.dialog.MusicSoundEffectsDialog.1
        public void onChangedBandValue(float[] fArr, float[] fArr2) {
            LogUtil.d("CarSoundEffectManager.onChangedBandValue:values=" + fArr.toString());
        }

        public void onChangedEQType(final int i, final float[] fArr, float[] fArr2) {
            LogUtil.d("CarSoundEffectManager.onChangedEQType:type=" + i);
            LogUtil.d("CarSoundEffectManager.onChangedEQType:high=" + fArr[8]);
            LogUtil.d("CarSoundEffectManager.onChangedEQType:middle=" + fArr[4]);
            LogUtil.d("CarSoundEffectManager.onChangedEQType:low=" + fArr[1]);
            if (MusicSoundEffectsDialog.this.isVisible() && MusicSoundEffectsDialog.this.getActivity() != null) {
                MusicSoundEffectsDialog.this.getActivity().runOnUiThread(new Runnable() { // from class: com.yftech.libmusic.dialog.MusicSoundEffectsDialog.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (i != 1) {
                            MusicSoundEffectsDialog.this.displayEQType(i);
                        } else {
                            MusicSoundEffectsDialog.this.customVale = fArr;
                        }
                        MusicSoundEffectsDialog.this.displayBandCurValue(fArr);
                    }
                });
                return;
            }
            LogUtil.e("onChangedEQType: isVisible()==" + MusicSoundEffectsDialog.this.isVisible());
        }

        public void onChangedDTSEnable(boolean z) {
            LogUtil.d("CarSoundEffectManager.onChangedDTSEnable:enable=" + z);
        }

        public void onChangedDTSType(int i) {
            LogUtil.d("CarSoundEffectManager.onChangedDTSType:type=" + i);
        }

        public void onChangedDTSSoundPosition(int i) {
            LogUtil.d("CarSoundEffectManager.onChangedDTSSoundPosition:position=" + i);
        }
    };
    private FlowRadioGroup.OnCheckedChangeListener dts_changed_listener = new FlowRadioGroup.OnCheckedChangeListener() { // from class: com.yftech.libmusic.dialog.MusicSoundEffectsDialog.3
        public void onCheckedChanged(FlowRadioGroup flowRadioGroup, int i) {
            int i2;
            if (i == R.id.rb_3d_mode_2) {
                i2 = 1;
            } else if (i == R.id.rb_3d_mode_3) {
                i2 = 2;
            } else {
                i2 = i == R.id.rb_3d_mode_4 ? 3 : 0;
            }
            MusicSoundEffectsDialog.this.getPresenter().setDTSType(i2);
        }
    };
    private FlowRadioGroup.OnCheckedChangeListener eq_changed_listener = new FlowRadioGroup.OnCheckedChangeListener() { // from class: com.yftech.libmusic.dialog.MusicSoundEffectsDialog.4
        public void onCheckedChanged(FlowRadioGroup flowRadioGroup, int i) {
            if (i == R.id.rb_eq_mode_1) {
                MusicSoundEffectsDialog.this.getPresenter().setEQType(8);
                return;
            }
            if (i == R.id.rb_eq_mode_2) {
                MusicSoundEffectsDialog.this.getPresenter().setEQType(6);
                return;
            }
            if (i == R.id.rb_eq_mode_3) {
                MusicSoundEffectsDialog.this.getPresenter().setEQType(5);
                return;
            }
            if (i == R.id.rb_eq_mode_4) {
                MusicSoundEffectsDialog.this.getPresenter().setEQType(4);
            } else if (i == R.id.rb_eq_mode_5) {
                MusicSoundEffectsDialog.this.getPresenter().setEQType(0);
            } else if (i == R.id.rb_eq_mode_6) {
                MusicSoundEffectsDialog.this.getPresenter().setEQType(1);
            }
        }
    };
    private SeekBarView.OnSeekBarCallbackListener listener_high = new SeekBarView.OnSeekBarCallbackListener() { // from class: com.yftech.libmusic.dialog.MusicSoundEffectsDialog.5
        public void onStarted() {
            AudioSettingUtil.playSystemClickSoundEffect((Context) Objects.requireNonNull(MusicSoundEffectsDialog.this.getContext()));
        }

        public void onProgress(int i) {
            if (MusicSoundEffectsDialog.this.EQType != 1) {
                MusicSoundEffectsDialog.this.isAutoSwitch = true;
                MusicSoundEffectsDialog.this.EQType = 1;
                MusicSoundEffectsDialog.this.rg_eq_mode.check(R.id.rb_eq_mode_6);
            }
            MusicSoundEffectsDialog.this.tv_high.setText(String.valueOf(i));
        }

        public void onFinished(int i) {
            if (MusicSoundEffectsDialog.this.bandCurValue != null) {
                MusicSoundEffectsDialog.this.tv_high.setText(String.valueOf(i));
                LogUtil.d("Sound Effect High Value-->EQType=" + MusicSoundEffectsDialog.this.EQType + ", isAutoSwitch=" + MusicSoundEffectsDialog.this.isAutoSwitch + ", progress=" + i);
                if (MusicSoundEffectsDialog.this.EQType != 1) {
                    MusicSoundEffectsDialog.this.isAutoSwitch = true;
                    MusicSoundEffectsDialog.this.EQType = 1;
                    MusicSoundEffectsDialog.this.rg_eq_mode.check(R.id.rb_eq_mode_6);
                }
                float f = i;
                MusicSoundEffectsDialog.this.bandCurValue[8] = ((MusicSoundEffectsDialog.this.highLimit * f) * 1.0f) / 10.0f;
                MusicSoundEffectsDialog.this.customVale = MusicSoundEffectsDialog.this.bandCurValue;
                SharedPrefsUtil.getInstance(MusicSoundEffectsDialog.this.getContext()).save("TAG_SOUND_EFFECT_HIGH_VALUE", Integer.valueOf(Math.round((f * MusicSoundEffectsDialog.this.highLimit) / 10.0f)));
                MusicSoundEffectsDialog.this.getPresenter().setBandValue(MusicSoundEffectsDialog.this.bandCurValue);
            }
        }
    };
    private SeekBarView.OnSeekBarCallbackListener listener_middle = new SeekBarView.OnSeekBarCallbackListener() { // from class: com.yftech.libmusic.dialog.MusicSoundEffectsDialog.6
        public void onStarted() {
            AudioSettingUtil.playSystemClickSoundEffect((Context) Objects.requireNonNull(MusicSoundEffectsDialog.this.getContext()));
        }

        public void onProgress(int i) {
            if (MusicSoundEffectsDialog.this.EQType != 1) {
                MusicSoundEffectsDialog.this.isAutoSwitch = true;
                MusicSoundEffectsDialog.this.EQType = 1;
                MusicSoundEffectsDialog.this.rg_eq_mode.check(R.id.rb_eq_mode_6);
            }
            MusicSoundEffectsDialog.this.tv_middle.setText(String.valueOf(i));
        }

        public void onFinished(int i) {
            if (MusicSoundEffectsDialog.this.bandCurValue != null) {
                MusicSoundEffectsDialog.this.tv_middle.setText(String.valueOf(i));
                LogUtil.d("Sound Effect Middle Value-->EQType=" + MusicSoundEffectsDialog.this.EQType + ", isAutoSwitch=" + MusicSoundEffectsDialog.this.isAutoSwitch + ", progress=" + i);
                if (MusicSoundEffectsDialog.this.EQType != 1) {
                    MusicSoundEffectsDialog.this.isAutoSwitch = true;
                    MusicSoundEffectsDialog.this.EQType = 1;
                    MusicSoundEffectsDialog.this.rg_eq_mode.check(R.id.rb_eq_mode_6);
                }
                float f = i;
                MusicSoundEffectsDialog.this.bandCurValue[4] = ((MusicSoundEffectsDialog.this.middleLimit * f) * 1.0f) / 10.0f;
                MusicSoundEffectsDialog.this.customVale = MusicSoundEffectsDialog.this.bandCurValue;
                SharedPrefsUtil.getInstance(MusicSoundEffectsDialog.this.getContext()).save("TAG_SOUND_EFFECT_MIDDLE_VALUE", Integer.valueOf(Math.round((f * MusicSoundEffectsDialog.this.middleLimit) / 10.0f)));
                MusicSoundEffectsDialog.this.getPresenter().setBandValue(MusicSoundEffectsDialog.this.bandCurValue);
            }
        }
    };
    private SeekBarView.OnSeekBarCallbackListener listener_low = new SeekBarView.OnSeekBarCallbackListener() { // from class: com.yftech.libmusic.dialog.MusicSoundEffectsDialog.7
        public void onStarted() {
            AudioSettingUtil.playSystemClickSoundEffect((Context) Objects.requireNonNull(MusicSoundEffectsDialog.this.getContext()));
        }

        public void onProgress(int i) {
            if (MusicSoundEffectsDialog.this.EQType != 1) {
                MusicSoundEffectsDialog.this.isAutoSwitch = true;
                MusicSoundEffectsDialog.this.EQType = 1;
                MusicSoundEffectsDialog.this.rg_eq_mode.check(R.id.rb_eq_mode_6);
            }
            MusicSoundEffectsDialog.this.tv_low.setText(String.valueOf(i));
        }

        public void onFinished(int i) {
            if (MusicSoundEffectsDialog.this.bandCurValue != null) {
                MusicSoundEffectsDialog.this.tv_low.setText(String.valueOf(i));
                LogUtil.d("Sound Effect Low Value-->EQType=" + MusicSoundEffectsDialog.this.EQType + ", isAutoSwitch=" + MusicSoundEffectsDialog.this.isAutoSwitch + ", progress=" + i);
                if (MusicSoundEffectsDialog.this.EQType != 1) {
                    MusicSoundEffectsDialog.this.isAutoSwitch = true;
                    MusicSoundEffectsDialog.this.EQType = 1;
                    MusicSoundEffectsDialog.this.rg_eq_mode.check(R.id.rb_eq_mode_6);
                }
                float f = i;
                MusicSoundEffectsDialog.this.bandCurValue[1] = ((MusicSoundEffectsDialog.this.lowLimit * f) * 1.0f) / 10.0f;
                MusicSoundEffectsDialog.this.customVale = MusicSoundEffectsDialog.this.bandCurValue;
                SharedPrefsUtil.getInstance(MusicSoundEffectsDialog.this.getContext()).save("TAG_SOUND_EFFECT_LOW_VALUE", Integer.valueOf(Math.round((f * MusicSoundEffectsDialog.this.lowLimit) / 10.0f)));
                MusicSoundEffectsDialog.this.getPresenter().setBandValue(MusicSoundEffectsDialog.this.bandCurValue);
            }
        }
    };

    @Override // com.yftech.libmusic.view.IMusicSoundEffectsDialogView
    public void displayBandMinValue(float[] fArr) {
    }

    @Override // com.yftech.libmusic.view.IMusicSoundEffectsDialogView
    public void displayBandValueSetting(boolean z) {
    }

    @Override // com.yftech.libmusic.view.IMusicSoundEffectsDialogView
    public void displayDTSTypeSetting(boolean z) {
    }

    @Override // com.yftech.libmusic.view.IMusicSoundEffectsDialogView
    public void displayEQTypeSetting(boolean z) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.yftech.libmvpmodule.mvp.BaseMvpDialogFragment
    public MusicSoundEffectsPresenter createPresenter() {
        return new MusicSoundEffectsPresenter(getActivity());
    }

    public static MusicSoundEffectsDialog newInstance() {
        MusicSoundEffectsDialog musicSoundEffectsDialog = new MusicSoundEffectsDialog();
        musicSoundEffectsDialog.setArguments(new Bundle());
        return musicSoundEffectsDialog;
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        getArguments();
        ICarConfig.LoudspeakerNumber loudspeakerNumber = CarConfig.getLoudspeakerNumber();
        LogUtil.i("LoudspeakerNumber = " + loudspeakerNumber);
        if (loudspeakerNumber != ICarConfig.LoudspeakerNumber.TWO && loudspeakerNumber != ICarConfig.LoudspeakerNumber.__UNKNOWN__) {
            this.mIsSupportDTS = true;
        }
        this.df.setRoundingMode(RoundingMode.DOWN);
        CarSoundEffectManager.getInstance().registerCarSoundEffectCallback(this.callback, (Handler) null);
    }

    @Override // com.yftech.libmvpmodule.mvp.BaseDialogFragment
    public void onDestroy() {
        super.onDestroy();
        LogUtil.d("onDestroy");
        CarSoundEffectManager.getInstance().unregisterCarSoundEffectCallback(this.callback);
    }

    @Override // com.yftech.libmvpmodule.mvp.BaseMvpDialogFragment
    public void onDestroyView() {
        super.onDestroyView();
        LogUtil.d("onDestroyView");
    }

    public void onStart() {
        Window window;
        super.onStart();
        Dialog dialog = getDialog();
        if (dialog == null || (window = dialog.getWindow()) == null) {
            return;
        }
        window.setBackgroundDrawableResource(android.R.color.transparent);
        WindowManager.LayoutParams attributes = window.getAttributes();
        attributes.dimAmount = 0.95f;
        attributes.windowAnimations = R.style.DialogLeftAnimation;
        attributes.width = 978;
        attributes.height = 650;
        attributes.gravity = 49;
        attributes.y = 30;
        attributes.x = 20;
        window.setAttributes(attributes);
    }

    public void onCancel(@NonNull DialogInterface dialogInterface) {
        super.onCancel(dialogInterface);
        LogUtil.d("onCancel");
        this.dismissOutOfView = true;
    }

    public void onDismiss(@NonNull DialogInterface dialogInterface) {
        super.onDismiss(dialogInterface);
        LogUtil.d("onDismiss");
        this.dismissOutOfView = false;
    }

    @Override // com.yftech.libmvpmodule.mvp.BaseMvpDialogFragment
    protected View onBindView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.dialog_music_sound_effects, viewGroup, false);
    }

    @Override // com.yftech.libmvpmodule.mvp.BaseMvpDialogFragment
    protected void initView(View view) {
        ((ImageView) view.findViewById(R.id.iv_close)).setOnClickListener(this);
        this.rel_selection = (RelativeLayout) view.findViewById(R.id.rel_selection);
        this.cb_3d_type = (CheckBox) view.findViewById(R.id.cb_3d_type);
        this.cb_3d_type.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.yftech.libmusic.dialog.MusicSoundEffectsDialog.2
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                MusicSoundEffectsDialog.this.rel_selection.setVisibility(z ? 0 : 8);
            }
        });
        this.rg_sound_3d_type = view.findViewById(R.id.rg_sound_3d_type);
        this.lin_mode = (LinearLayout) view.findViewById(R.id.lin_mode);
        this.rg_3d_mode = view.findViewById(R.id.rg_3d_mode);
        this.vg_3d = (LinearLayout) view.findViewById(R.id.vg_3d);
        view.findViewById(R.id.tv_finish).setOnClickListener(this);
        view.findViewById(R.id.rb_eq_mode_6).setOnClickListener(this);
        this.vg_eq = (LinearLayout) view.findViewById(R.id.vg_eq);
        this.rg_eq_mode = view.findViewById(R.id.rg_eq_mode);
        this.seekBar_high = view.findViewById(R.id.seekBar_high);
        this.seekBar_middle = view.findViewById(R.id.seekBar_middle);
        this.seekBar_low = view.findViewById(R.id.seekBar_low);
        this.tv_high = (TextView) view.findViewById(R.id.tv_high);
        this.tv_middle = (TextView) view.findViewById(R.id.tv_middle);
        this.tv_low = (TextView) view.findViewById(R.id.tv_low);
        this.seekBar_high.setMaxProgress(10);
        this.seekBar_middle.setMaxProgress(10);
        this.seekBar_low.setMaxProgress(10);
        this.seekBar_high.setOnSeekBarCallbackListener(this.listener_high);
        this.seekBar_middle.setOnSeekBarCallbackListener(this.listener_middle);
        this.seekBar_low.setOnSeekBarCallbackListener(this.listener_low);
        if (!this.mIsSupportDTS) {
            this.vg_3d.setVisibility(8);
        }
        initData();
    }

    private void initData() {
        if (!CarSoundEffectManager.getInstance().isDTSEnable() || !this.mIsSupportDTS) {
            this.sound3dType = 0;
            getPresenter().getEQType();
            getPresenter().getBandMaxValue();
            this.vg_eq.setVisibility(0);
            this.lin_mode.setVisibility(8);
        } else {
            this.vg_eq.setVisibility(8);
            if (CarSoundEffectManager.getInstance().getDTSSoundPosition() == 0) {
                this.sound3dType = 1;
            } else {
                this.sound3dType = 2;
            }
            int dTSType = CarSoundEffectManager.getInstance().getDTSType();
            int i = -1;
            if (dTSType == -1) {
                this.lin_mode.setVisibility(8);
            } else {
                switch (dTSType) {
                    case 0:
                        i = R.id.rb_3d_mode_1;
                        break;
                    case 1:
                        i = R.id.rb_3d_mode_2;
                        break;
                    case 2:
                        i = R.id.rb_3d_mode_3;
                        break;
                    case 3:
                        i = R.id.rb_3d_mode_4;
                        break;
                }
                this.rg_3d_mode.setOnCheckedChangeListener((FlowRadioGroup.OnCheckedChangeListener) null);
                this.rg_3d_mode.check(i);
                this.rg_3d_mode.setOnCheckedChangeListener(this.dts_changed_listener);
                this.lin_mode.setVisibility(0);
            }
        }
        switch (this.sound3dType) {
            case 0:
                this.cb_3d_type.setText(R.string.music_sound_effects_dialog_3d_sound_effects_mode_4);
                this.rg_sound_3d_type.check(R.id.rb_sound_3d_type_2);
                break;
            case 1:
                this.cb_3d_type.setText(R.string.music_sound_effects_dialog_3d_sound_effects_mode_1);
                this.rg_sound_3d_type.check(R.id.rb_sound_3d_type_0);
                break;
            case 2:
                this.cb_3d_type.setText(R.string.music_sound_effects_dialog_3d_sound_effects_mode_2);
                this.rg_sound_3d_type.check(R.id.rb_sound_3d_type_1);
                break;
        }
        this.customVale = CarSoundEffectManager.getInstance().getBandCurValue();
        int i2 = SharedPrefsUtil.getInstance(getContext()).getInt("TAG_SOUND_EFFECT_HIGH_VALUE", 0);
        int i3 = SharedPrefsUtil.getInstance(getContext()).getInt("TAG_SOUND_EFFECT_MIDDLE_VALUE", 0);
        int i4 = SharedPrefsUtil.getInstance(getContext()).getInt("TAG_SOUND_EFFECT_LOW_VALUE", 0);
        LogUtil.i("EQ H:" + i2 + "   M:" + i3 + "    L:" + i4);
        this.customVale[8] = (float) i2;
        this.customVale[4] = (float) i3;
        this.customVale[4] = (float) i4;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() == R.id.iv_close) {
            this.dismissOutOfView = false;
            dismiss();
            return;
        }
        if (view.getId() == R.id.tv_finish) {
            if ((this.sound3dType == 0 && this.rg_sound_3d_type.getCheckedRadioButtonId() == R.id.rb_sound_3d_type_2) || ((this.sound3dType == 1 && this.rg_sound_3d_type.getCheckedRadioButtonId() == R.id.rb_sound_3d_type_0) || (this.sound3dType == 2 && this.rg_sound_3d_type.getCheckedRadioButtonId() == R.id.rb_sound_3d_type_1))) {
                this.cb_3d_type.setChecked(false);
                return;
            }
            if (this.sound3dType == 0 && this.rg_sound_3d_type.getCheckedRadioButtonId() != R.id.rb_sound_3d_type_2) {
                CarSoundEffectManager.getInstance().setDTSEnable(true);
                if (this.rg_sound_3d_type.getCheckedRadioButtonId() == R.id.rb_sound_3d_type_0) {
                    CarSoundEffectManager.getInstance().setDTSSoundPosition(0);
                    this.sound3dType = 1;
                } else {
                    CarSoundEffectManager.getInstance().setDTSSoundPosition(2);
                    this.sound3dType = 2;
                }
            } else if (this.sound3dType != 0 && this.rg_sound_3d_type.getCheckedRadioButtonId() == R.id.rb_sound_3d_type_2) {
                CarSoundEffectManager.getInstance().setDTSEnable(false);
                this.sound3dType = 0;
            } else if (this.rg_sound_3d_type.getCheckedRadioButtonId() == R.id.rb_sound_3d_type_0) {
                CarSoundEffectManager.getInstance().setDTSSoundPosition(0);
                this.sound3dType = 1;
            } else {
                CarSoundEffectManager.getInstance().setDTSSoundPosition(2);
                this.sound3dType = 2;
            }
            this.cb_3d_type.setChecked(false);
            initData();
            return;
        }
        if (view.getId() == R.id.rb_eq_mode_6) {
            displayBandCurValue(this.customVale);
        }
    }

    @Override // com.yftech.libmusic.view.IMusicSoundEffectsDialogView
    public void displayEQType(int i) {
        int i2;
        this.EQType = i;
        switch (i) {
            case 0:
                i2 = R.id.rb_eq_mode_5;
                break;
            case 1:
                i2 = R.id.rb_eq_mode_6;
                break;
            case 2:
            case 3:
            case 7:
            default:
                i2 = -1;
                break;
            case 4:
                i2 = R.id.rb_eq_mode_4;
                break;
            case 5:
                i2 = R.id.rb_eq_mode_3;
                break;
            case 6:
                i2 = R.id.rb_eq_mode_2;
                break;
            case 8:
                i2 = R.id.rb_eq_mode_1;
                break;
        }
        this.rg_eq_mode.setOnCheckedChangeListener((FlowRadioGroup.OnCheckedChangeListener) null);
        this.rg_eq_mode.check(i2);
        this.rg_eq_mode.setOnCheckedChangeListener(this.eq_changed_listener);
    }

    @Override // com.yftech.libmusic.view.IMusicSoundEffectsDialogView
    public void displayBandCurValue(float[] fArr) {
        this.bandCurValue = fArr;
        this.seekBar_high.setProgress(this.highLimit == 0.0f ? 0 : ValueUtil.parseInt(this.df.format((fArr[8] / this.highLimit) * 10.0f)));
        this.seekBar_middle.setProgress(this.middleLimit == 0.0f ? 0 : ValueUtil.parseInt(this.df.format((fArr[4] / this.middleLimit) * 10.0f)));
        this.seekBar_low.setProgress(this.lowLimit != 0.0f ? ValueUtil.parseInt(this.df.format((fArr[1] / this.lowLimit) * 10.0f)) : 0);
        this.tv_high.setText(String.valueOf((int) ((fArr[8] / this.highLimit) * 10.0f)));
        this.tv_middle.setText(String.valueOf((int) ((fArr[4] / this.middleLimit) * 10.0f)));
        this.tv_low.setText(String.valueOf((int) ((fArr[1] / this.lowLimit) * 10.0f)));
    }

    @Override // com.yftech.libmusic.view.IMusicSoundEffectsDialogView
    public void displayBandMaxValue(float[] fArr) {
        if (fArr != null) {
            this.highLimit = fArr[8];
            this.middleLimit = fArr[4];
            this.lowLimit = fArr[1];
        }
        getPresenter().getBandCurValue();
    }

    public void dismissCustom() {
        this.dismissOutOfView = false;
        dismissAllowingStateLoss();
    }
}
