package com.yftech.libradio.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.media.common.util.BaseApplication;
import com.media.common.util.LogUtil;
import com.yftech.car.media.radio.dab.CarDabRadioManager;
import com.yftech.car.media.radio.dab.entity.DabEnsemble;
import com.yftech.car.media.radio.dab.entity.DabProperties;
import com.yftech.libradio.DabAnnounceManager;
import com.yftech.libradio.Utils;
import com.yftech.libradio.dabui.epg.EpgReminderDialog;
import com.yftech.libradio.dialog.DabAnnounceDialog;
import com.yftech.libradio.dialog.RdsAnnounceDialog;

/* loaded from: /home/user/work/dex/classes4.dex */
public class AnnounceReceiver extends BroadcastReceiver {
    public static final String ACTION_DAB_ANNOUNCE = "com.yftech.intent.action.dab.announce.play";
    public static final String ACTION_EPG_EVENT = "com.yftech.intent.action.dab.epg.play.event";
    public static final String ACTION_RDS_ANNOUNCE = "com.yftech.intent.action.rds.trafic.announce.play";
    private DabAnnounceDialog dabAnnounceDialog;
    private EpgReminderDialog epgReminderDialog;
    private RdsAnnounceDialog rdsAnnounceDialog;

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String action = intent.getAction();
        StringBuilder sb = new StringBuilder();
        sb.append("action: ");
        sb.append(action == null ? "" : action);
        LogUtil.d(sb.toString());
        if ("com.yftech.intent.action.dab.epg.play.event".equals(action)) {
            if (!Utils.isRadioDABPresent()) {
                return;
            } else {
                processEpgEvent(intent.getStringExtra("epg_programme_name"), intent.getLongExtra("epg_service_id", 0L), intent.getIntExtra("epg_ensemble_id", 0));
            }
        }
        if (ACTION_DAB_ANNOUNCE.equals(action) && Utils.isRadioDABPresent()) {
            boolean booleanExtra = intent.getBooleanExtra("isPlaying", false);
            int intExtra = intent.getIntExtra("annotype", 0);
            LogUtil.d("play announcement，isPlaying: " + booleanExtra);
            LogUtil.d("play announcement，annotype: " + intExtra);
            DabAnnounceManager.getInstance().setAnnouncePlaying(booleanExtra);
            DabAnnounceManager.getInstance().setAnnotype(intExtra);
        }
    }

    private void processEpgEvent(String str, long j, int i) {
        DabProperties[] list;
        DabEnsemble[] dabEnsemble = CarDabRadioManager.getInstance().getDabEnsemble();
        if (dabEnsemble == null || dabEnsemble.length == 0) {
            LogUtil.w("dabEnsembles has none data");
            return;
        }
        LogUtil.d("serviceId: " + j + " ,ensembleId: " + i);
        int length = dabEnsemble.length;
        for (int i2 = 0; i2 < length; i2++) {
            DabEnsemble dabEnsemble2 = dabEnsemble[i2];
            if (dabEnsemble2 != null && dabEnsemble2.getEnsembleId() == i && (list = dabEnsemble2.getList()) != null && list.length != 0) {
                for (DabProperties dabProperties : list) {
                    if (dabProperties != null || dabProperties.getServiceId() == j) {
                        if (this.epgReminderDialog != null && this.epgReminderDialog.isShowing()) {
                            return;
                        }
                        if (this.epgReminderDialog == null) {
                            this.epgReminderDialog = new EpgReminderDialog(BaseApplication.getInstance());
                        }
                        this.epgReminderDialog.setParams(str, dabEnsemble2.getFrequency(), dabEnsemble2.getEnsembleId(), dabProperties.getServiceId());
                        this.epgReminderDialog.show();
                    }
                }
            }
        }
    }
}
