package com.android.internal.widget.helper;

import android.graphics.Canvas;
import android.view.View;
import com.android.internal.widget.RecyclerView;

/* loaded from: /home/user/work/dex/classes3.dex */
class ItemTouchUIUtilImpl implements ItemTouchUIUtil {
    @Override // com.android.internal.widget.helper.ItemTouchUIUtil
    public void onDrawOver(Canvas canvas, RecyclerView recyclerView, View view, float f, float f2, int i, boolean z) {
    }

    @Override // com.android.internal.widget.helper.ItemTouchUIUtil
    public void onSelected(View view) {
    }

    @Override // com.android.internal.widget.helper.ItemTouchUIUtil
    public void onDraw(Canvas canvas, RecyclerView recyclerView, View view, float f, float f2, int i, boolean z) {
        if (z && view.getTag(16909004) == null) {
            Float valueOf = Float.valueOf(view.getElevation());
            view.setElevation(findMaxElevation(recyclerView, view) + 1.0f);
            view.setTag(16909004, valueOf);
        }
        view.setTranslationX(f);
        view.setTranslationY(f2);
    }

    private float findMaxElevation(RecyclerView recyclerView, View view) {
        int childCount = recyclerView.getChildCount();
        float f = 0.0f;
        for (int i = 0; i < childCount; i++) {
            View childAt = recyclerView.getChildAt(i);
            if (childAt != view) {
                float elevation = childAt.getElevation();
                if (elevation > f) {
                    f = elevation;
                }
            }
        }
        return f;
    }

    @Override // com.android.internal.widget.helper.ItemTouchUIUtil
    public void clearView(View view) {
        Object tag = view.getTag(16909004);
        if (tag != null && (tag instanceof Float)) {
            view.setElevation(((Float) tag).floatValue());
        }
        view.setTag(16909004, null);
        view.setTranslationX(0.0f);
        view.setTranslationY(0.0f);
    }
}
