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

/* loaded from: /home/user/work/dex/classes3.dex */
public class TipsExtraDialog extends DialogFragment {
    private static final String ARG_PARAM1 = "content";
    private String content;
    private OnButtonClickListener onButtonClickListener;

    /* loaded from: /home/user/work/dex/classes3.dex */
    public interface OnButtonClickListener {
        void onCancel();

        void onConfirm();
    }

    public static TipsExtraDialog newInstance(String str) {
        TipsExtraDialog tipsExtraDialog = new TipsExtraDialog();
        Bundle bundle = new Bundle();
        bundle.putString("content", str);
        tipsExtraDialog.setArguments(bundle);
        return tipsExtraDialog;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (getArguments() != null) {
            this.content = getArguments().getString("content");
        }
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(R.layout.dialog_tips_extra, viewGroup, false);
        initW(inflate);
        return inflate;
    }

    private void initW(View view) {
        ((TextView) view.findViewById(R.id.tv_content)).setText(this.content);
        view.findViewById(R.id.tv_confirm).setOnClickListener(new View.OnClickListener() { // from class: com.media.common.ui.widget.TipsExtraDialog.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                if (TipsExtraDialog.this.onButtonClickListener != null) {
                    TipsExtraDialog.this.onButtonClickListener.onConfirm();
                }
                TipsExtraDialog.this.dismissAllowingStateLoss();
            }
        });
        view.findViewById(R.id.tv_cancel).setOnClickListener(new View.OnClickListener() { // from class: com.media.common.ui.widget.TipsExtraDialog.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                if (TipsExtraDialog.this.onButtonClickListener != null) {
                    TipsExtraDialog.this.onButtonClickListener.onCancel();
                }
                TipsExtraDialog.this.dismissAllowingStateLoss();
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
                attributes.width = 740;
                attributes.height = 262;
                attributes.gravity = 49;
                attributes.y = 200;
                window.setAttributes(attributes);
            }
            dialog.setCanceledOnTouchOutside(false);
            dialog.setCancelable(false);
        }
    }

    public void setOnButtonClickListener(OnButtonClickListener onButtonClickListener) {
        this.onButtonClickListener = onButtonClickListener;
    }
}
