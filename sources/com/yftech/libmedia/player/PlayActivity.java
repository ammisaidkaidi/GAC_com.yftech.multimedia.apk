package com.yftech.libmedia.player;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemProperties;
import android.text.TextUtils;
import android.util.SparseArray;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.SeekBar;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.Glide;
import com.media.common.event.USBStateForPhotoAndVideoEvent;
import com.media.common.ui.widget.MyActionBar;
import com.media.common.ui.widget.TipsDialog;
import com.media.common.util.AudioSettingUtil;
import com.media.common.util.DateUtil;
import com.media.common.util.DebugLog;
import com.media.common.util.LogUtil;
import com.media.common.util.SharedPrefsUtil;
import com.media.common.util.SystemUtil;
import com.yftech.car.audio.CarAudioManager;
import com.yftech.car.bluetooth.callback.CarBluetoothPhoneCallback;
import com.yftech.car.bluetooth.model.PhoneCall;
import com.yftech.car.media.data.entity.MediaFile;
import com.yftech.car.media.video.VideoPlayer;
import com.yftech.libmedia.R;
import com.yftech.libmedia.player.presenter.PlayPresenter;
import com.yftech.libmedia.player.view.IPlayActivityView;
import com.yftech.libmusic.utils.CarPlayMusicManager;
import com.yftech.libmvpmodule.mvp.BaseMvpActivity;
import com.yftech.vehicle.sdk.CarInfoManager;
import java.util.List;
import javax.microedition.khronos.opengles.GL10;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

@Deprecated
/* loaded from: /home/user/work/dex/classes4.dex */
public class PlayActivity extends BaseMvpActivity<PlayPresenter> implements View.OnClickListener, IPlayActivityView {
    private MyActionBar actionBar;
    private LinearLayout control_bar;
    private TipsDialog dialog;
    private FrameLayout fl_progress;
    private int index;
    private ImageView iv_behind;
    private ImageView iv_control;
    private ImageView iv_frame;
    private ImageView iv_front;
    private ImageView iv_volume;
    private String playIndexPath;
    private VideoPlayer player;
    private SeekBar sb_video;
    private SeekBar sb_volume;
    private TextView tv_progress;
    private TextView tv_time_index;
    private TextView tv_time_total;
    private View v_cover;
    private boolean isPagePlaying = true;
    private boolean isControlByClicking = false;
    private boolean isPlayingBeforeSwitchPage = false;
    private final int RC_CONTROL_BAR = 10;
    private final int INTERVAL = 5000;
    private final int RC_FRAME = 20;
    private boolean isFullScreen = false;
    private SparseArray<byte[]> frameCache = new SparseArray<>();
    private final int RC_SPEED_ORVERFLOW = 30;
    private int vehicleSpeedLimit = 20;
    private int vehicleSpeedResume = 0;
    private final Handler mHandler = new Handler(Looper.getMainLooper()) { // from class: com.yftech.libmedia.player.PlayActivity.1
        @Override // android.os.Handler
        public void handleMessage(@NonNull Message message) {
            if (message.what == 10) {
                PlayActivity.this.setControlBarVisible(8);
                return;
            }
            if (message.what == 20) {
                Glide.with(PlayActivity.this.getApplicationContext()).load((byte[]) message.obj).into(PlayActivity.this.iv_frame);
                return;
            }
            if (message.what == 30) {
                int i = message.arg1;
                if (i < PlayActivity.this.vehicleSpeedLimit) {
                    if (i == PlayActivity.this.vehicleSpeedResume) {
                        if (PlayActivity.this.dialog != null && PlayActivity.this.dialog.isVisible()) {
                            PlayActivity.this.dialog.dismiss();
                        }
                        if (PlayActivity.this.player != null) {
                            PlayActivity.this.player.setPlayState(1);
                            return;
                        }
                        return;
                    }
                    return;
                }
                SharedPrefsUtil.getInstance(PlayActivity.this.getApplicationContext()).save("TAG_VIDEO_VECHICLE_OVERFLOW_HOLDING", true);
                if (PlayActivity.this.player != null) {
                    PlayActivity.this.player.setPlayState(2);
                }
                if (PlayActivity.this.dialog == null || !PlayActivity.this.dialog.isVisible()) {
                    String string = PlayActivity.this.getString(R.string.video_play_speed_overflow_tips);
                    PlayActivity.this.dialog = TipsDialog.newInstance(string);
                    PlayActivity.this.dialog.setOnConfirmClickListener(new TipsDialog.OnConfirmClickListener() { // from class: com.yftech.libmedia.player.PlayActivity.1.1
                        public void onConfirm() {
                            SharedPrefsUtil.getInstance(PlayActivity.this.getApplicationContext()).save("TAG_VIDEO_VECHICLE_OVERFLOW_HOLDING", false);
                            PlayActivity.this.onBackPressed();
                        }
                    });
                    PlayActivity.this.dialog.show(PlayActivity.this.getSupportFragmentManager(), string);
                }
            }
        }
    };
    private BroadcastReceiver receiver = new BroadcastReceiver() { // from class: com.yftech.libmedia.player.PlayActivity.2
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            if ("test".equals(action)) {
                int intExtra = intent.getIntExtra("value", -1);
                if (intExtra >= 0) {
                    PlayActivity.this.carInfoListener.onVehicleSpeedChanged(intExtra);
                    return;
                }
                return;
            }
            "aaaa".equals(action);
        }
    };
    private CarBluetoothPhoneCallback bluetoothPhoneCallback = new CarBluetoothPhoneCallback() { // from class: com.yftech.libmedia.player.PlayActivity.5
        public void onBluetoothPhoneCallStateChanged(List<PhoneCall> list) {
            if (list == null || list.isEmpty()) {
                return;
            }
            PhoneCall phoneCall = list.get(0);
            LogUtil.d("onBluetoothPhoneCallStateChanged：state=" + phoneCall.getCallState());
            if (phoneCall.getCallState() == 2 && PlayActivity.this.isDisplaying) {
                PlayActivity.this.onPause();
            } else if (phoneCall.getCallState() == 7 && PlayActivity.this.isDisplaying) {
                PlayActivity.this.onResume();
            }
        }
    };
    private CarAudioManager.CarAudioCallback audioCallback = new CarAudioManager.CarAudioCallback() { // from class: com.yftech.libmedia.player.PlayActivity.6
        public void onChangedVolume(int i, int i2, int i3, boolean z, int i4) {
            LogUtil.d("onChangedVolume:streamType=" + i + ", curValue=" + i2 + ", flag=" + i4);
            if (i4 == 4) {
                return;
            }
            PlayActivity.this.sb_volume.setMax(i3);
            PlayActivity.this.sb_volume.setProgress(i2);
            float f = (i2 * 100.0f) / i3;
            if (f == 0.0f) {
                PlayActivity.this.iv_volume.setImageResource(R.mipmap.pv_icon_volume_off);
                return;
            }
            if (f >= 0.0f && f < 30.0f) {
                PlayActivity.this.iv_volume.setImageResource(R.mipmap.pv_icon_volume_on_01);
                return;
            }
            if (f >= 30.0f && f < 60.0f) {
                PlayActivity.this.iv_volume.setImageResource(R.mipmap.pv_icon_volume_on_02);
            } else {
                if (f < 60.0f || f >= 100.0f) {
                    return;
                }
                PlayActivity.this.iv_volume.setImageResource(R.mipmap.pv_icon_volume_on_03);
            }
        }

        public void onChangedMediaSource(int i, String str, String str2) {
            LogUtil.d("onChangedMediaSource:streamType=" + i + ", packageName=" + str + ", " + str2);
        }
    };
    private CarInfoManager.CarInfoListener carInfoListener = new CarInfoManager.CarInfoListener() { // from class: com.yftech.libmedia.player.PlayActivity.7
        @Override // com.yftech.vehicle.sdk.CarInfoManager.CarInfoListener
        public void onVehicleSpeedChanged(int i) {
            LogUtil.d("onVehicleSpeedChanged:Speed=" + i);
            Message obtainMessage = PlayActivity.this.mHandler.obtainMessage();
            obtainMessage.what = 30;
            obtainMessage.arg1 = i;
            PlayActivity.this.mHandler.sendMessage(obtainMessage);
        }
    };
    private CarPlayMusicManager.CarPlayMusicListener carPlayMusicListener = new CarPlayMusicManager.CarPlayMusicListener() { // from class: com.yftech.libmedia.player.PlayActivity.8
        @Override // com.yftech.libmusic.utils.CarPlayMusicManager.CarPlayMusicListener
        public void onCarplayConnectChanged(int i) {
        }

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
        public void onResourceStateChanged(boolean z) {
            if (!z) {
                PlayActivity.this.onResume();
            } else {
                PlayActivity.this.onPause();
            }
        }
    };
    private int video_duration = 0;
    private boolean isFinish = false;
    private final VideoPlayer.VideoCallback callback = new VideoPlayer.VideoCallback() { // from class: com.yftech.libmedia.player.PlayActivity.10
        public void onPlayChange(MediaFile mediaFile) {
            LogUtil.d("onPlayChange:path=" + mediaFile.getData());
            PlayActivity.this.actionBar.setTitleText(mediaFile.getFileName());
            if (PlayActivity.this.index == 0) {
                SharedPrefsUtil.getInstance(PlayActivity.this.getApplicationContext()).save("TAG_VIDEO_VIEWED_LAST_FOR_USB_1", mediaFile.getData());
            } else {
                SharedPrefsUtil.getInstance(PlayActivity.this.getApplicationContext()).save("TAG_VIDEO_VIEWED_LAST_FOR_USB_2", mediaFile.getData());
            }
            PlayActivity.this.setControlEnable(true);
        }

        public void onPrepared(int i) {
            PlayActivity.this.isFinish = false;
            PlayActivity.this.frameCache.clear();
            PlayActivity.this.video_duration = i;
            PlayActivity.this.tv_time_total.setText(DateUtil.getTime(i));
        }

        public void onProgress(int i) {
            if (PlayActivity.this.isPressing) {
                return;
            }
            PlayActivity.this.tv_time_index.setText(DateUtil.getTime(i));
            if (PlayActivity.this.video_duration != 0) {
                PlayActivity.this.sb_video.setProgress(Math.round((i * 100.0f) / PlayActivity.this.video_duration));
            }
        }

        public void onPlayingChange(boolean z) {
            LogUtil.d("onPlayingChange:isPlaying=" + z);
            PlayActivity.this.iv_control.setSelected(z);
            if (PlayActivity.this.isControlByClicking) {
                PlayActivity.this.isPagePlaying = z;
                PlayActivity.this.isControlByClicking = false;
            }
        }

        public void onPlaySequenceCompletion() {
            PlayActivity.this.isFinish = true;
            if (PlayActivity.this.player != null) {
                PlayActivity.this.player.setPlayState(2);
            }
            PlayActivity.this.setControlBarVisible(0);
            if (PlayActivity.this.mHandler.hasMessages(10)) {
                PlayActivity.this.mHandler.removeMessages(10);
            }
        }

        public void onDoubleClick(boolean z) {
            LogUtil.d("onDoubleClick:isDoubleClick=" + z);
            if (PlayActivity.this.isFinish) {
                return;
            }
            if (!PlayActivity.this.getControlBarVisible()) {
                PlayActivity.this.setControlBarVisible(0);
                if (PlayActivity.this.mHandler.hasMessages(10)) {
                    PlayActivity.this.mHandler.removeMessages(10);
                }
                PlayActivity.this.mHandler.sendEmptyMessageDelayed(10, 5000L);
                return;
            }
            PlayActivity.this.setControlBarVisible(8);
            if (PlayActivity.this.mHandler.hasMessages(10)) {
                PlayActivity.this.mHandler.removeMessages(10);
            }
        }

        public boolean onPlayerError(int i, int i2) {
            LogUtil.d("onPlayerError:what=" + i + ", extra=" + i2);
            if (i == 100 && i2 == 1) {
                return true;
            }
            MediaFile currentPlay = PlayActivity.this.player.getCurrentPlay();
            if (currentPlay == null || TextUtils.isEmpty(currentPlay.getData()) || !currentPlay.getData().equals(PlayActivity.this.playIndexPath)) {
                if (PlayActivity.this.player != null) {
                    PlayActivity.this.player.setPlayState(4);
                }
            } else {
                TipsDialog newInstance = TipsDialog.newInstance(PlayActivity.this.getString(R.string.video_play_error_tips));
                newInstance.setOnConfirmClickListener(new TipsDialog.OnConfirmClickListener() { // from class: com.yftech.libmedia.player.PlayActivity.10.1
                    public void onConfirm() {
                        PlayActivity.this.onBackPressed();
                    }
                });
                newInstance.show(PlayActivity.this.getSupportFragmentManager(), "onPlayerError");
                PlayActivity.this.setControlEnable(false);
            }
            return true;
        }
    };
    private boolean isPressing = false;
    private SeekBar.OnSeekBarChangeListener videoCallbackListener = new SeekBar.OnSeekBarChangeListener() { // from class: com.yftech.libmedia.player.PlayActivity.11
        private boolean isPlaying = false;
        private int timeStart;

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onProgressChanged(SeekBar seekBar, int i, boolean z) {
            MediaFile currentPlay;
            if (z) {
                float f = i;
                int round = Math.round((((f * 100.0f) / PlayActivity.this.sb_video.getMax()) * PlayActivity.this.video_duration) / 100.0f);
                LogUtil.d("video seekBar moving by positionTime=" + round);
                long j = (long) round;
                PlayActivity.this.tv_time_index.setText(DateUtil.getTime(j));
                int[] iArr = new int[2];
                PlayActivity.this.sb_video.getLocationInWindow(iArr);
                int i2 = iArr[0];
                int width = PlayActivity.this.sb_video.getWidth();
                float width2 = PlayActivity.this.sb_video.getWidth();
                float f2 = (width - width2) / 2.0f;
                DebugLog.e("\nleft:" + i2 + "\nviewWidth:" + width + "\nactualWidth:" + width2 + "\npadding:" + f2 + "\n");
                int round2 = Math.round(((width2 * f) / 100.0f) + ((float) i2) + f2);
                FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) PlayActivity.this.fl_progress.getLayoutParams();
                layoutParams.leftMargin = round2 + (-106);
                PlayActivity.this.fl_progress.setLayoutParams(layoutParams);
                if (PlayActivity.this.fl_progress.getVisibility() != 0) {
                    PlayActivity.this.fl_progress.setVisibility(0);
                }
                PlayActivity.this.tv_progress.setText(DateUtil.getTime(j));
                if (round > this.timeStart) {
                    PlayActivity.this.iv_front.setVisibility(8);
                    PlayActivity.this.iv_behind.setVisibility(0);
                } else {
                    PlayActivity.this.iv_front.setVisibility(0);
                    PlayActivity.this.iv_behind.setVisibility(8);
                }
                if (PlayActivity.this.player == null || (currentPlay = PlayActivity.this.player.getCurrentPlay()) == null || TextUtils.isEmpty(currentPlay.getData())) {
                    return;
                }
                PlayActivity.this.player.setPlayProgress(round, PlayActivity.this.iv_frame);
            }
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onStartTrackingTouch(SeekBar seekBar) {
            PlayActivity.this.isPressing = true;
            if (PlayActivity.this.player != null) {
                this.isPlaying = PlayActivity.this.player.isPlaying();
                PlayActivity.this.player.setPlayState(2);
            }
            this.timeStart = Math.round((((PlayActivity.this.sb_video.getProgress() * 100.0f) / PlayActivity.this.sb_video.getMax()) * PlayActivity.this.video_duration) / 100.0f);
            LogUtil.d("video seekBar touch begin in time of :" + this.timeStart);
            PlayActivity.this.setControlBarVisible(0);
            if (PlayActivity.this.mHandler.hasMessages(10)) {
                PlayActivity.this.mHandler.removeMessages(10);
            }
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onStopTrackingTouch(SeekBar seekBar) {
            int round = Math.round((((seekBar.getProgress() * 100.0f) / PlayActivity.this.sb_video.getMax()) * PlayActivity.this.video_duration) / 100.0f);
            LogUtil.d("video seekBar leave by positionTime=" + round);
            PlayActivity.this.isPressing = false;
            if (PlayActivity.this.player != null) {
                PlayActivity.this.player.setPlayProgress(round);
                if (this.isPlaying) {
                    PlayActivity.this.player.setPlayState(1);
                }
            }
            if (PlayActivity.this.fl_progress != null) {
                PlayActivity.this.fl_progress.setVisibility(8);
            }
            if (PlayActivity.this.mHandler.hasMessages(10)) {
                PlayActivity.this.mHandler.removeMessages(10);
            }
            PlayActivity.this.mHandler.sendEmptyMessageDelayed(10, 5000L);
        }
    };
    private SeekBar.OnSeekBarChangeListener volumeCallbackListener = new SeekBar.OnSeekBarChangeListener() { // from class: com.yftech.libmedia.player.PlayActivity.12
        private int max;
        private int resourceId = 0;

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onProgressChanged(SeekBar seekBar, int i, boolean z) {
            if (z) {
                LogUtil.d("volume seekBar moving by progress=" + i);
                AudioSettingUtil.setStreamVolume(PlayActivity.this.getApplicationContext(), 3, i);
            }
            switchImageResource(i);
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onStartTrackingTouch(SeekBar seekBar) {
            LogUtil.d("volume seekBar touch begin!!!!!");
            this.max = PlayActivity.this.sb_volume.getMax();
            PlayActivity.this.setControlBarVisible(0);
            if (PlayActivity.this.mHandler.hasMessages(10)) {
                PlayActivity.this.mHandler.removeMessages(10);
            }
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onStopTrackingTouch(SeekBar seekBar) {
            if (PlayActivity.this.mHandler.hasMessages(10)) {
                PlayActivity.this.mHandler.removeMessages(10);
            }
            PlayActivity.this.mHandler.sendEmptyMessageDelayed(10, 5000L);
            switchImageResource(seekBar.getProgress());
            int progress = seekBar.getProgress();
            AudioSettingUtil.setStreamVolume(PlayActivity.this.getApplicationContext(), 3, progress);
            LogUtil.d("volume seekBar leave by progress=" + progress);
        }

        private void switchImageResource(int i) {
            float f = (i * 100.0f) / this.max;
            if (f == 0.0f && this.resourceId != R.mipmap.pv_icon_volume_off) {
                PlayActivity.this.iv_volume.setImageResource(R.mipmap.pv_icon_volume_off);
                this.resourceId = R.mipmap.pv_icon_volume_off;
                return;
            }
            if (f >= 0.0f && f < 30.0f && this.resourceId != R.mipmap.pv_icon_volume_on_01) {
                PlayActivity.this.iv_volume.setImageResource(R.mipmap.pv_icon_volume_on_01);
                this.resourceId = R.mipmap.pv_icon_volume_on_01;
                return;
            }
            if (f >= 30.0f && f < 60.0f && this.resourceId != R.mipmap.pv_icon_volume_on_02) {
                PlayActivity.this.iv_volume.setImageResource(R.mipmap.pv_icon_volume_on_02);
                this.resourceId = R.mipmap.pv_icon_volume_on_02;
            } else {
                if (f < 60.0f || f >= 100.0f || this.resourceId == R.mipmap.pv_icon_volume_on_03) {
                    return;
                }
                PlayActivity.this.iv_volume.setImageResource(R.mipmap.pv_icon_volume_on_03);
                this.resourceId = R.mipmap.pv_icon_volume_on_03;
            }
        }
    };

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Can't rename method to resolve collision */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.yftech.libmvpmodule.mvp.BaseMvpActivity
    public PlayPresenter createPresenter() {
        return new PlayPresenter(this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.yftech.libmvpmodule.mvp.BaseMvpActivity
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        getWindow().setFlags(128, 128);
        setContentView(R.layout.activity_play);
        LogUtil.d("onCreate");
        CarPlayMusicManager.init(getApplicationContext());
        this.index = getIntent().getIntExtra("index", -1);
        this.playIndexPath = getIntent().getStringExtra("playIndexPath");
        initW();
        CarAudioManager.getInstance().registerCarAudioCallback(this.audioCallback, (Handler) null);
        CarInfoManager.get().registerListener(this.carInfoListener);
        CarPlayMusicManager.getInstance(this).registerCarPlayMusicListener(this.carPlayMusicListener);
        EventBus.getDefault().register(this);
        ((PlayPresenter) getPresenter()).getVideoPlayList(this.index, this.playIndexPath);
        registerTestReceiver();
    }

    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        setIntent(intent);
        LogUtil.d("onNewIntent");
        this.index = getIntent().getIntExtra("index", -1);
        this.playIndexPath = getIntent().getStringExtra("playIndexPath");
    }

    private void registerTestReceiver() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("test");
        registerReceiver(this.receiver, intentFilter);
    }

    public void onBackPressed() {
        super.onBackPressed();
        this.isPlayingBeforeSwitchPage = true;
        SharedPrefsUtil.getInstance(getApplicationContext()).save("TAG_VIDEO_ON_BACK_PRESS_BY_USER_BEFORE_SWITCH_PAGE", true);
    }

    protected void onPause() {
        super.onPause();
        LogUtil.d("onPause:isPlaying=" + this.isPagePlaying);
        if (this.player != null) {
            if (!this.isPlayingBeforeSwitchPage) {
                SharedPrefsUtil.getInstance(getApplicationContext()).save("TAG_VIDEO_ON_BACK_PRESS_BY_USER_BEFORE_SWITCH_PAGE", false);
            }
            this.player.setPlayState(2);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.yftech.libmvpmodule.mvp.BaseMvpActivity
    public void onResume() {
        super.onResume();
        boolean z = SystemProperties.getBoolean("sys.atc.carplay.app.show_ui", false);
        LogUtil.d("onResume:isCarPlayDisplaying=" + z);
        if (z) {
            return;
        }
        if (30 >= this.vehicleSpeedLimit) {
            if (SharedPrefsUtil.getInstance(getApplicationContext()).getBoolean("TAG_VIDEO_VECHICLE_OVERFLOW_HOLDING", false)) {
                if (this.dialog == null || this.dialog.isVisible()) {
                    this.dialog = TipsDialog.newInstance(getString(R.string.video_play_speed_overflow_tips));
                }
                this.dialog.setOnConfirmClickListener(new TipsDialog.OnConfirmClickListener() { // from class: com.yftech.libmedia.player.PlayActivity.3
                    public void onConfirm() {
                        SharedPrefsUtil.getInstance(PlayActivity.this.getApplicationContext()).save("TAG_VIDEO_VECHICLE_OVERFLOW_HOLDING", false);
                        PlayActivity.this.onBackPressed();
                    }
                });
                this.dialog.show(getSupportFragmentManager(), TipsDialog.class.getSimpleName());
                return;
            }
            setResult(GL10.GL_PACK_ALIGNMENT, getIntent());
            onBackPressed();
            return;
        }
        SharedPrefsUtil.getInstance(getApplicationContext()).save("TAG_VIDEO_VECHICLE_OVERFLOW_HOLDING", false);
        if (this.player != null) {
            new Handler(Looper.getMainLooper()).postDelayed(new Runnable() { // from class: com.yftech.libmedia.player.PlayActivity.4
                @Override // java.lang.Runnable
                public void run() {
                    PlayActivity.this.player.setPlayState(1);
                }
            }, 300L);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.yftech.libmvpmodule.mvp.BaseMvpActivity
    public void onDestroy() {
        super.onDestroy();
        if (this.player != null) {
            this.player.release();
            this.player = null;
        }
        CarAudioManager.getInstance().unregisterCarAudioCallback(this.audioCallback);
        CarInfoManager.get().unregisterListener(this.carInfoListener);
        CarPlayMusicManager.getInstance(this).unregisterCarPlayMusicListener(this.carPlayMusicListener);
        EventBus.getDefault().unregister(this);
        unregisterReceiver(this.receiver);
    }

    private void initW() {
        this.actionBar = findViewById(R.id.actionBar);
        this.actionBar.setTitleText(getString(R.string.video_name));
        this.v_cover = findViewById(R.id.v_cover);
        this.sb_video = (SeekBar) findViewById(R.id.sb_video);
        this.sb_video.setOnSeekBarChangeListener(this.videoCallbackListener);
        this.sb_volume = (SeekBar) findViewById(R.id.sb_volume);
        this.sb_volume.setOnSeekBarChangeListener(this.volumeCallbackListener);
        this.control_bar = (LinearLayout) findViewById(R.id.control_bar);
        this.iv_control = (ImageView) findViewById(R.id.iv_control);
        this.iv_control.setOnClickListener(this);
        findViewById(R.id.iv_next).setOnClickListener(this);
        this.iv_volume = (ImageView) findViewById(R.id.iv_volume);
        this.iv_volume.setOnClickListener(this);
        findViewById(R.id.iv_full_screen).setOnClickListener(this);
        this.fl_progress = (FrameLayout) findViewById(R.id.fl_progress);
        this.iv_front = (ImageView) findViewById(R.id.iv_front);
        this.iv_behind = (ImageView) findViewById(R.id.iv_behind);
        this.iv_frame = (ImageView) findViewById(R.id.iv_frame);
        this.tv_progress = (TextView) findViewById(R.id.tv_progress);
        this.tv_time_total = (TextView) findViewById(R.id.tv_time_total);
        this.tv_time_index = (TextView) findViewById(R.id.tv_time_index);
        this.player = findViewById(R.id.player);
        this.player.setVideoCallback(this.callback);
        this.player.setPlayMode(103);
        this.player.setOnTouchGesture(false);
        this.player.setOnClickListener(new View.OnClickListener() { // from class: com.yftech.libmedia.player.PlayActivity.9
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (!PlayActivity.this.getControlBarVisible()) {
                    PlayActivity.this.setControlBarVisible(0);
                    if (PlayActivity.this.mHandler.hasMessages(10)) {
                        PlayActivity.this.mHandler.removeMessages(10);
                    }
                    PlayActivity.this.mHandler.sendEmptyMessageDelayed(10, 5000L);
                    return;
                }
                PlayActivity.this.setControlBarVisible(8);
                if (PlayActivity.this.mHandler.hasMessages(10)) {
                    PlayActivity.this.mHandler.removeMessages(10);
                }
            }
        });
        this.mHandler.sendEmptyMessageDelayed(10, 5000L);
        int streamMaxVolume = AudioSettingUtil.getStreamMaxVolume(getApplicationContext(), 3);
        int streamVolume = AudioSettingUtil.getStreamVolume(getApplicationContext(), 3);
        this.sb_volume.setMax(streamMaxVolume);
        this.sb_volume.setProgress(streamVolume);
        float f = (streamVolume * 100.0f) / streamMaxVolume;
        if (f == 0.0f) {
            this.iv_volume.setImageResource(R.mipmap.pv_icon_volume_off);
            return;
        }
        if (f >= 0.0f && f < 30.0f) {
            this.iv_volume.setImageResource(R.mipmap.pv_icon_volume_on_01);
            return;
        }
        if (f >= 30.0f && f < 60.0f) {
            this.iv_volume.setImageResource(R.mipmap.pv_icon_volume_on_02);
        } else {
            if (f < 60.0f || f >= 100.0f) {
                return;
            }
            this.iv_volume.setImageResource(R.mipmap.pv_icon_volume_on_03);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setControlBarVisible(int i) {
        this.control_bar.setVisibility(i);
        this.actionBar.setVisibility(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean getControlBarVisible() {
        return this.control_bar.getVisibility() == 0 || this.actionBar.getVisibility() == 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (this.mHandler.hasMessages(10)) {
            this.mHandler.removeMessages(10);
        }
        this.mHandler.sendEmptyMessageDelayed(10, 5000L);
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
                int streamVolume = AudioSettingUtil.getStreamVolume(getApplicationContext(), 3);
                if (streamVolume > 0) {
                    SharedPrefsUtil.getInstance(getApplicationContext()).save("TAG_VOLUME_BEFORE_MUTE", Integer.valueOf(streamVolume));
                    AudioSettingUtil.setStreamVolume(getApplicationContext(), 3, 0);
                    return;
                } else {
                    AudioSettingUtil.setStreamVolume(getApplicationContext(), 3, SharedPrefsUtil.getInstance(getApplicationContext()).getInt("TAG_VOLUME_BEFORE_MUTE", 0));
                    return;
                }
            }
            if (view.getId() == R.id.iv_full_screen) {
                this.isFullScreen = !this.isFullScreen;
                SystemUtil.setSysFullScreen(this, this.isFullScreen);
            }
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onUSBStatusChange(USBStateForPhotoAndVideoEvent uSBStateForPhotoAndVideoEvent) {
        DebugLog.e("onUSBStatusChange:receiveBroadCast");
        if (uSBStateForPhotoAndVideoEvent.isUsbExists || this.index != uSBStateForPhotoAndVideoEvent.usbIndex) {
            return;
        }
        if (this.player != null) {
            this.player.setPlayState(2);
        }
        setResult(2222, getIntent());
        onBackPressed();
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
        this.sb_video.setEnabled(z);
        this.iv_control.setAlpha(z ? 1.0f : 0.6f);
    }
}
