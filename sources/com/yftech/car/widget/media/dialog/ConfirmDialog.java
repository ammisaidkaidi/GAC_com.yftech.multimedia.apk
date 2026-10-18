package com.yftech.car.widget.media.dialog;

import android.R;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.util.Size;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.TextView;
import androidx.annotation.NonNull;
import com.yftech.car.widget.media.utils.FileUtil;
import java.util.LinkedList;

/* loaded from: /home/user/work/dex/classes.dex */
public class ConfirmDialog extends Dialog {
    private final View.OnClickListener mCancelOnClickListener;
    private final View.OnClickListener mConfirmOnClickListener;
    private boolean mDismissLoad;
    private OnConfirmDialogListener mOnConfirmDialogListener;
    private final View mRootView;
    private String mText;
    private TextView mTextView;

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface OnConfirmDialogListener {
        void onConfirm(boolean z);
    }

    public ConfirmDialog(@NonNull Context context, int i) {
        this(context, R.style.TextAppearance_Theme_Dialog, i);
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x00af  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00b5  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public ConfirmDialog(@NonNull Context context, int i, int i2) {
        super(context, i);
        CharSequence text;
        boolean z;
        this.mText = null;
        this.mDismissLoad = false;
        this.mConfirmOnClickListener = new View.OnClickListener() { // from class: com.yftech.car.widget.media.dialog.ConfirmDialog.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (ConfirmDialog.this.mOnConfirmDialogListener != null) {
                    ConfirmDialog.this.mOnConfirmDialogListener.onConfirm(true);
                }
                ConfirmDialog.this.mDismissLoad = true;
                ConfirmDialog.this.dismiss();
            }
        };
        this.mCancelOnClickListener = new View.OnClickListener() { // from class: com.yftech.car.widget.media.dialog.ConfirmDialog.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (ConfirmDialog.this.mOnConfirmDialogListener != null) {
                    ConfirmDialog.this.mOnConfirmDialogListener.onConfirm(false);
                }
                ConfirmDialog.this.mDismissLoad = true;
                ConfirmDialog.this.dismiss();
            }
        };
        this.mRootView = LayoutInflater.from(context).inflate(i2, (ViewGroup) null);
        if (this.mRootView instanceof ViewGroup) {
            LinkedList linkedList = new LinkedList();
            linkedList.add((ViewGroup) this.mRootView);
            Object tag = this.mRootView.getTag();
            if (tag != null) {
                if ("user_cancel".startsWith(tag.toString())) {
                    this.mRootView.setOnClickListener(this.mCancelOnClickListener);
                } else if ("user_confirm".startsWith(tag.toString())) {
                    this.mRootView.setOnClickListener(this.mConfirmOnClickListener);
                }
            }
            int i3 = 0;
            while (!linkedList.isEmpty()) {
                ViewGroup viewGroup = (ViewGroup) linkedList.removeFirst();
                int i4 = i3;
                for (int i5 = 0; i5 < viewGroup.getChildCount(); i5++) {
                    View childAt = viewGroup.getChildAt(i5);
                    Object tag2 = childAt.getTag();
                    if (tag2 != null) {
                        if ("user_cancel".startsWith(tag2.toString())) {
                            childAt.setOnClickListener(this.mCancelOnClickListener);
                        } else if ("user_confirm".startsWith(tag2.toString())) {
                            childAt.setOnClickListener(this.mConfirmOnClickListener);
                        }
                        z = false;
                        if (!(childAt instanceof ViewGroup)) {
                            linkedList.add((ViewGroup) childAt);
                        } else if (childAt instanceof Button) {
                            if (z) {
                                if (i4 == 0) {
                                    childAt.setOnClickListener(this.mConfirmOnClickListener);
                                } else {
                                    childAt.setOnClickListener(this.mCancelOnClickListener);
                                }
                            }
                            i4++;
                        } else if (childAt instanceof TextView) {
                            this.mTextView = (TextView) childAt;
                        }
                    }
                    z = true;
                    if (!(childAt instanceof ViewGroup)) {
                    }
                }
                i3 = i4;
            }
            setContentView(this.mRootView);
            setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.yftech.car.widget.media.dialog.-$$Lambda$ConfirmDialog$VIbAHwEpotT_uvMxjHvjrrGqrbs
                @Override // android.content.DialogInterface.OnDismissListener
                public final void onDismiss(DialogInterface dialogInterface) {
                    ConfirmDialog.lambda$new$0(ConfirmDialog.this, dialogInterface);
                }
            });
            if (this.mTextView == null || (text = this.mTextView.getText()) == null) {
                return;
            }
            this.mText = text.toString();
            return;
        }
        throw new RuntimeException("dialog_layout_id 父布局必须是layout（继承ViewGroup的布局）");
    }

    public static /* synthetic */ void lambda$new$0(ConfirmDialog confirmDialog, DialogInterface dialogInterface) {
        if (confirmDialog.mDismissLoad) {
            confirmDialog.mDismissLoad = false;
        } else if (confirmDialog.mOnConfirmDialogListener != null) {
            confirmDialog.mOnConfirmDialogListener.onConfirm(false);
        }
    }

    public void show(int i, String str, Size size) {
        if (this.mTextView != null && str != null) {
            this.mTextView.setText(str);
        }
        show(i, size);
    }

    public void show(int i, int i2, long j, Size size) {
        if (this.mTextView != null && this.mText != null) {
            this.mTextView.setText(getToastContent(this.mText, i2, j));
        }
        show(i, size);
    }

    public void show(int i, Size size) {
        Window window = getWindow();
        if (window != null) {
            window.setGravity(17);
            WindowManager.LayoutParams attributes = window.getAttributes();
            attributes.flags = i | attributes.flags;
            attributes.width = size.getWidth();
            attributes.height = size.getHeight();
        }
        super.show();
    }

    private String getToastContent(String str, int i, long j) {
        if (str.contains("<selected_size>")) {
            str = str.substring(0, str.indexOf("<selected_size>")) + i + str.substring(str.indexOf("<selected_size>") + 15);
            if (str.contains("<selected_size>")) {
                str = getToastContent(str, i, j);
            }
        }
        if (!str.contains("<file_size>")) {
            return str;
        }
        String str2 = str.substring(0, str.indexOf("<file_size>")) + FileUtil.fileSize(j, 2) + str.substring(str.indexOf("<file_size>") + 11);
        return str2.contains("<file_size>") ? getToastContent(str2, i, j) : str2;
    }

    public void setOnConfirmDialogListener(OnConfirmDialogListener onConfirmDialogListener) {
        this.mOnConfirmDialogListener = onConfirmDialogListener;
    }
}
