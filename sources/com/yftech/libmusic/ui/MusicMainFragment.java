package com.yftech.libmusic.ui;

import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import com.media.common.event.USBStateEvent;
import com.media.common.util.AudioSettingUtil;
import com.media.common.util.LogUtil;
import com.yftech.car.audio.CarAudioManager;
import com.yftech.car.bluetooth.CarBluetoothManager;
import com.yftech.car.media.data.CarMediaDataManager;
import com.yftech.car.media.music.CarMusicManager;
import com.yftech.libmusic.MusicMainActivity;
import com.yftech.libmusic.R;
import com.yftech.libmusic.dialog.MusicSourceDialog;
import com.yftech.libmusic.event.BluetoothStateEvent;
import com.yftech.libmusic.event.CarLifeStatusEvent;
import com.yftech.libmusic.event.CarPlayStateEvent;
import com.yftech.libmusic.event.MusicPlayStatusEvent;
import com.yftech.libmusic.event.MusicSourceChangedEvent;
import com.yftech.libmusic.event.MusicSourceDialogOpenEvent;
import com.yftech.libmusic.utils.CarLifeMusicManager;
import com.yftech.libmusic.utils.CarPlayMusicManager;
import com.yftech.libmvpmodule.mvp.BaseMvpFragment;
import com.yftech.libmvpmodule.mvp.BaseMvpPresenter;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* loaded from: /home/user/work/dex/classes4.dex */
public class MusicMainFragment extends BaseMvpFragment implements View.OnClickListener {
    private static final String MUSIC_SOURCE = "MUSIC_SOURCE";
    private MusicSourceDialog musicSourceDialog;
    private TextView tv_music_source;
    private final int RC_AUDIO = 10;
    private String musicSource = null;
    private Handler mHandler = new Handler(Looper.getMainLooper()) { // from class: com.yftech.libmusic.ui.MusicMainFragment.1
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (message.what == 10) {
                String obj = message.obj == null ? "" : message.obj.toString();
                String currentSourceByClientId = AudioSettingUtil.getCurrentSourceByClientId(obj);
                if (!TextUtils.isEmpty(currentSourceByClientId) && (MusicMainFragment.this.getActivity() instanceof MusicMainActivity)) {
                    MusicMainActivity activity = MusicMainFragment.this.getActivity();
                    Fragment findFragmentByTag = MusicMainFragment.this.getActivity().getSupportFragmentManager().findFragmentByTag(MusicPlayerFragment.class.getSimpleName());
                    StringBuilder sb = new StringBuilder();
                    sb.append("onChangedMediaSource:isPlayingMusic=");
                    sb.append(findFragmentByTag != null);
                    sb.append(",clientId:");
                    sb.append(obj);
                    LogUtil.d(sb.toString());
                    if (!TextUtils.isEmpty(obj)) {
                        if (("MUSIC_SOURCE_OF_BLUETOOTH".equals(currentSourceByClientId) && !CarBluetoothManager.getInstance().isConnected(12)) || (("MUSIC_SOURCE_OF_USB1".equals(currentSourceByClientId) && (!CarMediaDataManager.getInstance().isUsbExists(0) || CarMediaDataManager.getInstance().getMusicFileSize(0) <= 0)) || (("MUSIC_SOURCE_OF_USB2".equals(currentSourceByClientId) && (!CarMediaDataManager.getInstance().isUsbExists(1) || CarMediaDataManager.getInstance().getMusicFileSize(1) <= 0)) || (("MUSIC_SOURCE_OF_CARLIFE".equals(currentSourceByClientId) && !CarLifeMusicManager.getInstance().getCarLifeConnectionStatus()) || ("MUSIC_SOURCE_OF_CARPLAY".equals(currentSourceByClientId) && CarPlayMusicManager.getInstance(MusicMainFragment.this.getActivity()).getConnectStatus() != 2))))) {
                            LogUtil.e("the source is not available!!!!!!");
                            return;
                        }
                        activity.getSupportFragmentManager().beginTransaction().hide(MusicMainFragment.this).commitNowAllowingStateLoss();
                        activity.currentFragment = null;
                        if (findFragmentByTag == null) {
                            if (!TextUtils.isEmpty(currentSourceByClientId)) {
                                MusicMainFragment.this.switchMusicSource(currentSourceByClientId);
                            }
                        } else if (findFragmentByTag instanceof MusicPlayerFragment) {
                            MusicPlayerFragment musicPlayerFragment = (MusicPlayerFragment) findFragmentByTag;
                            musicPlayerFragment.setMusic_source(currentSourceByClientId);
                            activity.switchContent(musicPlayerFragment);
                        }
                        activity.setSoundEffectVisible(true);
                        return;
                    }
                    if (findFragmentByTag == null) {
                        activity.getSupportFragmentManager().beginTransaction().show(MusicMainFragment.this).commitNowAllowingStateLoss();
                        activity.currentFragment = MusicMainFragment.this;
                    }
                    activity.setSoundEffectVisible(false);
                }
            }
        }
    };
    private final CarAudioManager.CarAudioCallback carAudioCallback = new CarAudioManager.CarAudioCallback() { // from class: com.yftech.libmusic.ui.MusicMainFragment.2
        public void onChangedMediaSource(int i, String str, String str2) {
            if (MusicMainFragment.this.mHandler.hasMessages(10)) {
                MusicMainFragment.this.mHandler.removeMessages(10);
            }
            Message obtainMessage = MusicMainFragment.this.mHandler.obtainMessage(10);
            obtainMessage.obj = str2;
            MusicMainFragment.this.mHandler.sendMessageDelayed(obtainMessage, 300L);
        }
    };

    @Override // com.yftech.libmvpmodule.mvp.BaseMvpFragment
    protected BaseMvpPresenter createPresenter() {
        return null;
    }

    public static MusicMainFragment newInstance(String str) {
        MusicMainFragment musicMainFragment = new MusicMainFragment();
        Bundle bundle = new Bundle();
        bundle.putString(MUSIC_SOURCE, str);
        musicMainFragment.setArguments(bundle);
        return musicMainFragment;
    }

    @Override // com.yftech.libmvpmodule.mvp.BaseMvpFragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (getArguments() != null) {
            this.musicSource = getArguments().getString(MUSIC_SOURCE);
        }
        CarAudioManager.getInstance().registerCarAudioCallback(this.carAudioCallback, (Handler) null);
        EventBus.getDefault().register(this);
    }

    public void onStop() {
        super.onStop();
        LogUtil.d("onStop");
        if (this.musicSourceDialog == null || !this.musicSourceDialog.isVisible()) {
            return;
        }
        this.musicSourceDialog.dismissCustom();
    }

    @Override // com.yftech.libmvpmodule.mvp.BaseMvpFragment
    public void onDestroy() {
        super.onDestroy();
        if (this.musicSourceDialog != null) {
            this.musicSourceDialog.onDestroy();
            this.musicSourceDialog = null;
        }
        CarAudioManager.getInstance().unregisterCarAudioCallback(this.carAudioCallback);
        EventBus.getDefault().unregister(this);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onUSBStatusChange(USBStateEvent uSBStateEvent) {
        LogUtil.e("onUSBStatusChange:event=" + uSBStateEvent.toString() + ",get music source:" + this.musicSource);
        if (uSBStateEvent.isUsbExists) {
            return;
        }
        if (this.musicSource == null || "MUSIC_SOURCE_OF_USB1".equals(this.musicSource) || "MUSIC_SOURCE_OF_USB2".equals(this.musicSource)) {
            EventBus.getDefault().post(new MusicPlayStatusEvent(false));
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onBluetoothStatusChange(BluetoothStateEvent bluetoothStateEvent) {
        LogUtil.e("onBluetoothStatusChange:event=" + bluetoothStateEvent.toString());
        if (bluetoothStateEvent.state == 2) {
            String currentMediaSource = CarAudioManager.getInstance().getCurrentMediaSource();
            if (TextUtils.isEmpty(currentMediaSource)) {
                return;
            }
            String[] split = currentMediaSource.split(",");
            if (split.length >= 3) {
                String currentSourceByClientId = AudioSettingUtil.getCurrentSourceByClientId(split[2]);
                LogUtil.d("onBluetoothStatusChange:sourceByClientId=" + currentSourceByClientId);
                this.musicSource = currentSourceByClientId;
                if ("MUSIC_SOURCE_OF_BLUETOOTH".equals(currentSourceByClientId) && (getActivity() instanceof MusicMainActivity)) {
                    MusicMainActivity activity = getActivity();
                    Fragment findFragmentByTag = activity.getSupportFragmentManager().findFragmentByTag(MusicPlayerFragment.class.getSimpleName());
                    if (findFragmentByTag == null) {
                        activity.switchContent(MusicPlayerFragment.newInstance("MUSIC_SOURCE_OF_BLUETOOTH"));
                    } else if (findFragmentByTag instanceof MusicPlayerFragment) {
                        MusicPlayerFragment musicPlayerFragment = (MusicPlayerFragment) findFragmentByTag;
                        musicPlayerFragment.setMusic_source("MUSIC_SOURCE_OF_BLUETOOTH");
                        activity.switchContent(musicPlayerFragment);
                    }
                    activity.setSoundEffectVisible(true);
                }
            }
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onCarlifeStatusChange(CarLifeStatusEvent carLifeStatusEvent) {
        LogUtil.d("onCarlifeStatusChange:event=" + carLifeStatusEvent.toString());
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onCarPlayStatusChange(CarPlayStateEvent carPlayStateEvent) {
        LogUtil.d("onCarPlayStatusChange:event=" + carPlayStateEvent.toString());
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onMusicSourceDialogOpen(MusicSourceDialogOpenEvent musicSourceDialogOpenEvent) {
        if (this.tv_music_source != null) {
            openMusicSourceDialog(musicSourceDialogOpenEvent.music_source);
        }
    }

    @Override // com.yftech.libmvpmodule.mvp.BaseMvpFragment
    protected View onBindView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.fragment_music_main, viewGroup, false);
    }

    @Override // com.yftech.libmvpmodule.mvp.BaseMvpFragment
    protected void initView(View view) {
        this.tv_music_source = (TextView) view.findViewById(R.id.tv_music_source);
        this.tv_music_source.setOnClickListener(this);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() == R.id.tv_music_source) {
            openMusicSourceDialog("");
        }
    }

    private synchronized void openMusicSourceDialog(String str) {
        if (this.musicSourceDialog != null) {
            this.musicSourceDialog.dismissAllowingStateLoss();
            this.musicSourceDialog = null;
        }
        this.musicSourceDialog = MusicSourceDialog.newInstance(str);
        this.musicSourceDialog.setOnMusicSourceSelectedListener(new MusicSourceDialog.OnMusicSourceSelectedListener() { // from class: com.yftech.libmusic.ui.MusicMainFragment.3
            /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
            /* JADX WARN: Code restructure failed: missing block: B:40:0x00e8, code lost:
            
                if (r10.equals("MUSIC_SOURCE_OF_CARPLAY") != false) goto L53;
             */
            @Override // com.yftech.libmusic.dialog.MusicSourceDialog.OnMusicSourceSelectedListener
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public void onSelected(String str2, int i, final String str3) {
                boolean z;
                if (TextUtils.isEmpty(str3)) {
                    return;
                }
                MusicMainFragment.this.musicSource = str3;
                if (MusicMainFragment.this.getActivity() instanceof MusicMainActivity) {
                    final MusicMainActivity activity = MusicMainFragment.this.getActivity();
                    Fragment findFragmentByTag = activity.getSupportFragmentManager().findFragmentByTag(MusicPlayerFragment.class.getSimpleName());
                    if (!(findFragmentByTag instanceof MusicPlayerFragment)) {
                        if (findFragmentByTag == null) {
                            MusicMainFragment.this.mHandler.post(new Runnable() { // from class: com.yftech.libmusic.ui.MusicMainFragment.3.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    activity.switchContent(MusicPlayerFragment.newInstance(str3));
                                    activity.setSoundEffectVisible(true);
                                }
                            });
                            return;
                        }
                        return;
                    }
                    MusicPlayerFragment musicPlayerFragment = (MusicPlayerFragment) findFragmentByTag;
                    LogUtil.d("original music source=" + musicPlayerFragment.getMusic_source() + ", music source=" + str3);
                    String music_source = musicPlayerFragment.getMusic_source();
                    char c = 4;
                    switch (music_source.hashCode()) {
                        case 1000199824:
                            if (music_source.equals("MUSIC_SOURCE_OF_BLUETOOTH")) {
                                z = 2;
                                break;
                            }
                            z = -1;
                            break;
                        case 1536412978:
                            if (music_source.equals("MUSIC_SOURCE_OF_CARLIFE")) {
                                z = 3;
                                break;
                            }
                            z = -1;
                            break;
                        case 1536534890:
                            if (music_source.equals("MUSIC_SOURCE_OF_CARPLAY")) {
                                z = 4;
                                break;
                            }
                            z = -1;
                            break;
                        case 1766254091:
                            if (music_source.equals("MUSIC_SOURCE_OF_USB1")) {
                                z = false;
                                break;
                            }
                            z = -1;
                            break;
                        case 1766254092:
                            if (music_source.equals("MUSIC_SOURCE_OF_USB2")) {
                                z = true;
                                break;
                            }
                            z = -1;
                            break;
                        default:
                            z = -1;
                            break;
                    }
                    switch (z) {
                        case false:
                        case true:
                            CarMusicManager.getInstance().pause();
                            break;
                        case true:
                            CarBluetoothManager.getInstance().pauseBluetoothMusic();
                            break;
                        case true:
                            CarLifeMusicManager.getInstance().setMusicControl(0);
                            break;
                        case true:
                            CarPlayMusicManager.getInstance(MusicMainFragment.this.getActivity()).pause();
                            break;
                    }
                    musicPlayerFragment.setMusic_source(str3, true);
                    musicPlayerFragment.onResume();
                    switch (str3.hashCode()) {
                        case 1000199824:
                            if (str3.equals("MUSIC_SOURCE_OF_BLUETOOTH")) {
                                c = 2;
                                break;
                            }
                            c = 65535;
                            break;
                        case 1536412978:
                            if (str3.equals("MUSIC_SOURCE_OF_CARLIFE")) {
                                c = 3;
                                break;
                            }
                            c = 65535;
                            break;
                        case 1536534890:
                            break;
                        case 1766254091:
                            if (str3.equals("MUSIC_SOURCE_OF_USB1")) {
                                c = 0;
                                break;
                            }
                            c = 65535;
                            break;
                        case 1766254092:
                            if (str3.equals("MUSIC_SOURCE_OF_USB2")) {
                                c = 1;
                                break;
                            }
                            c = 65535;
                            break;
                        default:
                            c = 65535;
                            break;
                    }
                    switch (c) {
                        case 0:
                            CarMusicManager.getInstance().setCurrentUSB((byte) 0, true);
                            return;
                        case 1:
                            CarMusicManager.getInstance().setCurrentUSB((byte) 1, true);
                            return;
                        case 2:
                            CarBluetoothManager.getInstance().startBluetoothMusic(true);
                            return;
                        case 3:
                            CarLifeMusicManager.getInstance().setMusicControl(1);
                            return;
                        case 4:
                            CarPlayMusicManager.getInstance(MusicMainFragment.this.getActivity()).play();
                            return;
                        default:
                            return;
                    }
                }
            }
        });
        this.musicSourceDialog.show(getChildFragmentManager(), MusicSourceDialog.class.getSimpleName());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void switchMusicSource(String str) {
        LogUtil.d("switchMusicSource:music_source=" + str);
        this.musicSource = str;
        if (getActivity() instanceof MusicMainActivity) {
            MusicMainActivity activity = getActivity();
            Fragment findFragmentByTag = activity.getSupportFragmentManager().findFragmentByTag(MusicPlayerFragment.class.getSimpleName());
            if (findFragmentByTag == null) {
                activity.switchContent(MusicPlayerFragment.newInstance(str));
            } else if (findFragmentByTag instanceof MusicPlayerFragment) {
                MusicPlayerFragment musicPlayerFragment = (MusicPlayerFragment) findFragmentByTag;
                musicPlayerFragment.setMusic_source(str);
                activity.switchContent(musicPlayerFragment);
            }
            activity.setSoundEffectVisible(true);
            EventBus.getDefault().post(new MusicSourceChangedEvent(str));
        }
    }
}
