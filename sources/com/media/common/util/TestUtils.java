package com.media.common.util;

import androidx.core.content.ContextCompat;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import com.media.common.ui.widget.R;
import java.util.ArrayList;
import java.util.List;

/* loaded from: /home/user/work/dex/classes3.dex */
public class TestUtils {
    public static List<String> getData(int i) {
        if (i < 0) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < i; i2++) {
            arrayList.add(String.valueOf(i2));
        }
        return arrayList;
    }

    public static BaseQuickAdapter<String, BaseViewHolder> getTestAdapter() {
        return new BaseQuickAdapter<String, BaseViewHolder>(R.layout.item_sample) { // from class: com.media.common.util.TestUtils.1
            int[] r = {R.color.color6466E9, R.color.color71D8B5, R.color.color6CC4F8, R.color.color0D113E};

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.chad.library.adapter.base.BaseQuickAdapter
            public void convert(BaseViewHolder baseViewHolder, String str) {
                baseViewHolder.setBackgroundColor(R.id.tv, ContextCompat.getColor(this.mContext, this.r[baseViewHolder.getLayoutPosition() % this.r.length])).setText(R.id.tv, "Position is " + str);
            }
        };
    }
}
