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
import com.yftech.car.media.radio.CarRadioManager;
import com.yftech.libradio.R;
import javax.microedition.khronos.opengles.GL10;

/* loaded from: /home/user/work/dex/classes4.dex */
public class RdsAnnounceDialog extends Dialog {
    private CarRadioManager.CarRadioControlCallback callback;
    private Context mContext;
    private View rootView;
    private TextView tvBack;
    private TextView tvContent;
    private TextView tvTitle;

    public RdsAnnounceDialog(@NonNull Context context) {
        super(context);
        this.callback = new CarRadioManager.CarRadioControlCallback() { // from class: com.yftech.libradio.dialog.RdsAnnounceDialog.2
            public void onRdsCommonStatusChange(int i, boolean z) {
                super.onRdsCommonStatusChange(i, z);
                LogUtil.d("type: " + i + " , value: " + z);
                if (7 != i || z) {
                    return;
                }
                RdsAnnounceDialog.this.dismiss();
            }
        };
        this.mContext = context;
    }

    public RdsAnnounceDialog(@NonNull Context context, int i) {
        super(context, i);
        this.callback = new CarRadioManager.CarRadioControlCallback() { // from class: com.yftech.libradio.dialog.RdsAnnounceDialog.2
            public void onRdsCommonStatusChange(int i2, boolean z) {
                super.onRdsCommonStatusChange(i2, z);
                LogUtil.d("type: " + i2 + " , value: " + z);
                if (7 != i2 || z) {
                    return;
                }
                RdsAnnounceDialog.this.dismiss();
            }
        };
        this.mContext = context;
    }

    protected RdsAnnounceDialog(@NonNull Context context, boolean z, @Nullable DialogInterface.OnCancelListener onCancelListener) {
        super(context, z, onCancelListener);
        this.callback = new CarRadioManager.CarRadioControlCallback() { // from class: com.yftech.libradio.dialog.RdsAnnounceDialog.2
            public void onRdsCommonStatusChange(int i2, boolean z2) {
                super.onRdsCommonStatusChange(i2, z2);
                LogUtil.d("type: " + i2 + " , value: " + z2);
                if (7 != i2 || z2) {
                    return;
                }
                RdsAnnounceDialog.this.dismiss();
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
        this.tvBack.setOnClickListener(new View.OnClickListener() { // from class: com.yftech.libradio.dialog.RdsAnnounceDialog.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                RdsAnnounceDialog.this.dismiss();
            }
        });
        this.tvContent.setMovementMethod(ScrollingMovementMethod.getInstance());
        this.tvTitle.setText(this.mContext.getString(R.string.traffic_announcement));
        this.tvContent.setText(this.mContext.getString(R.string.announcement_play_front) + this.mContext.getString(R.string.traffic_announcement));
        this.rootView.setTranslationY(50.0f);
    }

    @Override // android.app.Dialog
    public void onStart() {
        super.onStart();
        LogUtil.d("onStart()");
        CarRadioManager.getInstance();
        CarRadioManager.registerRadioControlCallback(this.callback);
        setCanceledOnTouchOutside(false);
        setCancelable(false);
        Window window = getWindow();
        if (window != null) {
            window.setType(2003);
            window.addFlags(GL10.GL_STENCIL_BUFFER_BIT);
            window.setBackgroundDrawableResource(android.R.color.transparent);
            WindowManager.LayoutParams attributes = window.getAttributes();
            attributes.windowAnimations = R.style.DialogFadeAnimation;
            attributes.width = 836;
            attributes.height = 600;
            attributes.gravity = 17;
            window.setAttributes(attributes);
        }
    }

    @Override // android.app.Dialog
    protected void onStop() {
        super.onStop();
        CarRadioManager.getInstance();
        CarRadioManager.unregisterRadioControlCallback(this.callback);
    }
}
