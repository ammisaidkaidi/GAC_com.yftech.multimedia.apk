package com.yftech.libmusic.ui.adapter;

import android.widget.TextView;
import androidx.core.content.ContextCompat;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import com.yftech.libmusic.R;
import com.yftech.libmusic.bean.LyricObject;

/* loaded from: /home/user/work/dex/classes4.dex */
public class MusicPlayerLyricAdapter extends BaseQuickAdapter<LyricObject, BaseViewHolder> {
    private int position;

    public MusicPlayerLyricAdapter() {
        super(R.layout.item_music_player_lyric);
    }

    public void setPosition(int i) {
        this.position = i;
        notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void convert(BaseViewHolder baseViewHolder, LyricObject lyricObject) {
        baseViewHolder.setText(R.id.tv_item, lyricObject.lrc);
        TextView textView = (TextView) baseViewHolder.getView(R.id.tv_item);
        if (this.position == baseViewHolder.getLayoutPosition()) {
            textView.setTextColor(ContextCompat.getColor(this.mContext, R.color.colorFFFFFF));
            textView.setTextSize(0, 36.0f);
        } else {
            textView.setTextColor(ContextCompat.getColor(this.mContext, R.color.color66FFFFFF));
            textView.setTextSize(0, 30.0f);
        }
    }
}
