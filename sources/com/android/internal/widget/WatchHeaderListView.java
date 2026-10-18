package com.android.internal.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.HeaderViewListAdapter;
import android.widget.ListAdapter;
import android.widget.ListView;
import java.util.ArrayList;
import java.util.function.Predicate;

/* loaded from: /home/user/work/dex/classes3.dex */
public class WatchHeaderListView extends ListView {
    private View mTopPanel;

    public WatchHeaderListView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public WatchHeaderListView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public WatchHeaderListView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
    }

    protected HeaderViewListAdapter wrapHeaderListAdapterInternal(ArrayList<ListView.FixedViewInfo> arrayList, ArrayList<ListView.FixedViewInfo> arrayList2, ListAdapter listAdapter) {
        return new WatchHeaderListAdapter(arrayList, arrayList2, listAdapter);
    }

    @Override // android.widget.AdapterView, android.view.ViewGroup, android.view.ViewManager
    public void addView(View view, ViewGroup.LayoutParams layoutParams) {
        if (this.mTopPanel == null) {
            setTopPanel(view);
            return;
        }
        throw new IllegalStateException("WatchHeaderListView can host only one header");
    }

    public void setTopPanel(View view) {
        this.mTopPanel = view;
        wrapAdapterIfNecessary();
    }

    @Override // android.widget.AdapterView
    public void setAdapter(ListAdapter listAdapter) {
        super.setAdapter(listAdapter);
        wrapAdapterIfNecessary();
    }

    protected View findViewTraversal(int i) {
        View findViewTraversal = super.findViewTraversal(i);
        return (findViewTraversal != null || this.mTopPanel == null || this.mTopPanel.isRootNamespace()) ? findViewTraversal : this.mTopPanel.findViewById(i);
    }

    protected View findViewWithTagTraversal(Object obj) {
        View findViewWithTagTraversal = super.findViewWithTagTraversal(obj);
        return (findViewWithTagTraversal != null || this.mTopPanel == null || this.mTopPanel.isRootNamespace()) ? findViewWithTagTraversal : this.mTopPanel.findViewWithTag(obj);
    }

    protected <T extends View> T findViewByPredicateTraversal(Predicate<View> predicate, View view) {
        T t = (T) super.findViewByPredicateTraversal(predicate, view);
        return (t != null || this.mTopPanel == null || this.mTopPanel == view || this.mTopPanel.isRootNamespace()) ? t : (T) this.mTopPanel.findViewByPredicate(predicate);
    }

    @Override // android.widget.ListView
    public int getHeaderViewsCount() {
        if (this.mTopPanel == null) {
            return super.getHeaderViewsCount();
        }
        return (this.mTopPanel.getVisibility() == 8 ? 0 : 1) + super.getHeaderViewsCount();
    }

    private void wrapAdapterIfNecessary() {
        ListAdapter adapter = getAdapter();
        if (adapter == null || this.mTopPanel == null) {
            return;
        }
        if (!(adapter instanceof WatchHeaderListAdapter)) {
            wrapHeaderListAdapterInternal();
        }
        ((WatchHeaderListAdapter) getAdapter()).setTopPanel(this.mTopPanel);
        dispatchDataSetObserverOnChangedInternal();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes3.dex */
    public static class WatchHeaderListAdapter extends HeaderViewListAdapter {
        private View mTopPanel;

        public WatchHeaderListAdapter(ArrayList<ListView.FixedViewInfo> arrayList, ArrayList<ListView.FixedViewInfo> arrayList2, ListAdapter listAdapter) {
            super(arrayList, arrayList2, listAdapter);
        }

        public void setTopPanel(View view) {
            this.mTopPanel = view;
        }

        private int getTopPanelCount() {
            return (this.mTopPanel == null || this.mTopPanel.getVisibility() == 8) ? 0 : 1;
        }

        @Override // android.widget.HeaderViewListAdapter, android.widget.Adapter
        public int getCount() {
            return super.getCount() + getTopPanelCount();
        }

        @Override // android.widget.HeaderViewListAdapter, android.widget.ListAdapter
        public boolean areAllItemsEnabled() {
            return getTopPanelCount() == 0 && super.areAllItemsEnabled();
        }

        @Override // android.widget.HeaderViewListAdapter, android.widget.ListAdapter
        public boolean isEnabled(int i) {
            int topPanelCount = getTopPanelCount();
            if (i < topPanelCount) {
                return false;
            }
            return super.isEnabled(i - topPanelCount);
        }

        @Override // android.widget.HeaderViewListAdapter, android.widget.Adapter
        public Object getItem(int i) {
            int topPanelCount = getTopPanelCount();
            if (i < topPanelCount) {
                return null;
            }
            return super.getItem(i - topPanelCount);
        }

        @Override // android.widget.HeaderViewListAdapter, android.widget.Adapter
        public long getItemId(int i) {
            int i2;
            int headersCount = getHeadersCount() + getTopPanelCount();
            if (getWrappedAdapter() == null || i < headersCount || (i2 = i - headersCount) >= getWrappedAdapter().getCount()) {
                return -1L;
            }
            return getWrappedAdapter().getItemId(i2);
        }

        @Override // android.widget.HeaderViewListAdapter, android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            int topPanelCount = getTopPanelCount();
            return i < topPanelCount ? this.mTopPanel : super.getView(i - topPanelCount, view, viewGroup);
        }

        @Override // android.widget.HeaderViewListAdapter, android.widget.Adapter
        public int getItemViewType(int i) {
            int i2;
            int headersCount = getHeadersCount() + getTopPanelCount();
            if (getWrappedAdapter() == null || i < headersCount || (i2 = i - headersCount) >= getWrappedAdapter().getCount()) {
                return -2;
            }
            return getWrappedAdapter().getItemViewType(i2);
        }
    }
}
