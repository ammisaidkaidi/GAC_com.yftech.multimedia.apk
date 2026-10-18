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
import com.yftech.car.media.music.CarMusicManager;
import com.yftech.libmusic.R;
import com.yftech.libmusic.bean.MediaFileItem;
import java.util.List;

/* loaded from: /home/user/work/dex/classes4.dex */
public class MusicSearchResultAdapter extends BaseQuickAdapter<MediaFileItem, BaseViewHolder> {
    private String keyWords;
    private Context mContext;
    private String playingPath;
    private int position;

    public /* bridge */ /* synthetic */ void onBindViewHolder(@NonNull RecyclerView.ViewHolder viewHolder, int i, @NonNull List list) {
        onBindViewHolder((BaseViewHolder) viewHolder, i, (List<Object>) list);
    }

    public MusicSearchResultAdapter(Context context) {
        super(R.layout.item_music_search_result);
        this.position = -1;
        this.keyWords = null;
        this.mContext = context;
    }

    public void setPlaying(String str, boolean z) {
        int i = 0;
        while (true) {
            if (i >= getData().size()) {
                i = -1;
                break;
            }
            MediaFileItem mediaFileItem = (MediaFileItem) getData().get(i);
            if (mediaFileItem != null && !TextUtils.isEmpty(mediaFileItem.getData()) && mediaFileItem.getData().equals(str)) {
                break;
            } else {
                i++;
            }
        }
        if (!z) {
            this.playingPath = str;
            this.position = i;
        } else {
            if (i == this.position) {
                notifyItemChanged(this.position, str);
                return;
            }
            if (this.position >= 0) {
                notifyItemChanged(this.position, "");
            }
            this.playingPath = str;
            this.position = i;
            if (this.position >= 0) {
                notifyItemChanged(this.position, str);
            }
        }
    }

    public void setKeyWords(String str, boolean z) {
        this.keyWords = str;
        if (z) {
            notifyDataSetChanged();
        }
    }

    public String getPlayingPath() {
        return this.playingPath;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void convert(BaseViewHolder baseViewHolder, MediaFileItem mediaFileItem) {
        SyncImageView view = baseViewHolder.getView(R.id.iv_cover);
        MarqueeView view2 = baseViewHolder.getView(R.id.tv_name);
        MarqueeView view3 = baseViewHolder.getView(R.id.tv_artist);
        MarqueeView view4 = baseViewHolder.getView(R.id.tv_album);
        if (mediaFileItem.isDir()) {
            view.setImageResource(R.mipmap.music_pic_folder);
            view4.setVisibility(4);
            view3.setVisibility(4);
        } else {
            byte[] thumbData = mediaFileItem.getThumbData();
            if (thumbData == null) {
                view.setMediaFilePath(0, mediaFileItem.getData(), 88, 88);
            } else {
                Glide.with(this.mContext).load(thumbData).error(R.mipmap.music_search_pic_cover).into(view);
            }
            view.setOnMediaInformationCallback(new mOnMediaDataCallbackListener(baseViewHolder.getLayoutPosition()));
            view4.setVisibility(0);
            view3.setVisibility(0);
        }
        view2.setContent(mediaFileItem.getTitle());
        view2.setKeyWords(this.keyWords);
        view3.setContent(mediaFileItem.isDir() ? "" : mediaFileItem.getArtist());
        view3.setKeyWords(this.keyWords);
        view4.setContent(mediaFileItem.isDir() ? "" : mediaFileItem.getAlbum());
        view4.setKeyWords(this.keyWords);
        ImageView imageView = (ImageView) baseViewHolder.getView(R.id.iv_isPlaying);
        AnimationDrawable animationDrawable = (AnimationDrawable) imageView.getBackground();
        if (!TextUtils.isEmpty(this.playingPath) && this.playingPath.equals(mediaFileItem.getData())) {
            if (CarMusicManager.getInstance().isPlaying()) {
                animationDrawable.start();
            } else {
                animationDrawable.stop();
            }
            imageView.setVisibility(0);
            view2.setTextColor(ContextCompat.getColor(this.mContext, R.color.colorF3AE3D));
            view3.setTextColor(ContextCompat.getColor(this.mContext, R.color.colorF3AE3D));
            view4.setTextColor(ContextCompat.getColor(this.mContext, R.color.colorF3AE3D));
            this.position = baseViewHolder.getLayoutPosition();
            baseViewHolder.itemView.setBackgroundResource(R.mipmap.music_pic_sel_88px);
        } else {
            animationDrawable.stop();
            imageView.setVisibility(8);
            view2.setTextColor(ContextCompat.getColor(this.mContext, R.color.colorFFFFFF));
            view3.setTextColor(ContextCompat.getColor(this.mContext, R.color.colorFFFFFF));
            view4.setTextColor(ContextCompat.getColor(this.mContext, R.color.colorFFFFFF));
            baseViewHolder.itemView.setBackgroundResource(android.R.color.transparent);
        }
        baseViewHolder.addOnClickListener(new int[]{R.id.tv_name, R.id.tv_artist, R.id.tv_album});
    }

    public void onBindViewHolder(@NonNull BaseViewHolder baseViewHolder, int i, @NonNull List<Object> list) {
        if (list.isEmpty()) {
            onBindViewHolder(baseViewHolder, i);
            return;
        }
        Object obj = list.get(0);
        if (obj instanceof String) {
            String obj2 = obj.toString();
            ImageView imageView = (ImageView) baseViewHolder.getView(R.id.iv_isPlaying);
            AnimationDrawable animationDrawable = (AnimationDrawable) imageView.getBackground();
            MarqueeView view = baseViewHolder.getView(R.id.tv_name);
            MarqueeView view2 = baseViewHolder.getView(R.id.tv_artist);
            MarqueeView view3 = baseViewHolder.getView(R.id.tv_album);
            if (!TextUtils.isEmpty(this.playingPath) && this.playingPath.equals(obj2)) {
                if (CarMusicManager.getInstance().isPlaying()) {
                    animationDrawable.start();
                } else {
                    animationDrawable.stop();
                }
                imageView.setVisibility(0);
                view.setTextColor(ContextCompat.getColor(this.mContext, R.color.colorF3AE3D));
                view2.setTextColor(ContextCompat.getColor(this.mContext, R.color.colorF3AE3D));
                view3.setTextColor(ContextCompat.getColor(this.mContext, R.color.colorF3AE3D));
                baseViewHolder.itemView.setBackgroundResource(R.mipmap.music_pic_sel_88px);
            } else {
                animationDrawable.stop();
                imageView.setVisibility(8);
                view.setTextColor(ContextCompat.getColor(this.mContext, R.color.colorFFFFFF));
                view2.setTextColor(ContextCompat.getColor(this.mContext, R.color.colorFFFFFF));
                view3.setTextColor(ContextCompat.getColor(this.mContext, R.color.colorFFFFFF));
                baseViewHolder.itemView.setBackgroundResource(android.R.color.transparent);
            }
            view.setRepetType(1);
            view2.setRepetType(1);
            view3.setRepetType(1);
            return;
        }
        if (obj instanceof byte[]) {
            byte[] bArr = (byte[]) obj;
            SyncImageView view4 = baseViewHolder.getView(R.id.iv_cover);
            if (bArr.length == 10) {
                view4.setImageResource(R.mipmap.music_search_pic_cover);
            } else {
                Glide.with(this.mContext).load(bArr).error(R.mipmap.music_search_pic_cover).into(view4);
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
            MediaFileItem mediaFileItem = (MediaFileItem) MusicSearchResultAdapter.this.getItem(this.position);
            if (mediaFileItem != null) {
                mediaFileItem.setThumbData(bArr);
            }
            MusicSearchResultAdapter.this.notifyItemChanged(this.position, bArr);
        }
    }
}
