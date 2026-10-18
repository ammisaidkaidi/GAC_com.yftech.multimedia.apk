package android.widget;

import java.util.ArrayList;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: /home/user/work/dex/classes2.dex */
public class ExpandableListPosition {
    public static final int CHILD = 1;
    public static final int GROUP = 2;
    private static final int MAX_POOL_SIZE = 5;
    private static ArrayList<ExpandableListPosition> sPool = new ArrayList<>(5);
    public int childPos;
    int flatListPos;
    public int groupPos;
    public int type;

    private void resetState() {
        this.groupPos = 0;
        this.childPos = 0;
        this.flatListPos = 0;
        this.type = 0;
    }

    private ExpandableListPosition() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long getPackedPosition() {
        return this.type == 1 ? ExpandableListView.getPackedPositionForChild(this.groupPos, this.childPos) : ExpandableListView.getPackedPositionForGroup(this.groupPos);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ExpandableListPosition obtainGroupPosition(int i) {
        return obtain(2, i, 0, 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ExpandableListPosition obtainChildPosition(int i, int i2) {
        return obtain(1, i, i2, 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ExpandableListPosition obtainPosition(long j) {
        if (j == 4294967295L) {
            return null;
        }
        ExpandableListPosition recycledOrCreate = getRecycledOrCreate();
        recycledOrCreate.groupPos = ExpandableListView.getPackedPositionGroup(j);
        if (ExpandableListView.getPackedPositionType(j) == 1) {
            recycledOrCreate.type = 1;
            recycledOrCreate.childPos = ExpandableListView.getPackedPositionChild(j);
        } else {
            recycledOrCreate.type = 2;
        }
        return recycledOrCreate;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ExpandableListPosition obtain(int i, int i2, int i3, int i4) {
        ExpandableListPosition recycledOrCreate = getRecycledOrCreate();
        recycledOrCreate.type = i;
        recycledOrCreate.groupPos = i2;
        recycledOrCreate.childPos = i3;
        recycledOrCreate.flatListPos = i4;
        return recycledOrCreate;
    }

    private static ExpandableListPosition getRecycledOrCreate() {
        synchronized (sPool) {
            if (sPool.size() > 0) {
                ExpandableListPosition remove = sPool.remove(0);
                remove.resetState();
                return remove;
            }
            return new ExpandableListPosition();
        }
    }

    public void recycle() {
        synchronized (sPool) {
            if (sPool.size() < 5) {
                sPool.add(this);
            }
        }
    }
}
