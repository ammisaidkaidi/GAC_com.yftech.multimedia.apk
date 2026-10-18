package com.yftech.libradio.dialog.adapter;

import android.content.Context;
import android.graphics.drawable.AnimationDrawable;
import android.widget.ImageView;
import androidx.core.content.ContextCompat;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import com.media.common.util.LogUtil;
import com.yftech.car.media.radio.CarRadioManager;
import com.yftech.car.media.radio.entity.DataOfRadio;
import com.yftech.libradio.R;
import java.util.Locale;

/* loaded from: /home/user/work/dex/classes4.dex */
public class RadioSearchChannelAdapter extends BaseQuickAdapter<DataOfRadio, BaseViewHolder> {
    private Context mContext;
    private int position;

    public RadioSearchChannelAdapter(Context context) {
        super(R.layout.item_radio_search_channe);
        this.position = -1;
        this.mContext = context;
    }

    public void setPlayingIndex(int i, boolean z) {
        LogUtil.d("setPlayingIndex() position:" + i + " isNotifyChanged:" + z);
        if (z) {
            this.position = i;
            notifyDataSetChanged();
        } else {
            this.position = i;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void convert(BaseViewHolder baseViewHolder, DataOfRadio dataOfRadio) {
        Context context;
        int i;
        int i2 = R.id.tv_name;
        Locale locale = Locale.getDefault();
        Object[] objArr = new Object[3];
        objArr[0] = dataOfRadio.getType() == 2 ? "AM" : "FM";
        objArr[1] = dataOfRadio.getType() == 2 ? String.valueOf(dataOfRadio.getFreq()) : String.valueOf(dataOfRadio.getFreq() / 1000.0f);
        if (dataOfRadio.getType() == 2) {
            context = this.mContext;
            i = R.string.radio_band_am;
        } else {
            context = this.mContext;
            i = R.string.radio_band_fm;
        }
        objArr[2] = context.getString(i);
        baseViewHolder.setText(i2, String.format(locale, "%s %s %s", objArr)).setTextColor(R.id.tv_name, ContextCompat.getColor(this.mContext, this.position == baseViewHolder.getLayoutPosition() ? R.color.colorDD9D09 : R.color.colorE6FFFFFF)).setGone(R.id.iv_play, this.position == baseViewHolder.getLayoutPosition());
        AnimationDrawable animationDrawable = (AnimationDrawable) ((ImageView) baseViewHolder.getView(R.id.iv_play)).getBackground();
        if (this.position == baseViewHolder.getLayoutPosition()) {
            boolean isPlaying = CarRadioManager.getInstance().isPlaying();
            LogUtil.d("isPlaying:" + isPlaying);
            if (isPlaying) {
                animationDrawable.start();
                return;
            } else {
                animationDrawable.stop();
                return;
            }
        }
        animationDrawable.stop();
    }
}
