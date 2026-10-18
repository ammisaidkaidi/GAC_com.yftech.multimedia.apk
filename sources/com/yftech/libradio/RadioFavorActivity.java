package com.yftech.libradio;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.AnimationDrawable;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.core.content.ContextCompat;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import com.media.common.util.LogUtil;
import com.media.common.util.ToastUtils;
import com.yftech.car.media.radio.CarRadioManager;
import com.yftech.car.media.radio.entity.DataOfRadio;
import com.yftech.car.media.radio.rds.entity.RdsInfo;
import com.yftech.libmvpmodule.mvp.BaseMvpActivity;
import com.yftech.libradio.bean.RadioChannelInfo;
import com.yftech.libradio.dialog.RdsSettingsDialog;
import com.yftech.libradio.presenter.RadioFavorPresenter;
import com.yftech.libradio.rds.RdsDataManager;
import com.yftech.libradio.view.IRadioFavorDialogView;
import java.util.List;
import java.util.Locale;
import java.util.Map;

/* loaded from: /home/user/work/dex/classes4.dex */
public class RadioFavorActivity extends BaseMvpActivity<RadioFavorPresenter> implements IRadioFavorDialogView {
    public static final String ARG_PARAM1 = "favor_band";
    private boolean afEnable;
    private int band;
    private String currentPsString;
    private String currentPtyStr;
    private boolean hasScrolledWithOffset;
    private ImageView iv_toBoard;
    private View layoutTitle;
    private LinearLayoutManager linearLayoutManager;
    private Map<Integer, RdsInfo> mRdsInfoMap;
    private boolean mTpEnable;
    private ProgressBar pb_list;
    private boolean ptyEnable;
    private String[] ptyStrs;
    private RadioFavorAdapter radioFavorAdapter;
    private boolean rdsEnable;
    private RelativeLayout rl_search_fail;
    private RecyclerView rv;
    private boolean taValid;
    private TextView tvRadioName;
    private Handler mHanlder = new Handler(Looper.getMainLooper());
    private boolean pullUp = false;
    private final CarRadioManager.CarRadioControlCallback mCarRadioControlCallback = new CarRadioManager.CarRadioControlCallback() { // from class: com.yftech.libradio.RadioFavorActivity.6
        public void onAudioFocusChange(int i) {
        }

        public void onFavorChange(int i, DataOfRadio dataOfRadio) {
        }

        public void onFreqSignal(int i, DataOfRadio dataOfRadio, int i2) {
        }

        public void onSeekStatusChange(int i, int i2, int i3) {
        }

        public void onFreqChanage(int i, DataOfRadio dataOfRadio, DataOfRadio dataOfRadio2) {
            LogUtil.d("onFreqChanage() newChannel:" + dataOfRadio.toString());
            RadioFavorActivity.this.getPresenter().getFavors(RadioFavorActivity.this.band);
        }

        public void onPlayPause(boolean z) {
            LogUtil.d("onPlayPause() isPlaying:" + z);
            RadioFavorActivity.this.getPresenter().getFavors(RadioFavorActivity.this.band);
        }

        public void onRdsCommonStringChange(int i, String str) {
            super.onRdsCommonStringChange(i, str);
            DataOfRadio freq = CarRadioManager.getInstance().getFreq();
            LogUtil.d("type: " + i + " , value: " + str + " , fre: " + freq.getFreq());
            if (i == 8) {
                RadioFavorActivity.this.currentPsString = str;
                if (RadioFavorActivity.this.mRdsInfoMap != null && !RadioFavorActivity.this.mRdsInfoMap.isEmpty()) {
                    for (RdsInfo rdsInfo : RadioFavorActivity.this.mRdsInfoMap.values()) {
                        if (rdsInfo.getFreq() == freq.getFreq()) {
                            rdsInfo.setPs(RadioFavorActivity.this.currentPsString);
                        }
                    }
                }
                RadioFavorActivity.this.mHanlder.post(new Runnable() { // from class: com.yftech.libradio.RadioFavorActivity.6.1
                    @Override // java.lang.Runnable
                    public void run() {
                        RadioFavorActivity.this.rv.getAdapter().notifyDataSetChanged();
                    }
                });
            }
        }

        public void onRdsPtyStatusChange(int i) {
            super.onRdsPtyStatusChange(i);
            DataOfRadio freq = CarRadioManager.getInstance().getFreq();
            LogUtil.d("type: " + i + " ,fre: " + freq.getFreq());
            RadioFavorActivity.this.currentPtyStr = RadioFavorActivity.this.getString(R.string.radio_unknown);
            if (i < 0 || i >= RadioFavorActivity.this.ptyStrs.length) {
                return;
            }
            RadioFavorActivity.this.currentPtyStr = RadioFavorActivity.this.ptyStrs[i];
            if (RadioFavorActivity.this.mRdsInfoMap != null && !RadioFavorActivity.this.mRdsInfoMap.isEmpty()) {
                for (RdsInfo rdsInfo : RadioFavorActivity.this.mRdsInfoMap.values()) {
                    if (rdsInfo.getFreq() == freq.getFreq()) {
                        rdsInfo.setPty(i);
                    }
                }
            }
            RadioFavorActivity.this.mHanlder.post(new Runnable() { // from class: com.yftech.libradio.RadioFavorActivity.6.2
                @Override // java.lang.Runnable
                public void run() {
                    RadioFavorActivity.this.rv.getAdapter().notifyDataSetChanged();
                }
            });
        }

        public void onRdsCommonStatusChange(int i, boolean z) {
            super.onRdsCommonStatusChange(i, z);
            LogUtil.d("type: " + i + " , value: " + z);
            if (i == 0) {
                RadioFavorActivity.this.rdsEnable = z;
            } else if (i == 2) {
                RadioFavorActivity.this.afEnable = z;
            } else if (i == 7) {
                RadioFavorActivity.this.taValid = z;
            }
            RadioFavorActivity.this.mHanlder.post(new Runnable() { // from class: com.yftech.libradio.RadioFavorActivity.6.3
                @Override // java.lang.Runnable
                public void run() {
                    RadioFavorActivity.this.rv.getAdapter().notifyDataSetChanged();
                }
            });
        }
    };

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.yftech.libmvpmodule.mvp.BaseMvpActivity
    public RadioFavorPresenter createPresenter() {
        return new RadioFavorPresenter(this);
    }

    @Override // com.yftech.libmvpmodule.mvp.BaseMvpActivity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_radio_favor);
        this.band = getIntent().getIntExtra(ARG_PARAM1, 0);
        LogUtil.d("onCreate() band:" + this.band);
        this.ptyStrs = getResources().getStringArray(R.array.dab_ptys);
        initView();
        if (!Utils.isRdsPresent()) {
            this.rdsEnable = false;
            return;
        }
        this.rdsEnable = CarRadioManager.getInstance().isRdsCommonStatusEnable(0);
        this.mTpEnable = getSharedPreferences(Utils.SHARED_RADIO_DATA_NAME, 0).getBoolean(RdsSettingsDialog.SP_KEY_TP_SHOW, true);
        this.ptyEnable = getSharedPreferences(Utils.SHARED_RADIO_DATA_NAME, 0).getBoolean(RdsSettingsDialog.SP_KEY_PTY_SHOW, false);
        this.afEnable = CarRadioManager.getInstance().isRdsCommonStatusEnable(2);
        this.taValid = CarRadioManager.getInstance().isRdsCommonStatusEnable(7);
    }

    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        this.band = intent.getIntExtra(ARG_PARAM1, 0);
        LogUtil.d("band:" + this.band);
    }

    @Override // com.yftech.libmvpmodule.mvp.BaseMvpActivity
    public void onDestroy() {
        super.onDestroy();
        LogUtil.d("onDestroy()");
    }

    public void onStart() {
        super.onStart();
        LogUtil.d("onStart()");
    }

    @Override // com.yftech.libmvpmodule.mvp.BaseMvpActivity
    public void onResume() {
        super.onResume();
        LogUtil.d("onResume()");
        CarRadioManager.registerRadioControlCallback(this.mCarRadioControlCallback);
        findViewById(R.id.tv_pty_title).setVisibility((this.ptyEnable && this.band == 0) ? 0 : 8);
        this.pb_list.setVisibility(0);
        getPresenter().getFavors(this.band);
    }

    public void onPause() {
        super.onPause();
        LogUtil.d("onPause()");
        CarRadioManager.unregisterRadioControlCallback(this.mCarRadioControlCallback);
    }

    @Override // com.yftech.libmvpmodule.mvp.BaseMvpActivity
    public void onStop() {
        super.onStop();
        LogUtil.d("onStop()");
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void initView() {
        this.layoutTitle = findViewById(R.id.layout_title);
        this.rl_search_fail = (RelativeLayout) findViewById(R.id.layout_no_content);
        this.pb_list = (ProgressBar) findViewById(R.id.pb_list);
        this.rv = findViewById(R.id.rv_radio_list);
        this.linearLayoutManager = new LinearLayoutManager(this);
        this.rv.setLayoutManager(this.linearLayoutManager);
        this.radioFavorAdapter = new RadioFavorAdapter();
        this.radioFavorAdapter.setOnItemChildClickListener(new BaseQuickAdapter.OnItemChildClickListener() { // from class: com.yftech.libradio.RadioFavorActivity.1
            public void onItemChildClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                RadioChannelInfo radioChannelInfo;
                if (view.getId() != R.id.iv_station_favor_flag || (radioChannelInfo = (RadioChannelInfo) RadioFavorActivity.this.radioFavorAdapter.getItem(i)) == null) {
                    return;
                }
                if (CarRadioManager.getInstance().removeFavor(radioChannelInfo)) {
                    ToastUtils.showNormalMessage(R.string.radio_channel_favor_dialog_remove_favor_successful, 1);
                    int farqPosition = RadioFavorActivity.this.radioFavorAdapter.getFarqPosition();
                    if (i < farqPosition) {
                        int i2 = farqPosition - 1;
                        RadioFavorActivity.this.radioFavorAdapter.setPlayingIndex(i2, i2 >= 0);
                    } else if (i == RadioFavorActivity.this.radioFavorAdapter.getFarqPosition()) {
                        RadioFavorActivity.this.radioFavorAdapter.setPlayingIndex(-1, false);
                    }
                    RadioFavorActivity.this.radioFavorAdapter.remove(i);
                    RadioFavorActivity.this.tvRadioName.setText(RadioFavorActivity.this.getString(R.string.station_name_with_count, new Object[]{String.valueOf(RadioFavorActivity.this.radioFavorAdapter.getItemCount())}));
                    if (RadioFavorActivity.this.radioFavorAdapter.getItemCount() <= 0) {
                        RadioFavorActivity.this.rl_search_fail.setVisibility(0);
                        RadioFavorActivity.this.rv.setVisibility(4);
                        return;
                    }
                    return;
                }
                ToastUtils.showFailMessage(R.string.radio_channel_favor_dialog_remove_favor_failure, 1);
            }
        });
        this.radioFavorAdapter.setOnItemClickListener(new BaseQuickAdapter.OnItemClickListener() { // from class: com.yftech.libradio.RadioFavorActivity.2
            public void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                RadioChannelInfo radioChannelInfo = (RadioChannelInfo) RadioFavorActivity.this.radioFavorAdapter.getItem(i);
                if (radioChannelInfo == null || !radioChannelInfo.isValid) {
                    return;
                }
                CarRadioManager.getInstance().setFreq(radioChannelInfo.getFreq(), i);
                RadioFavorActivity.this.radioFavorAdapter.setPlayingIndex(i, true);
            }
        });
        this.rv.setAdapter(this.radioFavorAdapter);
        this.pb_list.setVisibility(0);
        this.tvRadioName = (TextView) findViewById(R.id.tv_station_name_num);
        this.iv_toBoard = (ImageView) findViewById(R.id.iv_toBoard);
        this.iv_toBoard.setOnClickListener(new View.OnClickListener() { // from class: com.yftech.libradio.RadioFavorActivity.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (RadioFavorActivity.this.pullUp) {
                    RadioFavorActivity.this.rv.scrollToPosition(0);
                    return;
                }
                int itemCount = RadioFavorActivity.this.rv.getAdapter().getItemCount() - 1;
                if (itemCount >= 0) {
                    RadioFavorActivity.this.rv.scrollToPosition(itemCount);
                }
            }
        });
        this.rv.addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: com.yftech.libradio.RadioFavorActivity.4
            public void onScrolled(@NonNull RecyclerView recyclerView, int i, int i2) {
                if (RadioFavorActivity.this.pullUp != (i2 < 0)) {
                    RadioFavorActivity.this.pullUp = i2 < 0;
                }
                RadioFavorActivity.this.pullUp = i2 < 0;
                int findFirstVisibleItemPosition = RadioFavorActivity.this.linearLayoutManager.findFirstVisibleItemPosition();
                int findLastVisibleItemPosition = RadioFavorActivity.this.linearLayoutManager.findLastVisibleItemPosition();
                if (findFirstVisibleItemPosition <= 7 || findLastVisibleItemPosition >= RadioFavorActivity.this.rv.getAdapter().getItemCount() - 1) {
                    RadioFavorActivity.this.setBoardVisible(false);
                } else if (RadioFavorActivity.this.pullUp) {
                    RadioFavorActivity.this.iv_toBoard.setImageResource(R.mipmap.radio_btn_reach_top);
                    RadioFavorActivity.this.setBoardVisible(true);
                } else {
                    RadioFavorActivity.this.iv_toBoard.setImageResource(R.mipmap.radio_btn_reach_bottom);
                    RadioFavorActivity.this.setBoardVisible(true);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setBoardVisible(boolean z) {
        if (z) {
            this.iv_toBoard.animate().cancel();
            this.iv_toBoard.setVisibility(0);
            this.iv_toBoard.setAlpha(1.0f);
            this.iv_toBoard.animate().alpha(0.0f).setStartDelay(4000L).setDuration(1000L).setListener(new AnimatorListenerAdapter() { // from class: com.yftech.libradio.RadioFavorActivity.5
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    RadioFavorActivity.this.iv_toBoard.setVisibility(4);
                }
            }).start();
            return;
        }
        this.iv_toBoard.animate().cancel();
        this.iv_toBoard.setVisibility(4);
    }

    @Override // com.yftech.libradio.view.IRadioFavorDialogView
    public void displayFavorList(int i, List<RadioChannelInfo> list) {
        this.pb_list.setVisibility(8);
        this.currentPsString = CarRadioManager.getInstance().getRdsPS();
        this.currentPtyStr = getString(R.string.radio_unknown);
        int rdsPty = CarRadioManager.getInstance().getRdsPty();
        LogUtil.d("pty: " + rdsPty + " ,psString: " + this.currentPsString + ";rdsEnable=" + this.rdsEnable + ";ptyEnable=" + this.ptyEnable);
        if (rdsPty >= 0 && rdsPty < this.ptyStrs.length) {
            this.currentPtyStr = this.ptyStrs[rdsPty];
        }
        if (list == null || list.isEmpty()) {
            this.rl_search_fail.setVisibility(0);
            this.rv.setVisibility(4);
            this.layoutTitle.setVisibility(4);
            this.tvRadioName.setText(getString(R.string.station_name_with_count, new Object[]{String.valueOf(0)}));
            return;
        }
        this.mRdsInfoMap = RdsDataManager.getInstance().getRdsInfoList();
        this.tvRadioName.setText(getString(R.string.station_name_with_count, new Object[]{String.valueOf(list.size())}));
        this.rl_search_fail.setVisibility(8);
        this.rv.setVisibility(0);
        this.layoutTitle.setVisibility(0);
        if (this.radioFavorAdapter != null) {
            this.radioFavorAdapter.setPlayingIndex(i, false);
            this.radioFavorAdapter.setNewData(list);
            if (i >= 0) {
                scrollToPlayingPosition(i);
            }
        }
    }

    private void scrollToPlayingPosition(int i) {
        if (this.hasScrolledWithOffset) {
            this.rv.getLayoutManager().scrollToPosition(i);
            return;
        }
        if (i == 0 || this.radioFavorAdapter.getItemCount() - i <= 5) {
            this.rv.getLayoutManager().scrollToPositionWithOffset(i, 0);
        } else if (i == 1) {
            this.rv.getLayoutManager().scrollToPositionWithOffset(i - 1, 0);
        } else {
            this.rv.getLayoutManager().scrollToPositionWithOffset(i - 2, 0);
        }
        this.hasScrolledWithOffset = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes4.dex */
    public class RadioFavorAdapter extends BaseQuickAdapter<RadioChannelInfo, BaseViewHolder> {
        private int position;

        public RadioFavorAdapter() {
            super(R.layout.item_radio_favor_new);
            this.position = -1;
        }

        public void setPlayingIndex(int i, boolean z) {
            LogUtil.d("setPlayingIndex() position:" + i + " isNotifyChanged:" + z);
            if (z) {
                int i2 = this.position;
                this.position = i;
                notifyItemChanged(i2, false);
                notifyItemChanged(this.position, true);
                return;
            }
            this.position = i;
        }

        public int getFarqPosition() {
            return this.position;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Removed duplicated region for block: B:49:0x01b8  */
        /* JADX WARN: Removed duplicated region for block: B:52:0x01dc  */
        /* JADX WARN: Removed duplicated region for block: B:62:0x0222  */
        /* JADX WARN: Removed duplicated region for block: B:63:0x01c6  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void convert(BaseViewHolder baseViewHolder, RadioChannelInfo radioChannelInfo) {
            Context context;
            int i;
            String str;
            boolean z;
            boolean z2;
            baseViewHolder.setTextColor(R.id.tv_station_name, ContextCompat.getColor(this.mContext, this.position == baseViewHolder.getLayoutPosition() ? R.color.colorDD9D09 : R.color.colorFFFFFF)).setTextColor(R.id.tv_station_type, ContextCompat.getColor(this.mContext, this.position == baseViewHolder.getLayoutPosition() ? R.color.colorB3DD9D09 : R.color.colorB3FFFFFF)).setGone(R.id.iv_play, this.position == baseViewHolder.getLayoutPosition());
            AnimationDrawable animationDrawable = (AnimationDrawable) ((ImageView) baseViewHolder.getView(R.id.iv_play)).getBackground();
            if (this.position == baseViewHolder.getLayoutPosition()) {
                boolean isPlaying = CarRadioManager.getInstance().isPlaying();
                LogUtil.d("isPlaying:" + isPlaying);
                if (isPlaying) {
                    animationDrawable.start();
                } else {
                    animationDrawable.stop();
                }
            } else {
                animationDrawable.stop();
            }
            Locale locale = Locale.ENGLISH;
            Object[] objArr = new Object[3];
            objArr[0] = radioChannelInfo.getType() == 2 ? "AM" : "FM";
            objArr[1] = Utils.getInstance().formatFreq(radioChannelInfo.Freq, radioChannelInfo.getType());
            if (radioChannelInfo.getType() == 2) {
                context = this.mContext;
                i = R.string.radio_band_am;
            } else {
                context = this.mContext;
                i = R.string.radio_band_fm;
            }
            objArr[2] = context.getString(i);
            String format = String.format(locale, "%s %s %s", objArr);
            LogUtil.i("convert->band=" + radioChannelInfo.getType() + ";rdsEnable=" + RadioFavorActivity.this.rdsEnable + ";ptyEnable=" + RadioFavorActivity.this.ptyEnable);
            if (radioChannelInfo.getType() == 0 && RadioFavorActivity.this.rdsEnable) {
                baseViewHolder.setGone(R.id.layout_ta_tp_af, true);
                baseViewHolder.setGone(R.id.tv_station_type, RadioFavorActivity.this.ptyEnable);
                String string = RadioFavorActivity.this.getString(R.string.radio_unknown);
                if (RadioFavorActivity.this.mRdsInfoMap != null && !RadioFavorActivity.this.mRdsInfoMap.isEmpty()) {
                    RdsInfo rdsInfo = (RdsInfo) RadioFavorActivity.this.mRdsInfoMap.get(Integer.valueOf(radioChannelInfo.getFreq()));
                    if (rdsInfo != null) {
                        LogUtil.d("rdsInfo: " + rdsInfo);
                        z = rdsInfo.isTpValid();
                        z2 = rdsInfo.isAfValid();
                        str = rdsInfo.getPs();
                        int pty = rdsInfo.getPty();
                        if (pty >= 0 && pty < RadioFavorActivity.this.ptyStrs.length) {
                            string = RadioFavorActivity.this.ptyStrs[pty];
                        }
                        baseViewHolder.setGone(R.id.iv_tp, !z && RadioFavorActivity.this.mTpEnable);
                        baseViewHolder.setGone(R.id.iv_af, !z2 && RadioFavorActivity.this.afEnable);
                        if (TextUtils.isEmpty(str)) {
                            baseViewHolder.setText(R.id.tv_station_name, Utils.convertStationName(str.trim()));
                        } else {
                            baseViewHolder.setText(R.id.tv_station_name, format);
                        }
                        baseViewHolder.setText(R.id.tv_station_type, Utils.convertStationName(string));
                        if (this.position != baseViewHolder.getLayoutPosition()) {
                            if (!TextUtils.isEmpty(RadioFavorActivity.this.currentPtyStr)) {
                                baseViewHolder.setText(R.id.tv_station_type, Utils.convertStationName(RadioFavorActivity.this.currentPtyStr));
                            }
                            if (!TextUtils.isEmpty(RadioFavorActivity.this.currentPsString)) {
                                baseViewHolder.setText(R.id.tv_station_name, Utils.convertStationName(RadioFavorActivity.this.currentPsString.trim()));
                            }
                            baseViewHolder.setGone(R.id.iv_ta, RadioFavorActivity.this.taValid);
                        } else {
                            baseViewHolder.setGone(R.id.iv_ta, false);
                        }
                    } else {
                        LogUtil.d("rdsInfo is null ----");
                    }
                } else {
                    LogUtil.d("rdsInfoMap is empty ----");
                }
                str = "";
                z = false;
                z2 = false;
                baseViewHolder.setGone(R.id.iv_tp, !z && RadioFavorActivity.this.mTpEnable);
                baseViewHolder.setGone(R.id.iv_af, !z2 && RadioFavorActivity.this.afEnable);
                if (TextUtils.isEmpty(str)) {
                }
                baseViewHolder.setText(R.id.tv_station_type, Utils.convertStationName(string));
                if (this.position != baseViewHolder.getLayoutPosition()) {
                }
            } else {
                baseViewHolder.setText(R.id.tv_station_name, format);
                baseViewHolder.setGone(R.id.layout_ta_tp_af, false);
                baseViewHolder.setGone(R.id.tv_station_type, false);
            }
            baseViewHolder.addOnClickListener(new int[]{R.id.iv_station_favor_flag});
        }
    }
}
