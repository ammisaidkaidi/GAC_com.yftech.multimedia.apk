package com.yftech.car.widget.media.list.adapter;

import android.content.res.TypedArray;
import android.os.Looper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import com.yftech.car.media.data.entity.MediaFolder;
import com.yftech.car.widget.media.R;
import com.yftech.car.widget.media.list.holder.MediaFolderHolder;
import com.yftech.car.widget.media.recyclerview.widget.GridLayoutManager;
import com.yftech.car.widget.media.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.List;

/* loaded from: /home/user/work/dex/classes3.dex */
public class MediaFolderAdapter extends RecyclerView.Adapter<MediaFolderHolder> {
    private static final int ENDING = -101;
    private static final int HEAD = -100;
    private final int mEndingItemLayoutId;
    private GridLayoutManager mGridManager;
    private final int mHeadItemLayoutId;
    private final int mItemFolderLayoutId;
    private OnItemFolderListener mOnItemFolderListener;
    private View mRootEndingView;
    private View mRootHeadView;
    private final int mUsbListEmptyLayoutId;
    private final List<MediaFolder> mList = new ArrayList();
    private final GridLayoutManager.SpanSizeLookup mSpanSizeLookup = new GridLayoutManager.SpanSizeLookup() { // from class: com.yftech.car.widget.media.list.adapter.MediaFolderAdapter.1
        @Override // com.yftech.car.widget.media.recyclerview.widget.GridLayoutManager.SpanSizeLookup
        public int getSpanSize(int i) {
            if (MediaFolderAdapter.this.mList.size() <= i || ((MediaFolder) MediaFolderAdapter.this.mList.get(i)).getType() == -11) {
                return MediaFolderAdapter.this.mGridManager.getSpanCount();
            }
            return 1;
        }
    };
    private final MediaFolderHolder.OnClickFolderListener mOnClickFolderListener = new MediaFolderHolder.OnClickFolderListener() { // from class: com.yftech.car.widget.media.list.adapter.MediaFolderAdapter.2
        @Override // com.yftech.car.widget.media.list.holder.MediaFolderHolder.OnClickFolderListener
        public void onItemFolder(MediaFolder mediaFolder, int i) {
            if (MediaFolderAdapter.this.mOnItemFolderListener != null) {
                MediaFolderAdapter.this.mOnItemFolderListener.onItemFolder(mediaFolder, i);
            }
        }
    };

    /* loaded from: /home/user/work/dex/classes3.dex */
    public interface OnItemFolderListener {
        void onItemFolder(MediaFolder mediaFolder, int i);
    }

    public MediaFolderAdapter(TypedArray typedArray) {
        this.mHeadItemLayoutId = typedArray.getResourceId(R.styleable.media_list_layout_media_head_item_layout_id, -1);
        this.mItemFolderLayoutId = typedArray.getResourceId(R.styleable.media_list_layout_media_item_folder_layout_id, -1);
        this.mEndingItemLayoutId = typedArray.getResourceId(R.styleable.media_list_layout_media_ending_item_layout_id, -1);
        this.mUsbListEmptyLayoutId = typedArray.getResourceId(R.styleable.media_list_layout_media_usb_list_empty_layout_id, -1);
    }

    public View getHeadLayout(ViewGroup viewGroup) {
        if (this.mHeadItemLayoutId == -1) {
            return null;
        }
        if (this.mRootHeadView == null) {
            this.mRootHeadView = LayoutInflater.from(viewGroup.getContext()).inflate(this.mHeadItemLayoutId, viewGroup, false);
        }
        return this.mRootHeadView;
    }

    public View getEndingLayout(ViewGroup viewGroup) {
        if (this.mEndingItemLayoutId == -1) {
            return null;
        }
        if (this.mRootEndingView == null) {
            this.mRootEndingView = LayoutInflater.from(viewGroup.getContext()).inflate(this.mEndingItemLayoutId, viewGroup, false);
        }
        return this.mRootEndingView;
    }

    @Override // com.yftech.car.widget.media.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i) {
        if (this.mHeadItemLayoutId != -1 && i == 0) {
            return -100;
        }
        if (this.mEndingItemLayoutId == -1 || i != this.mList.size() - 1) {
            return 0;
        }
        return ENDING;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.yftech.car.widget.media.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    public MediaFolderHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i) {
        View view;
        boolean z = false;
        if (getDataListSize() == 0) {
            if (this.mUsbListEmptyLayoutId != -1) {
                view = LayoutInflater.from(viewGroup.getContext()).inflate(this.mUsbListEmptyLayoutId, viewGroup, false);
            } else {
                view = new View(viewGroup.getContext());
            }
        } else {
            switch (i) {
                case ENDING /* -101 */:
                    view = this.mRootEndingView;
                    break;
                case -100:
                    view = this.mRootHeadView;
                    break;
                default:
                    view = LayoutInflater.from(viewGroup.getContext()).inflate(this.mItemFolderLayoutId, viewGroup, false);
                    z = true;
                    break;
            }
        }
        MediaFolderHolder mediaFolderHolder = new MediaFolderHolder(view);
        if (z) {
            mediaFolderHolder.setOnClickFolderListener(this.mOnClickFolderListener);
        }
        return mediaFolderHolder;
    }

    @Override // com.yftech.car.widget.media.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(@NonNull MediaFolderHolder mediaFolderHolder, int i) {
        int i2;
        int size = this.mList.size();
        if (size > 0) {
            if (this.mHeadItemLayoutId == -1) {
                i2 = i;
            } else if (i == 0) {
                return;
            } else {
                i2 = i - 1;
            }
            if (this.mEndingItemLayoutId == -1 || i != size - 1) {
                mediaFolderHolder.setMediaFolder(this.mList.get(i2), i2);
            }
        }
    }

    @Override // com.yftech.car.widget.media.recyclerview.widget.RecyclerView.Adapter
    public void onAttachedToRecyclerView(@NonNull RecyclerView recyclerView) {
        super.onAttachedToRecyclerView(recyclerView);
        RecyclerView.LayoutManager layoutManager = recyclerView.getLayoutManager();
        if (layoutManager instanceof GridLayoutManager) {
            this.mGridManager = (GridLayoutManager) layoutManager;
            this.mGridManager.setSpanSizeLookup(this.mSpanSizeLookup);
        }
    }

    @Override // com.yftech.car.widget.media.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        int size = this.mList.size();
        if (size == 0) {
            return this.mUsbListEmptyLayoutId != -1 ? 1 : 0;
        }
        if (this.mHeadItemLayoutId != -1) {
            size++;
        }
        return this.mEndingItemLayoutId != -1 ? size + 1 : size;
    }

    public int getDataListSize() {
        return this.mList.size();
    }

    public List<MediaFolder> getFolderList() {
        return this.mList;
    }

    public boolean isEmptyItemFolderLayoutId() {
        return this.mItemFolderLayoutId == -1;
    }

    public boolean isEmptyHeadItemLayoutId() {
        return this.mHeadItemLayoutId == -1;
    }

    public boolean updateList(List<MediaFolder> list, boolean z) {
        if (list != null && list.equals(this.mList)) {
            return false;
        }
        synchronized (this.mList) {
            if (z) {
                try {
                    this.mList.clear();
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (list != null) {
                this.mList.addAll(list);
            }
        }
        if (Looper.myLooper() != Looper.getMainLooper()) {
            return true;
        }
        notifyDataSetChanged();
        return true;
    }

    public void setOnItemFolderListener(OnItemFolderListener onItemFolderListener) {
        this.mOnItemFolderListener = onItemFolderListener;
    }

    public void release() {
        this.mRootHeadView = null;
        this.mRootEndingView = null;
    }
}
