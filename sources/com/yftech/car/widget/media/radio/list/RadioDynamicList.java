package com.yftech.car.widget.media.radio.list;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.yftech.car.media.radio.entity.DataOfRadio;
import com.yftech.car.widget.media.R;
import com.yftech.car.widget.media.manager.RadioManager;
import com.yftech.car.widget.media.radio.list.adapter.DynamicAdapter;
import com.yftech.car.widget.media.recyclerview.widget.GridLayoutManager;
import com.yftech.car.widget.media.recyclerview.widget.LinearLayoutManager;
import com.yftech.car.widget.media.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.List;

/* loaded from: /home/user/work/dex/classes3.dex */
public class RadioDynamicList extends RecyclerView {
    public static final int FAVOR_LIST = 2;
    public static final int SCAN_SEARCH_LIST = 1;
    private static final String TAG = "RadioDynamicList";
    private DynamicAdapter mAdapter;
    private boolean mInitAdapter;
    private LinearLayoutManager mLayoutManager;
    private final List<DataOfRadio> mList;
    private int mListType;

    private RadioDynamicList(@NonNull Context context) {
        super(context);
        this.mListType = 1;
        this.mList = new ArrayList();
    }

    public RadioDynamicList(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.recyclerViewStyle);
    }

    public RadioDynamicList(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mListType = 1;
        this.mList = new ArrayList();
        this.mAdapter = new DynamicAdapter(this.mList, context, attributeSet);
        this.mListType = context.obtainStyledAttributes(attributeSet, R.styleable.RadioDynamicList).getInt(R.styleable.RadioDynamicList_list_type, 1);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.radio_list);
        int i2 = obtainStyledAttributes.getInt(R.styleable.radio_list_span_count, 1);
        int i3 = obtainStyledAttributes.getInt(R.styleable.radio_list_list_orientation, 0);
        if (i2 > 1) {
            this.mLayoutManager = new GridLayoutManager(context, i2);
        } else {
            this.mLayoutManager = new LinearLayoutManager(context);
        }
        this.mLayoutManager.setOrientation(i3);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        setLayoutManager(this.mLayoutManager);
        updateList(RadioManager.getInstance().getFreq());
        setAdapter(this.mAdapter);
        this.mInitAdapter = true;
    }

    public boolean isType(int i) {
        return this.mListType == i;
    }

    public void updateList(DataOfRadio dataOfRadio) {
        List<DataOfRadio> favorsList;
        if (dataOfRadio != null) {
            this.mList.clear();
            if (this.mListType == 1) {
                favorsList = RadioManager.getInstance().getSearchList(dataOfRadio.getType());
            } else {
                favorsList = RadioManager.getInstance().getFavorsList(dataOfRadio.getType());
            }
            if (favorsList != null && favorsList.size() > 0) {
                this.mList.addAll(favorsList);
            }
        }
        if (this.mInitAdapter) {
            this.mAdapter.notifyDataSetChanged();
        }
        if (dataOfRadio != null) {
            updatePosition(dataOfRadio);
        }
    }

    private void updatePosition(DataOfRadio dataOfRadio) {
        for (int i = 0; i < this.mList.size(); i++) {
            if (dataOfRadio.getFreq() == this.mList.get(i).getFreq()) {
                int findFirstVisibleItemPosition = this.mLayoutManager.findFirstVisibleItemPosition();
                if (i >= findFirstVisibleItemPosition + 1 && i <= this.mLayoutManager.findLastVisibleItemPosition() - 1) {
                    Log.d(TAG, "no update adapter firstItemPosition ==" + findFirstVisibleItemPosition);
                    return;
                }
                if (i > findFirstVisibleItemPosition) {
                    View childAt = this.mLayoutManager.getChildAt(findFirstVisibleItemPosition);
                    if (childAt != null) {
                        int height = getHeight();
                        int height2 = childAt.getHeight();
                        this.mLayoutManager.scrollToPositionWithOffset(i, (((height / height2) - 1) * height2) + (height % height2));
                        return;
                    }
                    this.mLayoutManager.scrollToPositionWithOffset(i, 0);
                    return;
                }
                this.mLayoutManager.scrollToPositionWithOffset(i, 0);
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.yftech.car.widget.media.recyclerview.widget.RecyclerView, android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
    }

    @Override // com.yftech.car.widget.media.recyclerview.widget.RecyclerView
    public void onChildDetachedFromWindow(@NonNull View view) {
        super.onChildDetachedFromWindow(view);
    }
}
