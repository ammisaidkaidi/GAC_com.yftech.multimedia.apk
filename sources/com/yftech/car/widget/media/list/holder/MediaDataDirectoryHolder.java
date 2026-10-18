package com.yftech.car.widget.media.list.holder;

import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import com.yftech.car.widget.media.list.adapter.MediaDataDirectoryAdapter;
import com.yftech.car.widget.media.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;

/* loaded from: /home/user/work/dex/classes3.dex */
public class MediaDataDirectoryHolder extends RecyclerView.ViewHolder {
    private static final String TAG = "MediaDataDirectoryHolde";
    private MediaDataDirectoryAdapter mAdapter;
    private OnItemClickPathListener mOnItemClickPathListener;
    private String mPath;
    private final List<TextView> mTextViewList;

    /* loaded from: /home/user/work/dex/classes3.dex */
    public interface OnItemClickPathListener {
        void onItemPath(String str);
    }

    public MediaDataDirectoryHolder(@NonNull View view, MediaDataDirectoryAdapter mediaDataDirectoryAdapter) {
        super(view);
        this.mTextViewList = new ArrayList();
        this.mAdapter = mediaDataDirectoryAdapter;
        if (view instanceof ViewGroup) {
            LinkedList linkedList = new LinkedList();
            linkedList.add((ViewGroup) view);
            while (!linkedList.isEmpty()) {
                ViewGroup viewGroup = (ViewGroup) linkedList.removeFirst();
                for (int i = 0; i < viewGroup.getChildCount(); i++) {
                    View childAt = viewGroup.getChildAt(i);
                    if (childAt instanceof ViewGroup) {
                        linkedList.add((ViewGroup) childAt);
                    } else if (childAt instanceof TextView) {
                        this.mTextViewList.add((TextView) childAt);
                    }
                }
            }
        } else if (view instanceof TextView) {
            this.mTextViewList.add((TextView) view);
        }
        view.setOnClickListener(new View.OnClickListener() { // from class: com.yftech.car.widget.media.list.holder.-$$Lambda$MediaDataDirectoryHolder$6Wj0UJMfNx4x81SNo_Wjymmk1qM
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                MediaDataDirectoryHolder.lambda$new$0(MediaDataDirectoryHolder.this, view2);
            }
        });
    }

    public static /* synthetic */ void lambda$new$0(MediaDataDirectoryHolder mediaDataDirectoryHolder, View view) {
        if (mediaDataDirectoryHolder.mOnItemClickPathListener == null || mediaDataDirectoryHolder.mPath == null) {
            return;
        }
        mediaDataDirectoryHolder.mOnItemClickPathListener.onItemPath(mediaDataDirectoryHolder.mPath);
    }

    public void setOnItemClickPathListener(OnItemClickPathListener onItemClickPathListener) {
        this.mOnItemClickPathListener = onItemClickPathListener;
    }

    public void setDirectoryText(String str, int i) {
        this.mPath = str;
        boolean equals = this.mAdapter.getCurrentDirectoryPath().equals(this.mPath);
        if (this.mTextViewList.size() > 0) {
            if (str != null && str.length() > 0) {
                if (str.length() > this.mAdapter.getBaseRootDirectoryPath().length()) {
                    if (str.charAt(str.length() - 1) == '/') {
                        str = str.substring(0, str.length() - 1);
                    }
                    int lastIndexOf = str.lastIndexOf("/");
                    if (lastIndexOf > 0 && lastIndexOf < str.length()) {
                        str = str.substring(lastIndexOf + 1);
                    }
                    if (this.mTextViewList.size() > 1) {
                        this.mTextViewList.get(0).setVisibility(0);
                        this.mTextViewList.get(1).setText(str);
                    } else {
                        this.mTextViewList.get(0).setVisibility(0);
                        this.mTextViewList.get(0).setText(str);
                    }
                } else if (this.mTextViewList.size() > 1) {
                    this.mTextViewList.get(0).setVisibility(8);
                    this.mTextViewList.get(1).setText(this.mAdapter.getRootDirectory());
                } else {
                    this.mTextViewList.get(0).setVisibility(0);
                    this.mTextViewList.get(0).setText(this.mAdapter.getRootDirectory());
                }
            } else if (this.mTextViewList.size() > 1) {
                this.mTextViewList.get(0).setVisibility(8);
                this.mTextViewList.get(1).setText(str);
            } else {
                this.mTextViewList.get(0).setVisibility(0);
                this.mTextViewList.get(0).setText(str);
            }
        }
        this.itemView.setSelected(equals);
    }
}
