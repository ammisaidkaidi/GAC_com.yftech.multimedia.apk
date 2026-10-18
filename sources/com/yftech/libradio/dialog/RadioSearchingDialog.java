package com.yftech.libradio.dialog;

import android.app.Dialog;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.Nullable;
import com.media.common.util.LogUtil;
import com.yftech.car.bluetooth.CarBluetoothManager;
import com.yftech.car.bluetooth.callback.CarBluetoothPhoneCallback;
import com.yftech.car.bluetooth.model.PhoneCall;
import com.yftech.car.media.radio.CarRadioManager;
import com.yftech.car.media.radio.entity.DataOfRadio;
import com.yftech.car.phonelink.CarPhoneLinkManager;
import com.yftech.libmvpmodule.mvp.BaseMvpDialogFragment;
import com.yftech.libradio.R;
import com.yftech.libradio.RadioMainFragment;
import com.yftech.libradio.presenter.RadioSearchingPresenter;
import com.yftech.libradio.view.IRadioSearchingDialogView;
import com.yftech.vehicle.internal.adapter.ICarSettings;
import java.util.List;

/* loaded from: /home/user/work/dex/classes4.dex */
public class RadioSearchingDialog extends BaseMvpDialogFragment<RadioSearchingPresenter> implements IRadioSearchingDialogView, View.OnClickListener {
    private static final String ACTION_CARPLAY_EVENT_SHOW_UI = "com.autochips.carplay.event.show_ui";
    private static final String ARG_PARAM1 = "content";
    private static final String ARG_PARAM2 = "band";
    private static final String KEY_CARPLAY_EVENT_SHOW_UI = "ui_show";
    private int band;
    private String content;
    private ImageView iv_tag;
    private CarplayShowUIReceiver mCarplayShowUIReceiver;
    private IntentFilter mIntentFilter;
    private ProgressBar pb_loading;
    private RelativeLayout rl_result;
    private TextView tv_content;
    private TextView tv_control;
    private boolean isScanResult = false;
    private final CarRadioManager.CarRadioControlCallback mCarRadioControlCallback = new CarRadioManager.CarRadioControlCallback() { // from class: com.yftech.libradio.dialog.RadioSearchingDialog.2
        public void onAudioFocusChange(int i) {
        }

        public void onFavorChange(int i, DataOfRadio dataOfRadio) {
        }

        public void onFreqChanage(int i, DataOfRadio dataOfRadio, DataOfRadio dataOfRadio2) {
        }

        public void onFreqSignal(int i, DataOfRadio dataOfRadio, int i2) {
        }

        public void onPlayPause(boolean z) {
        }

        public void onSeekStatusChange(int i, int i2, int i3) {
            LogUtil.d("onSeekStatusChange() scanType:" + i + " status:" + i2 + " operation:" + i3);
            RadioSearchingDialog.this.isScanResult = true;
            if (i == 3 && i2 == 0 && i3 == 1) {
                int band = CarRadioManager.getInstance().getBand();
                List searchList = CarRadioManager.getInstance().getSearchList(band);
                if (searchList == null || searchList.isEmpty()) {
                    LogUtil.d("onSeekStatusChange() band:" + band + ", list is empty");
                    RadioSearchingDialog.this.iv_tag.setVisibility(0);
                    RadioSearchingDialog.this.rl_result.setVisibility(0);
                    RadioSearchingDialog.this.tv_content.setText(R.string.radio_channel_search_dialog_search_fail_tips);
                    RadioSearchingDialog.this.pb_loading.setVisibility(4);
                    RadioSearchingDialog.this.tv_control.setVisibility(4);
                    return;
                }
                LogUtil.d("onSeekStatusChange() band:" + band + " list:" + searchList.size());
                if (RadioSearchingDialog.this.isAdded()) {
                    RadioSearchingDialog.this.dismissAllowingStateLoss();
                }
            }
        }
    };
    private CarBluetoothPhoneCallback bluetoothPhoneCallback = new CarBluetoothPhoneCallback() { // from class: com.yftech.libradio.dialog.RadioSearchingDialog.3
        public void onBluetoothPhoneCallStateChanged(List<PhoneCall> list) {
            StringBuilder sb = new StringBuilder();
            sb.append("radio onBluetoothPhoneCallStateChanged:isEmpty=");
            sb.append(list == null || list.isEmpty());
            LogUtil.d(sb.toString());
            if (list == null || list.isEmpty()) {
                return;
            }
            PhoneCall phoneCall = list.get(0);
            LogUtil.d("radio onBluetoothPhoneCallStateChanged:state=" + phoneCall.getCallState());
            if (phoneCall.getCallState() == 2 || phoneCall.getCallState() == 1) {
                RadioSearchingDialog.this.dismiss();
            }
        }
    };
    private BroadcastReceiver receiver = new BroadcastReceiver() { // from class: com.yftech.libradio.dialog.RadioSearchingDialog.4
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if ("com.yftech.avmservice.SHOW_STATE".equals(intent.getAction())) {
                boolean booleanExtra = intent.getBooleanExtra("isShow", false);
                LogUtil.d("com.yftech.avmservice.SHOW_STATE:isShow=" + booleanExtra);
                if (booleanExtra) {
                    RadioSearchingDialog.this.dismiss();
                }
            }
        }
    };
    private CarPhoneLinkManager.CarPhoneLinkCallback mCarPhoneLinkCallback = new CarPhoneLinkManager.CarPhoneLinkCallback() { // from class: com.yftech.libradio.dialog.RadioSearchingDialog.5
        public void onCallStatusChanged(int i) {
            super.onCallStatusChanged(i);
            LogUtil.d("onCallStatusChanged() status:" + i);
            if (i == 1 || i == 2) {
                RadioSearchingDialog.this.dismiss();
            }
        }

        public void onConnectedStatusChanged(String str) {
            super.onConnectedStatusChanged(str);
            LogUtil.d("onConnectedStatusChanged() status:" + str);
        }
    };

    @Override // com.yftech.libradio.view.IRadioSearchingDialogView
    public void displaySearchResult(boolean z) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.yftech.libmvpmodule.mvp.BaseMvpDialogFragment
    public RadioSearchingPresenter createPresenter() {
        return new RadioSearchingPresenter(getActivity());
    }

    public static RadioSearchingDialog newInstance(String str, int i) {
        RadioSearchingDialog radioSearchingDialog = new RadioSearchingDialog();
        Bundle bundle = new Bundle();
        bundle.putString(ARG_PARAM1, str);
        bundle.putInt("band", i);
        radioSearchingDialog.setArguments(bundle);
        return radioSearchingDialog;
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (getArguments() != null) {
            this.content = getArguments().getString(ARG_PARAM1);
            this.band = getArguments().getInt("band");
        }
        LogUtil.d("onCreate() content:" + this.content + " band:" + this.band);
        CarRadioManager.registerRadioControlCallback(this.mCarRadioControlCallback);
        this.mIntentFilter = new IntentFilter();
        this.mIntentFilter.addAction(ACTION_CARPLAY_EVENT_SHOW_UI);
        this.mIntentFilter.addAction("com.yftech.avmservice.SHOW_STATE");
        this.mIntentFilter.addAction("com.yftech.hicar.show");
        this.mCarplayShowUIReceiver = new CarplayShowUIReceiver();
        CarBluetoothManager.getInstance().registerBluetoothPhoneCallback(this.bluetoothPhoneCallback, (Handler) null);
        CarPhoneLinkManager.getInstance().registerCarPhoneLinkCallback(this.mCarPhoneLinkCallback, new Handler());
        getContext().registerReceiver(this.mCarplayShowUIReceiver, this.mIntentFilter);
        getContext().registerReceiver(this.receiver, this.mIntentFilter);
    }

    @Override // com.yftech.libmvpmodule.mvp.BaseDialogFragment
    public void onDestroy() {
        super.onDestroy();
        LogUtil.d("onDestroy()");
        if (CarRadioManager.getInstance().isScanStatus()) {
            CarRadioManager.getInstance().stop();
        }
        CarRadioManager.unregisterRadioControlCallback(this.mCarRadioControlCallback);
        CarBluetoothManager.getInstance().unregisterBluetoothPhoneCallback(this.bluetoothPhoneCallback);
        CarPhoneLinkManager.getInstance().unregisterCarPhoneLinkCallback(this.mCarPhoneLinkCallback);
        getContext().unregisterReceiver(this.mCarplayShowUIReceiver);
        getContext().unregisterReceiver(this.receiver);
    }

    public void onStart() {
        super.onStart();
        LogUtil.d("onStart()");
        Dialog dialog = getDialog();
        if (dialog != null) {
            dialog.setCanceledOnTouchOutside(false);
            Window window = dialog.getWindow();
            if (window != null) {
                window.setBackgroundDrawableResource(android.R.color.transparent);
                WindowManager.LayoutParams attributes = window.getAttributes();
                attributes.windowAnimations = R.style.DialogFadeAnimation;
                attributes.width = 858;
                attributes.height = ICarSettings.POWER_KEEP_REQVD_STATE;
                attributes.gravity = 17;
                window.setAttributes(attributes);
            }
        }
    }

    public void onStop() {
        super.onStop();
        LogUtil.d("onStop()");
    }

    public void onPause() {
        super.onPause();
        LogUtil.d("onPause()");
        dismiss();
    }

    @Override // com.yftech.libmvpmodule.mvp.BaseMvpDialogFragment
    protected View onBindView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.dialog_radio_searching, viewGroup, false);
    }

    @Override // com.yftech.libmvpmodule.mvp.BaseMvpDialogFragment
    protected void initView(View view) {
        this.pb_loading = (ProgressBar) view.findViewById(R.id.pb_loading);
        this.tv_control = (TextView) view.findViewById(R.id.tv_control);
        this.tv_control.setOnClickListener(this);
        this.iv_tag = (ImageView) view.findViewById(R.id.iv_tag);
        this.rl_result = (RelativeLayout) view.findViewById(R.id.rl_result);
        view.findViewById(R.id.tv_retry).setOnClickListener(this);
        view.findViewById(R.id.tv_cancel).setOnClickListener(this);
        this.tv_content = (TextView) view.findViewById(R.id.tv_content);
        this.tv_content.setText(this.content);
        this.isScanResult = false;
        getPresenter().scanSave(this.band);
        if (RadioMainFragment.getRadioAutoSearch()) {
            RadioMainFragment.setRadioAutoSearch(false);
            new Handler().postDelayed(new Runnable() { // from class: com.yftech.libradio.dialog.RadioSearchingDialog.1
                @Override // java.lang.Runnable
                public void run() {
                    LogUtil.d("scan callback status:" + RadioSearchingDialog.this.isScanResult);
                    if (RadioSearchingDialog.this.isScanResult) {
                        return;
                    }
                    RadioSearchingDialog.this.getPresenter().scanSave(RadioSearchingDialog.this.band);
                }
            }, 600L);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() == R.id.tv_retry) {
            this.pb_loading.setVisibility(0);
            this.tv_control.setVisibility(0);
            this.tv_content.setText(this.content);
            this.iv_tag.setVisibility(8);
            this.rl_result.setVisibility(8);
            getPresenter().scanSave(this.band);
            return;
        }
        if (view.getId() == R.id.tv_cancel) {
            LogUtil.d("tv_cancel dismiss");
            dismiss();
        } else if (view.getId() == R.id.tv_control) {
            boolean isScanStatus = CarRadioManager.getInstance().isScanStatus();
            LogUtil.d("tv_control isScanStatus:" + isScanStatus);
            if (isScanStatus) {
                CarRadioManager.getInstance().stop();
            }
            dismiss();
        }
    }

    public void dismiss() {
        super.dismiss();
        CarRadioManager.getInstance().stop();
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    private class CarplayShowUIReceiver extends BroadcastReceiver {
        private CarplayShowUIReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            if (RadioSearchingDialog.ACTION_CARPLAY_EVENT_SHOW_UI.equals(action)) {
                boolean booleanExtra = intent.getBooleanExtra(RadioSearchingDialog.KEY_CARPLAY_EVENT_SHOW_UI, true);
                LogUtil.i("onReceive() ACTION_CARPLAY_EVENT_SHOW_UI isShow:" + booleanExtra);
                if (booleanExtra) {
                    RadioSearchingDialog.this.dismiss();
                    return;
                }
                return;
            }
            if ("com.yftech.hicar.show".equals(action)) {
                boolean booleanExtra2 = intent.getBooleanExtra("isShow", false);
                LogUtil.i("onReceive() ACTION_HICAR_SHOW_STATE isShow:" + booleanExtra2);
                if (booleanExtra2) {
                    RadioSearchingDialog.this.dismiss();
                }
            }
        }
    }
}
