package com.yftech.libmusic.dialog.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import com.alibaba.android.vlayout.DelegateAdapter;
import com.alibaba.android.vlayout.LayoutHelper;
import com.alibaba.android.vlayout.layout.GridLayoutHelper;
import com.chad.library.adapter.base.BaseViewHolder;
import com.yftech.libmusic.R;

/* loaded from: /home/user/work/dex/classes4.dex */
public class ThirdPartyApplicationAdapter extends DelegateAdapter.Adapter<BaseViewHolder> {
    private Context mContext;
    private int[] type_Tag_Resource = {R.mipmap.xm, R.mipmap.kg, R.mipmap.wyy, R.mipmap.xm, R.mipmap.kg, R.mipmap.wyy};
    private String[] types_name;

    public ThirdPartyApplicationAdapter(Context context) {
        this.mContext = context;
        this.types_name = context.getResources().getStringArray(R.array.music_source_by_third_party_application);
    }

    public LayoutHelper onCreateLayoutHelper() {
        GridLayoutHelper gridLayoutHelper = new GridLayoutHelper(3);
        gridLayoutHelper.setVGap(20);
        gridLayoutHelper.setHGap(10);
        return gridLayoutHelper;
    }

    @NonNull
    public BaseViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i) {
        return new BaseViewHolder(LayoutInflater.from(this.mContext).inflate(R.layout.item_third_party_application, viewGroup, false));
    }

    public void onBindViewHolder(@NonNull BaseViewHolder baseViewHolder, int i) {
        baseViewHolder.setImageResource(R.id.iv_icon, this.type_Tag_Resource[i]).setText(R.id.tv_name, this.types_name[i]);
    }

    public int getItemCount() {
        return this.type_Tag_Resource.length;
    }
}
