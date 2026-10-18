package com.yftech.libradio.dialog;

import android.R;
import android.app.Dialog;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
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
import com.yftech.car.media.radio.dab.CarDabRadioManager;
import com.yftech.car.media.radio.dab.entity.DabEnsemble;
import com.yftech.car.media.radio.dab.entity.DabScanStatus;
import com.yftech.car.phonelink.CarPhoneLinkManager;
import com.yftech.libmvpmodule.mvp.BaseMvpDialogFragment;
import com.yftech.libradio.Utils;
import com.yftech.libradio.presenter.DabSearchingPresenter;
import com.yftech.libradio.view.IDabSearchingDialogView;
import com.yftech.vehicle.internal.adapter.ICarSettings;
import java.util.ArrayList;
import java.util.List;

/* loaded from: /home/user/work/dex/classes4.dex */
public class DabSearchingDialog extends BaseMvpDialogFragment<DabSearchingPresenter> implements IDabSearchingDialogView, View.OnClickListener {
    private static final String ACTION_CARPLAY_EVENT_SHOW_UI = "com.autochips.carplay.event.show_ui";
    private static final String ARG_PARAM1 = "content";
    private static final String KEY_CARPLAY_EVENT_SHOW_UI = "ui_show";
    private static final int MSG_WHAT_HANDLE_SCAN_RESULT = 30231;
    private static final int TRY_SCAN_SAVE_COUNT_MAX = 2;
    private String content;
    private int ensembleListChangedType;
    private int handleResultryCount;
    private boolean isEnsembleListChanged;
    private ImageView iv_tag;
    private long lastTimeMillis;
    private CarplayShowUIReceiver mCarplayShowUIReceiver;
    private IntentFilter mIntentFilter;
    private int mTryScanSaveCount;
    private ProgressBar pb_loading;
    private RelativeLayout rl_result;
    private TextView tv_content;
    private TextView tv_control;
    private Handler mHandler = new Handler() { // from class: com.yftech.libradio.dialog.DabSearchingDialog.1
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (message.what == DabSearchingDialog.MSG_WHAT_HANDLE_SCAN_RESULT) {
                DabSearchingDialog.this.handleScanResult();
            }
        }
    };
    private Runnable mTryScanSaveRunnable = new Runnable() { // from class: com.yftech.libradio.dialog.DabSearchingDialog.2
        @Override // java.lang.Runnable
        public void run() {
            boolean isScanStatus = DabSearchingDialog.this.isScanStatus();
            LogUtil.i("TryScanSaveRunnable() isScanStatus:" + isScanStatus + " tryScanSaveCount:" + DabSearchingDialog.this.mTryScanSaveCount);
            if (isScanStatus || DabSearchingDialog.this.mTryScanSaveCount >= 2) {
                return;
            }
            DabSearchingDialog.access$208(DabSearchingDialog.this);
            LogUtil.i("TryScanSaveRunnable() scanSave()");
            DabSearchingDialog.this.startScan();
            DabSearchingDialog.this.mHandler.postDelayed(DabSearchingDialog.this.mTryScanSaveRunnable, 1000L);
        }
    };
    private final CarDabRadioManager.CarDabRadioControlCallback mCarDabRadioControlCallback = new CarDabRadioManager.CarDabRadioControlCallback() { // from class: com.yftech.libradio.dialog.DabSearchingDialog.3
        public void onScanStatusChange(DabScanStatus dabScanStatus, DabScanStatus dabScanStatus2) {
            super.onScanStatusChange(dabScanStatus, dabScanStatus2);
            if (dabScanStatus == null || dabScanStatus.isRuning()) {
                return;
            }
            DabSearchingDialog.this.handleResultryCount = 6;
            DabSearchingDialog.this.mHandler.removeMessages(DabSearchingDialog.MSG_WHAT_HANDLE_SCAN_RESULT);
            DabSearchingDialog.this.mHandler.sendEmptyMessageDelayed(DabSearchingDialog.MSG_WHAT_HANDLE_SCAN_RESULT, 300L);
            LogUtil.d("onScanStatusChange newDabScan: " + dabScanStatus + ",oldDabScan: " + dabScanStatus2);
        }

        public void onEnsembleListChange(int i) {
            super.onEnsembleListChange(i);
            LogUtil.d("onEnsembleListChange type: " + i);
            DabSearchingDialog.this.isEnsembleListChanged = true;
            DabSearchingDialog.this.ensembleListChangedType = i;
        }
    };
    private CarBluetoothPhoneCallback bluetoothPhoneCallback = new CarBluetoothPhoneCallback() { // from class: com.yftech.libradio.dialog.DabSearchingDialog.4
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
                DabSearchingDialog.this.getPresenter().stopScan();
                DabSearchingDialog.this.dismiss();
            }
        }
    };
    private BroadcastReceiver receiver = new BroadcastReceiver() { // from class: com.yftech.libradio.dialog.DabSearchingDialog.5
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if ("com.yftech.avmservice.SHOW_STATE".equals(intent.getAction())) {
                boolean booleanExtra = intent.getBooleanExtra("isShow", false);
                LogUtil.d("com.yftech.avmservice.SHOW_STATE:isShow=" + booleanExtra);
                if (booleanExtra) {
                    DabSearchingDialog.this.getPresenter().stopScan();
                    DabSearchingDialog.this.dismiss();
                }
            }
        }
    };
    private CarPhoneLinkManager.CarPhoneLinkCallback mCarPhoneLinkCallback = new CarPhoneLinkManager.CarPhoneLinkCallback() { // from class: com.yftech.libradio.dialog.DabSearchingDialog.6
        public void onCallStatusChanged(int i) {
            super.onCallStatusChanged(i);
            LogUtil.d("onCallStatusChanged() status:" + i);
            if (i == 1 || i == 2) {
                DabSearchingDialog.this.getPresenter().stopScan();
                DabSearchingDialog.this.dismiss();
            }
        }

        public void onConnectedStatusChanged(String str) {
            super.onConnectedStatusChanged(str);
            LogUtil.d("onConnectedStatusChanged() status:" + str);
        }
    };

    @Override // com.yftech.libradio.view.IDabSearchingDialogView
    public void displaySearchResult(boolean z) {
    }

    static /* synthetic */ int access$208(DabSearchingDialog dabSearchingDialog) {
        int i = dabSearchingDialog.mTryScanSaveCount;
        dabSearchingDialog.mTryScanSaveCount = i + 1;
        return i;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.yftech.libmvpmodule.mvp.BaseMvpDialogFragment
    public DabSearchingPresenter createPresenter() {
        return new DabSearchingPresenter(getActivity());
    }

    public static DabSearchingDialog newInstance(String str) {
        DabSearchingDialog dabSearchingDialog = new DabSearchingDialog();
        Bundle bundle = new Bundle();
        bundle.putString(ARG_PARAM1, str);
        dabSearchingDialog.setArguments(bundle);
        return dabSearchingDialog;
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (getArguments() != null) {
            this.content = getArguments().getString(ARG_PARAM1);
        }
        LogUtil.d("onCreate() content:" + this.content);
        CarDabRadioManager.getInstance().registerRadioControlCallback(this.mCarDabRadioControlCallback);
        this.mIntentFilter = new IntentFilter();
        this.mIntentFilter.addAction(ACTION_CARPLAY_EVENT_SHOW_UI);
        this.mIntentFilter.addAction("com.yftech.avmservice.SHOW_STATE");
        this.mIntentFilter.addAction("com.yftech.hicar.show");
        this.mCarplayShowUIReceiver = new CarplayShowUIReceiver();
        CarBluetoothManager.getInstance().registerBluetoothPhoneCallback(this.bluetoothPhoneCallback, (Handler) null);
        CarPhoneLinkManager.getInstance().registerCarPhoneLinkCallback(this.mCarPhoneLinkCallback, this.mHandler);
        getContext().registerReceiver(this.mCarplayShowUIReceiver, this.mIntentFilter);
        getContext().registerReceiver(this.receiver, this.mIntentFilter);
    }

    @Override // com.yftech.libmvpmodule.mvp.BaseDialogFragment
    public void onDestroy() {
        super.onDestroy();
        LogUtil.d("onDestroy()");
        CarDabRadioManager.getInstance().unregisterRadioControlCallback(this.mCarDabRadioControlCallback);
        this.mHandler.removeCallbacks(this.mTryScanSaveRunnable);
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
            dialog.setCancelable(false);
            Window window = dialog.getWindow();
            if (window != null) {
                window.setBackgroundDrawableResource(R.color.transparent);
                WindowManager.LayoutParams attributes = window.getAttributes();
                attributes.windowAnimations = com.yftech.libradio.R.style.DialogFadeAnimation;
                attributes.width = 858;
                attributes.height = ICarSettings.POWER_KEEP_REQVD_STATE;
                attributes.gravity = 17;
                window.setAttributes(attributes);
            }
        }
    }

    public void onStop() {
        super.onStop();
    }

    public void onPause() {
        super.onPause();
        LogUtil.d("onPause()");
        dismiss();
    }

    @Override // com.yftech.libmvpmodule.mvp.BaseMvpDialogFragment
    protected View onBindView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(com.yftech.libradio.R.layout.dialog_dab_searching, viewGroup, false);
    }

    @Override // com.yftech.libmvpmodule.mvp.BaseMvpDialogFragment
    protected void initView(View view) {
        this.pb_loading = (ProgressBar) view.findViewById(com.yftech.libradio.R.id.pb_loading);
        this.tv_control = (TextView) view.findViewById(com.yftech.libradio.R.id.tv_control);
        this.tv_control.setOnClickListener(this);
        this.iv_tag = (ImageView) view.findViewById(com.yftech.libradio.R.id.iv_tag);
        this.rl_result = (RelativeLayout) view.findViewById(com.yftech.libradio.R.id.rl_result);
        view.findViewById(com.yftech.libradio.R.id.tv_retry).setOnClickListener(this);
        view.findViewById(com.yftech.libradio.R.id.tv_cancel).setOnClickListener(this);
        this.tv_content = (TextView) view.findViewById(com.yftech.libradio.R.id.tv_content);
        this.tv_content.setText(this.content);
        startScan();
        this.lastTimeMillis = System.currentTimeMillis();
        this.mTryScanSaveCount = 0;
        this.mHandler.postDelayed(this.mTryScanSaveRunnable, 1000L);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() == com.yftech.libradio.R.id.tv_retry) {
            this.pb_loading.setVisibility(0);
            this.tv_control.setVisibility(0);
            this.tv_content.setText(this.content);
            this.iv_tag.setVisibility(8);
            this.rl_result.setVisibility(8);
            startScan();
            return;
        }
        if (view.getId() == com.yftech.libradio.R.id.tv_cancel) {
            LogUtil.d("tv_cancel dismiss");
            getPresenter().stopScan();
            dismiss();
            return;
        }
        if (view.getId() == com.yftech.libradio.R.id.tv_control) {
            boolean isScanStatus = isScanStatus();
            long currentTimeMillis = System.currentTimeMillis();
            LogUtil.d("tv_control isScanStatus:" + isScanStatus + " currentTimeMillis:" + currentTimeMillis + " lastTimeMillis:" + this.lastTimeMillis);
            if (isScanStatus || Math.abs(currentTimeMillis - this.lastTimeMillis) > 3000) {
                getPresenter().stopScan();
                dismiss();
            }
        }
    }

    public void dismiss() {
        super.dismiss();
        this.mHandler.removeCallbacks(this.mTryScanSaveRunnable);
        this.mHandler.removeMessages(MSG_WHAT_HANDLE_SCAN_RESULT);
        LogUtil.d("stopAllScan()");
        getPresenter().stopScan();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startScan() {
        this.mHandler.removeMessages(MSG_WHAT_HANDLE_SCAN_RESULT);
        getPresenter().startScan();
        this.isEnsembleListChanged = false;
        this.ensembleListChangedType = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleScanResult() {
        this.handleResultryCount--;
        if (!this.isEnsembleListChanged && this.handleResultryCount > 0) {
            this.mHandler.sendEmptyMessageDelayed(MSG_WHAT_HANDLE_SCAN_RESULT, 300L);
            return;
        }
        this.handleResultryCount = 0;
        DabEnsemble[] dabEnsemble = CarDabRadioManager.getInstance().getDabEnsemble();
        ArrayList arrayList = new ArrayList();
        Utils.convertDabInfos(dabEnsemble, arrayList, null);
        StringBuilder sb = new StringBuilder();
        sb.append("handleSearchResult list: ");
        sb.append(dabEnsemble == null ? 0 : dabEnsemble.length);
        sb.append(" , type: ");
        sb.append(this.ensembleListChangedType);
        LogUtil.d(sb.toString());
        if (arrayList.size() == 0 || this.ensembleListChangedType == -1) {
            this.iv_tag.setVisibility(0);
            this.rl_result.setVisibility(0);
            this.tv_content.setText(com.yftech.libradio.R.string.radio_channel_search_dialog_search_fail_tips);
            this.pb_loading.setVisibility(4);
            this.tv_control.setVisibility(4);
            return;
        }
        dismissAllowingStateLoss();
        if (CarDabRadioManager.getInstance().isPlaying()) {
            return;
        }
        CarDabRadioManager.getInstance().play();
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    private class CarplayShowUIReceiver extends BroadcastReceiver {
        private CarplayShowUIReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            if (DabSearchingDialog.ACTION_CARPLAY_EVENT_SHOW_UI.equals(action)) {
                boolean booleanExtra = intent.getBooleanExtra(DabSearchingDialog.KEY_CARPLAY_EVENT_SHOW_UI, true);
                LogUtil.i("onReceive() ACTION_CARPLAY_EVENT_SHOW_UI isShow:" + booleanExtra);
                if (booleanExtra) {
                    DabSearchingDialog.this.getPresenter().stopScan();
                    DabSearchingDialog.this.dismiss();
                    return;
                }
                return;
            }
            if ("com.yftech.hicar.show".equals(action)) {
                boolean booleanExtra2 = intent.getBooleanExtra("isShow", false);
                LogUtil.i("onReceive() ACTION_HICAR_SHOW_STATE isShow:" + booleanExtra2);
                if (booleanExtra2) {
                    DabSearchingDialog.this.getPresenter().stopScan();
                    DabSearchingDialog.this.dismiss();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isScanStatus() {
        DabScanStatus scanStatus = CarDabRadioManager.getInstance().getScanStatus();
        if (scanStatus == null) {
            LogUtil.e("DabScanStatus is null ");
            return false;
        }
        return scanStatus.isRuning();
    }
}
