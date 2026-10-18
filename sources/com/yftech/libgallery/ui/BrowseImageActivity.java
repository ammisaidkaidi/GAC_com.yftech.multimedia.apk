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
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.core.app.ActivityCompat;
import com.facebook.common.util.UriUtil;
import com.facebook.drawee.backends.pipeline.Fresco;
import com.facebook.drawee.controller.BaseControllerListener;
import com.facebook.imagepipeline.common.RotationOptions;
import com.facebook.imagepipeline.image.ImageInfo;
import com.facebook.imagepipeline.request.ImageRequestBuilder;
import com.media.common.event.USBPushOutInPhotoDisplayingEvent;
import com.media.common.event.USBStateForPhotoAndVideoEvent;
import com.media.common.ui.widget.MyActionBar;
import com.media.common.ui.widget.TipsDialog;
import com.media.common.ui.widget.zoomable.DoubleTapGestureListener;
import com.media.common.ui.widget.zoomable.ZoomableDraweeView;
import com.media.common.util.AudioSettingUtil;
import com.media.common.util.FileTypeUtils;
import com.media.common.util.LogUtil;
import com.media.common.util.SharedPrefsUtil;
import com.media.common.util.ToastUtils;
import com.yftech.car.input.CarInputManager;
import com.yftech.car.input.CarKey;
import com.yftech.car.media.data.entity.MediaFile;
import com.yftech.libgallery.R;
import com.yftech.libgallery.presenter.BrowseImagePresenter;
import com.yftech.libgallery.view.IBrowseImageActivityView;
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
public class BrowseImageActivity extends BaseMvpActivity<BrowseImagePresenter> implements View.OnClickListener, IBrowseImageActivityView {
    private MyActionBar actionBar;
    private LinearLayout control_bar;
    private List<MediaFile> data;
    private ZoomableDraweeView dv_image;
    private int index;
    private ImageView iv_next;
    private ImageView iv_previous;
    private String path;
    private int position;
    private final int[] rotation_selection = {0, ICarSettings.INTELLIGENT_AVOID_SETTING, ICarDrive.EPS_STYLE, 90};
    private int rotation_index = 0;
    private int forward = 0;
    private boolean isLoading = true;
    private boolean isReturnByUser = false;
    private final int RC_CONTROL_BAR = 10;
    private final int INTERVAL = 5000;
    private final int RC_INPUT = 20;
    private final Handler mHandler = new Handler(Looper.getMainLooper()) { // from class: com.yftech.libgallery.ui.BrowseImageActivity.1
        @Override // android.os.Handler
        public void handleMessage(@NonNull Message message) {
            if (message.what == 10) {
                BrowseImageActivity.this.setControlBarVisible(8);
                return;
            }
            if (message.what == 20) {
                int i = message.arg1;
                if (i == 1) {
                    BrowseImageActivity.this.iv_next.callOnClick();
                } else if (i == 2) {
                    BrowseImageActivity.this.iv_previous.callOnClick();
                }
            }
        }
    };
    private BroadcastReceiver receiver = new BroadcastReceiver() { // from class: com.yftech.libgallery.ui.BrowseImageActivity.2
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if ("test".equals(intent.getAction())) {
                if (intent.getIntExtra("value", 0) == 0) {
                    BrowseImageActivity.this.carInputCallback.onInputKey(new CarKey(1, 0));
                } else {
                    BrowseImageActivity.this.carInputCallback.onInputKey(new CarKey(2, 0));
                }
            }
        }
    };
    private CarInputManager.CarInputCallback carInputCallback = new CarInputManager.CarInputCallback() { // from class: com.yftech.libgallery.ui.BrowseImageActivity.4
        public void onInputKey(CarKey carKey) {
            LogUtil.d("onInputKey:CarKey=" + carKey.toString());
            if (BrowseImageActivity.this.isDisplaying && carKey.mAction == 0) {
                Message obtainMessage = BrowseImageActivity.this.mHandler.obtainMessage(20);
                obtainMessage.arg1 = carKey.mCode;
                BrowseImageActivity.this.mHandler.sendMessage(obtainMessage);
            }
        }
    };

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.yftech.libmvpmodule.mvp.BaseMvpActivity
    public BrowseImagePresenter createPresenter() {
        return new BrowseImagePresenter(this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.yftech.libmvpmodule.mvp.BaseMvpActivity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_browse_image);
        this.path = getIntent().getStringExtra("imagePath");
        this.index = getIntent().getIntExtra("index", -1);
        initW();
        this.isLoading = true;
        getPresenter().getImageList(this.path, this.index);
        EventBus.getDefault().register(this);
        CarInputManager.getInstance().registerCarInputCallback(this.carInputCallback, (Handler) null);
        registerTestReceiver();
    }

    private void registerTestReceiver() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("test");
        registerReceiver(this.receiver, intentFilter);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.yftech.libmvpmodule.mvp.BaseMvpActivity
    public void onResume() {
        super.onResume();
        LogUtil.d("onResume");
    }

    protected void onPause() {
        super.onPause();
        LogUtil.d("onPause");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.yftech.libmvpmodule.mvp.BaseMvpActivity
    public void onStop() {
        super.onStop();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.yftech.libmvpmodule.mvp.BaseMvpActivity
    public void onDestroy() {
        super.onDestroy();
        EventBus.getDefault().unregister(this);
        CarInputManager.getInstance().unregisterCarInputCallback(this.carInputCallback);
        unregisterReceiver(this.receiver);
    }

    private void initW() {
        this.actionBar = findViewById(R.id.actionBar);
        this.actionBar.setTitleText(getString(R.string.pic_name));
        this.control_bar = (LinearLayout) findViewById(R.id.control_bar);
        this.dv_image = findViewById(R.id.dv_image);
        this.dv_image.setIsLongpressEnabled(false);
        DoubleTapGestureListener doubleTapGestureListener = new DoubleTapGestureListener(this.dv_image);
        doubleTapGestureListener.setOnSingleClick(new DoubleTapGestureListener.OnSingleClickListener() { // from class: com.yftech.libgallery.ui.BrowseImageActivity.3
            public void onNext() {
            }

            public void onPrev() {
            }

            public void onSingleClick() {
                LogUtil.d("image on single click");
                AudioSettingUtil.playSystemClickSoundEffect(BrowseImageActivity.this.getApplicationContext());
                if (!BrowseImageActivity.this.getControlBarVisible()) {
                    BrowseImageActivity.this.setControlBarVisible(0);
                    if (BrowseImageActivity.this.mHandler.hasMessages(10)) {
                        BrowseImageActivity.this.mHandler.removeMessages(10);
                    }
                    BrowseImageActivity.this.mHandler.sendEmptyMessageDelayed(10, 5000L);
                    return;
                }
                BrowseImageActivity.this.setControlBarVisible(8);
                if (BrowseImageActivity.this.mHandler.hasMessages(10)) {
                    BrowseImageActivity.this.mHandler.removeMessages(10);
                }
            }

            public void onDoubleClickDown() {
                AudioSettingUtil.playSystemClickSoundEffect(BrowseImageActivity.this.getApplicationContext());
                new Handler(Looper.myLooper()).postDelayed(new Runnable() { // from class: com.yftech.libgallery.ui.BrowseImageActivity.3.1
                    @Override // java.lang.Runnable
                    public void run() {
                        AudioSettingUtil.playSystemClickSoundEffect(BrowseImageActivity.this.getApplicationContext());
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
        findViewById(R.id.iv_slide).setOnClickListener(this);
        this.iv_next = (ImageView) findViewById(R.id.iv_next);
        this.iv_next.setOnClickListener(this);
        this.iv_previous.setOnClickListener(this);
    }

    private void displayImage() {
        MediaFile mediaFile = this.data.get(this.position % this.data.size());
        if (mediaFile == null) {
            return;
        }
        File file = new File(mediaFile.getData());
        this.actionBar.setTitleText(file.getName());
        Uri uriForFile = UriUtil.getUriForFile(file);
        this.dv_image.setController(Fresco.newDraweeControllerBuilder().setUri(uriForFile).setAutoPlayAnimations(true).setControllerListener(new BaseControllerListener<ImageInfo>() { // from class: com.yftech.libgallery.ui.BrowseImageActivity.5
            public void onFailure(String str, Throwable th) {
                LogUtil.d("play error!!!!!!!!!!!");
                if (BrowseImageActivity.this.forward != 0) {
                    if (BrowseImageActivity.this.forward > 0) {
                        BrowseImageActivity.this.iv_next.callOnClick();
                        return;
                    } else {
                        BrowseImageActivity.this.iv_previous.callOnClick();
                        return;
                    }
                }
                TipsDialog newInstance = TipsDialog.newInstance(BrowseImageActivity.this.getString(R.string.picture_browse_play_error));
                newInstance.setOnConfirmClickListener(new TipsDialog.OnConfirmClickListener() { // from class: com.yftech.libgallery.ui.BrowseImageActivity.5.1
                    public void onConfirm() {
                        BrowseImageActivity.this.onBackPressed();
                    }
                });
                newInstance.show(BrowseImageActivity.this.getSupportFragmentManager(), TipsDialog.class.getSimpleName());
            }
        }).build());
        if (this.index == 0) {
            SharedPrefsUtil.getInstance(getApplicationContext()).save("TAG_PHOTO_VIEWED_LAST_FOR_USB_1", mediaFile.getData());
        } else {
            SharedPrefsUtil.getInstance(getApplicationContext()).save("TAG_PHOTO_VIEWED_LAST_FOR_USB_2", mediaFile.getData());
        }
    }

    public void onBackPressed() {
        setResult(-1, getIntent());
        this.isReturnByUser = true;
        super.onBackPressed();
    }

    /* JADX WARN: Multi-variable type inference failed */
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
        if (this.position < 0 || this.data == null) {
            ToastUtils.showFailMessage(R.string.picture_browse_empty_error, 1);
            return;
        }
        if (view.getId() == R.id.iv_rotate) {
            MediaFile mediaFile = this.data.get(this.position % this.data.size());
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
            this.dv_image.setController(Fresco.newDraweeControllerBuilder().setImageRequest(ImageRequestBuilder.newBuilderWithSource(uriForFile).setRotationOptions(RotationOptions.forceRotation(this.rotation_selection[this.rotation_index])).build()).setAutoPlayAnimations(true).build());
            return;
        }
        if (view.getId() == R.id.iv_previous) {
            this.forward = -1;
            this.rotation_index = 0;
            if (this.position > 0) {
                this.position--;
            } else {
                this.position += this.data.size() - 1;
            }
            displayImage();
            return;
        }
        if (view.getId() == R.id.iv_next) {
            this.forward = 1;
            this.rotation_index = 0;
            this.position = (this.position + 1) % this.data.size();
            displayImage();
            return;
        }
        if (view.getId() == R.id.iv_slide) {
            Intent intent = new Intent((Context) this, (Class<?>) FullScreenImageActivity.class);
            intent.putExtra("index", this.index);
            intent.putExtra("imagePath", this.data.get(this.position % this.data.size()).getData());
            ActivityCompat.startActivityForResult(this, intent, 1001, (Bundle) null);
            finish();
        }
    }

    public static void statusBarHide(Activity activity) {
        activity.getWindow().getDecorView().setSystemUiVisibility(GL10.GL_STENCIL_BUFFER_BIT);
        activity.getWindow().setStatusBarColor(0);
        ActionBar actionBar = activity.getActionBar();
        if (actionBar != null) {
            actionBar.hide();
        }
    }

    @Override // com.yftech.libgallery.view.IBrowseImageActivityView
    public void displayImageList(int i, List<MediaFile> list) {
        this.isLoading = false;
        if (i < 0 || list == null) {
            ToastUtils.showFailMessage(R.string.picture_browse_empty_error, 1);
            return;
        }
        this.position = i;
        this.data = list;
        displayImage();
        this.mHandler.sendEmptyMessageDelayed(10, 5000L);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onUSBStatusChange(USBStateForPhotoAndVideoEvent uSBStateForPhotoAndVideoEvent) {
        LogUtil.e("onUSBStatusChange:receiveBroadCast");
        if (uSBStateForPhotoAndVideoEvent.isUsbExists || this.index != uSBStateForPhotoAndVideoEvent.usbIndex) {
            return;
        }
        this.isReturnByUser = true;
        EventBus.getDefault().post(new USBPushOutInPhotoDisplayingEvent());
        finish();
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
}
