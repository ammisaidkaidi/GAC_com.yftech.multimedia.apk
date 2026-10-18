package com.alibaba.android.vlayout.extend;

import android.util.Log;
import android.util.SparseIntArray;
import android.view.KeyEvent;
import androidx.recyclerview.widget.RecyclerView;
import java.io.Closeable;

/* loaded from: /home/user/work/dex/classes3.dex */
public final class InnerRecycledViewPool extends RecyclerView.RecycledViewPool {
    private static final int DEFAULT_MAX_SIZE = 5;
    private static final String TAG = "InnerRecycledViewPool";
    private RecyclerView.RecycledViewPool mInnerPool;
    private SparseIntArray mMaxScrap;
    private SparseIntArray mScrapLength;

    public InnerRecycledViewPool(RecyclerView.RecycledViewPool recycledViewPool) {
        this.mScrapLength = new SparseIntArray();
        this.mMaxScrap = new SparseIntArray();
        this.mInnerPool = recycledViewPool;
    }

    public InnerRecycledViewPool() {
        this(new RecyclerView.RecycledViewPool());
    }

    @Override // androidx.recyclerview.widget.RecyclerView.RecycledViewPool
    public void clear() {
        int size = this.mScrapLength.size();
        for (int i = 0; i < size; i++) {
            int keyAt = this.mScrapLength.keyAt(i);
            RecyclerView.ViewHolder recycledView = this.mInnerPool.getRecycledView(keyAt);
            while (recycledView != null) {
                destroyViewHolder(recycledView);
                recycledView = this.mInnerPool.getRecycledView(keyAt);
            }
        }
        this.mScrapLength.clear();
        super.clear();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.RecycledViewPool
    public void setMaxRecycledViews(int i, int i2) {
        RecyclerView.ViewHolder recycledView = this.mInnerPool.getRecycledView(i);
        while (recycledView != null) {
            destroyViewHolder(recycledView);
            recycledView = this.mInnerPool.getRecycledView(i);
        }
        this.mMaxScrap.put(i, i2);
        this.mScrapLength.put(i, 0);
        this.mInnerPool.setMaxRecycledViews(i, i2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.RecycledViewPool
    public RecyclerView.ViewHolder getRecycledView(int i) {
        RecyclerView.ViewHolder recycledView = this.mInnerPool.getRecycledView(i);
        if (recycledView != null) {
            int i2 = this.mScrapLength.indexOfKey(i) >= 0 ? this.mScrapLength.get(i) : 0;
            if (i2 > 0) {
                this.mScrapLength.put(i, i2 - 1);
            }
        }
        return recycledView;
    }

    public int size() {
        int size = this.mScrapLength.size();
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            i += this.mScrapLength.valueAt(i2);
        }
        return i;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.RecycledViewPool
    public void putRecycledView(RecyclerView.ViewHolder viewHolder) {
        int itemViewType = viewHolder.getItemViewType();
        if (this.mMaxScrap.indexOfKey(itemViewType) < 0) {
            this.mMaxScrap.put(itemViewType, 5);
            setMaxRecycledViews(itemViewType, 5);
        }
        int i = this.mScrapLength.indexOfKey(itemViewType) >= 0 ? this.mScrapLength.get(itemViewType) : 0;
        if (this.mMaxScrap.get(itemViewType) > i) {
            this.mInnerPool.putRecycledView(viewHolder);
            this.mScrapLength.put(itemViewType, i + 1);
        } else {
            destroyViewHolder(viewHolder);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void destroyViewHolder(RecyclerView.ViewHolder viewHolder) {
        KeyEvent.Callback callback = viewHolder.itemView;
        if (callback instanceof Closeable) {
            try {
                ((Closeable) callback).close();
            } catch (Exception e) {
                Log.w(TAG, Log.getStackTraceString(e), e);
            }
        }
        if (viewHolder instanceof Closeable) {
            try {
                ((Closeable) viewHolder).close();
            } catch (Exception e2) {
                Log.w(TAG, Log.getStackTraceString(e2), e2);
            }
        }
    }
}
