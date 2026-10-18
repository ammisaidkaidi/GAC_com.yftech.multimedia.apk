package com.yftech.multimedia.ui;

import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import com.bumptech.glide.Glide;
import com.facebook.common.util.UriUtil;
import com.facebook.drawee.backends.pipeline.Fresco;
import com.facebook.drawee.view.SimpleDraweeView;
import com.media.common.event.MediaDataCallbackForPhotoDataChangedEvent;
import com.media.common.event.MediaDataCallbackForScanStatusChangedEvent;
import com.media.common.event.MediaDataCallbackForVideoDataChangedEvent;
import com.media.common.util.LogUtil;
import com.media.common.util.MyFragmentManger;
import com.media.common.util.ToastUtils;
import com.yftech.car.media.data.CarMediaDataManager;
import com.yftech.car.media.data.entity.MediaFile;
import com.yftech.libgallery.ui.PictureListFragment;
import com.yftech.libmedia.player.ui.VideoListFragment;
import com.yftech.libmvpmodule.mvp.BaseMvpFragment;
import com.yftech.multimedia.R;
import com.yftech.multimedia.presenter.SubjectPresenter;
import com.yftech.multimedia.view.ISubjectFragmentView;
import java.io.File;
import java.util.Objects;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* loaded from: /home/user/work/dex/classes4.dex */
public class SubjectFragment extends BaseMvpFragment<SubjectPresenter> implements View.OnClickListener, ISubjectFragmentView {
    private static final String ARG_PARAM1 = "index";
    private int index;
    private SimpleDraweeView iv_pic;
    private SimpleDraweeView iv_video;
    private LinearLayout lin_pic;
    private LinearLayout lin_video;
    private ProgressBar pb_pic;
    private ProgressBar pb_video;
    private PictureListFragment pictureListFragment;
    private TextView tv_pic_count;
    private TextView tv_video_count;
    private VideoListFragment videoListFragment;
    private boolean isVideoExist = false;
    private boolean isVideoComplete = false;
    private boolean isPhotoExist = false;
    private boolean isPhotoComplete = false;
    private boolean isEmpty = false;
    private boolean isDisplayVideoFrame = false;

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.yftech.libmvpmodule.mvp.BaseMvpFragment
    public SubjectPresenter createPresenter() {
        return new SubjectPresenter(getActivity());
    }

    public static SubjectFragment newInstance(int i) {
        SubjectFragment subjectFragment = new SubjectFragment();
        Bundle bundle = new Bundle();
        bundle.putInt(ARG_PARAM1, i);
        subjectFragment.setArguments(bundle);
        return subjectFragment;
    }

    @Override // com.yftech.libmvpmodule.mvp.BaseMvpFragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (getArguments() != null) {
            this.index = getArguments().getInt(ARG_PARAM1);
        }
        LogUtil.d("onCreate");
        EventBus.getDefault().register(this);
    }

    @Override // com.yftech.libmvpmodule.mvp.BaseMvpFragment
    public void onDestroy() {
        super.onDestroy();
        LogUtil.d("onDestroy");
        this.pictureListFragment = null;
        this.videoListFragment = null;
        EventBus.getDefault().unregister(this);
    }

    @Override // com.yftech.libmvpmodule.mvp.BaseMvpFragment
    protected View onBindView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.fragment_subject, viewGroup, false);
    }

    @Override // com.yftech.libmvpmodule.mvp.BaseMvpFragment
    protected void initView(View view) {
        this.iv_pic = view.findViewById(2131362104);
        this.iv_video = view.findViewById(R.id.iv_video);
        this.tv_pic_count = (TextView) view.findViewById(R.id.tv_pic_count);
        this.tv_video_count = (TextView) view.findViewById(R.id.tv_video_count);
        this.pb_pic = (ProgressBar) view.findViewById(2131362240);
        this.pb_video = (ProgressBar) view.findViewById(R.id.pb_video);
        this.lin_pic = (LinearLayout) view.findViewById(R.id.lin_pic);
        this.lin_pic.setOnClickListener(this);
        this.lin_video = (LinearLayout) view.findViewById(R.id.lin_video);
        this.lin_video.setOnClickListener(this);
        getPresenter().getVideoFileExist(this.index);
        getPresenter().getPhotoFileExist(this.index);
    }

    public void onActivityResult(int i, int i2, @Nullable Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (this.pictureListFragment != null) {
            this.pictureListFragment.onActivityResult(i, i2, intent);
        }
        if (this.videoListFragment != null) {
            this.videoListFragment.onActivityResult(i, i2, intent);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() == 2131362148) {
            if (!this.isPhotoComplete || this.isPhotoExist) {
                if (this.pictureListFragment == null) {
                    this.pictureListFragment = PictureListFragment.newInstance(this.index);
                }
                MyFragmentManger.getInstance().pushFragment(this.index, this.pictureListFragment);
                MyFragmentManger.getInstance().switchContent(this.pictureListFragment, R.id.rl_main);
                return;
            }
            return;
        }
        if (view.getId() == 2131362152) {
            if (!this.isVideoComplete || this.isVideoExist) {
                if (this.videoListFragment == null) {
                    this.videoListFragment = VideoListFragment.newInstance(this.index);
                }
                MyFragmentManger.getInstance().pushFragment(this.index, this.videoListFragment);
                MyFragmentManger.getInstance().switchContent(this.videoListFragment, R.id.rl_main);
            }
        }
    }

    @Override // com.yftech.multimedia.view.ISubjectFragmentView
    public void displayVideoFileExist(int i) {
        boolean isScanner = CarMediaDataManager.getInstance().isScanner(this.index);
        LogUtil.d("displayVideoFileExist:isScanning=" + isScanner + ", index=" + this.index + ", result=" + i);
        this.isVideoExist = i == 3 || i == this.index + 1;
        if (!isScanner && !this.isVideoExist) {
            this.pb_video.setVisibility(8);
        }
        if (this.isVideoExist) {
            getPresenter().getVideoFileSize(this.index);
        }
        Fragment parentFragment = getParentFragment();
        if (parentFragment instanceof MainFragment) {
            MainFragment mainFragment = (MainFragment) parentFragment;
            if (isScanner) {
                mainFragment.setTipsContent("", 0);
                this.isEmpty = false;
            } else {
                this.isVideoComplete = true;
                this.isEmpty = (!this.isPhotoComplete || this.isVideoExist || this.isPhotoExist) ? false : true;
                mainFragment.setTipsContent("", 0);
            }
        }
    }

    @Override // com.yftech.multimedia.view.ISubjectFragmentView
    public void displayPhotoFileExist(int i) {
        boolean isScanner = CarMediaDataManager.getInstance().isScanner(this.index);
        LogUtil.d("displayPhotoFileExist:isScanning=" + isScanner + ", index=" + this.index + "result=" + i);
        this.isPhotoExist = i == 3 || i == this.index + 1;
        if (!isScanner && !this.isPhotoExist) {
            this.pb_pic.setVisibility(8);
        }
        if (this.isPhotoExist) {
            getPresenter().getPhotoFileSize(this.index);
        }
        Fragment parentFragment = getParentFragment();
        if (parentFragment instanceof MainFragment) {
            MainFragment mainFragment = (MainFragment) parentFragment;
            if (mainFragment.getTabIndex() != this.index) {
                return;
            }
            if (isScanner) {
                mainFragment.setTipsContent("", 0);
                this.isEmpty = false;
                return;
            }
            this.isPhotoComplete = true;
            this.isEmpty = (!this.isVideoComplete || this.isVideoExist || this.isPhotoExist) ? false : true;
            if (this.isEmpty) {
                ToastUtils.showNormalMessage(getString(R.string.usb_devices_error_tips_3), 0);
            }
            mainFragment.setTipsContent("", 0);
        }
    }

    @Override // com.yftech.multimedia.view.ISubjectFragmentView
    public void displayVideoFileSize(int i) {
        this.tv_video_count.setText(String.valueOf(i));
        if (CarMediaDataManager.getInstance().isScanner(this.index)) {
            return;
        }
        this.pb_video.setVisibility(8);
        if (this.isDisplayVideoFrame || i <= 0) {
            return;
        }
        this.isDisplayVideoFrame = true;
        getPresenter().getVideoFileFrame(this.index);
    }

    @Override // com.yftech.multimedia.view.ISubjectFragmentView
    public void displayPhotoFileSize(int i) {
        this.tv_pic_count.setText(String.valueOf(i));
        if (CarMediaDataManager.getInstance().isScanner(this.index)) {
            return;
        }
        this.pb_pic.setVisibility(8);
        if (i > 0) {
            getPresenter().getPhotoFileFrame(this.index);
        }
    }

    @Override // com.yftech.multimedia.view.ISubjectFragmentView
    public void displayVideoFileFrame(Bitmap bitmap) {
        Glide.with((Context) Objects.requireNonNull(getContext())).load(bitmap).placeholder(2131624183).error(2131624183).into(this.iv_video);
    }

    @Override // com.yftech.multimedia.view.ISubjectFragmentView
    public void displayPhotoFileFrame(MediaFile mediaFile) {
        if (mediaFile != null) {
            this.iv_pic.setController(Fresco.newDraweeControllerBuilder().setUri(UriUtil.getUriForFile(new File(mediaFile.getData()))).setAutoPlayAnimations(true).build());
            return;
        }
        this.iv_pic.setImageResource(R.mipmap.pv_pic_error1);
    }

    public boolean isEmpty() {
        return this.isEmpty;
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onScanStatusChange(MediaDataCallbackForScanStatusChangedEvent mediaDataCallbackForScanStatusChangedEvent) {
        if (isAdded() && mediaDataCallbackForScanStatusChangedEvent.usbIndex == this.index) {
            this.pb_video.setVisibility(mediaDataCallbackForScanStatusChangedEvent.isScanner ? 0 : 8);
            this.pb_pic.setVisibility(mediaDataCallbackForScanStatusChangedEvent.isScanner ? 0 : 8);
            getPresenter().getVideoFileExist(this.index);
            getPresenter().getPhotoFileExist(this.index);
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onVideoDataChange(MediaDataCallbackForVideoDataChangedEvent mediaDataCallbackForVideoDataChangedEvent) {
        if (isAdded() && mediaDataCallbackForVideoDataChangedEvent.usbIndex == this.index) {
            LogUtil.d("onVideoDataChange:isVideoExist=" + this.isVideoExist);
            if (this.isVideoExist) {
                getPresenter().getVideoFileSize(this.index);
            } else {
                getPresenter().getVideoFileExist(this.index);
            }
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onPhotoDataChange(MediaDataCallbackForPhotoDataChangedEvent mediaDataCallbackForPhotoDataChangedEvent) {
        if (isAdded() && mediaDataCallbackForPhotoDataChangedEvent.usbIndex == this.index) {
            LogUtil.d("onPhotoDataChange:isPhotoExist=" + this.isPhotoExist);
            if (this.isPhotoExist) {
                getPresenter().getPhotoFileSize(this.index);
            } else {
                getPresenter().getPhotoFileExist(this.index);
            }
        }
    }
}
