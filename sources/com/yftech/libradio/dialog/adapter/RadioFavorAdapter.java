package com.yftech.libradio.dialog.adapter;

import android.content.Context;
import android.graphics.drawable.AnimationDrawable;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.core.content.ContextCompat;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import com.media.common.util.LogUtil;
import com.yftech.car.media.radio.CarRadioManager;
import com.yftech.libradio.R;
import com.yftech.libradio.bean.RadioChannelInfo;
import java.util.List;
import java.util.Locale;

/* loaded from: /home/user/work/dex/classes4.dex */
public class RadioFavorAdapter extends BaseQuickAdapter<RadioChannelInfo, BaseViewHolder> {
    private Context mContext;
    private int position;

    public /* bridge */ /* synthetic */ void onBindViewHolder(@NonNull RecyclerView.ViewHolder viewHolder, int i, @NonNull List list) {
        onBindViewHolder((BaseViewHolder) viewHolder, i, (List<Object>) list);
    }

    public RadioFavorAdapter(Context context) {
        super(R.layout.item_radio_favor);
        this.position = -1;
        this.mContext = context;
    }

    public void setPlayingIndex(int i, boolean z) {
        LogUtil.d("setPlayingIndex() position:" + i + " isNotifyChanged:" + z);
        if (z) {
            int i2 = this.position;
            this.position = i;
            notifyItemChanged(i2, false);
            notifyItemChanged(this.position, true);
            return;
        }
        this.position = i;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void convert(BaseViewHolder baseViewHolder, RadioChannelInfo radioChannelInfo) {
        Context context;
        int i;
        int i2;
        int i3 = R.id.tv_name;
        Locale locale = Locale.getDefault();
        Object[] objArr = new Object[3];
        objArr[0] = radioChannelInfo.getType() == 2 ? "AM" : "FM";
        objArr[1] = radioChannelInfo.getType() == 2 ? String.valueOf(radioChannelInfo.getFreq()) : String.valueOf(radioChannelInfo.getFreq() / 1000.0f);
        if (radioChannelInfo.getType() == 2) {
            context = this.mContext;
            i = R.string.radio_band_am;
        } else {
            context = this.mContext;
            i = R.string.radio_band_fm;
        }
        objArr[2] = context.getString(i);
        BaseViewHolder text = baseViewHolder.setText(i3, String.format(locale, "%s %s %s", objArr));
        int i4 = R.id.tv_name;
        Context context2 = this.mContext;
        if (radioChannelInfo.isValid) {
            i2 = this.position == baseViewHolder.getLayoutPosition() ? R.color.colorDD9D09 : R.color.colorE6FFFFFF;
        } else {
            i2 = R.color.color33FFFFFF;
        }
        text.setTextColor(i4, ContextCompat.getColor(context2, i2)).setGone(R.id.iv_play, this.position == baseViewHolder.getLayoutPosition());
        AnimationDrawable animationDrawable = (AnimationDrawable) ((ImageView) baseViewHolder.getView(R.id.iv_play)).getBackground();
        if (this.position == baseViewHolder.getLayoutPosition()) {
            boolean isPlaying = CarRadioManager.getInstance().isPlaying();
            LogUtil.d("isPlaying:" + isPlaying);
            if (isPlaying) {
                animationDrawable.start();
            } else {
                animationDrawable.stop();
            }
        } else {
            animationDrawable.stop();
        }
        baseViewHolder.addOnClickListener(new int[]{R.id.iv_like});
    }

    public void onBindViewHolder(@NonNull BaseViewHolder baseViewHolder, int i, @NonNull List<Object> list) {
        if (list.isEmpty()) {
            super.onBindViewHolder(baseViewHolder, i);
            return;
        }
        LogUtil.d("onBindViewHolder:position=" + i);
        TextView textView = (TextView) baseViewHolder.getView(R.id.tv_name);
        ImageView imageView = (ImageView) baseViewHolder.getView(R.id.iv_play);
        AnimationDrawable animationDrawable = (AnimationDrawable) imageView.getBackground();
        if (this.position == i) {
            textView.setTextColor(ContextCompat.getColor(this.mContext, R.color.colorDD9D09));
            boolean isPlaying = CarRadioManager.getInstance().isPlaying();
            LogUtil.d("isPlaying:" + isPlaying);
            if (isPlaying) {
                animationDrawable.start();
            } else {
                animationDrawable.stop();
            }
            imageView.setVisibility(0);
            return;
        }
        animationDrawable.stop();
        imageView.setVisibility(8);
        textView.setTextColor(ContextCompat.getColor(this.mContext, R.color.colorE6FFFFFF));
    }

    public int getFarqPosition() {
        return this.position;
    }
}
