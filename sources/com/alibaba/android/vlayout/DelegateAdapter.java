package com.alibaba.android.vlayout;

import android.util.Pair;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import com.alibaba.android.vlayout.layout.SingleLayoutHelper;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: /home/user/work/dex/classes3.dex */
public class DelegateAdapter extends VirtualLayoutAdapter<RecyclerView.ViewHolder> {
    private long[] cantorReverse;

    @NonNull
    private final List<Pair<AdapterDataObserver, Adapter>> mAdapters;
    private final boolean mHasConsistItemType;
    private int mIndex;
    private final SparseArray<Pair<AdapterDataObserver, Adapter>> mIndexAry;

    @Nullable
    private AtomicInteger mIndexGen;
    private SparseArray<Adapter> mItemTypeAry;
    private int mTotal;

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void setHasStableIds(boolean z) {
    }

    public DelegateAdapter(VirtualLayoutManager virtualLayoutManager) {
        this(virtualLayoutManager, false, false);
    }

    public DelegateAdapter(VirtualLayoutManager virtualLayoutManager, boolean z) {
        this(virtualLayoutManager, z, false);
    }

    DelegateAdapter(VirtualLayoutManager virtualLayoutManager, boolean z, boolean z2) {
        super(virtualLayoutManager);
        this.mIndex = 0;
        this.mItemTypeAry = new SparseArray<>();
        this.mAdapters = new ArrayList();
        this.mTotal = 0;
        this.mIndexAry = new SparseArray<>();
        this.cantorReverse = new long[2];
        if (z2) {
            this.mIndexGen = new AtomicInteger(0);
        }
        this.mHasConsistItemType = z;
    }

    /* JADX WARN: Type inference failed for: r4v2, types: [androidx.recyclerview.widget.RecyclerView$ViewHolder] */
    /* JADX WARN: Type inference failed for: r4v6, types: [androidx.recyclerview.widget.RecyclerView$ViewHolder] */
    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        if (this.mHasConsistItemType) {
            Adapter adapter = this.mItemTypeAry.get(i);
            if (adapter != null) {
                return adapter.onCreateViewHolder(viewGroup, i);
            }
            return null;
        }
        Cantor.reverseCantor(i, this.cantorReverse);
        int i2 = (int) this.cantorReverse[1];
        int i3 = (int) this.cantorReverse[0];
        Adapter findAdapterByIndex = findAdapterByIndex(i2);
        if (findAdapterByIndex == null) {
            return null;
        }
        return findAdapterByIndex.onCreateViewHolder(viewGroup, i3);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i, List<Object> list) {
        super.onBindViewHolder(viewHolder, i, list);
        Pair<AdapterDataObserver, Adapter> findAdapterByPosition = findAdapterByPosition(i);
        if (findAdapterByPosition == null) {
            return;
        }
        ((Adapter) findAdapterByPosition.second).onBindViewHolder(viewHolder, i - ((AdapterDataObserver) findAdapterByPosition.first).mStartPosition, list);
        ((Adapter) findAdapterByPosition.second).onBindViewHolderWithOffset(viewHolder, i - ((AdapterDataObserver) findAdapterByPosition.first).mStartPosition, i, list);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.mTotal;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i) {
        Pair<AdapterDataObserver, Adapter> findAdapterByPosition = findAdapterByPosition(i);
        if (findAdapterByPosition == null) {
            return -1;
        }
        int itemViewType = ((Adapter) findAdapterByPosition.second).getItemViewType(i - ((AdapterDataObserver) findAdapterByPosition.first).mStartPosition);
        if (itemViewType < 0) {
            return itemViewType;
        }
        if (this.mHasConsistItemType) {
            this.mItemTypeAry.put(itemViewType, findAdapterByPosition.second);
            return itemViewType;
        }
        return (int) Cantor.getCantor(itemViewType, ((AdapterDataObserver) findAdapterByPosition.first).mIndex);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public long getItemId(int i) {
        Pair<AdapterDataObserver, Adapter> findAdapterByPosition = findAdapterByPosition(i);
        if (findAdapterByPosition == null) {
            return -1L;
        }
        long itemId = ((Adapter) findAdapterByPosition.second).getItemId(i - ((AdapterDataObserver) findAdapterByPosition.first).mStartPosition);
        if (itemId < 0) {
            return -1L;
        }
        return Cantor.getCantor(((AdapterDataObserver) findAdapterByPosition.first).mIndex, itemId);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onViewRecycled(RecyclerView.ViewHolder viewHolder) {
        Pair<AdapterDataObserver, Adapter> findAdapterByPosition;
        super.onViewRecycled(viewHolder);
        int position = viewHolder.getPosition();
        if (position <= 0 || (findAdapterByPosition = findAdapterByPosition(position)) == null) {
            return;
        }
        ((Adapter) findAdapterByPosition.second).onViewRecycled(viewHolder);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onViewAttachedToWindow(RecyclerView.ViewHolder viewHolder) {
        Pair<AdapterDataObserver, Adapter> findAdapterByPosition;
        super.onViewAttachedToWindow(viewHolder);
        int position = viewHolder.getPosition();
        if (position <= 0 || (findAdapterByPosition = findAdapterByPosition(position)) == null) {
            return;
        }
        ((Adapter) findAdapterByPosition.second).onViewAttachedToWindow(viewHolder);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onViewDetachedFromWindow(RecyclerView.ViewHolder viewHolder) {
        Pair<AdapterDataObserver, Adapter> findAdapterByPosition;
        super.onViewDetachedFromWindow(viewHolder);
        int position = viewHolder.getPosition();
        if (position <= 0 || (findAdapterByPosition = findAdapterByPosition(position)) == null) {
            return;
        }
        ((Adapter) findAdapterByPosition.second).onViewDetachedFromWindow(viewHolder);
    }

    @Override // com.alibaba.android.vlayout.VirtualLayoutAdapter
    @Deprecated
    public void setLayoutHelpers(List<LayoutHelper> list) {
        throw new UnsupportedOperationException("DelegateAdapter doesn't support setLayoutHelpers directly");
    }

    public void setAdapters(@Nullable List<Adapter> list) {
        int incrementAndGet;
        clear();
        if (list == null) {
            list = Collections.emptyList();
        }
        LinkedList linkedList = new LinkedList();
        this.mTotal = 0;
        boolean z = true;
        for (Adapter adapter : list) {
            int i = this.mTotal;
            if (this.mIndexGen == null) {
                incrementAndGet = this.mIndex;
                this.mIndex = incrementAndGet + 1;
            } else {
                incrementAndGet = this.mIndexGen.incrementAndGet();
            }
            AdapterDataObserver adapterDataObserver = new AdapterDataObserver(i, incrementAndGet);
            adapter.registerAdapterDataObserver(adapterDataObserver);
            z = z && adapter.hasStableIds();
            LayoutHelper onCreateLayoutHelper = adapter.onCreateLayoutHelper();
            onCreateLayoutHelper.setItemCount(adapter.getItemCount());
            this.mTotal += onCreateLayoutHelper.getItemCount();
            linkedList.add(onCreateLayoutHelper);
            Pair<AdapterDataObserver, Adapter> create = Pair.create(adapterDataObserver, adapter);
            this.mIndexAry.put(adapterDataObserver.mIndex, create);
            this.mAdapters.add(create);
        }
        if (!hasObservers()) {
            super.setHasStableIds(z);
        }
        super.setLayoutHelpers(linkedList);
    }

    public void addAdapters(int i, @Nullable List<Adapter> list) {
        if (list == null || list.size() == 0) {
            return;
        }
        if (i < 0) {
            i = 0;
        }
        if (i > this.mAdapters.size()) {
            i = this.mAdapters.size();
        }
        ArrayList arrayList = new ArrayList();
        Iterator<Pair<AdapterDataObserver, Adapter>> it = this.mAdapters.iterator();
        while (it.hasNext()) {
            arrayList.add((Adapter) it.next().second);
        }
        Iterator<Adapter> it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList.add(i, it2.next());
            i++;
        }
        setAdapters(arrayList);
    }

    public void addAdapters(@Nullable List<Adapter> list) {
        addAdapters(this.mAdapters.size(), list);
    }

    public void addAdapter(int i, @Nullable Adapter adapter) {
        addAdapters(i, Collections.singletonList(adapter));
    }

    public void addAdapter(@Nullable Adapter adapter) {
        addAdapters(Collections.singletonList(adapter));
    }

    public void removeFirstAdapter() {
        if (this.mAdapters == null || this.mAdapters.isEmpty()) {
            return;
        }
        removeAdapter((Adapter) this.mAdapters.get(0).second);
    }

    public void removeLastAdapter() {
        if (this.mAdapters == null || this.mAdapters.isEmpty()) {
            return;
        }
        removeAdapter((Adapter) this.mAdapters.get(this.mAdapters.size() - 1).second);
    }

    public void removeAdapter(int i) {
        if (i < 0 || i >= this.mAdapters.size()) {
            return;
        }
        removeAdapter((Adapter) this.mAdapters.get(i).second);
    }

    public void removeAdapter(@Nullable Adapter adapter) {
        if (adapter == null) {
            return;
        }
        removeAdapters(Collections.singletonList(adapter));
    }

    public void removeAdapters(@Nullable List<Adapter> list) {
        if (list == null || list.isEmpty()) {
            return;
        }
        LinkedList linkedList = new LinkedList(super.getLayoutHelpers());
        int size = list.size();
        for (int i = 0; i < size; i++) {
            Adapter adapter = list.get(i);
            Iterator<Pair<AdapterDataObserver, Adapter>> it = this.mAdapters.iterator();
            while (true) {
                if (it.hasNext()) {
                    Pair<AdapterDataObserver, Adapter> next = it.next();
                    Adapter adapter2 = (Adapter) next.second;
                    if (adapter2.equals(adapter)) {
                        adapter2.unregisterAdapterDataObserver((RecyclerView.AdapterDataObserver) next.first);
                        int findAdapterPositionByIndex = findAdapterPositionByIndex(((AdapterDataObserver) next.first).mIndex);
                        if (findAdapterPositionByIndex >= 0 && findAdapterPositionByIndex < linkedList.size()) {
                            linkedList.remove(findAdapterPositionByIndex);
                        }
                        it.remove();
                    }
                }
            }
        }
        ArrayList arrayList = new ArrayList();
        Iterator<Pair<AdapterDataObserver, Adapter>> it2 = this.mAdapters.iterator();
        while (it2.hasNext()) {
            arrayList.add(it2.next().second);
        }
        setAdapters(arrayList);
    }

    public void clear() {
        this.mTotal = 0;
        this.mIndex = 0;
        if (this.mIndexGen != null) {
            this.mIndexGen.set(0);
        }
        this.mLayoutManager.setLayoutHelpers(null);
        for (Pair<AdapterDataObserver, Adapter> pair : this.mAdapters) {
            ((Adapter) pair.second).unregisterAdapterDataObserver((RecyclerView.AdapterDataObserver) pair.first);
        }
        this.mItemTypeAry.clear();
        this.mAdapters.clear();
        this.mIndexAry.clear();
    }

    public int getAdaptersCount() {
        if (this.mAdapters == null) {
            return 0;
        }
        return this.mAdapters.size();
    }

    public int findOffsetPosition(int i) {
        Pair<AdapterDataObserver, Adapter> findAdapterByPosition = findAdapterByPosition(i);
        if (findAdapterByPosition == null) {
            return -1;
        }
        return i - ((AdapterDataObserver) findAdapterByPosition.first).mStartPosition;
    }

    @Nullable
    public Pair<AdapterDataObserver, Adapter> findAdapterByPosition(int i) {
        int size = this.mAdapters.size();
        if (size == 0) {
            return null;
        }
        int i2 = 0;
        int i3 = size - 1;
        while (i2 <= i3) {
            int i4 = (i2 + i3) / 2;
            Pair<AdapterDataObserver, Adapter> pair = this.mAdapters.get(i4);
            int itemCount = (((AdapterDataObserver) pair.first).mStartPosition + ((Adapter) pair.second).getItemCount()) - 1;
            if (((AdapterDataObserver) pair.first).mStartPosition > i) {
                i3 = i4 - 1;
            } else if (itemCount < i) {
                i2 = i4 + 1;
            } else if (((AdapterDataObserver) pair.first).mStartPosition <= i && itemCount >= i) {
                return pair;
            }
        }
        return null;
    }

    public int findAdapterPositionByIndex(int i) {
        Pair<AdapterDataObserver, Adapter> pair = this.mIndexAry.get(i);
        if (pair == null) {
            return -1;
        }
        return this.mAdapters.indexOf(pair);
    }

    public Adapter findAdapterByIndex(int i) {
        return (Adapter) this.mIndexAry.get(i).second;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: /home/user/work/dex/classes3.dex */
    public class AdapterDataObserver extends RecyclerView.AdapterDataObserver {
        int mIndex;
        int mStartPosition;

        public AdapterDataObserver(int i, int i2) {
            this.mIndex = -1;
            this.mStartPosition = i;
            this.mIndex = i2;
        }

        public void updateStartPositionAndIndex(int i, int i2) {
            this.mStartPosition = i;
            this.mIndex = i2;
        }

        public int getStartPosition() {
            return this.mStartPosition;
        }

        public int getIndex() {
            return this.mIndex;
        }

        private boolean updateLayoutHelper() {
            int findAdapterPositionByIndex;
            if (this.mIndex < 0 || (findAdapterPositionByIndex = DelegateAdapter.this.findAdapterPositionByIndex(this.mIndex)) < 0) {
                return false;
            }
            Pair pair = (Pair) DelegateAdapter.this.mAdapters.get(findAdapterPositionByIndex);
            LinkedList linkedList = new LinkedList(DelegateAdapter.this.getLayoutHelpers());
            LayoutHelper layoutHelper = (LayoutHelper) linkedList.get(findAdapterPositionByIndex);
            if (layoutHelper.getItemCount() != ((Adapter) pair.second).getItemCount()) {
                layoutHelper.setItemCount(((Adapter) pair.second).getItemCount());
                DelegateAdapter.this.mTotal = this.mStartPosition + ((Adapter) pair.second).getItemCount();
                for (int i = findAdapterPositionByIndex + 1; i < DelegateAdapter.this.mAdapters.size(); i++) {
                    Pair pair2 = (Pair) DelegateAdapter.this.mAdapters.get(i);
                    ((AdapterDataObserver) pair2.first).mStartPosition = DelegateAdapter.this.mTotal;
                    DelegateAdapter.this.mTotal += ((Adapter) pair2.second).getItemCount();
                }
                DelegateAdapter.super.setLayoutHelpers(linkedList);
            }
            return true;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onChanged() {
            if (updateLayoutHelper()) {
                DelegateAdapter.this.notifyDataSetChanged();
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeRemoved(int i, int i2) {
            if (updateLayoutHelper()) {
                DelegateAdapter.this.notifyItemRangeRemoved(this.mStartPosition + i, i2);
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeInserted(int i, int i2) {
            if (updateLayoutHelper()) {
                DelegateAdapter.this.notifyItemRangeInserted(this.mStartPosition + i, i2);
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeMoved(int i, int i2, int i3) {
            if (updateLayoutHelper()) {
                DelegateAdapter.this.notifyItemMoved(this.mStartPosition + i, this.mStartPosition + i2);
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeChanged(int i, int i2) {
            if (updateLayoutHelper()) {
                DelegateAdapter.this.notifyItemRangeChanged(this.mStartPosition + i, i2);
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeChanged(int i, int i2, Object obj) {
            if (updateLayoutHelper()) {
                DelegateAdapter.this.notifyItemRangeChanged(this.mStartPosition + i, i2, obj);
            }
        }
    }

    public static Adapter<? extends RecyclerView.ViewHolder> simpleAdapter(@NonNull View view) {
        return new SimpleViewAdapter(view);
    }

    public static Adapter<? extends RecyclerView.ViewHolder> simpleAdapter(@NonNull View view, @NonNull LayoutHelper layoutHelper) {
        return new SimpleViewAdapter(view, layoutHelper);
    }

    /* loaded from: /home/user/work/dex/classes3.dex */
    static class SimpleViewHolder extends RecyclerView.ViewHolder {
        public SimpleViewHolder(View view) {
            super(view);
        }
    }

    /* loaded from: /home/user/work/dex/classes3.dex */
    static class SimpleViewAdapter extends Adapter<RecyclerView.ViewHolder> {
        private LayoutHelper mLayoutHelper;
        private View mView;

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return 1;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
        }

        public SimpleViewAdapter(@NonNull View view, @NonNull LayoutHelper layoutHelper) {
            this.mView = view;
            this.mLayoutHelper = layoutHelper;
        }

        public SimpleViewAdapter(@NonNull View view) {
            this(view, new SingleLayoutHelper());
        }

        @Override // com.alibaba.android.vlayout.DelegateAdapter.Adapter
        public LayoutHelper onCreateLayoutHelper() {
            return new SingleLayoutHelper();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            return new SimpleViewHolder(this.mView);
        }
    }

    /* loaded from: /home/user/work/dex/classes3.dex */
    public static abstract class Adapter<VH extends RecyclerView.ViewHolder> extends RecyclerView.Adapter<VH> {
        protected void onBindViewHolderWithOffset(VH vh, int i, int i2) {
        }

        public abstract LayoutHelper onCreateLayoutHelper();

        protected void onBindViewHolderWithOffset(VH vh, int i, int i2, List<Object> list) {
            onBindViewHolderWithOffset(vh, i, i2);
        }
    }
}
