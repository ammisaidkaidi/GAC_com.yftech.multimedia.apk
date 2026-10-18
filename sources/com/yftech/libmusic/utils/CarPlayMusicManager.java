package com.yftech.libmusic.utils;

import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.autochips.carplay.CarplayAppState;
import com.autochips.carplay.CarplayAudioInfo;
import com.autochips.carplay.CarplayCall;
import com.autochips.carplay.CarplayDevice;
import com.autochips.carplay.CarplayManager;
import com.autochips.carplay.CarplayPlaybackStatus;
import com.autochips.carplay.CarplayResourceState;
import com.autochips.carplay.PlaybackStatusInfo;
import com.media.common.util.LogUtil;
import com.yftech.car.phonelink.CarPhoneLinkManager;
import com.yftech.car.phonelink.CarPhoneLinkMediaManager;
import com.yftech.car.phonelink.PhoneLink;
import com.yftech.libmusic.MusicSourceInformationReceiver;
import com.yftech.libmusic.event.CarPlayUIStateEvent;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.greenrobot.eventbus.EventBus;

/* loaded from: /home/user/work/dex/classes4.dex */
public class CarPlayMusicManager {
    private static final int CHECK_CARPLAY_SERVICE_TIME = 3000;
    private static final int MSG_CHECK_CARPLAY_SERVICE = 1;
    private static volatile CarPlayMusicManager instance;
    private static WeakReference<Context> mContext;
    private List<CarPlayMusicListener> carPlayMusicListeners;
    private CarplayManager carplayManager;
    private CarplayDevice mCarplayDevice;
    private int mProgress;
    private int mTotalDuration;
    private int connectionState = -1;
    private boolean phoneCallStatus = false;
    private int screenVisible = 2;
    private CarPhoneLinkManager.CarPhoneLinkCallback mCarPlayCarPhoneLinkCallback = new CarPhoneLinkManager.CarPhoneLinkCallback() { // from class: com.yftech.libmusic.utils.CarPlayMusicManager.1
        public void onDeviceChanged(PhoneLink phoneLink) {
            LogUtil.d("CarPlay onDeviceChanged:phoneLink=" + phoneLink.toString());
        }

        public void onConnectedStatusChanged(String str) {
            LogUtil.d("CarPlay onConnectedStatusChanged:status=" + str);
            CarPlayMusicManager.this.connectionState = "carplay".equals(str) ? 2 : 0;
            Intent intent = new Intent();
            intent.setAction(MusicSourceInformationReceiver.ACTION_CARPLAY_STATUS_CHANGE);
            intent.putExtra("carplay_state", CarPlayMusicManager.this.connectionState);
            LocalBroadcastManager.getInstance((Context) CarPlayMusicManager.mContext.get()).sendBroadcast(intent);
            Iterator it = CarPlayMusicManager.this.carPlayMusicListeners.iterator();
            while (it.hasNext()) {
                ((CarPlayMusicListener) it.next()).onCarplayConnectChanged(CarPlayMusicManager.this.connectionState);
            }
        }

        public void onShowHuaWeiConnectedDialog() {
            LogUtil.d("CarPlay onShowHuaWeiConnectedDialog");
        }

        public void onVRStatusChanged(int i) {
            LogUtil.i("CarPlay onVRStatusChanged:status=" + i);
        }
    };
    private final CarplayManager.CarplayCallback carplayCallback = new CarplayManager.CarplayCallback() { // from class: com.yftech.libmusic.utils.CarPlayMusicManager.2
        public void onConnectionStateChanged(CarplayDevice carplayDevice, int i) {
            LogUtil.d("onConnectionStateChanged:device=" + carplayDevice.getName() + ",state=" + i);
            CarPlayMusicManager.this.mCarplayDevice = carplayDevice;
        }

        public void onPlaybackStatusChanged(CarplayDevice carplayDevice, PlaybackStatusInfo playbackStatusInfo) {
            CarplayPlaybackStatus playingStatus;
            LogUtil.d("onPlaybackStatusChanged device:" + carplayDevice.toString() + ", pbInfo:" + playbackStatusInfo.toString());
            CarPlayMusicManager.this.mCarplayDevice = carplayDevice;
            if (playbackStatusInfo.isPlaybackStatusValid()) {
                boolean z = 1 == playbackStatusInfo.getPlaybackStatus();
                Iterator it = CarPlayMusicManager.this.carPlayMusicListeners.iterator();
                while (it.hasNext()) {
                    ((CarPlayMusicListener) it.next()).onCarplayPlayingChanged(z);
                }
            }
            if (((playbackStatusInfo.getPlaybackInfo() & 1) != 0 || (playbackStatusInfo.getPlaybackInfo() & 4) != 0) && CarPlayMusicManager.this.carplayManager != null) {
                String playingInfo = CarPlayMusicManager.this.carplayManager.getPlayingInfo(CarPlayMusicManager.this.mCarplayDevice, 1);
                String playingInfo2 = CarPlayMusicManager.this.carplayManager.getPlayingInfo(CarPlayMusicManager.this.mCarplayDevice, 4);
                LogUtil.d("onPlaybackStatusChanged mTitle:" + playingInfo + ", mArtist:" + playingInfo2);
                Iterator it2 = CarPlayMusicManager.this.carPlayMusicListeners.iterator();
                while (it2.hasNext()) {
                    ((CarPlayMusicListener) it2.next()).onCarplayMusicID3Changed(playingInfo, playingInfo2);
                }
            }
            if (!playbackStatusInfo.isTrackMsOffsetValid() || CarPlayMusicManager.this.carplayManager == null || (playingStatus = CarPlayMusicManager.this.carplayManager.getPlayingStatus(CarPlayMusicManager.this.mCarplayDevice)) == null) {
                return;
            }
            CarPlayMusicManager.this.mTotalDuration = playingStatus.getPlayingTrackLen();
            CarPlayMusicManager.this.mProgress = playingStatus.getPlayingTrackPos();
            LogUtil.d("onPlaybackStatusChanged mTotalDuration:" + CarPlayMusicManager.this.mTotalDuration + ", mProgress:" + CarPlayMusicManager.this.mProgress);
            for (CarPlayMusicListener carPlayMusicListener : CarPlayMusicManager.this.carPlayMusicListeners) {
                carPlayMusicListener.onCarplayProgressChanged(CarPlayMusicManager.this.mProgress);
                carPlayMusicListener.onCarplayTotalDurationChanged(CarPlayMusicManager.this.mTotalDuration);
            }
        }

        public void onEnableStateChanged(int i, int i2) {
            LogUtil.i("onEnableStateChanged(" + i + "," + i2 + ")");
        }

        public void onStreamStateChanged(int i, int i2, int i3) {
            LogUtil.i("onStreamStateChanged(" + i + "," + i2 + "," + i3 + ")");
        }

        public void onAppStateChanged(CarplayAppState carplayAppState) {
            LogUtil.i("onAppStateChanged carplayAppState:" + carplayAppState.toString());
        }

        public void onResourceStateChanged(CarplayResourceState carplayResourceState) {
            LogUtil.i("onResourceStateChanged:screenVisible=" + CarPlayMusicManager.this.screenVisible + ", carplayResourceState=" + carplayResourceState.toString());
            if (CarPlayMusicManager.this.screenVisible == carplayResourceState.getMainScreen()) {
                return;
            }
            if (carplayResourceState.getMainScreen() == 1) {
                Iterator it = CarPlayMusicManager.this.carPlayMusicListeners.iterator();
                while (it.hasNext()) {
                    ((CarPlayMusicListener) it.next()).onResourceStateChanged(true);
                }
                EventBus.getDefault().post(new CarPlayUIStateEvent(true));
                CarPlayMusicManager.this.screenVisible = 1;
                return;
            }
            if (carplayResourceState.getMainScreen() == 2) {
                Iterator it2 = CarPlayMusicManager.this.carPlayMusicListeners.iterator();
                while (it2.hasNext()) {
                    ((CarPlayMusicListener) it2.next()).onResourceStateChanged(false);
                }
                EventBus.getDefault().post(new CarPlayUIStateEvent(false));
                CarPlayMusicManager.this.screenVisible = 2;
            }
        }

        public void onRequestAccessoryUI(int i) {
            LogUtil.d("onRequestAccessoryUI(" + i + ")");
            if (i != 7 || CarPlayMusicManager.this.screenVisible == 2) {
                return;
            }
            EventBus.getDefault().post(new CarPlayUIStateEvent(false));
        }

        public void onCallStateChanged(CarplayCall carplayCall) {
            LogUtil.i("onCallStateChanged " + carplayCall.toString());
            CarPlayMusicManager.this.phoneCallStatus = carplayCall.getState() != 0;
        }

        public void onAudioInfo(int i, int i2, CarplayAudioInfo carplayAudioInfo) {
            LogUtil.i("onAudioInfo(" + i + "," + i2 + "," + carplayAudioInfo.toString() + ")");
        }

        public void onDeviceBluetoothID(String str) {
            LogUtil.i("onDeviceBluetoothID s:" + str);
        }
    };
    private Handler mHandle = new Handler(Looper.getMainLooper()) { // from class: com.yftech.libmusic.utils.CarPlayMusicManager.3
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (message.what != 1) {
                return;
            }
            LogUtil.d("MSG_CHECK_CARPLAY_SERVICE");
            if (CarPlayMusicManager.this.carplayManager == null) {
                if (CarPlayMusicManager.this.mHandle.hasMessages(1)) {
                    CarPlayMusicManager.this.mHandle.removeMessages(1);
                }
                CarPlayMusicManager.this.mHandle.sendEmptyMessageDelayed(1, 3000L);
            }
        }
    };

    /* loaded from: /home/user/work/dex/classes4.dex */
    public interface CarPlayMusicListener {
        void onCarplayConnectChanged(int i);

        void onCarplayMusicID3Changed(String str, String str2);

        void onCarplayPlayingChanged(boolean z);

        void onCarplayProgressChanged(int i);

        void onCarplayTotalDurationChanged(int i);

        void onResourceStateChanged(boolean z);
    }

    public static CarPlayMusicManager getInstance(Context context) {
        if (instance == null) {
            synchronized (CarPlayMusicManager.class) {
                if (instance == null) {
                    instance = new CarPlayMusicManager();
                }
            }
        }
        if (mContext == null) {
            mContext = new WeakReference<>(context.getApplicationContext());
        }
        return instance;
    }

    private CarPlayMusicManager() {
        if (getCarplayManager() == null) {
            if (this.mHandle.hasMessages(1)) {
                this.mHandle.removeMessages(1);
            }
            this.mHandle.sendEmptyMessageDelayed(1, 3000L);
        }
        CarPhoneLinkManager.getInstance().registerCarPhoneLinkCallback(this.mCarPlayCarPhoneLinkCallback, (Handler) null);
        this.carPlayMusicListeners = new ArrayList();
    }

    private CarplayManager getCarplayManager() {
        this.carplayManager = CarplayManager.getDefaultManager();
        if (this.carplayManager != null) {
            this.carplayManager.registerCallback(this.carplayCallback, this.mHandle);
            if (this.mCarplayDevice != null) {
                this.connectionState = this.carplayManager.getConnectionState(this.mCarplayDevice);
                Iterator<CarPlayMusicListener> it = this.carPlayMusicListeners.iterator();
                while (it.hasNext()) {
                    it.next().onCarplayConnectChanged(this.connectionState);
                }
                CarplayPlaybackStatus playingStatus = this.carplayManager.getPlayingStatus(this.mCarplayDevice);
                if (playingStatus != null) {
                    this.mTotalDuration = playingStatus.getPlayingTrackLen();
                    this.mProgress = playingStatus.getPlayingTrackPos();
                    if (this.mTotalDuration != 0) {
                        Iterator<CarPlayMusicListener> it2 = this.carPlayMusicListeners.iterator();
                        while (it2.hasNext()) {
                            it2.next().onCarplayProgressChanged(this.mProgress);
                        }
                    }
                }
            }
        }
        return this.carplayManager;
    }

    public static void init(Context context) {
        if (mContext == null) {
            mContext = new WeakReference<>(context);
        }
    }

    public void release() {
        LogUtil.d("CarPlayMusicManager release");
        if (this.carplayManager != null) {
            this.carplayManager.unregisterCallback(this.carplayCallback);
            this.carplayManager = null;
        }
        CarPhoneLinkManager.getInstance().unregisterCarPhoneLinkCallback(this.mCarPlayCarPhoneLinkCallback);
        this.mHandle.removeMessages(1);
        if (this.carPlayMusicListeners != null) {
            this.carPlayMusicListeners.clear();
            this.carPlayMusicListeners = null;
        }
        instance = null;
    }

    private int getConnectionState() {
        String connectedLinkStatus = CarPhoneLinkManager.getInstance().getConnectedLinkStatus();
        LogUtil.d("getCarPlayConnectionStatus:getConnectionState=" + connectedLinkStatus);
        if (connectedLinkStatus != null && connectedLinkStatus.equals("carplay")) {
            this.connectionState = 2;
            return this.connectionState;
        }
        if (this.carplayManager != null) {
            List connectedDevices = this.carplayManager.getConnectedDevices();
            if (connectedDevices == null || connectedDevices.isEmpty()) {
                return 0;
            }
            this.mCarplayDevice = (CarplayDevice) connectedDevices.get(0);
            this.connectionState = this.carplayManager.getConnectionState(this.mCarplayDevice);
        }
        return this.connectionState;
    }

    public void registerCarPlayMusicListener(CarPlayMusicListener carPlayMusicListener) {
        if (this.carPlayMusicListeners == null) {
            this.carPlayMusicListeners = new ArrayList();
        }
        this.carPlayMusicListeners.add(carPlayMusicListener);
    }

    public void unregisterCarPlayMusicListener(CarPlayMusicListener carPlayMusicListener) {
        this.carPlayMusicListeners.remove(carPlayMusicListener);
    }

    public void openCarplayMediaView() {
        LogUtil.i("openCarplayMediaView");
        if (this.carplayManager != null) {
            this.carplayManager.requestDeviceUI(4, "");
        }
    }

    public int getLastUIState() {
        LogUtil.i("getLastUIState");
        if (this.carplayManager != null) {
            return this.carplayManager.getLastUIState(this.mCarplayDevice);
        }
        return -1;
    }

    public void play() {
        LogUtil.i("set carplay play !!!");
        CarPhoneLinkMediaManager.getInstance().play();
    }

    public void pause() {
        LogUtil.i("set carplay stop !!!");
        CarPhoneLinkMediaManager.getInstance().stop();
    }

    public int previous() {
        int i;
        if (this.carplayManager != null) {
            i = this.carplayManager.updateMedia(5);
            this.carplayManager.updateMedia(0);
        } else {
            i = -1;
        }
        LogUtil.i("previous ret:" + i);
        return i;
    }

    public int next() {
        int i;
        if (this.carplayManager != null) {
            i = this.carplayManager.updateMedia(4);
            this.carplayManager.updateMedia(0);
        } else {
            i = -1;
        }
        LogUtil.i("next ret:" + i);
        return i;
    }

    public boolean isPlaying() {
        if (this.carplayManager == null) {
            LogUtil.e("carplayManager is null in isPlaying()");
            return false;
        }
        if (this.mCarplayDevice == null) {
            List connectedDevices = this.carplayManager.getConnectedDevices();
            if (connectedDevices == null || connectedDevices.isEmpty()) {
                return false;
            }
            this.mCarplayDevice = (CarplayDevice) connectedDevices.get(0);
        }
        CarplayPlaybackStatus playingStatus = this.carplayManager.getPlayingStatus(this.mCarplayDevice);
        return playingStatus != null && playingStatus.getPlayingTrackStatus() == 1;
    }

    public int getConnectStatus() {
        this.connectionState = getConnectionState();
        LogUtil.i("getConnectStatus:" + this.connectionState);
        return this.connectionState;
    }

    public String getTitle() {
        if (this.mCarplayDevice == null) {
            List connectedDevices = this.carplayManager.getConnectedDevices();
            if (connectedDevices == null || connectedDevices.isEmpty()) {
                return "";
            }
            this.mCarplayDevice = (CarplayDevice) connectedDevices.get(0);
        }
        try {
            return this.carplayManager.getPlayingInfo(this.mCarplayDevice, 1);
        } catch (Exception e) {
            LogUtil.d("CarPlay Error");
            e.printStackTrace();
            return "";
        }
    }

    public String getArtist() {
        if (this.mCarplayDevice == null) {
            List connectedDevices = this.carplayManager.getConnectedDevices();
            if (connectedDevices == null || connectedDevices.isEmpty()) {
                return "";
            }
            this.mCarplayDevice = (CarplayDevice) connectedDevices.get(0);
        }
        try {
            return this.carplayManager.getPlayingInfo(this.mCarplayDevice, 4);
        } catch (Exception e) {
            LogUtil.d("CarPlay Error");
            e.printStackTrace();
            return "";
        }
    }

    public CarplayResourceState getResourceState() {
        return this.carplayManager.getResourceState();
    }

    public int getProgress() {
        LogUtil.i("getProgress:" + this.mProgress);
        return this.mProgress;
    }

    public int getTotalDuration() {
        LogUtil.i("getTotalDuration:" + this.mTotalDuration);
        return this.mTotalDuration;
    }

    public boolean isPhoneCallStatus() {
        return this.phoneCallStatus;
    }
}
