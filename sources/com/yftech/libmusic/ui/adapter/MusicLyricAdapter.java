package com.yftech.libmusic.ui.adapter;

import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import com.media.common.util.ValueUtil;
import com.yftech.car.media.music.CarMusicManager;
import com.yftech.libmusic.R;
import com.yftech.libmusic.bean.LyricObject;
import com.yftech.libmusic.widget.SongTextView;
import java.util.List;

/* loaded from: /home/user/work/dex/classes4.dex */
public class MusicLyricAdapter extends BaseQuickAdapter<LyricObject, BaseViewHolder> {
    private final int indexTextColor;
    private final float indexTextSize;
    private int mPosition;
    private OnItemClickListener onItemClickListener;
    private final int othersTextColor;
    private final float othersTextSize;
    private final int subTextColor;
    private final float subTextSize;

    /* loaded from: /home/user/work/dex/classes4.dex */
    public interface OnItemClickListener {
        void onTextItemClick(int i, LyricObject lyricObject);
    }

    public /* bridge */ /* synthetic */ void onBindViewHolder(@NonNull RecyclerView.ViewHolder viewHolder, int i, @NonNull List list) {
        onBindViewHolder((BaseViewHolder) viewHolder, i, (List<Object>) list);
    }

    public MusicLyricAdapter() {
        super(R.layout.item_lyric);
        this.indexTextSize = 56.0f;
        this.indexTextColor = R.color.colorFFFFFF;
        this.subTextSize = 40.0f;
        this.subTextColor = R.color.colorBFFFFFFF;
        this.othersTextSize = 40.0f;
        this.othersTextColor = R.color.colorBFFFFFFF;
        this.mPosition = -1;
    }

    public void setPlayIndex(int i) {
        if (this.mPosition == i) {
            return;
        }
        int i2 = this.mPosition;
        this.mPosition = i;
        notifyItemChanged(i2, Integer.valueOf(this.mPosition));
        notifyItemChanged(this.mPosition, Integer.valueOf(this.mPosition));
    }

    public void setPlayIndex(int i, boolean z) {
        if (z) {
            setPlayIndex(i);
        } else {
            this.mPosition = i;
        }
    }

    public void setMusicPlaying(boolean z) {
        if (this.mPosition >= 0) {
            notifyItemChanged(this.mPosition, Boolean.valueOf(z));
        }
    }

    public int getmPosition() {
        return this.mPosition;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void convert(final BaseViewHolder baseViewHolder, LyricObject lyricObject) {
        SongTextView songTextView = (SongTextView) baseViewHolder.getView(R.id.tv_lyric);
        boolean isPlaying = CarMusicManager.getInstance().isPlaying();
        songTextView.setLyricObject(lyricObject);
        songTextView.setMusicPlaying(isPlaying);
        songTextView.setOnTextItemClickListener(new SongTextView.OnTextItemClickListener() { // from class: com.yftech.libmusic.ui.adapter.MusicLyricAdapter.1
            @Override // com.yftech.libmusic.widget.SongTextView.OnTextItemClickListener
            public void onTextItemClick(LyricObject lyricObject2) {
                if (MusicLyricAdapter.this.onItemClickListener != null) {
                    MusicLyricAdapter.this.onItemClickListener.onTextItemClick(baseViewHolder.getLayoutPosition(), lyricObject2);
                }
            }
        });
        if (this.mPosition == baseViewHolder.getLayoutPosition()) {
            songTextView.setThePlayingLyric(true);
            songTextView.setTextSize(56.0f, false);
            songTextView.setTextColor(this.indexTextColor, false);
            return;
        }
        songTextView.setThePlayingLyric(false);
        if (Math.abs(this.mPosition - baseViewHolder.getLayoutPosition()) == 1) {
            songTextView.setTextSize(40.0f, false);
            songTextView.setTextColor(this.subTextColor, false);
        } else {
            songTextView.setTextSize(40.0f, false);
            songTextView.setTextColor(this.othersTextColor, false);
        }
    }

    public void onBindViewHolder(@NonNull BaseViewHolder baseViewHolder, int i, @NonNull List<Object> list) {
        if (list.isEmpty()) {
            super.onBindViewHolder(baseViewHolder, i);
            return;
        }
        SongTextView songTextView = (SongTextView) baseViewHolder.getView(R.id.tv_lyric);
        Object obj = list.get(0);
        if (obj instanceof Integer) {
            ValueUtil.parseInt(list.get(0).toString());
            if (i == this.mPosition) {
                songTextView.setTextSize(56.0f, false);
                songTextView.setTextColor(this.indexTextColor, false);
                return;
            }
            songTextView.setThePlayingLyric(false);
            if (Math.abs(this.mPosition - i) == 1) {
                songTextView.setTextSize(40.0f, false);
                songTextView.setTextColor(this.subTextColor, false);
                return;
            } else {
                songTextView.setTextSize(40.0f, false);
                songTextView.setTextColor(this.othersTextColor, false);
                return;
            }
        }
        if (obj instanceof Boolean) {
            songTextView.setMusicPlaying(((Boolean) obj).booleanValue());
        }
    }

    public void setOnItemClickListener(OnItemClickListener onItemClickListener) {
        this.onItemClickListener = onItemClickListener;
    }
}
