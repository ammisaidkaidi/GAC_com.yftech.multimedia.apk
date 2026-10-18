package com.yftech.car.widget.media.list.holder;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.ImageView;
import com.yftech.car.media.data.entity.MediaFile;
import com.yftech.car.widget.media.layout.CheckBoxFrameLayout;
import com.yftech.car.widget.media.layout.SelectedFrameLayout;
import com.yftech.car.widget.media.list.adapter.MediaFileAdapter;
import com.yftech.car.widget.media.manager.MusicManager;
import com.yftech.car.widget.media.photo.util.PhotoDataPlayManager;
import com.yftech.car.widget.media.text.MediaDataModifyBtn;
import com.yftech.car.widget.media.text.MediaFileTextView;
import com.yftech.car.widget.media.text.PlayStatus;
import com.yftech.car.widget.media.utils.ImageLoadingManager;
import com.yftech.car.widget.media.video.VideoDataPlayManager;
import com.yftech.car.widget.media.view.MediaImageLoading;
import com.yftech.car.widget.media.view.MediaImageView;
import com.yftech.car.widget.media.view.PlayAnimation;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

/* loaded from: /home/user/work/dex/classes3.dex */
public class MediaFileHolder extends BaseFileHolder {
    private static final String TAG = "MediaFileHolder";
    private final MediaFileAdapter mAdapter;
    private CheckBox mCheckBox;
    private CheckBoxFrameLayout mCheckBoxFrameLayout;
    private MediaImageView mImageView;
    private MediaDataModifyBtn mMediaDataModifyBtn;
    private final View.OnClickListener mMediaDataModifyBtnOnClick;
    private MediaFile mMediaFile;
    private final List<MediaImageLoading> mMediaImageLoadingList;
    private final CompoundButton.OnCheckedChangeListener mOnCheckedChangeListener;
    private final View.OnClickListener mOnClickItem;
    private OnFileItemClickListener mOnFileItemClickListener;
    private final ImageLoadingManager.OnLoadingImageListener mOnLoadingImageListener;
    private PlayAnimation mPlayAnimation;
    private PlayStatus mPlayStatus;
    private int mPosition;
    private SelectedFrameLayout mSelectedFrameLayout;
    private final List<MediaFileTextView> mTextViewList;

    /* loaded from: /home/user/work/dex/classes3.dex */
    public interface OnFileItemClickListener {
        void onItem(MediaFile mediaFile, int i);
    }

    public MediaFileHolder(View view) {
        super(view);
        this.mTextViewList = new ArrayList();
        this.mMediaImageLoadingList = new ArrayList();
        this.mMediaDataModifyBtnOnClick = new View.OnClickListener() { // from class: com.yftech.car.widget.media.list.holder.MediaFileHolder.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                if (MediaFileHolder.this.mMediaDataModifyBtn.getClickModify() == 1 && MediaFileHolder.this.mMediaFile != null && MediaFileHolder.this.mMediaFile.getType() == 0) {
                    MusicManager.getInstance().addCollectItem(MediaFileHolder.this.mMediaFile);
                    MediaFileHolder.this.mMediaDataModifyBtn.setSelected(MusicManager.getInstance().isCollectMusic(MediaFileHolder.this.mMediaFile));
                }
            }
        };
        this.mOnClickItem = new View.OnClickListener() { // from class: com.yftech.car.widget.media.list.holder.MediaFileHolder.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                if (MediaFileHolder.this.mAdapter == null || !MediaFileHolder.this.mAdapter.isCheckBox()) {
                    if (MediaFileHolder.this.mOnFileItemClickListener == null || MediaFileHolder.this.mMediaFile == null) {
                        return;
                    }
                    MediaFileHolder.this.mOnFileItemClickListener.onItem(MediaFileHolder.this.mMediaFile, MediaFileHolder.this.mPosition);
                    return;
                }
                if (MediaFileHolder.this.mMediaFile != null && MediaFileHolder.this.mMediaFile.getType() != 4) {
                    if (MediaFileHolder.this.mCheckBox != null) {
                        boolean isChecked = MediaFileHolder.this.mCheckBox.isChecked();
                        if (MediaFileHolder.this.mCheckBoxFrameLayout != null) {
                            MediaFileHolder.this.mCheckBoxFrameLayout.setSelected(!isChecked);
                        }
                        MediaFileHolder.this.mCheckBox.setChecked(!isChecked);
                        MediaFileHolder.this.mMediaFile.setTab(!isChecked ? 1 : 0);
                        MediaFileHolder.this.mAdapter.updateCheckBoxStatus();
                        Log.d(MediaFileHolder.TAG, "onCheckedChanged: isChecked==" + isChecked + ",file==" + MediaFileHolder.this.mMediaFile.getFileName());
                        return;
                    }
                    Log.e(MediaFileHolder.TAG, "onClick: mCheckBox is null");
                    return;
                }
                Log.e(MediaFileHolder.TAG, "onClick: mMediaFile is null || mMediaFile.getType() == MediaFile.DIRECTORY");
            }
        };
        this.mOnCheckedChangeListener = new CompoundButton.OnCheckedChangeListener() { // from class: com.yftech.car.widget.media.list.holder.MediaFileHolder.3
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                if (MediaFileHolder.this.mMediaFile != null) {
                    MediaFileHolder.this.mMediaFile.setTab(z ? 1 : 0);
                    if (MediaFileHolder.this.mAdapter != null) {
                        MediaFileHolder.this.mAdapter.updateCheckBoxStatus();
                    }
                    if (MediaFileHolder.this.mCheckBoxFrameLayout != null) {
                        MediaFileHolder.this.mCheckBoxFrameLayout.setSelected(z);
                    }
                    Log.d(MediaFileHolder.TAG, "onCheckedChanged: isChecked==" + z + ",file==" + MediaFileHolder.this.mMediaFile.getFileName());
                }
            }
        };
        this.mOnLoadingImageListener = new ImageLoadingManager.OnLoadingImageListener() { // from class: com.yftech.car.widget.media.list.holder.MediaFileHolder.4
            @Override // com.yftech.car.widget.media.utils.ImageLoadingManager.OnLoadingImageListener
            public void onLoading(long j, int i, int i2) {
            }

            @Override // com.yftech.car.widget.media.utils.ImageLoadingManager.OnLoadingImageListener
            public void onLoadStart(long j) {
                if (MediaFileHolder.this.mMediaFile == null || MediaFileHolder.this.mMediaFile.getId() != j) {
                    return;
                }
                MediaFileHolder.this.setImageLoadingStatus(true);
            }

            @Override // com.yftech.car.widget.media.utils.ImageLoadingManager.OnLoadingImageListener
            public void onLoadFinish(long j) {
                if (MediaFileHolder.this.mMediaFile == null || MediaFileHolder.this.mMediaFile.getId() != j) {
                    return;
                }
                MediaFileHolder.this.setImageLoadingStatus(false);
            }

            @Override // com.yftech.car.widget.media.utils.ImageLoadingManager.OnLoadingImageListener
            public void onError(long j, int i) {
                if (MediaFileHolder.this.mMediaFile == null || MediaFileHolder.this.mMediaFile.getId() != j) {
                    return;
                }
                MediaFileHolder.this.setFailedResDrawable();
            }
        };
        this.mAdapter = null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public MediaFileHolder(MediaFileAdapter mediaFileAdapter, View view) {
        super(view);
        boolean z;
        this.mTextViewList = new ArrayList();
        this.mMediaImageLoadingList = new ArrayList();
        this.mMediaDataModifyBtnOnClick = new View.OnClickListener() { // from class: com.yftech.car.widget.media.list.holder.MediaFileHolder.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                if (MediaFileHolder.this.mMediaDataModifyBtn.getClickModify() == 1 && MediaFileHolder.this.mMediaFile != null && MediaFileHolder.this.mMediaFile.getType() == 0) {
                    MusicManager.getInstance().addCollectItem(MediaFileHolder.this.mMediaFile);
                    MediaFileHolder.this.mMediaDataModifyBtn.setSelected(MusicManager.getInstance().isCollectMusic(MediaFileHolder.this.mMediaFile));
                }
            }
        };
        this.mOnClickItem = new View.OnClickListener() { // from class: com.yftech.car.widget.media.list.holder.MediaFileHolder.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                if (MediaFileHolder.this.mAdapter == null || !MediaFileHolder.this.mAdapter.isCheckBox()) {
                    if (MediaFileHolder.this.mOnFileItemClickListener == null || MediaFileHolder.this.mMediaFile == null) {
                        return;
                    }
                    MediaFileHolder.this.mOnFileItemClickListener.onItem(MediaFileHolder.this.mMediaFile, MediaFileHolder.this.mPosition);
                    return;
                }
                if (MediaFileHolder.this.mMediaFile != null && MediaFileHolder.this.mMediaFile.getType() != 4) {
                    if (MediaFileHolder.this.mCheckBox != null) {
                        boolean isChecked = MediaFileHolder.this.mCheckBox.isChecked();
                        if (MediaFileHolder.this.mCheckBoxFrameLayout != null) {
                            MediaFileHolder.this.mCheckBoxFrameLayout.setSelected(!isChecked);
                        }
                        MediaFileHolder.this.mCheckBox.setChecked(!isChecked);
                        MediaFileHolder.this.mMediaFile.setTab(!isChecked ? 1 : 0);
                        MediaFileHolder.this.mAdapter.updateCheckBoxStatus();
                        Log.d(MediaFileHolder.TAG, "onCheckedChanged: isChecked==" + isChecked + ",file==" + MediaFileHolder.this.mMediaFile.getFileName());
                        return;
                    }
                    Log.e(MediaFileHolder.TAG, "onClick: mCheckBox is null");
                    return;
                }
                Log.e(MediaFileHolder.TAG, "onClick: mMediaFile is null || mMediaFile.getType() == MediaFile.DIRECTORY");
            }
        };
        this.mOnCheckedChangeListener = new CompoundButton.OnCheckedChangeListener() { // from class: com.yftech.car.widget.media.list.holder.MediaFileHolder.3
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public void onCheckedChanged(CompoundButton compoundButton, boolean z2) {
                if (MediaFileHolder.this.mMediaFile != null) {
                    MediaFileHolder.this.mMediaFile.setTab(z2 ? 1 : 0);
                    if (MediaFileHolder.this.mAdapter != null) {
                        MediaFileHolder.this.mAdapter.updateCheckBoxStatus();
                    }
                    if (MediaFileHolder.this.mCheckBoxFrameLayout != null) {
                        MediaFileHolder.this.mCheckBoxFrameLayout.setSelected(z2);
                    }
                    Log.d(MediaFileHolder.TAG, "onCheckedChanged: isChecked==" + z2 + ",file==" + MediaFileHolder.this.mMediaFile.getFileName());
                }
            }
        };
        this.mOnLoadingImageListener = new ImageLoadingManager.OnLoadingImageListener() { // from class: com.yftech.car.widget.media.list.holder.MediaFileHolder.4
            @Override // com.yftech.car.widget.media.utils.ImageLoadingManager.OnLoadingImageListener
            public void onLoading(long j, int i, int i2) {
            }

            @Override // com.yftech.car.widget.media.utils.ImageLoadingManager.OnLoadingImageListener
            public void onLoadStart(long j) {
                if (MediaFileHolder.this.mMediaFile == null || MediaFileHolder.this.mMediaFile.getId() != j) {
                    return;
                }
                MediaFileHolder.this.setImageLoadingStatus(true);
            }

            @Override // com.yftech.car.widget.media.utils.ImageLoadingManager.OnLoadingImageListener
            public void onLoadFinish(long j) {
                if (MediaFileHolder.this.mMediaFile == null || MediaFileHolder.this.mMediaFile.getId() != j) {
                    return;
                }
                MediaFileHolder.this.setImageLoadingStatus(false);
            }

            @Override // com.yftech.car.widget.media.utils.ImageLoadingManager.OnLoadingImageListener
            public void onError(long j, int i) {
                if (MediaFileHolder.this.mMediaFile == null || MediaFileHolder.this.mMediaFile.getId() != j) {
                    return;
                }
                MediaFileHolder.this.setFailedResDrawable();
            }
        };
        this.mAdapter = mediaFileAdapter;
        this.mTextViewList.clear();
        if (view instanceof ViewGroup) {
            LinkedList linkedList = new LinkedList();
            linkedList.add((ViewGroup) view);
            z = false;
            while (!linkedList.isEmpty()) {
                ViewGroup viewGroup = (ViewGroup) linkedList.removeFirst();
                boolean z2 = z;
                for (int i = 0; i < viewGroup.getChildCount(); i++) {
                    SelectedFrameLayout childAt = viewGroup.getChildAt(i);
                    if (childAt instanceof ViewGroup) {
                        if (childAt instanceof SelectedFrameLayout) {
                            this.mSelectedFrameLayout = childAt;
                        } else if (childAt instanceof CheckBoxFrameLayout) {
                            this.mCheckBoxFrameLayout = (CheckBoxFrameLayout) childAt;
                        }
                        linkedList.add((ViewGroup) childAt);
                    } else if (childAt instanceof MediaFileTextView) {
                        this.mTextViewList.add((MediaFileTextView) childAt);
                    } else if (childAt instanceof MediaImageView) {
                        this.mImageView = (MediaImageView) childAt;
                    } else if (childAt instanceof PlayAnimation) {
                        this.mPlayAnimation = (PlayAnimation) childAt;
                    } else if (childAt instanceof MediaImageLoading) {
                        this.mMediaImageLoadingList.add((MediaImageLoading) childAt);
                    } else if (childAt instanceof CheckBox) {
                        this.mCheckBox = (CheckBox) childAt;
                        this.mCheckBox.setOnCheckedChangeListener(this.mOnCheckedChangeListener);
                    } else if (childAt instanceof MediaDataModifyBtn) {
                        this.mMediaDataModifyBtn = (MediaDataModifyBtn) childAt;
                        this.mMediaDataModifyBtn.setOnClickListener(this.mMediaDataModifyBtnOnClick);
                    } else if (childAt instanceof PlayStatus) {
                        this.mPlayStatus = (PlayStatus) childAt;
                    }
                    if ("user_click".equals(childAt.getTag())) {
                        childAt.setOnClickListener(this.mOnClickItem);
                        z2 = true;
                    }
                }
                z = z2;
            }
        } else {
            if (view instanceof MediaFileTextView) {
                this.mTextViewList.add((MediaFileTextView) view);
            } else if (view instanceof MediaImageView) {
                this.mImageView = (MediaImageView) view;
            } else if (view instanceof PlayAnimation) {
                this.mPlayAnimation = (PlayAnimation) view;
            } else if (view instanceof PlayStatus) {
                this.mPlayStatus = (PlayStatus) view;
            }
            if ("user_click".equals(view.getTag())) {
                view.setOnClickListener(this.mOnClickItem);
                z = true;
            } else {
                z = false;
            }
        }
        if (!z) {
            view.setOnClickListener(this.mOnClickItem);
        }
        if (this.mPlayStatus == null || this.mPlayStatus.getClickFunction() <= 0) {
            return;
        }
        this.mPlayStatus.setOnClickListener(new View.OnClickListener() { // from class: com.yftech.car.widget.media.list.holder.-$$Lambda$MediaFileHolder$lik1MwFxlJdIC29QdZpzu9YqgNk
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                MediaFileHolder.lambda$new$0(MediaFileHolder.this, view2);
            }
        });
    }

    public static /* synthetic */ void lambda$new$0(MediaFileHolder mediaFileHolder, View view) {
        MediaFile playMusic = MusicManager.getInstance().getPlayMusic();
        if (MusicManager.getInstance().isPlaying()) {
            if (playMusic.getId() == mediaFileHolder.mMediaFile.getId()) {
                if (mediaFileHolder.mPlayStatus.isClickFunction(2)) {
                    MusicManager.getInstance().pause();
                    return;
                }
                return;
            } else {
                if (!mediaFileHolder.mPlayStatus.isClickFunction(1) || mediaFileHolder.mOnFileItemClickListener == null || mediaFileHolder.mMediaFile == null) {
                    return;
                }
                mediaFileHolder.mOnFileItemClickListener.onItem(mediaFileHolder.mMediaFile, mediaFileHolder.mPosition);
                return;
            }
        }
        if (playMusic.getId() == mediaFileHolder.mMediaFile.getId()) {
            if (mediaFileHolder.mPlayStatus.isClickFunction(1)) {
                MusicManager.getInstance().play();
            }
        } else {
            if (!mediaFileHolder.mPlayStatus.isClickFunction(1) || mediaFileHolder.mOnFileItemClickListener == null || mediaFileHolder.mMediaFile == null) {
                return;
            }
            mediaFileHolder.mOnFileItemClickListener.onItem(mediaFileHolder.mMediaFile, mediaFileHolder.mPosition);
        }
    }

    public void setOnFileItemClickListener(OnFileItemClickListener onFileItemClickListener) {
        this.mOnFileItemClickListener = onFileItemClickListener;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.yftech.car.widget.media.list.holder.BaseFileHolder
    public boolean setMediaFile(MediaFile mediaFile, int i) {
        MediaFile playMusic;
        boolean z;
        this.mMediaFile = mediaFile;
        int type = mediaFile.getType();
        this.mPosition = i;
        if (this.mImageView == null) {
            setImageLoadingHide();
        } else if (type != 4) {
            if (this.mImageView.getLoadFileBitmap() == 0) {
                ImageLoadingManager.getInstance().loadImage(this, this.mOnLoadingImageListener);
            } else {
                setImageDrawable(this.mImageView.getImageDrawable());
            }
        } else {
            this.mImageView.setDirectoryDrawable();
            setImageLoadingHide();
        }
        if (type != 4) {
            switch (type) {
                case 0:
                    MediaFile playMusic2 = MusicManager.getInstance().getPlayMusic();
                    if (playMusic2 != null && mediaFile.getId() == playMusic2.getId()) {
                        setTextView(mediaFile, i, true);
                        setPlayAnimation(mediaFile.getType(), true, "");
                        setSelectedStatus(true);
                        if (this.mPlayStatus != null) {
                            this.mPlayStatus.setPlayStatus(MusicManager.getInstance().isPlaying());
                        }
                        z = true;
                        break;
                    } else {
                        setTextView(mediaFile, i, false);
                        setPlayAnimation(mediaFile.getType(), false, (i + 1) + "");
                        setSelectedStatus(false);
                        if (this.mPlayStatus != null) {
                            this.mPlayStatus.setPlayStatus(false);
                        }
                        z = false;
                        break;
                    }
                    break;
                case 1:
                    if (VideoDataPlayManager.getInstance().getPlayVideoId() != -1 && mediaFile.getId() == VideoDataPlayManager.getInstance().getPlayVideoId()) {
                        setTextView(mediaFile, i, true);
                        setPlayAnimation(mediaFile.getType(), true, "");
                        setSelectedStatus(true);
                        z = true;
                        break;
                    } else {
                        setTextView(mediaFile, i, false);
                        setPlayAnimation(mediaFile.getType(), false, (i + 1) + "");
                        setSelectedStatus(false);
                        z = false;
                        break;
                    }
                case 2:
                    if (PhotoDataPlayManager.getInstance().getPlayId() != -1 && mediaFile.getId() == PhotoDataPlayManager.getInstance().getPlayId()) {
                        setTextView(mediaFile, i, true);
                        setPlayAnimation(mediaFile.getType(), true, "");
                        setSelectedStatus(true);
                        z = true;
                        break;
                    } else {
                        setTextView(mediaFile, i, false);
                        setPlayAnimation(mediaFile.getType(), false, (i + 1) + "");
                        setSelectedStatus(false);
                        z = false;
                        break;
                    }
                default:
                    z = false;
                    break;
            }
        } else {
            switch (mediaFile.getTab()) {
                case 0:
                    playMusic = MusicManager.getInstance().getPlayMusic();
                    break;
                case 1:
                    playMusic = VideoDataPlayManager.getInstance().getMediaFile();
                    break;
                case 2:
                    playMusic = PhotoDataPlayManager.getInstance().getMediaFile();
                    break;
                default:
                    playMusic = null;
                    break;
            }
            String data = playMusic != null ? playMusic.getData() : null;
            if (data != null) {
                if (data.startsWith(mediaFile.getFolderPath() + "/")) {
                    setTextView(mediaFile, i, true);
                    setPlayAnimation(playMusic.getType(), true, "");
                    setSelectedStatus(true);
                    z = true;
                }
            }
            setTextView(mediaFile, i, false);
            setPlayAnimation(mediaFile.getTab(), false, (i + 1) + "");
            setSelectedStatus(false);
            z = false;
        }
        if (this.mMediaDataModifyBtn != null) {
            if (type != 4) {
                this.mMediaDataModifyBtn.setVisibility(0);
                if (type == 0 && this.mMediaDataModifyBtn.getClickModify() == 1) {
                    this.mMediaDataModifyBtn.setSelected(MusicManager.getInstance().isCollectMusic(mediaFile));
                } else {
                    this.mMediaDataModifyBtn.setSelected(false);
                }
            } else {
                this.mMediaDataModifyBtn.setVisibility(8);
                this.mMediaDataModifyBtn.setSelected(false);
            }
        }
        if (this.mPlayStatus != null) {
            this.mPlayStatus.setType(type == 0 ? 2 : -1);
        }
        if (isCheckBoxShow()) {
            if (this.mCheckBoxFrameLayout != null) {
                this.mCheckBoxFrameLayout.setSelected(mediaFile.getTab() == 1);
            }
            this.mCheckBox.setChecked(mediaFile.getTab() == 1);
        }
        return z;
    }

    @Override // com.yftech.car.widget.media.list.holder.BaseFileHolder
    public boolean isCheckBox() {
        return this.mCheckBox != null;
    }

    public boolean isCheckBoxShow() {
        return isCheckBox() && this.mCheckBox.getVisibility() == 0;
    }

    @Override // com.yftech.car.widget.media.list.holder.BaseFileHolder
    public MediaFile getMediaFile() {
        return this.mMediaFile;
    }

    @Override // com.yftech.car.widget.media.list.holder.BaseFileHolder
    public void setCheckBoxVisibility(int i) {
        if (this.mCheckBox != null) {
            this.mCheckBox.setVisibility(i);
            if (i != 0) {
                this.mCheckBox.setChecked(false);
            }
            if (this.mCheckBoxFrameLayout != null) {
                this.mCheckBoxFrameLayout.setVisibility(i);
                if (i != 0) {
                    this.mCheckBoxFrameLayout.setSelected(false);
                }
            }
        }
    }

    private void setSelectedStatus(boolean z) {
        if (isCheckBoxShow()) {
            z = false;
        }
        this.itemView.setSelected(z);
        if (this.mImageView != null) {
            this.mImageView.setSelected(z);
        }
        if (this.mSelectedFrameLayout != null) {
            this.mSelectedFrameLayout.setSelected(z);
        }
    }

    private void setPlayAnimation(int i, boolean z, String str) {
        if (this.mPlayAnimation != null) {
            this.mPlayAnimation.setMediaType(i);
            if (isCheckBoxShow()) {
                z = false;
            }
            this.mPlayAnimation.setSelectedPlay(z);
            this.mPlayAnimation.setNumberText(str);
        }
    }

    private void setTextView(MediaFile mediaFile, int i, boolean z) {
        if (this.mAdapter != null) {
            int mediaListType = this.mAdapter.getMediaListType();
            if (isCheckBoxShow()) {
                z = false;
            }
            for (MediaFileTextView mediaFileTextView : this.mTextViewList) {
                mediaFileTextView.setSelected(z);
                if (mediaListType == 101) {
                    mediaFileTextView.updateMediaFile(mediaFile, i, -1, this.mAdapter.getSearchText());
                } else {
                    mediaFileTextView.updateMediaFile(mediaFile, i, -1);
                }
            }
        }
    }

    @Override // com.yftech.car.widget.media.list.holder.BaseFileHolder
    public void setImageBitmap(Bitmap bitmap) {
        if (this.mImageView != null) {
            this.mImageView.setImageBitmap(bitmap);
        }
    }

    @Override // com.yftech.car.widget.media.list.holder.BaseFileHolder
    public void setImageDrawable(Drawable drawable) {
        if (this.mImageView != null) {
            this.mImageView.setImageDrawable(drawable);
        }
    }

    @Override // com.yftech.car.widget.media.list.holder.BaseFileHolder
    public void setFailedResDrawable() {
        if (this.mImageView != null) {
            this.mImageView.setFailedResDrawable();
        }
    }

    @Override // com.yftech.car.widget.media.list.holder.BaseFileHolder
    public void setImageResource(int i) {
        if (this.mImageView != null) {
            this.mImageView.setImageResource(i);
        }
    }

    @Override // com.yftech.car.widget.media.list.holder.BaseFileHolder
    public void setImageLoadingStatus(boolean z) {
        Iterator<MediaImageLoading> it = this.mMediaImageLoadingList.iterator();
        while (it.hasNext()) {
            it.next().setLoadingStatus(z);
        }
        if (this.mAdapter == null || z) {
            return;
        }
        int mediaListType = this.mAdapter.getMediaListType();
        for (MediaFileTextView mediaFileTextView : this.mTextViewList) {
            if (mediaListType == 101) {
                mediaFileTextView.updateMediaFile(this.mMediaFile, this.mPosition, -1, this.mAdapter.getSearchText());
            } else {
                mediaFileTextView.updateMediaFile(this.mMediaFile, this.mPosition, -1);
            }
        }
    }

    @Override // com.yftech.car.widget.media.list.holder.BaseFileHolder
    public void setImageLoadingHide() {
        Iterator<MediaImageLoading> it = this.mMediaImageLoadingList.iterator();
        while (it.hasNext()) {
            it.next().setHide(this.mMediaFile);
        }
    }

    @Override // com.yftech.car.widget.media.list.holder.BaseFileHolder
    public Drawable getImageDrawable() {
        if (this.mImageView != null) {
            return this.mImageView.getImageDrawable();
        }
        return null;
    }

    @Override // com.yftech.car.widget.media.list.holder.BaseFileHolder
    public ImageView getImageView() {
        return this.mImageView;
    }

    @Override // com.yftech.car.widget.media.list.holder.BaseFileHolder
    public boolean isValid() {
        return this.mPosition >= 0 && this.mPosition < this.mAdapter.getItemCount();
    }

    public int getmPosition() {
        return this.mPosition;
    }

    public MediaFileAdapter getAdapter() {
        return this.mAdapter;
    }
}
