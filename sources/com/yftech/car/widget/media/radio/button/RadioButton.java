package com.yftech.car.widget.media.radio.button;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.Toast;
import androidx.appcompat.widget.AppCompatButton;
import com.yftech.car.media.radio.entity.DataOfRadio;
import com.yftech.car.widget.media.R;
import com.yftech.car.widget.media.manager.RadioManager;
import com.yftech.car.widget.media.radio.RadioDataPlayManager;

/* loaded from: /home/user/work/dex/classes3.dex */
public class RadioButton extends AppCompatButton {
    private static final int BAND_AM = 12;
    private static final int BAND_FM = 13;
    private static final int OPEN_FAVOR_LIST = 14;
    private static final int OPEN_SEARCH_LIST = 15;
    private static final int PAUSE = 1;
    private static final int PLAY = 0;
    public static final int PLAY_PAUSE = 6;
    private static final int SCAN_ALL_BY_FREQ = 9;
    private static final int SCAN_SAVE = 8;
    private static final int SEEK_DOWN = 2;
    private static final int SEEK_UP = 3;
    private static final int STEP_DOWN = 5;
    private static final int STEP_UP = 4;
    private static final int STOP = 7;
    public static final int SWITCH_BAND = 11;
    public static final int SWITCH_FAVOR = 10;
    private static final String TAG = "RadioButton";
    private int mClickFunction;
    private int mClickLongFunction;
    private Drawable mDrawable;
    private Drawable mDrawableSelected;
    private boolean mFavorClickStopRadioScan;
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
    private final View.OnClickListener mOnClickListener;
    private final View.OnLongClickListener mOnLongClickListener;
    private boolean mRadioScanStatusPause;
    private String mSelected;
    private String mText;

    public RadioButton(Context context) {
        super(context);
        this.mClickLongFunction = -1;
        this.mText = "";
        this.mSelected = null;
        this.mOnClickListener = new View.OnClickListener() { // from class: com.yftech.car.widget.media.radio.button.RadioButton.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                switch (RadioButton.this.mClickFunction) {
                    case 0:
                        RadioManager.getInstance().play();
                        return;
                    case 1:
                        RadioManager.getInstance().pause();
                        return;
                    case 2:
                        RadioManager.getInstance().seekDown();
                        return;
                    case 3:
                        RadioManager.getInstance().seekUp();
                        return;
                    case 4:
                        RadioManager.getInstance().stepUp();
                        return;
                    case 5:
                        RadioManager.getInstance().stepDown();
                        return;
                    case 6:
                        if (RadioManager.getInstance().isPlaying()) {
                            RadioManager.getInstance().pause();
                            return;
                        } else {
                            RadioManager.getInstance().play();
                            return;
                        }
                    case 7:
                        RadioManager.getInstance().stop();
                        return;
                    case 8:
                        RadioManager.getInstance().scanSave();
                        return;
                    case 9:
                        RadioManager.getInstance().scanAllByFreq();
                        return;
                    case 10:
                        if (RadioButton.this.mFavorClickStopRadioScan && RadioManager.getInstance().stop() == 1) {
                            return;
                        }
                        DataOfRadio freq = RadioManager.getInstance().getFreq();
                        if (!RadioManager.getInstance().isFreqFavored(freq)) {
                            RadioButton.this.showAddFavor(RadioManager.getInstance().addFavor(freq, RadioButton.this.getFavorMax(freq), RadioButton.this.mFavorStatusMaxUpdateoldData));
                            return;
                        } else {
                            RadioButton.this.showRemoveFavor(RadioManager.getInstance().removeFavor(freq));
                            return;
                        }
                    case 11:
                        if (RadioManager.getInstance().getBand() == 0) {
                            RadioManager.getInstance().setBand(2);
                            return;
                        } else {
                            RadioManager.getInstance().setBand(0);
                            return;
                        }
                    case 12:
                        if (RadioManager.getInstance().getBand() != 2) {
                            RadioManager.getInstance().setBand(2);
                            return;
                        }
                        return;
                    case 13:
                        if (RadioManager.getInstance().getBand() != 0) {
                            RadioManager.getInstance().setBand(0);
                            return;
                        }
                        return;
                    case 14:
                    case 15:
                    default:
                        return;
                }
            }
        };
        this.mOnLongClickListener = new View.OnLongClickListener() { // from class: com.yftech.car.widget.media.radio.button.RadioButton.2
            /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
            @Override // android.view.View.OnLongClickListener
            public boolean onLongClick(View view) {
                switch (RadioButton.this.mClickLongFunction) {
                    case 0:
                        RadioManager.getInstance().play();
                        return true;
                    case 1:
                        RadioManager.getInstance().pause();
                        return true;
                    case 2:
                        RadioManager.getInstance().seekDown();
                        return true;
                    case 3:
                        RadioManager.getInstance().seekUp();
                        return true;
                    case 4:
                        RadioManager.getInstance().stepUp();
                        return true;
                    case 5:
                        RadioManager.getInstance().stepDown();
                        return true;
                    case 6:
                        if (RadioManager.getInstance().isPlaying()) {
                            RadioManager.getInstance().pause();
                        } else {
                            RadioManager.getInstance().play();
                        }
                        return true;
                    case 7:
                        RadioManager.getInstance().stop();
                        return true;
                    case 8:
                        RadioManager.getInstance().scanSave();
                        return true;
                    case 9:
                        RadioManager.getInstance().scanAllByFreq();
                        return true;
                    case 10:
                        if (RadioButton.this.mFavorClickStopRadioScan && RadioManager.getInstance().stop() == 1) {
                            return true;
                        }
                        DataOfRadio freq = RadioManager.getInstance().getFreq();
                        if (!RadioManager.getInstance().isFreqFavored(freq)) {
                            RadioButton.this.showAddFavor(RadioManager.getInstance().addFavor(freq, RadioButton.this.getFavorMax(freq), RadioButton.this.mFavorStatusMaxUpdateoldData));
                        } else {
                            RadioButton.this.showRemoveFavor(RadioManager.getInstance().removeFavor(freq));
                        }
                        return true;
                    case 11:
                        if (RadioManager.getInstance().getBand() == 0) {
                            RadioManager.getInstance().setBand(2);
                        } else {
                            RadioManager.getInstance().setBand(0);
                        }
                        return true;
                    case 12:
                        if (RadioManager.getInstance().getBand() != 2) {
                            RadioManager.getInstance().setBand(2);
                        }
                        return true;
                    case 13:
                        if (RadioManager.getInstance().getBand() != 0) {
                            RadioManager.getInstance().setBand(0);
                        }
                        return true;
                    case 14:
                    case 15:
                    default:
                        return true;
                }
            }
        };
    }

    public RadioButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.buttonStyle);
    }

    public RadioButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mClickLongFunction = -1;
        this.mText = "";
        this.mSelected = null;
        this.mOnClickListener = new View.OnClickListener() { // from class: com.yftech.car.widget.media.radio.button.RadioButton.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                switch (RadioButton.this.mClickFunction) {
                    case 0:
                        RadioManager.getInstance().play();
                        return;
                    case 1:
                        RadioManager.getInstance().pause();
                        return;
                    case 2:
                        RadioManager.getInstance().seekDown();
                        return;
                    case 3:
                        RadioManager.getInstance().seekUp();
                        return;
                    case 4:
                        RadioManager.getInstance().stepUp();
                        return;
                    case 5:
                        RadioManager.getInstance().stepDown();
                        return;
                    case 6:
                        if (RadioManager.getInstance().isPlaying()) {
                            RadioManager.getInstance().pause();
                            return;
                        } else {
                            RadioManager.getInstance().play();
                            return;
                        }
                    case 7:
                        RadioManager.getInstance().stop();
                        return;
                    case 8:
                        RadioManager.getInstance().scanSave();
                        return;
                    case 9:
                        RadioManager.getInstance().scanAllByFreq();
                        return;
                    case 10:
                        if (RadioButton.this.mFavorClickStopRadioScan && RadioManager.getInstance().stop() == 1) {
                            return;
                        }
                        DataOfRadio freq = RadioManager.getInstance().getFreq();
                        if (!RadioManager.getInstance().isFreqFavored(freq)) {
                            RadioButton.this.showAddFavor(RadioManager.getInstance().addFavor(freq, RadioButton.this.getFavorMax(freq), RadioButton.this.mFavorStatusMaxUpdateoldData));
                            return;
                        } else {
                            RadioButton.this.showRemoveFavor(RadioManager.getInstance().removeFavor(freq));
                            return;
                        }
                    case 11:
                        if (RadioManager.getInstance().getBand() == 0) {
                            RadioManager.getInstance().setBand(2);
                            return;
                        } else {
                            RadioManager.getInstance().setBand(0);
                            return;
                        }
                    case 12:
                        if (RadioManager.getInstance().getBand() != 2) {
                            RadioManager.getInstance().setBand(2);
                            return;
                        }
                        return;
                    case 13:
                        if (RadioManager.getInstance().getBand() != 0) {
                            RadioManager.getInstance().setBand(0);
                            return;
                        }
                        return;
                    case 14:
                    case 15:
                    default:
                        return;
                }
            }
        };
        this.mOnLongClickListener = new View.OnLongClickListener() { // from class: com.yftech.car.widget.media.radio.button.RadioButton.2
            /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
            @Override // android.view.View.OnLongClickListener
            public boolean onLongClick(View view) {
                switch (RadioButton.this.mClickLongFunction) {
                    case 0:
                        RadioManager.getInstance().play();
                        return true;
                    case 1:
                        RadioManager.getInstance().pause();
                        return true;
                    case 2:
                        RadioManager.getInstance().seekDown();
                        return true;
                    case 3:
                        RadioManager.getInstance().seekUp();
                        return true;
                    case 4:
                        RadioManager.getInstance().stepUp();
                        return true;
                    case 5:
                        RadioManager.getInstance().stepDown();
                        return true;
                    case 6:
                        if (RadioManager.getInstance().isPlaying()) {
                            RadioManager.getInstance().pause();
                        } else {
                            RadioManager.getInstance().play();
                        }
                        return true;
                    case 7:
                        RadioManager.getInstance().stop();
                        return true;
                    case 8:
                        RadioManager.getInstance().scanSave();
                        return true;
                    case 9:
                        RadioManager.getInstance().scanAllByFreq();
                        return true;
                    case 10:
                        if (RadioButton.this.mFavorClickStopRadioScan && RadioManager.getInstance().stop() == 1) {
                            return true;
                        }
                        DataOfRadio freq = RadioManager.getInstance().getFreq();
                        if (!RadioManager.getInstance().isFreqFavored(freq)) {
                            RadioButton.this.showAddFavor(RadioManager.getInstance().addFavor(freq, RadioButton.this.getFavorMax(freq), RadioButton.this.mFavorStatusMaxUpdateoldData));
                        } else {
                            RadioButton.this.showRemoveFavor(RadioManager.getInstance().removeFavor(freq));
                        }
                        return true;
                    case 11:
                        if (RadioManager.getInstance().getBand() == 0) {
                            RadioManager.getInstance().setBand(2);
                        } else {
                            RadioManager.getInstance().setBand(0);
                        }
                        return true;
                    case 12:
                        if (RadioManager.getInstance().getBand() != 2) {
                            RadioManager.getInstance().setBand(2);
                        }
                        return true;
                    case 13:
                        if (RadioManager.getInstance().getBand() != 0) {
                            RadioManager.getInstance().setBand(0);
                        }
                        return true;
                    case 14:
                    case 15:
                    default:
                        return true;
                }
            }
        };
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.RadioButton);
            this.mClickFunction = obtainStyledAttributes.getInt(R.styleable.RadioButton_button_click_function, 0);
            this.mClickLongFunction = obtainStyledAttributes.getInt(R.styleable.RadioButton_button_long_click_function, -1);
            this.mSelected = obtainStyledAttributes.getString(R.styleable.RadioButton_button_activated_text);
            this.mDrawableSelected = obtainStyledAttributes.getDrawable(R.styleable.RadioButton_background_activated);
            this.mRadioScanStatusPause = obtainStyledAttributes.getBoolean(R.styleable.RadioButton_radio_scan_status_pause, false);
            TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, R.styleable.FavorStatus);
            this.mFavorStatusFmFavorMax = obtainStyledAttributes2.getInt(R.styleable.FavorStatus_favorStatus_fm_favor_max, 10);
            this.mFavorStatusFm1FavorMax = obtainStyledAttributes2.getInt(R.styleable.FavorStatus_favorStatus_fm1_favor_max, 10);
            this.mFavorStatusAmFavorMax = obtainStyledAttributes2.getInt(R.styleable.FavorStatus_favorStatus_fm_favor_max, 10);
            this.mFavorStatusAddFavorSuccess = obtainStyledAttributes2.getString(R.styleable.FavorStatus_favorStatus_add_favor_success);
            this.mFavorStatusAddFavorFail = obtainStyledAttributes2.getString(R.styleable.FavorStatus_favorStatus_add_favor_fail);
            this.mFavorStatusRemoveFavorSuccess = obtainStyledAttributes2.getString(R.styleable.FavorStatus_favorStatus_remove_favor_success);
            this.mFavorStatusRemoveFavorFail = obtainStyledAttributes2.getString(R.styleable.FavorStatus_favorStatus_remove_favor_fail);
            this.mFavorStatusIncreasedMaxLimit = obtainStyledAttributes2.getString(R.styleable.FavorStatus_favorStatus_increased_max_limit);
            this.mFavorStatusMaxUpdateoldData = obtainStyledAttributes2.getBoolean(R.styleable.FavorStatus_favorStatus_max_updateold_data, false);
            this.mFavorClickStopRadioScan = obtainStyledAttributes2.getBoolean(R.styleable.FavorStatus_favor_click_stop_radio_scan, false);
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
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        CharSequence text = getText();
        if (text != null) {
            this.mText = text.toString();
        }
        this.mDrawable = getBackground();
        setOnClickListener(this.mOnClickListener);
        if (this.mClickLongFunction != -1) {
            setOnLongClickListener(this.mOnLongClickListener);
        }
        if (this.mClickFunction == 10) {
            setActivatedStatus(RadioManager.getInstance().isFreqFavored(RadioManager.getInstance().getFreq()));
        } else if (this.mClickFunction == 11) {
            setActivatedStatus(RadioManager.getInstance().getBand() == 0);
        }
    }

    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
    }

    public void setActivatedStatus(boolean z) {
        if (this.mDrawableSelected != null) {
            setBackground(z ? this.mDrawableSelected : this.mDrawable);
        }
        if (this.mSelected != null) {
            setText(z ? this.mSelected : this.mText);
        }
    }

    public boolean isRadioScanStatusPause() {
        return this.mRadioScanStatusPause;
    }

    public boolean isFunction(int i) {
        return this.mClickFunction == i || this.mClickLongFunction == i;
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

    /* JADX INFO: Access modifiers changed from: private */
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
            DataOfRadio freq = RadioManager.getInstance().getFreq();
            DataOfRadio[] favors = RadioManager.getInstance().getFavors(freq.getType());
            if (favors != null && favors.length == getFavorMax(freq)) {
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

    /* JADX INFO: Access modifiers changed from: private */
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
}
