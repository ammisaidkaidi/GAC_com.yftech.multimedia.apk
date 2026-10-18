package com.media.common.util;

import android.content.Context;
import android.text.SpannableString;
import android.text.style.ForegroundColorSpan;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.core.content.ContextCompat;
import com.media.common.ui.widget.R;
import com.yftech.libmvpmodule.utils.Constants;
import java.lang.ref.WeakReference;

/* loaded from: /home/user/work/dex/classes3.dex */
public class ToastUtils {
    private static WeakReference<Context> context;
    private static Toast toast;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void init(Context context2) {
        context = new WeakReference<>(context2.getApplicationContext());
    }

    public static void showNormalMessage(String str, int i) {
        showNormalMessage(str, i, true);
    }

    public static void showNormalMessage(String str, int i, boolean z) {
        if (context.get() == null) {
            throw new IllegalArgumentException("context is null!!!!!!");
        }
        cancelToast();
        SpannableString spannableString = new SpannableString(str);
        spannableString.setSpan(new ForegroundColorSpan(ContextCompat.getColor(context.get(), R.color.colorFFFFFF)), 0, spannableString.length(), 33);
        toast = new Toast(context.get());
        View inflate = LayoutInflater.from(context.get()).inflate(R.layout.view_toast_normal, (ViewGroup) null);
        TextView textView = (TextView) inflate.findViewById(R.id.tv_text);
        textView.setLayoutParams(new FrameLayout.LayoutParams(Constants.displayWidth, 88));
        toast.setView(inflate);
        if (z) {
            inflate.setOnClickListener(new View.OnClickListener() { // from class: com.media.common.util.-$$Lambda$ToastUtils$XNUclIDwnrsnm3MQBrXPkzAr08I
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ToastUtils.cancelToast();
                }
            });
        }
        toast.setGravity(49, 0, 0);
        textView.setText(spannableString);
        toast.setDuration(i);
        toast.show();
    }

    public static void showNormalMessage(int i, int i2) {
        if (context.get() == null) {
            throw new IllegalArgumentException("context is null!!!!!!");
        }
        showNormalMessage(context.get().getString(i), i2);
    }

    public static void showFailMessage(String str, int i) {
        showFailMessage(str, i, true);
    }

    public static void showFailMessage(String str, int i, boolean z) {
        if (context.get() == null) {
            throw new IllegalArgumentException("context is null!!!!!!");
        }
        cancelToast();
        SpannableString spannableString = new SpannableString(str);
        spannableString.setSpan(new ForegroundColorSpan(ContextCompat.getColor(context.get(), R.color.colorFFFFFF)), 0, spannableString.length(), 33);
        toast = new Toast(context.get());
        View inflate = LayoutInflater.from(context.get()).inflate(R.layout.view_toast_fail, (ViewGroup) null);
        TextView textView = (TextView) inflate.findViewById(R.id.tv_text);
        textView.setLayoutParams(new FrameLayout.LayoutParams(Constants.displayWidth, 88));
        toast.setView(inflate);
        if (z) {
            inflate.setOnClickListener(new View.OnClickListener() { // from class: com.media.common.util.-$$Lambda$ToastUtils$QPBye5vuhXvbsOOHL1LZJy-ztys
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ToastUtils.cancelToast();
                }
            });
        }
        toast.setGravity(49, 0, 0);
        textView.setText(spannableString);
        toast.setDuration(i);
        toast.show();
    }

    public static void showFailMessage(int i, int i2) {
        if (context.get() == null) {
            throw new IllegalArgumentException("context is null!!!!!!");
        }
        showFailMessage(context.get().getString(i), i2);
    }

    public static void cancelToast() {
        if (toast != null) {
            toast.cancel();
            toast = null;
        }
    }
}
