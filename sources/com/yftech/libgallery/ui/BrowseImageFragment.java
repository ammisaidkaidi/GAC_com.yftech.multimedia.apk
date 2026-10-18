package com.yftech.libgallery.ui;

import android.graphics.drawable.Animatable;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.facebook.common.util.UriUtil;
import com.facebook.drawee.backends.pipeline.Fresco;
import com.facebook.drawee.controller.BaseControllerListener;
import com.facebook.drawee.drawable.ScalingUtils;
import com.facebook.drawee.generic.GenericDraweeHierarchy;
import com.facebook.imagepipeline.image.ImageInfo;
import com.media.common.ui.widget.MyActionBar;
import com.media.common.ui.widget.zoomable.DoubleTapGestureListener;
import com.media.common.ui.widget.zoomable.ZoomableDraweeView;
import com.media.common.util.LogUtil;
import com.media.common.util.MyFragmentManger;
import com.media.common.util.SharedPrefsUtil;
import com.media.common.util.ToastUtils;
import com.yftech.car.input.CarInputManager;
import com.yftech.car.input.CarKey;
import com.yftech.car.media.data.CarMediaDataManager;
import com.yftech.car.media.data.entity.MediaFile;
import com.yftech.libgallery.R;
import com.yftech.libgallery.presenter.BrowseImagePresenter;
import com.yftech.libgallery.view.IBrowseImageFragmentView;
import com.yftech.libmvpmodule.mvp.BaseMvpActivity;
import com.yftech.libmvpmodule.mvp.BaseMvpFragment;
import com.yftech.libmvpmodule.utils.Constants;
import com.yftech.vehicle.internal.adapter.ICarDrive;
import com.yftech.vehicle.internal.adapter.ICarSettings;
import com.yftech.vehicle.sdk.HostConfig;
import java.io.File;
import java.util.List;

/* loaded from: /home/user/work/dex/classes4.dex */
public class BrowseImageFragment extends BaseMvpFragment<BrowseImagePresenter> implements IBrowseImageFragmentView, View.OnClickListener {
    private static final String ARG_PARAM1 = "path";
    private static final String ARG_PARAM2 = "index";
    private MyActionBar actionBar;
    private FrameLayout control_bar;
    private List<MediaFile> data;
    private ZoomableDraweeView dv_image;
    private int index;
    private ImageView iv_next;
    private ImageView iv_previous;
    private ImageView iv_rotate;
    private ImageView iv_slide;
    private ImageView iv_wall_paper;
    private String path;
    private int position;
    private int rotation;
    private TextView tv_pic_play_error;
    private final int[] rotation_selection = {0, ICarSettings.INTELLIGENT_AVOID_SETTING, ICarDrive.EPS_STYLE, 90};
    private int rotation_index = 0;
    private int forward = 0;
    private boolean isLoading = true;
    private boolean isReturnByUser = false;
    private final int RC_CONTROL_BAR = 10;
    private final int INTERVAL = 5000;
    private final int RC_INPUT = 20;
    private final Handler mHandler = new Handler(Looper.getMainLooper()) { // from class: com.yftech.libgallery.ui.BrowseImageFragment.1
        @Override // android.os.Handler
        public void handleMessage(@NonNull Message message) {
            if (message.what == 10) {
                BrowseImageFragment.this.setControlBarVisible(8);
                return;
            }
            if (message.what == 20) {
                int i = message.arg1;
                if (i == 1) {
                    BrowseImageFragment.this.iv_next.callOnClick();
                } else if (i == 2) {
                    BrowseImageFragment.this.iv_previous.callOnClick();
                }
            }
        }
    };
    private CarInputManager.CarInputCallback carInputCallback = new CarInputManager.CarInputCallback() { // from class: com.yftech.libgallery.ui.BrowseImageFragment.2
        public void onInputKey(CarKey carKey) {
            LogUtil.d("onInputKey:CarKey=" + carKey.toString());
            if ((!(BrowseImageFragment.this.getActivity() instanceof BaseMvpActivity) || BrowseImageFragment.this.getActivity().isDisplaying) && carKey.mAction == 0) {
                Message obtainMessage = BrowseImageFragment.this.mHandler.obtainMessage(20);
                obtainMessage.arg1 = carKey.mCode;
                BrowseImageFragment.this.mHandler.sendMessage(obtainMessage);
            }
        }
    };

    private float changeDegreeIn360(float f) {
        while (f < 0.0f) {
            f += 360.0f;
        }
        while (f >= 360.0f) {
            f -= 360.0f;
        }
        return f;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.yftech.libmvpmodule.mvp.BaseMvpFragment
    public BrowseImagePresenter createPresenter() {
        return new BrowseImagePresenter(getActivity());
    }

    public static BrowseImageFragment newInstance(String str, int i) {
        BrowseImageFragment browseImageFragment = new BrowseImageFragment();
        Bundle bundle = new Bundle();
        bundle.putString(ARG_PARAM1, str);
        bundle.putInt(ARG_PARAM2, i);
        browseImageFragment.setArguments(bundle);
        return browseImageFragment;
    }

    @Override // com.yftech.libmvpmodule.mvp.BaseMvpFragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (getArguments() != null) {
            this.path = getArguments().getString(ARG_PARAM1);
            this.index = getArguments().getInt(ARG_PARAM2);
        }
        this.isSplitMode = true;
    }

    @Override // com.yftech.libmvpmodule.mvp.BaseMvpFragment
    public void onDestroy() {
        super.onDestroy();
    }

    @Override // com.yftech.libmvpmodule.mvp.BaseMvpFragment
    protected View onBindView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.fragment_browse_image, viewGroup, false);
    }

    @Override // com.yftech.libmvpmodule.mvp.BaseMvpFragment
    protected void initView(View view) {
        this.actionBar = view.findViewById(R.id.actionBar);
        this.actionBar.setTitleText(getString(R.string.pic_name));
        this.control_bar = (FrameLayout) view.findViewById(R.id.control_bar);
        this.tv_pic_play_error = (TextView) view.findViewById(R.id.tv_pic_play_error);
        this.dv_image = view.findViewById(R.id.dv_image);
        this.dv_image.setIsLongpressEnabled(false);
        DoubleTapGestureListener doubleTapGestureListener = new DoubleTapGestureListener(this.dv_image);
        doubleTapGestureListener.setOnSingleClick(new DoubleTapGestureListener.OnSingleClickListener() { // from class: com.yftech.libgallery.ui.BrowseImageFragment.3
            public void onSingleClick() {
                LogUtil.d("image on single click");
                if (BrowseImageFragment.this.dv_image != null) {
                    BrowseImageFragment.this.dv_image.playSoundEffect(0);
                }
                if (!BrowseImageFragment.this.getControlBarVisible()) {
                    BrowseImageFragment.this.setControlBarVisible(0);
                    if (BrowseImageFragment.this.mHandler.hasMessages(10)) {
                        BrowseImageFragment.this.mHandler.removeMessages(10);
                    }
                    BrowseImageFragment.this.mHandler.sendEmptyMessageDelayed(10, 5000L);
                    return;
                }
                BrowseImageFragment.this.setControlBarVisible(8);
                if (BrowseImageFragment.this.mHandler.hasMessages(10)) {
                    BrowseImageFragment.this.mHandler.removeMessages(10);
                }
            }

            public void onDoubleClickDown() {
                if (BrowseImageFragment.this.dv_image != null) {
                    BrowseImageFragment.this.dv_image.playSoundEffect(0);
                }
                new Handler(Looper.myLooper()).postDelayed(new Runnable() { // from class: com.yftech.libgallery.ui.BrowseImageFragment.3.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (BrowseImageFragment.this.dv_image != null) {
                            BrowseImageFragment.this.dv_image.playSoundEffect(0);
                        }
                    }
                }, 130L);
            }

            public void onDoubleTapMoving() {
                LogUtil.d("onDoubleTapMoving");
            }

            public void onNext() {
                BrowseImageFragment.this.iv_next.callOnClick();
            }

            public void onPrev() {
                BrowseImageFragment.this.iv_previous.callOnClick();
            }
        });
        this.dv_image.setTapListener(doubleTapGestureListener);
        this.iv_previous = (ImageView) view.findViewById(R.id.iv_previous);
        this.iv_next = (ImageView) view.findViewById(R.id.iv_next);
        this.iv_rotate = (ImageView) view.findViewById(R.id.iv_rotate);
        this.iv_slide = (ImageView) view.findViewById(R.id.iv_slide);
        boolean isWallpaperPresent = HostConfig.isWallpaperPresent();
        this.iv_wall_paper = (ImageView) view.findViewById(R.id.iv_wall_paper);
        this.iv_wall_paper.setVisibility(isWallpaperPresent ? 0 : 8);
        this.iv_next.setOnClickListener(this);
        this.iv_previous.setOnClickListener(this);
        this.iv_rotate.setOnClickListener(this);
        this.iv_slide.setOnClickListener(this);
        this.iv_wall_paper.setOnClickListener(this);
        this.isLoading = true;
        getPresenter().getImageList(this.path, this.index);
    }

    @Override // com.yftech.libgallery.view.IBrowseImageFragmentView
    public void displayImageList(int i, List<MediaFile> list) {
        this.isLoading = false;
        if (i < 0 || list == null || list.isEmpty()) {
            ToastUtils.showFailMessage(R.string.picture_browse_empty_error, 1);
            return;
        }
        this.position = i;
        this.data = list;
        int photoFileSize = CarMediaDataManager.getInstance().getPhotoFileSize(this.index);
        LogUtil.d("displayImageList" + i + ",fileSize:" + photoFileSize);
        if (photoFileSize == 1) {
            this.iv_next.setAlpha(0.6f);
            this.iv_previous.setAlpha(0.6f);
            this.iv_next.setEnabled(false);
            this.iv_previous.setEnabled(false);
        }
        displayImage();
        this.mHandler.sendEmptyMessageDelayed(10, 5000L);
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
        if (this.position < 0 || this.data == null) {
            ToastUtils.showFailMessage(R.string.picture_browse_empty_error, 1);
            return;
        }
        if (view.getId() == R.id.iv_rotate) {
            setRotate(false);
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
            if (getActivity() != null) {
                getActivity().onBackPressed();
            }
            FullScreenImageFragment newInstance = FullScreenImageFragment.newInstance(this.data.get(this.position % this.data.size()).getData(), this.index);
            MyFragmentManger.getInstance().pushFragment(this.index, newInstance);
            MyFragmentManger.getInstance().switchContent(newInstance, MyFragmentManger.getInstance().getPhotoLayoutId());
            return;
        }
        if (view.getId() == R.id.iv_wall_paper) {
            WallPaperSettingFragment newInstance2 = WallPaperSettingFragment.newInstance(this.data.get(this.position % this.data.size()).getData());
            MyFragmentManger.getInstance().pushFragment(this.index, newInstance2);
            MyFragmentManger.getInstance().switchContent(newInstance2, MyFragmentManger.getInstance().getPhotoLayoutId());
        } else if (view.getId() == R.id.dv_image) {
            LogUtil.d("onClick from image");
            if (!getControlBarVisible()) {
                setControlBarVisible(0);
                if (this.mHandler.hasMessages(10)) {
                    this.mHandler.removeMessages(10);
                }
                this.mHandler.sendEmptyMessageDelayed(10, 5000L);
                return;
            }
            setControlBarVisible(8);
            if (this.mHandler.hasMessages(10)) {
                this.mHandler.removeMessages(10);
            }
        }
    }

    private void displayImage() {
        setResetRotate();
        MediaFile mediaFile = this.data.get(this.position % this.data.size());
        if (mediaFile == null) {
            return;
        }
        LogUtil.d("displayImage:path=" + mediaFile.getData());
        File file = new File(mediaFile.getData());
        this.actionBar.setTitleText(file.getName());
        this.dv_image.setController(Fresco.newDraweeControllerBuilder().setUri(UriUtil.getUriForFile(file)).setAutoPlayAnimations(true).setControllerListener(new BaseControllerListener<ImageInfo>() { // from class: com.yftech.libgallery.ui.BrowseImageFragment.4
            public void onFailure(String str, Throwable th) {
                LogUtil.d("play error!!!!!!!!!!!");
                if (BrowseImageFragment.this.forward == 0) {
                    if (BrowseImageFragment.this.mHandler.hasMessages(10)) {
                        BrowseImageFragment.this.mHandler.removeMessages(10);
                    }
                    BrowseImageFragment.this.tv_pic_play_error.setVisibility(0);
                    BrowseImageFragment.this.iv_rotate.setEnabled(false);
                    BrowseImageFragment.this.iv_slide.setEnabled(false);
                    BrowseImageFragment.this.iv_wall_paper.setEnabled(false);
                    BrowseImageFragment.this.iv_rotate.setAlpha(0.6f);
                    BrowseImageFragment.this.iv_slide.setAlpha(0.6f);
                    BrowseImageFragment.this.iv_wall_paper.setAlpha(0.6f);
                    BrowseImageFragment.this.setControlBarVisible(0);
                    return;
                }
                if (BrowseImageFragment.this.forward > 0) {
                    BrowseImageFragment.this.iv_next.callOnClick();
                } else {
                    BrowseImageFragment.this.iv_previous.callOnClick();
                }
            }

            public void onFinalImageSet(String str, @javax.annotation.Nullable ImageInfo imageInfo, @javax.annotation.Nullable Animatable animatable) {
                if (BrowseImageFragment.this.tv_pic_play_error.getVisibility() == 0) {
                    BrowseImageFragment.this.tv_pic_play_error.setVisibility(8);
                }
                LogUtil.d("get the Enabled:" + BrowseImageFragment.this.iv_rotate.isEnabled());
                if (!BrowseImageFragment.this.iv_rotate.isEnabled() || !BrowseImageFragment.this.iv_rotate.isEnabled() || !BrowseImageFragment.this.iv_rotate.isEnabled()) {
                    BrowseImageFragment.this.iv_rotate.setEnabled(true);
                    BrowseImageFragment.this.iv_slide.setEnabled(true);
                    BrowseImageFragment.this.iv_wall_paper.setEnabled(true);
                    BrowseImageFragment.this.iv_rotate.setAlpha(1.0f);
                    BrowseImageFragment.this.iv_slide.setAlpha(1.0f);
                    BrowseImageFragment.this.iv_wall_paper.setAlpha(1.0f);
                }
                if (imageInfo != null) {
                    LogUtil.d("onFinalImageSet:width=" + imageInfo.getWidth() + ", height=" + imageInfo.getHeight());
                    GenericDraweeHierarchy hierarchy = BrowseImageFragment.this.dv_image.getHierarchy();
                    if (imageInfo.getWidth() > Constants.displayWidth || imageInfo.getHeight() > Constants.displayHeight) {
                        hierarchy.setActualImageScaleType(ScalingUtils.ScaleType.FIT_CENTER);
                    } else {
                        hierarchy.setActualImageScaleType(ScalingUtils.ScaleType.CENTER);
                    }
                }
            }
        }).build());
        if (this.index == 0) {
            SharedPrefsUtil.getInstance(getContext()).save("TAG_PHOTO_VIEWED_LAST_FOR_USB_1", mediaFile.getData());
        } else {
            SharedPrefsUtil.getInstance(getContext()).save("TAG_PHOTO_VIEWED_LAST_FOR_USB_2", mediaFile.getData());
        }
        LogUtil.d("savePhotoLastViewed:path=" + mediaFile.getData());
    }

    private void setRotate(boolean z) {
        if (z) {
            this.rotation += 90;
        } else {
            this.rotation -= 90;
        }
        this.dv_image.setRotation(changeDegreeIn360(this.rotation));
    }

    private void setResetRotate() {
        if (this.rotation == 0) {
            return;
        }
        this.rotation = 0;
        this.dv_image.setRotation(changeDegreeIn360(this.rotation));
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
