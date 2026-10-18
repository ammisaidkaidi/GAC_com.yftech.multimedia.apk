package com.yftech.car.widget.media.text;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatEditText;
import com.yftech.car.utils.Loger;
import com.yftech.car.widget.media.R;
import com.yftech.car.widget.media.list.MediaDataList;
import com.yftech.car.widget.media.list.SearchHistoryList;
import com.yftech.car.widget.media.utils.TouchEventUtil;
import java.util.ArrayList;
import java.util.List;

/* loaded from: /home/user/work/dex/classes3.dex */
public class MediaSearchEditText extends AppCompatEditText {
    private static final String TAG = "MediaSearchEditText";
    private int mDefaultInputStatus;
    private MediaDataList mMediaDataList;
    private final View.OnClickListener mOnClickListener;
    private final TextView.OnEditorActionListener mOnEditorActionListener;
    private OnSearchTextListener mOnSearchTextListener;
    private OnStartSearchTextListener mOnStartSearchTextListener;
    private int mSearchDataListId;
    private final List<SearchEditButton> mSearchEditButtonList;
    private boolean mSearchEmptyBackList;
    private String mSearchErrorContentEmpty;
    private int mSearchFindFlag;
    private SearchHistoryList mSearchHistoryList;
    private int mSearchIndex;
    private final int[] mStartSearchViewGoneId;
    private final int[] mStartSearchViewVisibleId;
    private final TextWatcher mTextWatcher;
    private TypedArray mTypedArray;
    private int mVisibilityVisibleInputStatus;

    /* loaded from: /home/user/work/dex/classes3.dex */
    public interface OnSearchTextListener {
        void onCancelSearch();

        void onSearchEmptyBackList(MediaDataList mediaDataList);

        boolean onSearchText(MediaSearchEditText mediaSearchEditText);
    }

    /* loaded from: /home/user/work/dex/classes3.dex */
    public interface OnStartSearchTextListener {
        void onSearchText(String str);
    }

    public MediaSearchEditText(Context context) {
        super(context);
        this.mSearchEditButtonList = new ArrayList();
        this.mStartSearchViewVisibleId = new int[5];
        this.mStartSearchViewGoneId = new int[5];
        this.mTextWatcher = new TextWatcher() { // from class: com.yftech.car.widget.media.text.MediaSearchEditText.2
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                Log.d(MediaSearchEditText.TAG, "beforeTextChanged: start==" + i + ",count==" + i2);
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                if (!TextUtils.isEmpty(charSequence)) {
                    for (SearchEditButton searchEditButton : MediaSearchEditText.this.mSearchEditButtonList) {
                        if (searchEditButton.isSearchType(1) || searchEditButton.isSearchType(2)) {
                            searchEditButton.setVisibility(0);
                        }
                    }
                    return;
                }
                for (SearchEditButton searchEditButton2 : MediaSearchEditText.this.mSearchEditButtonList) {
                    if (searchEditButton2.isSearchType(1) || searchEditButton2.isSearchType(2)) {
                        searchEditButton2.setVisibility(8);
                    }
                }
                if (MediaSearchEditText.this.mSearchHistoryList != null) {
                    MediaSearchEditText.this.mSearchHistoryList.setVisibility(0);
                    MediaSearchEditText.this.mSearchHistoryList.setSearchEditButtonVisibility(0);
                    if (MediaSearchEditText.this.mOnSearchTextListener != null) {
                        MediaSearchEditText.this.mOnSearchTextListener.onCancelSearch();
                    }
                    if (MediaSearchEditText.this.mMediaDataList != null) {
                        MediaSearchEditText.this.mMediaDataList.setVisibility(8);
                    }
                    for (SearchEditButton searchEditButton3 : MediaSearchEditText.this.mSearchEditButtonList) {
                        if (searchEditButton3.isSearchType(3) && (searchEditButton3.getMediaSearchHistoryListId() == -1 || searchEditButton3.getMediaSearchHistoryListId() == MediaSearchEditText.this.mSearchHistoryList.getId())) {
                            searchEditButton3.setVisibility(MediaSearchEditText.this.mSearchHistoryList.getVisibility());
                        }
                    }
                }
                for (SearchEditButton searchEditButton4 : MediaSearchEditText.this.mSearchEditButtonList) {
                    if (searchEditButton4.getSearchVisibilityShow() > 0) {
                        searchEditButton4.setVisibility(searchEditButton4.isSearchVisibilityShow(8) ? 0 : 8);
                    }
                }
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                Log.d(MediaSearchEditText.TAG, "afterTextChanged: ");
            }
        };
        this.mOnClickListener = new AnonymousClass3();
        this.mOnEditorActionListener = new TextView.OnEditorActionListener() { // from class: com.yftech.car.widget.media.text.MediaSearchEditText.4
            /* JADX WARN: Multi-variable type inference failed */
            @Override // android.widget.TextView.OnEditorActionListener
            public boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
                if (keyEvent == null) {
                    return false;
                }
                int action = keyEvent.getAction();
                Loger.d(MediaSearchEditText.TAG, "onEditorAction: action==" + action);
                if (keyEvent.getKeyCode() != 66) {
                    return false;
                }
                if (action == 0) {
                    return true;
                }
                if (action != 1) {
                    return false;
                }
                Editable text = MediaSearchEditText.this.getText();
                if (TextUtils.isEmpty(text)) {
                    if (MediaSearchEditText.this.mSearchErrorContentEmpty != null) {
                        MediaSearchEditText.this.setError(MediaSearchEditText.this.mSearchErrorContentEmpty);
                    }
                    MediaSearchEditText.this.setStartSearchText(null);
                    return true;
                }
                if (TextUtils.isEmpty((text != null ? text.toString() : "").replaceAll("\\p{P}|\\s", ""))) {
                    if (MediaSearchEditText.this.mSearchErrorContentEmpty != null) {
                        MediaSearchEditText.this.setError(MediaSearchEditText.this.mSearchErrorContentEmpty);
                    }
                    MediaSearchEditText.this.setStartSearchText(null);
                    return true;
                }
                if (MediaSearchEditText.this.mOnSearchTextListener != null) {
                    return MediaSearchEditText.this.mOnSearchTextListener.onSearchText((MediaSearchEditText) textView);
                }
                return true;
            }
        };
        init(context, null);
    }

    public MediaSearchEditText(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mSearchEditButtonList = new ArrayList();
        this.mStartSearchViewVisibleId = new int[5];
        this.mStartSearchViewGoneId = new int[5];
        this.mTextWatcher = new TextWatcher() { // from class: com.yftech.car.widget.media.text.MediaSearchEditText.2
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                Log.d(MediaSearchEditText.TAG, "beforeTextChanged: start==" + i + ",count==" + i2);
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                if (!TextUtils.isEmpty(charSequence)) {
                    for (SearchEditButton searchEditButton : MediaSearchEditText.this.mSearchEditButtonList) {
                        if (searchEditButton.isSearchType(1) || searchEditButton.isSearchType(2)) {
                            searchEditButton.setVisibility(0);
                        }
                    }
                    return;
                }
                for (SearchEditButton searchEditButton2 : MediaSearchEditText.this.mSearchEditButtonList) {
                    if (searchEditButton2.isSearchType(1) || searchEditButton2.isSearchType(2)) {
                        searchEditButton2.setVisibility(8);
                    }
                }
                if (MediaSearchEditText.this.mSearchHistoryList != null) {
                    MediaSearchEditText.this.mSearchHistoryList.setVisibility(0);
                    MediaSearchEditText.this.mSearchHistoryList.setSearchEditButtonVisibility(0);
                    if (MediaSearchEditText.this.mOnSearchTextListener != null) {
                        MediaSearchEditText.this.mOnSearchTextListener.onCancelSearch();
                    }
                    if (MediaSearchEditText.this.mMediaDataList != null) {
                        MediaSearchEditText.this.mMediaDataList.setVisibility(8);
                    }
                    for (SearchEditButton searchEditButton3 : MediaSearchEditText.this.mSearchEditButtonList) {
                        if (searchEditButton3.isSearchType(3) && (searchEditButton3.getMediaSearchHistoryListId() == -1 || searchEditButton3.getMediaSearchHistoryListId() == MediaSearchEditText.this.mSearchHistoryList.getId())) {
                            searchEditButton3.setVisibility(MediaSearchEditText.this.mSearchHistoryList.getVisibility());
                        }
                    }
                }
                for (SearchEditButton searchEditButton4 : MediaSearchEditText.this.mSearchEditButtonList) {
                    if (searchEditButton4.getSearchVisibilityShow() > 0) {
                        searchEditButton4.setVisibility(searchEditButton4.isSearchVisibilityShow(8) ? 0 : 8);
                    }
                }
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                Log.d(MediaSearchEditText.TAG, "afterTextChanged: ");
            }
        };
        this.mOnClickListener = new AnonymousClass3();
        this.mOnEditorActionListener = new TextView.OnEditorActionListener() { // from class: com.yftech.car.widget.media.text.MediaSearchEditText.4
            /* JADX WARN: Multi-variable type inference failed */
            @Override // android.widget.TextView.OnEditorActionListener
            public boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
                if (keyEvent == null) {
                    return false;
                }
                int action = keyEvent.getAction();
                Loger.d(MediaSearchEditText.TAG, "onEditorAction: action==" + action);
                if (keyEvent.getKeyCode() != 66) {
                    return false;
                }
                if (action == 0) {
                    return true;
                }
                if (action != 1) {
                    return false;
                }
                Editable text = MediaSearchEditText.this.getText();
                if (TextUtils.isEmpty(text)) {
                    if (MediaSearchEditText.this.mSearchErrorContentEmpty != null) {
                        MediaSearchEditText.this.setError(MediaSearchEditText.this.mSearchErrorContentEmpty);
                    }
                    MediaSearchEditText.this.setStartSearchText(null);
                    return true;
                }
                if (TextUtils.isEmpty((text != null ? text.toString() : "").replaceAll("\\p{P}|\\s", ""))) {
                    if (MediaSearchEditText.this.mSearchErrorContentEmpty != null) {
                        MediaSearchEditText.this.setError(MediaSearchEditText.this.mSearchErrorContentEmpty);
                    }
                    MediaSearchEditText.this.setStartSearchText(null);
                    return true;
                }
                if (MediaSearchEditText.this.mOnSearchTextListener != null) {
                    return MediaSearchEditText.this.mOnSearchTextListener.onSearchText((MediaSearchEditText) textView);
                }
                return true;
            }
        };
        init(context, attributeSet);
    }

    public MediaSearchEditText(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mSearchEditButtonList = new ArrayList();
        this.mStartSearchViewVisibleId = new int[5];
        this.mStartSearchViewGoneId = new int[5];
        this.mTextWatcher = new TextWatcher() { // from class: com.yftech.car.widget.media.text.MediaSearchEditText.2
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i2, int i22, int i3) {
                Log.d(MediaSearchEditText.TAG, "beforeTextChanged: start==" + i2 + ",count==" + i22);
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i2, int i22, int i3) {
                if (!TextUtils.isEmpty(charSequence)) {
                    for (SearchEditButton searchEditButton : MediaSearchEditText.this.mSearchEditButtonList) {
                        if (searchEditButton.isSearchType(1) || searchEditButton.isSearchType(2)) {
                            searchEditButton.setVisibility(0);
                        }
                    }
                    return;
                }
                for (SearchEditButton searchEditButton2 : MediaSearchEditText.this.mSearchEditButtonList) {
                    if (searchEditButton2.isSearchType(1) || searchEditButton2.isSearchType(2)) {
                        searchEditButton2.setVisibility(8);
                    }
                }
                if (MediaSearchEditText.this.mSearchHistoryList != null) {
                    MediaSearchEditText.this.mSearchHistoryList.setVisibility(0);
                    MediaSearchEditText.this.mSearchHistoryList.setSearchEditButtonVisibility(0);
                    if (MediaSearchEditText.this.mOnSearchTextListener != null) {
                        MediaSearchEditText.this.mOnSearchTextListener.onCancelSearch();
                    }
                    if (MediaSearchEditText.this.mMediaDataList != null) {
                        MediaSearchEditText.this.mMediaDataList.setVisibility(8);
                    }
                    for (SearchEditButton searchEditButton3 : MediaSearchEditText.this.mSearchEditButtonList) {
                        if (searchEditButton3.isSearchType(3) && (searchEditButton3.getMediaSearchHistoryListId() == -1 || searchEditButton3.getMediaSearchHistoryListId() == MediaSearchEditText.this.mSearchHistoryList.getId())) {
                            searchEditButton3.setVisibility(MediaSearchEditText.this.mSearchHistoryList.getVisibility());
                        }
                    }
                }
                for (SearchEditButton searchEditButton4 : MediaSearchEditText.this.mSearchEditButtonList) {
                    if (searchEditButton4.getSearchVisibilityShow() > 0) {
                        searchEditButton4.setVisibility(searchEditButton4.isSearchVisibilityShow(8) ? 0 : 8);
                    }
                }
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                Log.d(MediaSearchEditText.TAG, "afterTextChanged: ");
            }
        };
        this.mOnClickListener = new AnonymousClass3();
        this.mOnEditorActionListener = new TextView.OnEditorActionListener() { // from class: com.yftech.car.widget.media.text.MediaSearchEditText.4
            /* JADX WARN: Multi-variable type inference failed */
            @Override // android.widget.TextView.OnEditorActionListener
            public boolean onEditorAction(TextView textView, int i2, KeyEvent keyEvent) {
                if (keyEvent == null) {
                    return false;
                }
                int action = keyEvent.getAction();
                Loger.d(MediaSearchEditText.TAG, "onEditorAction: action==" + action);
                if (keyEvent.getKeyCode() != 66) {
                    return false;
                }
                if (action == 0) {
                    return true;
                }
                if (action != 1) {
                    return false;
                }
                Editable text = MediaSearchEditText.this.getText();
                if (TextUtils.isEmpty(text)) {
                    if (MediaSearchEditText.this.mSearchErrorContentEmpty != null) {
                        MediaSearchEditText.this.setError(MediaSearchEditText.this.mSearchErrorContentEmpty);
                    }
                    MediaSearchEditText.this.setStartSearchText(null);
                    return true;
                }
                if (TextUtils.isEmpty((text != null ? text.toString() : "").replaceAll("\\p{P}|\\s", ""))) {
                    if (MediaSearchEditText.this.mSearchErrorContentEmpty != null) {
                        MediaSearchEditText.this.setError(MediaSearchEditText.this.mSearchErrorContentEmpty);
                    }
                    MediaSearchEditText.this.setStartSearchText(null);
                    return true;
                }
                if (MediaSearchEditText.this.mOnSearchTextListener != null) {
                    return MediaSearchEditText.this.mOnSearchTextListener.onSearchText((MediaSearchEditText) textView);
                }
                return true;
            }
        };
        init(context, attributeSet);
    }

    private void init(Context context, AttributeSet attributeSet) {
        this.mTypedArray = context.obtainStyledAttributes(attributeSet, R.styleable.MediaSearchEditText);
        this.mSearchFindFlag = this.mTypedArray.getInt(R.styleable.MediaSearchEditText_search_find_flag, 0);
        this.mSearchIndex = this.mTypedArray.getInt(R.styleable.MediaSearchEditText_search_index, -1);
        this.mDefaultInputStatus = this.mTypedArray.getInt(R.styleable.MediaSearchEditText_to_window_default_input_status, 0);
        this.mVisibilityVisibleInputStatus = this.mTypedArray.getInt(R.styleable.MediaSearchEditText_Visibility_visible_input_status, 0);
        this.mSearchDataListId = this.mTypedArray.getResourceId(R.styleable.MediaSearchEditText_search_data_list_id, -1);
        this.mSearchErrorContentEmpty = this.mTypedArray.getString(R.styleable.MediaSearchEditText_search_error_content_empty);
        this.mSearchEmptyBackList = this.mTypedArray.getBoolean(R.styleable.MediaSearchEditText_search_empty_back_list, false);
        this.mStartSearchViewVisibleId[0] = this.mTypedArray.getResourceId(R.styleable.MediaSearchEditText_start_search_view_visible1_id, -1);
        this.mStartSearchViewVisibleId[1] = this.mTypedArray.getResourceId(R.styleable.MediaSearchEditText_start_search_view_visible2_id, -1);
        this.mStartSearchViewVisibleId[2] = this.mTypedArray.getResourceId(R.styleable.MediaSearchEditText_start_search_view_visible3_id, -1);
        this.mStartSearchViewVisibleId[3] = this.mTypedArray.getResourceId(R.styleable.MediaSearchEditText_start_search_view_visible4_id, -1);
        this.mStartSearchViewVisibleId[4] = this.mTypedArray.getResourceId(R.styleable.MediaSearchEditText_start_search_view_visible5_id, -1);
        this.mStartSearchViewGoneId[0] = this.mTypedArray.getResourceId(R.styleable.MediaSearchEditText_start_search_view_gone1_id, -1);
        this.mStartSearchViewGoneId[1] = this.mTypedArray.getResourceId(R.styleable.MediaSearchEditText_start_search_view_gone2_id, -1);
        this.mStartSearchViewGoneId[2] = this.mTypedArray.getResourceId(R.styleable.MediaSearchEditText_start_search_view_gone3_id, -1);
        this.mStartSearchViewGoneId[3] = this.mTypedArray.getResourceId(R.styleable.MediaSearchEditText_start_search_view_gone4_id, -1);
        this.mStartSearchViewGoneId[4] = this.mTypedArray.getResourceId(R.styleable.MediaSearchEditText_start_search_view_gone5_id, -1);
        addTextChangedListener(this.mTextWatcher);
        setOnEditorActionListener(this.mOnEditorActionListener);
        setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.yftech.car.widget.media.text.MediaSearchEditText.1
            @Override // android.view.View.OnFocusChangeListener
            public void onFocusChange(View view, boolean z) {
                Log.d(MediaSearchEditText.TAG, "onFocusChange: hasFocus==" + z);
            }
        });
    }

    protected void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.mSearchErrorContentEmpty = this.mTypedArray.getString(R.styleable.MediaSearchEditText_search_error_content_empty);
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            setCursorVisible(true);
            TouchEventUtil.mDispatchTouchEvent = true;
        }
        return super.onTouchEvent(motionEvent);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.yftech.car.widget.media.text.MediaSearchEditText$3, reason: invalid class name */
    /* loaded from: /home/user/work/dex/classes3.dex */
    public class AnonymousClass3 implements View.OnClickListener {
        AnonymousClass3() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            SearchEditButton searchEditButton = (SearchEditButton) view;
            switch (searchEditButton.getSearchType()) {
                case 0:
                    if (MediaSearchEditText.this.mOnSearchTextListener != null) {
                        Editable text = MediaSearchEditText.this.getText();
                        if (TextUtils.isEmpty(text)) {
                            if (MediaSearchEditText.this.mSearchErrorContentEmpty != null) {
                                MediaSearchEditText.this.setError(MediaSearchEditText.this.mSearchErrorContentEmpty);
                            }
                            MediaSearchEditText.this.setStartSearchText(null);
                            return;
                        }
                        if (TextUtils.isEmpty((text != null ? text.toString() : "").replaceAll("\\p{P}|\\s", ""))) {
                            if (MediaSearchEditText.this.mSearchErrorContentEmpty != null) {
                                MediaSearchEditText.this.setError(MediaSearchEditText.this.mSearchErrorContentEmpty);
                            }
                            MediaSearchEditText.this.setStartSearchText(null);
                            return;
                        }
                        if (searchEditButton.getSearchFindFlag() > 0) {
                            MediaSearchEditText.this.mSearchFindFlag = searchEditButton.getSearchFindFlag();
                            for (SearchEditButton searchEditButton2 : MediaSearchEditText.this.mSearchEditButtonList) {
                                searchEditButton2.setSelected(searchEditButton2.getSearchFindFlag() == MediaSearchEditText.this.mSearchFindFlag);
                            }
                        }
                        MediaSearchEditText.this.mOnSearchTextListener.onSearchText(MediaSearchEditText.this);
                        return;
                    }
                    return;
                case 1:
                    Editable text2 = MediaSearchEditText.this.getText();
                    if (text2 == null || text2.length() <= 0) {
                        return;
                    }
                    MediaSearchEditText.this.setText(text2.delete(text2.length() - 1, text2.length()));
                    MediaSearchEditText.this.setSelection(text2.length());
                    MediaSearchEditText.this.post(new Runnable() { // from class: com.yftech.car.widget.media.text.-$$Lambda$MediaSearchEditText$3$mspPHhM8wpCn5XnKbYzL96wgI3U
                        @Override // java.lang.Runnable
                        public final void run() {
                            MediaSearchEditText.this.requestFocus();
                        }
                    });
                    return;
                case 2:
                    MediaSearchEditText.this.setText("");
                    MediaSearchEditText.this.post(new Runnable() { // from class: com.yftech.car.widget.media.text.-$$Lambda$MediaSearchEditText$3$nO3Q8-vHTufzsKpgo8Di2KPHtF8
                        @Override // java.lang.Runnable
                        public final void run() {
                            MediaSearchEditText.this.requestFocus();
                        }
                    });
                    return;
                default:
                    return;
            }
        }
    }

    public void setSearchErrorContentEmpty() {
        if (this.mSearchErrorContentEmpty != null) {
            setError(this.mSearchErrorContentEmpty);
        }
    }

    public boolean setSearchHistoryList(SearchHistoryList searchHistoryList) {
        if (searchHistoryList.getSearchEditTextId() != -1 && searchHistoryList.getSearchEditTextId() != getId()) {
            return false;
        }
        this.mSearchHistoryList = searchHistoryList;
        return true;
    }

    public void setMediaDataList(MediaDataList mediaDataList) {
        this.mMediaDataList = mediaDataList;
    }

    public int getSearchFindFlag() {
        return this.mSearchFindFlag;
    }

    public void setSearchIndex(int i) {
        this.mSearchIndex = i;
    }

    public int getSearchIndex() {
        return this.mSearchIndex;
    }

    public void addSearchEditButton(SearchEditButton searchEditButton) {
        if (((searchEditButton.isSearchType(0) || searchEditButton.isSearchType(1) || searchEditButton.isSearchType(2)) && searchEditButton.getMediaSearchEditTextId() == -1) || searchEditButton.getMediaSearchEditTextId() == getId()) {
            this.mSearchEditButtonList.add(searchEditButton);
            searchEditButton.setOnClickListener(this.mOnClickListener);
            if (searchEditButton.isSearchType(0)) {
                searchEditButton.setSelected(searchEditButton.getSearchFindFlag() == this.mSearchFindFlag);
            }
        }
    }

    public void setOnSearchTextListener(OnSearchTextListener onSearchTextListener) {
        this.mOnSearchTextListener = onSearchTextListener;
    }

    public void setOnStartSearchTextListener(OnStartSearchTextListener onStartSearchTextListener) {
        this.mOnStartSearchTextListener = onStartSearchTextListener;
    }

    public void setStartSearchText(String str) {
        if (this.mOnStartSearchTextListener != null) {
            this.mOnStartSearchTextListener.onSearchText(str);
        }
        if (this.mSearchEmptyBackList && str == null && this.mOnSearchTextListener != null) {
            this.mOnSearchTextListener.onSearchEmptyBackList(this.mMediaDataList);
        }
    }

    public int getSearchDataListId() {
        return this.mSearchDataListId;
    }

    public void release() {
        this.mSearchEditButtonList.clear();
        removeTextChangedListener(this.mTextWatcher);
        Editable text = getText();
        if (text == null || text.length() <= 0) {
            return;
        }
        text.clear();
    }

    public void setStartSearchView(View view) {
        View findViewById;
        View findViewById2;
        for (int i = 0; i < this.mStartSearchViewVisibleId.length; i++) {
            int i2 = this.mStartSearchViewVisibleId[i];
            if (i2 != -1 && (findViewById2 = view.findViewById(i2)) != null) {
                findViewById2.setVisibility(0);
            }
        }
        for (int i3 = 0; i3 < this.mStartSearchViewGoneId.length; i3++) {
            int i4 = this.mStartSearchViewGoneId[i3];
            if (i4 != -1 && (findViewById = view.findViewById(i4)) != null) {
                findViewById.setVisibility(8);
            }
        }
    }

    public void setVisibility(int i) {
        super.setVisibility(i);
        if (i == 0) {
            if (this.mVisibilityVisibleInputStatus == 1 || this.mVisibilityVisibleInputStatus == 2) {
                postDelayed(new Runnable() { // from class: com.yftech.car.widget.media.text.-$$Lambda$MediaSearchEditText$1BweVA4tFFjlK_UmKr-C9XghLHM
                    @Override // java.lang.Runnable
                    public final void run() {
                        MediaSearchEditText.lambda$setVisibility$0(MediaSearchEditText.this);
                    }
                }, 100L);
                return;
            }
            return;
        }
        if (i == 8 || i == 4) {
            ((InputMethodManager) getContext().getSystemService("input_method")).hideSoftInputFromWindow(getWindowToken(), 0);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void lambda$setVisibility$0(MediaSearchEditText mediaSearchEditText) {
        if (mediaSearchEditText.hasWindowFocus()) {
            mediaSearchEditText.requestFocus();
            InputMethodManager inputMethodManager = (InputMethodManager) mediaSearchEditText.getContext().getSystemService("input_method");
            if (mediaSearchEditText.mVisibilityVisibleInputStatus == 1) {
                inputMethodManager.showSoftInput(mediaSearchEditText, 1);
            } else if (mediaSearchEditText.mVisibilityVisibleInputStatus == 2) {
                inputMethodManager.hideSoftInputFromWindow(mediaSearchEditText.getWindowToken(), 0);
            }
        }
    }

    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        Log.d(TAG, "onAttachedToWindow: ");
        if (this.mDefaultInputStatus == 1) {
            postDelayed(new Runnable() { // from class: com.yftech.car.widget.media.text.-$$Lambda$MediaSearchEditText$BwRks3Zq30WU4jwqcmoE1IWzmfM
                @Override // java.lang.Runnable
                public final void run() {
                    MediaSearchEditText.lambda$onAttachedToWindow$1(MediaSearchEditText.this);
                }
            }, 100L);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void lambda$onAttachedToWindow$1(MediaSearchEditText mediaSearchEditText) {
        if (mediaSearchEditText.hasWindowFocus()) {
            mediaSearchEditText.requestFocus();
            ((InputMethodManager) mediaSearchEditText.getContext().getSystemService("input_method")).showSoftInput(mediaSearchEditText, 1);
        }
    }

    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Log.d(TAG, "onDetachedFromWindow: ");
    }
}
