package com.yftech.car.widget.media.radio.text;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.Drawable;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.ForegroundColorSpan;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.Nullable;
import com.media.common.util.AppConstants;
import com.yftech.car.media.radio.entity.DataOfRadio;
import com.yftech.car.widget.media.R;
import com.yftech.car.widget.media.manager.RadioManager;

/* loaded from: /home/user/work/dex/classes3.dex */
public class RadioTextView extends LinearLayout implements View.OnClickListener {
    private static final int BAND = 2;
    private static final int FREQ = 1;
    private static final int HERTZ = 4;
    private static final String TAG = "RadioTextView";
    private boolean isShowImage;
    private boolean isTwoDecimalPlaces;
    private AbsoluteSizeSpan mBandAbsoluteSizeSpan;
    private ForegroundColorSpan mBandColorSpan;
    private final Drawable[] mBandDrawable;
    private ImageView mBandImage;
    private AbsoluteSizeSpan mFreqAbsoluteSizeSpan;
    private Drawable[] mFreqAmDrawable;
    private ForegroundColorSpan mFreqColorSpan;
    private Drawable mFreqDrawablePoint;
    private Drawable[] mFreqFmDrawable;
    private ImageView[] mFreqImage;
    private AbsoluteSizeSpan mHertzAbsoluteSizeSpan;
    private String mHertzAm;
    private ForegroundColorSpan mHertzColorSpan;
    private final Drawable[] mHertzDrawable;
    private String mHertzFm;
    private String mHertzFm1;
    private ImageView mHertzImage;
    private TextView mRadioTextView;
    private SpannableStringBuilder mSpannable;
    private int mTextFunctionFlag;

    public RadioTextView(Context context) {
        super(context);
        this.mFreqImage = null;
        this.mBandDrawable = new Drawable[3];
        this.mHertzDrawable = new Drawable[3];
        this.mFreqFmDrawable = new Drawable[4];
        this.mFreqAmDrawable = new Drawable[4];
    }

    public RadioTextView(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 16842884);
    }

    public RadioTextView(Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mFreqImage = null;
        this.mBandDrawable = new Drawable[3];
        this.mHertzDrawable = new Drawable[3];
        this.mFreqFmDrawable = new Drawable[4];
        this.mFreqAmDrawable = new Drawable[4];
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.RadioTextView);
        this.mTextFunctionFlag = obtainStyledAttributes.getInt(R.styleable.RadioTextView_text_function, 1);
        int color = context.getColor(17170443);
        this.mFreqColorSpan = new ForegroundColorSpan(obtainStyledAttributes.getColor(R.styleable.RadioTextView_freq_text_color, color));
        this.mFreqAbsoluteSizeSpan = new AbsoluteSizeSpan(obtainStyledAttributes.getDimensionPixelSize(R.styleable.RadioTextView_freq_text_size, 20));
        this.mBandColorSpan = new ForegroundColorSpan(obtainStyledAttributes.getColor(R.styleable.RadioTextView_band_text_color, color));
        this.mBandAbsoluteSizeSpan = new AbsoluteSizeSpan(obtainStyledAttributes.getDimensionPixelSize(R.styleable.RadioTextView_band_text_size, 20));
        this.mHertzColorSpan = new ForegroundColorSpan(obtainStyledAttributes.getColor(R.styleable.RadioTextView_hertz_text_color, color));
        this.mHertzAbsoluteSizeSpan = new AbsoluteSizeSpan(obtainStyledAttributes.getDimensionPixelSize(R.styleable.RadioTextView_hertz_text_size, 20));
        boolean z = obtainStyledAttributes.getBoolean(R.styleable.RadioTextView_click_switch_band, false);
        this.mBandDrawable[0] = obtainStyledAttributes.getDrawable(R.styleable.RadioTextView_fm_image);
        this.mBandDrawable[1] = obtainStyledAttributes.getDrawable(R.styleable.RadioTextView_fm1_image);
        this.mBandDrawable[2] = obtainStyledAttributes.getDrawable(R.styleable.RadioTextView_am_image);
        this.mFreqFmDrawable[0] = obtainStyledAttributes.getDrawable(R.styleable.RadioTextView_freq_image);
        this.mFreqFmDrawable[1] = obtainStyledAttributes.getDrawable(R.styleable.RadioTextView_freq_image1);
        this.mFreqFmDrawable[2] = obtainStyledAttributes.getDrawable(R.styleable.RadioTextView_freq_image2);
        this.mFreqFmDrawable[3] = obtainStyledAttributes.getDrawable(R.styleable.RadioTextView_freq_image3);
        this.mFreqAmDrawable[0] = obtainStyledAttributes.getDrawable(R.styleable.RadioTextView_freq_am_image);
        this.mFreqAmDrawable[1] = obtainStyledAttributes.getDrawable(R.styleable.RadioTextView_freq_am_image1);
        this.mFreqAmDrawable[2] = obtainStyledAttributes.getDrawable(R.styleable.RadioTextView_freq_am_image2);
        this.mFreqAmDrawable[3] = obtainStyledAttributes.getDrawable(R.styleable.RadioTextView_freq_am_image3);
        this.mFreqDrawablePoint = obtainStyledAttributes.getDrawable(R.styleable.RadioTextView_freq_image_point);
        this.mHertzDrawable[0] = obtainStyledAttributes.getDrawable(R.styleable.RadioTextView_fm_hertz_image);
        this.mHertzDrawable[1] = obtainStyledAttributes.getDrawable(R.styleable.RadioTextView_fm1_hertz_image);
        this.mHertzDrawable[2] = obtainStyledAttributes.getDrawable(R.styleable.RadioTextView_am_hertz_image);
        if (this.mFreqDrawablePoint != null) {
            this.isShowImage = ((this.mTextFunctionFlag & 2) == 0 || !((this.mTextFunctionFlag & 2) <= 0 || this.mBandDrawable[0] == null || this.mBandDrawable[2] == null)) && ((this.mTextFunctionFlag & 1) == 0 || !((this.mTextFunctionFlag & 1) <= 0 || this.mFreqFmDrawable[0] == null || this.mFreqAmDrawable[0] == null)) && ((this.mTextFunctionFlag & 4) == 0 || !((this.mTextFunctionFlag & 4) <= 0 || this.mHertzDrawable[0] == null || this.mHertzDrawable[2] == null));
        }
        if (!this.isShowImage) {
            this.mRadioTextView = new TextView(context);
        }
        if (z) {
            setOnClickListener(this);
        }
        this.mHertzFm = obtainStyledAttributes.getString(R.styleable.RadioTextView_hertz_fm_text);
        if (this.mHertzFm == null) {
            this.mHertzFm = context.getString(R.string.hertz_fm);
        }
        this.mHertzFm1 = obtainStyledAttributes.getString(R.styleable.RadioTextView_hertz_fm1_text);
        if (this.mHertzFm1 == null) {
            this.mHertzFm1 = context.getString(R.string.hertz_fm1);
        }
        this.mHertzAm = obtainStyledAttributes.getString(R.styleable.RadioTextView_hertz_am_text);
        if (this.mHertzAm == null) {
            this.mHertzAm = context.getString(R.string.hertz_am);
        }
        this.isTwoDecimalPlaces = RadioManager.getInstance().getStep(0) % 100 != 0;
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        if (this.mRadioTextView != null) {
            addView(this.mRadioTextView);
        }
        DataOfRadio freq = RadioManager.getInstance().getFreq();
        if (freq == null || freq.getType() == -1) {
            return;
        }
        setRadioText(freq);
    }

    public void setRadioText(DataOfRadio dataOfRadio) {
        setRadioText(dataOfRadio.getType(), dataOfRadio.getFreq());
    }

    public void setRadioText(int i, int i2) {
        String str;
        Log.d(TAG, "setRadioText: band==" + i + ",freq==" + i2 + ",mTextFunctionFlag==" + this.mTextFunctionFlag + ",isShowImage==" + this.isShowImage);
        if (i >= 0 && i < this.mBandDrawable.length && i2 > 0) {
            if (this.mSpannable == null) {
                this.mSpannable = new SpannableStringBuilder();
            } else {
                this.mSpannable.clear();
            }
            if ((this.mTextFunctionFlag & 2) > 0) {
                if (this.isShowImage) {
                    if (this.mBandImage == null) {
                        this.mBandImage = new ImageView(getContext());
                        addView(this.mBandImage);
                    }
                    this.mBandImage.setImageDrawable(this.mBandDrawable[i]);
                } else {
                    String str2 = i != 0 ? i != 2 ? "FM1" : "AM" : "FM";
                    this.mSpannable.append((CharSequence) str2);
                    this.mSpannable.setSpan(this.mBandColorSpan, 0, str2.length(), 33);
                    this.mSpannable.setSpan(this.mBandAbsoluteSizeSpan, 0, str2.length(), 33);
                }
            }
            if ((this.mTextFunctionFlag & 1) > 0) {
                if (this.isShowImage) {
                    if (this.mFreqImage == null) {
                        this.mFreqImage = new ImageView[5];
                        for (int i3 = 0; i3 < this.mFreqImage.length; i3++) {
                            this.mFreqImage[i3] = new ImageView(getContext());
                            addView(this.mFreqImage[i3]);
                        }
                    }
                    if (i == 2) {
                        AnimationDrawable animationDrawable = (AnimationDrawable) this.mFreqAmDrawable[0];
                        this.mFreqImage[this.mFreqImage.length - 1].setImageDrawable(animationDrawable.getFrame(getImageFreqPos(i2, 1)));
                        if (this.mFreqAmDrawable[1] != null) {
                            animationDrawable = (AnimationDrawable) this.mFreqAmDrawable[1];
                        }
                        this.mFreqImage[this.mFreqImage.length - 2].setImageDrawable(animationDrawable.getFrame(getImageFreqPos(i2, 10)));
                        if (this.mFreqAmDrawable[2] != null) {
                            animationDrawable = (AnimationDrawable) this.mFreqAmDrawable[2];
                        }
                        this.mFreqImage[this.mFreqImage.length - 3].setImageDrawable(animationDrawable.getFrame(getImageFreqPos(i2, 100)));
                        if (i2 > 999) {
                            if (this.mFreqAmDrawable[3] != null) {
                                animationDrawable = (AnimationDrawable) this.mFreqAmDrawable[3];
                            }
                            this.mFreqImage[this.mFreqImage.length - 4].setImageDrawable(animationDrawable.getFrame(1));
                        } else {
                            this.mFreqImage[this.mFreqImage.length - 4].setImageDrawable(null);
                        }
                        this.mFreqImage[this.mFreqImage.length - 5].setImageDrawable(null);
                    } else {
                        AnimationDrawable animationDrawable2 = (AnimationDrawable) this.mFreqFmDrawable[0];
                        this.mFreqImage[this.mFreqImage.length - 1].setImageDrawable(animationDrawable2.getFrame(getImageFreqPos(i2, 100)));
                        this.mFreqImage[this.mFreqImage.length - 2].setImageDrawable(this.mFreqDrawablePoint);
                        if (this.mFreqFmDrawable[1] != null) {
                            animationDrawable2 = (AnimationDrawable) this.mFreqFmDrawable[1];
                        }
                        this.mFreqImage[this.mFreqImage.length - 3].setImageDrawable(animationDrawable2.getFrame(getImageFreqPos(i2, 1000)));
                        if (this.mFreqFmDrawable[2] != null) {
                            animationDrawable2 = (AnimationDrawable) this.mFreqFmDrawable[2];
                        }
                        this.mFreqImage[this.mFreqImage.length - 4].setImageDrawable(animationDrawable2.getFrame(getImageFreqPos(i2, 10000)));
                        if (i2 > 99999) {
                            if (this.mFreqFmDrawable[3] != null) {
                                animationDrawable2 = (AnimationDrawable) this.mFreqFmDrawable[3];
                            }
                            this.mFreqImage[this.mFreqImage.length - 5].setImageDrawable(animationDrawable2.getFrame(1));
                        } else {
                            this.mFreqImage[this.mFreqImage.length - 5].setImageDrawable(null);
                        }
                    }
                } else {
                    String spannableStringBuilder = this.mSpannable.toString();
                    String valueOf = i == 2 ? String.valueOf(i2) : getFmFreqValue(i2);
                    this.mSpannable.append((CharSequence) valueOf);
                    if (!TextUtils.isEmpty(spannableStringBuilder)) {
                        this.mSpannable.setSpan(this.mFreqColorSpan, spannableStringBuilder.length(), spannableStringBuilder.length() + valueOf.length(), 33);
                        this.mSpannable.setSpan(this.mFreqAbsoluteSizeSpan, spannableStringBuilder.length(), spannableStringBuilder.length() + valueOf.length(), 33);
                    } else {
                        this.mSpannable.setSpan(this.mFreqColorSpan, 0, valueOf.length(), 33);
                        this.mSpannable.setSpan(this.mFreqAbsoluteSizeSpan, 0, valueOf.length(), 33);
                    }
                }
            }
            if ((this.mTextFunctionFlag & 4) > 0) {
                if (this.isShowImage) {
                    if (this.mHertzImage == null) {
                        this.mHertzImage = new ImageView(getContext());
                        addView(this.mHertzImage);
                    }
                    this.mHertzImage.setImageDrawable(this.mHertzDrawable[i]);
                } else {
                    String spannableStringBuilder2 = this.mSpannable.toString();
                    if (i == 0) {
                        str = this.mHertzFm;
                    } else if (i == 2) {
                        str = this.mHertzAm;
                    } else {
                        str = this.mHertzFm1;
                    }
                    this.mSpannable.append((CharSequence) str);
                    if (!TextUtils.isEmpty(spannableStringBuilder2)) {
                        this.mSpannable.setSpan(this.mHertzColorSpan, spannableStringBuilder2.length(), spannableStringBuilder2.length() + str.length(), 33);
                        this.mSpannable.setSpan(this.mHertzAbsoluteSizeSpan, spannableStringBuilder2.length(), spannableStringBuilder2.length() + str.length(), 33);
                    } else {
                        this.mSpannable.setSpan(this.mHertzColorSpan, 0, str.length(), 33);
                        this.mSpannable.setSpan(this.mHertzAbsoluteSizeSpan, 0, str.length(), 33);
                    }
                }
            }
            if (this.mRadioTextView != null) {
                this.mRadioTextView.setText(this.mSpannable);
                return;
            }
            return;
        }
        Log.e(TAG, "setRadioText: error band or freq");
    }

    private int getImageFreqPos(int i, int i2) {
        int i3 = i / i2;
        return i3 - ((i3 / 10) * 10);
    }

    private String getFmFreqValue(int i) {
        int i2 = i / 100;
        StringBuilder sb = new StringBuilder();
        sb.append(i / 1000.0f);
        sb.append((this.isTwoDecimalPlaces && i2 * 100 == i) ? AppConstants.VALUE_HIDE : "");
        return sb.toString();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (RadioManager.getInstance().getBand() == 0) {
            RadioManager.getInstance().setBand(2);
        } else {
            RadioManager.getInstance().setBand(0);
        }
    }
}
