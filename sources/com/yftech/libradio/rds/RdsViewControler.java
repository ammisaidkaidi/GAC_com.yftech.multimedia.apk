package com.yftech.libradio.rds;

import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.media.common.util.LogUtil;
import com.yftech.car.media.radio.CarRadioManager;
import com.yftech.car.media.radio.entity.DataOfRadio;
import com.yftech.car.media.radio.rds.entity.RdsInfo;
import com.yftech.libradio.R;
import com.yftech.libradio.RadioMainFragment;
import com.yftech.libradio.Utils;
import com.yftech.libradio.dialog.DabServiceTextInfoDialog;
import com.yftech.libradio.dialog.RdsSettingsDialog;
import com.yftech.libradio.rds.RdsDataManager;
import java.util.Map;

/* loaded from: /home/user/work/dex/classes4.dex */
public class RdsViewControler {
    private boolean afEnable;
    private boolean isRdsAnnouncementPlaying;
    private ImageView ivAf;
    private ImageView ivTa;
    private ImageView ivTp;
    private RdsSettingsDialog mRdsSettingsDialog;
    private View mRootView;
    private DabServiceTextInfoDialog mRtInfoDialog;
    private boolean mTpEnable;
    private TextView mTvChannel;
    private TextView mTvChannelTag;
    private boolean ptyEnable;
    private String[] ptyStrs;
    private RadioMainFragment radioMainFragment;
    private boolean rdsEnable;
    private TextView tvPs;
    private TextView tvPty;
    private Handler mHandler = new Handler(Looper.getMainLooper());
    private RdsDataManager.RdsDataManagerCallback rdsDataManagerCallback = new RdsDataManager.RdsDataManagerCallback() { // from class: com.yftech.libradio.rds.RdsViewControler.3
        @Override // com.yftech.libradio.rds.RdsDataManager.RdsDataManagerCallback
        public void onRdsInfoListChanged(Map<Integer, RdsInfo> map) {
            final DataOfRadio freq = CarRadioManager.getInstance().getFreq();
            if (freq == null || map.get(Integer.valueOf(freq.getFreq())) == null) {
                return;
            }
            RdsViewControler.this.mHandler.post(new Runnable() { // from class: com.yftech.libradio.rds.RdsViewControler.3.1
                @Override // java.lang.Runnable
                public void run() {
                    RdsViewControler.this.updateTaTpAf(freq);
                }
            });
        }
    };

    public RdsViewControler(final RadioMainFragment radioMainFragment, final View view) {
        this.radioMainFragment = radioMainFragment;
        this.mRootView = view;
        this.ptyStrs = radioMainFragment.getResources().getStringArray(R.array.dab_ptys);
        this.mRootView.findViewById(R.id.iv_rds_set).setVisibility(Utils.isRdsPresent() ? 0 : 8);
        this.mRootView.findViewById(R.id.iv_rds_set).setOnClickListener(new View.OnClickListener() { // from class: com.yftech.libradio.rds.RdsViewControler.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                if (RdsViewControler.this.mRdsSettingsDialog == null) {
                    RdsViewControler.this.mRdsSettingsDialog = new RdsSettingsDialog(view.getContext());
                }
                RdsViewControler.this.mRdsSettingsDialog.show();
            }
        });
        this.ivTa = (ImageView) this.mRootView.findViewById(R.id.iv_ta);
        this.ivTp = (ImageView) this.mRootView.findViewById(R.id.iv_tp);
        this.ivAf = (ImageView) this.mRootView.findViewById(R.id.iv_af);
        this.tvPty = (TextView) this.mRootView.findViewById(R.id.tv_rds_pty);
        this.mTvChannel = (TextView) this.mRootView.findViewById(R.id.tv_channel);
        this.mTvChannelTag = (TextView) this.mRootView.findViewById(R.id.tv_channel_tag);
        this.tvPs = (TextView) this.mRootView.findViewById(R.id.tv_ps);
        if (CarRadioManager.getInstance().getBand() == 0) {
            this.mRootView.findViewById(R.id.layout_rds).setVisibility(0);
        } else {
            this.mRootView.findViewById(R.id.layout_rds).setVisibility(8);
        }
        this.tvPs.setOnClickListener(new View.OnClickListener() { // from class: com.yftech.libradio.rds.RdsViewControler.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                String rdsRT = CarRadioManager.getInstance().getRdsRT();
                if (!TextUtils.isEmpty(rdsRT)) {
                    LogUtil.d("rtString: " + rdsRT);
                    String rdsPS = CarRadioManager.getInstance().getRdsPS();
                    if (RdsViewControler.this.tvPs.getText() != null && !TextUtils.isEmpty(RdsViewControler.this.tvPs.getText().toString())) {
                        rdsPS = RdsViewControler.this.tvPs.getText().toString();
                    }
                    if (TextUtils.isEmpty(rdsPS)) {
                        rdsPS = radioMainFragment.getString(R.string.program_info);
                    }
                    if (RdsViewControler.this.mRtInfoDialog != null) {
                        RdsViewControler.this.mRtInfoDialog.dismiss();
                    }
                    RdsViewControler.this.mRtInfoDialog = DabServiceTextInfoDialog.newInstance(rdsRT, rdsPS);
                    RdsViewControler.this.mRtInfoDialog.show(radioMainFragment.getChildFragmentManager(), DabServiceTextInfoDialog.class.getSimpleName());
                    return;
                }
                LogUtil.d("rtString is empty ---");
            }
        });
        RdsDataManager.getInstance().registerObservor(this.rdsDataManagerCallback);
        RdsDataManager.getInstance().getRdsInfoList();
        if (!Utils.isRdsPresent()) {
            this.rdsEnable = false;
            return;
        }
        this.rdsEnable = CarRadioManager.getInstance().isRdsCommonStatusEnable(0);
        this.ptyEnable = radioMainFragment.getContext().getSharedPreferences(Utils.SHARED_RADIO_DATA_NAME, 0).getBoolean(RdsSettingsDialog.SP_KEY_PTY_SHOW, false);
        this.mTpEnable = radioMainFragment.getContext().getSharedPreferences(Utils.SHARED_RADIO_DATA_NAME, 0).getBoolean(RdsSettingsDialog.SP_KEY_TP_SHOW, true);
        this.afEnable = CarRadioManager.getInstance().isRdsCommonStatusEnable(2);
        this.isRdsAnnouncementPlaying = CarRadioManager.getInstance().isRdsCommonStatusEnable(7);
    }

    public void hideRdsSettingsDialog() {
        if (this.mRdsSettingsDialog != null) {
            this.mRdsSettingsDialog.hide();
            this.mRdsSettingsDialog = null;
        }
    }

    public void hideRdsRtDialog() {
        if (this.mRtInfoDialog != null) {
            this.mRtInfoDialog.dismiss();
            this.mRtInfoDialog = null;
        }
    }

    public void changeRdsShowStatus() {
        this.mTpEnable = this.radioMainFragment.getContext().getSharedPreferences(Utils.SHARED_RADIO_DATA_NAME, 0).getBoolean(RdsSettingsDialog.SP_KEY_TP_SHOW, true);
        this.ptyEnable = this.radioMainFragment.getContext().getSharedPreferences(Utils.SHARED_RADIO_DATA_NAME, 0).getBoolean(RdsSettingsDialog.SP_KEY_PTY_SHOW, false);
        if (!this.mTpEnable) {
            this.ivTp.setVisibility(8);
        }
        if (this.isRdsAnnouncementPlaying) {
            this.tvPty.setVisibility(0);
            this.tvPty.setText(Utils.convertStationName(this.radioMainFragment.getString(R.string.traffic_announcement)));
            return;
        }
        this.tvPty.setVisibility(this.ptyEnable ? 0 : 8);
        String string = this.radioMainFragment.getResources().getString(R.string.radio_unknown);
        int rdsPty = CarRadioManager.getInstance().getRdsPty();
        LogUtil.d("pty: " + rdsPty);
        if (rdsPty >= 0 && rdsPty < this.ptyStrs.length) {
            string = this.ptyStrs[rdsPty];
        }
        this.tvPty.setText(Utils.convertStationName(string));
    }

    public void updateFreq(DataOfRadio dataOfRadio) {
        updateTaTpAf(dataOfRadio);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateTaTpAf(DataOfRadio dataOfRadio) {
        boolean z;
        boolean z2;
        if (dataOfRadio == null) {
            LogUtil.w("dataOfRadio is null ---");
            return;
        }
        if (this.radioMainFragment == null || !this.radioMainFragment.isAdded()) {
            LogUtil.e("updateTaTpAf radioMainFragment is null ---");
            return;
        }
        int i = 8;
        if (dataOfRadio.getType() == 0 && this.rdsEnable) {
            this.mRootView.findViewById(R.id.layout_rds).setVisibility(0);
            String rdsPS = CarRadioManager.getInstance().getRdsPS();
            StringBuilder sb = new StringBuilder();
            sb.append("psString: ");
            sb.append(rdsPS);
            LogUtil.d(sb.toString() == null ? "null" : rdsPS);
            if (!TextUtils.isEmpty(rdsPS)) {
                this.tvPs.setText(Utils.convertStationName(rdsPS.trim()));
                this.tvPs.setVisibility(0);
                this.mTvChannel.setVisibility(4);
                this.mTvChannelTag.setVisibility(4);
            } else {
                this.tvPs.setText("");
                this.tvPs.setVisibility(8);
                this.mTvChannel.setVisibility(0);
                this.mTvChannelTag.setVisibility(0);
            }
            this.isRdsAnnouncementPlaying = CarRadioManager.getInstance().isRdsCommonStatusEnable(7);
            if (this.isRdsAnnouncementPlaying) {
                this.tvPty.setVisibility(0);
                this.tvPty.setText(Utils.convertStationName(this.radioMainFragment.getString(R.string.traffic_announcement)));
            } else {
                this.tvPty.setVisibility(this.ptyEnable ? 0 : 8);
                if (this.radioMainFragment.isAdded()) {
                    String string = this.radioMainFragment.getResources().getString(R.string.radio_unknown);
                    int rdsPty = CarRadioManager.getInstance().getRdsPty();
                    LogUtil.d("pty: " + rdsPty);
                    if (rdsPty >= 0 && rdsPty < this.ptyStrs.length) {
                        string = this.ptyStrs[rdsPty];
                    }
                    this.tvPty.setText(Utils.convertStationName(string));
                }
            }
            RdsInfo rdsInfo = null;
            Map<Integer, RdsInfo> rdsInfoList = RdsDataManager.getInstance().getRdsInfoList();
            if (rdsInfoList != null && !rdsInfoList.isEmpty()) {
                rdsInfo = rdsInfoList.get(Integer.valueOf(dataOfRadio.getFreq()));
            } else {
                LogUtil.d("rdsInfoMap is empty ----");
            }
            if (rdsInfo != null) {
                LogUtil.d("rdsInfo: " + rdsInfo);
                z = rdsInfo.isTpValid();
                z2 = rdsInfo.isAfValid();
            } else {
                LogUtil.d("rdsInfo is null ----");
                z = false;
                z2 = false;
            }
            this.ivTa.setVisibility(this.isRdsAnnouncementPlaying ? 0 : 8);
            this.ivTp.setVisibility((this.mTpEnable && z) ? 0 : 8);
            ImageView imageView = this.ivAf;
            if (this.afEnable && z2) {
                i = 0;
            }
            imageView.setVisibility(i);
            return;
        }
        this.mRootView.findViewById(R.id.layout_rds).setVisibility(8);
        this.tvPty.setVisibility(8);
        this.ivTa.setVisibility(8);
        this.ivTp.setVisibility(8);
        this.ivAf.setVisibility(8);
        this.tvPs.setVisibility(8);
        this.mTvChannel.setVisibility(0);
        this.mTvChannelTag.setVisibility(0);
    }

    public void onRdsCommonStatusChange(int i, boolean z) {
        LogUtil.d("type: " + i + " , value: " + z);
        if (i == 0) {
            this.rdsEnable = z;
        } else if (i == 2) {
            this.afEnable = z;
        } else if (i == 7) {
            this.isRdsAnnouncementPlaying = z;
            if (this.isRdsAnnouncementPlaying) {
                LogUtil.d("rds announcement start play ---");
                this.tvPty.setText(Utils.convertStationName(this.radioMainFragment.getString(R.string.traffic_announcement)));
            }
        }
        updateTaTpAf(CarRadioManager.getInstance().getFreq());
    }

    public void onRdsCommonStringChange(int i, String str) {
        if (TextUtils.isEmpty(str)) {
            LogUtil.d("value is empty ----");
            return;
        }
        int band = CarRadioManager.getInstance().getBand();
        LogUtil.d("band: " + band);
        if (i == 8 && band == 0) {
            if (!TextUtils.isEmpty(str)) {
                this.tvPs.setText(Utils.convertStationName(str.trim()));
                this.tvPs.setVisibility(0);
                this.mTvChannel.setVisibility(4);
                this.mTvChannelTag.setVisibility(4);
                return;
            }
            this.tvPs.setText("");
            this.tvPs.setVisibility(8);
            this.mTvChannel.setVisibility(0);
            this.mTvChannelTag.setVisibility(0);
        }
    }

    public void onRdsPtyStatusChange(int i) {
        if (this.isRdsAnnouncementPlaying) {
            LogUtil.d("rds announcement is playing ");
            return;
        }
        this.tvPty.setVisibility((CarRadioManager.getInstance().getBand() == 0 && this.ptyEnable) ? 0 : 8);
        String string = this.radioMainFragment.getString(R.string.radio_unknown);
        if (this.radioMainFragment.isAdded()) {
            String[] stringArray = this.radioMainFragment.getResources().getStringArray(R.array.dab_ptys);
            if (i >= 0 && i < stringArray.length) {
                string = stringArray[i];
            }
        }
        this.tvPty.setText(Utils.convertStationName(string));
    }
}
