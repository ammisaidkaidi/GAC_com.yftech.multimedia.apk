package com.yftech.car.widget.media.radio.text;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import androidx.annotation.NonNull;
import androidx.appcompat.widget.AppCompatTextView;
import com.yftech.car.widget.media.R;

/* loaded from: /home/user/work/dex/classes3.dex */
public class RadioDataText extends AppCompatTextView {
    private static final int LIST_SIZE = 0;
    private boolean mRadioDataListEmptyHide;
    private int mRadioDataListId;
    private String mRadioListSizeEndContent;
    private String mRadioListSizeStartContent;
    private int mType;

    private RadioDataText(@NonNull Context context) {
        super(context);
        this.mType = 0;
        this.mRadioDataListId = -1;
    }

    public RadioDataText(@NonNull Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mType = 0;
        this.mRadioDataListId = -1;
        init(context, attributeSet);
    }

    public RadioDataText(@NonNull Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mType = 0;
        this.mRadioDataListId = -1;
        init(context, attributeSet);
    }

    private void init(Context context, AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.RadioDataText);
        this.mRadioDataListId = obtainStyledAttributes.getResourceId(R.styleable.RadioDataText_radio_data_list_id, -1);
        this.mRadioListSizeStartContent = obtainStyledAttributes.getString(R.styleable.RadioDataText_radio_list_size_start_content);
        this.mRadioListSizeEndContent = obtainStyledAttributes.getString(R.styleable.RadioDataText_radio_list_size_end_content);
        this.mRadioDataListEmptyHide = obtainStyledAttributes.getBoolean(R.styleable.RadioDataText_radio_data_list_empty_hide, false);
    }

    public int getType() {
        return this.mType;
    }

    public int getRadioDataListId() {
        return this.mRadioDataListId;
    }

    public boolean isRadioDataListId(int i) {
        return this.mRadioDataListId == -1 || this.mRadioDataListId == i;
    }

    public void setListSize(int i) {
        if (this.mRadioDataListEmptyHide && i == 0) {
            setText("");
            return;
        }
        String str = "" + i;
        if (this.mRadioListSizeStartContent != null) {
            str = this.mRadioListSizeStartContent + str;
        }
        if (this.mRadioListSizeEndContent != null) {
            str = str + this.mRadioListSizeEndContent;
        }
        setText(str);
    }
}
