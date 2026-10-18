package com.yftech.libradio.dabui;

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
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import com.media.common.util.LogUtil;
import com.media.common.util.ToastUtils;
import com.yftech.car.data.CarData;
import com.yftech.car.data.CarDataManager;
import com.yftech.car.media.data.CarMediaDataManager;
import com.yftech.car.media.radio.dab.CarDabRadioManager;
import com.yftech.car.media.radio.dab.entity.DabDynamicLabel;
import com.yftech.car.media.radio.dab.entity.DabEnsemble;
import com.yftech.car.media.radio.dab.entity.DabPlayInfo;
import com.yftech.car.media.radio.dab.entity.DabScanStatus;
import com.yftech.libradio.DabAnnounceManager;
import com.yftech.libradio.DabDataManager;
import com.yftech.libradio.R;
import com.yftech.libradio.Utils;
import com.yftech.libradio.bean.DabChannelInfo;
import com.yftech.libradio.bean.InvalidDabChannelInfo;
import com.yftech.libradio.carousellayoutmanager.CarouselLayoutManager;
import com.yftech.libradio.carousellayoutmanager.CarouselZoomPostLayoutListener;
import com.yftech.libradio.carousellayoutmanager.CenterScrollListener;
import com.yftech.libradio.dabui.epg.EpgActivity;
import com.yftech.libradio.dialog.DabSearchingDialog;
import com.yftech.libradio.dialog.DabServiceTextInfoDialog;
import com.yftech.libradio.dialog.DabSettingsDialog;
import com.yftech.libradio.dialog.DabSettingsNoRdsDialog;
import com.yftech.libradio.presenter.DabMainPresenter;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;

/* loaded from: /home/user/work/dex/classes4.dex */
public class DabMainFragment extends DabPlayerFragment implements View.OnClickListener {
    private static final String KEY_DAB_SIGNAL_CONGFIG = "dab_config_data_rssi_snr";
    private static final int MSG_UPDATE_LIST_UI = 10004;
    private static final int MSG_UPDATE_PLAY_UI = 10005;
    private static final String SHARED_KEY_IS_AUTO_SEARCH_DONE = "yf.dab.autosearch";
    private static final String SP_DAB_FREQUENCY = "ftech.dab.frequency";
    private static final String TEST_FREQUENCY = "com.yftech.action.dab.frequency";
    private int currentPosition;
    private boolean isAnnouncePlaying;
    private View layoutLables;
    private DabPlayInfo mDabPlayInfo;
    private DabSettingsDialog mDabSettingsDialog;
    private DabSettingsNoRdsDialog mDabSettingsNoRdsDialog;
    private ImageView mEpg;
    private ImageView mIvLike;
    private ImageView mIvPlay;
    private ImageView mIvSet;
    private ImageView mLast;
    private ImageView mLikeList;
    private ImageView mNext;
    private ImageView mSearch;
    private DabServiceTextInfoDialog mServiceTextInfoDialog;
    private TextView mTvEnsembleLable;
    private TextView mTvServiceLable;
    private RecyclerView recyclerViewService;
    private TextView tvFrequency;
    private TextView tvRssi;
    private TextView tvSnr;
    private TextView tvVber;
    private List<DabChannelInfo> dabChannelInfoList = new ArrayList();
    private int minSinalConfig = -95;
    private BroadcastReceiver dabFrequencyReceiver = new BroadcastReceiver() { // from class: com.yftech.libradio.dabui.DabMainFragment.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (DabMainFragment.TEST_FREQUENCY.equals(intent.getAction())) {
                if (intent.getIntExtra("value", 0) == 1) {
                    SystemProperties.set(DabMainFragment.SP_DAB_FREQUENCY, "1");
                    DabMainFragment.this.tvFrequency.setVisibility(0);
                    DabMainFragment.this.tvRssi.setVisibility(0);
                    DabMainFragment.this.tvSnr.setVisibility(0);
                    DabMainFragment.this.tvVber.setVisibility(0);
                    return;
                }
                SystemProperties.set(DabMainFragment.SP_DAB_FREQUENCY, "0");
                DabMainFragment.this.tvFrequency.setVisibility(8);
                DabMainFragment.this.tvRssi.setVisibility(8);
                DabMainFragment.this.tvSnr.setVisibility(8);
                DabMainFragment.this.tvVber.setVisibility(8);
            }
        }
    };
    private final Handler mPrivateHandler = new Handler(Looper.getMainLooper()) { // from class: com.yftech.libradio.dabui.DabMainFragment.2
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            if (message.what == DabMainFragment.MSG_UPDATE_LIST_UI) {
                DabMainFragment.this.updateListUi();
                return;
            }
            if (message.what == DabMainFragment.MSG_UPDATE_PLAY_UI) {
                DabPlayInfo playInfo = CarDabRadioManager.getInstance().getPlayInfo();
                if (playInfo == null) {
                    LogUtil.d("update playUI,playinfo is null ----");
                    DabMainFragment.this.updateCurrentPlayInfoUi(DabMainFragment.this.currentPosition);
                    DabMainFragment.this.updateFavorUi(DabMainFragment.this.currentPosition);
                    return;
                }
                boolean z = false;
                int i = 0;
                while (true) {
                    if (i >= DabMainFragment.this.dabChannelInfoList.size()) {
                        break;
                    }
                    if (!(DabMainFragment.this.dabChannelInfoList.get(i) instanceof InvalidDabChannelInfo) && playInfo.getFrequency() == ((DabChannelInfo) DabMainFragment.this.dabChannelInfoList.get(i)).getFrequency() && playInfo.getServiceId() == ((DabChannelInfo) DabMainFragment.this.dabChannelInfoList.get(i)).getServiceId() && playInfo.getEnsembleId() == ((DabChannelInfo) DabMainFragment.this.dabChannelInfoList.get(i)).getEnsembleId()) {
                        DabMainFragment.this.recyclerViewService.scrollToPosition(i);
                        DabMainFragment.this.updateCurrentPlayInfoUi(i);
                        DabMainFragment.this.updateFavorUi(i);
                        z = true;
                        break;
                    }
                    i++;
                }
                if (z) {
                    return;
                }
                DabMainFragment.this.updateCurrentPlayInfoUi(DabMainFragment.this.currentPosition);
                DabMainFragment.this.updateFavorUi(DabMainFragment.this.currentPosition);
            }
        }
    };
    private DabDataManager.DabDataManagerCallback dabDataManagerCallback = new DabDataManager.DabDataManagerCallback() { // from class: com.yftech.libradio.dabui.DabMainFragment.7
        @Override // com.yftech.libradio.DabDataManager.DabDataManagerCallback
        public void onDataListChanged(List<DabChannelInfo> list) {
            LogUtil.i("DabMainFragment->onDataListChanged");
            DabMainFragment.this.fillListData(list, false);
        }

        @Override // com.yftech.libradio.DabDataManager.DabDataManagerCallback
        public void onSlideShowImageChanged(byte[] bArr) {
            LogUtil.i("DabMainFragment->onSlideShowImageChanged");
            if (bArr == null) {
                return;
            }
            DabPlayInfo playInfo = CarDabRadioManager.getInstance().getPlayInfo();
            for (DabChannelInfo dabChannelInfo : DabMainFragment.this.dabChannelInfoList) {
                if (playInfo != null && dabChannelInfo.getFrequency() == playInfo.getFrequency() && dabChannelInfo.getServiceId() == playInfo.getServiceId() && dabChannelInfo.getEnsembleId() == playInfo.getEnsembleId()) {
                    dabChannelInfo.setImageData(bArr);
                    DabMainFragment.this.mPrivateHandler.post(new Runnable() { // from class: com.yftech.libradio.dabui.DabMainFragment.7.1
                        @Override // java.lang.Runnable
                        public void run() {
                            DabMainFragment.this.recyclerViewService.getAdapter().notifyDataSetChanged();
                        }
                    });
                    return;
                }
            }
        }
    };
    private final ViewTreeObserver.OnGlobalLayoutListener mFmGlobalLayoutListener = new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.yftech.libradio.dabui.DabMainFragment.8
        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            DabMainFragment.this.mPrivateHandler.sendEmptyMessage(DabMainFragment.MSG_UPDATE_LIST_UI);
            DabMainFragment.this.recyclerViewService.getViewTreeObserver().removeOnGlobalLayoutListener(DabMainFragment.this.mFmGlobalLayoutListener);
        }
    };
    private CarDabRadioManager.CarDabRadioControlCallback carDabRadioControlCallback = new AnonymousClass9();

    public void startAction(Intent intent) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.yftech.libradio.dabui.DabPlayerFragment, com.yftech.libmvpmodule.mvp.BaseMvpFragment
    public DabMainPresenter createPresenter() {
        return new DabMainPresenter(getActivity());
    }

    @Override // com.yftech.libmvpmodule.mvp.BaseMvpFragment
    protected View onBindView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.fragment_dab_main, viewGroup, false);
    }

    @Override // com.yftech.libradio.dabui.DabPlayerFragment, com.yftech.libmvpmodule.mvp.BaseMvpFragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        LogUtil.d("onCreate()");
        if (!DabDataManager.getInstance().isInitialized()) {
            DabDataManager.getInstance().init();
        }
        DabDataManager.getInstance().registerObservor(this.dabDataManagerCallback);
        try {
            String configData = CarMediaDataManager.getInstance().getConfigData(KEY_DAB_SIGNAL_CONGFIG);
            if (TextUtils.isEmpty(configData)) {
                return;
            }
            LogUtil.d("signalConfig: " + configData);
            this.minSinalConfig = Integer.parseInt(configData.split(",")[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // com.yftech.libradio.dabui.DabPlayerFragment, com.yftech.libmvpmodule.mvp.BaseMvpFragment
    public void onResume() {
        DabEnsemble[] dabEnsemble;
        super.onResume();
        LogUtil.d("onResume,isHide: " + isHidden());
        CarDabRadioManager.getInstance().registerRadioControlCallback(this.carDabRadioControlCallback, this.mPrivateHandler);
        this.isAnnouncePlaying = DabAnnounceManager.getInstance().isAnnouncePlaying();
        if (!isHidden()) {
            boolean z = getContext().getSharedPreferences(Utils.SHARED_RADIO_DATA_NAME, 0).getBoolean(SHARED_KEY_IS_AUTO_SEARCH_DONE, false);
            LogUtil.d("onResume,isAudoSearchDone: " + z);
            if (!z && ((dabEnsemble = CarDabRadioManager.getInstance().getDabEnsemble()) == null || dabEnsemble.length == 0)) {
                DabSearchingDialog.newInstance(getString(R.string.radio_channel_search_dialog_search_scanning)).show(getChildFragmentManager(), DabSearchingDialog.class.getSimpleName());
                getContext().getSharedPreferences(Utils.SHARED_RADIO_DATA_NAME, 0).edit().putBoolean(SHARED_KEY_IS_AUTO_SEARCH_DONE, true).commit();
            }
            updateAnnounceInfo(this.isAnnouncePlaying, DabAnnounceManager.getInstance().getAnnotype());
            final List<DabChannelInfo> dabChannelInfoList = DabDataManager.getInstance().getDabChannelInfoList();
            this.mPrivateHandler.postDelayed(new Runnable() { // from class: com.yftech.libradio.dabui.DabMainFragment.3
                @Override // java.lang.Runnable
                public void run() {
                    DabMainFragment.this.fillListData(dabChannelInfoList, true);
                }
            }, 200L);
            updatePlayStatusUi();
            this.mPrivateHandler.sendEmptyMessageDelayed(MSG_UPDATE_PLAY_UI, 2000L);
            boolean isPlaying = CarDabRadioManager.getInstance().isPlaying();
            DabScanStatus scanStatus = CarDabRadioManager.getInstance().getScanStatus();
            boolean isResumeByPowerOn = isResumeByPowerOn();
            boolean z2 = scanStatus != null && scanStatus.isRuning();
            boolean isCheckedDab = getActivity().isCheckedDab();
            LogUtil.d("onResume() isPlaying:" + isPlaying + ";isScanning:" + z2 + ";isResumeByPowerOn:" + isResumeByPowerOn + ";checkedDab=" + isCheckedDab);
            if (!isPlaying && !z2 && !isResumeByPowerOn && isCheckedDab) {
                getPresenter().play();
            }
        }
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(TEST_FREQUENCY);
        getContext().registerReceiver(this.dabFrequencyReceiver, intentFilter);
    }

    @Override // com.yftech.libradio.dabui.DabPlayerFragment, com.yftech.libmvpmodule.mvp.BaseMvpFragment
    public void onPause() {
        super.onPause();
        LogUtil.d("onPause()");
        this.mPrivateHandler.removeCallbacksAndMessages(null);
        CarDabRadioManager.getInstance().unregisterRadioControlCallback(this.carDabRadioControlCallback);
        getContext().unregisterReceiver(this.dabFrequencyReceiver);
        if (this.mDabSettingsNoRdsDialog != null) {
            this.mDabSettingsNoRdsDialog.dismiss();
            this.mDabSettingsNoRdsDialog = null;
        }
        if (this.mServiceTextInfoDialog != null) {
            this.mServiceTextInfoDialog.dismiss();
            this.mServiceTextInfoDialog = null;
        }
        if (this.mDabSettingsDialog != null) {
            this.mDabSettingsDialog.dismiss();
            this.mDabSettingsDialog = null;
        }
    }

    public void onHiddenChanged(boolean z) {
        super.onHiddenChanged(z);
        LogUtil.d("onHiddenChanged, hidden: " + z);
        if (z) {
            return;
        }
        boolean isPlaying = CarDabRadioManager.getInstance().isPlaying();
        DabScanStatus scanStatus = CarDabRadioManager.getInstance().getScanStatus();
        boolean z2 = scanStatus != null && scanStatus.isRuning();
        if (isPlaying || z2) {
            return;
        }
        getPresenter().play();
    }

    @Override // com.yftech.libmvpmodule.mvp.BaseMvpFragment
    public void onDestroy() {
        super.onDestroy();
        ((DabServcieListAdapter) this.recyclerViewService.getAdapter()).onDestory();
        this.mPrivateHandler.removeMessages(MSG_UPDATE_PLAY_UI);
        this.mPrivateHandler.removeMessages(MSG_UPDATE_LIST_UI);
        DabDataManager.getInstance().unInit();
        DabDataManager.getInstance().unregisterObservor(this.dabDataManagerCallback);
    }

    @Override // com.yftech.libmvpmodule.mvp.BaseMvpFragment
    protected void initView(View view) {
        this.mTvServiceLable = (TextView) view.findViewById(R.id.tv_service_lable);
        this.mTvEnsembleLable = (TextView) view.findViewById(R.id.tv_pty_ensemble);
        this.layoutLables = view.findViewById(R.id.layout_lables);
        this.mIvLike = (ImageView) view.findViewById(R.id.iv_like);
        this.mIvPlay = (ImageView) view.findViewById(R.id.iv_play);
        this.mIvSet = (ImageView) view.findViewById(R.id.iv_settings);
        this.mLikeList = (ImageView) view.findViewById(R.id.iv_like_list);
        this.mSearch = (ImageView) view.findViewById(R.id.iv_search);
        this.mLast = (ImageView) view.findViewById(R.id.iv_last);
        this.mNext = (ImageView) view.findViewById(R.id.iv_next);
        this.mEpg = (ImageView) view.findViewById(R.id.iv_epg);
        this.recyclerViewService = view.findViewById(R.id.dab_service_list);
        this.tvFrequency = (TextView) view.findViewById(R.id.tv_pty_frequency);
        this.tvRssi = (TextView) view.findViewById(R.id.tv_rssi);
        this.tvSnr = (TextView) view.findViewById(R.id.tv_snr);
        this.tvVber = (TextView) view.findViewById(R.id.tv_vber);
        this.recyclerViewService.getViewTreeObserver().addOnGlobalLayoutListener(this.mFmGlobalLayoutListener);
        CarouselLayoutManager carouselLayoutManager = new CarouselLayoutManager(0, true);
        carouselLayoutManager.setPostLayoutListener(new CarouselZoomPostLayoutListener());
        carouselLayoutManager.setMaxVisibleItems(1);
        carouselLayoutManager.addOnItemSelectionListener(new CarouselLayoutManager.OnCenterItemSelectionListener() { // from class: com.yftech.libradio.dabui.DabMainFragment.4
            @Override // com.yftech.libradio.carousellayoutmanager.CarouselLayoutManager.OnCenterItemSelectionListener
            public void onCenterItemChanged(int i) {
                DabMainFragment.this.currentPosition = i;
            }
        });
        this.recyclerViewService.setHasFixedSize(true);
        this.recyclerViewService.setLayoutManager(carouselLayoutManager);
        this.recyclerViewService.addOnScrollListener(new CenterScrollListener() { // from class: com.yftech.libradio.dabui.DabMainFragment.5
            @Override // com.yftech.libradio.carousellayoutmanager.CenterScrollListener
            public void onScrollStateChanged(@NonNull RecyclerView recyclerView, int i) {
                super.onScrollStateChanged(recyclerView, i);
                if (i != 0 || DabMainFragment.this.dabChannelInfoList.isEmpty() || DabMainFragment.this.currentPosition < 0 || DabMainFragment.this.currentPosition >= DabMainFragment.this.dabChannelInfoList.size()) {
                    return;
                }
                DabPlayInfo playInfo = CarDabRadioManager.getInstance().getPlayInfo();
                DabChannelInfo dabChannelInfo = (DabChannelInfo) DabMainFragment.this.dabChannelInfoList.get(DabMainFragment.this.currentPosition);
                if (dabChannelInfo instanceof InvalidDabChannelInfo) {
                    LogUtil.d("InvalidDabChannelInfo can not play ----");
                    for (int i2 = 0; i2 < DabMainFragment.this.dabChannelInfoList.size(); i2++) {
                        DabChannelInfo dabChannelInfo2 = (DabChannelInfo) DabMainFragment.this.dabChannelInfoList.get(i2);
                        if (playInfo != null && playInfo.getFrequency() == dabChannelInfo2.getFrequency() && playInfo.getEnsembleId() == dabChannelInfo2.getEnsembleId() && playInfo.getServiceId() == dabChannelInfo2.getServiceId()) {
                            DabMainFragment.this.recyclerViewService.smoothScrollToPosition(i2);
                            return;
                        }
                    }
                    return;
                }
                if (playInfo != null && playInfo.getFrequency() == dabChannelInfo.getFrequency() && playInfo.getEnsembleId() == dabChannelInfo.getEnsembleId() && playInfo.getServiceId() == dabChannelInfo.getServiceId()) {
                    LogUtil.d("playinfo not need change,position: " + DabMainFragment.this.currentPosition);
                } else {
                    LogUtil.d("playinfo need change, setFreq position: " + DabMainFragment.this.currentPosition);
                    CarDabRadioManager.getInstance().setFreq(dabChannelInfo.getFrequency(), dabChannelInfo.getEnsembleId(), dabChannelInfo.getServiceId());
                }
                DabMainFragment.this.updateCurrentPlayInfoUi(DabMainFragment.this.currentPosition);
                DabMainFragment.this.updateFavorUi(DabMainFragment.this.currentPosition);
            }
        });
        this.recyclerViewService.setAdapter(new DabServcieListAdapter(this.dabChannelInfoList, this));
        this.layoutLables.setOnClickListener(this);
        this.mIvLike.setOnClickListener(this);
        this.mIvPlay.setOnClickListener(this);
        this.mIvSet.setOnClickListener(this);
        this.mLikeList.setOnClickListener(this);
        this.mSearch.setOnClickListener(this);
        this.mLast.setOnClickListener(this);
        this.mNext.setOnClickListener(this);
        this.mEpg.setOnClickListener(this);
        if (SystemProperties.getInt(SP_DAB_FREQUENCY, 0) == 1) {
            this.tvFrequency.setVisibility(0);
            this.tvRssi.setVisibility(0);
            this.tvSnr.setVisibility(0);
            this.tvVber.setVisibility(0);
            return;
        }
        this.tvFrequency.setVisibility(8);
        this.tvRssi.setVisibility(8);
        this.tvSnr.setVisibility(8);
        this.tvVber.setVisibility(8);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() == R.id.iv_search) {
            if (Utils.isQuickClick()) {
                LogUtil.i("iv_search quick click");
                return;
            } else {
                startActivity(new Intent(getContext(), (Class<?>) DabSortListActivity.class));
                return;
            }
        }
        if (view.getId() == R.id.iv_like_list) {
            if (Utils.isQuickClick()) {
                LogUtil.i("iv_like_list quick click");
                return;
            } else {
                startActivity(new Intent(getContext(), (Class<?>) DabFavorListActivity.class));
                return;
            }
        }
        if (view.getId() == R.id.iv_play) {
            if (Utils.isQuickClick()) {
                LogUtil.i("iv_play quick click");
                return;
            }
            if (isSignalPoor(CarDabRadioManager.getInstance().getPlayInfo())) {
                ToastUtils.showNormalMessage(R.string.signal_poor, 1);
            }
            if (CarDabRadioManager.getInstance().isPlaying()) {
                getPresenter().pause();
                return;
            } else {
                getPresenter().play();
                return;
            }
        }
        if (view.getId() == R.id.iv_last) {
            if (Utils.isQuickClick()) {
                LogUtil.i("searchPrevious quick click");
                return;
            }
            if (isSignalPoor(CarDabRadioManager.getInstance().getPlayInfo())) {
                ToastUtils.showNormalMessage(R.string.signal_poor, 1);
            }
            CarDabRadioManager.getInstance().previous();
            return;
        }
        if (view.getId() == R.id.iv_next) {
            if (Utils.isQuickClick()) {
                LogUtil.i("searchNext quick click");
                return;
            }
            if (isSignalPoor(CarDabRadioManager.getInstance().getPlayInfo())) {
                ToastUtils.showNormalMessage(R.string.signal_poor, 1);
            }
            CarDabRadioManager.getInstance().next();
            return;
        }
        if (view.getId() == R.id.iv_like) {
            if (this.currentPosition < 0 || this.currentPosition > this.dabChannelInfoList.size() - 1) {
                LogUtil.w("favored button click,IndexOutOfBoundsException, size: " + this.dabChannelInfoList.size() + " , currentPosition: " + this.currentPosition);
                return;
            }
            DabChannelInfo dabChannelInfo = this.dabChannelInfoList.get(this.currentPosition);
            if (dabChannelInfo == null) {
                LogUtil.w("favored button click, but current dabdata is null");
                return;
            }
            if (dabChannelInfo instanceof InvalidDabChannelInfo) {
                LogUtil.w("favored button click, but current InvalidDabChannelInfo");
                return;
            }
            if (isSignalPoor(CarDabRadioManager.getInstance().getPlayInfo())) {
                ToastUtils.showNormalMessage(R.string.signal_poor, 1);
            }
            if (!CarDabRadioManager.getInstance().isFavored(dabChannelInfo.getFrequency(), dabChannelInfo.getEnsembleId(), dabChannelInfo.getServiceId())) {
                Utils.convertDabInfos(CarDabRadioManager.getInstance().getFavoredList(), new ArrayList(), null);
                int addFavored = CarDabRadioManager.getInstance().addFavored(dabChannelInfo.getFrequency(), dabChannelInfo.getEnsembleId(), dabChannelInfo.getServiceId());
                if (addFavored > 0) {
                    ToastUtils.showNormalMessage(R.string.radio_channel_favor_dialog_add_favor_successful, 1);
                } else {
                    ToastUtils.showNormalMessage(R.string.radio_channel_favor_dialog_add_favor_failure, 1);
                }
                LogUtil.d("addFavor result: " + addFavored);
                return;
            }
            LogUtil.d("has Favored -----");
            if (CarDabRadioManager.getInstance().removeFavored(dabChannelInfo.getFrequency(), dabChannelInfo.getEnsembleId(), dabChannelInfo.getServiceId()) > 0) {
                ToastUtils.showNormalMessage(R.string.radio_channel_favor_dialog_remove_favor_successful, 1);
                return;
            } else {
                ToastUtils.showNormalMessage(R.string.radio_channel_favor_dialog_remove_favor_failure, 1);
                return;
            }
        }
        if (view.getId() == R.id.iv_settings) {
            if (Utils.isRdsPresent()) {
                if (this.mDabSettingsDialog == null) {
                    this.mDabSettingsDialog = new DabSettingsDialog(getContext());
                }
                this.mDabSettingsDialog.show();
                return;
            } else {
                if (this.mDabSettingsNoRdsDialog == null) {
                    this.mDabSettingsNoRdsDialog = new DabSettingsNoRdsDialog(getContext());
                }
                this.mDabSettingsNoRdsDialog.show();
                return;
            }
        }
        if (view.getId() == R.id.iv_epg) {
            if (Utils.isQuickClick()) {
                LogUtil.i("iv_epg quick click");
                return;
            } else {
                startActivity(new Intent(getContext(), (Class<?>) EpgActivity.class));
                return;
            }
        }
        if (view.getId() == R.id.layout_lables) {
            try {
                DabDynamicLabel dabDynamicLabel = CarDabRadioManager.getInstance().getDabDynamicLabel();
                if (dabDynamicLabel == null) {
                    LogUtil.d("dabDynamicLabel is null 111  -----");
                    return;
                }
                if (dabDynamicLabel.getLabels() == null) {
                    LogUtil.d("dabDynamicLabel is null 222 -----");
                    return;
                }
                String trim = dabDynamicLabel.getLabels().trim();
                if (TextUtils.isEmpty(trim)) {
                    LogUtil.d("labelString is empty -----");
                    return;
                }
                String str = "";
                DabChannelInfo dabChannelInfo2 = this.dabChannelInfoList.get(((CarouselLayoutManager) this.recyclerViewService.getLayoutManager()).getCenterItemPosition());
                if (dabChannelInfo2 != null && dabChannelInfo2.getPropertieslabel() != null) {
                    str = dabChannelInfo2.getPropertieslabel().getLabelString();
                }
                if (this.mServiceTextInfoDialog != null) {
                    this.mServiceTextInfoDialog.dismiss();
                }
                this.mServiceTextInfoDialog = DabServiceTextInfoDialog.newInstance(trim, str);
                this.mServiceTextInfoDialog.show(getChildFragmentManager(), DabServiceTextInfoDialog.class.getSimpleName());
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    private boolean isSignalPoor(DabPlayInfo dabPlayInfo) {
        return dabPlayInfo != null && dabPlayInfo.getRssi() < this.minSinalConfig;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setButtonsStatus() {
        if (this.dabChannelInfoList.isEmpty()) {
            this.mIvLike.setEnabled(false);
            this.mIvPlay.setEnabled(false);
            this.mLikeList.setEnabled(false);
            this.mLast.setEnabled(false);
            this.mNext.setEnabled(false);
            this.mEpg.setEnabled(false);
            return;
        }
        this.mIvLike.setEnabled(true);
        this.mIvPlay.setEnabled(true);
        this.mLikeList.setEnabled(true);
        this.mLast.setEnabled(true);
        this.mNext.setEnabled(true);
        this.mEpg.setEnabled(true);
        DabPlayInfo playInfo = CarDabRadioManager.getInstance().getPlayInfo();
        DabScanStatus scanStatus = CarDabRadioManager.getInstance().getScanStatus();
        if (scanStatus != null && scanStatus.isRuning()) {
            LogUtil.i("setButtonsStatus->scanStatus=" + scanStatus);
            return;
        }
        if (isSignalPoor(playInfo)) {
            this.mIvLike.setHovered(true);
            this.mIvPlay.setHovered(true);
            this.mLast.setHovered(true);
            this.mNext.setHovered(true);
            return;
        }
        this.mIvLike.setHovered(false);
        this.mIvPlay.setHovered(false);
        this.mLast.setHovered(false);
        this.mNext.setHovered(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateSignalShow() {
        DabPlayInfo playInfo;
        if (this.tvFrequency.getVisibility() != 0 || (playInfo = CarDabRadioManager.getInstance().getPlayInfo()) == null) {
            return;
        }
        TextView textView = this.tvFrequency;
        textView.setText("频率：" + (playInfo.getFrequency() / 1000.0d) + " MHZ");
        this.tvRssi.setText("信号强度：" + (playInfo.getRssi() + 107) + "dBuv");
        this.tvSnr.setText("信噪比：" + ((int) playInfo.getSnr()) + "dB");
        this.tvVber.setText("误码率：" + String.valueOf(playInfo.getVber()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateListUi() {
        this.recyclerViewService.getAdapter().notifyDataSetChanged();
        if (this.dabChannelInfoList.size() == 3 && (this.dabChannelInfoList.get(0) instanceof InvalidDabChannelInfo)) {
            this.recyclerViewService.scrollToPosition(1);
        }
        if (this.dabChannelInfoList.size() == 0) {
            this.mTvServiceLable.setText("");
            this.mTvEnsembleLable.setText("");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updatePlayStatusUi() {
        boolean isPlaying = CarDabRadioManager.getInstance().isPlaying();
        LogUtil.d("isPlaying:" + isPlaying);
        this.mIvPlay.setImageResource(isPlaying ? R.drawable.fm_main_icon_playing : R.drawable.fm_main_icon_paused);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateCurrentPlayInfoUi(int i) {
        LogUtil.d("position: " + i);
        if (this.dabChannelInfoList.size() == 0) {
            LogUtil.d("dabChannelInfoList is empty ---");
            this.mTvServiceLable.setText("");
            this.mTvEnsembleLable.setText("");
            return;
        }
        if (i >= this.dabChannelInfoList.size() || i < 0) {
            LogUtil.w("position is invalid ---");
            return;
        }
        DabChannelInfo dabChannelInfo = this.dabChannelInfoList.get(i);
        String string = getString(R.string.radio_unknown);
        if (dabChannelInfo.getPropertieslabel() != null && !TextUtils.isEmpty(dabChannelInfo.getPropertieslabel().getLabelString())) {
            String trim = dabChannelInfo.getPropertieslabel().getLabelString().trim();
            if (!TextUtils.isEmpty(trim)) {
                string = trim;
            }
        }
        this.mTvServiceLable.setText(Utils.convertStationName(string));
        if (this.isAnnouncePlaying) {
            return;
        }
        String string2 = getString(R.string.radio_unknown);
        if (dabChannelInfo.getEnsembleLabel() != null && !TextUtils.isEmpty(dabChannelInfo.getEnsembleLabel().getLabelString())) {
            String trim2 = dabChannelInfo.getEnsembleLabel().getLabelString().trim();
            if (!TextUtils.isEmpty(trim2)) {
                string2 = trim2;
            }
        }
        String string3 = getString(R.string.radio_unknown);
        int statPty = dabChannelInfo.getStatPty();
        String[] stringArray = getResources().getStringArray(R.array.dab_ptys);
        if (statPty >= 0 && statPty < stringArray.length) {
            string3 = stringArray[statPty];
        }
        this.mTvEnsembleLable.setText(Utils.convertStationName(string3) + "/" + Utils.convertStationName(string2));
        CarData carData = new CarData();
        carData.addDataEntry(new CarData.CarDataEntry("DAB_CHANNEINFO_CHANGED_POSTION", i));
        carData.addDataEntry(new CarData.CarDataEntry("DAB_CHANNEINFO_CHANGED_SERVICE", string));
        carData.addDataEntry(new CarData.CarDataEntry("DAB_CHANNEINFO_CHANGED_ENSEMBLE", string2));
        CarDataManager.set(carData, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateAnnounceInfo(boolean z, int i) {
        if (z) {
            String str = "";
            if (i == 4) {
                str = getString(R.string.announcement_play_front) + " " + getString(R.string.dab_announcement3);
            } else if (i == 8) {
                str = getString(R.string.announcement_play_front) + " " + getString(R.string.dab_announcement4);
            } else if (i == 16) {
                str = getString(R.string.announcement_play_front) + " " + getString(R.string.dab_announcement5);
            } else if (i == 32) {
                str = getString(R.string.announcement_play_front) + " " + getString(R.string.dab_announcement6);
            } else if (i == 64) {
                str = getString(R.string.announcement_play_front) + " " + getString(R.string.dab_announcement7);
            } else if (i == 128) {
                str = getString(R.string.announcement_play_front) + " " + getString(R.string.dab_announcement8);
            } else if (i == 256) {
                str = getString(R.string.announcement_play_front) + " " + getString(R.string.dab_announcement9);
            } else if (i == 512) {
                str = getString(R.string.announcement_play_front) + " " + getString(R.string.dab_announcement10);
            } else if (i != 1024) {
                switch (i) {
                    case 1:
                        str = getString(R.string.announcement_play_front) + " " + getString(R.string.dab_announcement1);
                        break;
                    case 2:
                        str = getString(R.string.announcement_play_front) + " " + getString(R.string.dab_announcement2);
                        break;
                }
            } else {
                str = getString(R.string.announcement_play_front) + " " + getString(R.string.dab_announcement11);
            }
            this.mTvEnsembleLable.setText(str);
            return;
        }
        updateCurrentPlayInfoUi(this.currentPosition);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateFavorUi(int i) {
        if (this.dabChannelInfoList.size() != 0 && i >= 0 && i < this.dabChannelInfoList.size()) {
            DabChannelInfo dabChannelInfo = this.dabChannelInfoList.get(i);
            if (dabChannelInfo instanceof InvalidDabChannelInfo) {
                LogUtil.w("current InvalidDabChannelInfo");
                return;
            }
            if (dabChannelInfo != null) {
                boolean isFavored = CarDabRadioManager.getInstance().isFavored(dabChannelInfo.getFrequency(), dabChannelInfo.getEnsembleId(), dabChannelInfo.getServiceId());
                if (this.mIvLike.isSelected() != isFavored) {
                    this.mIvLike.setSelected(isFavored);
                    return;
                }
                return;
            }
            LogUtil.w("channelInfo is null -----");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void fillListData(List<DabChannelInfo> list, boolean z) {
        this.mPrivateHandler.post(new Runnable() { // from class: com.yftech.libradio.dabui.DabMainFragment.6
            @Override // java.lang.Runnable
            public void run() {
                DabMainFragment.this.setButtonsStatus();
            }
        });
        if (list.isEmpty()) {
            LogUtil.d("dataList is empty ----");
            return;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(list);
        if (arrayList.size() == 1) {
            LogUtil.d("dataList only 1 =======");
            arrayList.add(0, new InvalidDabChannelInfo(null));
            arrayList.add(2, new InvalidDabChannelInfo(null));
            ((CarouselLayoutManager) this.recyclerViewService.getLayoutManager()).setCanScrollHorizontally(false);
        } else if (arrayList.size() == 2) {
            LogUtil.d("dataList only 2-----");
            arrayList.add(0, new InvalidDabChannelInfo(null));
            arrayList.add(new InvalidDabChannelInfo(null));
            arrayList.addAll(list);
            ((CarouselLayoutManager) this.recyclerViewService.getLayoutManager()).setCanScrollHorizontally(true);
        } else if (arrayList.size() == 3) {
            LogUtil.d("dataList only 3 !!!!!!");
            arrayList.addAll(list);
            ((CarouselLayoutManager) this.recyclerViewService.getLayoutManager()).setCanScrollHorizontally(true);
        } else {
            ((CarouselLayoutManager) this.recyclerViewService.getLayoutManager()).setCanScrollHorizontally(true);
        }
        this.dabChannelInfoList.clear();
        this.dabChannelInfoList.addAll(arrayList);
        arrayList.clear();
        this.mPrivateHandler.sendEmptyMessage(MSG_UPDATE_LIST_UI);
        if (z) {
            this.mPrivateHandler.sendEmptyMessage(MSG_UPDATE_PLAY_UI);
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    private static class DabServcieListAdapter extends RecyclerView.Adapter {
        private static final int VIEW_TYPE_SERVICE_INVALID = 20305;
        private static final int VIEW_TYPE_SERVICE_NOR = 20304;
        private List<DabChannelInfo> dabChannelInfos;
        private WeakReference<DabMainFragment> weakReference;

        DabServcieListAdapter(List<DabChannelInfo> list, DabMainFragment dabMainFragment) {
            this.dabChannelInfos = list;
            this.weakReference = new WeakReference<>(dabMainFragment);
        }

        @NonNull
        public RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i) {
            if (i == VIEW_TYPE_SERVICE_INVALID) {
                return new EmptyServiceViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.item_empty_service_list, viewGroup, false));
            }
            return new ServiceViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.item_service_list, viewGroup, false), new ServiceViewHolder.OnItemClickListener() { // from class: com.yftech.libradio.dabui.DabMainFragment.DabServcieListAdapter.1
                @Override // com.yftech.libradio.dabui.DabMainFragment.ServiceViewHolder.OnItemClickListener
                public void onItemClick(int i2) {
                    ((DabMainFragment) DabServcieListAdapter.this.weakReference.get()).recyclerViewService.smoothScrollToPosition(i2);
                }
            });
        }

        public void onBindViewHolder(@NonNull RecyclerView.ViewHolder viewHolder, int i) {
            DabChannelInfo dabChannelInfo = this.dabChannelInfos.get(i);
            if (viewHolder instanceof ServiceViewHolder) {
                ServiceViewHolder serviceViewHolder = (ServiceViewHolder) viewHolder;
                serviceViewHolder.imgDabService.setTag(dabChannelInfo);
                serviceViewHolder.position = i;
                if (dabChannelInfo.getImageData() != null) {
                    Utils.loadDabSliderShowDataNoCache(serviceViewHolder.imgDabService, this.weakReference.get().getResources().getDrawable(R.mipmap.pic_default_sel, this.weakReference.get().getContext().getTheme()), 14, dabChannelInfo.getImageData());
                    return;
                } else {
                    serviceViewHolder.imgDabService.setImageResource(R.mipmap.pic_default_sel);
                    return;
                }
            }
            if (viewHolder instanceof EmptyServiceViewHolder) {
                ((EmptyServiceViewHolder) viewHolder).position = i;
            }
        }

        public int getItemCount() {
            if (this.dabChannelInfos == null) {
                return 0;
            }
            return this.dabChannelInfos.size();
        }

        public int getItemViewType(int i) {
            return this.dabChannelInfos.get(i) instanceof InvalidDabChannelInfo ? VIEW_TYPE_SERVICE_INVALID : VIEW_TYPE_SERVICE_NOR;
        }

        void onDestory() {
            this.dabChannelInfos = null;
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    private static class ServiceViewHolder extends RecyclerView.ViewHolder {
        private ImageView imgDabService;
        private ImageView imgShader;
        private ImageView imgShadow;
        private OnItemClickListener listener;
        private int position;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: /home/user/work/dex/classes4.dex */
        public interface OnItemClickListener {
            void onItemClick(int i);
        }

        private ServiceViewHolder(@NonNull View view, final OnItemClickListener onItemClickListener) {
            super(view);
            this.listener = onItemClickListener;
            this.imgDabService = (ImageView) view.findViewById(R.id.img_dab_service);
            this.imgShader = (ImageView) view.findViewById(R.id.img_shader);
            this.imgShadow = (ImageView) view.findViewById(R.id.img_shadow);
            view.setOnClickListener(new View.OnClickListener() { // from class: com.yftech.libradio.dabui.DabMainFragment.ServiceViewHolder.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    onItemClickListener.onItemClick(ServiceViewHolder.this.position);
                }
            });
        }
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    private static class EmptyServiceViewHolder extends RecyclerView.ViewHolder {
        private int position;

        public EmptyServiceViewHolder(@NonNull View view) {
            super(view);
            view.setOnClickListener(new View.OnClickListener() { // from class: com.yftech.libradio.dabui.DabMainFragment.EmptyServiceViewHolder.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.yftech.libradio.dabui.DabMainFragment$9, reason: invalid class name */
    /* loaded from: /home/user/work/dex/classes4.dex */
    public class AnonymousClass9 extends CarDabRadioManager.CarDabRadioControlCallback {
        AnonymousClass9() {
        }

        public void onPlayPause(boolean z) {
            super.onPlayPause(z);
            LogUtil.d("onPlayPause isPlaying: " + z);
            DabMainFragment.this.mPrivateHandler.post(new Runnable() { // from class: com.yftech.libradio.dabui.DabMainFragment.9.1
                @Override // java.lang.Runnable
                public void run() {
                    DabMainFragment.this.updatePlayStatusUi();
                }
            });
        }

        public void onPlayStatusChange(DabPlayInfo dabPlayInfo) {
            super.onPlayStatusChange(dabPlayInfo);
            DabMainFragment.this.mPrivateHandler.post(new Runnable() { // from class: com.yftech.libradio.dabui.DabMainFragment.9.2
                @Override // java.lang.Runnable
                public void run() {
                    DabMainFragment.this.setButtonsStatus();
                    DabMainFragment.this.updateSignalShow();
                }
            });
            if (DabMainFragment.this.mDabPlayInfo != null && DabMainFragment.this.mDabPlayInfo.getFrequency() == dabPlayInfo.getFrequency() && DabMainFragment.this.mDabPlayInfo.getEnsembleId() == dabPlayInfo.getEnsembleId() && DabMainFragment.this.mDabPlayInfo.getServiceId() == dabPlayInfo.getServiceId()) {
                return;
            }
            LogUtil.d("onPlayStatusChange isPlaying: " + dabPlayInfo.toString());
            DabMainFragment.this.mDabPlayInfo = dabPlayInfo;
            DabMainFragment.this.mPrivateHandler.sendEmptyMessage(DabMainFragment.MSG_UPDATE_PLAY_UI);
            DabMainFragment.this.mPrivateHandler.post(new Runnable() { // from class: com.yftech.libradio.dabui.-$$Lambda$DabMainFragment$9$L-QFDUL4srnxoECkRe4DDZqChQ8
                @Override // java.lang.Runnable
                public final void run() {
                    DabMainFragment.this.recyclerViewService.getAdapter().notifyDataSetChanged();
                }
            });
        }

        public void onScanStatusChange(DabScanStatus dabScanStatus, DabScanStatus dabScanStatus2) {
            super.onScanStatusChange(dabScanStatus, dabScanStatus2);
            if (dabScanStatus == null || dabScanStatus.isRuning()) {
                return;
            }
            LogUtil.d("onScanStatusChange newDabScan: " + dabScanStatus + ",oldDabScan: " + dabScanStatus2);
        }

        public void onEnsembleListChange(int i) {
            super.onEnsembleListChange(i);
            LogUtil.i("DabMainFragment->onEnsembleListChange");
        }

        public void onFavorChange(int i) {
            super.onFavorChange(i);
            LogUtil.d("onFavorChange type: " + i);
            DabMainFragment.this.mPrivateHandler.post(new Runnable() { // from class: com.yftech.libradio.dabui.DabMainFragment.9.3
                @Override // java.lang.Runnable
                public void run() {
                    DabMainFragment.this.updateFavorUi(DabMainFragment.this.currentPosition);
                }
            });
        }

        public void onUpdateEnableAnnounce(boolean z, int i) {
            super.onUpdateEnableAnnounce(z, i);
            LogUtil.i("onUpdateEnableAnnounce isNoOff:" + z + " ,annotype: " + i);
            DabMainFragment.this.isAnnouncePlaying = z;
            DabMainFragment.this.updateAnnounceInfo(z, i);
        }

        public void onVersionNumbers(String str) {
            super.onVersionNumbers(str);
        }
    }
}
