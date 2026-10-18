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
import com.yftech.car.widget.media.list.adapter.ListOneLayoutAdapter;
import com.yftech.car.widget.media.manager.RadioManager;
import com.yftech.car.widget.media.radio.list.adapter.RadioDataAdapter;
import com.yftech.car.widget.media.radio.text.RadioDataText;
import com.yftech.car.widget.media.recyclerview.widget.GridLayoutManager;
import com.yftech.car.widget.media.recyclerview.widget.LinearLayoutManager;
import com.yftech.car.widget.media.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.List;

/* loaded from: /home/user/work/dex/classes3.dex */
public class RadioDataList extends RecyclerView {
    public static final int FAVOR_LIST = 2;
    public static final int SCAN_SEARCH_LIST = 1;
    private static final String TAG = "RadioDataList";
    private RadioDataAdapter mAdapter;
    private ListOneLayoutAdapter mCollectListEmptyAdapter;
    private boolean mInitAdapter;
    private LinearLayoutManager mLayoutManager;
    private final List<DataOfRadio> mList;
    private ListOneLayoutAdapter mListEmptyAdapter;
    private int mListType;
    private List<RadioDataText> mRadioDataTextList;

    public RadioDataList(@NonNull Context context) {
        super(context);
        this.mListType = 1;
        this.mList = new ArrayList();
    }

    public RadioDataList(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.recyclerViewStyle);
    }

    public RadioDataList(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mListType = 1;
        this.mList = new ArrayList();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.RadioDataList);
        int i2 = obtainStyledAttributes.getInt(R.styleable.RadioDataList_radio_data_span_count, 1);
        int i3 = obtainStyledAttributes.getInt(R.styleable.RadioDataList_radio_data_orientation, 1);
        this.mListType = obtainStyledAttributes.getInt(R.styleable.RadioDataList_radio_data_list_type, 1);
        if (i2 > 1) {
            this.mLayoutManager = new GridLayoutManager(context, i2);
        } else {
            this.mLayoutManager = new LinearLayoutManager(context);
        }
        this.mLayoutManager.setOrientation(i3);
        int resourceId = obtainStyledAttributes.getResourceId(R.styleable.RadioDataList_radio_data_list_empty_layout_id, -1);
        if (resourceId != -1) {
            this.mListEmptyAdapter = new ListOneLayoutAdapter(resourceId);
        }
        int resourceId2 = obtainStyledAttributes.getResourceId(R.styleable.RadioDataList_radio_data_collect_list_empty_layout_id, -1);
        if (resourceId2 != -1) {
            this.mCollectListEmptyAdapter = new ListOneLayoutAdapter(resourceId2);
        }
        this.mAdapter = new RadioDataAdapter(this.mList, obtainStyledAttributes);
        this.mAdapter.setOnItemRadioListener(new RadioDataAdapter.OnItemRadioListener() { // from class: com.yftech.car.widget.media.radio.list.RadioDataList.1
            @Override // com.yftech.car.widget.media.radio.list.adapter.RadioDataAdapter.OnItemRadioListener
            public int getListType() {
                return RadioDataList.this.mListType;
            }
        });
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        setLayoutManager(this.mLayoutManager);
        setAdapter(this.mAdapter);
        this.mInitAdapter = true;
    }

    public boolean isType(int i) {
        return this.mListType == i;
    }

    public void notifydatasetchangedList(DataOfRadio dataOfRadio) {
        Log.d(TAG, "notifydatasetchangedScanSearchList: ");
        if (this.mListType == 1) {
            this.mAdapter.notifyDataSetChanged();
        } else {
            updateList(dataOfRadio);
        }
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
        Log.d(TAG, "updateList: mList==" + this.mList.size());
        if (this.mList.isEmpty()) {
            if (this.mListType == 1) {
                if (this.mListEmptyAdapter != null && this.mListEmptyAdapter != getAdapter()) {
                    setAdapter(this.mListEmptyAdapter);
                }
            } else if (this.mCollectListEmptyAdapter != null && this.mCollectListEmptyAdapter != getAdapter()) {
                setAdapter(this.mCollectListEmptyAdapter);
            }
        } else {
            if (this.mAdapter != getAdapter()) {
                setAdapter(this.mAdapter);
            }
            if (this.mInitAdapter) {
                this.mAdapter.notifyDataSetChanged();
            }
        }
        if (dataOfRadio != null) {
            updatePosition(dataOfRadio);
        }
        if (this.mRadioDataTextList != null) {
            for (RadioDataText radioDataText : this.mRadioDataTextList) {
                if (radioDataText.isRadioDataListId(getId())) {
                    radioDataText.setListSize(this.mAdapter.getDataListSize());
                }
            }
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

    public void setRadioDataTextList(List<RadioDataText> list) {
        this.mRadioDataTextList = list;
    }
}
