package com.yftech.libmusic;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.media.common.event.USBStateEvent;
import com.yftech.libmusic.event.BluetoothStateEvent;
import com.yftech.libmusic.event.CarLifeStatusEvent;
import com.yftech.libmusic.event.CarPlayStateEvent;
import org.greenrobot.eventbus.EventBus;

/* loaded from: /home/user/work/dex/classes4.dex */
public class MusicSourceInformationReceiver extends BroadcastReceiver {
    public static final String ACTION_BLUETOOTH_STATUS_CHANGE = "ACTION_BLUETOOTH_STATUS_CHANGE";
    public static final String ACTION_CARLIFE_STATUS_CHANGE = "ACTION_CARLIFE_STATUS_CHANGE";
    public static final String ACTION_CARPLAY_STATUS_CHANGE = "ACTION_CARPLAY_STATUS_CHANGE";
    public static final String ACTION_USB_STATUS_CHANGE = "ACTION_USB_STATUS_CHANGE";
    public static final String TAG = "com.yftech.libmusic.MusicSourceInformationReceiver";

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        char c;
        String action = intent.getAction();
        if (action != null) {
            int hashCode = action.hashCode();
            if (hashCode == -1629330939) {
                if (action.equals(ACTION_CARLIFE_STATUS_CHANGE)) {
                    c = 2;
                }
                c = 65535;
            } else if (hashCode == -235756743) {
                if (action.equals(ACTION_USB_STATUS_CHANGE)) {
                    c = 0;
                }
                c = 65535;
            } else if (hashCode != 1081244733) {
                if (hashCode == 1500714403 && action.equals(ACTION_BLUETOOTH_STATUS_CHANGE)) {
                    c = 1;
                }
                c = 65535;
            } else {
                if (action.equals(ACTION_CARPLAY_STATUS_CHANGE)) {
                    c = 3;
                }
                c = 65535;
            }
            switch (c) {
                case 0:
                    EventBus.getDefault().post(new USBStateEvent(intent.getIntExtra("usbIndex", -1), intent.getBooleanExtra("isUsbExists", false)));
                    return;
                case 1:
                    EventBus.getDefault().post(new BluetoothStateEvent(intent.getIntExtra("state", 0), intent.getStringExtra("deviceName")));
                    return;
                case 2:
                    EventBus.getDefault().post(new CarLifeStatusEvent(intent.getBooleanExtra("mIsCarLifeConnect", false)));
                    return;
                case 3:
                    EventBus.getDefault().post(new CarPlayStateEvent(intent.getIntExtra("carplay_state", 0)));
                    return;
                default:
                    return;
            }
        }
    }
}
