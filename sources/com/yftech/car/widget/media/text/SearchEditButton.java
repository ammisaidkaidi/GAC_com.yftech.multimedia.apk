package com.yftech.car.widget.media.text;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.MotionEvent;
import androidx.appcompat.widget.AppCompatTextView;
import com.yftech.car.widget.media.R;
import com.yftech.car.widget.media.utils.TouchEventUtil;

/* loaded from: /home/user/work/dex/classes3.dex */
public class SearchEditButton extends AppCompatTextView {
    public static final int CLEAR = 2;
    public static final int CLEAR_HISTORY = 3;
    public static final int DELETE = 1;
    public static final int SEARCH = 0;
    public static final int SEARCH_EDIT_EMPTY = 8;
    public static final int SEARCH_FINISH = 2;
    public static final int SEARCH_INIT = 4;
    public static final int SEARCH_START = 1;
    private int mMediaSearchEditTextId;
    private int mMediaSearchHistoryListId;
    private int mSearchFindFlag;
    private int mSearchType;
    private int mSearchVisibilityShow;

    public SearchEditButton(Context context) {
        super(context);
    }

    public SearchEditButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init(context, attributeSet);
    }

    public SearchEditButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        init(context, attributeSet);
    }

    private void init(Context context, AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.SearchEditButton);
        this.mSearchType = obtainStyledAttributes.getInt(R.styleable.SearchEditButton_search_edit_type, 0);
        this.mMediaSearchEditTextId = obtainStyledAttributes.getResourceId(R.styleable.SearchEditButton_media_search_edit_text_id, -1);
        this.mMediaSearchHistoryListId = obtainStyledAttributes.getResourceId(R.styleable.SearchEditButton_media_search_history_list_id, -1);
        this.mSearchVisibilityShow = obtainStyledAttributes.getInt(R.styleable.SearchEditButton_search_visibility_show, 0);
        this.mSearchFindFlag = context.obtainStyledAttributes(attributeSet, R.styleable.MediaSearchEditText).getInt(R.styleable.MediaSearchEditText_search_find_flag, 0);
    }

    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (motionEvent != null && motionEvent.getAction() == 0) {
            TouchEventUtil.mDispatchTouchEvent = true;
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    public boolean isSearchType(int i) {
        return this.mSearchType == i;
    }

    public int getSearchType() {
        return this.mSearchType;
    }

    public int getMediaSearchEditTextId() {
        return this.mMediaSearchEditTextId;
    }

    public int getMediaSearchHistoryListId() {
        return this.mMediaSearchHistoryListId;
    }

    public int getSearchFindFlag() {
        return this.mSearchFindFlag;
    }

    public int getSearchVisibilityShow() {
        return this.mSearchVisibilityShow;
    }

    public boolean isSearchVisibilityShow(int i) {
        return (this.mSearchVisibilityShow & i) > 0;
    }
}
