package com.yftech.libradio.ui.adapter;

import android.content.Context;
import androidx.annotation.Nullable;
import androidx.core.content.ContextCompat;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import com.media.common.util.LogUtil;
import com.yftech.libradio.R;
import com.yftech.libradio.Utils;
import java.util.List;

/* loaded from: /home/user/work/dex/classes4.dex */
public class RadioFreqAdapter extends BaseQuickAdapter<Integer, BaseViewHolder> {
    private int mBand;
    private Context mContext;

    public RadioFreqAdapter(Context context) {
        super(R.layout.item_freq_control);
        this.mContext = context;
    }

    public RadioFreqAdapter(Context context, @Nullable List<Integer> list, int i) {
        super(R.layout.item_freq_control, list);
        this.mContext = context;
        this.mBand = i;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void convert(BaseViewHolder baseViewHolder, Integer num) {
        if (baseViewHolder.getLayoutPosition() % 5 == 0) {
            String formatFreq = Utils.getInstance().formatFreq(num.intValue(), this.mBand);
            BaseViewHolder backgroundColor = baseViewHolder.setBackgroundColor(R.id.v_tag, ContextCompat.getColor(this.mContext, R.color.colorFFFFFF));
            int i = R.id.tv_name;
            if (baseViewHolder.getLayoutPosition() % 10 != 0) {
                formatFreq = "";
            }
            backgroundColor.setText(i, formatFreq);
            if (this.mBand == 2 && baseViewHolder.getLayoutPosition() == 120) {
                LogUtil.d("helper.getLayoutPosition()" + baseViewHolder.getLayoutPosition());
                baseViewHolder.setBackgroundColor(R.id.v_tag, ContextCompat.getColor(this.mContext, R.color.colorFFFFFF)).setText(R.id.tv_name, "");
            }
        } else {
            baseViewHolder.setBackgroundColor(R.id.v_tag, ContextCompat.getColor(this.mContext, R.color.color66FFFFFF)).setText(R.id.tv_name, "");
        }
        if (baseViewHolder.getLayoutPosition() == getItemCount() - 1) {
            baseViewHolder.setBackgroundColor(R.id.v_tag, ContextCompat.getColor(this.mContext, R.color.color66FFFFFF)).setText(R.id.tv_name, "");
        }
        baseViewHolder.addOnClickListener(new int[]{R.id.layout_freq});
    }
}
