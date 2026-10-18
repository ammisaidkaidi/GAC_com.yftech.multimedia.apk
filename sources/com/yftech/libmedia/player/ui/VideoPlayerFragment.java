package com.yftech.libmedia.player.ui;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemProperties;
import android.security.KeyStore;
import android.text.TextUtils;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.SeekBar;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.FragmentActivity;
import com.media.common.event.USBStateEvent;
import com.media.common.ui.widget.MyActionBar;
import com.media.common.ui.widget.TipsDialog;
import com.media.common.util.AudioSettingUtil;
import com.media.common.util.DateUtil;
import com.media.common.util.LogUtil;
import com.media.common.util.SharedPrefsUtil;
import com.media.common.util.SystemUtil;
import com.yftech.car.audio.CarAudioManager;
import com.yftech.car.bluetooth.CarBluetoothManager;
import com.yftech.car.bluetooth.manager.CarBluetoothManagerGlobal;
import com.yftech.car.input.CarInputManager;
import com.yftech.car.input.CarKey;
import com.yftech.car.media.data.entity.MediaFile;
import com.yftech.car.media.music.CarMusicManager;
import com.yftech.car.screen.CarScreenManager;
import com.yftech.car.widget.media.video.VideoPlayer;
import com.yftech.libmedia.R;
import com.yftech.libmedia.player.presenter.PlayPresenter;
import com.yftech.libmedia.player.view.IPlayActivityView;
import com.yftech.libmusic.utils.CarLifeMusicManager;
import com.yftech.libmusic.utils.CarPlayMusicManager;
import com.yftech.libmvpmodule.mvp.BaseMvpActivity;
import com.yftech.libmvpmodule.mvp.BaseMvpFragment;
import com.yftech.vehicle.internal.adapter.ICarInfo;
import com.yftech.vehicle.internal.adapter.ICarLight;
import com.yftech.vehicle.sdk.CarInfoManager;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* loaded from: /home/user/work/dex/classes4.dex */
public class VideoPlayerFragment extends BaseMvpFragment<PlayPresenter> implements View.OnClickListener, IPlayActivityView {
    private static final String ARG_PARAM1 = "index";
    private static final String ARG_PARAM2 = "playIndexPath";
    private static final String ARG_PARAM3 = "title";
    private static final int TYPE_NORMAL = 2;
    private static final int TYPE_WARNING = 1;
    private MyActionBar actionBar;
    private LinearLayout control_bar;
    private TipsDialog dialog;
    private int index;
    private ImageView iv_control;
    private ImageView iv_volume;
    private int mStartSeek;
    private FrameLayout main;
    private String playIndexPath;
    private ImageView play_error_prompt;
    private VideoPlayer player;
    private ProgressBar progressBar;
    private SeekBar sb_video;
    private SeekBar sb_volume;
    private String title;
    private TextView tv_time_index;
    private TextView tv_time_total;
    private TextView tv_video_play_error;
    private TextView tv_volume_percent;
    private boolean isPagePlaying = true;
    private boolean isControlByClicking = false;
    private boolean isPlayingBeforeSwitchPage = false;
    private final int RC_CONTROL_BAR = 10;
    private final int MSG_RESET_TYPE = 11;
    private final int INTERVAL = 5000;
    private final int RC_FRAME = 20;
    private SparseArray<byte[]> frameCache = new SparseArray<>();
    private boolean isChangedByUser = false;
    private final int RC_SPEED_OVERFLOW = 30;
    private boolean isSpeedOverFlow = false;
    private final int RC_PLAY_ERROR = 40;
    private final int RC_CARPLAY = 50;
    private boolean playingStatus = true;
    private final int RC_INPUT = 60;
    private final int RC_PLAY = 70;
    private boolean isError = false;
    private boolean isConfirm = false;
    private final int RC_HICar = 80;
    private boolean isPauseByHiCar = false;
    private int tempSpeed = 0;
    private boolean isAudioChanged = false;
    private boolean isPreview = false;
    private final int RC_POWER_OFF = 90;
    private boolean mIsShowCarPlayOfPause = false;
    private boolean isOpen = true;
    private final Handler mHandler = new Handler(Looper.getMainLooper()) { // from class: com.yftech.libmedia.player.ui.VideoPlayerFragment.1
        @Override // android.os.Handler
        public void handleMessage(@NonNull Message message) {
            boolean z;
            if (message.what == 10) {
                VideoPlayerFragment.this.setControlBarVisible(8);
                return;
            }
            if (message.what == 20) {
                return;
            }
            if (message.what == 30) {
                int i = message.arg1;
                LogUtil.d("Handler->RC_SPEED_OVERFLOW,speed:" + i);
                if (VideoPlayerFragment.this.player != null) {
                    VideoPlayerFragment.this.player.updateSpeed(i);
                }
                if (i >= 1) {
                    VideoPlayerFragment.this.isFullScreen = false;
                    if (VideoPlayerFragment.this.dialog == null) {
                        LogUtil.d("Handler->RC_SPEED_OVERFLOW->show dialog");
                        String string = ((FragmentActivity) Objects.requireNonNull(VideoPlayerFragment.this.getActivity())).getString(R.string.video_play_speed_overflow_tips_extra);
                        VideoPlayerFragment.this.dialog = TipsDialog.newInstance(string);
                        VideoPlayerFragment.this.dialog.setOnConfirmClickListener(new TipsDialog.OnConfirmClickListener() { // from class: com.yftech.libmedia.player.ui.VideoPlayerFragment.1.1
                            public void onConfirm() {
                                if (VideoPlayerFragment.this.getActivity() != null) {
                                    VideoPlayerFragment.this.getActivity().onBackPressed();
                                }
                            }
                        });
                        if (VideoPlayerFragment.this.dialog != null && !VideoPlayerFragment.this.dialog.isVisible()) {
                            VideoPlayerFragment.this.dialog.show(((FragmentActivity) Objects.requireNonNull(VideoPlayerFragment.this.getActivity())).getSupportFragmentManager(), string);
                        }
                        VideoPlayerFragment.this.isSpeedOverFlow = true;
                        return;
                    }
                    return;
                }
                if (i == 0) {
                    if (VideoPlayerFragment.this.dialog == null || !VideoPlayerFragment.this.dialog.isVisible()) {
                        if (VideoPlayerFragment.this.dialog != null && VideoPlayerFragment.this.isSpeedOverFlow) {
                            try {
                                VideoPlayerFragment.this.dialog.dismissAllowingStateLoss();
                                VideoPlayerFragment.this.dialog = null;
                            } catch (Exception e) {
                                e.printStackTrace();
                            }
                        }
                    } else {
                        VideoPlayerFragment.this.dialog.dismissAllowingStateLoss();
                        VideoPlayerFragment.this.dialog = null;
                    }
                    if (VideoPlayerFragment.this.mIsShowCarPlayOfPause && VideoPlayerFragment.this.isSpeedOverFlow && VideoPlayerFragment.this.isCanReplayVideo()) {
                        VideoPlayerFragment.this.mIsShowCarPlayOfPause = false;
                        VideoPlayerFragment.this.player.setPlayState(1);
                    }
                    VideoPlayerFragment.this.isSpeedOverFlow = false;
                    return;
                }
                return;
            }
            if (message.what == 40) {
                if (VideoPlayerFragment.this.player != null) {
                    VideoPlayerFragment.this.player.setPlayState(4);
                    return;
                }
                return;
            }
            if (message.what == 50) {
                boolean booleanValue = ((Boolean) message.obj).booleanValue();
                int i2 = message.arg1;
                LogUtil.d("Handler->RC_CARPLAY->isDisplaying=" + booleanValue + ", isPagePlaying=" + VideoPlayerFragment.this.isPagePlaying + ", speed=" + i2 + ", isSpeedOverFlow=" + VideoPlayerFragment.this.isSpeedOverFlow);
                if (!booleanValue) {
                    if (!VideoPlayerFragment.this.isSpeedOverFlow || i2 < 1) {
                        if (!VideoPlayerFragment.this.isSpeedOverFlow || i2 != 0) {
                            if (!VideoPlayerFragment.this.isSpeedOverFlow && i2 >= 1) {
                                if (VideoPlayerFragment.this.dialog == null) {
                                    String string2 = ((FragmentActivity) Objects.requireNonNull(VideoPlayerFragment.this.getActivity())).getString(R.string.video_play_speed_overflow_tips_extra);
                                    VideoPlayerFragment.this.dialog = TipsDialog.newInstance(string2);
                                    VideoPlayerFragment.this.dialog.setOnConfirmClickListener(new TipsDialog.OnConfirmClickListener() { // from class: com.yftech.libmedia.player.ui.VideoPlayerFragment.1.2
                                        public void onConfirm() {
                                            if (VideoPlayerFragment.this.getActivity() != null) {
                                                VideoPlayerFragment.this.getActivity().onBackPressed();
                                            }
                                        }
                                    });
                                    if (VideoPlayerFragment.this.dialog != null && !VideoPlayerFragment.this.dialog.isVisible()) {
                                        VideoPlayerFragment.this.dialog.show(((FragmentActivity) Objects.requireNonNull(VideoPlayerFragment.this.getActivity())).getSupportFragmentManager(), string2);
                                    }
                                    VideoPlayerFragment.this.isSpeedOverFlow = true;
                                    return;
                                }
                                return;
                            }
                        } else {
                            if (VideoPlayerFragment.this.dialog != null && VideoPlayerFragment.this.dialog.isVisible()) {
                                VideoPlayerFragment.this.dialog.dismissAllowingStateLoss();
                                VideoPlayerFragment.this.dialog = null;
                            }
                            VideoPlayerFragment.this.isSpeedOverFlow = false;
                        }
                        if (VideoPlayerFragment.this.player != null) {
                            try {
                                BaseMvpActivity activity = VideoPlayerFragment.this.getActivity();
                                z = activity != null ? activity.isDisplaying : false;
                                if (VideoPlayerFragment.this.player != null && z) {
                                    VideoPlayerFragment.this.player.updateSpeed(i2);
                                }
                                if (VideoPlayerFragment.this.isCanReplayVideo()) {
                                    VideoPlayerFragment.this.player.setPlayState(1);
                                    return;
                                }
                                return;
                            } catch (Exception e2) {
                                e2.printStackTrace();
                                return;
                            }
                        }
                        return;
                    }
                    return;
                }
                VideoPlayerFragment.this.isClickTheSame = false;
                if (VideoPlayerFragment.this.player != null) {
                    if (!VideoPlayerFragment.this.isPlayingBeforeSwitchPage) {
                        SharedPrefsUtil.getInstance(KeyStore.getApplicationContext()).save("TAG_VIDEO_ON_BACK_PRESS_BY_USER_BEFORE_SWITCH_PAGE", false);
                    }
                    VideoPlayerFragment.this.mIsShowCarPlayOfPause = true;
                    VideoPlayerFragment.this.player.setPlayState(2);
                    return;
                }
                return;
            }
            if (message.what == 60) {
                LogUtil.d("RC_INPUT->isError=" + VideoPlayerFragment.this.isError + ", key=" + message.arg1 + ",  isScreenSaver:" + VideoPlayerFragment.this.isScreenSaver + ",  isOpen:" + VideoPlayerFragment.this.isOpen + ",  isBackCarToPause:" + VideoPlayerFragment.this.isBackCarToPause);
                if (VideoPlayerFragment.this.isError || VideoPlayerFragment.this.isScreenSaver || !VideoPlayerFragment.this.isOpen || VideoPlayerFragment.this.isBackCarToPause) {
                    return;
                }
                int i3 = message.arg1;
                if (i3 == 1) {
                    VideoPlayerFragment.this.player.setPlayState(4);
                    return;
                } else {
                    if (i3 == 2) {
                        VideoPlayerFragment.this.isPreview = true;
                        VideoPlayerFragment.this.player.setPlayState(5);
                        return;
                    }
                    return;
                }
            }
            if (message.what == 70) {
                z = message.arg1 == 1;
                if (VideoPlayerFragment.this.isError) {
                    return;
                }
                VideoPlayerFragment.this.iv_control.setSelected(z);
                VideoPlayerFragment.this.isConfirm = true;
                return;
            }
            if (message.what == 80) {
                boolean booleanValue2 = ((Boolean) message.obj).booleanValue();
                LogUtil.d("Handler->RC_HICar->isPauseByHiCar:" + VideoPlayerFragment.this.isPauseByHiCar);
                if (booleanValue2) {
                    VideoPlayerFragment.this.isClickTheSame = false;
                    if (VideoPlayerFragment.this.player != null) {
                        if (!VideoPlayerFragment.this.isPlayingBeforeSwitchPage) {
                            SharedPrefsUtil.getInstance(KeyStore.getApplicationContext()).save("TAG_VIDEO_ON_BACK_PRESS_BY_USER_BEFORE_SWITCH_PAGE", false);
                        }
                        if (VideoPlayerFragment.this.isPagePlaying) {
                            VideoPlayerFragment.this.player.setPlayState(2);
                            VideoPlayerFragment.this.isPauseByHiCar = true;
                            return;
                        }
                        return;
                    }
                    return;
                }
                return;
            }
            if (message.what == 90) {
                if (VideoPlayerFragment.this.player != null) {
                    VideoPlayerFragment.this.player.updateSaveTime();
                }
            } else if (message.what == 11) {
                VideoPlayerFragment.this.mCurrType = 1;
            }
        }
    };
    private volatile boolean isScreenSaver = false;
    private BroadcastReceiver screenSaverReceiver = new BroadcastReceiver() { // from class: com.yftech.libmedia.player.ui.VideoPlayerFragment.2
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if ("com.systemui.screenview".equals(intent.getAction())) {
                String stringExtra = intent.getStringExtra("isShow");
                VideoPlayerFragment.this.isScreenSaver = "1".equals(stringExtra);
                LogUtil.d("com.systemui.screenview:isShow=" + stringExtra + ", isScreenSaver:" + VideoPlayerFragment.this.isScreenSaver);
                if (!VideoPlayerFragment.this.isResumed() || stringExtra == null) {
                    return;
                }
                if (stringExtra.equals("1")) {
                    if (VideoPlayerFragment.this.player != null) {
                        VideoPlayerFragment.this.player.setPlayState(2);
                        return;
                    }
                    return;
                }
                LogUtil.d("com.systemui.screenview:isBtCall=" + VideoPlayerFragment.this.isBtCall() + ",isPagePlaying:" + VideoPlayerFragment.this.isPagePlaying + ", isBackCarToPause:" + VideoPlayerFragment.this.isBackCarToPause);
                if (VideoPlayerFragment.this.player == null || !VideoPlayerFragment.this.isPagePlaying || VideoPlayerFragment.this.isBtCall() || VideoPlayerFragment.this.isBackCarToPause || !VideoPlayerFragment.this.isCanReplayVideo()) {
                    return;
                }
                VideoPlayerFragment.this.player.setPlayState(1);
            }
        }
    };
    private BroadcastReceiver hiCarReceiver = new BroadcastReceiver() { // from class: com.yftech.libmedia.player.ui.VideoPlayerFragment.3
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if ("com.yftech.hicar.show".equals(intent.getAction())) {
                boolean booleanExtra = intent.getBooleanExtra("isShow", false);
                LogUtil.d("com.yftech.hicar.show:isShow=" + booleanExtra);
                int vehicleSpeed = CarInfoManager.get().getVehicleSpeed();
                LogUtil.d("com.yftech.hicar.show:speed=" + vehicleSpeed);
                boolean z = VideoPlayerFragment.this.getActivity() instanceof BaseMvpActivity ? VideoPlayerFragment.this.getActivity().isDisplaying : false;
                LogUtil.d("com.yftech.hicar.show:isDisplaying=" + z);
                if (booleanExtra) {
                    try {
                        BaseMvpActivity activity = VideoPlayerFragment.this.getActivity();
                        if (activity != null) {
                            activity.onBackPressed();
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
                if (vehicleSpeed < 1 && z) {
                    VideoPlayerFragment.this.mHandler.obtainMessage(80).obj = Boolean.valueOf(booleanExtra);
                }
            }
        }
    };
    private BroadcastReceiver receiver = new BroadcastReceiver() { // from class: com.yftech.libmedia.player.ui.VideoPlayerFragment.4
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            if ("test".equals(action)) {
                final int intExtra = intent.getIntExtra("value", -1);
                for (int i = 0; i < 5; i++) {
                    new Handler(Looper.myLooper()).postDelayed(new Runnable() { // from class: com.yftech.libmedia.player.ui.VideoPlayerFragment.4.1
                        @Override // java.lang.Runnable
                        public void run() {
                            VideoPlayerFragment.this.carInfoListener.onVehicleSpeedChanged(intExtra);
                        }
                    }, i * 100);
                }
                return;
            }
            if ("aaaa".equals(action)) {
                VideoPlayerFragment.this.tempSpeed = intent.getIntExtra("value", 30);
                return;
            }
            if ("bbbb".equals(action)) {
                if (intent.getIntExtra("value", 0) == 0) {
                    VideoPlayerFragment.this.carInputCallback.onInputKey(new CarKey(1, 0));
                    return;
                } else {
                    VideoPlayerFragment.this.carInputCallback.onInputKey(new CarKey(2, 0));
                    return;
                }
            }
            if ("cccc".equals(action)) {
                VideoPlayerFragment.this.carInfoListener.onVehicleSpeedChanged(0);
            } else if ("dddd".equals(action)) {
                VideoPlayerFragment.this.carInfoListener.onVehicleSpeedChanged(30);
            }
        }
    };
    private boolean isClickTheSame = false;
    private boolean isBackCarToPause = false;
    private BroadcastReceiver mBackCarStatusRec = new BroadcastReceiver() { // from class: com.yftech.libmedia.player.ui.VideoPlayerFragment.6
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if ("com.yftech.avmservice.SHOW_STATE".equals(intent.getAction()) || "air_control_show".equals(intent.getAction())) {
                boolean booleanExtra = intent.getBooleanExtra("isShow", false);
                LogUtil.e(" Rec Back Car status isShow = " + booleanExtra + ", isPagePlaying = " + VideoPlayerFragment.this.isPagePlaying + ", isBackCarToPause = " + VideoPlayerFragment.this.isBackCarToPause + ", player.isPlaying() = " + VideoPlayerFragment.this.player.isPlaying() + ", isScreenSaver:" + VideoPlayerFragment.this.isScreenSaver);
                VideoPlayerFragment.this.isBackCarToPause = booleanExtra;
                if (VideoPlayerFragment.this.player == null || !VideoPlayerFragment.this.isResumed()) {
                    return;
                }
                if (booleanExtra) {
                    if (VideoPlayerFragment.this.isPagePlaying || VideoPlayerFragment.this.player.isPlaying()) {
                        VideoPlayerFragment.this.player.setPlayState(2);
                        return;
                    }
                    return;
                }
                if (VideoPlayerFragment.this.isPagePlaying && VideoPlayerFragment.this.isCanReplayVideo()) {
                    VideoPlayerFragment.this.player.setPlayState(1);
                }
            }
        }
    };
    private CarInputManager.CarInputCallback carInputCallback = new CarInputManager.CarInputCallback() { // from class: com.yftech.libmedia.player.ui.VideoPlayerFragment.7
        public void onInputKey(CarKey carKey) {
            LogUtil.d("onInputKey:CarKey=" + carKey.toString());
            boolean z = SystemProperties.getBoolean("sys.atc.carplay.app.show_ui", false);
            LogUtil.d("onInputKey:isCarPlayDisplaying=" + z);
            if (z || VideoPlayerFragment.this.isSpeedOverFlow || carKey.mAction != 0) {
                return;
            }
            Message obtainMessage = VideoPlayerFragment.this.mHandler.obtainMessage(60);
            obtainMessage.arg1 = carKey.mCode;
            VideoPlayerFragment.this.mHandler.sendMessage(obtainMessage);
        }
    };
    private CarAudioManager.CarAudioCallback audioCallback = new CarAudioManager.CarAudioCallback() { // from class: com.yftech.libmedia.player.ui.VideoPlayerFragment.8
        public void onChangedVolume(int i, int i2, int i3, boolean z, int i4) {
            LogUtil.d("onChangedVolume:streamType=" + i + ", curValue=" + i2 + ", mute=" + z + ", flag=" + i4);
            if (i != 3) {
                return;
            }
            if (z) {
                VideoPlayerFragment.this.sb_volume.setProgress(0);
                VideoPlayerFragment.this.tv_volume_percent.setText(String.format(Locale.getDefault(), "%d%%", Integer.valueOf(Math.round(0.0f))));
                VideoPlayerFragment.this.iv_volume.setImageResource(R.mipmap.pv_icon_volume_off);
                return;
            }
            VideoPlayerFragment.this.sb_volume.setMax(i3);
            VideoPlayerFragment.this.sb_volume.setProgress(i2);
            float f = (i2 * 100.0f) / i3;
            VideoPlayerFragment.this.tv_volume_percent.setText(String.format(Locale.getDefault(), "%d%%", Integer.valueOf(Math.round(f))));
            if (f == 0.0f) {
                VideoPlayerFragment.this.iv_volume.setImageResource(R.mipmap.pv_icon_volume_off);
                return;
            }
            if (f > 0.0f && f < 30.0f) {
                VideoPlayerFragment.this.iv_volume.setImageResource(R.mipmap.pv_icon_volume_on_01);
                return;
            }
            if (f >= 30.0f && f < 60.0f) {
                VideoPlayerFragment.this.iv_volume.setImageResource(R.mipmap.pv_icon_volume_on_02);
            } else {
                if (f < 60.0f || f >= 100.0f) {
                    return;
                }
                VideoPlayerFragment.this.iv_volume.setImageResource(R.mipmap.pv_icon_volume_on_03);
            }
        }

        public void onChangedMediaSource(int i, String str, String str2) {
            LogUtil.d("onChangedMediaSource:streamType=" + i + ", packageName=" + str + ", " + str2);
        }
    };
    private CarInfoManager.CarInfoListener carInfoListener = new CarInfoManager.CarInfoListener() { // from class: com.yftech.libmedia.player.ui.VideoPlayerFragment.9
        @Override // com.yftech.vehicle.sdk.CarInfoManager.CarInfoListener
        public void onPowerModeChanged(ICarInfo.PowerMode powerMode) {
            LogUtil.d("onPowerModeChanged:mode=" + powerMode.value);
            if (ICarInfo.PowerMode.valueOf(powerMode.value) == ICarInfo.PowerMode.OFF) {
                VideoPlayerFragment.this.mHandler.sendEmptyMessage(90);
            }
        }

        @Override // com.yftech.vehicle.sdk.CarInfoManager.CarInfoListener
        public void onVehicleSpeedChanged(int i) {
            boolean z = SystemProperties.getBoolean("sys.atc.carplay.app.show_ui", false);
            LogUtil.d("onVehicleSpeedChanged:isCarPlayDisplaying=" + z);
            LogUtil.d("onVehicleSpeedChanged:Speed=" + i);
            if (z) {
                return;
            }
            if (i == 0 || (!VideoPlayerFragment.this.isSpeedOverFlow && i > 0)) {
                Message obtainMessage = VideoPlayerFragment.this.mHandler.obtainMessage();
                obtainMessage.what = 30;
                obtainMessage.arg1 = i;
                VideoPlayerFragment.this.mHandler.sendMessage(obtainMessage);
            }
        }
    };
    private CarPlayMusicManager.CarPlayMusicListener carPlayMusicListener = new CarPlayMusicManager.CarPlayMusicListener() { // from class: com.yftech.libmedia.player.ui.VideoPlayerFragment.10
        @Override // com.yftech.libmusic.utils.CarPlayMusicManager.CarPlayMusicListener
        public void onCarplayMusicID3Changed(String str, String str2) {
        }

        @Override // com.yftech.libmusic.utils.CarPlayMusicManager.CarPlayMusicListener
        public void onCarplayPlayingChanged(boolean z) {
        }

        @Override // com.yftech.libmusic.utils.CarPlayMusicManager.CarPlayMusicListener
        public void onCarplayProgressChanged(int i) {
        }

        @Override // com.yftech.libmusic.utils.CarPlayMusicManager.CarPlayMusicListener
        public void onCarplayTotalDurationChanged(int i) {
        }

        @Override // com.yftech.libmusic.utils.CarPlayMusicManager.CarPlayMusicListener
        public void onCarplayConnectChanged(int i) {
            LogUtil.d("onCarplayConnectChanged:" + i);
            if (i == 0) {
                onResourceStateChanged(false);
            }
        }

        @Override // com.yftech.libmusic.utils.CarPlayMusicManager.CarPlayMusicListener
        public void onResourceStateChanged(final boolean z) {
            final int vehicleSpeed = CarInfoManager.get().getVehicleSpeed();
            LogUtil.d("onResourceStateChanged:isDisplaying=" + z + ", speed=" + vehicleSpeed);
            VideoPlayerFragment.this.mHandler.postDelayed(new Runnable() { // from class: com.yftech.libmedia.player.ui.VideoPlayerFragment.10.1
                @Override // java.lang.Runnable
                public void run() {
                    if (VideoPlayerFragment.this.getActivity() instanceof BaseMvpActivity) {
                        BaseMvpActivity activity = VideoPlayerFragment.this.getActivity();
                        LogUtil.d("onResourceStateChanged:isPageDisplaying=" + activity.isDisplaying);
                        if (activity.isDisplaying) {
                            Message obtainMessage = VideoPlayerFragment.this.mHandler.obtainMessage(50);
                            obtainMessage.obj = Boolean.valueOf(z);
                            obtainMessage.arg1 = vehicleSpeed;
                            VideoPlayerFragment.this.mHandler.sendMessage(obtainMessage);
                        }
                    }
                }
            }, 200L);
        }
    };
    private int video_duration = 0;
    private boolean isFinish = false;
    private final VideoPlayer.VideoCallback callback = new VideoPlayer.VideoCallback() { // from class: com.yftech.libmedia.player.ui.VideoPlayerFragment.13
        public void onPlayChange(MediaFile mediaFile) {
            LogUtil.d("onPlayChange:path=" + mediaFile.getData());
            if (VideoPlayerFragment.this.play_error_prompt.getVisibility() == 0 || VideoPlayerFragment.this.play_error_prompt.getVisibility() == 4) {
                VideoPlayerFragment.this.isError = false;
                VideoPlayerFragment.this.player.setOnTouchGesture(true);
                VideoPlayerFragment.this.play_error_prompt.setVisibility(8);
                VideoPlayerFragment.this.tv_video_play_error.setVisibility(8);
                VideoPlayerFragment.this.mHandler.sendEmptyMessageDelayed(10, 5000L);
            }
            VideoPlayerFragment.this.actionBar.setTitleText(mediaFile.getFileName());
            if (VideoPlayerFragment.this.index == 0) {
                SharedPrefsUtil.getInstance(VideoPlayerFragment.this.getContext()).save("TAG_VIDEO_VIEWED_LAST_FOR_USB_1", mediaFile.getData());
            } else {
                SharedPrefsUtil.getInstance(VideoPlayerFragment.this.getContext()).save("TAG_VIDEO_VIEWED_LAST_FOR_USB_2", mediaFile.getData());
            }
            VideoPlayerFragment.this.setControlEnable(true);
        }

        public void onPrepared(int i) {
            LogUtil.d("duration=" + i);
            VideoPlayerFragment.this.progressBar.setVisibility(8);
            VideoPlayerFragment.this.isFinish = false;
            VideoPlayerFragment.this.frameCache.clear();
            VideoPlayerFragment.this.video_duration = i;
            VideoPlayerFragment.this.tv_time_total.setText(DateUtil.getTime(i));
        }

        public void onProgress(int i) {
            if (VideoPlayerFragment.this.isPreview && i > 0) {
                VideoPlayerFragment.this.isPreview = false;
            }
            if (VideoPlayerFragment.this.isPressing) {
                return;
            }
            VideoPlayerFragment.this.tv_time_index.setText(DateUtil.getTime(i));
        }

        public void onPlayingChange(boolean z) {
            LogUtil.d("onPlayingChange:isPlaying=" + z + ", isConfirm = " + VideoPlayerFragment.this.isConfirm);
            Message obtainMessage = VideoPlayerFragment.this.mHandler.obtainMessage(70);
            obtainMessage.arg1 = z ? 1 : 0;
            if (VideoPlayerFragment.this.mHandler.hasMessages(70)) {
                VideoPlayerFragment.this.mHandler.removeMessages(70);
            }
            if (VideoPlayerFragment.this.isConfirm) {
                VideoPlayerFragment.this.mHandler.sendMessage(obtainMessage);
            } else {
                VideoPlayerFragment.this.mHandler.sendMessageDelayed(obtainMessage, 600L);
            }
            if (VideoPlayerFragment.this.isControlByClicking) {
                VideoPlayerFragment.this.isPagePlaying = z;
                VideoPlayerFragment.this.isControlByClicking = false;
            } else {
                VideoPlayerFragment.this.isAudioChanged = true;
            }
        }

        public void onPlaySequenceCompletion() {
            LogUtil.d("onPlaySequenceCompletion");
            VideoPlayerFragment.this.isFinish = true;
            if (VideoPlayerFragment.this.player != null) {
                VideoPlayerFragment.this.player.setPlayState(2);
            }
            VideoPlayerFragment.this.setControlBarVisible(0);
            if (VideoPlayerFragment.this.mHandler.hasMessages(10)) {
                VideoPlayerFragment.this.mHandler.removeMessages(10);
            }
        }

        public void onDoubleClick(boolean z) {
            LogUtil.d("onDoubleClick:isDoubleClick=" + z + ",isFinish:" + VideoPlayerFragment.this.isFinish);
            AudioSettingUtil.playSystemClickSoundEffect((Context) Objects.requireNonNull(VideoPlayerFragment.this.getContext()));
            if (!VideoPlayerFragment.this.getControlBarVisible()) {
                VideoPlayerFragment.this.setControlBarVisible(0);
                if (VideoPlayerFragment.this.mHandler.hasMessages(10)) {
                    VideoPlayerFragment.this.mHandler.removeMessages(10);
                }
                VideoPlayerFragment.this.mHandler.sendEmptyMessageDelayed(10, 5000L);
                return;
            }
            VideoPlayerFragment.this.setControlBarVisible(4);
            if (VideoPlayerFragment.this.mHandler.hasMessages(10)) {
                VideoPlayerFragment.this.mHandler.removeMessages(10);
            }
        }

        public boolean onPlayException(int i) {
            LogUtil.d("onPlayException:code=" + i + ", isPreview=" + VideoPlayerFragment.this.isPreview);
            VideoPlayerFragment.this.progressBar.setVisibility(8);
            MediaFile currentPlay = VideoPlayerFragment.this.player.getCurrentPlay();
            if (currentPlay == null || TextUtils.isEmpty(currentPlay.getData()) || !currentPlay.getData().equals(VideoPlayerFragment.this.playIndexPath)) {
                if (!VideoPlayerFragment.this.isPreview) {
                    return false;
                }
                Message obtainMessage = VideoPlayerFragment.this.mHandler.obtainMessage(60);
                obtainMessage.arg1 = 2;
                VideoPlayerFragment.this.mHandler.sendMessageDelayed(obtainMessage, 200L);
                return true;
            }
            VideoPlayerFragment.this.isError = true;
            TipsDialog newInstance = TipsDialog.newInstance(VideoPlayerFragment.this.getString(R.string.video_play_error_tips));
            newInstance.setOnConfirmClickListener(new TipsDialog.OnConfirmClickListener() { // from class: com.yftech.libmedia.player.ui.VideoPlayerFragment.13.1
                public void onConfirm() {
                    if (VideoPlayerFragment.this.getActivity() != null) {
                        VideoPlayerFragment.this.getActivity().onBackPressed();
                    }
                }
            });
            newInstance.show(VideoPlayerFragment.this.getChildFragmentManager(), "onPlayerError");
            VideoPlayerFragment.this.setControlEnable(false);
            return true;
        }

        public boolean onPlayerError(int i, int i2) {
            LogUtil.d("onPlayerError:what=" + i + ", extra=" + i2);
            if (i == 100 && i2 == 1) {
                return true;
            }
            VideoPlayerFragment.this.progressBar.setVisibility(8);
            MediaFile currentPlay = VideoPlayerFragment.this.player.getCurrentPlay();
            if (currentPlay == null || TextUtils.isEmpty(currentPlay.getData()) || !currentPlay.getData().equals(VideoPlayerFragment.this.playIndexPath)) {
                if (VideoPlayerFragment.this.isPreview) {
                    LogUtil.d("onPlayerError: isPreview");
                    Message obtainMessage = VideoPlayerFragment.this.mHandler.obtainMessage(60);
                    obtainMessage.arg1 = 2;
                    VideoPlayerFragment.this.mHandler.sendMessageDelayed(obtainMessage, 200L);
                    return true;
                }
                LogUtil.d("onPlayerError: autoplay jump");
                return false;
            }
            VideoPlayerFragment.this.isError = true;
            LogUtil.d("onPlayerError: is click to enter");
            VideoPlayerFragment.this.play_error_prompt.setVisibility(0);
            VideoPlayerFragment.this.tv_video_play_error.setVisibility(0);
            if (VideoPlayerFragment.this.mHandler.hasMessages(10)) {
                VideoPlayerFragment.this.mHandler.removeMessages(10);
            }
            VideoPlayerFragment.this.setControlBarVisible(0);
            VideoPlayerFragment.this.setControlEnable(false);
            VideoPlayerFragment.this.player.setOnTouchGesture(false);
            return true;
        }

        public boolean onAudioFocusChange(int i) {
            boolean z = SystemProperties.getBoolean("sys.atc.carplay.app.show_ui", false);
            LogUtil.d("onAudioFocusChange:focusChange=" + i + ", isCarPlayDisplaying=" + z);
            boolean z2 = true;
            if (!z) {
                VideoPlayerFragment videoPlayerFragment = VideoPlayerFragment.this;
                if (i != -1 && i != -2) {
                    z2 = false;
                }
                videoPlayerFragment.isAudioChanged = z2;
            } else if (i != -2 && i != 1) {
                VideoPlayerFragment.this.isPagePlaying = false;
            }
            return false;
        }

        public void onSlideProgress(boolean z, int i, long j, boolean z2) {
            super.onSlideProgress(z, i, j, z2);
            LogUtil.d("onSlideProgress:isSlide=" + z + ",videoSeek:" + i + ",duration:" + j + ", mSlideForward:" + z2);
            VideoPlayerFragment.this.freezeFrameSet(i, false, 0, z2);
            if (z) {
                if (VideoPlayerFragment.this.mHandler.hasMessages(10)) {
                    VideoPlayerFragment.this.mHandler.removeMessages(10);
                }
            } else {
                if (VideoPlayerFragment.this.mHandler.hasMessages(10)) {
                    VideoPlayerFragment.this.mHandler.removeMessages(10);
                }
                VideoPlayerFragment.this.mHandler.sendEmptyMessageDelayed(10, 5000L);
            }
        }
    };
    private boolean isPressing = false;
    private int mCurrType = 1;
    private SeekBar.OnSeekBarChangeListener volumeCallbackListener = new SeekBar.OnSeekBarChangeListener() { // from class: com.yftech.libmedia.player.ui.VideoPlayerFragment.14
        private int mWarnMax;
        private int max;
        private int resourceId = 0;

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onProgressChanged(SeekBar seekBar, int i, boolean z) {
            if (z) {
                if (VideoPlayerFragment.this.mCurrType == 1 && VideoPlayerFragment.this.mStartSeek <= this.mWarnMax && i > this.mWarnMax) {
                    i = this.mWarnMax;
                }
                LogUtil.d("volume seekBar moving by progress=" + i);
                AudioSettingUtil.setStreamVolume(KeyStore.getApplicationContext(), 3, i);
            }
            switchImageResource(i);
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onStartTrackingTouch(SeekBar seekBar) {
            VideoPlayerFragment.this.mStartSeek = seekBar.getProgress();
            LogUtil.d("volume seekBar touch begin!!!!!");
            this.max = VideoPlayerFragment.this.sb_volume.getMax();
            this.mWarnMax = (int) (this.max * 0.6d);
            VideoPlayerFragment.this.setControlBarVisible(0);
            if (VideoPlayerFragment.this.mHandler.hasMessages(10)) {
                VideoPlayerFragment.this.mHandler.removeMessages(10);
            }
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onStopTrackingTouch(SeekBar seekBar) {
            if (!VideoPlayerFragment.this.isError) {
                if (VideoPlayerFragment.this.mHandler.hasMessages(10)) {
                    VideoPlayerFragment.this.mHandler.removeMessages(10);
                }
                VideoPlayerFragment.this.mHandler.sendEmptyMessageDelayed(10, 5000L);
            }
            int progress = seekBar.getProgress();
            if (VideoPlayerFragment.this.mCurrType == 1 && VideoPlayerFragment.this.mStartSeek <= this.mWarnMax && progress > this.mWarnMax) {
                progress = this.mWarnMax;
                seekBar.setProgress(progress);
                LogUtil.d("volume seekBar leave by progress2=" + progress);
                VideoPlayerFragment.this.mCurrType = 2;
                VideoPlayerFragment.this.mHandler.removeMessages(11);
                VideoPlayerFragment.this.mHandler.sendEmptyMessageDelayed(11, 5000L);
            }
            switchImageResource(seekBar.getProgress());
            AudioSettingUtil.setStreamVolume(KeyStore.getApplicationContext(), 3, progress);
            LogUtil.d("volume seekBar leave by progress=" + progress);
        }

        private void switchImageResource(int i) {
            float f = (i * 100.0f) / this.max;
            if (f == 0.0f) {
                VideoPlayerFragment.this.iv_volume.setImageResource(R.drawable.imgvideo_icon_volume_off);
                this.resourceId = R.drawable.imgvideo_icon_volume_off;
                return;
            }
            if (f > 0.0f && f < 30.0f && this.resourceId != R.drawable.imgvideo_icon_volume_on_01) {
                VideoPlayerFragment.this.iv_volume.setImageResource(R.drawable.imgvideo_icon_volume_on_01);
                this.resourceId = R.drawable.imgvideo_icon_volume_on_01;
                return;
            }
            if (f >= 30.0f && f < 60.0f && this.resourceId != R.drawable.imgvideo_icon_volume_on_02) {
                VideoPlayerFragment.this.iv_volume.setImageResource(R.drawable.imgvideo_icon_volume_on_02);
                this.resourceId = R.drawable.imgvideo_icon_volume_on_02;
            } else {
                if (f < 60.0f || f > 100.0f || this.resourceId == R.drawable.imgvideo_icon_volume_on_03) {
                    return;
                }
                VideoPlayerFragment.this.iv_volume.setImageResource(R.drawable.imgvideo_icon_volume_on_03);
                this.resourceId = R.drawable.imgvideo_icon_volume_on_03;
            }
        }
    };
    private CarScreenManager.CarScreenCallback carScreenCallback = new CarScreenManager.CarScreenCallback() { // from class: com.yftech.libmedia.player.ui.VideoPlayerFragment.15
        public void onChangedScreenBrightness(boolean z, int i) {
            LogUtil.d("onChangedScreenBrightness:open=" + z + ", brightness=" + i + ", isOpen=" + VideoPlayerFragment.this.isOpen + ", isPagePlaying=" + VideoPlayerFragment.this.isPagePlaying);
            if (VideoPlayerFragment.this.isOpen != z && VideoPlayerFragment.this.isResumed()) {
                if (z) {
                    if (VideoPlayerFragment.this.player != null && VideoPlayerFragment.this.isPagePlaying && VideoPlayerFragment.this.isCanReplayVideo()) {
                        VideoPlayerFragment.this.player.setPlayState(1);
                    }
                } else if (VideoPlayerFragment.this.player != null && VideoPlayerFragment.this.player.isPlaying()) {
                    VideoPlayerFragment.this.player.setPlayState(2);
                }
                VideoPlayerFragment.this.isOpen = z;
            }
        }

        public void onChangedDayNightMode(int i) {
            LogUtil.d("onChangedDayNightMode:mode=" + i);
        }
    };
    private final String ACTION_SOURCE_WINDOW_START = "video_window_start";

    /* JADX INFO: Access modifiers changed from: private */
    public void freezeFrameSet(int i, boolean z, int i2, boolean z2) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setControlBarVisible(int i) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isBtCall() {
        List phoneCalls = CarBluetoothManagerGlobal.getInstance().getPhoneCalls();
        return (phoneCalls == null || phoneCalls.isEmpty()) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.yftech.libmvpmodule.mvp.BaseMvpFragment
    public PlayPresenter createPresenter() {
        return new PlayPresenter(getActivity());
    }

    public static VideoPlayerFragment newInstance(int i, String str, String str2) {
        VideoPlayerFragment videoPlayerFragment = new VideoPlayerFragment();
        Bundle bundle = new Bundle();
        bundle.putInt(ARG_PARAM1, i);
        bundle.putString(ARG_PARAM2, str);
        bundle.putString(ARG_PARAM3, str2);
        videoPlayerFragment.setArguments(bundle);
        return videoPlayerFragment;
    }

    @Override // com.yftech.libmvpmodule.mvp.BaseMvpFragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (getArguments() != null) {
            this.index = getArguments().getInt(ARG_PARAM1);
            this.playIndexPath = getArguments().getString(ARG_PARAM2);
            this.title = getArguments().getString(ARG_PARAM3);
        }
        CarPlayMusicManager.init(getContext());
        CarInfoManager.get().registerListener(this.carInfoListener);
        CarAudioManager.getInstance().registerCarAudioCallback(this.audioCallback, (Handler) null);
        CarPlayMusicManager.getInstance(getActivity()).registerCarPlayMusicListener(this.carPlayMusicListener);
        CarScreenManager.getInstance().registerCarScreenCallback(this.carScreenCallback, (Handler) null);
        registerBackCarReceiver();
        registerTestReceiver();
        registerHiCarReceiver();
        registerScreenSaverReceiver();
        EventBus.getDefault().register(this);
    }

    private void registerBackCarReceiver() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("com.yftech.avmservice.SHOW_STATE");
        intentFilter.addAction("air_control_show");
        if (getContext() != null) {
            getContext().registerReceiver(this.mBackCarStatusRec, intentFilter);
        }
    }

    private void registerTestReceiver() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("test");
        intentFilter.addAction("aaaa");
        intentFilter.addAction("bbbb");
        intentFilter.addAction("cccc");
        intentFilter.addAction("dddd");
        ((Context) Objects.requireNonNull(getContext())).registerReceiver(this.receiver, intentFilter);
    }

    private void registerHiCarReceiver() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("com.yftech.hicar.show");
        if (getContext() != null) {
            getContext().registerReceiver(this.hiCarReceiver, intentFilter);
        }
    }

    private void registerScreenSaverReceiver() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("com.systemui.screenview");
        if (getContext() != null) {
            getContext().registerReceiver(this.screenSaverReceiver, intentFilter);
        }
    }

    @Override // com.yftech.libmvpmodule.mvp.BaseMvpFragment
    public void onPause() {
        super.onPause();
        LogUtil.d("onPause:isPlaying=" + this.isPagePlaying);
        if (this.dialog != null && this.dialog.isVisible()) {
            this.dialog.dismissAllowingStateLoss();
            this.dialog = null;
        }
        if (getActivity() instanceof BaseMvpActivity) {
            getActivity().isDisplaying = false;
        }
        CarInputManager.getInstance().unregisterCarInputCallback(this.carInputCallback);
        new Handler(Looper.myLooper()).postDelayed(new Runnable() { // from class: com.yftech.libmedia.player.ui.VideoPlayerFragment.5
            @Override // java.lang.Runnable
            public void run() {
                boolean z = SystemProperties.getBoolean("sys.atc.carplay.app.show_ui", false);
                LogUtil.d("onPause:isClickTheSame=" + VideoPlayerFragment.this.isClickTheSame + ", isCarPlayDisplaying=" + z);
                if (VideoPlayerFragment.this.isClickTheSame || !z || VideoPlayerFragment.this.player == null || VideoPlayerFragment.this.isPlayingBeforeSwitchPage) {
                    return;
                }
                SharedPrefsUtil.getInstance(KeyStore.getApplicationContext()).save("TAG_VIDEO_ON_BACK_PRESS_BY_USER_BEFORE_SWITCH_PAGE", false);
            }
        }, 200L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isCanReplayVideo() {
        boolean z = SystemProperties.getBoolean("screen_view_show", false);
        boolean z2 = SystemProperties.getBoolean("sys.atc.carplay.app.show_ui", false);
        boolean isOpenScreenBrightness = CarScreenManager.getInstance().isOpenScreenBrightness();
        int vehicleSpeed = CarInfoManager.get().getVehicleSpeed();
        boolean z3 = vehicleSpeed >= 1;
        BaseMvpActivity activity = getActivity();
        boolean z4 = activity != null ? activity.isDisplaying : false;
        LogUtil.d("isCanReplayVideo isScreenSaverState:" + z + ",isCarPlayDisplaying:" + z2 + ",isActivityDisplaying:" + z4 + ",speed:" + vehicleSpeed + ",openScreenBrightness:" + isOpenScreenBrightness);
        return (z || z2 || !z4 || !isOpenScreenBrightness || z3) ? false : true;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.yftech.libmvpmodule.mvp.BaseMvpFragment
    public void onResume() {
        char c;
        super.onResume();
        EventBus.getDefault().post("video_window_start");
        if (getActivity() instanceof BaseMvpActivity) {
            getActivity().isDisplaying = true;
        }
        CarInputManager.getInstance().registerCarInputCallback(this.carInputCallback, (Handler) null);
        boolean z = SystemProperties.getBoolean("sys.atc.carplay.app.show_ui", false);
        LogUtil.d("onResume:isCarPlayDisplaying=" + z + ", isPauseByHiCar=" + this.isPauseByHiCar);
        if (z) {
            return;
        }
        String currentMediaSource = AudioSettingUtil.getCurrentMediaSource();
        if (!TextUtils.isEmpty(currentMediaSource)) {
            switch (currentMediaSource.hashCode()) {
                case -1959974508:
                    if (currentMediaSource.equals("com.autochips.carplay.resourcemanagerment")) {
                        c = 4;
                        break;
                    }
                    c = 65535;
                    break;
                case 1000199824:
                    if (currentMediaSource.equals("MUSIC_SOURCE_OF_BLUETOOTH")) {
                        c = 0;
                        break;
                    }
                    c = 65535;
                    break;
                case 1536412978:
                    if (currentMediaSource.equals("MUSIC_SOURCE_OF_CARLIFE")) {
                        c = 3;
                        break;
                    }
                    c = 65535;
                    break;
                case 1766254091:
                    if (currentMediaSource.equals("MUSIC_SOURCE_OF_USB1")) {
                        c = 1;
                        break;
                    }
                    c = 65535;
                    break;
                case 1766254092:
                    if (currentMediaSource.equals("MUSIC_SOURCE_OF_USB2")) {
                        c = 2;
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
                    CarBluetoothManager.getInstance().pauseBluetoothMusic();
                    break;
                case 1:
                case 2:
                    CarMusicManager.getInstance().pause();
                    break;
                case 3:
                    CarLifeMusicManager.getInstance().setMusicControl(0);
                    break;
                case 4:
                    CarPlayMusicManager.getInstance(getActivity()).pause();
                    break;
            }
        }
        this.isClickTheSame = true;
        if (this.player != null) {
            if (this.isPauseByHiCar) {
                this.player.setPlayState(1);
                this.isPauseByHiCar = false;
                return;
            }
            int vehicleSpeed = CarInfoManager.get().getVehicleSpeed();
            LogUtil.d("CarSpeedCheck:speed=" + vehicleSpeed + ", isSpeedOverFlow=" + this.isSpeedOverFlow);
            if ((this.isSpeedOverFlow && vehicleSpeed == 0) || (!this.isSpeedOverFlow && vehicleSpeed >= 1)) {
                Message obtainMessage = this.mHandler.obtainMessage();
                obtainMessage.what = 30;
                obtainMessage.arg1 = vehicleSpeed;
                this.mHandler.sendMessage(obtainMessage);
                return;
            }
            if (vehicleSpeed >= 1) {
                if (this.dialog == null) {
                    Message obtainMessage2 = this.mHandler.obtainMessage();
                    obtainMessage2.what = 30;
                    obtainMessage2.arg1 = vehicleSpeed;
                    this.mHandler.sendMessage(obtainMessage2);
                    return;
                }
                return;
            }
            MediaFile currentPlay = this.player.getCurrentPlay();
            StringBuilder sb = new StringBuilder();
            sb.append("onResume:playerId=");
            sb.append(this.player.getId());
            sb.append(", getCurrentPlay=");
            sb.append(currentPlay == null ? "null" : currentPlay.toString());
            LogUtil.d(sb.toString());
            if (currentPlay == null) {
                getPresenter().getVideoPlayList(this.index, this.playIndexPath);
                return;
            }
            LogUtil.d("onResume:isAudioChanged=" + this.isAudioChanged + ", isPagePlaying=" + this.isPagePlaying);
            this.isAudioChanged = false;
        }
    }

    @Override // com.yftech.libmvpmodule.mvp.BaseMvpFragment
    public void onDestroy() {
        super.onDestroy();
        LogUtil.d("onDestroy");
        if (this.player != null) {
            this.player.removeVideoCallback(this.callback);
            this.player.release();
            this.player = null;
        }
        CarInfoManager.get().unregisterListener(this.carInfoListener);
        CarAudioManager.getInstance().unregisterCarAudioCallback(this.audioCallback);
        CarPlayMusicManager.getInstance(getActivity()).unregisterCarPlayMusicListener(this.carPlayMusicListener);
        CarScreenManager.getInstance().unregisterCarScreenCallback(this.carScreenCallback);
        ((Context) Objects.requireNonNull(getContext())).unregisterReceiver(this.receiver);
        ((Context) Objects.requireNonNull(getContext())).unregisterReceiver(this.hiCarReceiver);
        ((Context) Objects.requireNonNull(getContext())).unregisterReceiver(this.screenSaverReceiver);
        ((Context) Objects.requireNonNull(getContext())).unregisterReceiver(this.mBackCarStatusRec);
        EventBus.getDefault().unregister(this);
        SystemUtil.setSysFullScreen((Activity) Objects.requireNonNull(getActivity()), false);
    }

    @Override // com.yftech.libmvpmodule.mvp.BaseMvpFragment
    protected View onBindView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.fragment_video_player, viewGroup, false);
    }

    @Override // com.yftech.libmvpmodule.mvp.BaseMvpFragment
    @SuppressLint({"ClickableViewAccessibility"})
    protected void initView(View view) {
        this.actionBar = view.findViewById(R.id.actionBar);
        this.actionBar.setTitleText(this.title);
        this.sb_video = (SeekBar) view.findViewById(R.id.sb_video);
        this.sb_video.setOnTouchListener(new View.OnTouchListener() { // from class: com.yftech.libmedia.player.ui.VideoPlayerFragment.11
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view2, MotionEvent motionEvent) {
                if (motionEvent.getAction() != 0) {
                    return false;
                }
                AudioSettingUtil.playSystemClickSoundEffect((Context) Objects.requireNonNull(VideoPlayerFragment.this.getContext()));
                return false;
            }
        });
        this.sb_volume = (SeekBar) view.findViewById(R.id.sb_volume);
        this.sb_volume.setOnTouchListener(new View.OnTouchListener() { // from class: com.yftech.libmedia.player.ui.VideoPlayerFragment.12
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view2, MotionEvent motionEvent) {
                if (motionEvent.getAction() != 0) {
                    return false;
                }
                AudioSettingUtil.playSystemClickSoundEffect((Context) Objects.requireNonNull(VideoPlayerFragment.this.getContext()));
                return false;
            }
        });
        this.sb_volume.setOnSeekBarChangeListener(this.volumeCallbackListener);
        this.control_bar = (LinearLayout) view.findViewById(R.id.control_bar);
        this.iv_control = (ImageView) view.findViewById(R.id.iv_control);
        this.iv_control.setOnClickListener(this);
        view.findViewById(R.id.iv_next).setOnClickListener(this);
        this.iv_volume = (ImageView) view.findViewById(R.id.iv_volume);
        this.iv_volume.setOnClickListener(this);
        view.findViewById(R.id.iv_full_screen).setOnClickListener(this);
        this.tv_time_total = (TextView) view.findViewById(R.id.tv_time_total);
        this.tv_time_index = (TextView) view.findViewById(R.id.tv_time_index);
        this.play_error_prompt = (ImageView) view.findViewById(R.id.play_error_prompt);
        this.tv_video_play_error = (TextView) view.findViewById(R.id.tv_video_play_error);
        this.tv_volume_percent = (TextView) view.findViewById(R.id.tv_volume_percent);
        this.main = (FrameLayout) view.findViewById(R.id.main);
        this.progressBar = (ProgressBar) view.findViewById(R.id.progressBar);
        this.progressBar.setVisibility(0);
        this.player = view.findViewById(R.id.player);
        LogUtil.d("initView:playerId=" + this.player.getId());
        this.player.addVideoCallback(this.callback);
        this.player.setErrorAutoNextDelayMillis(ICarLight.WEL_LIGHT_MODE_SETTING);
        this.player.setSpeedLimitPlayback(1);
        this.player.setPlayMode(100);
        this.player.setOnTouchGesture(true);
        LogUtil.d("initView");
        this.mHandler.sendEmptyMessageDelayed(10, 5000L);
        if (AudioSettingUtil.isMasterMute((Context) Objects.requireNonNull(getContext()))) {
            int streamMaxVolume = AudioSettingUtil.getStreamMaxVolume((Context) Objects.requireNonNull(getContext()), 3);
            this.sb_volume.setMax(streamMaxVolume);
            this.sb_volume.setProgress(0);
            this.tv_volume_percent.setText(String.format(Locale.getDefault(), "%d%%", Integer.valueOf(Math.round(0.0f / streamMaxVolume))));
            this.iv_volume.setImageResource(R.drawable.imgvideo_icon_volume_off);
        } else {
            int streamMaxVolume2 = AudioSettingUtil.getStreamMaxVolume((Context) Objects.requireNonNull(getContext()), 3);
            int streamVolume = AudioSettingUtil.getStreamVolume(getContext(), 3);
            this.sb_volume.setMax(streamMaxVolume2);
            this.sb_volume.setProgress(streamVolume);
            float f = (streamVolume * 100.0f) / streamMaxVolume2;
            this.tv_volume_percent.setText(String.format(Locale.getDefault(), "%d%%", Integer.valueOf(Math.round(f))));
            if (f == 0.0f) {
                this.iv_volume.setImageResource(R.drawable.imgvideo_icon_volume_off);
            } else if (f > 0.0f && f < 30.0f) {
                this.iv_volume.setImageResource(R.drawable.imgvideo_icon_volume_on_01);
            } else if (f >= 30.0f && f < 60.0f) {
                this.iv_volume.setImageResource(R.drawable.imgvideo_icon_volume_on_02);
            } else if (f >= 60.0f && f <= 100.0f) {
                this.iv_volume.setImageResource(R.drawable.imgvideo_icon_volume_on_03);
            }
        }
        setControlBarVisible(4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean getControlBarVisible() {
        return this.control_bar.getVisibility() == 0 || this.actionBar.getVisibility() == 0;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (SystemUtil.isFastDoubleClick()) {
            return;
        }
        if (!this.isError) {
            if (this.mHandler.hasMessages(10)) {
                this.mHandler.removeMessages(10);
            }
            this.mHandler.sendEmptyMessageDelayed(10, 5000L);
        }
        if (view.getId() == R.id.iv_control) {
            this.isControlByClicking = true;
            if (this.player != null) {
                this.player.setPlayState(3);
                return;
            }
            return;
        }
        if (view.getId() == R.id.iv_next) {
            if (this.player != null) {
                this.player.setPlayState(4);
            }
        } else {
            if (view.getId() == R.id.iv_volume) {
                if (!AudioSettingUtil.isMasterMute((Context) Objects.requireNonNull(getContext()))) {
                    AudioSettingUtil.setMasterMute(getContext(), true);
                    return;
                } else {
                    AudioSettingUtil.setMasterMute(getContext(), false);
                    return;
                }
            }
            if (view.getId() == R.id.iv_full_screen) {
                this.isFullScreen = !this.isFullScreen;
                SystemUtil.setSysFullScreen((Activity) Objects.requireNonNull(getActivity()), this.isFullScreen);
                if (this.isFullScreen) {
                    this.main.setPadding(0, 0, 0, 0);
                } else {
                    this.main.setPadding(0, 0, 0, 78);
                }
            }
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onUSBStatusChange(USBStateEvent uSBStateEvent) {
        LogUtil.d("onUSBStatusChange:receiveBroadCast");
        if (uSBStateEvent.isUsbExists || this.index != uSBStateEvent.usbIndex || this.player == null) {
            return;
        }
        this.player.setPlayState(2);
    }

    @Override // com.yftech.libmedia.player.view.IPlayActivityView
    public void displayVideoPlayList(int i, List<MediaFile> list) {
        if (i >= 0) {
            this.player.startPlayList(list, i);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setControlEnable(boolean z) {
        this.iv_control.setEnabled(z);
        this.iv_control.setAlpha(z ? 1.0f : 0.6f);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onMediaSourceWindowChanged(String str) {
        LogUtil.d("onMediaSourceWindowChanged=" + str);
        if ("video_window_start".equalsIgnoreCase(str)) {
            return;
        }
        try {
            LogUtil.d("onMediaSourceWindowChanged=finish VideoActivity");
            getActivity().finish();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
