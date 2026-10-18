package com.yftech.libmusic.dialog.adapter;

import android.content.Context;
import android.graphics.drawable.AnimationDrawable;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.core.content.ContextCompat;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import com.media.common.ui.widget.WordsLimitTextView;
import com.media.common.util.DateUtil;
import com.media.common.util.LogUtil;
import com.media.common.util.ValueUtil;
import com.yftech.libmusic.R;
import com.yftech.libmusic.bean.MediaFileItem;
import java.util.List;

/* loaded from: /home/user/work/dex/classes4.dex */
public class MusicSongListAdapter extends BaseQuickAdapter<MediaFileItem, BaseViewHolder> {
    private boolean isPlay;
    private Context mContext;
    private int position;

    public /* bridge */ /* synthetic */ void onBindViewHolder(@NonNull RecyclerView.ViewHolder viewHolder, int i, @NonNull List list) {
        onBindViewHolder((BaseViewHolder) viewHolder, i, (List<Object>) list);
    }

    public MusicSongListAdapter(Context context) {
        super(R.layout.item_music_song);
        this.position = -1;
        this.isPlay = false;
        this.mContext = context;
    }

    public void setPlayingIndex(int i, boolean z, boolean z2) {
        this.isPlay = z2;
        if (z) {
            int i2 = this.position;
            this.position = i;
            notifyItemChanged(i2, false);
            notifyItemChanged(this.position, true);
            return;
        }
        this.position = i;
    }

    public int getPosition() {
        return this.position;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void convert(BaseViewHolder baseViewHolder, MediaFileItem mediaFileItem) {
        baseViewHolder.setText(R.id.tv_duration, DateUtil.getMusicTime(mediaFileItem.getDuration())).setText(R.id.tv_order, String.valueOf(baseViewHolder.getLayoutPosition() + 1));
        baseViewHolder.setVisible(R.id.tv_order, this.position != baseViewHolder.getLayoutPosition());
        WordsLimitTextView view = baseViewHolder.getView(R.id.tv_name);
        WordsLimitTextView view2 = baseViewHolder.getView(R.id.tv_artist);
        view.setContent(mediaFileItem.getTitle());
        view2.setContent(mediaFileItem.getArtist());
        if (this.position == baseViewHolder.getLayoutPosition()) {
            view.setTextColor(ContextCompat.getColor(this.mContext, R.color.colorDD9D09));
            view2.setTextColor(ContextCompat.getColor(this.mContext, R.color.colorDD9D09));
            baseViewHolder.setTextColor(R.id.tv_duration, ContextCompat.getColor(this.mContext, R.color.colorB3DD9D09));
        } else {
            view.setTextColor(ContextCompat.getColor(this.mContext, R.color.colorFFFFFF));
            view2.setTextColor(ContextCompat.getColor(this.mContext, R.color.color80FFFFFF));
            baseViewHolder.setTextColor(R.id.tv_duration, ContextCompat.getColor(this.mContext, R.color.color80FFFFFF));
        }
        ImageView imageView = (ImageView) baseViewHolder.getView(R.id.iv_playing);
        AnimationDrawable animationDrawable = (AnimationDrawable) imageView.getBackground();
        if (this.position == baseViewHolder.getLayoutPosition()) {
            if (this.isPlay) {
                animationDrawable.start();
            } else {
                animationDrawable.stop();
            }
            imageView.setVisibility(0);
        } else {
            animationDrawable.stop();
            imageView.setVisibility(4);
        }
        baseViewHolder.addOnClickListener(new int[]{R.id.tv_name, R.id.tv_artist});
    }

    public void onBindViewHolder(@NonNull BaseViewHolder baseViewHolder, int i, @NonNull List<Object> list) {
        if (list.isEmpty()) {
            super.onBindViewHolder(baseViewHolder, i);
            return;
        }
        LogUtil.d("onBindViewHolder:position=" + i);
        LogUtil.d("onBindViewHolder:isPlaying=" + ValueUtil.parseBoolean(list.get(0).toString()));
        baseViewHolder.setVisible(R.id.tv_order, this.position != i);
        WordsLimitTextView view = baseViewHolder.getView(R.id.tv_name);
        WordsLimitTextView view2 = baseViewHolder.getView(R.id.tv_artist);
        ImageView imageView = (ImageView) baseViewHolder.getView(R.id.iv_playing);
        AnimationDrawable animationDrawable = (AnimationDrawable) imageView.getBackground();
        if (this.position == i) {
            view.setTextColor(ContextCompat.getColor(this.mContext, R.color.colorDD9D09));
            view2.setTextColor(ContextCompat.getColor(this.mContext, R.color.colorDD9D09));
            baseViewHolder.setTextColor(R.id.tv_duration, ContextCompat.getColor(this.mContext, R.color.colorB3DD9D09));
            if (this.isPlay) {
                animationDrawable.start();
            } else {
                animationDrawable.stop();
            }
            imageView.setVisibility(0);
            return;
        }
        animationDrawable.stop();
        imageView.setVisibility(4);
        view.setTextColor(ContextCompat.getColor(this.mContext, R.color.colorFFFFFF));
        view2.setTextColor(ContextCompat.getColor(this.mContext, R.color.color80FFFFFF));
        baseViewHolder.setTextColor(R.id.tv_duration, ContextCompat.getColor(this.mContext, R.color.color80FFFFFF));
    }
}
