package com.yftech.libradio.rds;

import android.os.AsyncTask;
import com.media.common.util.LogUtil;
import com.yftech.car.media.radio.CarRadioManager;
import com.yftech.car.media.radio.entity.DataOfRadio;
import com.yftech.car.media.radio.rds.entity.RdsInfo;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: /home/user/work/dex/classes4.dex */
public class RdsDataManager {
    private static final RdsDataManager instance = new RdsDataManager();
    private static final HashSet<RdsDataManagerCallback> observors = new HashSet<>();
    private boolean isInitialized;
    private int mScanStatus;
    private Map<Integer, RdsInfo> mRdsInfoMap = new HashMap();
    private CarRadioManager.CarRadioControlCallback callback = new CarRadioManager.CarRadioControlCallback() { // from class: com.yftech.libradio.rds.RdsDataManager.1
        public void onSeekStatusChange(int i, int i2, int i3) {
            super.onSeekStatusChange(i, i2, i3);
            LogUtil.d("onSeekStatusChange() scanType:" + i + " status:" + i2 + " operation:" + i3);
            RdsDataManager.this.mScanStatus = i2;
        }

        public void onRdsScanStatusChange(RdsInfo rdsInfo) {
            super.onRdsScanStatusChange(rdsInfo);
            LogUtil.d("info: " + rdsInfo);
            RdsDataManager.this.mRdsInfoMap.put(Integer.valueOf(rdsInfo.getFreq()), rdsInfo);
            if (RdsDataManager.this.mScanStatus == 0) {
                Iterator it = RdsDataManager.observors.iterator();
                while (it.hasNext()) {
                    RdsDataManagerCallback rdsDataManagerCallback = (RdsDataManagerCallback) it.next();
                    if (rdsDataManagerCallback != null) {
                        rdsDataManagerCallback.onRdsInfoListChanged(RdsDataManager.this.mRdsInfoMap);
                    }
                }
            }
        }

        public void onRdsCommonStringChange(int i, String str) {
            super.onRdsCommonStringChange(i, str);
            LogUtil.d("type: " + i + " ,value: " + str);
            if (i == 8) {
                if (RdsDataManager.this.mRdsInfoMap == null || RdsDataManager.this.mRdsInfoMap.isEmpty()) {
                    return;
                }
                DataOfRadio freq = CarRadioManager.getInstance().getFreq();
                for (RdsInfo rdsInfo : RdsDataManager.this.mRdsInfoMap.values()) {
                    if (rdsInfo.getFreq() == freq.getFreq()) {
                        rdsInfo.setPs(str);
                    }
                }
                return;
            }
            if (i != 9 || RdsDataManager.this.mRdsInfoMap == null || RdsDataManager.this.mRdsInfoMap.isEmpty()) {
                return;
            }
            DataOfRadio freq2 = CarRadioManager.getInstance().getFreq();
            for (RdsInfo rdsInfo2 : RdsDataManager.this.mRdsInfoMap.values()) {
                if (rdsInfo2.getFreq() == freq2.getFreq()) {
                    rdsInfo2.setRt(str);
                }
            }
        }

        public void onRdsPtyStatusChange(int i) {
            super.onRdsPtyStatusChange(i);
            LogUtil.d("type: " + i);
            if (i < 0 || RdsDataManager.this.mRdsInfoMap == null || RdsDataManager.this.mRdsInfoMap.isEmpty()) {
                return;
            }
            DataOfRadio freq = CarRadioManager.getInstance().getFreq();
            for (RdsInfo rdsInfo : RdsDataManager.this.mRdsInfoMap.values()) {
                if (rdsInfo.getFreq() == freq.getFreq()) {
                    rdsInfo.setPty(i);
                }
            }
        }

        public void onRdsPiFreqChange(int i, int i2) {
            super.onRdsPiFreqChange(i, i2);
        }
    };

    /* loaded from: /home/user/work/dex/classes4.dex */
    public interface RdsDataManagerCallback {
        void onRdsInfoListChanged(Map<Integer, RdsInfo> map);
    }

    private RdsDataManager() {
        init();
    }

    public static RdsDataManager getInstance() {
        return instance;
    }

    public void init() {
        LogUtil.d("initialize  RdsDataManager ---");
        CarRadioManager.getInstance();
        CarRadioManager.registerRadioControlCallback(this.callback);
        this.isInitialized = true;
    }

    public void unInit() {
        CarRadioManager.getInstance();
        CarRadioManager.unregisterRadioControlCallback(this.callback);
        this.mRdsInfoMap.clear();
        this.isInitialized = false;
        LogUtil.d("uninitialize  RdsDataManager ---");
    }

    public boolean isInitialized() {
        LogUtil.d("isInitialized: " + this.isInitialized);
        return this.isInitialized;
    }

    public void registerObservor(RdsDataManagerCallback rdsDataManagerCallback) {
        observors.add(rdsDataManagerCallback);
    }

    public void unregisterObservor(RdsDataManagerCallback rdsDataManagerCallback) {
        observors.remove(rdsDataManagerCallback);
    }

    public boolean isRegisterObservor(RdsDataManagerCallback rdsDataManagerCallback) {
        return observors.contains(rdsDataManagerCallback);
    }

    public Map<Integer, RdsInfo> getRdsInfoList() {
        if (this.mRdsInfoMap.isEmpty()) {
            new UpdateRdsTast().execute(new Object[0]);
        }
        return this.mRdsInfoMap;
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    private class UpdateRdsTast extends AsyncTask {
        private UpdateRdsTast() {
        }

        @Override // android.os.AsyncTask
        protected Object doInBackground(Object[] objArr) {
            List<RdsInfo> rdsScanInfoList = CarRadioManager.getInstance().getRdsScanInfoList();
            if (rdsScanInfoList != null && !rdsScanInfoList.isEmpty()) {
                LogUtil.d("rdsinfoList size: " + rdsScanInfoList.size());
                RdsDataManager.this.mRdsInfoMap.clear();
                for (RdsInfo rdsInfo : rdsScanInfoList) {
                    LogUtil.d("rdsInfo: " + rdsScanInfoList.size());
                    RdsDataManager.this.mRdsInfoMap.put(Integer.valueOf(rdsInfo.getFreq()), rdsInfo);
                }
                Iterator it = RdsDataManager.observors.iterator();
                while (it.hasNext()) {
                    RdsDataManagerCallback rdsDataManagerCallback = (RdsDataManagerCallback) it.next();
                    if (rdsDataManagerCallback != null) {
                        rdsDataManagerCallback.onRdsInfoListChanged(RdsDataManager.this.mRdsInfoMap);
                    }
                }
                return null;
            }
            LogUtil.d("get RdsScanInfoList data empty ----");
            return null;
        }
    }
}
