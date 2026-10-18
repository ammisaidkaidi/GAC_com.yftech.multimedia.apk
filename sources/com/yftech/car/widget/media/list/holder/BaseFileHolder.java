package com.yftech.car.widget.media.list.holder;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import com.yftech.car.media.data.entity.MediaFile;
import com.yftech.car.widget.media.recyclerview.widget.RecyclerView;

/* loaded from: /home/user/work/dex/classes3.dex */
public abstract class BaseFileHolder extends RecyclerView.ViewHolder {
    public Drawable getImageDrawable() {
        return null;
    }

    public ImageView getImageView() {
        return null;
    }

    public MediaFile getMediaFile() {
        return null;
    }

    public boolean isCheckBox() {
        return false;
    }

    public boolean isValid() {
        return true;
    }

    public void setCheckBoxVisibility(int i) {
    }

    public void setDateTime(MediaFile mediaFile) {
    }

    public void setFailedResDrawable() {
    }

    public void setImageBitmap(Bitmap bitmap) {
    }

    public void setImageDrawable(Drawable drawable) {
    }

    public void setImageLoadingHide() {
    }

    public void setImageLoadingStatus(boolean z) {
    }

    public void setImageResource(int i) {
    }

    public boolean setMediaFile(MediaFile mediaFile, int i) {
        return false;
    }

    public BaseFileHolder(@NonNull View view) {
        super(view);
    }
}
