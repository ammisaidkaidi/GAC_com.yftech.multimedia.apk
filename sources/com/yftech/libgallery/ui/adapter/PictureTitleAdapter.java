package com.yftech.libgallery.ui.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import com.alibaba.android.vlayout.DelegateAdapter;
import com.alibaba.android.vlayout.LayoutHelper;
import com.alibaba.android.vlayout.layout.StickyLayoutHelper;
import com.chad.library.adapter.base.BaseViewHolder;
import com.yftech.libgallery.R;

/* loaded from: /home/user/work/dex/classes4.dex */
public class PictureTitleAdapter extends DelegateAdapter.Adapter<BaseViewHolder> {
    private Context context;
    private String date;

    public int getItemCount() {
        return 1;
    }

    public PictureTitleAdapter(Context context, String str) {
        this.context = context;
        this.date = str;
    }

    public LayoutHelper onCreateLayoutHelper() {
        return new StickyLayoutHelper();
    }

    @NonNull
    public BaseViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i) {
        return new BaseViewHolder(LayoutInflater.from(this.context).inflate(R.layout.item_date, viewGroup, false));
    }

    public void onBindViewHolder(@NonNull BaseViewHolder baseViewHolder, int i) {
        baseViewHolder.setText(R.id.tv_item_date, this.date);
    }
}
