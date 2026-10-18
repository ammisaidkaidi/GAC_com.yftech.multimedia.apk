package com.yftech.libradio;

import android.os.AsyncTask;
import com.media.common.util.LogUtil;
import com.yftech.car.media.radio.dab.CarDabRadioManager;
import com.yftech.car.media.radio.dab.entity.DabEnsemble;
import com.yftech.car.media.radio.dab.entity.DabPlayInfo;
import com.yftech.libradio.bean.DabChannelInfo;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

/* loaded from: /home/user/work/dex/classes4.dex */
public class DabDataManager {
    private static final DabDataManager instance = new DabDataManager();
    private static final HashSet<DabDataManagerCallback> observors = new HashSet<>();
    private boolean isInitialized;
    private List<DabChannelInfo> mDabChannelInfoList = new ArrayList();
    private List<DabChannelInfo> mDataDabChannelInfoList = new ArrayList();
    private CarDabRadioManager.CarDabRadioControlCallback callback = new CarDabRadioManager.CarDabRadioControlCallback() { // from class: com.yftech.libradio.DabDataManager.2
        public void onEnsembleListChange(int i) {
            super.onEnsembleListChange(i);
            LogUtil.d("onEnsembleListChange type: " + i);
            DabDataManager.this.updateData();
        }

        public void onDabImageInfo() {
            byte[] dabImageInfo;
            super.onDabImageInfo();
            LogUtil.d("onDabImageInfo-----");
            for (DabChannelInfo dabChannelInfo : DabDataManager.this.mDabChannelInfoList) {
                DabPlayInfo playInfo = CarDabRadioManager.getInstance().getPlayInfo();
                if (playInfo != null && dabChannelInfo.getFrequency() == playInfo.getFrequency() && dabChannelInfo.getServiceId() == playInfo.getServiceId() && dabChannelInfo.getEnsembleId() == playInfo.getEnsembleId() && (dabImageInfo = Utils.getDabImageInfo()) != null) {
                    dabChannelInfo.setImageData(dabImageInfo);
                    Iterator it = DabDataManager.observors.iterator();
                    while (it.hasNext()) {
                        DabDataManagerCallback dabDataManagerCallback = (DabDataManagerCallback) it.next();
                        if (dabDataManagerCallback != null) {
                            dabDataManagerCallback.onSlideShowImageChanged(dabImageInfo);
                        }
                    }
                    return;
                }
            }
        }

        public void IsEpgServiceId(int i, long j, boolean z) {
            super.IsEpgServiceId(i, j, z);
            LogUtil.d("frequency: " + i + " , serviceId: " + j + " , isEpg: " + z);
            for (DabChannelInfo dabChannelInfo : DabDataManager.this.mDataDabChannelInfoList) {
                if (dabChannelInfo.getFrequency() == i && dabChannelInfo.getServiceId() == j) {
                    dabChannelInfo.setEpg(z);
                }
            }
        }
    };

    /* loaded from: /home/user/work/dex/classes4.dex */
    public interface DabDataManagerCallback {
        void onDataListChanged(List<DabChannelInfo> list);

        void onSlideShowImageChanged(byte[] bArr);
    }

    private DabDataManager() {
        init();
    }

    public static DabDataManager getInstance() {
        return instance;
    }

    public void init() {
        LogUtil.d("initialize  DabDataManager ---");
        CarDabRadioManager.getInstance().registerRadioControlCallback(this.callback);
        this.isInitialized = true;
    }

    public void unInit() {
        CarDabRadioManager.getInstance().unregisterRadioControlCallback(this.callback);
        this.mDabChannelInfoList.clear();
        this.isInitialized = false;
        LogUtil.d("uninitialize  DabDataManager ---");
    }

    public boolean isInitialized() {
        LogUtil.d("isInitialized: " + this.isInitialized);
        return this.isInitialized;
    }

    public void registerObservor(DabDataManagerCallback dabDataManagerCallback) {
        observors.add(dabDataManagerCallback);
    }

    public void unregisterObservor(DabDataManagerCallback dabDataManagerCallback) {
        observors.remove(dabDataManagerCallback);
    }

    public boolean isRegisterObservor(DabDataManagerCallback dabDataManagerCallback) {
        return observors.contains(dabDataManagerCallback);
    }

    public List<DabChannelInfo> getDabChannelInfoList() {
        if (this.mDabChannelInfoList.isEmpty()) {
            updateData();
        }
        return this.mDabChannelInfoList;
    }

    public List<DabChannelInfo> getDataDabChannelInfoList() {
        return this.mDataDabChannelInfoList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Type inference failed for: r0v0, types: [com.yftech.libradio.DabDataManager$1] */
    public void updateData() {
        new AsyncTask<Object, Void, Object>() { // from class: com.yftech.libradio.DabDataManager.1
            @Override // android.os.AsyncTask
            protected final Object doInBackground(Object[] objArr) {
                DabEnsemble[] dabEnsemble = CarDabRadioManager.getInstance().getDabEnsemble();
                if (dabEnsemble == null) {
                    LogUtil.d("refreshData,dabEnsembles is null ----");
                } else {
                    LogUtil.d("refreshData,dabEnsembles length:  " + dabEnsemble.length);
                }
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = new ArrayList();
                Utils.convertDabInfos(dabEnsemble, arrayList, arrayList2);
                if (!arrayList.isEmpty()) {
                    DabDataManager.this.mDabChannelInfoList.clear();
                    DabDataManager.this.mDabChannelInfoList.addAll(arrayList);
                    DabDataManager.this.mDataDabChannelInfoList.clear();
                    DabDataManager.this.mDataDabChannelInfoList.addAll(arrayList2);
                    Iterator it = DabDataManager.observors.iterator();
                    while (it.hasNext()) {
                        DabDataManagerCallback dabDataManagerCallback = (DabDataManagerCallback) it.next();
                        if (dabDataManagerCallback != null) {
                            dabDataManagerCallback.onDataListChanged(DabDataManager.this.mDabChannelInfoList);
                        }
                    }
                    Iterator it2 = DabDataManager.this.mDataDabChannelInfoList.iterator();
                    while (it2.hasNext()) {
                        DabDataManager.this.isEpgService((DabChannelInfo) it2.next());
                    }
                    return null;
                }
                LogUtil.d("refreshData,ChannelInfoList is empty ----");
                return null;
            }
        }.execute(new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void isEpgService(DabChannelInfo dabChannelInfo) {
        if (dabChannelInfo == null) {
            return;
        }
        LogUtil.d("frequency: " + dabChannelInfo.getFrequency() + " , serviceid: " + dabChannelInfo.getServiceId());
        CarDabRadioManager.getInstance().isEpgServiceId((int) dabChannelInfo.getFrequency(), dabChannelInfo.getServiceId());
    }
}
