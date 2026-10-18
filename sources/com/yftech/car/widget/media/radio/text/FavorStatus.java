package com.yftech.car.widget.media.radio.text;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.widget.Toast;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatTextView;
import com.yftech.car.media.radio.entity.DataOfRadio;
import com.yftech.car.widget.media.R;
import com.yftech.car.widget.media.manager.RadioManager;
import com.yftech.car.widget.media.radio.RadioDataPlayManager;

/* loaded from: /home/user/work/dex/classes3.dex */
public class FavorStatus extends AppCompatTextView {
    public static final int ADD_FAVOR = 1;
    public static final int REMOVE_FAVOR = 2;
    private boolean isSelected;
    private String mFavorStatusAddFavorFail;
    private String mFavorStatusAddFavorSuccess;
    private int mFavorStatusAmFavorMax;
    private int mFavorStatusClickFunction;
    private int mFavorStatusFm1FavorMax;
    private int mFavorStatusFmFavorMax;
    private String mFavorStatusIncreasedMaxLimit;
    private boolean mFavorStatusMaxUpdateoldData;
    private String mFavorStatusRemoveFavorFail;
    private String mFavorStatusRemoveFavorSuccess;
    private String mSelectedText;
    private String mText;

    public FavorStatus(Context context) {
        super(context);
    }

    public FavorStatus(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        init(context, attributeSet);
    }

    public FavorStatus(Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        init(context, attributeSet);
    }

    public void init(Context context, AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.FavorStatus);
        this.mSelectedText = obtainStyledAttributes.getString(R.styleable.FavorStatus_favorStatus_selected_text);
        this.mFavorStatusClickFunction = obtainStyledAttributes.getInt(R.styleable.FavorStatus_favorStatus_click_function, 0);
        this.mFavorStatusFmFavorMax = obtainStyledAttributes.getInt(R.styleable.FavorStatus_favorStatus_fm_favor_max, -1);
        this.mFavorStatusFm1FavorMax = obtainStyledAttributes.getInt(R.styleable.FavorStatus_favorStatus_fm1_favor_max, -1);
        this.mFavorStatusAmFavorMax = obtainStyledAttributes.getInt(R.styleable.FavorStatus_favorStatus_fm_favor_max, -1);
        this.mFavorStatusAddFavorSuccess = obtainStyledAttributes.getString(R.styleable.FavorStatus_favorStatus_add_favor_success);
        this.mFavorStatusAddFavorFail = obtainStyledAttributes.getString(R.styleable.FavorStatus_favorStatus_add_favor_fail);
        this.mFavorStatusRemoveFavorSuccess = obtainStyledAttributes.getString(R.styleable.FavorStatus_favorStatus_remove_favor_success);
        this.mFavorStatusRemoveFavorFail = obtainStyledAttributes.getString(R.styleable.FavorStatus_favorStatus_remove_favor_fail);
        this.mFavorStatusIncreasedMaxLimit = obtainStyledAttributes.getString(R.styleable.FavorStatus_favorStatus_increased_max_limit);
        this.mFavorStatusMaxUpdateoldData = obtainStyledAttributes.getBoolean(R.styleable.FavorStatus_favorStatus_max_updateold_data, false);
        if (this.mFavorStatusFmFavorMax == -1) {
            this.mFavorStatusFmFavorMax = RadioDataPlayManager.getInstance().getFavorStatusFmFavorMax();
        }
        if (this.mFavorStatusFm1FavorMax == -1) {
            this.mFavorStatusFm1FavorMax = RadioDataPlayManager.getInstance().getFavorStatusFm1FavorMax();
        }
        if (this.mFavorStatusAmFavorMax == -1) {
            this.mFavorStatusAmFavorMax = RadioDataPlayManager.getInstance().getFavorStatusAmFavorMax();
        }
        if (this.mFavorStatusMaxUpdateoldData) {
            return;
        }
        this.mFavorStatusMaxUpdateoldData = RadioDataPlayManager.getInstance().isFavorStatusMaxUpdateoldData();
    }

    public void setSelected(boolean z) {
        super.setSelected(z);
        this.isSelected = z;
        if (z) {
            setText(this.mSelectedText);
        } else {
            setText(this.mText);
        }
    }

    public int getAmFavorMax() {
        return this.mFavorStatusAmFavorMax;
    }

    public int getFmFavorMax() {
        return this.mFavorStatusFmFavorMax;
    }

    public int getFm1FavorMax() {
        return this.mFavorStatusFm1FavorMax;
    }

    public void showAddFavor(boolean z) {
        if (z) {
            if (this.mFavorStatusAddFavorSuccess == null) {
                this.mFavorStatusAddFavorSuccess = RadioDataPlayManager.getInstance().getFavorStatusAddFavorSuccess();
            }
            if (this.mFavorStatusAddFavorSuccess != null) {
                Toast.makeText(getContext(), this.mFavorStatusAddFavorSuccess, 0).show();
                return;
            }
            return;
        }
        if (this.mFavorStatusIncreasedMaxLimit == null) {
            this.mFavorStatusIncreasedMaxLimit = RadioDataPlayManager.getInstance().getFavorStatusIncreasedMaxLimit();
        }
        if (this.mFavorStatusIncreasedMaxLimit != null) {
            DataOfRadio dataOfRadio = (DataOfRadio) getTag();
            DataOfRadio[] favors = RadioManager.getInstance().getFavors(dataOfRadio.getType());
            if (favors != null && favors.length == getFavorMax(dataOfRadio)) {
                Toast.makeText(getContext(), this.mFavorStatusIncreasedMaxLimit, 0).show();
                return;
            }
        }
        if (this.mFavorStatusAddFavorFail == null) {
            this.mFavorStatusAddFavorFail = RadioDataPlayManager.getInstance().getFavorStatusAddFavorFail();
        }
        if (this.mFavorStatusAddFavorFail != null) {
            Toast.makeText(getContext(), this.mFavorStatusAddFavorFail, 0).show();
        }
    }

    public void showRemoveFavor(boolean z) {
        if (z) {
            if (this.mFavorStatusRemoveFavorSuccess == null) {
                this.mFavorStatusRemoveFavorSuccess = RadioDataPlayManager.getInstance().getFavorStatusRemoveFavorSuccess();
            }
            if (this.mFavorStatusRemoveFavorSuccess != null) {
                Toast.makeText(getContext(), this.mFavorStatusRemoveFavorSuccess, 0).show();
                return;
            }
            return;
        }
        if (this.mFavorStatusRemoveFavorFail == null) {
            this.mFavorStatusRemoveFavorFail = RadioDataPlayManager.getInstance().getFavorStatusRemoveFavorFail();
        }
        if (this.mFavorStatusRemoveFavorFail != null) {
            Toast.makeText(getContext(), this.mFavorStatusRemoveFavorFail, 0).show();
        }
    }

    public boolean isFavorStatusMaxUpdateoldData() {
        return this.mFavorStatusMaxUpdateoldData;
    }

    public int getClickFunction() {
        return this.mFavorStatusClickFunction;
    }

    public void setActivated(boolean z) {
        super.setActivated(z);
    }

    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        CharSequence text = getText();
        if (text != null) {
            this.mText = text.toString();
        }
        if (isSelected()) {
            setText(this.mSelectedText);
        } else {
            setText(this.mText);
        }
    }

    public int getFavorMax(DataOfRadio dataOfRadio) {
        int i = dataOfRadio.type;
        if (i == 0) {
            return this.mFavorStatusFmFavorMax;
        }
        if (i == 2) {
            return this.mFavorStatusAmFavorMax;
        }
        return this.mFavorStatusFm1FavorMax;
    }
}
