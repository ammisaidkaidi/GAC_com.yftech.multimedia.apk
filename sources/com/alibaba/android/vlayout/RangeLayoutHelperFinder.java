package com.alibaba.android.vlayout;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.ListIterator;

/* loaded from: /home/user/work/dex/classes3.dex */
public class RangeLayoutHelperFinder extends LayoutHelperFinder {

    @NonNull
    private List<LayoutHelperItem> mLayoutHelperItems = new LinkedList();

    @NonNull
    private List<LayoutHelper> mLayoutHelpers = new LinkedList();

    @NonNull
    private Comparator<LayoutHelperItem> mLayoutHelperItemComparator = new Comparator<LayoutHelperItem>() { // from class: com.alibaba.android.vlayout.RangeLayoutHelperFinder.1
        @Override // java.util.Comparator
        public int compare(LayoutHelperItem layoutHelperItem, LayoutHelperItem layoutHelperItem2) {
            return layoutHelperItem.getStartPosition() - layoutHelperItem2.getStartPosition();
        }
    };

    @Override // java.lang.Iterable
    public Iterator<LayoutHelper> iterator() {
        return Collections.unmodifiableList(this.mLayoutHelpers).iterator();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.alibaba.android.vlayout.LayoutHelperFinder
    public Iterable<LayoutHelper> reverse() {
        final ListIterator<LayoutHelper> listIterator = this.mLayoutHelpers.listIterator(this.mLayoutHelpers.size());
        return new Iterable<LayoutHelper>() { // from class: com.alibaba.android.vlayout.RangeLayoutHelperFinder.2
            @Override // java.lang.Iterable
            public Iterator<LayoutHelper> iterator() {
                return new Iterator<LayoutHelper>() { // from class: com.alibaba.android.vlayout.RangeLayoutHelperFinder.2.1
                    @Override // java.util.Iterator
                    public boolean hasNext() {
                        return listIterator.hasPrevious();
                    }

                    /* JADX WARN: Can't rename method to resolve collision */
                    @Override // java.util.Iterator
                    public LayoutHelper next() {
                        return (LayoutHelper) listIterator.previous();
                    }

                    @Override // java.util.Iterator
                    public void remove() {
                        listIterator.remove();
                    }
                };
            }
        };
    }

    @Override // com.alibaba.android.vlayout.LayoutHelperFinder
    public void setLayouts(@Nullable List<LayoutHelper> list) {
        this.mLayoutHelpers.clear();
        this.mLayoutHelperItems.clear();
        if (list != null) {
            for (LayoutHelper layoutHelper : list) {
                this.mLayoutHelpers.add(layoutHelper);
                this.mLayoutHelperItems.add(new LayoutHelperItem(layoutHelper));
            }
            Collections.sort(this.mLayoutHelperItems, this.mLayoutHelperItemComparator);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.alibaba.android.vlayout.LayoutHelperFinder
    @NonNull
    public List<LayoutHelper> getLayoutHelpers() {
        return Collections.unmodifiableList(this.mLayoutHelpers);
    }

    @Override // com.alibaba.android.vlayout.LayoutHelperFinder
    @Nullable
    public LayoutHelper getLayoutHelper(int i) {
        LayoutHelperItem layoutHelperItem;
        int size = this.mLayoutHelperItems.size();
        if (size == 0) {
            return null;
        }
        int i2 = 0;
        int i3 = size - 1;
        while (true) {
            if (i2 > i3) {
                layoutHelperItem = null;
                break;
            }
            int i4 = (i2 + i3) / 2;
            layoutHelperItem = this.mLayoutHelperItems.get(i4);
            if (layoutHelperItem.getStartPosition() <= i) {
                if (layoutHelperItem.getEndPosition() >= i) {
                    if (layoutHelperItem.getStartPosition() <= i && layoutHelperItem.getEndPosition() >= i) {
                        break;
                    }
                } else {
                    i2 = i4 + 1;
                }
            } else {
                i3 = i4 - 1;
            }
        }
        if (layoutHelperItem == null) {
            return null;
        }
        return layoutHelperItem.layoutHelper;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes3.dex */
    public static class LayoutHelperItem {
        LayoutHelper layoutHelper;

        LayoutHelperItem(LayoutHelper layoutHelper) {
            this.layoutHelper = layoutHelper;
        }

        public int getStartPosition() {
            return this.layoutHelper.getRange().getLower().intValue();
        }

        public int getEndPosition() {
            return this.layoutHelper.getRange().getUpper().intValue();
        }
    }
}
