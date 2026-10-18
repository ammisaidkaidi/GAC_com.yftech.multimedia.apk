package com.yftech.libradio;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import com.media.common.util.LogUtil;
import com.yftech.car.audio.CarAudioManager;
import com.yftech.car.media.radio.CarRadioManager;
import com.yftech.car.media.radio.entity.DataOfRadio;
import java.util.List;

/* loaded from: /home/user/work/dex/classes4.dex */
public class RadioManager {
    private CarAudioManager.CarAudioCallback carAudioCallback;
    private List<DataOfRadio> dataAm;
    private List<DataOfRadio> dataFm;
    private boolean initialized;
    private CarRadioManager.CarRadioControlCallback radioControlCallback;

    /* loaded from: /home/user/work/dex/classes4.dex */
    public static class Holder {
        public static final RadioManager INSTANCE = new RadioManager();
    }

    public static RadioManager getInstance() {
        return Holder.INSTANCE;
    }

    private RadioManager() {
        this.initialized = false;
    }

    public synchronized void init(Context context) {
        if (!this.initialized) {
            LogUtil.d("init");
            this.initialized = true;
            this.radioControlCallback = new CarRadioManager.CarRadioControlCallback() { // from class: com.yftech.libradio.RadioManager.1
                public void onAudioFocusChange(int i) {
                    super.onAudioFocusChange(i);
                    LogUtil.d("onAudioFocusChange focusChange = " + i);
                }
            };
            CarRadioManager.registerRadioControlCallback(this.radioControlCallback);
            this.carAudioCallback = new CarAudioManager.CarAudioCallback() { // from class: com.yftech.libradio.RadioManager.2
                public void onChangedMediaSource(int i, String str, String str2) {
                    super.onChangedMediaSource(i, str, str2);
                    LogUtil.d("onChangedMediaSource clientId = " + str2);
                }
            };
            CarAudioManager.getInstance().registerCarAudioCallback(this.carAudioCallback, new Handler(Looper.getMainLooper()));
            RadioAnnounceManager.ins.init(context.getApplicationContext());
        }
    }

    public synchronized void unInit() {
        if (this.initialized) {
            LogUtil.d("unInit");
            this.initialized = false;
            CarRadioManager.unregisterRadioControlCallback(this.radioControlCallback);
            CarAudioManager.getInstance().unregisterCarAudioCallback(this.carAudioCallback);
            RadioAnnounceManager.ins.uninit();
        }
    }

    public void setRadioData(List<DataOfRadio> list, int i) {
        if (i == 0) {
            this.dataFm = list;
        } else {
            this.dataAm = list;
        }
    }

    public List<DataOfRadio> getRadioData(int i) {
        if (i == 0) {
            return this.dataFm;
        }
        return this.dataAm;
    }
}
