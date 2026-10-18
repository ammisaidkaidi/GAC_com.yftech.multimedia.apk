package com.yftech.car.widget.media.radio.list.holder;

import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import com.yftech.car.media.radio.entity.DataOfRadio;
import com.yftech.car.widget.media.R;
import com.yftech.car.widget.media.manager.RadioManager;
import com.yftech.car.widget.media.radio.list.adapter.DynamicAdapter;
import com.yftech.car.widget.media.recyclerview.widget.RecyclerView;
import com.yftech.car.widget.media.view.PlayAnimation;

/* loaded from: /home/user/work/dex/classes3.dex */
public class DynamicHolder extends RecyclerView.ViewHolder {
    private TextView mBand;
    private DynamicAdapter mDynamicAdapter;
    private View mFavorStatus;
    private TextView mFreq;
    private TextView mHertz;
    private TextView mNumber;
    private PlayAnimation mPlayStatus;

    public DynamicHolder(DynamicAdapter dynamicAdapter, @NonNull FrameLayout frameLayout) {
        super(frameLayout);
        this.mDynamicAdapter = dynamicAdapter;
        this.mBand = (TextView) frameLayout.findViewById(2);
        this.mFreq = (TextView) frameLayout.findViewById(1);
        this.mHertz = (TextView) frameLayout.findViewById(4);
        this.mNumber = (TextView) frameLayout.findViewById(8);
        this.mFavorStatus = frameLayout.findViewById(32);
        this.mPlayStatus = (PlayAnimation) frameLayout.findViewById(16);
    }

    public void setRadio(DataOfRadio dataOfRadio, int i) {
        this.itemView.setTag(dataOfRadio);
        this.itemView.setId(i);
        if (this.mNumber != null) {
            this.mNumber.setText(String.valueOf(i + 1));
        }
        if (this.mFreq != null) {
            StringBuilder sb = new StringBuilder();
            sb.append(dataOfRadio.getType() == 2 ? String.valueOf(dataOfRadio.getFreq()) : Float.valueOf(dataOfRadio.getFreq() / 1000.0f));
            sb.append("");
            this.mFreq.setText(sb.toString());
        }
        if (this.mFavorStatus != null) {
            if (this.mFavorStatus instanceof ImageView) {
                ((ImageView) this.mFavorStatus).setImageDrawable(RadioManager.getInstance().isFreqFavored(dataOfRadio) ? this.mDynamicAdapter.mItemFavorDrawableCollected : this.mDynamicAdapter.mItemFavorDrawable);
            } else if (this.mFavorStatus instanceof TextView) {
                TextView textView = (TextView) this.mFavorStatus;
                boolean isFreqFavored = RadioManager.getInstance().isFreqFavored(dataOfRadio);
                textView.setBackground(isFreqFavored ? this.mDynamicAdapter.mItemFavorDrawableCollected : this.mDynamicAdapter.mItemFavorDrawable);
                textView.setText(isFreqFavored ? this.mDynamicAdapter.mItemFavorTextCollected : this.mDynamicAdapter.mItemFavorTextNo);
            }
            this.mFavorStatus.setTag(dataOfRadio);
        }
        int type = dataOfRadio.getType();
        if (type == 0) {
            if (this.mBand != null) {
                this.mBand.setText(R.string.fm);
            }
            if (this.mHertz != null) {
                this.mHertz.setText(this.mDynamicAdapter.mItemHertzFmText);
            }
        } else if (type == 2) {
            if (this.mBand != null) {
                this.mBand.setText(R.string.am);
            }
            if (this.mHertz != null) {
                this.mHertz.setText(this.mDynamicAdapter.mItemHertzAmText);
            }
        } else {
            if (this.mBand != null) {
                this.mBand.setText(R.string.fm1);
            }
            if (this.mHertz != null) {
                this.mHertz.setText(this.mDynamicAdapter.mItemHertzFm1Text);
            }
        }
        if (this.mPlayStatus != null) {
            if (dataOfRadio.Freq == RadioManager.getInstance().getFreq().Freq) {
                this.mPlayStatus.setVisibility(0);
                this.mPlayStatus.setPlay(RadioManager.getInstance().isPlaying());
            } else {
                this.mPlayStatus.setVisibility(8);
            }
        }
    }
}
