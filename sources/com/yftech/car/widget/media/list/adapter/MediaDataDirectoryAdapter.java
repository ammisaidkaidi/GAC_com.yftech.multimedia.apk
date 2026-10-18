package com.yftech.car.widget.media.list.adapter;

import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import com.yftech.car.widget.media.list.holder.MediaDataDirectoryHolder;
import com.yftech.car.widget.media.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.List;

/* loaded from: /home/user/work/dex/classes3.dex */
public class MediaDataDirectoryAdapter extends RecyclerView.Adapter<MediaDataDirectoryHolder> {
    private String mDirectoryPath;
    private final int mLayoutItemId;
    private MediaDataDirectoryHolder.OnItemClickPathListener mOnItemPathLister;
    private String mRootDirectory;
    private final List<String> mList = new ArrayList();
    private String mBaseRootDirectoryPath = null;
    private final MediaDataDirectoryHolder.OnItemClickPathListener mOnItemClickPathListener = new MediaDataDirectoryHolder.OnItemClickPathListener() { // from class: com.yftech.car.widget.media.list.adapter.MediaDataDirectoryAdapter.1
        @Override // com.yftech.car.widget.media.list.holder.MediaDataDirectoryHolder.OnItemClickPathListener
        public void onItemPath(String str) {
            if (MediaDataDirectoryAdapter.this.mOnItemPathLister != null) {
                MediaDataDirectoryAdapter.this.mOnItemPathLister.onItemPath(str);
            }
        }
    };

    public MediaDataDirectoryAdapter(int i, String str) {
        this.mLayoutItemId = i;
        this.mRootDirectory = str;
        if (TextUtils.isEmpty(this.mRootDirectory)) {
            this.mRootDirectory = "根目录";
        }
        if (i == -1) {
            throw new RuntimeException("MediaDataDirectoryList: directory_item_layout_id 没有设置布局，无法加载适配器item子类界面,请设置item布局再试");
        }
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.yftech.car.widget.media.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    public MediaDataDirectoryHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i) {
        MediaDataDirectoryHolder mediaDataDirectoryHolder = new MediaDataDirectoryHolder(LayoutInflater.from(viewGroup.getContext()).inflate(this.mLayoutItemId, viewGroup, false), this);
        mediaDataDirectoryHolder.setOnItemClickPathListener(this.mOnItemClickPathListener);
        return mediaDataDirectoryHolder;
    }

    @Override // com.yftech.car.widget.media.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(@NonNull MediaDataDirectoryHolder mediaDataDirectoryHolder, int i) {
        mediaDataDirectoryHolder.setDirectoryText(this.mList.get(i), i);
    }

    @Override // com.yftech.car.widget.media.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.mList.size();
    }

    public void updateList(List<String> list) {
        this.mList.clear();
        if (list != null && list.size() > 0) {
            this.mList.addAll(list);
        }
        notifyDataSetChanged();
    }

    public String getRootDirectory() {
        return this.mRootDirectory;
    }

    public String getBaseRootDirectoryPath() {
        return this.mBaseRootDirectoryPath;
    }

    public String getCurrentDirectoryPath() {
        return this.mDirectoryPath;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x003e, code lost:
    
        notifyDataSetChanged();
     */
    /* JADX WARN: Code restructure failed: missing block: B:4:0x001b, code lost:
    
        if (r5.length() > r4.length()) goto L6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x0023, code lost:
    
        if (r5.lastIndexOf("/") <= 0) goto L13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0025, code lost:
    
        r5 = r5.substring(0, r5.lastIndexOf("/"));
        r3.mList.add(0, r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x003c, code lost:
    
        if (r5.length() > r4.length()) goto L15;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int updateDirectoryList(String str, String str2) {
        this.mBaseRootDirectoryPath = str;
        this.mDirectoryPath = str2;
        if (str2 != null) {
            this.mList.clear();
            this.mList.add(this.mDirectoryPath);
        }
        return Math.max(this.mList.size() - 1, 0);
    }

    public void setOnItemPathListener(MediaDataDirectoryHolder.OnItemClickPathListener onItemClickPathListener) {
        this.mOnItemPathLister = onItemClickPathListener;
    }
}
