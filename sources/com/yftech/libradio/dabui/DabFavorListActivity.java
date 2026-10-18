package com.yftech.libradio.dabui;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.graphics.Typeface;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.media.common.util.LogUtil;
import com.media.common.util.ToastUtils;
import com.yftech.car.media.radio.dab.CarDabRadioManager;
import com.yftech.car.media.radio.dab.entity.DabLabel;
import com.yftech.car.media.radio.dab.entity.DabPlayInfo;
import com.yftech.libradio.DabDataManager;
import com.yftech.libradio.R;
import com.yftech.libradio.Utils;
import com.yftech.libradio.bean.DabChannelInfo;
import com.yftech.libradio.presenter.DabFavorPresenter;
import com.yftech.libradio.view.IDabFavorView;
import com.yftech.vehicle.internal.adapter.ICarDoor;
import com.yftech.vehicle.internal.adapter.ICarLight;
import java.util.ArrayList;
import java.util.List;

/* loaded from: /home/user/work/dex/classes4.dex */
public class DabFavorListActivity extends DabPlayerActivity<DabFavorPresenter> implements IDabFavorView {
    private DabCallback callback;
    private int currentPlayIndex;
    private View emptyView;
    private boolean hasScrolledWithOffset;
    private ImageView iv_toBoard;
    private DabPlayInfo mDabPlayInfo;
    private String[] ptyStrs;
    private RecyclerView rvAllStationList;
    private boolean pullUp = false;
    private List<DabChannelInfo> mDabChannelInfoList = new ArrayList();
    private Handler mHanlder = new Handler(Looper.getMainLooper());

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.yftech.libmvpmodule.mvp.BaseMvpActivity
    public DabFavorPresenter createPresenter() {
        return new DabFavorPresenter(this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.yftech.libradio.dabui.DabPlayerActivity, com.yftech.libmvpmodule.mvp.BaseMvpActivity
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_dab_favor_list);
        this.rvAllStationList = findViewById(R.id.rv_dab_favor_list);
        this.emptyView = findViewById(R.id.favor_layout_no_content);
        FavorListAdapter favorListAdapter = new FavorListAdapter();
        final LinearLayoutManager linearLayoutManager = new LinearLayoutManager(this, 1, false);
        this.rvAllStationList.setLayoutManager(linearLayoutManager);
        this.rvAllStationList.setAdapter(favorListAdapter);
        this.iv_toBoard = (ImageView) findViewById(R.id.iv_toBoard);
        this.iv_toBoard.setOnClickListener(new View.OnClickListener() { // from class: com.yftech.libradio.dabui.DabFavorListActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (DabFavorListActivity.this.pullUp) {
                    DabFavorListActivity.this.rvAllStationList.scrollToPosition(0);
                    return;
                }
                int itemCount = DabFavorListActivity.this.rvAllStationList.getAdapter().getItemCount() - 1;
                if (itemCount >= 0) {
                    DabFavorListActivity.this.rvAllStationList.scrollToPosition(itemCount);
                }
            }
        });
        this.rvAllStationList.addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: com.yftech.libradio.dabui.DabFavorListActivity.2
            public void onScrolled(@NonNull RecyclerView recyclerView, int i, int i2) {
                if (DabFavorListActivity.this.pullUp != (i2 < 0)) {
                    DabFavorListActivity.this.pullUp = i2 < 0;
                }
                DabFavorListActivity.this.pullUp = i2 < 0;
                LogUtil.d("onScrolled:pullUp=" + DabFavorListActivity.this.pullUp);
                int findFirstVisibleItemPosition = linearLayoutManager.findFirstVisibleItemPosition();
                int findLastVisibleItemPosition = linearLayoutManager.findLastVisibleItemPosition();
                LogUtil.d("firstVisibleItemPosition=" + findFirstVisibleItemPosition);
                LogUtil.d("lastVisibleItemPosition=" + findLastVisibleItemPosition);
                if (findFirstVisibleItemPosition <= 7 || findLastVisibleItemPosition >= DabFavorListActivity.this.rvAllStationList.getAdapter().getItemCount() - 1) {
                    DabFavorListActivity.this.setBoardVisible(false);
                } else if (DabFavorListActivity.this.pullUp) {
                    DabFavorListActivity.this.iv_toBoard.setImageResource(R.mipmap.radio_btn_reach_top);
                    DabFavorListActivity.this.setBoardVisible(true);
                } else {
                    DabFavorListActivity.this.iv_toBoard.setImageResource(R.mipmap.radio_btn_reach_bottom);
                    DabFavorListActivity.this.setBoardVisible(true);
                }
            }
        });
    }

    @Override // com.yftech.libradio.dabui.DabPlayerActivity
    public void onStart() {
        super.onStart();
        this.ptyStrs = getResources().getStringArray(R.array.dab_ptys);
        this.callback = new DabCallback();
        CarDabRadioManager.getInstance().registerRadioControlCallback(this.callback, this.mHanlder);
    }

    @Override // com.yftech.libradio.dabui.DabPlayerActivity, com.yftech.libmvpmodule.mvp.BaseMvpActivity
    public void onStop() {
        super.onStop();
        CarDabRadioManager.getInstance().unregisterRadioControlCallback(this.callback);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.yftech.libmvpmodule.mvp.BaseMvpActivity
    public void onResume() {
        super.onResume();
        ((DabFavorPresenter) getPresenter()).getFavors();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setBoardVisible(boolean z) {
        if (z) {
            this.iv_toBoard.animate().cancel();
            this.iv_toBoard.setVisibility(0);
            this.iv_toBoard.setAlpha(1.0f);
            this.iv_toBoard.animate().alpha(0.0f).setStartDelay(4000L).setDuration(1000L).setListener(new AnimatorListenerAdapter() { // from class: com.yftech.libradio.dabui.DabFavorListActivity.3
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    DabFavorListActivity.this.iv_toBoard.setVisibility(4);
                }
            }).start();
            return;
        }
        this.iv_toBoard.animate().cancel();
        this.iv_toBoard.setVisibility(4);
    }

    private void updateLayout(boolean z) {
        if (z) {
            this.rvAllStationList.setVisibility(8);
            this.emptyView.setVisibility(0);
        } else {
            this.rvAllStationList.setVisibility(0);
            this.emptyView.setVisibility(8);
        }
    }

    @Override // com.yftech.libradio.view.IDabFavorView
    public void displayFavorList(int i, List<DabChannelInfo> list) {
        if (list == null || list.size() == 0) {
            updateLayout(true);
            ((TextView) findViewById(R.id.tv_station_name_title)).setText(getString(R.string.station_name_with_count, new Object[]{String.valueOf(0)}));
            return;
        }
        ((TextView) findViewById(R.id.tv_station_name_title)).setText(getString(R.string.station_name_with_count, new Object[]{String.valueOf(list.size())}));
        this.currentPlayIndex = i;
        this.mDabChannelInfoList.clear();
        this.mDabChannelInfoList.addAll(list);
        updateLayout(this.mDabChannelInfoList.isEmpty());
        this.rvAllStationList.getAdapter().notifyDataSetChanged();
        scrollToPlayingPosition(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void scrollToPlayingPosition(int i) {
        if (this.hasScrolledWithOffset) {
            this.rvAllStationList.getLayoutManager().scrollToPosition(i);
            return;
        }
        if (i == 0 || this.mDabChannelInfoList.size() - i <= 5) {
            this.rvAllStationList.getLayoutManager().scrollToPositionWithOffset(i, 0);
        } else if (i == 1) {
            this.rvAllStationList.getLayoutManager().scrollToPositionWithOffset(i - 1, 0);
        } else {
            this.rvAllStationList.getLayoutManager().scrollToPositionWithOffset(i - 2, 0);
        }
        this.hasScrolledWithOffset = true;
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    private class FavorListAdapter extends RecyclerView.Adapter<StationViewHolder> {
        private FavorListAdapter() {
        }

        @NonNull
        public StationViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i) {
            return new StationViewHolder(LayoutInflater.from(DabFavorListActivity.this).inflate(R.layout.item_dab_favor_list, viewGroup, false));
        }

        public void onBindViewHolder(@NonNull StationViewHolder stationViewHolder, int i) {
            stationViewHolder.index = i;
            DabChannelInfo dabChannelInfo = (DabChannelInfo) DabFavorListActivity.this.mDabChannelInfoList.get(i);
            stationViewHolder.imgStationIcon.setTag(dabChannelInfo);
            if (dabChannelInfo == null) {
                return;
            }
            String string = DabFavorListActivity.this.getString(R.string.radio_unknown);
            if (dabChannelInfo.getStatPty() >= 0 && dabChannelInfo.getStatPty() < DabFavorListActivity.this.ptyStrs.length) {
                string = DabFavorListActivity.this.ptyStrs[dabChannelInfo.getStatPty()];
            }
            stationViewHolder.tvStationType.setText(Utils.convertStationName(string));
            String string2 = DabFavorListActivity.this.getString(R.string.radio_unknown);
            DabLabel propertieslabel = dabChannelInfo.getPropertieslabel();
            if (propertieslabel != null && !TextUtils.isEmpty(propertieslabel.getLabelString())) {
                string2 = propertieslabel.getLabelString();
            }
            stationViewHolder.tvStationName.setText(Utils.convertStationName(string2));
            String string3 = DabFavorListActivity.this.getString(R.string.radio_unknown);
            DabLabel ensembleLabel = dabChannelInfo.getEnsembleLabel();
            if (ensembleLabel != null && !TextUtils.isEmpty(ensembleLabel.getLabelString())) {
                string3 = ensembleLabel.getLabelString();
            }
            stationViewHolder.tvServiceGroup.setText(Utils.convertStationName(string3));
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) stationViewHolder.tvStationName.getLayoutParams();
            if (DabFavorListActivity.this.currentPlayIndex == i) {
                stationViewHolder.ivBackground.setVisibility(0);
                stationViewHolder.ivPlayStatus.setVisibility(0);
                layoutParams.setMarginStart(ICarLight.SMALL_LIGHT_STATE);
                stationViewHolder.tvStationType.setTextColor(DabFavorListActivity.this.getColor(R.color.colorB3DD9D09));
                stationViewHolder.tvStationName.setTextColor(DabFavorListActivity.this.getColor(R.color.colorDD9D09));
                stationViewHolder.tvServiceGroup.setTextColor(DabFavorListActivity.this.getColor(R.color.colorB3DD9D09));
                stationViewHolder.tvStationName.setTypeface(Typeface.create("sourcehan-sans-medium", 0));
            } else {
                stationViewHolder.ivBackground.setVisibility(8);
                stationViewHolder.ivPlayStatus.setVisibility(8);
                layoutParams.setMarginStart(ICarDoor.REAR_LEFT_DOOR_STATE);
                stationViewHolder.tvStationType.setTextColor(DabFavorListActivity.this.getColor(R.color.colorB3FFFFFF));
                stationViewHolder.tvStationName.setTextColor(DabFavorListActivity.this.getColor(R.color.colorFFFFFF));
                stationViewHolder.tvServiceGroup.setTextColor(DabFavorListActivity.this.getColor(R.color.colorB3FFFFFF));
                stationViewHolder.tvStationName.setTypeface(Typeface.create("sourcehan-sans-regular", 0));
            }
            stationViewHolder.tvStationName.setLayoutParams(layoutParams);
            if (dabChannelInfo.getImageData() != null) {
                LogUtil.w("sky-->DabFavorListActivity->getImageData is have value");
                Utils.loadDabSliderShowDataNoCache(stationViewHolder.imgStationIcon, DabFavorListActivity.this.getDrawable(R.mipmap.pic_list_tiny_default), 8, dabChannelInfo.getImageData());
            } else {
                stationViewHolder.imgStationIcon.setImageResource(R.mipmap.pic_list_tiny_default);
            }
        }

        public int getItemCount() {
            return DabFavorListActivity.this.mDabChannelInfoList.size();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes4.dex */
    public class StationViewHolder extends RecyclerView.ViewHolder {
        private ImageView imgStationIcon;
        private int index;
        private ImageView ivBackground;
        private ImageView ivFavorIcon;
        private ImageView ivPlayStatus;
        private TextView tvServiceGroup;
        private TextView tvStationName;
        private TextView tvStationType;

        public StationViewHolder(@NonNull View view) {
            super(view);
            this.ivBackground = (ImageView) view.findViewById(R.id.iv_background);
            this.ivPlayStatus = (ImageView) view.findViewById(R.id.iv_play_status);
            this.tvStationName = (TextView) view.findViewById(R.id.tv_station_name);
            this.tvStationType = (TextView) view.findViewById(R.id.tv_station_type);
            this.tvServiceGroup = (TextView) view.findViewById(R.id.tv_station_service_group);
            this.ivFavorIcon = (ImageView) view.findViewById(R.id.iv_station_favor_flag);
            this.imgStationIcon = (ImageView) view.findViewById(R.id.iv_station_icon);
            this.ivFavorIcon.setOnClickListener(new View.OnClickListener() { // from class: com.yftech.libradio.dabui.DabFavorListActivity.StationViewHolder.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    DabChannelInfo dabChannelInfo = (DabChannelInfo) DabFavorListActivity.this.mDabChannelInfoList.get(StationViewHolder.this.index);
                    if (dabChannelInfo != null) {
                        CarDabRadioManager.getInstance().removeFavored(dabChannelInfo.getFrequency(), dabChannelInfo.getEnsembleId(), dabChannelInfo.getServiceId());
                        ToastUtils.showNormalMessage(R.string.radio_channel_favor_dialog_remove_favor_successful, 1);
                    } else {
                        LogUtil.w("dabChannelInfo is null ----");
                    }
                }
            });
            view.setOnClickListener(new View.OnClickListener() { // from class: com.yftech.libradio.dabui.DabFavorListActivity.StationViewHolder.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    DabChannelInfo dabChannelInfo = (DabChannelInfo) DabFavorListActivity.this.mDabChannelInfoList.get(StationViewHolder.this.index);
                    if (dabChannelInfo != null && !Utils.isQuickClick()) {
                        List<DabChannelInfo> dabChannelInfoList = DabDataManager.getInstance().getDabChannelInfoList();
                        if (dabChannelInfoList == null || dabChannelInfoList.isEmpty()) {
                            return;
                        }
                        for (DabChannelInfo dabChannelInfo2 : dabChannelInfoList) {
                            if (dabChannelInfo2.getEnsembleId() == dabChannelInfo.getEnsembleId() && dabChannelInfo2.getServiceId() == dabChannelInfo.getServiceId()) {
                                CarDabRadioManager.getInstance().setFreq(dabChannelInfo2.getFrequency(), dabChannelInfo2.getEnsembleId(), dabChannelInfo2.getServiceId());
                                return;
                            }
                        }
                        return;
                    }
                    LogUtil.w("dabChannelInfo is null ----");
                }
            });
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    private class DabCallback extends CarDabRadioManager.CarDabRadioControlCallback {
        private DabCallback() {
        }

        public void onPlayPause(boolean z) {
            super.onPlayPause(z);
        }

        public void onPlayStatusChange(DabPlayInfo dabPlayInfo) {
            super.onPlayStatusChange(dabPlayInfo);
            if (DabFavorListActivity.this.mDabPlayInfo != null && DabFavorListActivity.this.mDabPlayInfo.getFrequency() == dabPlayInfo.getFrequency() && DabFavorListActivity.this.mDabPlayInfo.getEnsembleId() == dabPlayInfo.getEnsembleId() && DabFavorListActivity.this.mDabPlayInfo.getServiceId() == dabPlayInfo.getServiceId()) {
                return;
            }
            LogUtil.d("onPlayStatusChange isPlaying: " + dabPlayInfo.toString());
            DabFavorListActivity.this.mDabPlayInfo = dabPlayInfo;
            int i = 0;
            while (true) {
                if (i >= DabFavorListActivity.this.mDabChannelInfoList.size()) {
                    break;
                }
                DabChannelInfo dabChannelInfo = (DabChannelInfo) DabFavorListActivity.this.mDabChannelInfoList.get(i);
                if (dabPlayInfo.getServiceId() == dabChannelInfo.getServiceId() && dabPlayInfo.getEnsembleId() == dabChannelInfo.getEnsembleId()) {
                    DabFavorListActivity.this.currentPlayIndex = i;
                    break;
                }
                i++;
            }
            DabFavorListActivity.this.mHanlder.post(new Runnable() { // from class: com.yftech.libradio.dabui.DabFavorListActivity.DabCallback.1
                @Override // java.lang.Runnable
                public void run() {
                    DabFavorListActivity.this.rvAllStationList.getAdapter().notifyDataSetChanged();
                    DabFavorListActivity.this.scrollToPlayingPosition(DabFavorListActivity.this.currentPlayIndex);
                }
            });
        }

        public void onEnsembleListChange(int i) {
            super.onEnsembleListChange(i);
            ((DabFavorPresenter) DabFavorListActivity.this.getPresenter()).getFavors();
        }

        public void onFavorChange(int i) {
            super.onFavorChange(i);
            ((DabFavorPresenter) DabFavorListActivity.this.getPresenter()).getFavors();
        }

        public void onDabImageInfo() {
            super.onDabImageInfo();
            if (DabFavorListActivity.this.mDabChannelInfoList.isEmpty() || DabFavorListActivity.this.currentPlayIndex < 0 || DabFavorListActivity.this.currentPlayIndex >= DabFavorListActivity.this.mDabChannelInfoList.size()) {
                return;
            }
            DabChannelInfo dabChannelInfo = (DabChannelInfo) DabFavorListActivity.this.mDabChannelInfoList.get(DabFavorListActivity.this.currentPlayIndex);
            byte[] dabImageInfo = Utils.getDabImageInfo();
            if (dabImageInfo != null) {
                dabChannelInfo.setImageData(dabImageInfo);
                DabFavorListActivity.this.mHanlder.post(new Runnable() { // from class: com.yftech.libradio.dabui.DabFavorListActivity.DabCallback.2
                    @Override // java.lang.Runnable
                    public void run() {
                        DabFavorListActivity.this.rvAllStationList.getAdapter().notifyDataSetChanged();
                    }
                });
            }
        }
    }
}
