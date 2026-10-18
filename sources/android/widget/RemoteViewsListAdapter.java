package android.widget;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: /home/user/work/dex/classes2.dex */
public class RemoteViewsListAdapter extends BaseAdapter {
    private Context mContext;
    private ArrayList<RemoteViews> mRemoteViewsList;
    private int mViewTypeCount;
    private ArrayList<Integer> mViewTypes = new ArrayList<>();

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return null;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public boolean hasStableIds() {
        return false;
    }

    public RemoteViewsListAdapter(Context context, ArrayList<RemoteViews> arrayList, int i) {
        this.mContext = context;
        this.mRemoteViewsList = arrayList;
        this.mViewTypeCount = i;
        init();
    }

    public void setViewsList(ArrayList<RemoteViews> arrayList) {
        this.mRemoteViewsList = arrayList;
        init();
        notifyDataSetChanged();
    }

    private void init() {
        if (this.mRemoteViewsList == null) {
            return;
        }
        this.mViewTypes.clear();
        Iterator<RemoteViews> it = this.mRemoteViewsList.iterator();
        while (it.hasNext()) {
            RemoteViews next = it.next();
            if (!this.mViewTypes.contains(Integer.valueOf(next.getLayoutId()))) {
                this.mViewTypes.add(Integer.valueOf(next.getLayoutId()));
            }
        }
        if (this.mViewTypes.size() > this.mViewTypeCount || this.mViewTypeCount < 1) {
            throw new RuntimeException("Invalid view type count -- view type count must be >= 1and must be as large as the total number of distinct view types");
        }
    }

    @Override // android.widget.Adapter
    public int getCount() {
        if (this.mRemoteViewsList != null) {
            return this.mRemoteViewsList.size();
        }
        return 0;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        if (i >= getCount()) {
            return null;
        }
        RemoteViews remoteViews = this.mRemoteViewsList.get(i);
        remoteViews.setIsWidgetCollectionChild(true);
        if (view != null && remoteViews != null && view.getId() == remoteViews.getLayoutId()) {
            remoteViews.reapply(this.mContext, view);
            return view;
        }
        return remoteViews.apply(this.mContext, viewGroup);
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getItemViewType(int i) {
        if (i >= getCount()) {
            return 0;
        }
        return this.mViewTypes.indexOf(Integer.valueOf(this.mRemoteViewsList.get(i).getLayoutId()));
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        return this.mViewTypeCount;
    }
}
