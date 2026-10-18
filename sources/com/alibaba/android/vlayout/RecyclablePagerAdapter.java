package com.alibaba.android.vlayout;

import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.RecyclerView.ViewHolder;
import androidx.viewpager.widget.PagerAdapter;
import androidx.viewpager.widget.ViewPager;
import com.alibaba.android.vlayout.extend.InnerRecycledViewPool;

/* loaded from: /home/user/work/dex/classes3.dex */
public abstract class RecyclablePagerAdapter<VH extends RecyclerView.ViewHolder> extends PagerAdapter {
    private RecyclerView.Adapter<VH> mAdapter;
    private InnerRecycledViewPool mRecycledViewPool;

    @Override // androidx.viewpager.widget.PagerAdapter
    public abstract int getCount();

    public abstract int getItemViewType(int i);

    public abstract void onBindViewHolder(VH vh, int i);

    public RecyclablePagerAdapter(RecyclerView.Adapter<VH> adapter, RecyclerView.RecycledViewPool recycledViewPool) {
        this.mAdapter = adapter;
        if (recycledViewPool instanceof InnerRecycledViewPool) {
            this.mRecycledViewPool = (InnerRecycledViewPool) recycledViewPool;
        } else {
            this.mRecycledViewPool = new InnerRecycledViewPool(recycledViewPool);
        }
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public boolean isViewFromObject(View view, Object obj) {
        return (obj instanceof RecyclerView.ViewHolder) && ((RecyclerView.ViewHolder) obj).itemView == view;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.viewpager.widget.PagerAdapter
    public Object instantiateItem(ViewGroup viewGroup, int i) {
        int itemViewType = getItemViewType(i);
        RecyclerView.ViewHolder recycledView = this.mRecycledViewPool.getRecycledView(itemViewType);
        if (recycledView == null) {
            recycledView = this.mAdapter.createViewHolder(viewGroup, itemViewType);
        }
        onBindViewHolder(recycledView, i);
        viewGroup.addView(recycledView.itemView, new ViewPager.LayoutParams());
        return recycledView;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public void destroyItem(ViewGroup viewGroup, int i, Object obj) {
        if (obj instanceof RecyclerView.ViewHolder) {
            RecyclerView.ViewHolder viewHolder = (RecyclerView.ViewHolder) obj;
            viewGroup.removeView(viewHolder.itemView);
            this.mRecycledViewPool.putRecycledView(viewHolder);
        }
    }
}
