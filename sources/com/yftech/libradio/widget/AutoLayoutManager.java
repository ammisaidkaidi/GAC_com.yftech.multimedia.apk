package com.yftech.libradio.widget;

import android.graphics.Rect;
import android.util.SparseArray;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.List;

/* loaded from: /home/user/work/dex/classes4.dex */
public class AutoLayoutManager extends RecyclerView.LayoutManager {
    private int totalHeight = 0;
    private SparseArray<Rect> allItemframs = new SparseArray<>();
    private SparseArray<ItemLine> allLines = new SparseArray<>();
    private int verticalScrollOffset = 0;

    public boolean canScrollVertically() {
        return true;
    }

    public RecyclerView.LayoutParams generateDefaultLayoutParams() {
        return new RecyclerView.LayoutParams(-2, -2);
    }

    public void onLayoutChildren(RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (getItemCount() > 0 && !state.isPreLayout()) {
            detachAndScrapAttachedViews(recycler);
            int i = 0;
            int i2 = 0;
            int i3 = 0;
            int i4 = 0;
            for (int i5 = 0; i5 < getItemCount(); i5++) {
                View viewForPosition = recycler.getViewForPosition(i5);
                addView(viewForPosition);
                measureChildWithMargins(viewForPosition, 0, 0);
                int decoratedMeasuredWidth = getDecoratedMeasuredWidth(viewForPosition);
                i2 = getDecoratedMeasuredHeight(viewForPosition);
                Rect rect = this.allItemframs.get(i5);
                if (rect == null) {
                    rect = new Rect();
                }
                if (i5 == 0) {
                    this.allLines.put(i3, new ItemLine(i3, new ArrayList()));
                    i3++;
                }
                int i6 = i4 + decoratedMeasuredWidth;
                if (i6 > getWidth()) {
                    if (i5 > 0) {
                        Rect rect2 = this.allItemframs.get(i5 - 1);
                        i = rect2 != null ? i + (rect2.bottom - rect2.top) : i + i2;
                    } else {
                        i += i2;
                    }
                    rect.set(0, i, decoratedMeasuredWidth, i + i2);
                    ArrayList arrayList = new ArrayList();
                    arrayList.add(Integer.valueOf(i5));
                    this.allLines.put(i3, new ItemLine(i3, arrayList));
                    i3++;
                    i4 = decoratedMeasuredWidth;
                } else {
                    rect.set(i4, i, i6, i + i2);
                    this.allLines.get(i3 - 1).frameIndexs.add(Integer.valueOf(i5));
                    i4 = i6;
                }
                this.allItemframs.put(i5, rect);
            }
            this.totalHeight = i + i2;
            recyclerViewFillView(recycler, state);
        }
    }

    private void recyclerViewFillView(RecyclerView.Recycler recycler, RecyclerView.State state) {
        detachAndScrapAttachedViews(recycler);
        Rect rect = new Rect(0, this.verticalScrollOffset, getWidth(), this.verticalScrollOffset + getHeight());
        new Rect();
        for (int i = 0; i < getChildCount(); i++) {
            View childAt = getChildAt(i);
            if (!Rect.intersects(rect, this.allItemframs.get(i))) {
                removeAndRecycleView(childAt, recycler);
            }
        }
        for (int i2 = 0; i2 < getItemCount(); i2++) {
            if (Rect.intersects(rect, this.allItemframs.get(i2))) {
                View viewForPosition = recycler.getViewForPosition(i2);
                measureChildWithMargins(viewForPosition, 0, 0);
                addView(viewForPosition);
                Rect rect2 = this.allItemframs.get(i2);
                layoutDecorated(viewForPosition, rect2.left, rect2.top - this.verticalScrollOffset, rect2.right, rect2.bottom - this.verticalScrollOffset);
            }
        }
    }

    public int scrollVerticallyBy(int i, RecyclerView.Recycler recycler, RecyclerView.State state) {
        detachAndScrapAttachedViews(recycler);
        int height = getHeight();
        int i2 = this.totalHeight > height ? this.totalHeight - height : 0;
        if (this.verticalScrollOffset + i < 0) {
            i = -this.verticalScrollOffset;
        } else if (this.verticalScrollOffset + i > i2) {
            i = i2 - this.verticalScrollOffset;
        }
        this.verticalScrollOffset += i;
        offsetChildrenVertical(i);
        recyclerViewFillView(recycler, state);
        return i;
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    private class ItemLine {
        private List<Integer> frameIndexs;
        private int lineIndex;

        public ItemLine(int i, List<Integer> list) {
            this.lineIndex = i;
            this.frameIndexs = list;
        }
    }
}
