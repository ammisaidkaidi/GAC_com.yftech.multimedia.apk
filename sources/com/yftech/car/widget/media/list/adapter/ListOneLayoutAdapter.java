package com.yftech.car.widget.media.list.adapter;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.yftech.car.widget.media.recyclerview.widget.RecyclerView;

/* loaded from: /home/user/work/dex/classes3.dex */
public class ListOneLayoutAdapter extends RecyclerView.Adapter<ListOneLayoutHolder> {
    private final int mSearchLoadingLayoutId;

    @Override // com.yftech.car.widget.media.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return 1;
    }

    @Override // com.yftech.car.widget.media.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(ListOneLayoutHolder listOneLayoutHolder, int i) {
    }

    public ListOneLayoutAdapter(int i) {
        this.mSearchLoadingLayoutId = i;
    }

    public boolean isExistsLayoutId() {
        return this.mSearchLoadingLayoutId != -1;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.yftech.car.widget.media.recyclerview.widget.RecyclerView.Adapter
    public ListOneLayoutHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new ListOneLayoutHolder(LayoutInflater.from(viewGroup.getContext()).inflate(this.mSearchLoadingLayoutId, viewGroup, false));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: /home/user/work/dex/classes3.dex */
    public static final class ListOneLayoutHolder extends RecyclerView.ViewHolder {
        public ListOneLayoutHolder(View view) {
            super(view);
        }
    }
}
