package com.media.common.ui.widget;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.WindowManager;

/* loaded from: /home/user/work/dex/classes3.dex */
public class TipsAlertDialog extends Dialog implements View.OnClickListener {
    public TipsAlertDialog(Context context) {
        super(context, R.style.MyDialog);
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.dialog_tips);
        if (getWindow() != null) {
            WindowManager.LayoutParams attributes = getWindow().getAttributes();
            attributes.width = 740;
            attributes.height = 262;
            attributes.gravity = 17;
            getWindow().setAttributes(attributes);
        }
        findViewById(R.id.tv_confirm).setOnClickListener(this);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        dismiss();
    }
}
