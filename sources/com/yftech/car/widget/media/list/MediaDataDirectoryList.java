package com.yftech.car.widget.media.list;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.yftech.car.widget.media.R;
import com.yftech.car.widget.media.flexbox.FlexboxLayoutManager;
import com.yftech.car.widget.media.list.adapter.MediaDataDirectoryAdapter;
import com.yftech.car.widget.media.list.holder.MediaDataDirectoryHolder;
import com.yftech.car.widget.media.recyclerview.widget.GridLayoutManager;
import com.yftech.car.widget.media.recyclerview.widget.LinearLayoutManager;
import com.yftech.car.widget.media.recyclerview.widget.RecyclerView;

/* loaded from: /home/user/work/dex/classes3.dex */
public class MediaDataDirectoryList extends RecyclerView {
    private boolean mDirectoryInvisible;
    private boolean mDirectoryScrollTo;
    private boolean mDirectoryVisible;
    private RecyclerView.ItemDecoration mItemDecoration;
    private RecyclerView.LayoutManager mLayoutManager;
    private int mMediaDataListId;
    private MediaDataDirectoryAdapter myAdapter;

    private MediaDataDirectoryList(@NonNull Context context) {
        super(context);
    }

    public MediaDataDirectoryList(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        init(context, attributeSet);
    }

    public MediaDataDirectoryList(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        init(context, attributeSet);
    }

    private void init(Context context, AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.MediaDataDirectoryList);
        this.myAdapter = new MediaDataDirectoryAdapter(obtainStyledAttributes.getResourceId(R.styleable.MediaDataDirectoryList_directory_item_layout_id, -1), obtainStyledAttributes.getString(R.styleable.MediaDataDirectoryList_directory_root_directory));
        this.mMediaDataListId = obtainStyledAttributes.getResourceId(R.styleable.MediaDataDirectoryList_directory_media_data_list_id, -1);
        int i = 0;
        this.mDirectoryInvisible = obtainStyledAttributes.getBoolean(R.styleable.MediaDataDirectoryList_directory_directory_invisible, false);
        this.mDirectoryVisible = obtainStyledAttributes.getBoolean(R.styleable.MediaDataDirectoryList_directory_directory_visible, false);
        this.mDirectoryScrollTo = obtainStyledAttributes.getBoolean(R.styleable.MediaDataDirectoryList_directory_scrollTo_position, false);
        TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, R.styleable.media_list_layout);
        int i2 = 1;
        int i3 = obtainStyledAttributes2.getInt(R.styleable.media_list_layout_media_span_count, 1);
        int i4 = obtainStyledAttributes2.getInt(R.styleable.media_list_layout_media_orientation, 1);
        if (i3 <= 0) {
            final float dimension = obtainStyledAttributes2.getDimension(R.styleable.media_list_layout_media_auto_item_left, 0.0f);
            final float dimension2 = obtainStyledAttributes2.getDimension(R.styleable.media_list_layout_media_auto_item_top, 0.0f);
            final float dimension3 = obtainStyledAttributes2.getDimension(R.styleable.media_list_layout_media_auto_item_right, 0.0f);
            final float dimension4 = obtainStyledAttributes2.getDimension(R.styleable.media_list_layout_media_auto_item_bottom, 0.0f);
            this.mItemDecoration = new RecyclerView.ItemDecoration() { // from class: com.yftech.car.widget.media.list.MediaDataDirectoryList.1
                @Override // com.yftech.car.widget.media.recyclerview.widget.RecyclerView.ItemDecoration
                public void getItemOffsets(@NonNull Rect rect, @NonNull View view, @NonNull RecyclerView recyclerView, @NonNull RecyclerView.State state) {
                    super.getItemOffsets(rect, view, recyclerView, state);
                    rect.left = (int) dimension;
                    rect.top = (int) dimension2;
                    rect.right = (int) dimension3;
                    rect.bottom = (int) dimension4;
                }
            };
            this.mLayoutManager = new FlexboxLayoutManager(context, i, i2) { // from class: com.yftech.car.widget.media.list.MediaDataDirectoryList.2
                public boolean canScrollVertically() {
                    return true;
                }
            };
            addItemDecoration(this.mItemDecoration);
        } else if (i3 > 1) {
            this.mLayoutManager = new GridLayoutManager(context, i3);
        } else {
            this.mLayoutManager = new LinearLayoutManager(context);
        }
        if (this.mLayoutManager instanceof LinearLayoutManager) {
            ((LinearLayoutManager) this.mLayoutManager).setOrientation(i4);
        }
        setLayoutManager(this.mLayoutManager);
    }

    public void setOnItemPathListener(MediaDataDirectoryHolder.OnItemClickPathListener onItemClickPathListener) {
        this.myAdapter.setOnItemPathListener(onItemClickPathListener);
    }

    public boolean isMediaDataListId(int i) {
        return this.mMediaDataListId == i || this.mMediaDataListId == -1;
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        setAdapter(this.myAdapter);
    }

    public void setDirectoryPath(String str, String str2) {
        int updateDirectoryList = this.myAdapter.updateDirectoryList(str, str2);
        if (this.mLayoutManager == null || !this.mDirectoryScrollTo) {
            return;
        }
        this.mLayoutManager.scrollToPosition(updateDirectoryList);
    }

    public boolean isDirectoryInvisible() {
        return this.mDirectoryInvisible;
    }

    public boolean isDirectoryVisible() {
        return this.mDirectoryVisible;
    }

    public void release() {
        if (this.mItemDecoration != null) {
            removeItemDecoration(this.mItemDecoration);
        }
    }
}
