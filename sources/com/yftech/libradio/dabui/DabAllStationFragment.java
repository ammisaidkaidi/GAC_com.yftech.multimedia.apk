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
import com.yftech.car.media.radio.dab.CarDabRadioManager;
import com.yftech.car.media.radio.dab.entity.DabLabel;
import com.yftech.car.media.radio.dab.entity.DabPlayInfo;
import com.yftech.car.media.radio.dab.entity.DabScanStatus;
import com.yftech.libradio.DabDataManager;
import com.yftech.libradio.R;
import com.yftech.libradio.Utils;
import com.yftech.libradio.bean.DabChannelInfo;
import java.util.ArrayList;
import java.util.List;

/* loaded from: /home/user/work/dex/classes4.dex */
public class DabAllStationFragment extends DabPlayerFragment {
    private DabCallback callback;
    private DabPlayInfo currentPlayInfo;
    private View emptyView;
    private boolean hasScrolledWithOffset;
    private ImageView iv_toBoard;
    private String[] ptyStrs;
    private RecyclerView rvAllStationList;
    private TextView tvNameAndCount;
    private boolean pullUp = false;
    private List<DabChannelInfo> mDabChannelInfoList = new ArrayList();
    private Handler mHanlder = new Handler(Looper.getMainLooper());
    private DabDataManager.DabDataManagerCallback dabDataManagerCallback = new DabDataManager.DabDataManagerCallback() { // from class: com.yftech.libradio.dabui.DabAllStationFragment.1
        @Override // com.yftech.libradio.DabDataManager.DabDataManagerCallback
        public void onDataListChanged(List<DabChannelInfo> list) {
            if (!list.isEmpty()) {
                DabAllStationFragment.this.mDabChannelInfoList.clear();
                DabAllStationFragment.this.mDabChannelInfoList.addAll(list);
                DabAllStationFragment.this.mHanlder.post(new Runnable() { // from class: com.yftech.libradio.dabui.DabAllStationFragment.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        DabAllStationFragment.this.updateLayout(DabAllStationFragment.this.mDabChannelInfoList.isEmpty());
                        DabAllStationFragment.this.rvAllStationList.getAdapter().notifyDataSetChanged();
                    }
                });
                DabAllStationFragment.this.mHanlder.postDelayed(new Runnable() { // from class: com.yftech.libradio.dabui.DabAllStationFragment.1.2
                    @Override // java.lang.Runnable
                    public void run() {
                        if (DabAllStationFragment.this.mDabChannelInfoList.isEmpty()) {
                            return;
                        }
                        DabAllStationFragment.this.updatePlayInfoView();
                    }
                }, 500L);
                return;
            }
            LogUtil.d("refreshData,ChannelInfoList is empty ----");
        }

        @Override // com.yftech.libradio.DabDataManager.DabDataManagerCallback
        public void onSlideShowImageChanged(byte[] bArr) {
            if (bArr == null) {
                return;
            }
            for (DabChannelInfo dabChannelInfo : DabAllStationFragment.this.mDabChannelInfoList) {
                if (DabAllStationFragment.this.currentPlayInfo != null && dabChannelInfo.getFrequency() == DabAllStationFragment.this.currentPlayInfo.getFrequency() && dabChannelInfo.getServiceId() == DabAllStationFragment.this.currentPlayInfo.getServiceId() && dabChannelInfo.getEnsembleId() == DabAllStationFragment.this.currentPlayInfo.getEnsembleId()) {
                    dabChannelInfo.setImageData(bArr);
                    DabAllStationFragment.this.mHanlder.post(new Runnable() { // from class: com.yftech.libradio.dabui.DabAllStationFragment.1.3
                        @Override // java.lang.Runnable
                        public void run() {
                            DabAllStationFragment.this.rvAllStationList.getAdapter().notifyDataSetChanged();
                        }
                    });
                    return;
                }
            }
        }
    };

    @Override // com.yftech.libmvpmodule.mvp.BaseMvpFragment
    protected View onBindView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.fragment_dab_list_all_station, viewGroup, false);
    }

    @Override // com.yftech.libmvpmodule.mvp.BaseMvpFragment
    protected void initView(View view) {
        this.rvAllStationList = view.findViewById(R.id.rv_all_stationg_list);
        this.emptyView = view.findViewById(R.id.layout_no_content);
        this.tvNameAndCount = (TextView) view.findViewById(R.id.tv_station_name_title);
        StationListAdapter stationListAdapter = new StationListAdapter();
        final LinearLayoutManager linearLayoutManager = new LinearLayoutManager(getContext(), 1, false);
        this.rvAllStationList.setLayoutManager(linearLayoutManager);
        this.rvAllStationList.setAdapter(stationListAdapter);
        this.iv_toBoard = (ImageView) view.findViewById(R.id.iv_toBoard);
        this.iv_toBoard.setOnClickListener(new View.OnClickListener() { // from class: com.yftech.libradio.dabui.DabAllStationFragment.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                if (DabAllStationFragment.this.pullUp) {
                    DabAllStationFragment.this.rvAllStationList.scrollToPosition(0);
                    return;
                }
                int itemCount = DabAllStationFragment.this.rvAllStationList.getAdapter().getItemCount() - 1;
                if (itemCount >= 0) {
                    DabAllStationFragment.this.rvAllStationList.scrollToPosition(itemCount);
                }
            }
        });
        this.rvAllStationList.addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: com.yftech.libradio.dabui.DabAllStationFragment.3
            public void onScrolled(@NonNull RecyclerView recyclerView, int i, int i2) {
                if (DabAllStationFragment.this.pullUp != (i2 < 0)) {
                    DabAllStationFragment.this.pullUp = i2 < 0;
                }
                DabAllStationFragment.this.pullUp = i2 < 0;
                int findFirstVisibleItemPosition = linearLayoutManager.findFirstVisibleItemPosition();
                int findLastVisibleItemPosition = linearLayoutManager.findLastVisibleItemPosition();
                if (findFirstVisibleItemPosition <= 7 || findLastVisibleItemPosition >= DabAllStationFragment.this.rvAllStationList.getAdapter().getItemCount() - 1) {
                    DabAllStationFragment.this.setBoardVisible(false);
                } else if (DabAllStationFragment.this.pullUp) {
                    DabAllStationFragment.this.iv_toBoard.setImageResource(R.mipmap.radio_btn_reach_top);
                    DabAllStationFragment.this.setBoardVisible(true);
                } else {
                    DabAllStationFragment.this.iv_toBoard.setImageResource(R.mipmap.radio_btn_reach_bottom);
                    DabAllStationFragment.this.setBoardVisible(true);
                }
            }
        });
    }

    @Override // com.yftech.libradio.dabui.DabPlayerFragment, com.yftech.libmvpmodule.mvp.BaseMvpFragment
    public void onResume() {
        super.onResume();
        LogUtil.d("onResume------");
        this.ptyStrs = getResources().getStringArray(R.array.dab_ptys);
        this.callback = new DabCallback();
        CarDabRadioManager.getInstance().registerRadioControlCallback(this.callback, this.mHanlder);
        if (!DabDataManager.getInstance().isInitialized()) {
            DabDataManager.getInstance().init();
        }
        DabDataManager.getInstance().registerObservor(this.dabDataManagerCallback);
        List<DabChannelInfo> dabChannelInfoList = DabDataManager.getInstance().getDabChannelInfoList();
        if (dabChannelInfoList != null && !dabChannelInfoList.isEmpty()) {
            this.mDabChannelInfoList.clear();
            this.mDabChannelInfoList.addAll(dabChannelInfoList);
            updateLayout(this.mDabChannelInfoList.isEmpty());
            this.rvAllStationList.getAdapter().notifyDataSetChanged();
            if (this.mDabChannelInfoList.isEmpty()) {
                return;
            }
            updatePlayInfoView();
            return;
        }
        updateLayout(this.mDabChannelInfoList.isEmpty());
    }

    @Override // com.yftech.libradio.dabui.DabPlayerFragment, com.yftech.libmvpmodule.mvp.BaseMvpFragment
    public void onPause() {
        super.onPause();
        LogUtil.d("onPause------");
        CarDabRadioManager.getInstance().unregisterRadioControlCallback(this.callback);
        DabDataManager.getInstance().unregisterObservor(this.dabDataManagerCallback);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setBoardVisible(boolean z) {
        if (z) {
            this.iv_toBoard.animate().cancel();
            this.iv_toBoard.setVisibility(0);
            this.iv_toBoard.setAlpha(1.0f);
            this.iv_toBoard.animate().alpha(0.0f).setStartDelay(4000L).setDuration(1000L).setListener(new AnimatorListenerAdapter() { // from class: com.yftech.libradio.dabui.DabAllStationFragment.4
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    DabAllStationFragment.this.iv_toBoard.setVisibility(4);
                }
            }).start();
            return;
        }
        this.iv_toBoard.animate().cancel();
        this.iv_toBoard.setVisibility(4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateLayout(boolean z) {
        if (z) {
            this.tvNameAndCount.setText(getString(R.string.station_name_with_count, new Object[]{String.valueOf(0)}));
            this.rvAllStationList.setVisibility(8);
            this.emptyView.setVisibility(0);
        } else {
            this.tvNameAndCount.setText(getString(R.string.station_name_with_count, new Object[]{String.valueOf(this.mDabChannelInfoList.size())}));
            this.rvAllStationList.setVisibility(0);
            this.emptyView.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updatePlayInfoView() {
        DabPlayInfo playInfo = CarDabRadioManager.getInstance().getPlayInfo();
        if (playInfo == null) {
            LogUtil.d("updatePlayInfoView,currentPlayInfo is null ----");
            return;
        }
        if (this.currentPlayInfo != null && this.currentPlayInfo.getFrequency() == playInfo.getFrequency() && this.currentPlayInfo.getEnsembleId() == playInfo.getEnsembleId() && this.currentPlayInfo.getServiceId() == playInfo.getServiceId()) {
            return;
        }
        this.currentPlayInfo = playInfo;
        this.mHanlder.post(new Runnable() { // from class: com.yftech.libradio.dabui.DabAllStationFragment.5
            @Override // java.lang.Runnable
            public void run() {
                for (int i = 0; i < DabAllStationFragment.this.mDabChannelInfoList.size(); i++) {
                    DabChannelInfo dabChannelInfo = (DabChannelInfo) DabAllStationFragment.this.mDabChannelInfoList.get(i);
                    if (DabAllStationFragment.this.currentPlayInfo.getFrequency() == dabChannelInfo.getFrequency() && DabAllStationFragment.this.currentPlayInfo.getServiceId() == dabChannelInfo.getServiceId() && DabAllStationFragment.this.currentPlayInfo.getEnsembleId() == dabChannelInfo.getEnsembleId()) {
                        DabAllStationFragment.this.rvAllStationList.getAdapter().notifyDataSetChanged();
                        if (DabAllStationFragment.this.hasScrolledWithOffset) {
                            DabAllStationFragment.this.rvAllStationList.getLayoutManager().scrollToPosition(i);
                            return;
                        }
                        if (i == 0 || DabAllStationFragment.this.mDabChannelInfoList.size() - i <= 5) {
                            DabAllStationFragment.this.rvAllStationList.getLayoutManager().scrollToPositionWithOffset(i, 0);
                        } else if (i == 1) {
                            DabAllStationFragment.this.rvAllStationList.getLayoutManager().scrollToPositionWithOffset(i - 1, 0);
                        } else {
                            DabAllStationFragment.this.rvAllStationList.getLayoutManager().scrollToPositionWithOffset(i - 2, 0);
                        }
                        DabAllStationFragment.this.hasScrolledWithOffset = true;
                        return;
                    }
                }
            }
        });
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    private class StationListAdapter extends RecyclerView.Adapter<StationViewHolder> {
        private StationListAdapter() {
        }

        @NonNull
        public StationViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i) {
            return new StationViewHolder(LayoutInflater.from(DabAllStationFragment.this.getContext()).inflate(R.layout.item_all_station_list, viewGroup, false));
        }

        public void onBindViewHolder(@NonNull StationViewHolder stationViewHolder, int i) {
            stationViewHolder.position = i;
            DabChannelInfo dabChannelInfo = (DabChannelInfo) DabAllStationFragment.this.mDabChannelInfoList.get(i);
            stationViewHolder.ivStationIcon.setTag(dabChannelInfo);
            if (dabChannelInfo == null) {
                return;
            }
            String string = DabAllStationFragment.this.getString(R.string.radio_unknown);
            if (dabChannelInfo.getStatPty() >= 0 && dabChannelInfo.getStatPty() < DabAllStationFragment.this.ptyStrs.length) {
                string = DabAllStationFragment.this.ptyStrs[dabChannelInfo.getStatPty()];
            }
            stationViewHolder.tvStationType.setText(Utils.convertStationName(string));
            String string2 = DabAllStationFragment.this.getString(R.string.radio_unknown);
            DabLabel propertieslabel = dabChannelInfo.getPropertieslabel();
            if (propertieslabel != null && !TextUtils.isEmpty(propertieslabel.getLabelString())) {
                string2 = propertieslabel.getLabelString();
            }
            stationViewHolder.tvStationName.setText(Utils.convertStationName(string2));
            String string3 = DabAllStationFragment.this.getString(R.string.radio_unknown);
            DabLabel ensembleLabel = dabChannelInfo.getEnsembleLabel();
            if (ensembleLabel != null && !TextUtils.isEmpty(ensembleLabel.getLabelString())) {
                string3 = ensembleLabel.getLabelString();
            }
            stationViewHolder.tvServiceGroup.setText(Utils.convertStationName(string3));
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) stationViewHolder.tvStationName.getLayoutParams();
            if (DabAllStationFragment.this.currentPlayInfo == null || DabAllStationFragment.this.currentPlayInfo.getFrequency() != dabChannelInfo.getFrequency() || dabChannelInfo.getServiceId() != DabAllStationFragment.this.currentPlayInfo.getServiceId() || dabChannelInfo.getEnsembleId() != DabAllStationFragment.this.currentPlayInfo.getEnsembleId()) {
                stationViewHolder.ivBackground.setVisibility(8);
                stationViewHolder.ivPlayStatus.setVisibility(8);
                layoutParams.setMarginStart(206);
                stationViewHolder.tvStationType.setTextColor(DabAllStationFragment.this.getContext().getColor(R.color.colorB3FFFFFF));
                stationViewHolder.tvStationName.setTextColor(DabAllStationFragment.this.getContext().getColor(R.color.colorFFFFFF));
                stationViewHolder.tvServiceGroup.setTextColor(DabAllStationFragment.this.getContext().getColor(R.color.colorB3FFFFFF));
                stationViewHolder.tvIndex.setTextColor(DabAllStationFragment.this.getContext().getColor(R.color.colorFFFFFF));
                stationViewHolder.tvStationName.setTypeface(Typeface.create("sourcehan-sans-regular", 0));
            } else {
                stationViewHolder.ivBackground.setVisibility(0);
                stationViewHolder.ivPlayStatus.setVisibility(0);
                layoutParams.setMarginStart(256);
                stationViewHolder.tvStationType.setTextColor(DabAllStationFragment.this.getContext().getColor(R.color.colorB3DD9D09));
                stationViewHolder.tvStationName.setTextColor(DabAllStationFragment.this.getContext().getColor(R.color.colorDD9D09));
                stationViewHolder.tvServiceGroup.setTextColor(DabAllStationFragment.this.getContext().getColor(R.color.colorB3DD9D09));
                stationViewHolder.tvIndex.setTextColor(DabAllStationFragment.this.getContext().getColor(R.color.colorDD9D09));
                stationViewHolder.tvStationName.setTypeface(Typeface.create("sourcehan-sans-medium", 0));
            }
            stationViewHolder.tvStationName.setLayoutParams(layoutParams);
            if (dabChannelInfo.getImageData() != null) {
                Utils.loadDabSliderShowDataNoCache(stationViewHolder.ivStationIcon, DabAllStationFragment.this.getResources().getDrawable(R.mipmap.pic_list_tiny_default, DabAllStationFragment.this.getContext().getTheme()), 8, dabChannelInfo.getImageData());
            } else {
                stationViewHolder.ivStationIcon.setImageResource(R.mipmap.pic_list_tiny_default);
            }
            stationViewHolder.tvIndex.setText(String.valueOf(i + 1));
        }

        public int getItemCount() {
            return DabAllStationFragment.this.mDabChannelInfoList.size();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes4.dex */
    public class StationViewHolder extends RecyclerView.ViewHolder {
        private View ivBackground;
        private ImageView ivPlayStatus;
        private ImageView ivStationIcon;
        private int position;
        private TextView tvIndex;
        private TextView tvServiceGroup;
        private TextView tvStationName;
        private TextView tvStationType;

        public StationViewHolder(@NonNull View view) {
            super(view);
            this.ivBackground = view.findViewById(R.id.iv_background);
            this.ivPlayStatus = (ImageView) view.findViewById(R.id.iv_play_status);
            this.tvStationName = (TextView) view.findViewById(R.id.tv_station_name);
            this.tvStationType = (TextView) view.findViewById(R.id.tv_station_type);
            this.tvServiceGroup = (TextView) view.findViewById(R.id.tv_station_service_group);
            this.tvIndex = (TextView) view.findViewById(R.id.tv_index);
            this.ivStationIcon = (ImageView) view.findViewById(R.id.iv_station_icon);
            view.setOnClickListener(new View.OnClickListener() { // from class: com.yftech.libradio.dabui.DabAllStationFragment.StationViewHolder.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    DabChannelInfo dabChannelInfo = (DabChannelInfo) DabAllStationFragment.this.mDabChannelInfoList.get(StationViewHolder.this.position);
                    if (dabChannelInfo == null || Utils.isQuickClick()) {
                        return;
                    }
                    CarDabRadioManager.getInstance().setFreq(dabChannelInfo.getFrequency(), dabChannelInfo.getEnsembleId(), dabChannelInfo.getServiceId());
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
            DabAllStationFragment.this.updatePlayInfoView();
        }

        public void onEnsembleListChange(int i) {
            super.onEnsembleListChange(i);
        }

        public void onScanStatusChange(DabScanStatus dabScanStatus, DabScanStatus dabScanStatus2) {
            super.onScanStatusChange(dabScanStatus, dabScanStatus2);
            if (dabScanStatus == null || dabScanStatus.isRuning()) {
                return;
            }
            LogUtil.d("onScanStatusChange --------");
        }
    }
}
