package com.yftech.libmusic;

import android.bluetooth.BluetoothDevice;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.drawable.AnimationDrawable;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentTransaction;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.bumptech.glide.Glide;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.resource.drawable.DrawableTransitionOptions;
import com.bumptech.glide.request.RequestOptions;
import com.bumptech.glide.request.transition.DrawableCrossFadeFactory;
import com.media.common.util.AudioSettingUtil;
import com.media.common.util.DebugLog;
import com.media.common.util.GlideRoundTransform;
import com.media.common.util.LogUtil;
import com.media.common.util.SharedPrefsUtil;
import com.media.common.util.SystemUtil;
import com.yftech.car.audio.CarAudioManager;
import com.yftech.car.bluetooth.CarBluetoothManager;
import com.yftech.car.bluetooth.callback.CarBluetoothMusicCallback;
import com.yftech.car.media.data.CarMediaDataManager;
import com.yftech.car.media.music.CarMusicManager;
import com.yftech.libmusic.dialog.MusicSoundEffectsDialog;
import com.yftech.libmusic.event.MusicLyricHideEvent;
import com.yftech.libmusic.event.MusicPlayStatusEvent;
import com.yftech.libmusic.ui.MusicLyricFragment;
import com.yftech.libmusic.ui.MusicMainFragment;
import com.yftech.libmusic.ui.MusicPlayerFragment;
import com.yftech.libmusic.utils.CarLifeMusicManager;
import com.yftech.libmusic.utils.CarPlayMusicManager;
import com.yftech.libmvpmodule.mvp.BaseMvpActivity;
import com.yftech.libmvpmodule.mvp.BaseMvpPresenter;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* loaded from: /home/user/work/dex/classes4.dex */
public class MusicMainActivity extends BaseMvpActivity implements View.OnClickListener {
    public Fragment currentFragment;
    private MusicSoundEffectsDialog dialog;
    private ImageView iv_album;
    private ImageView iv_playing;
    private ImageView iv_playing_extra;
    private ImageView iv_playing_extra_reflection;
    private ImageView iv_sound_effects;
    private AnimationDrawable mMusicPlayingAnimationDrawable;
    private AnimationDrawable mMusicPlayingExtraAnimationDrawable;
    private String music_source;
    private String albumPath = null;
    private final MusicSourceInformationReceiver receiver = new MusicSourceInformationReceiver();
    private BroadcastReceiver testReceiver = new BroadcastReceiver() { // from class: com.yftech.libmusic.MusicMainActivity.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if ("test".equals(intent.getAction())) {
                intent.getIntExtra("value", -1);
            }
        }
    };
    private View.OnTouchListener onTouchListener = new View.OnTouchListener() { // from class: com.yftech.libmusic.MusicMainActivity.3
        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            Fragment findFragmentByTag;
            if (motionEvent.getAction() != 0) {
                return false;
            }
            String currentMediaSource = CarAudioManager.getInstance().getCurrentMediaSource();
            if (TextUtils.isEmpty(currentMediaSource)) {
                return false;
            }
            String[] split = currentMediaSource.split(",");
            if (split.length < 3) {
                return false;
            }
            String currentSourceByClientId = AudioSettingUtil.getCurrentSourceByClientId(split[2]);
            if ((!"MUSIC_SOURCE_OF_USB1".equals(currentSourceByClientId) && !"MUSIC_SOURCE_OF_USB2".equals(currentSourceByClientId)) || (findFragmentByTag = MusicMainActivity.this.getSupportFragmentManager().findFragmentByTag(MusicLyricFragment.class.getSimpleName())) == null || !findFragmentByTag.isVisible()) {
                return false;
            }
            AudioSettingUtil.playSystemClickSoundEffect(MusicMainActivity.this.getApplicationContext());
            EventBus.getDefault().post(new MusicLyricHideEvent());
            return false;
        }
    };
    private final CarMediaDataManager.OnDataChangeCallback dataChangeCallback = new CarMediaDataManager.OnDataChangeCallback() { // from class: com.yftech.libmusic.MusicMainActivity.4
        public void onUsbStatusChange(int i, boolean z) {
            LogUtil.e("onUsbStatusChange:" + i);
            Intent intent = new Intent();
            intent.setAction(MusicSourceInformationReceiver.ACTION_USB_STATUS_CHANGE);
            intent.putExtra("usbIndex", i);
            intent.putExtra("isUsbExists", z);
            LocalBroadcastManager.getInstance(MusicMainActivity.this.getApplicationContext()).sendBroadcast(intent);
        }

        public void onScanStatusChange(int i, boolean z) {
            LogUtil.d("onScanStatusChange:index=" + i + ", isScanner=" + z);
        }

        public void onMusicDataChange(int i) {
            LogUtil.d("onMusicDataChange:index=" + i);
        }

        public void onVideoDataChange(int i) {
            super.onVideoDataChange(i);
        }

        public void onPhotoDataChange(int i) {
            super.onPhotoDataChange(i);
        }

        public void onTextDataChange(int i) {
            super.onTextDataChange(i);
        }
    };
    private final CarBluetoothMusicCallback bluetoothMusicCallback = new CarBluetoothMusicCallback() { // from class: com.yftech.libmusic.MusicMainActivity.5
        private String addrees = null;

        public void onBluetoothAvrcpConnectStateChanged(BluetoothDevice bluetoothDevice, int i) {
            LogUtil.e("onBluetoothAvrcpConnectStateChanged:" + i);
            if (i != 2 || TextUtils.isEmpty(this.addrees)) {
                if (i == 0) {
                    this.addrees = null;
                } else if (i == 2 && TextUtils.isEmpty(this.addrees) && bluetoothDevice != null) {
                    this.addrees = bluetoothDevice.getAddress();
                }
                Intent intent = new Intent();
                intent.setAction(MusicSourceInformationReceiver.ACTION_BLUETOOTH_STATUS_CHANGE);
                intent.putExtra("state", i);
                intent.putExtra("deviceName", bluetoothDevice != null ? bluetoothDevice.getName() : "");
                LocalBroadcastManager.getInstance(MusicMainActivity.this.getApplicationContext()).sendBroadcast(intent);
            }
        }
    };
    private final CarLifeMusicManager.OnCarLifeDataChangedCallback carlifeDataChangedCallback = new CarLifeMusicManager.OnCarLifeDataChangedCallback() { // from class: com.yftech.libmusic.MusicMainActivity.6
        @Override // com.yftech.libmusic.utils.CarLifeMusicManager.OnCarLifeDataChangedCallback
        public void onMusicDurationChanged(int i) {
        }

        @Override // com.yftech.libmusic.utils.CarLifeMusicManager.OnCarLifeDataChangedCallback
        public void onMusicInformationChanged(CarLifeMusicManager.OnCarLifeDataChangedCallback.MusicInfo musicInfo) {
        }

        @Override // com.yftech.libmusic.utils.CarLifeMusicManager.OnCarLifeDataChangedCallback
        public void onMusicPlayStatusChanged(int i) {
        }

        @Override // com.yftech.libmusic.utils.CarLifeMusicManager.OnCarLifeDataChangedCallback
        public void onMusicProgressChanged(int i) {
        }

        @Override // com.yftech.libmusic.utils.CarLifeMusicManager.OnCarLifeDataChangedCallback
        public void onConnectionStatusChanged(boolean z) {
            DebugLog.e("onConnectionStatusChanged:" + z);
            Intent intent = new Intent();
            intent.setAction(MusicSourceInformationReceiver.ACTION_CARLIFE_STATUS_CHANGE);
            intent.putExtra("mIsCarLifeConnect", z);
            LocalBroadcastManager.getInstance(MusicMainActivity.this.getApplicationContext()).sendBroadcast(intent);
        }
    };
    private final String ACTION_SOURCE_WINDOW_START = "media_window_start";

    @Override // com.yftech.libmvpmodule.mvp.BaseMvpActivity
    protected BaseMvpPresenter createPresenter() {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.yftech.libmvpmodule.mvp.BaseMvpActivity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_music_main);
        LogUtil.d("onCreate start");
        CarPlayMusicManager.init(getApplicationContext());
        CarMediaDataManager.getInstance().registerCarDataControlCallback(this.dataChangeCallback);
        CarBluetoothManager.getInstance().registerBluetoothMusicCallback(this.bluetoothMusicCallback, (Handler) null);
        CarLifeMusicManager.getInstance().registerMusicControlCallback(this.carlifeDataChangedCallback);
        this.music_source = getIntent().getStringExtra("music_source");
        LogUtil.d("music_source=" + this.music_source);
        checkAction();
        if (TextUtils.isEmpty(getIntent().getAction()) && TextUtils.isEmpty(this.music_source)) {
            checkPlaying();
        }
        initW();
        EventBus.getDefault().register(this);
        registerReceiver();
        registerTestReceiver();
        LogUtil.d("onCreate end");
    }

    private void registerTestReceiver() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("test");
        registerReceiver(this.testReceiver, intentFilter);
    }

    private void checkAction() {
        boolean z;
        String action = getIntent().getAction();
        LogUtil.d("action=" + action);
        if ("com.yftech.intent.action.start.music.bt".equals(action)) {
            if (!CarBluetoothManager.getInstance().isConnected(12)) {
                this.music_source = "";
                return;
            } else {
                this.music_source = "MUSIC_SOURCE_OF_BLUETOOTH";
                return;
            }
        }
        if ("com.yftech.intent.action.start.music.usb".equals(action)) {
            if (TextUtils.isEmpty(this.music_source)) {
                boolean isUsbExists = CarMediaDataManager.getInstance().isUsbExists(0);
                boolean isScanner = CarMediaDataManager.getInstance().isScanner(0);
                boolean z2 = CarMediaDataManager.getInstance().getMusicFileExists() == 1 || CarMediaDataManager.getInstance().getMusicFileExists() == 3;
                if (isUsbExists && !isScanner && z2) {
                    this.music_source = "MUSIC_SOURCE_OF_USB1";
                } else {
                    boolean isUsbExists2 = CarMediaDataManager.getInstance().isUsbExists(1);
                    boolean isScanner2 = CarMediaDataManager.getInstance().isScanner(1);
                    z = CarMediaDataManager.getInstance().getMusicFileExists() == 2 || CarMediaDataManager.getInstance().getMusicFileExists() == 3;
                    if (isUsbExists2 && !isScanner2 && z) {
                        this.music_source = "MUSIC_SOURCE_OF_USB2";
                    }
                }
            } else if ("MUSIC_SOURCE_OF_USB1".equals(this.music_source)) {
                boolean isUsbExists3 = CarMediaDataManager.getInstance().isUsbExists(0);
                boolean isScanner3 = CarMediaDataManager.getInstance().isScanner(0);
                z = CarMediaDataManager.getInstance().getMusicFileExists() == 1 || CarMediaDataManager.getInstance().getMusicFileExists() == 3;
                if (!isUsbExists3 || isScanner3 || !z) {
                    this.music_source = "";
                }
            } else if ("MUSIC_SOURCE_OF_USB2".equals(this.music_source)) {
                boolean isUsbExists4 = CarMediaDataManager.getInstance().isUsbExists(1);
                boolean isScanner4 = CarMediaDataManager.getInstance().isScanner(1);
                z = CarMediaDataManager.getInstance().getMusicFileExists() == 2 || CarMediaDataManager.getInstance().getMusicFileExists() == 3;
                if (!isUsbExists4 || isScanner4 || !z) {
                    this.music_source = "";
                }
            }
            LogUtil.d("checkUSBResult:music_source=" + this.music_source);
            return;
        }
        if ("com.yftech.intent.action.start.music".equals(action) && TextUtils.isEmpty(this.music_source)) {
            checkPlaying();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void checkPlaying() {
        String currentMediaSource = CarAudioManager.getInstance().getCurrentMediaSource();
        if (!TextUtils.isEmpty(currentMediaSource)) {
            String[] split = currentMediaSource.split(",");
            if (split.length >= 3) {
                String currentSourceByClientId = AudioSettingUtil.getCurrentSourceByClientId(split[2]);
                LogUtil.d("checkPlaying:sourceByClientId=" + currentSourceByClientId);
                if ("MUSIC_SOURCE_OF_BLUETOOTH".equals(currentSourceByClientId) && CarBluetoothManager.getInstance().isConnected(12)) {
                    this.music_source = "MUSIC_SOURCE_OF_BLUETOOTH";
                } else if ("MUSIC_SOURCE_OF_CARLIFE".equals(currentSourceByClientId) && CarLifeMusicManager.getInstance().getCarLifeConnectionStatus()) {
                    this.music_source = "MUSIC_SOURCE_OF_CARLIFE";
                } else if ("MUSIC_SOURCE_OF_CARPLAY".equals(currentSourceByClientId) && CarPlayMusicManager.getInstance(this).getConnectStatus() == 2) {
                    this.music_source = "MUSIC_SOURCE_OF_CARPLAY";
                } else if ("MUSIC_SOURCE_OF_USB1".equals(currentSourceByClientId) || "MUSIC_SOURCE_OF_USB2".equals(currentSourceByClientId)) {
                    this.music_source = currentSourceByClientId;
                }
            }
        }
        LogUtil.d("checkPlaying:mediaSource=" + currentMediaSource + ", music_source=" + this.music_source);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x028a, code lost:
    
        if (r10.equals("MUSIC_SOURCE_OF_CARPLAY") != false) goto L117;
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x0368, code lost:
    
        if (r10.equals("MUSIC_SOURCE_OF_CARPLAY") != false) goto L151;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        setIntent(intent);
        String stringExtra = getIntent().getStringExtra("music_source");
        String action = getIntent().getAction();
        this.music_source = SharedPrefsUtil.getInstance(getApplicationContext()).getString("TAG_MUSIC_SOURCE_PLAYING", "");
        LogUtil.d("intent_music_source=" + stringExtra + ", music_source=" + this.music_source + ", action=" + action);
        if (TextUtils.isEmpty(action) && TextUtils.isEmpty(stringExtra)) {
            this.music_source = playLastMusicSource();
            if (!TextUtils.isEmpty(this.music_source)) {
                String currentMediaSource = AudioSettingUtil.getCurrentMediaSource();
                Fragment findFragmentByTag = getSupportFragmentManager().findFragmentByTag(MusicPlayerFragment.class.getSimpleName());
                if (findFragmentByTag instanceof MusicPlayerFragment) {
                    MusicPlayerFragment musicPlayerFragment = (MusicPlayerFragment) findFragmentByTag;
                    boolean z = !this.music_source.equals(currentMediaSource);
                    if (!this.music_source.equals(musicPlayerFragment.getMusic_source())) {
                        musicPlayerFragment.setMusic_source(this.music_source, z);
                    }
                    if (musicPlayerFragment.isVisible()) {
                        musicPlayerFragment.isNeedToPlay = z;
                        musicPlayerFragment.onResume();
                        Fragment findFragmentByTag2 = getSupportFragmentManager().findFragmentByTag(MusicMainFragment.class.getSimpleName());
                        if (findFragmentByTag2 != null) {
                            getSupportFragmentManager().beginTransaction().hide(findFragmentByTag2).commitNowAllowingStateLoss();
                        }
                        this.currentFragment = musicPlayerFragment;
                    } else {
                        switchContent(musicPlayerFragment);
                    }
                }
                setSoundEffectVisible(true);
                return;
            }
        }
        this.music_source = stringExtra;
        if (!TextUtils.isEmpty(action) && "com.yftech.intent.action.start.music.bt".equals(action)) {
            if (!CarBluetoothManager.getInstance().isConnected(12)) {
                this.music_source = "";
            } else {
                this.music_source = "MUSIC_SOURCE_OF_BLUETOOTH";
            }
        } else if (!TextUtils.isEmpty(action) && "com.yftech.intent.action.start.music.usb".equals(action)) {
            if (TextUtils.isEmpty(stringExtra)) {
                boolean isUsbExists = CarMediaDataManager.getInstance().isUsbExists(0);
                boolean isScanner = CarMediaDataManager.getInstance().isScanner(0);
                boolean z2 = CarMediaDataManager.getInstance().getMusicFileExists() == 1 || CarMediaDataManager.getInstance().getMusicFileExists() == 3;
                if (isUsbExists && !isScanner && z2) {
                    this.music_source = "MUSIC_SOURCE_OF_USB1";
                } else {
                    boolean isUsbExists2 = CarMediaDataManager.getInstance().isUsbExists(1);
                    boolean isScanner2 = CarMediaDataManager.getInstance().isScanner(1);
                    boolean z3 = CarMediaDataManager.getInstance().getMusicFileExists() == 2 || CarMediaDataManager.getInstance().getMusicFileExists() == 3;
                    if (isUsbExists2 && !isScanner2 && z3) {
                        this.music_source = "MUSIC_SOURCE_OF_USB2";
                    }
                }
            } else if ("MUSIC_SOURCE_OF_USB1".equals(stringExtra)) {
                boolean isUsbExists3 = CarMediaDataManager.getInstance().isUsbExists(0);
                boolean isScanner3 = CarMediaDataManager.getInstance().isScanner(0);
                boolean z4 = CarMediaDataManager.getInstance().getMusicFileExists() == 1 || CarMediaDataManager.getInstance().getMusicFileExists() == 3;
                if (!isUsbExists3 || isScanner3 || !z4) {
                    this.music_source = "";
                }
            } else if ("MUSIC_SOURCE_OF_USB2".equals(stringExtra)) {
                boolean isUsbExists4 = CarMediaDataManager.getInstance().isUsbExists(1);
                boolean isScanner4 = CarMediaDataManager.getInstance().isScanner(1);
                boolean z5 = CarMediaDataManager.getInstance().getMusicFileExists() == 2 || CarMediaDataManager.getInstance().getMusicFileExists() == 3;
                if (!isUsbExists4 || isScanner4 || !z5) {
                    this.music_source = "";
                }
            }
            LogUtil.d("checkUSBResult:music_source=" + this.music_source);
        } else if (TextUtils.isEmpty(action) && TextUtils.isEmpty(this.music_source)) {
            checkPlaying();
        }
        char c = 4;
        if (!TextUtils.isEmpty(this.music_source)) {
            Fragment findFragmentByTag3 = getSupportFragmentManager().findFragmentByTag(MusicPlayerFragment.class.getSimpleName());
            if (!(findFragmentByTag3 instanceof MusicPlayerFragment)) {
                if (findFragmentByTag3 == null) {
                    new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.yftech.libmusic.MusicMainActivity.2
                        @Override // java.lang.Runnable
                        public void run() {
                            Fragment findFragmentByTag4 = MusicMainActivity.this.getSupportFragmentManager().findFragmentByTag(MusicMainFragment.class.getSimpleName());
                            if (findFragmentByTag4 != null) {
                                MusicMainActivity.this.currentFragment = findFragmentByTag4;
                            }
                            MusicMainActivity.this.switchContent(MusicPlayerFragment.newInstance(MusicMainActivity.this.music_source));
                            MusicMainActivity.this.setSoundEffectVisible(true);
                        }
                    });
                    return;
                }
                return;
            }
            MusicPlayerFragment musicPlayerFragment2 = (MusicPlayerFragment) findFragmentByTag3;
            LogUtil.d("original music source=" + musicPlayerFragment2.getMusic_source() + ", music source=" + this.music_source);
            musicPlayerFragment2.setMusic_source(this.music_source);
            if (findFragmentByTag3.isVisible()) {
                musicPlayerFragment2.onResume();
            } else {
                switchContent(findFragmentByTag3);
            }
            String str = this.music_source;
            switch (str.hashCode()) {
                case 1000199824:
                    if (str.equals("MUSIC_SOURCE_OF_BLUETOOTH")) {
                        c = 2;
                        break;
                    }
                    c = 65535;
                    break;
                case 1536412978:
                    if (str.equals("MUSIC_SOURCE_OF_CARLIFE")) {
                        c = 3;
                        break;
                    }
                    c = 65535;
                    break;
                case 1536534890:
                    break;
                case 1766254091:
                    if (str.equals("MUSIC_SOURCE_OF_USB1")) {
                        c = 0;
                        break;
                    }
                    c = 65535;
                    break;
                case 1766254092:
                    if (str.equals("MUSIC_SOURCE_OF_USB2")) {
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
                    CarPlayMusicManager.getInstance(this).play();
                    return;
                default:
                    return;
            }
        }
        Fragment findFragmentByTag4 = getSupportFragmentManager().findFragmentByTag(MusicPlayerFragment.class.getSimpleName());
        if (findFragmentByTag4 != null) {
            getSupportFragmentManager().beginTransaction().setCustomAnimations(R.anim.dialog_fade_in, R.anim.dialog_fade_null).remove(findFragmentByTag4).commitAllowingStateLoss();
        }
        Fragment findFragmentByTag5 = getSupportFragmentManager().findFragmentByTag(MusicMainFragment.class.getSimpleName());
        if (findFragmentByTag5 != null) {
            switchContent(findFragmentByTag5);
        }
        setAlbumCover(R.mipmap.music_main_pic_cover);
        setSoundEffectVisible(false);
        checkPlaying();
        LogUtil.d("pauseCurrentMusic:music_source=" + this.music_source);
        String str2 = this.music_source;
        switch (str2.hashCode()) {
            case 1000199824:
                if (str2.equals("MUSIC_SOURCE_OF_BLUETOOTH")) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case 1536412978:
                if (str2.equals("MUSIC_SOURCE_OF_CARLIFE")) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            case 1536534890:
                break;
            case 1766254091:
                if (str2.equals("MUSIC_SOURCE_OF_USB1")) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            case 1766254092:
                if (str2.equals("MUSIC_SOURCE_OF_USB2")) {
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
            case 1:
                CarMusicManager.getInstance().pause();
                break;
            case 2:
                CarBluetoothManager.getInstance().pauseBluetoothMusic();
                break;
            case 3:
                CarLifeMusicManager.getInstance().setMusicControl(0);
                break;
            case 4:
                CarPlayMusicManager.getInstance(this).pause();
                break;
        }
        this.music_source = "";
        SharedPrefsUtil.getInstance(getApplicationContext()).save("TAG_MUSIC_SOURCE_PLAYING", "");
    }

    private void initW() {
        this.iv_sound_effects = (ImageView) findViewById(R.id.iv_sound_effects);
        this.iv_sound_effects.setOnClickListener(this);
        this.iv_album = (ImageView) findViewById(R.id.iv_album);
        this.iv_playing = (ImageView) findViewById(R.id.iv_playing);
        this.mMusicPlayingAnimationDrawable = (AnimationDrawable) this.iv_playing.getBackground();
        this.iv_playing_extra = (ImageView) findViewById(R.id.iv_playing_extra);
        this.mMusicPlayingExtraAnimationDrawable = (AnimationDrawable) this.iv_playing_extra.getBackground();
        this.iv_playing_extra_reflection = (ImageView) findViewById(R.id.iv_playing_extra_reflection);
        switchContent(MusicMainFragment.newInstance(this.music_source));
        if (TextUtils.isEmpty(getIntent().getAction()) && TextUtils.isEmpty(this.music_source)) {
            this.music_source = playLastMusicSource();
        }
        if (!TextUtils.isEmpty(this.music_source)) {
            switchContent(MusicPlayerFragment.newInstance(this.music_source));
            setSoundEffectVisible(true);
        } else {
            setSoundEffectVisible(false);
            SharedPrefsUtil.getInstance(getApplicationContext()).save("TAG_MUSIC_SOURCE_PLAYING", "");
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Multi-variable type inference failed */
    private String playLastMusicSource() {
        char c;
        String str;
        String string = SharedPrefsUtil.getInstance(getApplicationContext()).getString("TAG_MUSIC_SOURCE_PLAYING", "");
        LogUtil.d("last_music_source=" + string);
        switch (string.hashCode()) {
            case 1000199824:
                if (string.equals("MUSIC_SOURCE_OF_BLUETOOTH")) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case 1536412978:
                if (string.equals("MUSIC_SOURCE_OF_CARLIFE")) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            case 1536534890:
                if (string.equals("MUSIC_SOURCE_OF_CARPLAY")) {
                    c = 4;
                    break;
                }
                c = 65535;
                break;
            case 1766254091:
                if (string.equals("MUSIC_SOURCE_OF_USB1")) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            case 1766254092:
                if (string.equals("MUSIC_SOURCE_OF_USB2")) {
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
                if (!CarMediaDataManager.getInstance().isUsbExists(0)) {
                    return "";
                }
                int musicFileExists = CarMediaDataManager.getInstance().getMusicFileExists();
                if (CarMediaDataManager.getInstance().isScanner(0)) {
                    return "";
                }
                if (musicFileExists != 1 && musicFileExists != 3) {
                    return "";
                }
                str = "MUSIC_SOURCE_OF_USB1";
                break;
            case 1:
                if (!CarMediaDataManager.getInstance().isUsbExists(1)) {
                    return "";
                }
                int musicFileExists2 = CarMediaDataManager.getInstance().getMusicFileExists();
                if (CarMediaDataManager.getInstance().isScanner(1)) {
                    return "";
                }
                if (musicFileExists2 != 2 && musicFileExists2 != 3) {
                    return "";
                }
                str = "MUSIC_SOURCE_OF_USB2";
                break;
            case 2:
                return CarBluetoothManager.getInstance().isConnected(12) ? "MUSIC_SOURCE_OF_BLUETOOTH" : "";
            case 3:
                return CarLifeMusicManager.getInstance().getCarLifeConnectionStatus() ? "MUSIC_SOURCE_OF_CARLIFE" : "";
            case 4:
                return CarPlayMusicManager.getInstance(this).getConnectStatus() == 2 ? "MUSIC_SOURCE_OF_CARPLAY" : "";
            default:
                return "";
        }
        return str;
    }

    private void registerReceiver() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(MusicSourceInformationReceiver.ACTION_USB_STATUS_CHANGE);
        intentFilter.addAction(MusicSourceInformationReceiver.ACTION_BLUETOOTH_STATUS_CHANGE);
        intentFilter.addAction(MusicSourceInformationReceiver.ACTION_CARLIFE_STATUS_CHANGE);
        intentFilter.addAction(MusicSourceInformationReceiver.ACTION_CARPLAY_STATUS_CHANGE);
        LocalBroadcastManager.getInstance(getApplicationContext()).registerReceiver(this.receiver, intentFilter);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.yftech.libmvpmodule.mvp.BaseMvpActivity
    public void onResume() {
        super.onResume();
        String currentMediaSource = CarAudioManager.getInstance().getCurrentMediaSource();
        LogUtil.d("Activity onResume=" + currentMediaSource);
        if (!TextUtils.isEmpty(currentMediaSource)) {
            String[] split = currentMediaSource.split(",");
            if (split.length >= 3) {
                String currentSourceByClientId = AudioSettingUtil.getCurrentSourceByClientId(split[2]);
                boolean z = false;
                if ("MUSIC_SOURCE_OF_USB1".equals(currentSourceByClientId) || "MUSIC_SOURCE_OF_USB2".equals(currentSourceByClientId)) {
                    z = CarMusicManager.getInstance().isPlaying();
                } else if ("MUSIC_SOURCE_OF_BLUETOOTH".equals(currentSourceByClientId)) {
                    z = CarBluetoothManager.getInstance().isPlayingBluetoothMusic();
                } else if ("MUSIC_SOURCE_OF_CARLIFE".equals(currentSourceByClientId)) {
                    if (CarLifeMusicManager.getInstance().getCarLifeMusicPlayStatus() == 1) {
                        z = true;
                    }
                } else if ("MUSIC_SOURCE_OF_CARPLAY".equals(currentSourceByClientId)) {
                    z = CarPlayMusicManager.getInstance(this).isPlaying();
                }
                setPlayingAnimationStatus(z);
            }
        }
        EventBus.getDefault().post("media_window_start");
    }

    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        Fragment findFragmentByTag;
        if (i == 4 && keyEvent.getRepeatCount() == 0 && (findFragmentByTag = getSupportFragmentManager().findFragmentByTag(MusicLyricFragment.class.getSimpleName())) != null && findFragmentByTag.isVisible()) {
            LogUtil.d("onKeyDown hide MusicLyricFragment");
            EventBus.getDefault().post(new MusicLyricHideEvent());
            return false;
        }
        return super.onKeyDown(i, keyEvent);
    }

    private void setPlayingAnimationStatus(boolean z) {
        if (z) {
            this.iv_playing_extra.setBackgroundResource(R.drawable.music_play_status_anim_extra);
            this.iv_playing_extra_reflection.setVisibility(8);
            this.mMusicPlayingExtraAnimationDrawable = (AnimationDrawable) this.iv_playing_extra.getBackground();
            this.mMusicPlayingAnimationDrawable.start();
            this.mMusicPlayingExtraAnimationDrawable.start();
            return;
        }
        this.mMusicPlayingAnimationDrawable.stop();
        this.mMusicPlayingExtraAnimationDrawable.stop();
        this.iv_playing_extra.setBackgroundResource(R.mipmap.music_04_djz);
        this.iv_playing_extra_reflection.setVisibility(0);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.yftech.libmvpmodule.mvp.BaseMvpActivity
    public void onStop() {
        super.onStop();
        LogUtil.d("onStop");
    }

    protected void onSaveInstanceState(@NonNull Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putParcelable("android:support:fragments", null);
    }

    protected void onPause() {
        super.onPause();
        LogUtil.d("onPause");
        if (this.dialog != null) {
            this.dialog.dismissCustom();
        }
        this.mMusicPlayingAnimationDrawable.stop();
        this.mMusicPlayingExtraAnimationDrawable.stop();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.yftech.libmvpmodule.mvp.BaseMvpActivity
    public void onDestroy() {
        super.onDestroy();
        CarMediaDataManager.getInstance().unregisterCarDataControlCallback(this.dataChangeCallback);
        CarBluetoothManager.getInstance().unregisterBluetoothMusicCallback(this.bluetoothMusicCallback);
        CarLifeMusicManager.getInstance().unregisterMusicControlCallback(this.carlifeDataChangedCallback);
        CarLifeMusicManager.getInstance().release();
        EventBus.getDefault().unregister(this);
        LocalBroadcastManager.getInstance(getApplicationContext()).unregisterReceiver(this.receiver);
        unregisterReceiver(this.testReceiver);
        SharedPrefsUtil.getInstance(getApplicationContext()).save("TAG_MUSIC_SOURCE_PLAYING", "");
    }

    public synchronized void switchContent(Fragment fragment) {
        FragmentTransaction beginTransaction = getSupportFragmentManager().beginTransaction();
        if (this.currentFragment == null && fragment.isAdded()) {
            beginTransaction.show(fragment).commitAllowingStateLoss();
        } else if (this.currentFragment == null) {
            beginTransaction.add(R.id.fl_music, fragment, fragment.getClass().getSimpleName()).commitAllowingStateLoss();
        } else if (this.currentFragment != fragment) {
            if (!fragment.isAdded() && !this.currentFragment.getClass().getSimpleName().equals(fragment.getClass().getSimpleName())) {
                LogUtil.d("switchContent:add=" + fragment.getClass().getSimpleName());
                beginTransaction.hide(this.currentFragment).add(R.id.fl_music, fragment, fragment.getClass().getSimpleName()).commitAllowingStateLoss();
            } else {
                beginTransaction.hide(this.currentFragment).show(fragment).commitAllowingStateLoss();
            }
        }
        this.currentFragment = fragment;
    }

    public void setSoundEffectVisible(boolean z) {
        this.iv_sound_effects.setVisibility(z ? 0 : 8);
    }

    public void setAlbumCover(String str, byte[] bArr) {
        if (TextUtils.isEmpty(str) || !str.equals(this.albumPath)) {
            Glide.with(getApplicationContext()).load(bArr).apply(new RequestOptions().centerCrop().error(R.mipmap.music_main_pic_cover).dontAnimate().priority(Priority.HIGH).transform(new GlideRoundTransform(5))).into(this.iv_album);
            this.albumPath = str;
        }
    }

    public void setAlbumCover(String str, Bitmap bitmap) {
        if (TextUtils.isEmpty(str) || !str.equals(this.albumPath)) {
            DrawableCrossFadeFactory build = new DrawableCrossFadeFactory.Builder().setCrossFadeEnabled(true).build();
            Glide.with(getApplicationContext()).load(bitmap).apply(new RequestOptions().centerCrop().error(R.mipmap.music_main_pic_cover).priority(Priority.HIGH).transform(new GlideRoundTransform(5))).transition(DrawableTransitionOptions.with(build)).into(this.iv_album);
            this.albumPath = str;
        }
    }

    public void setAlbumCover(int i) {
        this.albumPath = null;
        this.iv_album.setImageResource(i);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (!SystemUtil.isFastDoubleClick() && view.getId() == R.id.iv_sound_effects) {
            if (this.dialog != null) {
                this.dialog.dismissAllowingStateLoss();
                this.dialog = null;
            }
            this.dialog = MusicSoundEffectsDialog.newInstance();
            this.dialog.show(getSupportFragmentManager(), MusicSoundEffectsDialog.class.getSimpleName());
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void musicPlayStatusChanged(MusicPlayStatusEvent musicPlayStatusEvent) {
        LogUtil.d("musicPlayStatusChanged:isPlaying=" + musicPlayStatusEvent.isPlaying + ", isPageDisplaying=" + this.isDisplaying);
        if (this.isDisplaying) {
            setPlayingAnimationStatus(musicPlayStatusEvent.isPlaying);
        }
    }

    private int[] getRes(int i) {
        TypedArray obtainTypedArray;
        if (i == 0) {
            obtainTypedArray = getResources().obtainTypedArray(R.array.music_hbx);
        } else {
            obtainTypedArray = getResources().obtainTypedArray(R.array.music_dbx);
        }
        int length = obtainTypedArray.length();
        int[] iArr = new int[length];
        for (int i2 = 0; i2 < length; i2++) {
            iArr[i2] = obtainTypedArray.getResourceId(i2, -1);
        }
        obtainTypedArray.recycle();
        return iArr;
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onConfigurationChanged(Configuration configuration) {
        LogUtil.d("onConfigurationChanged:event=" + configuration.toString());
        Intent intent = getIntent();
        if (intent != null) {
            intent.setAction("");
            intent.putExtra("music_source", "");
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onMediaSourceWindowChanged(String str) {
        LogUtil.d("onMediaSourceWindowChanged=" + str);
        if ("media_window_start".equalsIgnoreCase(str)) {
            return;
        }
        try {
            LogUtil.d("onMediaSourceWindowChanged=finish MusicActivity");
            finish();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
