package com.media.common.ui.widget;

import android.app.Dialog;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.TextView;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;
import com.android.internal.logging.nano.MetricsProto;

/* loaded from: /home/user/work/dex/classes3.dex */
public class TipsDialog extends DialogFragment {
    private static final String ARG_PARAM1 = "content";
    private static final String ARG_PARAM2 = "isDarkMode";
    private String content;
    private boolean isDarkMode;
    private OnConfirmClickListener onConfirmClickListener;
    private TextView tv_content;

    /* loaded from: /home/user/work/dex/classes3.dex */
    public interface OnConfirmClickListener {
        void onConfirm();
    }

    public static TipsDialog newInstance(String str) {
        TipsDialog tipsDialog = new TipsDialog();
        Bundle bundle = new Bundle();
        bundle.putString("content", str);
        tipsDialog.setArguments(bundle);
        return tipsDialog;
    }

    public static TipsDialog newInstance(String str, boolean z) {
        TipsDialog tipsDialog = new TipsDialog();
        Bundle bundle = new Bundle();
        bundle.putString("content", str);
        bundle.putBoolean(ARG_PARAM2, z);
        tipsDialog.setArguments(bundle);
        return tipsDialog;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (getArguments() != null) {
            this.content = getArguments().getString("content");
            this.isDarkMode = getArguments().getBoolean(ARG_PARAM2, false);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(R.layout.dialog_tips, viewGroup, false);
        initW(inflate);
        return inflate;
    }

    private void initW(View view) {
        this.tv_content = (TextView) view.findViewById(R.id.tv_content);
        this.tv_content.setText(this.content);
        view.findViewById(R.id.tv_confirm).setOnClickListener(new View.OnClickListener() { // from class: com.media.common.ui.widget.TipsDialog.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                if (TipsDialog.this.onConfirmClickListener != null) {
                    TipsDialog.this.onConfirmClickListener.onConfirm();
                }
                TipsDialog.this.dismissAllowingStateLoss();
            }
        });
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        Dialog dialog = getDialog();
        if (dialog != null) {
            Window window = dialog.getWindow();
            if (window != null) {
                window.setBackgroundDrawableResource(17170445);
                WindowManager.LayoutParams attributes = window.getAttributes();
                attributes.windowAnimations = R.style.DialogFadeAnimation;
                attributes.width = MetricsProto.MetricsEvent.APP_SPECIAL_PERMISSION_BATTERY_ALLOW;
                attributes.height = 300;
                attributes.gravity = 49;
                attributes.y = 200;
                window.setAttributes(attributes);
            }
            dialog.setCanceledOnTouchOutside(false);
            dialog.setCancelable(false);
        }
    }

    public void setContent(String str) {
        if (!isAdded() || this.tv_content == null) {
            return;
        }
        this.tv_content.setText(str);
    }

    @Override // androidx.fragment.app.DialogFragment
    public void show(FragmentManager fragmentManager, String str) {
        fragmentManager.findFragmentByTag(str);
        FragmentTransaction beginTransaction = fragmentManager.beginTransaction();
        beginTransaction.add(this, str);
        beginTransaction.commitAllowingStateLoss();
    }

    public void setOnConfirmClickListener(OnConfirmClickListener onConfirmClickListener) {
        this.onConfirmClickListener = onConfirmClickListener;
    }
}
