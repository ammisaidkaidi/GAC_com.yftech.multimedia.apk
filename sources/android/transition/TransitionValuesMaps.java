package android.transition;

import android.util.ArrayMap;
import android.util.LongSparseArray;
import android.util.SparseArray;
import android.view.View;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: /home/user/work/dex/classes2.dex */
public class TransitionValuesMaps {
    ArrayMap<View, TransitionValues> viewValues = new ArrayMap<>();
    SparseArray<View> idValues = new SparseArray<>();
    LongSparseArray<View> itemIdValues = new LongSparseArray<>();
    ArrayMap<String, View> nameValues = new ArrayMap<>();
}
