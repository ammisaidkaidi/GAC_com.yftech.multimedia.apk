package com.android.internal.globalactions;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;

/* loaded from: /home/user/work/dex/classes3.dex */
public abstract class SinglePressAction implements Action {
    private final Drawable mIcon;
    private final int mIconResId;
    private final CharSequence mMessage;
    private final int mMessageResId;

    public String getStatus() {
        return null;
    }

    @Override // com.android.internal.globalactions.Action
    public boolean isEnabled() {
        return true;
    }

    @Override // com.android.internal.globalactions.Action
    public abstract void onPress();

    protected SinglePressAction(int i, int i2) {
        this.mIconResId = i;
        this.mMessageResId = i2;
        this.mMessage = null;
        this.mIcon = null;
    }

    protected SinglePressAction(int i, Drawable drawable, CharSequence charSequence) {
        this.mIconResId = i;
        this.mMessageResId = 0;
        this.mMessage = charSequence;
        this.mIcon = drawable;
    }

    @Override // com.android.internal.globalactions.Action
    public CharSequence getLabelForAccessibility(Context context) {
        if (this.mMessage != null) {
            return this.mMessage;
        }
        return context.getString(this.mMessageResId);
    }

    @Override // com.android.internal.globalactions.Action
    public View create(Context context, View view, ViewGroup viewGroup, LayoutInflater layoutInflater) {
        View inflate = layoutInflater.inflate(17367147, viewGroup, false);
        ImageView imageView = (ImageView) inflate.findViewById(16908294);
        TextView textView = (TextView) inflate.findViewById(16908299);
        TextView textView2 = (TextView) inflate.findViewById(16909349);
        String status = getStatus();
        if (textView2 != null) {
            if (!TextUtils.isEmpty(status)) {
                textView2.setText(status);
            } else {
                textView2.setVisibility(8);
            }
        }
        if (imageView != null) {
            if (this.mIcon != null) {
                imageView.setImageDrawable(this.mIcon);
                imageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
            } else if (this.mIconResId != 0) {
                imageView.setImageDrawable(context.getDrawable(this.mIconResId));
            }
        }
        if (textView != null) {
            if (this.mMessage != null) {
                textView.setText(this.mMessage);
            } else {
                textView.setText(this.mMessageResId);
            }
        }
        return inflate;
    }
}
