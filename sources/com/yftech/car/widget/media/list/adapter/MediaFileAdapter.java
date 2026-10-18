package com.yftech.car.widget.media.list.adapter;

import android.content.res.TypedArray;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import com.yftech.car.media.data.entity.MediaFile;
import com.yftech.car.utils.Loger;
import com.yftech.car.widget.media.R;
import com.yftech.car.widget.media.list.holder.BaseFileHolder;
import com.yftech.car.widget.media.list.holder.MediaDateFileHolder;
import com.yftech.car.widget.media.list.holder.MediaFileHolder;
import com.yftech.car.widget.media.manager.MediaDataManager;
import com.yftech.car.widget.media.photo.util.PhotoDataPlayManager;
import com.yftech.car.widget.media.recyclerview.widget.GridLayoutManager;
import com.yftech.car.widget.media.recyclerview.widget.RecyclerView;
import com.yftech.car.widget.media.video.VideoDataPlayManager;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: /home/user/work/dex/classes3.dex */
public class MediaFileAdapter extends RecyclerView.Adapter<BaseFileHolder> implements View.OnLongClickListener {
    private static final int ENDING = -101;
    private static final int HEAD = -100;
    private static final String TAG = "MediaFileAdapter";
    public onItemLongClickListener longClickListener;
    private final int mCollectListEmptyLayoutId;
    private long mCurrentTime;
    private final int mEndingItemLayoutId;
    private GridLayoutManager mGridManager;
    private final int mHeadItemLayoutId;
    private final int mItemDateLayoutId;
    private final int mItemDirectoryLayoutId;
    private final int mItemFileLayoutId;
    private long mNotifyDataSetChangedTime;
    private OnItemFileListener mOnItemFileListener;
    private final int mPlayListEmptyLayoutId;
    private View mRootEndingView;
    private View mRootHeadView;
    private final int mSearchListEmptyLayoutId;
    private String mSearchText;
    private final int mUsbListEmptyLayoutId;
    private final List<MediaFile> mList = new ArrayList();
    private boolean isDirectory = false;
    private boolean isCheckBox = false;
    private final Handler mHandler = new Handler(Looper.getMainLooper()) { // from class: com.yftech.car.widget.media.list.adapter.MediaFileAdapter.1
        @Override // android.os.Handler
        public void handleMessage(@NonNull Message message) {
            synchronized (MediaFileAdapter.this.mList) {
                MediaFileAdapter.this.notifyDataSetChanged();
            }
            MediaFileAdapter.this.mNotifyDataSetChangedTime = System.currentTimeMillis();
        }
    };
    private final GridLayoutManager.SpanSizeLookup mSpanSizeLookup = new GridLayoutManager.SpanSizeLookup() { // from class: com.yftech.car.widget.media.list.adapter.MediaFileAdapter.3
        @Override // com.yftech.car.widget.media.recyclerview.widget.GridLayoutManager.SpanSizeLookup
        public int getSpanSize(int i) {
            if (MediaFileAdapter.this.mList.size() <= i || ((MediaFile) MediaFileAdapter.this.mList.get(i)).getType() == -11) {
                return MediaFileAdapter.this.mGridManager.getSpanCount();
            }
            return 1;
        }
    };
    private final MediaFileHolder.OnFileItemClickListener mOnFileItemClickListener = new MediaFileHolder.OnFileItemClickListener() { // from class: com.yftech.car.widget.media.list.adapter.MediaFileAdapter.4
        @Override // com.yftech.car.widget.media.list.holder.MediaFileHolder.OnFileItemClickListener
        public void onItem(MediaFile mediaFile, int i) {
            long currentTimeMillis = System.currentTimeMillis();
            Loger.i(MediaFileAdapter.TAG, "onItem->time=" + currentTimeMillis + ";mCurrentTime=" + MediaFileAdapter.this.mCurrentTime);
            if (Math.abs(currentTimeMillis - MediaFileAdapter.this.mCurrentTime) > 350) {
                MediaFileAdapter.this.mCurrentTime = currentTimeMillis;
                if (MediaFileAdapter.this.mOnItemFileListener != null) {
                    Loger.i(MediaFileAdapter.TAG, "onItem->onItemFile->title=" + mediaFile.getTitle() + ";position=" + i);
                    if (mediaFile.getType() == 1) {
                        VideoDataPlayManager.getInstance().setPlayListData(MediaFileAdapter.this.mList, i);
                    } else if (mediaFile.getType() == 2) {
                        PhotoDataPlayManager.getInstance().setPlayListData(MediaFileAdapter.this.mList, mediaFile.getId());
                    }
                    MediaFileAdapter.this.mOnItemFileListener.onListFile(MediaFileAdapter.this.mList, i);
                    MediaFileAdapter.this.mOnItemFileListener.onItemFile(mediaFile);
                }
            }
        }
    };

    /* loaded from: /home/user/work/dex/classes3.dex */
    public static abstract class OnItemFileListener {
        public int getMediaListType() {
            return 0;
        }

        public int getSearchFlags() {
            return 0;
        }

        public void onCheckBoxStatus(int i, boolean z) {
        }

        public void onItemFile(MediaFile mediaFile) {
        }

        public void onListFile(List<MediaFile> list, int i) {
        }

        public void onListSizeChange(int i) {
        }

        public void removeItemDecorationAt(int i) {
        }
    }

    /* loaded from: /home/user/work/dex/classes3.dex */
    public interface onItemLongClickListener {
        void onItemLongClick(int i, MediaFile mediaFile);
    }

    public MediaFileAdapter(TypedArray typedArray) {
        this.mHeadItemLayoutId = typedArray.getResourceId(R.styleable.media_list_layout_media_head_item_layout_id, -1);
        this.mItemFileLayoutId = typedArray.getResourceId(R.styleable.media_list_layout_media_item_file_layout_id, -1);
        this.mItemDateLayoutId = typedArray.getResourceId(R.styleable.media_list_layout_media_item_date_layout_id, -1);
        this.mItemDirectoryLayoutId = typedArray.getResourceId(R.styleable.media_list_layout_media_item_directory_layout_id, -1);
        this.mEndingItemLayoutId = typedArray.getResourceId(R.styleable.media_list_layout_media_ending_item_layout_id, -1);
        this.mUsbListEmptyLayoutId = typedArray.getResourceId(R.styleable.media_list_layout_media_usb_list_empty_layout_id, -1);
        this.mCollectListEmptyLayoutId = typedArray.getResourceId(R.styleable.media_list_layout_media_collect_list_empty_layout_id, -1);
        this.mPlayListEmptyLayoutId = typedArray.getResourceId(R.styleable.media_list_layout_media_play_list_empty_layout_id, -1);
        this.mSearchListEmptyLayoutId = typedArray.getResourceId(R.styleable.media_list_layout_media_search_empty_layout_id, -1);
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
        if (this.mEndingItemLayoutId != -1 && i == this.mList.size() - 1) {
            return ENDING;
        }
        if (this.mHeadItemLayoutId != -1) {
            i--;
        }
        return (this.mList.size() <= i || this.mList.get(i).getType() != -11) ? 0 : -11;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0072  */
    @Override // com.yftech.car.widget.media.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public BaseFileHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i) {
        View inflate;
        View view;
        if (getDataListSize() != 0) {
            if (i != -11) {
                switch (i) {
                    case ENDING /* -101 */:
                        return new MediaFileHolder(this.mRootEndingView);
                    case -100:
                        return new MediaFileHolder(this.mRootHeadView);
                    default:
                        if (this.isDirectory) {
                            inflate = LayoutInflater.from(viewGroup.getContext()).inflate(this.mItemDirectoryLayoutId, viewGroup, false);
                        } else {
                            inflate = LayoutInflater.from(viewGroup.getContext()).inflate(this.mItemFileLayoutId, viewGroup, false);
                        }
                        final MediaFileHolder mediaFileHolder = new MediaFileHolder(this, inflate);
                        mediaFileHolder.setOnFileItemClickListener(this.mOnFileItemClickListener);
                        inflate.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.yftech.car.widget.media.list.adapter.MediaFileAdapter.2
                            @Override // android.view.View.OnLongClickListener
                            public boolean onLongClick(View view2) {
                                if (MediaFileAdapter.this.longClickListener == null) {
                                    return true;
                                }
                                MediaFileAdapter.this.longClickListener.onItemLongClick(mediaFileHolder.getmPosition(), (MediaFile) MediaFileAdapter.this.mList.get(mediaFileHolder.getmPosition()));
                                return true;
                            }
                        });
                        return mediaFileHolder;
                }
            }
            return new MediaDateFileHolder(LayoutInflater.from(viewGroup.getContext()).inflate(this.mItemDateLayoutId, viewGroup, false), true);
        }
        Log.e(TAG, "onCreateViewHolder: list is Empty");
        if (this.mOnItemFileListener != null) {
            int mediaListType = getMediaListType();
            if (mediaListType == 0) {
                if (this.mCollectListEmptyLayoutId != -1) {
                    Loger.e(TAG, "onCreateViewHolder: COLLECT");
                    view = LayoutInflater.from(viewGroup.getContext()).inflate(this.mCollectListEmptyLayoutId, viewGroup, false);
                }
            } else {
                switch (mediaListType) {
                    case 100:
                        if (this.mPlayListEmptyLayoutId != -1) {
                            view = LayoutInflater.from(viewGroup.getContext()).inflate(this.mPlayListEmptyLayoutId, viewGroup, false);
                            break;
                        }
                        break;
                    case 101:
                        if (this.mSearchListEmptyLayoutId != -1) {
                            view = LayoutInflater.from(viewGroup.getContext()).inflate(this.mSearchListEmptyLayoutId, viewGroup, false);
                            break;
                        }
                        break;
                    default:
                        if (this.mUsbListEmptyLayoutId != -1) {
                            view = LayoutInflater.from(viewGroup.getContext()).inflate(this.mUsbListEmptyLayoutId, viewGroup, false);
                            break;
                        }
                        break;
                }
            }
            if (view == null) {
                view = new View(viewGroup.getContext());
            }
            return new MediaFileHolder(view);
        }
        view = null;
        if (view == null) {
        }
        return new MediaFileHolder(view);
    }

    @Override // com.yftech.car.widget.media.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(@NonNull BaseFileHolder baseFileHolder, int i) {
        int i2;
        if (this.mList.size() > 0) {
            if (this.mHeadItemLayoutId == -1) {
                i2 = i;
            } else if (i == 0) {
                return;
            } else {
                i2 = i - 1;
            }
            if (this.mEndingItemLayoutId == -1 || i != this.mList.size() - 1) {
                MediaFile mediaFile = this.mList.get(i2);
                if (mediaFile.getType() == -11) {
                    baseFileHolder.setDateTime(mediaFile);
                    return;
                }
                if (baseFileHolder.isCheckBox()) {
                    if (mediaFile.getType() != 4) {
                        baseFileHolder.setCheckBoxVisibility(this.isCheckBox ? 0 : 8);
                    } else {
                        baseFileHolder.setCheckBoxVisibility(8);
                    }
                }
                baseFileHolder.setMediaFile(mediaFile, i2);
            }
        }
    }

    public int getMediaListType() {
        if (this.mOnItemFileListener == null) {
            return 6;
        }
        return this.mOnItemFileListener.getMediaListType();
    }

    public int getSearchFlags() {
        if (this.mOnItemFileListener == null) {
            return 0;
        }
        return this.mOnItemFileListener.getSearchFlags();
    }

    public void removeItemDecorationAt(int i) {
        if (this.mOnItemFileListener != null) {
            this.mOnItemFileListener.removeItemDecorationAt(i);
            this.mList.remove(i);
            notifyItemRemoved(i);
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

    public int getSelectedPosition(MediaFile mediaFile) {
        String folderPath = mediaFile.getFolderPath();
        if (folderPath != null) {
            for (int i = 0; i < this.mList.size(); i++) {
                MediaFile mediaFile2 = this.mList.get(i);
                if (mediaFile2.getType() == 4) {
                    if (folderPath.startsWith(mediaFile2.getFolderPath())) {
                        return this.mHeadItemLayoutId != -1 ? i + 1 : i;
                    }
                } else if (mediaFile.getId() == mediaFile2.getId()) {
                    return this.mHeadItemLayoutId != -1 ? i + 1 : i;
                }
            }
        }
        return 0;
    }

    public int getSelectedPosition(long j) {
        for (int i = 0; i < this.mList.size(); i++) {
            if (j == this.mList.get(i).getId()) {
                return this.mHeadItemLayoutId != -1 ? i + 1 : i;
            }
        }
        return 0;
    }

    @Override // com.yftech.car.widget.media.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        int size = this.mList.size();
        if (size == 0) {
            if (this.mOnItemFileListener == null) {
                return 0;
            }
            int mediaListType = getMediaListType();
            if (mediaListType == 0) {
                return this.mCollectListEmptyLayoutId != -1 ? 1 : 0;
            }
            switch (mediaListType) {
                case 100:
                    return this.mPlayListEmptyLayoutId != -1 ? 1 : 0;
                case 101:
                    return this.mSearchListEmptyLayoutId != -1 ? 1 : 0;
                default:
                    return this.mUsbListEmptyLayoutId != -1 ? 1 : 0;
            }
        }
        if (this.mHeadItemLayoutId != -1) {
            size++;
        }
        return this.mEndingItemLayoutId != -1 ? size + 1 : size;
    }

    public void setSearchText(String str) {
        this.mSearchText = str;
    }

    public String getSearchText() {
        return this.mSearchText;
    }

    public int getDataListSize() {
        return this.mList.size();
    }

    public boolean isEmptyItemDirectoryLayoutId() {
        return this.mItemDirectoryLayoutId == -1;
    }

    public boolean isEmptyItemFileLayoutId() {
        return this.mItemFileLayoutId == -1;
    }

    public boolean isEmptyItemDateLayoutId() {
        return this.mItemDateLayoutId == -1;
    }

    public boolean isEmptyHeadItemLayoutId() {
        return this.mHeadItemLayoutId == -1;
    }

    public boolean updateDirectoryList(List<MediaFile> list) {
        synchronized (this.mList) {
            if (list != null) {
                try {
                    if (list.equals(this.mList)) {
                        return false;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            this.mList.clear();
            if (list != null) {
                this.mList.addAll(list);
            }
            this.isDirectory = true;
            setCancelCheckBox();
            if (this.mOnItemFileListener != null) {
                this.mOnItemFileListener.onListSizeChange(this.mList.size());
            }
            return true;
        }
    }

    public boolean updateList(List<MediaFile> list, boolean z) {
        synchronized (this.mList) {
            if (list != null) {
                try {
                    if (list.equals(this.mList)) {
                        if (this.mOnItemFileListener != null) {
                            this.mOnItemFileListener.onListSizeChange(this.mList.size());
                        }
                        return false;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (z) {
                this.mList.clear();
            }
            if (list != null) {
                this.mList.addAll(list);
            }
            this.isDirectory = false;
            setCancelCheckBox();
            if (this.mOnItemFileListener != null) {
                this.mOnItemFileListener.onListSizeChange(this.mList.size());
            }
            return true;
        }
    }

    public void setOnItemFileListener(OnItemFileListener onItemFileListener) {
        this.mOnItemFileListener = onItemFileListener;
    }

    public boolean isCheckBox() {
        return this.isCheckBox;
    }

    @Override // android.view.View.OnLongClickListener
    public boolean onLongClick(View view) {
        this.isCheckBox = !this.isCheckBox;
        if (!this.isCheckBox) {
            for (MediaFile mediaFile : this.mList) {
                Log.d(TAG, "onLongClick: file file name==" + mediaFile.getFileName() + ",tab == " + mediaFile.getTab());
                mediaFile.setTab(0);
            }
        }
        updateCheckBoxStatus();
        notifyDataSetChangedList();
        return true;
    }

    public void setCancelCheckBox() {
        if (this.isCheckBox) {
            this.isCheckBox = false;
            for (MediaFile mediaFile : this.mList) {
                Log.d(TAG, "onLongClick: file file name==" + mediaFile.getFileName() + ",tab == " + mediaFile.getTab());
                mediaFile.setTab(0);
            }
            updateCheckBoxStatus();
        }
    }

    public boolean setCheckBox(boolean z) {
        boolean z2;
        if (this.isCheckBox != z) {
            this.isCheckBox = z;
            z2 = true;
        } else {
            z2 = false;
        }
        if (!z) {
            for (MediaFile mediaFile : this.mList) {
                Log.d(TAG, "onLongClick: file file name==" + mediaFile.getFileName() + ",tab == " + mediaFile.getTab());
                mediaFile.setTab(0);
            }
        }
        Log.d(TAG, "setCheckBox: checkBox==" + z);
        updateCheckBoxStatus();
        notifyDataSetChangedList();
        return z2;
    }

    public void updateCheckBoxStatus() {
        if (this.mOnItemFileListener != null) {
            int i = 0;
            Iterator<MediaFile> it = this.mList.iterator();
            while (it.hasNext()) {
                if (it.next().getTab() == 1) {
                    i++;
                }
            }
            this.mOnItemFileListener.onCheckBoxStatus(i, this.isCheckBox);
        }
    }

    public void setAllSelectedStatus(boolean z) {
        for (MediaFile mediaFile : this.mList) {
            if (mediaFile.getType() == 2 || mediaFile.getType() == 1 || mediaFile.getType() == 0) {
                mediaFile.setTab(z ? 1 : 0);
            }
        }
        updateCheckBoxStatus();
        notifyDataSetChangedList();
    }

    public long getSelectedSize(boolean z) {
        long j = 0;
        for (MediaFile mediaFile : this.mList) {
            if (mediaFile.getTab() == 1) {
                j = z ? j + 1 : j + mediaFile.getSize();
            }
        }
        return j;
    }

    public boolean isAllSelected() {
        int i = 0;
        for (MediaFile mediaFile : this.mList) {
            if (mediaFile.getType() == 2 || mediaFile.getType() == 1 || mediaFile.getType() == 0) {
                i++;
            }
        }
        Iterator<MediaFile> it = this.mList.iterator();
        int i2 = 0;
        while (it.hasNext()) {
            if (it.next().getTab() == 1) {
                i2++;
            }
        }
        return i2 == i;
    }

    public List<MediaFile> deleteDataList() {
        ArrayList arrayList = new ArrayList();
        for (MediaFile mediaFile : this.mList) {
            if (mediaFile.getType() != 4 && mediaFile.getTab() == 1) {
                arrayList.add(mediaFile);
            }
        }
        MediaDataManager.getInstance().deleteMediaFileList(arrayList);
        return arrayList;
    }

    public void notifyDataSetChangedList() {
        long currentTimeMillis = System.currentTimeMillis();
        this.mHandler.removeMessages(0);
        if (Math.abs(currentTimeMillis - this.mNotifyDataSetChangedTime) > 500) {
            synchronized (this.mList) {
                notifyDataSetChanged();
            }
            this.mNotifyDataSetChangedTime = currentTimeMillis;
            return;
        }
        this.mHandler.sendEmptyMessageDelayed(0, 500L);
    }

    public void release() {
        this.mRootHeadView = null;
        this.mRootEndingView = null;
    }

    public List<MediaFile> getDataList() {
        return this.mList;
    }

    public boolean equalsFileList(List<MediaFile> list) {
        if (list == null || list.isEmpty() || this.mList.isEmpty()) {
            return false;
        }
        Iterator<MediaFile> it = this.mList.iterator();
        int i = 0;
        while (it.hasNext()) {
            if (it.next().getType() != -11) {
                i++;
            }
        }
        if (i != list.size()) {
            return false;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < this.mList.size(); i3++) {
            MediaFile mediaFile = this.mList.get(i3);
            if (mediaFile.getType() != -11) {
                Iterator<MediaFile> it2 = list.iterator();
                while (true) {
                    if (it2.hasNext()) {
                        if (mediaFile.getId() == it2.next().getId()) {
                            i2++;
                            break;
                        }
                    }
                }
            }
        }
        return i2 == list.size() && i2 == i;
    }

    /* loaded from: /home/user/work/dex/classes3.dex */
    private class EmptyHolder extends RecyclerView.ViewHolder {
        public EmptyHolder(@NonNull View view) {
            super(view);
        }
    }

    public void setLongClickListener(onItemLongClickListener onitemlongclicklistener) {
        this.longClickListener = onitemlongclicklistener;
    }
}
