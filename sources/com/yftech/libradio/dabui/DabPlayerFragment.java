package com.yftech.libradio.dabui;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import androidx.annotation.Nullable;
import com.media.common.util.LogUtil;
import com.yftech.car.media.radio.dab.CarDabRadioManager;
import com.yftech.car.phonelink.CarPhoneLinkManager;
import com.yftech.libmvpmodule.mvp.BaseMvpFragment;
import com.yftech.libradio.presenter.DabMainPresenter;

/* loaded from: /home/user/work/dex/classes4.dex */
public abstract class DabPlayerFragment extends BaseMvpFragment<DabMainPresenter> {
    private static final String ACTION_CARPLAY_EVENT_SHOW_UI = "com.autochips.carplay.event.show_ui";
    private static final String KEY_CARPLAY_EVENT_SHOW_UI = "ui_show";
    private CarplayShowUIReceiver mCarplayShowUIReceiver;
    private IntentFilter mIntentFilter;
    private boolean isAVMDisplaying = false;
    private final int RC_CARPLAY = 10025;
    private final int RC_HICAR = 10026;
    private boolean isCarPlayCalled = false;
    private boolean isCarplayDisconnected = false;
    private String mConnectedLinkStatus = "";
    protected final Handler mHandler = new Handler(Looper.getMainLooper()) { // from class: com.yftech.libradio.dabui.DabPlayerFragment.1
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            if (message.what == 10025) {
                boolean booleanValue = ((Boolean) message.obj).booleanValue();
                LogUtil.d("RC_CARPLAY->CarPlay isShow:" + booleanValue + ", isAVMDisplaying=" + DabPlayerFragment.this.isAVMDisplaying + ", isCarPlayCalled=" + DabPlayerFragment.this.isCarPlayCalled + ", isCarplayDisconnected:" + DabPlayerFragment.this.isCarplayDisconnected);
                if (!booleanValue && !DabPlayerFragment.this.isAVMDisplaying && !DabPlayerFragment.this.isCarPlayCalled && !DabPlayerFragment.this.isCarplayDisconnected && !CarDabRadioManager.getInstance().isPlaying() && !DabPlayerFragment.this.isHidden() && DabPlayerFragment.this.hasWindowFocusEx()) {
                    CarDabRadioManager.getInstance().play();
                }
                if (DabPlayerFragment.this.isCarPlayCalled && !booleanValue) {
                    DabPlayerFragment.this.isCarPlayCalled = false;
                }
                DabPlayerFragment.this.isCarplayDisconnected = false;
                return;
            }
            if (message.what == 10026) {
                boolean booleanValue2 = ((Boolean) message.obj).booleanValue();
                LogUtil.d("RC_CARPLAY->CarPlay isShow:" + booleanValue2 + ", isAVMDisplaying=" + DabPlayerFragment.this.isAVMDisplaying);
                if (booleanValue2 || DabPlayerFragment.this.isAVMDisplaying || CarDabRadioManager.getInstance().isPlaying() || DabPlayerFragment.this.isHidden() || !DabPlayerFragment.this.hasWindowFocusEx()) {
                    return;
                }
                CarDabRadioManager.getInstance().play();
            }
        }
    };
    private CarPhoneLinkManager.CarPhoneLinkCallback mCarPhoneLinkCallback = new CarPhoneLinkManager.CarPhoneLinkCallback() { // from class: com.yftech.libradio.dabui.DabPlayerFragment.2
        public void onCallStatusChanged(int i) {
            super.onCallStatusChanged(i);
            LogUtil.d("onCallStatusChanged() status:" + i);
            if (i == 1 || i == 2) {
                DabPlayerFragment.this.isCarPlayCalled = true;
            }
        }

        public void onConnectedStatusChanged(String str) {
            super.onConnectedStatusChanged(str);
            LogUtil.d("onConnectedStatusChanged() status:" + str);
            if ("carplay".equals(DabPlayerFragment.this.mConnectedLinkStatus) && "none".equals(str)) {
                DabPlayerFragment.this.isCarplayDisconnected = true;
            }
            DabPlayerFragment.this.mConnectedLinkStatus = str;
        }
    };
    private BroadcastReceiver receiver = new BroadcastReceiver() { // from class: com.yftech.libradio.dabui.DabPlayerFragment.3
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if ("com.yftech.avmservice.SHOW_STATE".equals(intent.getAction())) {
                boolean booleanExtra = intent.getBooleanExtra("isShow", false);
                LogUtil.d("com.yftech.avmservice.SHOW_STATE:isShow=" + booleanExtra);
                DabPlayerFragment.this.isAVMDisplaying = booleanExtra;
            }
        }
    };

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.yftech.libmvpmodule.mvp.BaseMvpFragment
    public DabMainPresenter createPresenter() {
        return new DabMainPresenter(getActivity());
    }

    @Override // com.yftech.libmvpmodule.mvp.BaseMvpFragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        LogUtil.d("onCreate()");
        this.mIntentFilter = new IntentFilter();
        this.mIntentFilter.addAction(ACTION_CARPLAY_EVENT_SHOW_UI);
        this.mIntentFilter.addAction("com.yftech.avmservice.SHOW_STATE");
        this.mIntentFilter.addAction("com.yftech.hicar.show");
        this.mCarplayShowUIReceiver = new CarplayShowUIReceiver();
    }

    @Override // com.yftech.libmvpmodule.mvp.BaseMvpFragment
    public void onResume() {
        super.onResume();
        this.mConnectedLinkStatus = CarPhoneLinkManager.getInstance().getConnectedLinkStatus();
        CarPhoneLinkManager.getInstance().registerCarPhoneLinkCallback(this.mCarPhoneLinkCallback, this.mHandler);
        getContext().registerReceiver(this.mCarplayShowUIReceiver, this.mIntentFilter);
        getContext().registerReceiver(this.receiver, this.mIntentFilter);
    }

    @Override // com.yftech.libmvpmodule.mvp.BaseMvpFragment
    public void onPause() {
        super.onPause();
        Log.i("TAG", "onPause: " + getClass().getSimpleName());
        this.isCarPlayCalled = false;
        this.isCarplayDisconnected = false;
        this.mHandler.removeCallbacksAndMessages(null);
        CarPhoneLinkManager.getInstance().unregisterCarPhoneLinkCallback(this.mCarPhoneLinkCallback);
        getContext().unregisterReceiver(this.mCarplayShowUIReceiver);
        getContext().unregisterReceiver(this.receiver);
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    private class CarplayShowUIReceiver extends BroadcastReceiver {
        private CarplayShowUIReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            if (DabPlayerFragment.ACTION_CARPLAY_EVENT_SHOW_UI.equals(action)) {
                boolean booleanExtra = intent.getBooleanExtra(DabPlayerFragment.KEY_CARPLAY_EVENT_SHOW_UI, true);
                LogUtil.i("onReceive() ACTION_CARPLAY_EVENT_SHOW_UI isShow:" + booleanExtra);
                Message obtainMessage = DabPlayerFragment.this.mHandler.obtainMessage(10025);
                obtainMessage.obj = Boolean.valueOf(booleanExtra);
                DabPlayerFragment.this.mHandler.sendMessageDelayed(obtainMessage, 500L);
                return;
            }
            if ("com.yftech.hicar.show".equals(action)) {
                boolean booleanExtra2 = intent.getBooleanExtra("isShow", false);
                LogUtil.d("com.yftech.hicar.show:isShow=" + booleanExtra2);
                Message obtainMessage2 = DabPlayerFragment.this.mHandler.obtainMessage(10026);
                obtainMessage2.obj = Boolean.valueOf(booleanExtra2);
                DabPlayerFragment.this.mHandler.sendMessageDelayed(obtainMessage2, 500L);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean hasWindowFocusEx() {
        boolean isUserVisible = isUserVisible();
        boolean hasWindowFocus = getActivity() != null ? getActivity().hasWindowFocus() : false;
        LogUtil.d("hasWindowFocusEx=" + hasWindowFocus);
        return hasWindowFocus && isUserVisible;
    }
}
