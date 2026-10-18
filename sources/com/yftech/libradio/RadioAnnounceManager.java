package com.yftech.libradio;

import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import com.media.common.util.LogUtil;
import com.yftech.car.media.radio.CarRadioManager;
import com.yftech.car.media.radio.dab.CarDabRadioManager;
import com.yftech.car.media.radio.dab.entity.epg.Location;
import com.yftech.car.media.radio.dab.entity.epg.Programme;
import java.util.List;

/* loaded from: /home/user/work/dex/classes4.dex */
public class RadioAnnounceManager {
    private static final String DAB_ANNOUNCE = "com.yftech.intent.action.dab.announce.play";
    public static final String EPG_PROGRAMME_EVENT = "com.yftech.intent.action.dab.epg.play.event";
    public static final String RDS_ANNOUNCE = "com.yftech.intent.action.rds.trafic.announce.play";
    public static final RadioAnnounceManager ins = new RadioAnnounceManager();
    private Context mContext;
    private String mEpgProgrammeId;
    private Handler mHandler = new Handler();
    private CarDabRadioManager.CarDabRadioControlCallback dabCallback = new CarDabRadioManager.CarDabRadioControlCallback() { // from class: com.yftech.libradio.RadioAnnounceManager.1
        public void onUpdateEnableAnnounce(boolean z, int i) {
            super.onUpdateEnableAnnounce(z, i);
            LogUtil.i("onUpdateEnableAnnounce isNoOff:" + z + " ,annotype: " + i);
            Intent intent = new Intent("com.yftech.intent.action.dab.announce.play");
            intent.setClassName(com.yftech.multimedia.BuildConfig.APPLICATION_ID, "com.yftech.libradio.receiver.AnnounceReceiver");
            intent.putExtra("isPlaying", z);
            intent.putExtra("annotype", i);
            RadioAnnounceManager.this.mContext.sendBroadcast(intent);
        }

        public void onLocationTimeSchedule(Programme programme) {
            super.onLocationTimeSchedule(programme);
            if (programme == null) {
                LogUtil.w("programme is null");
                return;
            }
            LogUtil.i(" programmeId: " + programme.id + " ,programmeName: " + programme.name);
            if (RadioAnnounceManager.this.mEpgProgrammeId == null || !RadioAnnounceManager.this.mEpgProgrammeId.equals(programme.id)) {
                RadioAnnounceManager.this.mEpgProgrammeId = programme.id;
                RadioAnnounceManager.this.mHandler.postDelayed(new Runnable() { // from class: com.yftech.libradio.RadioAnnounceManager.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        RadioAnnounceManager.this.mEpgProgrammeId = null;
                    }
                }, 90000L);
                List<Location> list = programme.mLocations;
                if (list == null || list.isEmpty()) {
                    LogUtil.w("locations is request");
                    return;
                }
                int i = 0;
                long j = 0;
                for (Location location : list) {
                    if (location.getServiceId() > 0) {
                        j = location.getServiceId();
                    }
                    if (location.getEnsembleId() > 0) {
                        i = location.getEnsembleId();
                    }
                }
                if (j == 0 || i == 0) {
                    return;
                }
                Intent intent = new Intent("com.yftech.intent.action.dab.epg.play.event");
                intent.setClassName(com.yftech.multimedia.BuildConfig.APPLICATION_ID, "com.yftech.libradio.receiver.AnnounceReceiver");
                intent.putExtra("epg_programme_name", programme.name);
                intent.putExtra("epg_service_id", j);
                intent.putExtra("epg_ensemble_id", i);
                RadioAnnounceManager.this.mContext.sendBroadcast(intent);
            }
        }
    };
    private CarRadioManager.CarRadioControlCallback rdsCallback = new CarRadioManager.CarRadioControlCallback() { // from class: com.yftech.libradio.RadioAnnounceManager.2
        public void onRdsCommonStatusChange(int i, boolean z) {
            super.onRdsCommonStatusChange(i, z);
            if (i == 7 && z) {
                Intent intent = new Intent("com.yftech.intent.action.rds.trafic.announce.play");
                intent.setClassName(com.yftech.multimedia.BuildConfig.APPLICATION_ID, "com.yftech.libradio.receiver.AnnounceReceiver");
                intent.putExtra("isPlaying", true);
                RadioAnnounceManager.this.mContext.sendBroadcast(intent);
            }
        }
    };

    private RadioAnnounceManager() {
    }

    public void init(Context context) {
        this.mContext = context;
        LogUtil.i("init");
        CarDabRadioManager.getInstance().registerRadioControlCallback(this.dabCallback);
        CarRadioManager.registerRadioControlCallback(this.rdsCallback);
    }

    public void uninit() {
        LogUtil.i("uninit");
        CarDabRadioManager.getInstance().unregisterRadioControlCallback(this.dabCallback);
        CarRadioManager.unregisterRadioControlCallback(this.rdsCallback);
    }
}
