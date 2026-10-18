package com.yftech.libradio.dabui.epg;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.media.common.util.LogUtil;
import com.yftech.car.media.radio.dab.CarDabRadioManager;
import com.yftech.libradio.R;
import com.yftech.vehicle.internal.adapter.ICarEvDevice;
import javax.microedition.khronos.opengles.GL10;

/* loaded from: /home/user/work/dex/classes4.dex */
public class EpgReminderDialog extends Dialog implements View.OnClickListener {
    private static final int MSG_HIDE_DIALOG = 23545;
    private static final int TIME_OUT = 10000;
    private final CarDabRadioManager.CarDabRadioControlCallback mCarDabRadioControlCallback;
    private int mEnsembleId;
    private long mFrequency;
    private Handler mHandler;
    private String mProgrammeName;
    private long mServiceId;
    private TextView tv_content;

    public EpgReminderDialog(@NonNull Context context) {
        super(context);
        this.mHandler = new Handler() { // from class: com.yftech.libradio.dabui.epg.EpgReminderDialog.1
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                if (message.what == EpgReminderDialog.MSG_HIDE_DIALOG) {
                    EpgReminderDialog.this.dismiss();
                }
            }
        };
        this.mCarDabRadioControlCallback = new CarDabRadioManager.CarDabRadioControlCallback() { // from class: com.yftech.libradio.dabui.epg.EpgReminderDialog.2
        };
    }

    public EpgReminderDialog(@NonNull Context context, int i) {
        super(context, i);
        this.mHandler = new Handler() { // from class: com.yftech.libradio.dabui.epg.EpgReminderDialog.1
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                if (message.what == EpgReminderDialog.MSG_HIDE_DIALOG) {
                    EpgReminderDialog.this.dismiss();
                }
            }
        };
        this.mCarDabRadioControlCallback = new CarDabRadioManager.CarDabRadioControlCallback() { // from class: com.yftech.libradio.dabui.epg.EpgReminderDialog.2
        };
    }

    protected EpgReminderDialog(@NonNull Context context, boolean z, @Nullable DialogInterface.OnCancelListener onCancelListener) {
        super(context, z, onCancelListener);
        this.mHandler = new Handler() { // from class: com.yftech.libradio.dabui.epg.EpgReminderDialog.1
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                if (message.what == EpgReminderDialog.MSG_HIDE_DIALOG) {
                    EpgReminderDialog.this.dismiss();
                }
            }
        };
        this.mCarDabRadioControlCallback = new CarDabRadioManager.CarDabRadioControlCallback() { // from class: com.yftech.libradio.dabui.epg.EpgReminderDialog.2
        };
    }

    @Override // android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.dialog_epg_reminder);
        findViewById(R.id.dialog_rootview).setTranslationY(50.0f);
        findViewById(R.id.tv_litener).setOnClickListener(this);
        findViewById(R.id.tv_cancel).setOnClickListener(this);
        this.tv_content = (TextView) findViewById(R.id.tv_content);
    }

    @Override // android.app.Dialog
    public void onStart() {
        super.onStart();
        LogUtil.d("onStart()");
        setCanceledOnTouchOutside(false);
        setCancelable(false);
        Window window = getWindow();
        if (window != null) {
            window.setType(2038);
            window.addFlags(GL10.GL_STENCIL_BUFFER_BIT);
            window.setBackgroundDrawableResource(android.R.color.transparent);
            WindowManager.LayoutParams attributes = window.getAttributes();
            attributes.windowAnimations = R.style.DialogFadeAnimation;
            attributes.width = 836;
            attributes.height = ICarEvDevice.VEH_RDY_STATE;
            attributes.gravity = 17;
            window.setAttributes(attributes);
        }
        CarDabRadioManager.getInstance().registerRadioControlCallback(this.mCarDabRadioControlCallback);
        if (this.mProgrammeName != null) {
            this.tv_content.setText(getContext().getString(R.string.epg_reminder_content1, this.mProgrammeName, String.valueOf(1)));
        }
        this.mHandler.sendEmptyMessageDelayed(MSG_HIDE_DIALOG, 10000L);
    }

    @Override // android.app.Dialog
    public void onStop() {
        super.onStop();
        LogUtil.d("onStop()");
        CarDabRadioManager.getInstance().unregisterRadioControlCallback(this.mCarDabRadioControlCallback);
        this.mHandler.removeMessages(MSG_HIDE_DIALOG);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() == R.id.tv_litener) {
            dismiss();
            if (this.mServiceId == 0 || this.mEnsembleId == 0 || this.mFrequency == 0) {
                return;
            }
            CarDabRadioManager.getInstance().setFreq(this.mFrequency, this.mEnsembleId, this.mServiceId);
            LogUtil.i("startDab");
            Intent intent = new Intent("com.yftech.intent.action.start.dabradio");
            intent.putExtra("isAutoPlay", true);
            intent.setFlags(268435456);
            getContext().startActivity(intent);
            return;
        }
        if (view.getId() == R.id.tv_cancel) {
            dismiss();
        }
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        super.dismiss();
    }

    public void setParams(String str, long j, int i, long j2) {
        this.mProgrammeName = str;
        this.mFrequency = j;
        this.mEnsembleId = i;
        this.mServiceId = j2;
    }
}
