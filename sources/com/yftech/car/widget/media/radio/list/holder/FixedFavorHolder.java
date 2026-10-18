package com.yftech.car.widget.media.radio.list.holder;

import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import com.yftech.car.media.radio.entity.DataOfRadio;
import com.yftech.car.widget.media.recyclerview.widget.RecyclerView;

/* loaded from: /home/user/work/dex/classes3.dex */
public class FixedFavorHolder extends RecyclerView.ViewHolder {
    private TextView mTitle;

    public FixedFavorHolder(@NonNull FrameLayout frameLayout) {
        super(frameLayout);
        this.mTitle = (TextView) frameLayout.getChildAt(0);
    }

    public void setRadioData(DataOfRadio dataOfRadio, String str) {
        this.itemView.setTag(dataOfRadio);
        if (dataOfRadio.getFreq() == 0) {
            this.mTitle.setText(str);
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(dataOfRadio.getType() == 2 ? String.valueOf(dataOfRadio.getFreq()) : Float.valueOf(dataOfRadio.getFreq() / 1000.0f));
        sb.append("");
        this.mTitle.setText(sb.toString());
    }
}
