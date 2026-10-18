package com.yftech.libradio;

import android.annotation.SuppressLint;
import android.app.Dialog;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Path;
import android.graphics.RectF;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.media.common.util.LogUtil;
import com.media.common.util.ToastUtils;
import com.wuyr.pathlayoutmanager.PathLayoutManager;
import com.yftech.car.bluetooth.CarBluetoothManager;
import com.yftech.car.bluetooth.callback.CarBluetoothPhoneCallback;
import com.yftech.car.bluetooth.model.PhoneCall;
import com.yftech.car.data.CarData;
import com.yftech.car.data.CarDataManager;
import com.yftech.car.media.data.CarMediaDataManager;
import com.yftech.car.media.radio.CarRadioManager;
import com.yftech.car.media.radio.entity.DataOfRadio;
import com.yftech.car.phonelink.CarPhoneLinkManager;
import com.yftech.libmvpmodule.mvp.BaseMvpFragment;
import com.yftech.libmvpmodule.utils.Constants;
import com.yftech.libradio.dialog.RadioFavorDialog;
import com.yftech.libradio.dialog.RadioSearchChannelDialog;
import com.yftech.libradio.dialog.RadioSearchingDialog;
import com.yftech.libradio.dialog.RdsSettingsDialog;
import com.yftech.libradio.presenter.RadioMainPresenter;
import com.yftech.libradio.rds.RdsDataManager;
import com.yftech.libradio.rds.RdsViewControler;
import com.yftech.libradio.ui.adapter.RadioFreqAdapter;
import com.yftech.libradio.view.IRadioMainActivityView;
import com.yftech.vehicle.internal.adapter.ICarDoor;
import com.yftech.vehicle.internal.adapter.ICarEvDevice;
import com.yftech.vehicle.internal.adapter.ICarSeat;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

/* loaded from: /home/user/work/dex/classes4.dex */
public class RadioMainFragment extends BaseMvpFragment<RadioMainPresenter> implements View.OnClickListener, IRadioMainActivityView {
    private static final String ACTION_CARPLAY_EVENT_SHOW_UI = "com.autochips.carplay.event.show_ui";
    private static final String KEY_CARPLAY_EVENT_SHOW_UI = "ui_show";
    private static final String KEY_RADIO_AUTO_SEARCH = "radio_auto_search";
    private static final String KEY_SIGNAL_CONGFIG = "radio_min_signal_strength";
    private static final int MSG_UPDATE_SCALE_UI_AM = 2;
    private static final int MSG_UPDATE_SCALE_UI_FM = 1;
    private static final int RADIO_FAVOR_AM_MAX = 20;
    private static final int RADIO_FAVOR_FM_MAX = 30;
    private boolean isFragmentSwitch;
    private CarplayShowUIReceiver mCarplayShowUIReceiver;
    private boolean mFmKeepTwoDecima;
    private IntentFilter mIntentFilter;
    private ImageView mIvLike;
    private ImageView mIvPlay;
    private ImageView mLast;
    private ImageView mNext;
    private PathLayoutManager mPathLayoutManagerAm;
    private PathLayoutManager mPathLayoutManagerFm;
    private RadioFavorDialog mRadioFavorDialog;
    private RadioFreqAdapter mRadioFreqAdapterAm;
    private RadioFreqAdapter mRadioFreqAdapterFm;
    private RadioSearchChannelDialog mRadioSearchChannelDialog;
    private ImageView mRdsSettings;
    private RdsViewControler mRdsViewControler;
    private RecyclerView mRvAm;
    private RecyclerView mRvFm;
    private TextView mTvChannel;
    private TextView mTvChannelTag;
    private View rootView;
    private View v_index;
    private View v_index_left_1;
    private View v_index_left_2;
    private View v_index_right_1;
    private View v_index_right_2;
    private final Handler mMainHandler = new Handler(Looper.getMainLooper());
    private int itemOffset = 35;
    private int fmPosition = 0;
    private int amPosition = 0;
    private boolean isAVMDisplaying = false;
    private final int RC_CARPLAY = 10;
    private final int RC_HICAR = 11;
    private boolean isCarPlayCalled = false;
    private boolean isCarplayDisconnected = false;
    private String mConnectedLinkStatus = "";
    private int minFmSinalConfig = 0;
    private int minAmSinalConfig = 12;
    private final Handler mHandler = new Handler(Looper.getMainLooper()) { // from class: com.yftech.libradio.RadioMainFragment.1
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            if (message.what == 1) {
                LogUtil.d("MSG_UPDATE_SCALE_UI_FM");
                DataOfRadio freq = CarRadioManager.getInstance().getFreq();
                RadioMainFragment.this.updateFreqInList(freq.getFreq(), 0, false);
                RadioMainFragment.this.mRdsViewControler.updateFreq(freq);
                return;
            }
            if (message.what == 2) {
                LogUtil.d("MSG_UPDATE_SCALE_UI_AM");
                DataOfRadio freq2 = CarRadioManager.getInstance().getFreq();
                RadioMainFragment.this.updateFreqInList(freq2.getFreq(), 2, false);
                RadioMainFragment.this.mRdsViewControler.updateFreq(freq2);
                return;
            }
            if (message.what == 10) {
                boolean booleanValue = ((Boolean) message.obj).booleanValue();
                LogUtil.d("RC_CARPLAY->CarPlay isShow:" + booleanValue + ", isAVMDisplaying=" + RadioMainFragment.this.isAVMDisplaying + ", isCarPlayCalled=" + RadioMainFragment.this.isCarPlayCalled + ", isCarplayDisconnected:" + RadioMainFragment.this.isCarplayDisconnected);
                if (!booleanValue && !RadioMainFragment.this.isAVMDisplaying && !RadioMainFragment.this.isCarPlayCalled && !RadioMainFragment.this.isCarplayDisconnected && !CarRadioManager.getInstance().isPlaying() && !RadioMainFragment.this.isHidden()) {
                    CarRadioManager.getInstance().play();
                }
                if (RadioMainFragment.this.isCarPlayCalled && !booleanValue) {
                    RadioMainFragment.this.isCarPlayCalled = false;
                }
                RadioMainFragment.this.isCarplayDisconnected = false;
                return;
            }
            if (message.what == 11) {
                boolean booleanValue2 = ((Boolean) message.obj).booleanValue();
                LogUtil.d("RC_CARPLAY->CarPlay isShow:" + booleanValue2 + ", isAVMDisplaying=" + RadioMainFragment.this.isAVMDisplaying);
                if (booleanValue2 || RadioMainFragment.this.isAVMDisplaying || CarRadioManager.getInstance().isPlaying() || RadioMainFragment.this.isHidden()) {
                    return;
                }
                CarRadioManager.getInstance().play();
            }
        }
    };
    private final ViewTreeObserver.OnGlobalLayoutListener mFmGlobalLayoutListener = new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.yftech.libradio.RadioMainFragment.2
        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            RadioMainFragment.this.mHandler.sendEmptyMessage(1);
            RadioMainFragment.this.mRvFm.getViewTreeObserver().removeOnGlobalLayoutListener(RadioMainFragment.this.mFmGlobalLayoutListener);
        }
    };
    private final ViewTreeObserver.OnGlobalLayoutListener mAmGlobalLayoutListener = new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.yftech.libradio.RadioMainFragment.3
        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            RadioMainFragment.this.mHandler.sendEmptyMessage(2);
            RadioMainFragment.this.mRvAm.getViewTreeObserver().removeOnGlobalLayoutListener(RadioMainFragment.this.mAmGlobalLayoutListener);
        }
    };
    private final CarRadioManager.CarRadioControlCallback mCarRadioControlCallback = new CarRadioManager.CarRadioControlCallback() { // from class: com.yftech.libradio.RadioMainFragment.4
        private boolean isFirst = true;

        public void onFreqSignal(int i, DataOfRadio dataOfRadio, int i2) {
            LogUtil.d("onFreqSignal()  index:" + i + " channel:" + dataOfRadio.toString() + " level:" + i2);
            if (i != -1 && RadioMainFragment.this.startX == 0.0f) {
                RadioMainFragment.this.updateFreqView(dataOfRadio, true, true);
            }
            if (RadioMainFragment.this.isFragmentSwitch) {
                RadioMainFragment.this.updateFreqView(dataOfRadio, true, true);
                RadioMainFragment.this.isFragmentSwitch = false;
            }
            if (CarRadioManager.getInstance().isScanStatus()) {
                return;
            }
            if (dataOfRadio != null) {
                RadioMainFragment.this.setButtonsStatus(dataOfRadio.getType(), i2);
            } else {
                RadioMainFragment.this.setButtonsStatus(CarRadioManager.getInstance().getBand(), i2);
            }
        }

        public void onSeekStatusChange(int i, int i2, int i3) {
            LogUtil.d("onSeekStatusChange() scanType:" + i + " status:" + i2 + " operation:" + i3);
            RadioMainFragment.this.updateLikeEnable();
            if (i2 == 1 && i3 == 0) {
                RadioMainFragment.this.setRadioPlaying(false);
                RadioMainFragment.this.updatePlayView(false);
            } else if (i2 == 0 && i3 == 1) {
                RadioMainFragment.this.setRadioPlaying(true);
                RadioMainFragment.this.updatePlayView(CarRadioManager.getInstance().isPlaying());
            }
        }

        public void onFreqChanage(int i, DataOfRadio dataOfRadio, DataOfRadio dataOfRadio2) {
            LogUtil.d("onFreqChanage->colorIndex:" + i + " newChannel:" + dataOfRadio.toString() + " oldChannel:" + dataOfRadio2.toString());
            if (!this.isFirst) {
                RadioMainFragment.this.updateFreqView(dataOfRadio, true, true);
            } else {
                DataOfRadio freq = CarRadioManager.getInstance().getFreq();
                if (dataOfRadio.getFreq() != freq.getFreq()) {
                    LogUtil.e("onFreqChanage->isFirst=" + this.isFirst + ";freq=" + freq + ";回调和get不一致！！！");
                } else {
                    LogUtil.i("onFreqChanage->isFirst=" + this.isFirst + ";freq=" + freq);
                }
                RadioMainFragment.this.updateFreqView(freq, true, true);
                this.isFirst = false;
            }
            RadioMainFragment.this.updateFavorView(CarRadioManager.getInstance().isFreqFavored(dataOfRadio));
        }

        public void onAudioFocusChange(int i) {
            LogUtil.d("onAudioFocusChange() focusChange:" + i);
        }

        public void onFavorChange(int i, DataOfRadio dataOfRadio) {
            LogUtil.d("onFavorChange() index:" + i + " " + dataOfRadio.toString());
            if (CarRadioManager.getInstance().getFreq().toString().equals(dataOfRadio.toString())) {
                RadioMainFragment.this.updateFavorView(CarRadioManager.getInstance().isFreqFavored(dataOfRadio));
            }
        }

        public void onPlayPause(boolean z) {
            LogUtil.d("onPlayPause() isPlaying:" + z);
            RadioMainFragment.this.updatePlayView(z);
            RadioMainFragment.this.setRadioPlaying(z);
        }

        public void onRdsCommonStatusChange(int i, boolean z) {
            super.onRdsCommonStatusChange(i, z);
            LogUtil.d("type: " + i + " ,value: " + z);
            RadioMainFragment.this.mRdsViewControler.onRdsCommonStatusChange(i, z);
        }

        public void onRdsCommonStringChange(int i, String str) {
            super.onRdsCommonStringChange(i, str);
            RadioMainFragment.this.mRdsViewControler.onRdsCommonStringChange(i, str);
        }

        public void onRdsPtyStatusChange(int i) {
            super.onRdsPtyStatusChange(i);
            RadioMainFragment.this.mRdsViewControler.onRdsPtyStatusChange(i);
        }
    };
    private float startX = 0.0f;
    private BroadcastReceiver receiver = new BroadcastReceiver() { // from class: com.yftech.libradio.RadioMainFragment.11
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if ("com.yftech.avmservice.SHOW_STATE".equals(intent.getAction())) {
                boolean booleanExtra = intent.getBooleanExtra("isShow", false);
                LogUtil.d("com.yftech.avmservice.SHOW_STATE:isShow=" + booleanExtra);
                RadioMainFragment.this.isAVMDisplaying = booleanExtra;
                if (booleanExtra && CarRadioManager.getInstance().isScanStatus()) {
                    CarRadioManager.getInstance().stop();
                }
            }
        }
    };
    private BroadcastReceiver rdsReceiver = new BroadcastReceiver() { // from class: com.yftech.libradio.RadioMainFragment.12
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (RdsSettingsDialog.ACTION_RDS_SETTINGS.equals(intent.getAction())) {
                RadioMainFragment.this.mRdsViewControler.changeRdsShowStatus();
            }
        }
    };
    private CarPhoneLinkManager.CarPhoneLinkCallback mCarPhoneLinkCallback = new CarPhoneLinkManager.CarPhoneLinkCallback() { // from class: com.yftech.libradio.RadioMainFragment.13
        public void onCallStatusChanged(int i) {
            super.onCallStatusChanged(i);
            LogUtil.d("onCallStatusChanged() status:" + i);
            if (i == 1 || i == 2) {
                RadioMainFragment.this.isCarPlayCalled = true;
            }
        }

        public void onConnectedStatusChanged(String str) {
            super.onConnectedStatusChanged(str);
            LogUtil.d("onConnectedStatusChanged() status:" + str);
            if ("carplay".equals(RadioMainFragment.this.mConnectedLinkStatus) && "none".equals(str)) {
                RadioMainFragment.this.isCarplayDisconnected = true;
            }
            RadioMainFragment.this.mConnectedLinkStatus = str;
        }
    };
    private CarBluetoothPhoneCallback bluetoothPhoneCallback = new CarBluetoothPhoneCallback() { // from class: com.yftech.libradio.RadioMainFragment.14
        public void onBluetoothPhoneCallStateChanged(List<PhoneCall> list) {
            StringBuilder sb = new StringBuilder();
            sb.append("radio onBluetoothPhoneCallStateChanged:isEmpty=");
            sb.append(list == null || list.isEmpty());
            LogUtil.d(sb.toString());
            if (list == null || list.isEmpty()) {
                return;
            }
            PhoneCall phoneCall = list.get(0);
            LogUtil.d("radio onBluetoothPhoneCallStateChanged:state=" + phoneCall.getCallState());
            if (phoneCall.getCallState() == 2 && CarRadioManager.getInstance().isScanStatus()) {
                CarRadioManager.getInstance().stop();
            }
        }
    };

    @Override // com.yftech.libradio.view.IRadioMainActivityView
    public void displayFreqList(List<String> list, int i) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.yftech.libmvpmodule.mvp.BaseMvpFragment
    public RadioMainPresenter createPresenter() {
        return new RadioMainPresenter(getActivity());
    }

    @Override // com.yftech.libmvpmodule.mvp.BaseMvpFragment
    protected View onBindView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(R.layout.fragment_radio_main, viewGroup, false);
        this.rootView = inflate;
        return inflate;
    }

    @Override // com.yftech.libmvpmodule.mvp.BaseMvpFragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        LogUtil.d("onCreate()");
        this.mIntentFilter = new IntentFilter();
        this.mIntentFilter.addAction(ACTION_CARPLAY_EVENT_SHOW_UI);
        this.mIntentFilter.addAction("com.yftech.avmservice.SHOW_STATE");
        this.mIntentFilter.addAction("com.yftech.hicar.show");
        this.mIntentFilter.addAction(RdsSettingsDialog.ACTION_RDS_SETTINGS);
        this.mCarplayShowUIReceiver = new CarplayShowUIReceiver();
        try {
            String configData = CarMediaDataManager.getInstance().getConfigData(KEY_SIGNAL_CONGFIG);
            if (TextUtils.isEmpty(configData)) {
                return;
            }
            LogUtil.d("signalConfig: " + configData);
            String[] split = configData.split(",");
            if (split.length >= 3) {
                this.minFmSinalConfig = Integer.parseInt(split[0]);
                this.minAmSinalConfig = Integer.parseInt(split[2]);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void startAction(Intent intent) {
        String action = intent.getAction();
        int intExtra = intent.getIntExtra("key.radio.freq", -1);
        int i = CarRadioManager.getInstance().getFreq().type;
        LogUtil.d("action:" + action + " freq:" + intExtra + "band=" + i);
        if ("com.yftech.intent.action.start.radio.am".equals(action)) {
            dismissAllDialog();
            if (i != 2) {
                setBand(2);
            }
        } else if ("com.yftech.intent.action.start.radio.fm".equals(action)) {
            dismissAllDialog();
            if (i != 0) {
                setBand(0);
            }
        }
        if (intExtra > 0) {
            setFreq(intExtra, -1);
        }
    }

    @Override // com.yftech.libmvpmodule.mvp.BaseMvpFragment
    protected void initView(View view) {
        int step = CarRadioManager.getInstance().getStep(0);
        int manualStep = CarRadioManager.getInstance().getManualStep(0);
        if (step % 100 != 0 || manualStep % 100 != 0) {
            this.mFmKeepTwoDecima = true;
        }
        LogUtil.i("initView() FmKeepTwoDecima:" + this.mFmKeepTwoDecima + ";step=" + step);
        this.mTvChannel = (TextView) view.findViewById(R.id.tv_channel);
        this.mTvChannelTag = (TextView) view.findViewById(R.id.tv_channel_tag);
        this.mIvLike = (ImageView) view.findViewById(R.id.iv_like);
        this.mIvPlay = (ImageView) view.findViewById(R.id.iv_play);
        this.mLast = (ImageView) view.findViewById(R.id.iv_last);
        this.mNext = (ImageView) view.findViewById(R.id.iv_next);
        this.mRdsSettings = (ImageView) this.rootView.findViewById(R.id.iv_rds_set);
        this.mIvLike.setOnClickListener(this);
        this.mIvPlay.setOnClickListener(this);
        view.findViewById(R.id.iv_like_list).setOnClickListener(this);
        view.findViewById(R.id.iv_search).setOnClickListener(this);
        this.mLast.setOnClickListener(this);
        this.mNext.setOnClickListener(this);
        view.findViewById(R.id.iv_increase).setOnClickListener(this);
        view.findViewById(R.id.iv_decrease).setOnClickListener(this);
        view.findViewById(R.id.iv_rds_set).setOnClickListener(this);
        this.v_index = view.findViewById(R.id.v_index);
        this.v_index_left_1 = view.findViewById(R.id.v_index_left_1);
        this.v_index_left_2 = view.findViewById(R.id.v_index_left_2);
        this.v_index_right_1 = view.findViewById(R.id.v_index_right_1);
        this.v_index_right_2 = view.findViewById(R.id.v_index_right_2);
        setFmScaleView();
        setAmScaleView();
        this.mRdsViewControler = new RdsViewControler(this, view);
        if (!Utils.isRdsPresent()) {
            CarRadioManager.getInstance().setRdsCommonStatusEnable(0, false);
        }
        updateLikeEnable();
    }

    @SuppressLint({"ClickableViewAccessibility"})
    private void setFmScaleView() {
        this.mRvFm = this.rootView.findViewById(R.id.rv_fm);
        this.mRvFm.setOnTouchListener(new View.OnTouchListener() { // from class: com.yftech.libradio.RadioMainFragment.5
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                if (motionEvent.getAction() == 2 && RadioMainFragment.this.startX == 0.0f) {
                    RadioMainFragment.this.startX = motionEvent.getX();
                } else {
                    if (motionEvent.getAction() == 2) {
                        if (Math.abs(RadioMainFragment.this.startX - motionEvent.getX()) > 8.0f) {
                            RadioMainFragment.this.setRadioPlaying(false);
                        }
                        int round = Math.round((Math.abs(motionEvent.getX() - RadioMainFragment.this.startX) - (RadioMainFragment.this.itemOffset / 2.0f)) / RadioMainFragment.this.itemOffset) * (motionEvent.getX() > RadioMainFragment.this.startX ? -1 : 1);
                        LogUtil.d("onTouch:positionOffset=" + round);
                        RadioMainFragment.this.updateFreq(0, ((Integer) RadioMainFragment.this.mRadioFreqAdapterFm.getItem((RadioMainFragment.this.fmPosition + round < 0 ? (RadioMainFragment.this.mRadioFreqAdapterFm.getItemCount() + RadioMainFragment.this.fmPosition) + round : RadioMainFragment.this.fmPosition + round) % RadioMainFragment.this.mRadioFreqAdapterFm.getItemCount())).intValue());
                    } else if (motionEvent.getAction() == 1) {
                        RadioMainFragment.this.startX = 0.0f;
                    }
                }
                return false;
            }
        });
        this.mPathLayoutManagerFm = getPathLayoutManager();
        this.mRvFm.setLayoutManager(this.mPathLayoutManagerFm);
        this.mPathLayoutManagerFm.setOnItemSelectedListener(new PathLayoutManager.OnItemSelectedListener() { // from class: com.yftech.libradio.RadioMainFragment.6
            public void onSelected(int i) {
                if (RadioMainFragment.this.fmPosition != i) {
                    RadioMainFragment.this.fmPosition = i;
                    RadioMainFragment.this.setRadioPlaying(true);
                }
                int intValue = ((Integer) RadioMainFragment.this.mRadioFreqAdapterFm.getItem(i)).intValue();
                DataOfRadio freq = CarRadioManager.getInstance().getFreq();
                int freq2 = freq.getFreq();
                int type = freq.getType();
                LogUtil.d("OnSelected() FM position:" + i + " freq:" + intValue + " curFreq:" + freq2 + " curBand:" + type);
                if (intValue == freq2 || type != 0) {
                    return;
                }
                RadioMainFragment.this.setFreq(intValue, -1);
            }
        });
        int validRadioValue = getValidRadioValue(CarRadioManager.getInstance().getMax(0), Utils.SHARED_KEY_FM_MAX, Utils.SHARED_KEY_FM_MAX_DEFAULT);
        int validRadioValue2 = getValidRadioValue(CarRadioManager.getInstance().getMin(0), Utils.SHARED_KEY_FM_MIN, Utils.SHARED_KEY_FM_MIN_DEFAULT);
        int validRadioValue3 = getValidRadioValue(CarRadioManager.getInstance().getManualStep(0), Utils.SHARED_KEY_FM_STEP, 100);
        LogUtil.d("setFmScaleView() maxFreqFm:" + validRadioValue + " minFreqFm:" + validRadioValue2 + " stepFm:" + validRadioValue3);
        ArrayList arrayList = new ArrayList();
        while (validRadioValue2 <= validRadioValue) {
            arrayList.add(Integer.valueOf(validRadioValue2));
            validRadioValue2 += validRadioValue3;
        }
        this.mRadioFreqAdapterFm = new RadioFreqAdapter(getContext().getApplicationContext(), arrayList, 0);
        this.mRvFm.setAdapter(this.mRadioFreqAdapterFm);
        this.mRvFm.getViewTreeObserver().addOnGlobalLayoutListener(this.mFmGlobalLayoutListener);
        this.mRadioFreqAdapterFm.setOnItemChildClickListener(new BaseQuickAdapter.OnItemChildClickListener() { // from class: com.yftech.libradio.RadioMainFragment.7
            public void onItemChildClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                LogUtil.d("onItemChildClick() FM position:" + i);
                if (view.getId() == R.id.layout_freq) {
                    int intValue = ((Integer) RadioMainFragment.this.mRadioFreqAdapterFm.getItem(i)).intValue();
                    DataOfRadio freq = CarRadioManager.getInstance().getFreq();
                    int freq2 = freq.getFreq();
                    int type = freq.getType();
                    LogUtil.d("onItemChildClick() FM position:" + i + " freq:" + intValue + " curFreq:" + freq2 + " curBand:" + type);
                    if (intValue == freq2 || type != 0) {
                        return;
                    }
                    RadioMainFragment.this.setFreq(intValue, -1);
                }
            }
        });
    }

    @SuppressLint({"ClickableViewAccessibility"})
    private void setAmScaleView() {
        this.mRvAm = this.rootView.findViewById(R.id.rv_am);
        this.mRvAm.setOnTouchListener(new View.OnTouchListener() { // from class: com.yftech.libradio.RadioMainFragment.8
            private boolean isMoved = false;

            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                if (motionEvent.getAction() == 2 && RadioMainFragment.this.startX == 0.0f) {
                    this.isMoved = false;
                    RadioMainFragment.this.startX = motionEvent.getX();
                } else {
                    if (motionEvent.getAction() == 2) {
                        if (Math.abs(RadioMainFragment.this.startX - motionEvent.getX()) > 8.0f) {
                            RadioMainFragment.this.setRadioPlaying(false);
                        }
                        int round = Math.round((Math.abs(motionEvent.getX() - RadioMainFragment.this.startX) - (RadioMainFragment.this.itemOffset / 2.0f)) / RadioMainFragment.this.itemOffset) * (motionEvent.getX() > RadioMainFragment.this.startX ? -1 : 1);
                        LogUtil.d("onTouch:positionOffset=" + round + ", isMoved=" + this.isMoved);
                        RadioMainFragment.this.updateFreq(2, ((Integer) RadioMainFragment.this.mRadioFreqAdapterAm.getItem((RadioMainFragment.this.amPosition + round < 0 ? (RadioMainFragment.this.mRadioFreqAdapterAm.getItemCount() + RadioMainFragment.this.amPosition) + round : RadioMainFragment.this.amPosition + round) % RadioMainFragment.this.mRadioFreqAdapterAm.getItemCount())).intValue());
                    } else if (motionEvent.getAction() == 1) {
                        RadioMainFragment.this.startX = 0.0f;
                    }
                }
                return false;
            }
        });
        this.mPathLayoutManagerAm = getPathLayoutManager();
        this.mRvAm.setLayoutManager(this.mPathLayoutManagerAm);
        this.mPathLayoutManagerAm.setOnItemSelectedListener(new PathLayoutManager.OnItemSelectedListener() { // from class: com.yftech.libradio.RadioMainFragment.9
            public void onSelected(int i) {
                if (RadioMainFragment.this.amPosition != i) {
                    RadioMainFragment.this.amPosition = i;
                    RadioMainFragment.this.setRadioPlaying(true);
                }
                int intValue = ((Integer) RadioMainFragment.this.mRadioFreqAdapterAm.getItem(i)).intValue();
                DataOfRadio freq = CarRadioManager.getInstance().getFreq();
                int freq2 = freq.getFreq();
                int type = freq.getType();
                LogUtil.d("OnSelected() AM position:" + i + " freq:" + intValue + " curFreq:" + freq2 + " curBand:" + type);
                if (intValue == freq2 || type != 2) {
                    return;
                }
                RadioMainFragment.this.setFreq(intValue, -1);
            }
        });
        int validRadioValue = getValidRadioValue(CarRadioManager.getInstance().getMax(2), Utils.SHARED_KEY_AM_MAX, Utils.SHARED_KEY_AM_MAX_DEFAULT);
        int validRadioValue2 = getValidRadioValue(CarRadioManager.getInstance().getMin(2), Utils.SHARED_KEY_AM_MIN, 531);
        int validRadioValue3 = getValidRadioValue(CarRadioManager.getInstance().getManualStep(2), Utils.SHARED_KEY_AM_STEP, 9);
        LogUtil.d("setAmScaleView() maxFreqAm:" + validRadioValue + " minFreqAm:" + validRadioValue2 + " stepAm:" + validRadioValue3);
        ArrayList arrayList = new ArrayList();
        while (validRadioValue2 <= validRadioValue) {
            arrayList.add(Integer.valueOf(validRadioValue2));
            validRadioValue2 += validRadioValue3;
        }
        this.mRadioFreqAdapterAm = new RadioFreqAdapter(getContext().getApplicationContext(), arrayList, 2);
        this.mRvAm.setAdapter(this.mRadioFreqAdapterAm);
        this.mRvAm.getViewTreeObserver().addOnGlobalLayoutListener(this.mAmGlobalLayoutListener);
        this.mRadioFreqAdapterAm.setOnItemChildClickListener(new BaseQuickAdapter.OnItemChildClickListener() { // from class: com.yftech.libradio.RadioMainFragment.10
            public void onItemChildClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                LogUtil.d("onItemChildClick() AM position:" + i);
                if (view.getId() == R.id.layout_freq) {
                    int intValue = ((Integer) RadioMainFragment.this.mRadioFreqAdapterAm.getItem(i)).intValue();
                    DataOfRadio freq = CarRadioManager.getInstance().getFreq();
                    int freq2 = freq.getFreq();
                    int type = freq.getType();
                    LogUtil.d("onItemChildClick() AM position:" + i + " freq:" + intValue + " curFreq:" + freq2 + " curBand:" + type);
                    if (intValue == freq2 || type != 2) {
                        return;
                    }
                    RadioMainFragment.this.setFreq(intValue, -1);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateLikeEnable() {
        boolean isScanStatus = CarRadioManager.getInstance().isScanStatus();
        this.mIvLike.setEnabled(!isScanStatus);
        this.mIvLike.setAlpha(!isScanStatus ? 1.0f : 0.5f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setRadioPlaying(boolean z) {
        if (z) {
            this.v_index_left_1.setVisibility(0);
            this.v_index_left_2.setVisibility(0);
            this.v_index_right_1.setVisibility(0);
            this.v_index_right_2.setVisibility(0);
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.v_index.getLayoutParams();
            layoutParams.topMargin = ICarSeat.CHILD_LOCK_RL;
            layoutParams.height = 67;
            this.v_index.setLayoutParams(layoutParams);
            return;
        }
        RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) this.v_index.getLayoutParams();
        layoutParams2.topMargin = ICarEvDevice.IPEDAL_MODE_VALID_STATE;
        layoutParams2.height = 54;
        this.v_index.setLayoutParams(layoutParams2);
        this.v_index_left_1.setVisibility(4);
        this.v_index_left_2.setVisibility(4);
        this.v_index_right_1.setVisibility(4);
        this.v_index_right_2.setVisibility(4);
    }

    private PathLayoutManager getPathLayoutManager() {
        PathLayoutManager pathLayoutManager = new PathLayoutManager((Path) null, 50);
        pathLayoutManager.setScrollMode(2);
        pathLayoutManager.setFlingEnable(false);
        pathLayoutManager.setAutoSelect(true);
        pathLayoutManager.setItemDirectionFixed(true);
        pathLayoutManager.setOrientation(0);
        pathLayoutManager.setItemScaleRatio(new float[]{0.6f, 0.0f, 1.0f, 0.5f, 0.6f, 1.0f});
        Path path = new Path();
        path.arcTo(new RectF(378.0f, 0, Constants.displayWidth - 297, ICarDoor.HOOD_DOOR_STATE), 210.0f, -240.0f);
        pathLayoutManager.setItemOffset(this.itemOffset);
        pathLayoutManager.updatePath(path);
        return pathLayoutManager;
    }

    @Override // com.yftech.libmvpmodule.mvp.BaseMvpFragment
    public void onResume() {
        super.onResume();
        LogUtil.d("onResume()");
        this.mConnectedLinkStatus = CarPhoneLinkManager.getInstance().getConnectedLinkStatus();
        CarPhoneLinkManager.getInstance().registerCarPhoneLinkCallback(this.mCarPhoneLinkCallback, this.mMainHandler);
        CarRadioManager.registerRadioControlCallback(this.mCarRadioControlCallback, this.mMainHandler);
        getContext().registerReceiver(this.mCarplayShowUIReceiver, this.mIntentFilter);
        getContext().registerReceiver(this.receiver, this.mIntentFilter);
        getContext().registerReceiver(this.rdsReceiver, this.mIntentFilter);
        CarBluetoothManager.getInstance().registerBluetoothPhoneCallback(this.bluetoothPhoneCallback, (Handler) null);
        if (isHidden()) {
            return;
        }
        CarRadioManager.getInstance().requestAudioFocus();
        boolean isPlaying = CarRadioManager.getInstance().isPlaying();
        boolean isScanStatus = CarRadioManager.getInstance().isScanStatus();
        boolean isResumeByPowerOn = isResumeByPowerOn();
        boolean isCheckedDab = getActivity().isCheckedDab();
        LogUtil.d("onResume() isPlaying:" + isPlaying + " connectedLinkStatus:" + this.mConnectedLinkStatus + " isScanning:" + isScanStatus + " isResumeByPowerOn:" + isResumeByPowerOn + ";checkedDab=" + isCheckedDab);
        if (!isPlaying && !isScanStatus && !isResumeByPowerOn && !isCheckedDab) {
            CarRadioManager.getInstance().play();
        }
        initViewData();
    }

    private void initViewData() {
        DataOfRadio freqEx = CarRadioManager.getInstance().getFreqEx();
        LogUtil.d("type:" + freqEx.getType() + " freq:" + freqEx.getFreq());
        updateFreqView(freqEx, true, false);
        updatePlayView(CarRadioManager.getInstance().isPlaying());
        updateFavorView(CarRadioManager.getInstance().isFreqFavored(freqEx));
        showRadioSearchingDialog();
        updateLikeEnable();
    }

    public void onStart() {
        super.onStart();
        LogUtil.d("onStart()");
    }

    @Override // com.yftech.libmvpmodule.mvp.BaseMvpFragment
    public void onPause() {
        super.onPause();
        LogUtil.d("onPause()");
        if (CarRadioManager.getInstance().isScanStatus()) {
            CarRadioManager.getInstance().stop();
        }
        this.isCarPlayCalled = false;
        this.isCarplayDisconnected = false;
        CarPhoneLinkManager.getInstance().unregisterCarPhoneLinkCallback(this.mCarPhoneLinkCallback);
        CarRadioManager.unregisterRadioControlCallback(this.mCarRadioControlCallback);
        if (this.bluetoothPhoneCallback != null) {
            CarBluetoothManager.getInstance().unregisterBluetoothPhoneCallback(this.bluetoothPhoneCallback);
        }
        getContext().unregisterReceiver(this.mCarplayShowUIReceiver);
        getContext().unregisterReceiver(this.receiver);
        getContext().unregisterReceiver(this.rdsReceiver);
        this.mRdsViewControler.hideRdsSettingsDialog();
        this.mRdsViewControler.hideRdsRtDialog();
        dismissAllDialog();
    }

    public void onHiddenChanged(boolean z) {
        super.onHiddenChanged(z);
        LogUtil.d("onHiddenChanged, hidden: " + z);
        if (z) {
            return;
        }
        CarRadioManager.getInstance().requestAudioFocus();
        boolean isPlaying = CarRadioManager.getInstance().isPlaying();
        boolean isScanStatus = CarRadioManager.getInstance().isScanStatus();
        LogUtil.d("onHiddenChanged() isPlaying:" + isPlaying + " connectedLinkStatus:" + this.mConnectedLinkStatus + " isScanning:" + isScanStatus);
        if (!isPlaying && !isScanStatus) {
            CarRadioManager.getInstance().play();
        }
        this.isFragmentSwitch = true;
    }

    @Override // com.yftech.libmvpmodule.mvp.BaseMvpFragment
    public void onDestroy() {
        super.onDestroy();
        LogUtil.d("onDestroy()");
        RdsDataManager.getInstance().unInit();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int band;
        if (view.getId() == R.id.iv_search) {
            if (Utils.isQuickClick()) {
                LogUtil.i("iv_search quick click");
                return;
            }
            RadioMainActivity activity = getActivity();
            if (activity != null) {
                int checkedId = activity.getCheckedId();
                band = checkedId != R.id.rb_am ? 0 : 2;
                LogUtil.i("iv_search selectId:" + checkedId + " band:" + band);
            } else {
                band = CarRadioManager.getInstance().getBand();
                LogUtil.i("iv_search band:" + band);
            }
            Intent intent = new Intent(getContext(), (Class<?>) RadioListActivity.class);
            intent.putExtra(RadioListActivity.ARG_PARAM1, band);
            startActivity(intent);
            return;
        }
        if (view.getId() == R.id.iv_like_list) {
            if (Utils.isQuickClick()) {
                LogUtil.i("iv_like_list quick click");
                return;
            }
            Intent intent2 = new Intent(getContext(), (Class<?>) RadioFavorActivity.class);
            intent2.putExtra(RadioFavorActivity.ARG_PARAM1, CarRadioManager.getInstance().getBand());
            startActivity(intent2);
            return;
        }
        if (view.getId() == R.id.iv_play) {
            if (view.isHovered()) {
                ToastUtils.showNormalMessage(R.string.signal_poor, 1);
            }
            if (CarRadioManager.getInstance().isPlaying()) {
                CarRadioManager.getInstance().pause();
                return;
            } else {
                CarRadioManager.getInstance().play();
                return;
            }
        }
        if (view.getId() == R.id.iv_last) {
            if (view.isHovered()) {
                ToastUtils.showNormalMessage(R.string.signal_poor, 1);
            }
            CarRadioManager.getInstance().seekUp();
            return;
        }
        if (view.getId() == R.id.iv_next) {
            if (view.isHovered()) {
                ToastUtils.showNormalMessage(R.string.signal_poor, 1);
            }
            CarRadioManager.getInstance().seekDown();
            return;
        }
        if (view.getId() == R.id.iv_increase) {
            CarRadioManager.getInstance().stepUp();
            return;
        }
        if (view.getId() == R.id.iv_decrease) {
            CarRadioManager.getInstance().stepDown();
            return;
        }
        if (view.getId() == R.id.iv_like) {
            if (view.isHovered()) {
                ToastUtils.showNormalMessage(R.string.signal_poor, 1);
            }
            DataOfRadio freq = CarRadioManager.getInstance().getFreq();
            if (!CarRadioManager.getInstance().isFreqFavored(freq)) {
                int band2 = CarRadioManager.getInstance().getBand();
                DataOfRadio[] favors = CarRadioManager.getInstance().getFavors(band2);
                StringBuilder sb = new StringBuilder();
                sb.append("band:");
                sb.append(band2);
                sb.append(" length:");
                sb.append(favors != null ? Integer.valueOf(favors.length) : "null");
                LogUtil.d(sb.toString());
                int i = band2 == 2 ? 20 : 30;
                if (favors != null && favors.length >= i) {
                    ToastUtils.showNormalMessage(R.string.radio_channel_favor_dialog_add_favor_full, 1);
                    return;
                }
                boolean addFavor = CarRadioManager.getInstance().addFavor(freq, i, true);
                LogUtil.d("addFavor result:" + addFavor);
                if (addFavor) {
                    ToastUtils.showNormalMessage(R.string.radio_channel_favor_dialog_add_favor_successful, 1);
                    return;
                } else {
                    ToastUtils.showFailMessage(R.string.radio_channel_favor_dialog_add_favor_failure, 1);
                    return;
                }
            }
            boolean removeFavor = CarRadioManager.getInstance().removeFavor(freq);
            LogUtil.d("removeFavor result:" + removeFavor);
            if (removeFavor) {
                ToastUtils.showNormalMessage(R.string.radio_channel_favor_dialog_remove_favor_successful, 1);
            } else {
                ToastUtils.showFailMessage(R.string.radio_channel_favor_dialog_remove_favor_failure, 1);
            }
        }
    }

    public void onCheckChange(int i) {
        LogUtil.i("RadioMainFragment->onCheckChange->checkedId=" + i);
        if (i == R.id.rb_fm) {
            updateFMAndAm(0);
            setBand(0);
        } else if (i == R.id.rb_am) {
            updateFMAndAm(2);
            setBand(2);
        } else if (this.mRdsSettings != null) {
            this.mRdsSettings.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setButtonsStatus(int i, int i2) {
        if (i == 0) {
            this.mIvLike.setHovered(i2 <= this.minFmSinalConfig);
            this.mIvPlay.setHovered(i2 <= this.minFmSinalConfig);
            this.mLast.setHovered(i2 <= this.minFmSinalConfig);
            this.mNext.setHovered(i2 <= this.minFmSinalConfig);
            return;
        }
        if (i == 2) {
            this.mIvLike.setHovered(i2 <= this.minAmSinalConfig);
            this.mIvPlay.setHovered(i2 <= this.minAmSinalConfig);
            this.mLast.setHovered(i2 <= this.minAmSinalConfig);
            this.mNext.setHovered(i2 <= this.minAmSinalConfig);
            return;
        }
        this.mIvLike.setHovered(false);
        this.mIvPlay.setHovered(false);
        this.mLast.setHovered(false);
        this.mNext.setHovered(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updatePlayView(boolean z) {
        boolean isScanStatus = CarRadioManager.getInstance().isScanStatus();
        LogUtil.d("isPlaying:" + z + "  isScanStatus = " + isScanStatus);
        this.mIvPlay.setImageResource((!z || isScanStatus) ? R.drawable.fm_main_icon_paused : R.drawable.fm_main_icon_playing);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateFavorView(boolean z) {
        LogUtil.d("isFavored:" + z);
        if (this.mIvLike.isSelected() != z) {
            this.mIvLike.setSelected(z);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateFreqView(DataOfRadio dataOfRadio, boolean z, boolean z2) {
        LogUtil.d("isUpdateScale:" + z + " isSmooth:" + z2 + " type:" + dataOfRadio.getType() + " Freq:" + dataOfRadio.getFreq());
        this.mRdsViewControler.updateFreq(dataOfRadio);
        if (dataOfRadio.getType() == 2) {
            updateFreq(2, dataOfRadio.getFreq());
            this.mTvChannelTag.setText(getString(R.string.radio_band_am));
            if (z) {
                updateFreqInList(dataOfRadio.getFreq(), 2, z2);
            }
            updateFMAndAm(2);
            RadioMainActivity activity = getActivity();
            if (activity != null) {
                activity.switchFmOrAm(2);
                return;
            }
            return;
        }
        updateFreq(0, dataOfRadio.getFreq());
        this.mTvChannelTag.setText(getString(R.string.radio_band_fm));
        if (z) {
            updateFreqInList(dataOfRadio.getFreq(), 0, z2);
        }
        updateFMAndAm(0);
        RadioMainActivity activity2 = getActivity();
        if (activity2 != null) {
            activity2.switchFmOrAm(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateFreqInList(int i, int i2, boolean z) {
        PathLayoutManager pathLayoutManager;
        LogUtil.d("updateFreqInList() freq:" + i + " band:" + i2 + " isSmooth:" + z);
        List list = null;
        if (i2 == 2) {
            list = this.mRadioFreqAdapterAm.getData();
            pathLayoutManager = this.mPathLayoutManagerAm;
        } else if (i2 == 0) {
            list = this.mRadioFreqAdapterFm.getData();
            pathLayoutManager = this.mPathLayoutManagerFm;
        } else {
            pathLayoutManager = null;
        }
        if (list != null) {
            for (int i3 = 0; i3 < list.size(); i3++) {
                if (i == ((Integer) list.get(i3)).intValue()) {
                    if (pathLayoutManager != null) {
                        try {
                            if (z) {
                                pathLayoutManager.scrollToPosition(i3);
                            } else {
                                pathLayoutManager.scrollToPosition(i3);
                            }
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                        if (i2 == 0) {
                            this.fmPosition = i3;
                            return;
                        } else {
                            this.amPosition = i3;
                            return;
                        }
                    }
                    return;
                }
            }
        }
    }

    private void updateFMAndAm(int i) {
        if (i == 0) {
            if (this.mRvAm != null && this.mRvAm.getVisibility() != 4) {
                this.mRvAm.setVisibility(4);
            }
            if (this.mRvFm != null && this.mRvFm.getVisibility() != 0) {
                this.mRvFm.setVisibility(0);
            }
            if (this.mRdsSettings != null) {
                this.mRdsSettings.setVisibility(Utils.isRdsPresent() ? 0 : 8);
                return;
            }
            return;
        }
        if (this.mRvFm != null && this.mRvFm.getVisibility() != 4) {
            this.mRvFm.setVisibility(4);
        }
        if (this.mRvAm != null && this.mRvAm.getVisibility() != 0) {
            this.mRvAm.setVisibility(0);
        }
        if (this.mRdsSettings != null) {
            this.mRdsSettings.setVisibility(8);
        }
    }

    private void showRadioSearchingDialog() {
        boolean radioAutoSearch = getRadioAutoSearch();
        LogUtil.d("showRadioSearchingDialog() isRadioAutoSearch:" + radioAutoSearch);
        if (radioAutoSearch) {
            int band = CarRadioManager.getInstance().getBand();
            int scanStatus = CarRadioManager.getInstance().getScanStatus();
            LogUtil.d("showRadioSearchingDialog() band:" + band + " status:" + scanStatus);
            if (scanStatus != 1) {
                RadioSearchingDialog.newInstance(getString(R.string.radio_channel_search_dialog_search_scanning), band).show(getChildFragmentManager(), RadioSearchingDialog.class.getSimpleName());
            }
        }
    }

    public static boolean getRadioAutoSearch() {
        CarData carData = CarDataManager.get(new CarData(new CarData.CarDataEntry(KEY_RADIO_AUTO_SEARCH, true)));
        if (carData != null && carData.getDataEntry(KEY_RADIO_AUTO_SEARCH) != null) {
            boolean valueBoolean = carData.getDataEntry(KEY_RADIO_AUTO_SEARCH).getValueBoolean();
            LogUtil.d("getRadioAutoSearch() value:" + valueBoolean);
            return valueBoolean;
        }
        LogUtil.d("getRadioAutoSearch() no data");
        return false;
    }

    public static void setRadioAutoSearch(boolean z) {
        LogUtil.d("setRadioAutoSearch() ret:" + CarDataManager.set(new CarData(new CarData.CarDataEntry(KEY_RADIO_AUTO_SEARCH, z)), true));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setFreq(int i, int i2) {
        LogUtil.i("setFreq() freq:" + i + " index:" + i2);
        CarRadioManager.getInstance().setFreq(i, i2);
    }

    private void setBand(int i) {
        LogUtil.i("setBand() band:" + i);
        CarRadioManager.getInstance().setBand(i);
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    private class CarplayShowUIReceiver extends BroadcastReceiver {
        private CarplayShowUIReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            if (RadioMainFragment.ACTION_CARPLAY_EVENT_SHOW_UI.equals(action)) {
                boolean booleanExtra = intent.getBooleanExtra(RadioMainFragment.KEY_CARPLAY_EVENT_SHOW_UI, true);
                LogUtil.i("onReceive() ACTION_CARPLAY_EVENT_SHOW_UI isShow:" + booleanExtra);
                if (booleanExtra && CarRadioManager.getInstance().isScanStatus()) {
                    CarRadioManager.getInstance().stop();
                }
                Message obtainMessage = RadioMainFragment.this.mHandler.obtainMessage(10);
                obtainMessage.obj = Boolean.valueOf(booleanExtra);
                RadioMainFragment.this.mHandler.sendMessageDelayed(obtainMessage, 500L);
                return;
            }
            if ("com.yftech.hicar.show".equals(action)) {
                boolean booleanExtra2 = intent.getBooleanExtra("isShow", false);
                LogUtil.d("com.yftech.hicar.show:isShow=" + booleanExtra2);
                Message obtainMessage2 = RadioMainFragment.this.mHandler.obtainMessage(11);
                obtainMessage2.obj = Boolean.valueOf(booleanExtra2);
                RadioMainFragment.this.mHandler.sendMessageDelayed(obtainMessage2, 500L);
            }
        }
    }

    private void dismissAllDialog() {
        Dialog dialog;
        Dialog dialog2;
        if (this.mRadioSearchChannelDialog != null && (dialog2 = this.mRadioSearchChannelDialog.getDialog()) != null && dialog2.isShowing()) {
            dialog2.dismiss();
        }
        if (this.mRadioFavorDialog == null || (dialog = this.mRadioFavorDialog.getDialog()) == null || !dialog.isShowing()) {
            return;
        }
        dialog.dismiss();
    }

    private int getValidRadioValue(int i, String str, int i2) {
        int sharedRadioData = getSharedRadioData(str, i2);
        LogUtil.i("getValidRadioValue() curValue:" + i + " shareValue:" + sharedRadioData + " (" + str + "_" + i2 + ")");
        if (i >= 0) {
            if (i != sharedRadioData) {
                saveSharedRadioData(str, i);
            }
            return i;
        }
        LogUtil.i("getValidRadioValue() curValue error, use shareValue. shareValue:" + sharedRadioData);
        return sharedRadioData;
    }

    private int getSharedRadioData(String str, int i) {
        return getContext().getSharedPreferences(Utils.SHARED_RADIO_DATA_NAME, 0).getInt(str, i);
    }

    private void saveSharedRadioData(String str, int i) {
        LogUtil.i("saveSharedRadioData() key:" + str + " value:" + i);
        getContext().getSharedPreferences(Utils.SHARED_RADIO_DATA_NAME, 0).edit().putInt(str, i).commit();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateFreq(int i, int i2) {
        if (i == 0) {
            if (this.mFmKeepTwoDecima) {
                this.mTvChannel.setText(String.format(Locale.ENGLISH, "%.2f", Float.valueOf(i2 / 1000.0f)));
                return;
            } else {
                this.mTvChannel.setText(String.valueOf(i2 / 1000.0f));
                return;
            }
        }
        this.mTvChannel.setText(String.valueOf(i2));
    }
}
