package com.yftech.libmedia.player.ui;

import android.content.Intent;
import android.graphics.Rect;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.media.common.entity.QuickMultipleEntity;
import com.media.common.event.MediaDataCallbackForVideoDataChangedEvent;
import com.media.common.ui.widget.TipsDialog;
import com.media.common.util.LogUtil;
import com.media.common.util.MyFragmentManger;
import com.media.common.util.SharedPrefsUtil;
import com.yftech.car.media.data.CarMediaDataManager;
import com.yftech.libmedia.R;
import com.yftech.libmedia.player.bean.MediaFileForDataItem;
import com.yftech.libmedia.player.presenter.VideoListPresenter;
import com.yftech.libmedia.player.ui.adapter.VideoListAdapter;
import com.yftech.libmedia.player.view.IVideoListActivityView;
import com.yftech.libmvpmodule.mvp.BaseMvpFragment;
import com.yftech.vehicle.sdk.CarInfoManager;
import java.util.List;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* loaded from: /home/user/work/dex/classes4.dex */
public class VideoListFragment extends BaseMvpFragment<VideoListPresenter> implements IVideoListActivityView {
    private static final String ARG_PARAM1 = "index";
    private int index;
    private ProgressBar progressBar;
    private RecyclerView rv;
    private TextView vid_usb_name;
    private VideoListAdapter videoListAdapter;

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.yftech.libmvpmodule.mvp.BaseMvpFragment
    public VideoListPresenter createPresenter() {
        return new VideoListPresenter(getActivity());
    }

    public static VideoListFragment newInstance(int i) {
        VideoListFragment videoListFragment = new VideoListFragment();
        Bundle bundle = new Bundle();
        bundle.putInt(ARG_PARAM1, i);
        videoListFragment.setArguments(bundle);
        return videoListFragment;
    }

    @Override // com.yftech.libmvpmodule.mvp.BaseMvpFragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (getArguments() != null) {
            this.index = getArguments().getInt(ARG_PARAM1);
        }
        EventBus.getDefault().register(this);
    }

    @Override // com.yftech.libmvpmodule.mvp.BaseMvpFragment
    public void onDestroy() {
        super.onDestroy();
        EventBus.getDefault().unregister(this);
    }

    @Override // com.yftech.libmvpmodule.mvp.BaseMvpFragment
    public void onRefreshData() {
        String string;
        LogUtil.d("VideoListFragment:onRefreshData");
        if (this.videoListAdapter != null) {
            if (this.index == 0) {
                string = SharedPrefsUtil.getInstance(getContext()).getString("TAG_VIDEO_VIEWED_LAST_FOR_USB_1", "");
            } else {
                string = SharedPrefsUtil.getInstance(getContext()).getString("TAG_VIDEO_VIEWED_LAST_FOR_USB_2", "");
            }
            LogUtil.d("VideoListFragment:lastViewedPath=" + string);
            this.videoListAdapter.setLastViewedPath(string);
        }
    }

    @Override // com.yftech.libmvpmodule.mvp.BaseMvpFragment
    protected View onBindView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.fragment_video_list, viewGroup, false);
    }

    @Override // com.yftech.libmvpmodule.mvp.BaseMvpFragment
    protected void initView(View view) {
        this.vid_usb_name = (TextView) view.findViewById(R.id.vid_usb_title);
        if (this.index >= 0) {
            this.vid_usb_name.setText(getString(this.index == 0 ? R.string.music_source_selection_1 : R.string.music_source_selection_2));
        } else {
            this.vid_usb_name.setText("USB");
        }
        this.vid_usb_name.setOnClickListener(new View.OnClickListener() { // from class: com.yftech.libmedia.player.ui.VideoListFragment.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                if (VideoListFragment.this.getActivity() != null) {
                    VideoListFragment.this.getActivity().onBackPressed();
                }
            }
        });
        this.progressBar = (ProgressBar) view.findViewById(R.id.progressBar);
        this.progressBar.setVisibility(0);
        this.rv = view.findViewById(R.id.rv);
        this.rv.addItemDecoration(new RecyclerView.ItemDecoration() { // from class: com.yftech.libmedia.player.ui.VideoListFragment.2
            public void getItemOffsets(@NonNull Rect rect, @NonNull View view2, @NonNull RecyclerView recyclerView, @NonNull RecyclerView.State state) {
                rect.top = 6;
                rect.bottom = 6;
            }
        });
        this.videoListAdapter = new VideoListAdapter(this, this.index);
        this.videoListAdapter.setOnItemClickListener(new VideoListAdapter.OnItemClickListener() { // from class: com.yftech.libmedia.player.ui.VideoListFragment.3
            @Override // com.yftech.libmedia.player.ui.adapter.VideoListAdapter.OnItemClickListener
            public void onItemClick(MediaFileForDataItem mediaFileForDataItem) {
                if (VideoListFragment.this.videoListAdapter == null) {
                    return;
                }
                if (CarInfoManager.get().getVehicleSpeed() < 1) {
                    VideoPlayerFragment newInstance = VideoPlayerFragment.newInstance(VideoListFragment.this.index, mediaFileForDataItem.getData(), mediaFileForDataItem.getTitle());
                    MyFragmentManger.getInstance().pushFragment(VideoListFragment.this.index, newInstance);
                    MyFragmentManger.getInstance().switchContent(newInstance, MyFragmentManger.getInstance().getVideoPlayerLayoutId());
                    return;
                }
                TipsDialog.newInstance(VideoListFragment.this.getString(R.string.video_play_speed_overflow_tips)).show(VideoListFragment.this.getChildFragmentManager(), TipsDialog.class.getSimpleName());
            }
        });
        this.videoListAdapter.setOnLastViewedCallback(new VideoListAdapter.OnLastViewedCallback() { // from class: com.yftech.libmedia.player.ui.VideoListFragment.4
            @Override // com.yftech.libmedia.player.ui.adapter.VideoListAdapter.OnLastViewedCallback
            public void onLoadLastViewedPosition(int i) {
                if (i >= 0) {
                    VideoListFragment.this.rv.scrollToPosition(i);
                }
            }
        });
        this.rv.setAdapter(this.videoListAdapter);
        GridLayoutManager gridLayoutManager = new GridLayoutManager(getContext(), 4);
        gridLayoutManager.setSpanSizeLookup(new GridLayoutManager.SpanSizeLookup() { // from class: com.yftech.libmedia.player.ui.VideoListFragment.5
            public int getSpanSize(int i) {
                if (VideoListFragment.this.videoListAdapter != null) {
                    QuickMultipleEntity quickMultipleEntity = (QuickMultipleEntity) VideoListFragment.this.videoListAdapter.getItem(i);
                    if (quickMultipleEntity != null && quickMultipleEntity.getItemType() == 2) {
                        return 4;
                    }
                    if (quickMultipleEntity == null || quickMultipleEntity.getItemType() == 3) {
                        return 1;
                    }
                }
                return 1;
            }
        });
        this.rv.setLayoutManager(gridLayoutManager);
        getVideoData();
    }

    private void getVideoData() {
        this.progressBar.setVisibility(0);
        getPresenter().getVideoListData(this.index);
    }

    public void onActivityResult(int i, int i2, @Nullable Intent intent) {
        String string;
        super.onActivityResult(i, i2, intent);
        if (i != 1001 || this.videoListAdapter == null) {
            return;
        }
        if (this.index == 0) {
            string = SharedPrefsUtil.getInstance(getContext()).getString("TAG_VIDEO_VIEWED_LAST_FOR_USB_1", "");
        } else {
            string = SharedPrefsUtil.getInstance(getContext()).getString("TAG_VIDEO_VIEWED_LAST_FOR_USB_2", "");
        }
        this.videoListAdapter.setLastViewedPath(string);
    }

    @Override // com.yftech.libmedia.player.view.IVideoListActivityView
    public void displayVideoList(List<QuickMultipleEntity> list) {
        if (!CarMediaDataManager.getInstance().isScanner(this.index)) {
            this.progressBar.setVisibility(8);
        }
        if (this.videoListAdapter != null) {
            this.videoListAdapter.setNewData(list);
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onVideoDataChange(MediaDataCallbackForVideoDataChangedEvent mediaDataCallbackForVideoDataChangedEvent) {
        if (isAdded() && mediaDataCallbackForVideoDataChangedEvent.usbIndex == this.index) {
            getPresenter().getVideoListData(this.index);
        }
    }
}
