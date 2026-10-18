package com.yftech.car.widget.media.list;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Size;
import android.view.View;
import androidx.annotation.NonNull;
import com.yftech.car.widget.media.R;
import com.yftech.car.widget.media.dialog.ConfirmDialog;
import com.yftech.car.widget.media.flexbox.FlexboxLayoutManager;
import com.yftech.car.widget.media.list.adapter.ListOneLayoutAdapter;
import com.yftech.car.widget.media.list.adapter.SearchHistoryAdapter;
import com.yftech.car.widget.media.recyclerview.widget.GridLayoutManager;
import com.yftech.car.widget.media.recyclerview.widget.LinearLayoutManager;
import com.yftech.car.widget.media.recyclerview.widget.RecyclerView;
import com.yftech.car.widget.media.text.SearchEditButton;
import java.util.ArrayList;
import java.util.List;

/* loaded from: /home/user/work/dex/classes3.dex */
public class SearchHistoryList extends RecyclerView {
    private static final String SEARCH_LIST = "search_list";
    private static final String TAG = "SearchHistoryList";
    private Size DialogWidthHeight;
    private SearchHistoryAdapter mAdapter;
    private ConfirmDialog mConfirmDialog;
    private boolean mDialogCancelable;
    private int mDialogFlags;
    private ListOneLayoutAdapter mEmptyAdapter;
    private RecyclerView.LayoutManager mEmptyLayoutManager;
    private RecyclerView.ItemDecoration mItemDecoration;
    private RecyclerView.LayoutManager mLayoutManager;
    private final View.OnClickListener mOnClearSearchListClickListener;
    private final ConfirmDialog.OnConfirmDialogListener mOnConfirmDialogListener;
    private int mSearchClearHistoryDialogLayoutId;
    private int mSearchClearHistoryDialogThemeResId;
    private SearchEditButton mSearchEditButton;
    private int mSearchEditTextId;
    private final List<String> mSearchList;
    private int mSearchListItemMax;
    private SharedPreferences mSearchSpList;

    public SearchHistoryList(Context context) {
        super(context);
        this.mSearchList = new ArrayList();
        this.mOnClearSearchListClickListener = new View.OnClickListener() { // from class: com.yftech.car.widget.media.list.SearchHistoryList.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (SearchHistoryList.this.mSearchClearHistoryDialogLayoutId != -1) {
                    if (SearchHistoryList.this.mConfirmDialog == null) {
                        SearchHistoryList.this.mConfirmDialog = new ConfirmDialog(SearchHistoryList.this.getContext(), SearchHistoryList.this.mSearchClearHistoryDialogThemeResId, SearchHistoryList.this.mSearchClearHistoryDialogLayoutId);
                        SearchHistoryList.this.mConfirmDialog.setOnConfirmDialogListener(SearchHistoryList.this.mOnConfirmDialogListener);
                    }
                    SearchHistoryList.this.mConfirmDialog.show(SearchHistoryList.this.mDialogFlags, SearchHistoryList.this.DialogWidthHeight);
                    SearchHistoryList.this.mConfirmDialog.setCancelable(SearchHistoryList.this.mDialogCancelable);
                    return;
                }
                SearchHistoryList.this.clearSearchList();
            }
        };
        this.mOnConfirmDialogListener = new ConfirmDialog.OnConfirmDialogListener() { // from class: com.yftech.car.widget.media.list.SearchHistoryList.4
            public void onConfirm(boolean z) {
                if (z) {
                    SearchHistoryList.this.clearSearchList();
                }
            }
        };
    }

    public SearchHistoryList(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mSearchList = new ArrayList();
        this.mOnClearSearchListClickListener = new View.OnClickListener() { // from class: com.yftech.car.widget.media.list.SearchHistoryList.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (SearchHistoryList.this.mSearchClearHistoryDialogLayoutId != -1) {
                    if (SearchHistoryList.this.mConfirmDialog == null) {
                        SearchHistoryList.this.mConfirmDialog = new ConfirmDialog(SearchHistoryList.this.getContext(), SearchHistoryList.this.mSearchClearHistoryDialogThemeResId, SearchHistoryList.this.mSearchClearHistoryDialogLayoutId);
                        SearchHistoryList.this.mConfirmDialog.setOnConfirmDialogListener(SearchHistoryList.this.mOnConfirmDialogListener);
                    }
                    SearchHistoryList.this.mConfirmDialog.show(SearchHistoryList.this.mDialogFlags, SearchHistoryList.this.DialogWidthHeight);
                    SearchHistoryList.this.mConfirmDialog.setCancelable(SearchHistoryList.this.mDialogCancelable);
                    return;
                }
                SearchHistoryList.this.clearSearchList();
            }
        };
        this.mOnConfirmDialogListener = new ConfirmDialog.OnConfirmDialogListener() { // from class: com.yftech.car.widget.media.list.SearchHistoryList.4
            public void onConfirm(boolean z) {
                if (z) {
                    SearchHistoryList.this.clearSearchList();
                }
            }
        };
        init(context, attributeSet);
    }

    public SearchHistoryList(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mSearchList = new ArrayList();
        this.mOnClearSearchListClickListener = new View.OnClickListener() { // from class: com.yftech.car.widget.media.list.SearchHistoryList.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (SearchHistoryList.this.mSearchClearHistoryDialogLayoutId != -1) {
                    if (SearchHistoryList.this.mConfirmDialog == null) {
                        SearchHistoryList.this.mConfirmDialog = new ConfirmDialog(SearchHistoryList.this.getContext(), SearchHistoryList.this.mSearchClearHistoryDialogThemeResId, SearchHistoryList.this.mSearchClearHistoryDialogLayoutId);
                        SearchHistoryList.this.mConfirmDialog.setOnConfirmDialogListener(SearchHistoryList.this.mOnConfirmDialogListener);
                    }
                    SearchHistoryList.this.mConfirmDialog.show(SearchHistoryList.this.mDialogFlags, SearchHistoryList.this.DialogWidthHeight);
                    SearchHistoryList.this.mConfirmDialog.setCancelable(SearchHistoryList.this.mDialogCancelable);
                    return;
                }
                SearchHistoryList.this.clearSearchList();
            }
        };
        this.mOnConfirmDialogListener = new ConfirmDialog.OnConfirmDialogListener() { // from class: com.yftech.car.widget.media.list.SearchHistoryList.4
            public void onConfirm(boolean z) {
                if (z) {
                    SearchHistoryList.this.clearSearchList();
                }
            }
        };
        init(context, attributeSet);
    }

    private void init(Context context, AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.SearchHistoryList);
        int i = 1;
        int i2 = obtainStyledAttributes.getInt(R.styleable.SearchHistoryList_search_list_orientation, 1);
        int i3 = obtainStyledAttributes.getInt(R.styleable.SearchHistoryList_search_list_span_count, 1);
        this.mSearchListItemMax = obtainStyledAttributes.getInt(R.styleable.SearchHistoryList_search_list_item_max, 10);
        boolean z = obtainStyledAttributes.getBoolean(R.styleable.SearchHistoryList_search_delete_show, true);
        this.mSearchEditTextId = obtainStyledAttributes.getResourceId(R.styleable.SearchHistoryList_search_EditText_id, -1);
        int resourceId = obtainStyledAttributes.getResourceId(R.styleable.SearchHistoryList_search_list_item_layout_id, -1);
        if (resourceId == -1) {
            throw new RuntimeException("SearchHistoryList: search_list_item_layout_id 没有设置布局，无法加载适配器item子类界面,请设置item布局再试");
        }
        this.mAdapter = new SearchHistoryAdapter(this, this.mSearchList, resourceId, z);
        int resourceId2 = obtainStyledAttributes.getResourceId(R.styleable.SearchHistoryList_search_list_empty_layout_id, -1);
        if (resourceId2 != -1) {
            this.mEmptyAdapter = new ListOneLayoutAdapter(resourceId2);
        }
        int i4 = 0;
        if (i3 <= 0) {
            final float dimension = obtainStyledAttributes.getDimension(R.styleable.SearchHistoryList_search_auto_item_left, 0.0f);
            final float dimension2 = obtainStyledAttributes.getDimension(R.styleable.SearchHistoryList_search_auto_item_top, 0.0f);
            final float dimension3 = obtainStyledAttributes.getDimension(R.styleable.SearchHistoryList_search_auto_item_right, 0.0f);
            final float dimension4 = obtainStyledAttributes.getDimension(R.styleable.SearchHistoryList_search_auto_item_bottom, 0.0f);
            this.mItemDecoration = new RecyclerView.ItemDecoration() { // from class: com.yftech.car.widget.media.list.SearchHistoryList.1
                @Override // com.yftech.car.widget.media.recyclerview.widget.RecyclerView.ItemDecoration
                public void getItemOffsets(@NonNull Rect rect, @NonNull View view, @NonNull RecyclerView recyclerView, @NonNull RecyclerView.State state) {
                    super.getItemOffsets(rect, view, recyclerView, state);
                    rect.left = (int) dimension;
                    rect.top = (int) dimension2;
                    rect.right = (int) dimension3;
                    rect.bottom = (int) dimension4;
                }
            };
            this.mLayoutManager = new FlexboxLayoutManager(context, i4, i) { // from class: com.yftech.car.widget.media.list.SearchHistoryList.2
                public boolean canScrollVertically() {
                    return true;
                }
            };
        } else if (i3 == 1) {
            this.mLayoutManager = new LinearLayoutManager(context, i2, false);
        } else {
            this.mLayoutManager = new GridLayoutManager(context, i3, i2, false);
        }
        this.mEmptyLayoutManager = new LinearLayoutManager(context, 1, false);
        String string = obtainStyledAttributes.getString(R.styleable.SearchHistoryList_search_save_key);
        if (TextUtils.isEmpty(string)) {
            string = SEARCH_LIST;
        }
        this.mSearchSpList = context.getSharedPreferences(string, 0);
        TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, R.styleable.Dialog);
        this.mDialogFlags = obtainStyledAttributes2.getInt(R.styleable.Dialog_dialog_flags, 0);
        this.mSearchClearHistoryDialogLayoutId = obtainStyledAttributes2.getResourceId(R.styleable.Dialog_dialog_layout_id, -1);
        this.mSearchClearHistoryDialogThemeResId = obtainStyledAttributes2.getResourceId(R.styleable.Dialog_dialog_themeResId, 0);
        this.mDialogCancelable = obtainStyledAttributes2.getBoolean(R.styleable.Dialog_dialog_cancelable, true);
        this.DialogWidthHeight = new Size((int) obtainStyledAttributes2.getDimension(R.styleable.Dialog_dialog_width, -2.0f), (int) obtainStyledAttributes2.getDimension(R.styleable.Dialog_dialog_height, -2.0f));
    }

    public void setOnSearchHistoryItemClickListener(SearchHistoryAdapter.OnSearchHistoryItemClickListener onSearchHistoryItemClickListener) {
        this.mAdapter.setOnSearchHistoryItemClickListener(onSearchHistoryItemClickListener);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        initDataList();
        if (this.mSearchList.size() > 0) {
            setLayoutManager(this.mLayoutManager);
            setAddItemDecoration();
            setAdapter(this.mAdapter);
        } else if (this.mEmptyAdapter != null) {
            setLayoutManager(this.mEmptyLayoutManager);
            setAdapter(this.mEmptyAdapter);
        }
    }

    private void initDataList() {
        for (int i = 0; i < this.mSearchListItemMax; i++) {
            String string = this.mSearchSpList.getString("search" + i, "");
            if (!TextUtils.isEmpty(string)) {
                this.mSearchList.add(string);
            }
        }
    }

    public int getSearchEditTextId() {
        return this.mSearchEditTextId;
    }

    public boolean setSearchEditButton(final SearchEditButton searchEditButton) {
        if ((!searchEditButton.isSearchType(3) || searchEditButton.getMediaSearchHistoryListId() != -1) && searchEditButton.getMediaSearchHistoryListId() != getId()) {
            return false;
        }
        searchEditButton.setOnClickListener(this.mOnClearSearchListClickListener);
        this.mSearchEditButton = searchEditButton;
        post(new Runnable() { // from class: com.yftech.car.widget.media.list.-$$Lambda$SearchHistoryList$5eIisvura9rIXkD-Bic9fZRaaX8
            @Override // java.lang.Runnable
            public final void run() {
                SearchHistoryList.lambda$setSearchEditButton$0(SearchHistoryList.this, searchEditButton);
            }
        });
        return true;
    }

    public static /* synthetic */ void lambda$setSearchEditButton$0(SearchHistoryList searchHistoryList, SearchEditButton searchEditButton) {
        if (searchHistoryList.mSearchList.size() > 0) {
            searchEditButton.setVisibility(0);
        } else {
            searchEditButton.setVisibility(4);
        }
    }

    public void setSearchEditButtonVisibility(int i) {
        if (this.mSearchEditButton == null || i != 0 || this.mSearchList.size() <= 0) {
            return;
        }
        this.mSearchEditButton.setVisibility(i);
    }

    public boolean isDeleteShow() {
        return this.mAdapter.isDeleteShow();
    }

    public void addSearchData(String str) {
        if (!TextUtils.isEmpty(str)) {
            for (int i = 0; i < this.mSearchList.size(); i++) {
                if (str.equals(this.mSearchList.get(i))) {
                    this.mSearchList.remove(i);
                    this.mSearchList.add(0, str);
                    this.mAdapter.notifyDataSetChanged();
                    updateSearchList();
                    return;
                }
            }
            if (this.mSearchList.size() > this.mSearchListItemMax - 1) {
                this.mSearchList.remove(this.mSearchList.size() - 1);
            }
            this.mSearchList.add(0, str);
            if (this.mLayoutManager != getLayoutManager()) {
                setAddItemDecoration();
                setLayoutManager(this.mLayoutManager);
                setAdapter(this.mAdapter);
            } else {
                this.mAdapter.notifyDataSetChanged();
            }
            this.mAdapter.setDeleteShow(false);
            if (getVisibility() == 0) {
                this.mSearchEditButton.setVisibility(0);
            }
            updateSearchList();
            return;
        }
        Log.e(TAG, "addSearchData: search == null");
    }

    private void setAddItemDecoration() {
        if (this.mItemDecoration != null) {
            boolean z = false;
            int i = 0;
            while (true) {
                if (i >= getItemDecorationCount()) {
                    z = true;
                    break;
                } else if (getItemDecorationAt(i) == this.mItemDecoration) {
                    break;
                } else {
                    i++;
                }
            }
            if (z) {
                addItemDecoration(this.mItemDecoration);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.yftech.car.widget.media.recyclerview.widget.RecyclerView, android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        setAddItemDecoration();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.yftech.car.widget.media.recyclerview.widget.RecyclerView, android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.mItemDecoration != null) {
            for (int i = 0; i < getItemDecorationCount(); i++) {
                if (getItemDecorationAt(i) == this.mItemDecoration) {
                    removeItemDecoration(this.mItemDecoration);
                    return;
                }
            }
        }
    }

    public void deleteSearch(String str) {
        int i = 0;
        while (true) {
            if (i >= this.mSearchList.size()) {
                break;
            }
            if (this.mSearchList.get(i).equals(str)) {
                this.mSearchList.remove(i);
                break;
            }
            i++;
        }
        if (this.mSearchList.isEmpty()) {
            if (this.mEmptyAdapter != null && this.mEmptyLayoutManager != getLayoutManager()) {
                if (this.mItemDecoration != null) {
                    removeItemDecoration(this.mItemDecoration);
                }
                setLayoutManager(this.mEmptyLayoutManager);
                setAdapter(this.mEmptyAdapter);
            }
            if (getVisibility() == 0) {
                this.mSearchEditButton.setVisibility(4);
            }
        } else {
            this.mAdapter.notifyDataSetChanged();
        }
        updateSearchList();
    }

    public void clearSearchList() {
        this.mSearchList.clear();
        if (this.mEmptyAdapter != null && this.mEmptyLayoutManager != getLayoutManager()) {
            if (this.mItemDecoration != null) {
                removeItemDecoration(this.mItemDecoration);
            }
            setLayoutManager(this.mEmptyLayoutManager);
            setAdapter(this.mEmptyAdapter);
            if (getVisibility() == 0) {
                this.mSearchEditButton.setVisibility(4);
            }
        }
        updateSearchList();
    }

    private void updateSearchList() {
        int i = 0;
        while (i < this.mSearchListItemMax) {
            saveSearchData("search" + i, this.mSearchList.size() > i ? this.mSearchList.get(i) : "");
            i++;
        }
    }

    private synchronized void saveSearchData(String str, String str2) {
        SharedPreferences.Editor edit = this.mSearchSpList.edit();
        edit.putString(str, str2);
        edit.apply();
        edit.commit();
    }
}
