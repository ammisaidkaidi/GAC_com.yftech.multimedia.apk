package com.yftech.car.widget.media.radio.list.holder;

import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import com.yftech.car.media.radio.entity.DataOfRadio;
import com.yftech.car.widget.media.layout.SelectedFrameLayout;
import com.yftech.car.widget.media.manager.RadioManager;
import com.yftech.car.widget.media.radio.RadioDataPlayManager;
import com.yftech.car.widget.media.radio.list.adapter.RadioDataAdapter;
import com.yftech.car.widget.media.radio.text.FavorStatus;
import com.yftech.car.widget.media.radio.text.RadioText;
import com.yftech.car.widget.media.recyclerview.widget.RecyclerView;
import com.yftech.car.widget.media.text.PlayStatus;
import com.yftech.car.widget.media.view.PlayAnimation;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;

/* loaded from: /home/user/work/dex/classes3.dex */
public class RadioDataHolder extends RecyclerView.ViewHolder {
    private static final String TAG = "RadioDataHolder";
    private DataOfRadio mDataOfRadio;
    private FavorStatus mFavorStatus;
    private PlayAnimation mPlayAnimation;
    private PlayStatus mPlayStatus;
    private final List<RadioText> mRadioTextList;
    private SelectedFrameLayout mSelectedFrameLayout;

    /* JADX WARN: Multi-variable type inference failed */
    public RadioDataHolder(@NonNull View view, RadioDataAdapter radioDataAdapter) {
        super(view);
        this.mRadioTextList = new ArrayList();
        this.mRadioTextList.clear();
        if (view instanceof ViewGroup) {
            LinkedList linkedList = new LinkedList();
            linkedList.add((ViewGroup) view);
            while (!linkedList.isEmpty()) {
                ViewGroup viewGroup = (ViewGroup) linkedList.removeFirst();
                for (int i = 0; i < viewGroup.getChildCount(); i++) {
                    SelectedFrameLayout childAt = viewGroup.getChildAt(i);
                    if (childAt instanceof ViewGroup) {
                        if (childAt instanceof SelectedFrameLayout) {
                            this.mSelectedFrameLayout = childAt;
                        }
                        linkedList.add((ViewGroup) childAt);
                    } else if (childAt instanceof RadioText) {
                        this.mRadioTextList.add((RadioText) childAt);
                    } else if (childAt instanceof PlayAnimation) {
                        this.mPlayAnimation = (PlayAnimation) childAt;
                    } else if (childAt instanceof FavorStatus) {
                        this.mFavorStatus = (FavorStatus) childAt;
                    } else if (childAt instanceof PlayStatus) {
                        this.mPlayStatus = (PlayStatus) childAt;
                    }
                }
            }
        } else if (view instanceof RadioText) {
            this.mRadioTextList.add((RadioText) view);
        } else if (view instanceof PlayAnimation) {
            this.mPlayAnimation = (PlayAnimation) view;
        } else if (view instanceof FavorStatus) {
            this.mFavorStatus = (FavorStatus) view;
        } else if (view instanceof PlayStatus) {
            this.mPlayStatus = (PlayStatus) view;
        }
        if (this.mFavorStatus != null && this.mFavorStatus.getClickFunction() > 0) {
            this.mFavorStatus.setOnClickListener(radioDataAdapter.mOnFavorClickListener);
        }
        if (this.mPlayStatus == null || this.mPlayStatus.getClickFunction() <= 0) {
            return;
        }
        this.mPlayStatus.setOnClickListener(new View.OnClickListener() { // from class: com.yftech.car.widget.media.radio.list.holder.-$$Lambda$RadioDataHolder$iBRsJEVmN9zWw6fPtr_LptE9e1Q
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                RadioDataHolder.lambda$new$0(RadioDataHolder.this, view2);
            }
        });
    }

    public static /* synthetic */ void lambda$new$0(RadioDataHolder radioDataHolder, View view) {
        DataOfRadio dataOfRadio = RadioDataPlayManager.getInstance().getDataOfRadio();
        if (RadioDataPlayManager.getInstance().isPlaying()) {
            if (dataOfRadio.getFreq() == radioDataHolder.mDataOfRadio.getFreq()) {
                if (radioDataHolder.mPlayStatus.isClickFunction(2)) {
                    RadioManager.getInstance().pause();
                    return;
                }
                return;
            } else {
                if (radioDataHolder.mPlayStatus.isClickFunction(1)) {
                    RadioManager.getInstance().setFreq(radioDataHolder.mDataOfRadio.getFreq());
                    return;
                }
                return;
            }
        }
        if (dataOfRadio.getFreq() == radioDataHolder.mDataOfRadio.getFreq()) {
            if (radioDataHolder.mPlayStatus.isClickFunction(1)) {
                RadioManager.getInstance().play();
            }
        } else if (radioDataHolder.mPlayStatus.isClickFunction(1)) {
            RadioManager.getInstance().setFreq(radioDataHolder.mDataOfRadio.getFreq());
        }
    }

    public boolean isFavorStatus() {
        return this.mFavorStatus != null;
    }

    public void setRadioData(DataOfRadio dataOfRadio, int i) {
        this.mDataOfRadio = dataOfRadio;
        this.itemView.setTag(dataOfRadio);
        this.itemView.setId(i);
        DataOfRadio dataOfRadio2 = RadioDataPlayManager.getInstance().getDataOfRadio();
        if (dataOfRadio2 != null && dataOfRadio2.Freq == dataOfRadio.Freq) {
            for (RadioText radioText : this.mRadioTextList) {
                radioText.setSelected(true);
                radioText.setRadioText(dataOfRadio);
            }
            if (this.mPlayAnimation != null) {
                this.mPlayAnimation.setMediaType(5);
                this.mPlayAnimation.setSelectedPlay(true);
                this.mPlayAnimation.setNumberText("");
            }
            if (this.mSelectedFrameLayout != null) {
                this.mSelectedFrameLayout.setSelected(true);
            }
            this.itemView.setSelected(true);
            if (this.mPlayStatus != null) {
                this.mPlayStatus.setPlayStatus(RadioDataPlayManager.getInstance().isPlaying());
            }
        } else {
            for (RadioText radioText2 : this.mRadioTextList) {
                radioText2.setSelected(false);
                radioText2.setRadioText(dataOfRadio);
            }
            if (this.mPlayAnimation != null) {
                this.mPlayAnimation.setMediaType(5);
                this.mPlayAnimation.setSelectedPlay(false);
                this.mPlayAnimation.setNumberText((i + 1) + "");
            }
            if (this.mSelectedFrameLayout != null) {
                this.mSelectedFrameLayout.setSelected(false);
            }
            this.itemView.setSelected(false);
            if (this.mPlayStatus != null) {
                this.mPlayStatus.setPlayStatus(false);
            }
        }
        if (this.mFavorStatus != null) {
            this.mFavorStatus.setTag(dataOfRadio);
            this.mFavorStatus.setSelected(RadioManager.getInstance().isFreqFavored(dataOfRadio));
        }
    }
}
