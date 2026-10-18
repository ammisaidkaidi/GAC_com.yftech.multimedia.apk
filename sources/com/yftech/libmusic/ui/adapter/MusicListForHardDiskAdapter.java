package com.yftech.libmusic.ui.adapter;

import android.content.Context;
import android.graphics.drawable.AnimationDrawable;
import android.text.TextUtils;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.core.content.ContextCompat;
import androidx.recyclerview.widget.RecyclerView;
import com.bumptech.glide.Glide;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import com.media.common.ui.widget.MarqueeView;
import com.media.common.ui.widget.SyncImageView;
import com.media.common.util.LogUtil;
import com.yftech.libmusic.R;
import com.yftech.libmusic.bean.MusicListItem;
import java.io.File;
import java.util.List;

/* loaded from: /home/user/work/dex/classes4.dex */
public class MusicListForHardDiskAdapter extends BaseQuickAdapter<MusicListItem, BaseViewHolder> {
    private Context context;
    private boolean mIsPlaying;
    private List<MusicListItem> parentList;
    private String playingFloderPath;
    private String playingPath;
    private int position;

    public /* bridge */ /* synthetic */ void onBindViewHolder(@NonNull RecyclerView.ViewHolder viewHolder, int i, @NonNull List list) {
        onBindViewHolder((BaseViewHolder) viewHolder, i, (List<Object>) list);
    }

    public MusicListForHardDiskAdapter(Context context) {
        super(R.layout.item_music);
        this.position = -1;
        this.mIsPlaying = false;
        this.parentList = null;
        this.context = context;
    }

    public void setParentList(List<MusicListItem> list) {
        this.parentList = list;
    }

    public List<MusicListItem> getParentList() {
        return this.parentList;
    }

    public void setPlayStatus(boolean z) {
        this.mIsPlaying = z;
    }

    public void setPlaying(String str, boolean z) {
        int positionByPath = getPositionByPath(str);
        String parent = new File(str).getParent();
        this.playingFloderPath = parent.substring(parent.lastIndexOf("/") + 1);
        LogUtil.e(" update playingFloderPath = " + this.playingFloderPath + "  position = " + positionByPath + "  notifyChanged = " + z);
        if (!z) {
            this.playingPath = str;
            this.position = positionByPath;
            return;
        }
        if (this.position >= 0) {
            notifyItemChanged(this.position, "");
        }
        this.playingPath = str;
        this.position = positionByPath;
        if (this.position >= 0) {
            notifyItemChanged(this.position, str);
        } else {
            notifyDataSetChanged();
        }
    }

    public int getPositionByPath(String str) {
        for (int i = 0; i < getData().size(); i++) {
            MusicListItem musicListItem = (MusicListItem) getData().get(i);
            if (musicListItem != null && !TextUtils.isEmpty(musicListItem.getFilePath()) && musicListItem.getFilePath().equals(str)) {
                return i;
            }
        }
        return -1;
    }

    public String getPlayingPath() {
        return this.playingPath;
    }

    public int getPosition() {
        return this.position;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void convert(BaseViewHolder baseViewHolder, MusicListItem musicListItem) {
        SyncImageView view = baseViewHolder.getView(R.id.iv_cover);
        MarqueeView view2 = baseViewHolder.getView(R.id.tv_name);
        MarqueeView view3 = baseViewHolder.getView(R.id.tv_artist);
        MarqueeView view4 = baseViewHolder.getView(R.id.tv_album);
        ImageView imageView = (ImageView) baseViewHolder.getView(R.id.iv_isPlaying);
        AnimationDrawable animationDrawable = (AnimationDrawable) imageView.getBackground();
        if (musicListItem.isDir()) {
            view.setImageResource(R.mipmap.music_pic_folder);
            view4.setVisibility(4);
            view3.setVisibility(4);
        } else {
            byte[] thumbData = musicListItem.getThumbData();
            if (thumbData == null) {
                view.setMediaFilePath(0, musicListItem.getFilePath(), 76, 76);
            } else {
                Glide.with(this.context).load(thumbData).error(R.mipmap.music_search_pic_cover).into(view);
            }
            view.setOnMediaInformationCallback(new mOnMediaDataCallbackListener(baseViewHolder.getLayoutPosition()));
            view4.setVisibility(0);
            view3.setVisibility(0);
        }
        view2.setContent(musicListItem.getTitle());
        view3.setContent(musicListItem.isDir() ? "" : musicListItem.getArtist());
        view4.setContent(musicListItem.isDir() ? "" : musicListItem.getAlbum());
        if (musicListItem.isDir() && musicListItem.getTitle().equals(this.playingFloderPath)) {
            if (this.mIsPlaying) {
                if (!animationDrawable.isRunning()) {
                    animationDrawable.start();
                }
            } else {
                animationDrawable.stop();
            }
            imageView.setVisibility(0);
            view2.setTextColor(ContextCompat.getColor(this.mContext, R.color.colorF3AE3D));
            view2.setRepetType(1);
            baseViewHolder.itemView.setBackgroundResource(R.mipmap.music_pic_sel_88px);
        } else if (!TextUtils.isEmpty(this.playingPath) && this.playingPath.equals(musicListItem.getFilePath())) {
            if (this.mIsPlaying) {
                animationDrawable.start();
            } else {
                animationDrawable.stop();
            }
            imageView.setVisibility(0);
            view2.setTextColor(ContextCompat.getColor(this.mContext, R.color.colorF3AE3D));
            view3.setTextColor(ContextCompat.getColor(this.mContext, R.color.colorF3AE3D));
            view4.setTextColor(ContextCompat.getColor(this.mContext, R.color.colorF3AE3D));
            view2.setRepetType(1);
            view3.setRepetType(1);
            view4.setRepetType(1);
            this.position = baseViewHolder.getLayoutPosition();
            baseViewHolder.itemView.setBackgroundResource(R.mipmap.music_pic_sel_88px);
        } else {
            animationDrawable.stop();
            imageView.setVisibility(8);
            view2.setTextColor(ContextCompat.getColor(this.mContext, R.color.colorFFFFFF));
            view3.setTextColor(ContextCompat.getColor(this.mContext, R.color.colorFFFFFF));
            view4.setTextColor(ContextCompat.getColor(this.mContext, R.color.colorFFFFFF));
            view2.setRepetType(-1);
            view3.setRepetType(-1);
            view4.setRepetType(-1);
            baseViewHolder.itemView.setBackgroundResource(android.R.color.transparent);
        }
        baseViewHolder.addOnClickListener(new int[]{R.id.tv_name, R.id.tv_artist, R.id.tv_album});
    }

    public void onBindViewHolder(@NonNull BaseViewHolder baseViewHolder, int i, @NonNull List<Object> list) {
        LogUtil.d("onBindViewHolder:payloadSize=" + list.size());
        if (list.isEmpty()) {
            onBindViewHolder(baseViewHolder, i);
            return;
        }
        Object obj = list.get(0);
        if (obj instanceof String) {
            String obj2 = obj.toString();
            LogUtil.d("onBindViewHolder:position=" + i + ", path=" + obj2 + ", playingPath=" + this.playingPath);
            ImageView imageView = (ImageView) baseViewHolder.getView(R.id.iv_isPlaying);
            AnimationDrawable animationDrawable = (AnimationDrawable) imageView.getBackground();
            MarqueeView view = baseViewHolder.getView(R.id.tv_name);
            MarqueeView view2 = baseViewHolder.getView(R.id.tv_artist);
            MarqueeView view3 = baseViewHolder.getView(R.id.tv_album);
            if (!TextUtils.isEmpty(this.playingPath) && this.playingPath.equals(obj2)) {
                if (this.mIsPlaying) {
                    animationDrawable.start();
                } else {
                    animationDrawable.stop();
                }
                imageView.setVisibility(0);
                view.setTextColor(ContextCompat.getColor(this.mContext, R.color.colorF3AE3D));
                view2.setTextColor(ContextCompat.getColor(this.mContext, R.color.colorF3AE3D));
                view3.setTextColor(ContextCompat.getColor(this.mContext, R.color.colorF3AE3D));
                view.setRepetType(1);
                view2.setRepetType(1);
                view3.setRepetType(1);
                baseViewHolder.itemView.setBackgroundResource(R.mipmap.music_pic_sel_88px);
                return;
            }
            imageView.setVisibility(8);
            view.setTextColor(ContextCompat.getColor(this.mContext, R.color.colorFFFFFF));
            view2.setTextColor(ContextCompat.getColor(this.mContext, R.color.colorFFFFFF));
            view3.setTextColor(ContextCompat.getColor(this.mContext, R.color.colorFFFFFF));
            view.setRepetType(-1);
            view2.setRepetType(-1);
            view3.setRepetType(-1);
            baseViewHolder.itemView.setBackgroundResource(android.R.color.transparent);
            return;
        }
        if (obj instanceof byte[]) {
            byte[] bArr = (byte[]) obj;
            SyncImageView view4 = baseViewHolder.getView(R.id.iv_cover);
            if (bArr.length == 10) {
                view4.setImageResource(R.mipmap.music_search_pic_cover);
            } else {
                Glide.with(this.context).load(bArr).error(R.mipmap.music_search_pic_cover).into(view4);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes4.dex */
    public class mOnMediaDataCallbackListener implements SyncImageView.OnMediaInformationCallback {
        private int position;

        public void onMediaDurationCallback(int i) {
        }

        public mOnMediaDataCallbackListener(int i) {
            this.position = i;
        }

        public void onMediaImageCallback(String str, byte[] bArr, int i, int i2) {
            MusicListItem musicListItem = (MusicListItem) MusicListForHardDiskAdapter.this.getItem(this.position);
            if (musicListItem != null) {
                musicListItem.setThumbData(bArr);
            }
            MusicListForHardDiskAdapter.this.notifyItemChanged(this.position, bArr);
        }
    }
}
