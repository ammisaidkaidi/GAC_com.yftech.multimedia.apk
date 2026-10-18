package com.yftech.libradio.dialog;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.text.method.ScrollingMovementMethod;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.media.common.util.LogUtil;
import com.yftech.car.media.radio.dab.CarDabRadioManager;
import com.yftech.libradio.R;
import javax.microedition.khronos.opengles.GL10;

/* loaded from: /home/user/work/dex/classes4.dex */
public class DabAnnounceDialog extends Dialog {
    private CarDabRadioManager.CarDabRadioControlCallback dabRadioControlCallback;
    private Context mContext;
    private View rootView;
    private TextView tvBack;
    private TextView tvContent;
    private TextView tvTitle;

    public DabAnnounceDialog(@NonNull Context context) {
        super(context);
        this.dabRadioControlCallback = new CarDabRadioManager.CarDabRadioControlCallback() { // from class: com.yftech.libradio.dialog.DabAnnounceDialog.2
            public void onUpdateEnableAnnounce(boolean z, int i) {
                LogUtil.d("isNoOff: " + z + " , annotype: " + i);
                if (z) {
                    return;
                }
                DabAnnounceDialog.this.dismiss();
            }
        };
        this.mContext = context;
    }

    public DabAnnounceDialog(@NonNull Context context, int i) {
        super(context, i);
        this.dabRadioControlCallback = new CarDabRadioManager.CarDabRadioControlCallback() { // from class: com.yftech.libradio.dialog.DabAnnounceDialog.2
            public void onUpdateEnableAnnounce(boolean z, int i2) {
                LogUtil.d("isNoOff: " + z + " , annotype: " + i2);
                if (z) {
                    return;
                }
                DabAnnounceDialog.this.dismiss();
            }
        };
        this.mContext = context;
    }

    protected DabAnnounceDialog(@NonNull Context context, boolean z, @Nullable DialogInterface.OnCancelListener onCancelListener) {
        super(context, z, onCancelListener);
        this.dabRadioControlCallback = new CarDabRadioManager.CarDabRadioControlCallback() { // from class: com.yftech.libradio.dialog.DabAnnounceDialog.2
            public void onUpdateEnableAnnounce(boolean z2, int i2) {
                LogUtil.d("isNoOff: " + z2 + " , annotype: " + i2);
                if (z2) {
                    return;
                }
                DabAnnounceDialog.this.dismiss();
            }
        };
        this.mContext = context;
    }

    @Override // android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.dialog_dab_service_txt_info);
        this.tvTitle = (TextView) findViewById(R.id.tv_title);
        this.tvContent = (TextView) findViewById(R.id.tv_content);
        this.tvBack = (TextView) findViewById(R.id.tv_control);
        this.rootView = findViewById(R.id.dialog_rootview);
        this.tvBack.setOnClickListener(new View.OnClickListener() { // from class: com.yftech.libradio.dialog.DabAnnounceDialog.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                CarDabRadioManager.getInstance().stopAnnobyUserCmd();
                DabAnnounceDialog.this.dismiss();
            }
        });
        this.tvContent.setMovementMethod(ScrollingMovementMethod.getInstance());
        this.tvTitle.setText(this.mContext.getString(R.string.dab_announcement));
        this.rootView.setTranslationY(-21.0f);
    }

    public void setData(int i) {
        String str;
        if (i == 4) {
            str = this.mContext.getString(R.string.announcement_play_front) + this.mContext.getString(R.string.dab_announcement3);
        } else if (i == 8) {
            str = this.mContext.getString(R.string.announcement_play_front) + this.mContext.getString(R.string.dab_announcement4);
        } else if (i == 16) {
            str = this.mContext.getString(R.string.announcement_play_front) + this.mContext.getString(R.string.dab_announcement5);
        } else if (i == 32) {
            str = this.mContext.getString(R.string.announcement_play_front) + this.mContext.getString(R.string.dab_announcement6);
        } else if (i == 64) {
            str = this.mContext.getString(R.string.announcement_play_front) + this.mContext.getString(R.string.dab_announcement7);
        } else if (i == 128) {
            str = this.mContext.getString(R.string.announcement_play_front) + this.mContext.getString(R.string.dab_announcement8);
        } else if (i == 256) {
            str = this.mContext.getString(R.string.announcement_play_front) + this.mContext.getString(R.string.dab_announcement9);
        } else if (i == 512) {
            str = this.mContext.getString(R.string.announcement_play_front) + this.mContext.getString(R.string.dab_announcement10);
        } else if (i != 1024) {
            switch (i) {
                case 1:
                    str = this.mContext.getString(R.string.announcement_play_front) + this.mContext.getString(R.string.dab_announcement1);
                    break;
                case 2:
                    str = this.mContext.getString(R.string.announcement_play_front) + this.mContext.getString(R.string.dab_announcement2);
                    break;
                default:
                    str = null;
                    break;
            }
        } else {
            str = this.mContext.getString(R.string.announcement_play_front) + this.mContext.getString(R.string.dab_announcement11);
        }
        if (str != null) {
            this.tvContent.setText(str);
        }
    }

    @Override // android.app.Dialog
    public void onStart() {
        super.onStart();
        LogUtil.d("onStart()");
        CarDabRadioManager.getInstance().registerRadioControlCallback(this.dabRadioControlCallback);
        setCanceledOnTouchOutside(false);
        setCancelable(false);
        Window window = getWindow();
        if (window != null) {
            window.setType(2038);
            window.addFlags(GL10.GL_STENCIL_BUFFER_BIT);
            window.setBackgroundDrawableResource(android.R.color.transparent);
            WindowManager.LayoutParams attributes = window.getAttributes();
            attributes.windowAnimations = R.style.DialogFadeAnimation;
            attributes.width = 1078;
            attributes.height = 720;
            attributes.gravity = 17;
            window.setAttributes(attributes);
        }
    }

    @Override // android.app.Dialog
    protected void onStop() {
        super.onStop();
        CarDabRadioManager.getInstance().unregisterRadioControlCallback(this.dabRadioControlCallback);
    }
}
