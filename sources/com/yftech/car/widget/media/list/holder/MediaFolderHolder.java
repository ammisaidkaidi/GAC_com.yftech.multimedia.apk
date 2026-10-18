package com.yftech.car.widget.media.list.holder;

import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import com.yftech.car.media.data.entity.MediaFile;
import com.yftech.car.media.data.entity.MediaFolder;
import com.yftech.car.widget.media.layout.SelectedFrameLayout;
import com.yftech.car.widget.media.manager.MusicManager;
import com.yftech.car.widget.media.recyclerview.widget.RecyclerView;
import com.yftech.car.widget.media.text.MediaFolderTextView;
import com.yftech.car.widget.media.view.MediaImageView;
import com.yftech.car.widget.media.view.PlayAnimation;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

/* loaded from: /home/user/work/dex/classes3.dex */
public class MediaFolderHolder extends RecyclerView.ViewHolder implements View.OnClickListener {
    private MediaImageView mImageView;
    private MediaFolder mMediaFolder;
    private OnClickFolderListener mOnClickFolderListener;
    private PlayAnimation mPlayAnimation;
    private SelectedFrameLayout mSelectedFrameLayout;
    private final List<MediaFolderTextView> mTextViewList;
    private int position;

    /* loaded from: /home/user/work/dex/classes3.dex */
    public interface OnClickFolderListener {
        void onItemFolder(MediaFolder mediaFolder, int i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public MediaFolderHolder(@NonNull View view) {
        super(view);
        this.mTextViewList = new ArrayList();
        if (view instanceof ViewGroup) {
            LinkedList linkedList = new LinkedList();
            linkedList.add((ViewGroup) view);
            while (!linkedList.isEmpty()) {
                ViewGroup viewGroup = (ViewGroup) linkedList.removeFirst();
                for (int i = 0; i < viewGroup.getChildCount(); i++) {
                    SelectedFrameLayout childAt = viewGroup.getChildAt(i);
                    if (childAt instanceof ViewGroup) {
                        linkedList.add((ViewGroup) childAt);
                        if (childAt instanceof SelectedFrameLayout) {
                            this.mSelectedFrameLayout = childAt;
                        }
                    } else if (childAt instanceof MediaFolderTextView) {
                        this.mTextViewList.add((MediaFolderTextView) childAt);
                    } else if (childAt instanceof PlayAnimation) {
                        this.mPlayAnimation = (PlayAnimation) childAt;
                    } else if (childAt instanceof MediaImageView) {
                        this.mImageView = (MediaImageView) childAt;
                    }
                }
            }
            return;
        }
        if (view instanceof MediaFolderTextView) {
            this.mTextViewList.add((MediaFolderTextView) view);
        } else if (view instanceof PlayAnimation) {
            this.mPlayAnimation = (PlayAnimation) view;
        }
    }

    public void setMediaFolder(MediaFolder mediaFolder, int i) {
        this.mMediaFolder = mediaFolder;
        this.position = i;
        Iterator<MediaFolderTextView> it = this.mTextViewList.iterator();
        while (it.hasNext()) {
            it.next().updateFolder(mediaFolder, i);
        }
        if (this.mPlayAnimation != null) {
            List data = mediaFolder.getData();
            if (data.size() > 0) {
                MediaFile mediaFile = (MediaFile) data.get(0);
                if (mediaFile.getType() != 4) {
                    MediaFile playMusic = MusicManager.getInstance().getPlayMusic();
                    switch (mediaFolder.getType()) {
                        case 0:
                            this.mPlayAnimation.setMediaType(mediaFile.getType());
                            if (mediaFolder.getFolder().equals(playMusic.getFolder())) {
                                this.mPlayAnimation.setSelectedPlay(true);
                                this.mPlayAnimation.setNumberText("");
                                setSelectedStatus(true);
                                return;
                            }
                            this.mPlayAnimation.setSelectedPlay(false);
                            this.mPlayAnimation.setNumberText((i + 1) + "");
                            setSelectedStatus(false);
                            return;
                        case 1:
                            this.mPlayAnimation.setMediaType(mediaFile.getType());
                            if (mediaFolder.getFolder().equals(playMusic.getArtist())) {
                                this.mPlayAnimation.setSelectedPlay(true);
                                this.mPlayAnimation.setNumberText("");
                                setSelectedStatus(true);
                                return;
                            }
                            this.mPlayAnimation.setSelectedPlay(false);
                            this.mPlayAnimation.setNumberText((i + 1) + "");
                            setSelectedStatus(false);
                            return;
                        case 2:
                            this.mPlayAnimation.setMediaType(mediaFile.getType());
                            if (mediaFolder.getFolder().equals(playMusic.getAlbum())) {
                                this.mPlayAnimation.setSelectedPlay(true);
                                this.mPlayAnimation.setNumberText("");
                                setSelectedStatus(true);
                                return;
                            }
                            this.mPlayAnimation.setSelectedPlay(false);
                            this.mPlayAnimation.setNumberText((i + 1) + "");
                            setSelectedStatus(false);
                            return;
                        case 3:
                            this.mPlayAnimation.setMediaType(mediaFile.getType());
                            if (mediaFolder.getFolder().equals(playMusic.getGenre())) {
                                this.mPlayAnimation.setSelectedPlay(true);
                                this.mPlayAnimation.setNumberText("");
                                setSelectedStatus(true);
                                return;
                            }
                            this.mPlayAnimation.setSelectedPlay(false);
                            this.mPlayAnimation.setNumberText((i + 1) + "");
                            setSelectedStatus(false);
                            return;
                        default:
                            return;
                    }
                }
            }
        }
    }

    private void setSelectedStatus(boolean z) {
        this.itemView.setSelected(z);
        if (this.mImageView != null) {
            this.mImageView.setSelected(z);
        }
        if (this.mSelectedFrameLayout != null) {
            this.mSelectedFrameLayout.setSelected(z);
        }
    }

    public void setOnClickFolderListener(OnClickFolderListener onClickFolderListener) {
        this.itemView.setOnClickListener(this);
        this.mOnClickFolderListener = onClickFolderListener;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (this.mOnClickFolderListener != null) {
            this.mOnClickFolderListener.onItemFolder(this.mMediaFolder, this.position);
        }
    }
}
