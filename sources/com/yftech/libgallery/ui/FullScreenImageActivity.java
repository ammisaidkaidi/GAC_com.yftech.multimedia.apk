package com.yftech.libgallery.ui;

import android.app.ActionBar;
import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemProperties;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import com.facebook.common.util.UriUtil;
import com.facebook.drawee.backends.pipeline.Fresco;
import com.facebook.drawee.controller.BaseControllerListener;
import com.facebook.imagepipeline.common.RotationOptions;
import com.facebook.imagepipeline.image.ImageInfo;
import com.facebook.imagepipeline.request.ImageRequestBuilder;
import com.media.common.event.USBPushOutInPhotoDisplayingEvent;
import com.media.common.event.USBStateForPhotoAndVideoEvent;
import com.media.common.ui.widget.MyActionBar;
import com.media.common.ui.widget.zoomable.DoubleTapGestureListener;
import com.media.common.ui.widget.zoomable.ZoomableDraweeView;
import com.media.common.util.AudioSettingUtil;
import com.media.common.util.FileTypeUtils;
import com.media.common.util.LogUtil;
import com.media.common.util.SharedPrefsUtil;
import com.media.common.util.SystemUtil;
import com.media.common.util.ToastUtils;
import com.yftech.car.bluetooth.CarBluetoothManager;
import com.yftech.car.bluetooth.callback.CarBluetoothPhoneCallback;
import com.yftech.car.bluetooth.model.PhoneCall;
import com.yftech.car.input.CarInputManager;
import com.yftech.car.input.CarKey;
import com.yftech.car.media.data.entity.MediaFile;
import com.yftech.libgallery.R;
import com.yftech.libgallery.presenter.FullScreenImagePresenter;
import com.yftech.libgallery.utils.MyPhotoDataManager;
import com.yftech.libgallery.view.IFullScreenImageActivityView;
import com.yftech.libmusic.event.CarPlayUIStateEvent;
import com.yftech.libmvpmodule.mvp.BaseMvpActivity;
import com.yftech.vehicle.internal.adapter.ICarDrive;
import com.yftech.vehicle.internal.adapter.ICarSettings;
import java.io.File;
import java.util.List;
import javax.microedition.khronos.opengles.GL10;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

@Deprecated
/* loaded from: /home/user/work/dex/classes4.dex */
public class FullScreenImageActivity extends BaseMvpActivity<FullScreenImagePresenter> implements View.OnClickListener, IFullScreenImageActivityView {
    private MyActionBar actionBar;
    private LinearLayout control_bar;
    private ZoomableDraweeView dv_image;
    private String imagePath;
    private int index;
    private ImageView iv_next;
    private ImageView iv_previous;
    private ImageView iv_slide;
    private List<MediaFile> paths;
    private int position;
    private boolean isPlaying = true;
    private boolean isLoading = true;
    private boolean isReturnByUser = false;
    private final int[] rotation_selection = {0, ICarSettings.INTELLIGENT_AVOID_SETTING, ICarDrive.EPS_STYLE, 90};
    private int rotation_index = 0;
    private int forward = 0;
    private final int RC_CONTROL_BAR = 10;
    private final int RC_IMAGE_SWITCH = 99;
    private final int INTERVAL = 5000;
    private final int IMAGE_INTERVAL = 5000;
    private final int RC_INPUT = 20;
    private final Handler mHandler = new Handler(Looper.getMainLooper()) { // from class: com.yftech.libgallery.ui.FullScreenImageActivity.1
        @Override // android.os.Handler
        public void handleMessage(@NonNull Message message) {
            if (message.what == 10) {
                FullScreenImageActivity.this.setControlBarVisible(8);
                return;
            }
            if (message.what == 99) {
                FullScreenImageActivity.this.forward = 1;
                FullScreenImageActivity.this.position = (FullScreenImageActivity.this.position + 1) % FullScreenImageActivity.this.paths.size();
                FullScreenImageActivity.this.displayImage();
                FullScreenImageActivity.this.mHandler.sendEmptyMessageDelayed(99, 5000L);
                return;
            }
            if (message.what == 20) {
                int i = message.arg1;
                if (i == 1) {
                    FullScreenImageActivity.this.iv_next.callOnClick();
                } else if (i == 2) {
                    FullScreenImageActivity.this.iv_previous.callOnClick();
                }
            }
        }
    };
    private BroadcastReceiver receiver = new BroadcastReceiver() { // from class: com.yftech.libgallery.ui.FullScreenImageActivity.2
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if ("com.yftech.avmservice.SHOW_STATE".equals(intent.getAction())) {
                boolean booleanExtra = intent.getBooleanExtra("isShow", false);
                LogUtil.d("com.yftech.avmservice.SHOW_STATE:isShow=" + booleanExtra);
                if (booleanExtra) {
                    FullScreenImageActivity.this.isReturnByUser = false;
                    FullScreenImageActivity.this.onStop();
                } else {
                    FullScreenImageActivity.this.onResume();
                }
            }
        }
    };
    private CarInputManager.CarInputCallback carInputCallback = new CarInputManager.CarInputCallback() { // from class: com.yftech.libgallery.ui.FullScreenImageActivity.3
        public void onInputKey(CarKey carKey) {
            LogUtil.d("onInputKey:CarKey=" + carKey.toString());
            if (FullScreenImageActivity.this.isDisplaying && carKey.mAction == 0) {
                Message obtainMessage = FullScreenImageActivity.this.mHandler.obtainMessage(20);
                obtainMessage.arg1 = carKey.mCode;
                FullScreenImageActivity.this.mHandler.sendMessage(obtainMessage);
            }
        }
    };
    private CarBluetoothPhoneCallback callback = new CarBluetoothPhoneCallback() { // from class: com.yftech.libgallery.ui.FullScreenImageActivity.5
        public void onBluetoothPhoneCallStateChanged(List<PhoneCall> list) {
            if (!FullScreenImageActivity.this.isDisplaying || list == null || list.isEmpty()) {
                return;
            }
            PhoneCall phoneCall = list.get(0);
            LogUtil.d("onBluetoothPhoneCallStateChanged:status=" + phoneCall.getCallState());
            if (phoneCall.getCallState() == 7) {
                FullScreenImageActivity.this.onResume();
            } else {
                FullScreenImageActivity.this.onStop();
            }
        }
    };

    static /* synthetic */ int access$210(FullScreenImageActivity fullScreenImageActivity) {
        int i = fullScreenImageActivity.position;
        fullScreenImageActivity.position = i - 1;
        return i;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.yftech.libmvpmodule.mvp.BaseMvpActivity
    public FullScreenImagePresenter createPresenter() {
        return new FullScreenImagePresenter(this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.yftech.libmvpmodule.mvp.BaseMvpActivity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_full_screen_image);
        statusBarHide(this);
        SystemUtil.setSysFullScreen(this, true);
        this.imagePath = getIntent().getStringExtra("imagePath");
        this.index = getIntent().getIntExtra("index", -1);
        initW();
        this.isLoading = true;
        getPresenter().getImagesByIndex(this.index, this.imagePath);
        CarBluetoothManager.getInstance().registerBluetoothPhoneCallback(this.callback, (Handler) null);
        CarInputManager.getInstance().registerCarInputCallback(this.carInputCallback, (Handler) null);
        registerReceiver();
        EventBus.getDefault().register(this);
    }

    private void registerReceiver() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("com.yftech.avmservice.SHOW_STATE");
        registerReceiver(this.receiver, intentFilter);
    }

    protected void onPause() {
        super.onPause();
        new Handler(Looper.myLooper()).postDelayed(new Runnable() { // from class: com.yftech.libgallery.ui.FullScreenImageActivity.4
            @Override // java.lang.Runnable
            public void run() {
                boolean z = SystemProperties.getBoolean("sys.atc.carplay.app.show_ui", false);
                LogUtil.d("onPause:isCarPlayDisplaying=" + z);
                if (z) {
                    MyPhotoDataManager.getInstance().setPhotoPlayingBeforeSwitchPage(FullScreenImageActivity.this.isPlaying);
                    if (FullScreenImageActivity.this.isPlaying) {
                        FullScreenImageActivity.this.iv_slide.callOnClick();
                    }
                }
            }
        }, 1200L);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.yftech.libmvpmodule.mvp.BaseMvpActivity
    public void onStop() {
        super.onStop();
        LogUtil.d("onStop");
        if (!this.isReturnByUser) {
            MyPhotoDataManager.getInstance().setPhotoPlayingBeforeSwitchPage(this.isPlaying);
        }
        if (this.isPlaying) {
            this.iv_slide.callOnClick();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.yftech.libmvpmodule.mvp.BaseMvpActivity
    public void onResume() {
        super.onResume();
        LogUtil.d("onResume");
        List phoneCalls = CarBluetoothManager.getInstance().getPhoneCalls();
        if ((phoneCalls == null || phoneCalls.isEmpty() || ((PhoneCall) phoneCalls.get(0)).getCallState() == 7) && MyPhotoDataManager.getInstance().isPhotoPlayingBeforeSwitchPage()) {
            this.iv_slide.callOnClick();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.yftech.libmvpmodule.mvp.BaseMvpActivity
    public void onDestroy() {
        super.onDestroy();
        CarBluetoothManager.getInstance().unregisterBluetoothPhoneCallback(this.callback);
        CarInputManager.getInstance().unregisterCarInputCallback(this.carInputCallback);
        unregisterReceiver(this.receiver);
        EventBus.getDefault().unregister(this);
    }

    public void onBackPressed() {
        setResult(-1, getIntent());
        this.isReturnByUser = true;
        MyPhotoDataManager.getInstance().setPhotoPlayingBeforeSwitchPage(false);
        super.onBackPressed();
    }

    public static void statusBarHide(Activity activity) {
        activity.getWindow().getDecorView().setSystemUiVisibility(GL10.GL_STENCIL_BUFFER_BIT);
        activity.getWindow().setStatusBarColor(0);
        ActionBar actionBar = activity.getActionBar();
        if (actionBar != null) {
            actionBar.hide();
        }
    }

    private void initW() {
        this.actionBar = findViewById(R.id.actionBar);
        this.control_bar = (LinearLayout) findViewById(R.id.control_bar);
        this.dv_image = findViewById(R.id.dv_image);
        this.dv_image.setIsLongpressEnabled(false);
        DoubleTapGestureListener doubleTapGestureListener = new DoubleTapGestureListener(this.dv_image);
        doubleTapGestureListener.setOnSingleClick(new DoubleTapGestureListener.OnSingleClickListener() { // from class: com.yftech.libgallery.ui.FullScreenImageActivity.6
            public void onNext() {
            }

            public void onPrev() {
            }

            public void onSingleClick() {
                LogUtil.d("image on single click");
                AudioSettingUtil.playSystemClickSoundEffect(FullScreenImageActivity.this.getApplicationContext());
                if (!FullScreenImageActivity.this.getControlBarVisible()) {
                    FullScreenImageActivity.this.setControlBarVisible(0);
                    if (FullScreenImageActivity.this.mHandler.hasMessages(10)) {
                        FullScreenImageActivity.this.mHandler.removeMessages(10);
                    }
                    FullScreenImageActivity.this.mHandler.sendEmptyMessageDelayed(10, 5000L);
                    return;
                }
                FullScreenImageActivity.this.setControlBarVisible(8);
                if (FullScreenImageActivity.this.mHandler.hasMessages(10)) {
                    FullScreenImageActivity.this.mHandler.removeMessages(10);
                }
            }

            public void onDoubleClickDown() {
                if (FullScreenImageActivity.this.isPlaying) {
                    FullScreenImageActivity.this.iv_slide.callOnClick();
                }
                AudioSettingUtil.playSystemClickSoundEffect(FullScreenImageActivity.this.getApplicationContext());
                new Handler(Looper.myLooper()).postDelayed(new Runnable() { // from class: com.yftech.libgallery.ui.FullScreenImageActivity.6.1
                    @Override // java.lang.Runnable
                    public void run() {
                        AudioSettingUtil.playSystemClickSoundEffect(FullScreenImageActivity.this.getApplicationContext());
                    }
                }, 130L);
            }

            public void onDoubleTapMoving() {
                LogUtil.d("onDoubleTapMoving");
            }
        });
        this.dv_image.setTapListener(doubleTapGestureListener);
        findViewById(R.id.iv_rotate).setOnClickListener(this);
        this.iv_previous = (ImageView) findViewById(R.id.iv_previous);
        this.iv_previous.setOnClickListener(this);
        this.iv_next = (ImageView) findViewById(R.id.iv_next);
        this.iv_next.setOnClickListener(this);
        this.iv_slide = (ImageView) findViewById(R.id.iv_slide);
        this.iv_slide.setImageResource(R.drawable.picture_play_state_selector);
        this.iv_slide.setOnClickListener(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void displayImage() {
        if (this.paths == null || this.paths.size() <= 0) {
            return;
        }
        File file = new File(this.paths.get(this.position % this.paths.size()).getData());
        this.actionBar.setTitleText(file.getName());
        Uri uriForFile = UriUtil.getUriForFile(file);
        this.dv_image.setController(Fresco.newDraweeControllerBuilder().setUri(uriForFile).setAutoPlayAnimations(true).setControllerListener(new BaseControllerListener<ImageInfo>() { // from class: com.yftech.libgallery.ui.FullScreenImageActivity.7
            public void onFailure(String str, Throwable th) {
                LogUtil.d("play error!!!!!!!!!!!");
                FullScreenImageActivity.this.rotation_index = 0;
                if (FullScreenImageActivity.this.forward <= 0) {
                    if (FullScreenImageActivity.this.forward < 0) {
                        if (FullScreenImageActivity.this.position > 0) {
                            FullScreenImageActivity.access$210(FullScreenImageActivity.this);
                        } else {
                            FullScreenImageActivity.this.position += FullScreenImageActivity.this.paths.size() - 1;
                        }
                    }
                } else {
                    FullScreenImageActivity.this.position = (FullScreenImageActivity.this.position + 1) % FullScreenImageActivity.this.paths.size();
                }
                FullScreenImageActivity.this.displayImage();
            }
        }).build());
        if (this.isPlaying) {
            if (this.mHandler.hasMessages(99)) {
                this.mHandler.removeMessages(99);
            }
            this.mHandler.sendEmptyMessageDelayed(99, 5000L);
        }
        if (this.index == 0) {
            SharedPrefsUtil.getInstance(getApplicationContext()).save("TAG_PHOTO_VIEWED_LAST_FOR_USB_1", this.paths.get(this.position % this.paths.size()).getData());
        } else {
            SharedPrefsUtil.getInstance(getApplicationContext()).save("TAG_PHOTO_VIEWED_LAST_FOR_USB_2", this.paths.get(this.position % this.paths.size()).getData());
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (this.isLoading) {
            ToastUtils.showNormalMessage(getString(R.string.data_loading), 1);
            return;
        }
        if (this.mHandler.hasMessages(10)) {
            this.mHandler.removeMessages(10);
        }
        this.mHandler.sendEmptyMessageDelayed(10, 5000L);
        if (view.getId() == R.id.iv_rotate) {
            MediaFile mediaFile = this.paths.get(this.position % this.paths.size());
            String mimeType = FileTypeUtils.getMimeType(mediaFile.getData());
            LogUtil.d("mimeType=" + mimeType);
            if ("image/gif".equals(mimeType)) {
                ToastUtils.showNormalMessage(getString(R.string.picture_not_support_rotation), 0);
                return;
            }
            Uri uriForFile = UriUtil.getUriForFile(new File(mediaFile.getData()));
            int i = this.rotation_index + 1;
            this.rotation_index = i;
            this.rotation_index = i % this.rotation_selection.length;
            this.dv_image.setController(Fresco.newDraweeControllerBuilder().setImageRequest(ImageRequestBuilder.newBuilderWithSource(uriForFile).setRotationOptions(RotationOptions.forceRotation(this.rotation_selection[this.rotation_index])).build()).build());
            if (this.isPlaying) {
                this.iv_slide.callOnClick();
                return;
            }
            return;
        }
        if (view.getId() == R.id.iv_previous) {
            this.rotation_index = 0;
            this.forward = -1;
            if (this.position > 0) {
                this.position--;
            } else {
                this.position += this.paths.size() - 1;
            }
            displayImage();
            if (this.isPlaying) {
                this.iv_slide.callOnClick();
                return;
            }
            return;
        }
        if (view.getId() == R.id.iv_next) {
            this.rotation_index = 0;
            this.forward = 1;
            this.position = (this.position + 1) % this.paths.size();
            displayImage();
            if (this.isPlaying) {
                this.iv_slide.callOnClick();
                return;
            }
            return;
        }
        if (view.getId() == R.id.iv_slide) {
            this.iv_slide.setSelected(this.isPlaying);
            this.isPlaying = !this.isPlaying;
            if (!this.isPlaying) {
                if (this.mHandler.hasMessages(99)) {
                    this.mHandler.removeMessages(99);
                    return;
                }
                return;
            }
            this.mHandler.sendEmptyMessageDelayed(99, 5000L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean getControlBarVisible() {
        return this.control_bar.getVisibility() == 0 || this.actionBar.getVisibility() == 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setControlBarVisible(int i) {
        this.control_bar.setVisibility(i);
        this.actionBar.setVisibility(i);
    }

    @Override // com.yftech.libgallery.view.IFullScreenImageActivityView
    public void displayImages(int i, List<MediaFile> list) {
        this.isLoading = false;
        this.position = i;
        this.paths = list;
        setControlBarVisible(8);
        displayImage();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onUSBStatusChange(USBStateForPhotoAndVideoEvent uSBStateForPhotoAndVideoEvent) {
        LogUtil.e("onUSBStatusChange:receiveBroadCast");
        if (uSBStateForPhotoAndVideoEvent.isUsbExists || this.index != uSBStateForPhotoAndVideoEvent.usbIndex) {
            return;
        }
        if (this.isPlaying) {
            this.iv_slide.callOnClick();
        }
        this.isReturnByUser = true;
        MyPhotoDataManager.getInstance().setPhotoPlayingBeforeSwitchPage(false);
        EventBus.getDefault().post(new USBPushOutInPhotoDisplayingEvent());
        finish();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onCarPlayUIStateChanged(CarPlayUIStateEvent carPlayUIStateEvent) {
        LogUtil.d("onCarPlayUIStateChanged");
        onResume();
    }
}
