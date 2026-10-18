package com.yftech.car.widget.media.text;

import android.content.Context;
import android.content.res.TypedArray;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.ForegroundColorSpan;
import android.util.AttributeSet;
import android.util.Log;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatTextView;
import com.yftech.car.widget.media.R;

/* loaded from: /home/user/work/dex/classes3.dex */
public class MediaListFolderPath extends AppCompatTextView {
    private static final String TAG = "MediaListFolderPath";
    private AbsoluteSizeSpan mAbsoluteSizeSelectedSpan;
    private AbsoluteSizeSpan mAbsoluteSizeSpan;
    private boolean mClickBack;
    private boolean mClickFolder;
    private ForegroundColorSpan mColorSelectedSpan;
    private ForegroundColorSpan mColorSpan;
    private String mCurrentPathText;
    private boolean mDirectoryInvisible;
    private int mDirectoryInvisibleValue;
    private boolean mDirectoryVisible;
    private String mEndContent;
    private boolean mListFolderPathShowFolderPath;
    private int mListId;
    private String mRootDirectoryName;
    private int mSelectedColor;
    private int mSelectedSize;
    private SpannableStringBuilder mSpannable;
    private String mStartContent;

    public MediaListFolderPath(Context context) {
        super(context);
    }

    public MediaListFolderPath(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public MediaListFolderPath(Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        int defaultColor = getTextColors().getDefaultColor();
        int textSize = (int) getTextSize();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.MediaListFolderPath);
        this.mSelectedColor = obtainStyledAttributes.getColor(R.styleable.MediaListFolderPath_ListFolderPath_selected_color, defaultColor);
        this.mSelectedSize = obtainStyledAttributes.getDimensionPixelSize(R.styleable.MediaListFolderPath_ListFolderPath_selected_size, textSize);
        this.mClickBack = obtainStyledAttributes.getBoolean(R.styleable.MediaListFolderPath_ListFolderPath_click_back, false);
        this.mClickFolder = obtainStyledAttributes.getBoolean(R.styleable.MediaListFolderPath_ListFolderPath_click_folder, false);
        this.mDirectoryInvisible = obtainStyledAttributes.getBoolean(R.styleable.MediaListFolderPath_ListFolderPath_directory_invisible, false);
        this.mDirectoryInvisibleValue = obtainStyledAttributes.getInt(R.styleable.MediaListFolderPath_ListFolderPath_directory_root_value, -1);
        this.mDirectoryVisible = obtainStyledAttributes.getBoolean(R.styleable.MediaListFolderPath_ListFolderPath_directory_visible, false);
        this.mListFolderPathShowFolderPath = obtainStyledAttributes.getBoolean(R.styleable.MediaListFolderPath_ListFolderPath_show_folder_path, true);
        this.mListId = obtainStyledAttributes.getResourceId(R.styleable.MediaListFolderPath_ListFolderPath_list_id, -1);
        this.mRootDirectoryName = obtainStyledAttributes.getString(R.styleable.MediaListFolderPath_ListFolderPath_root_directory_name);
        if (TextUtils.isEmpty(this.mRootDirectoryName)) {
            this.mRootDirectoryName = "";
        } else {
            this.mRootDirectoryName += "/";
        }
        this.mStartContent = obtainStyledAttributes.getString(R.styleable.MediaListFolderPath_ListFolderPath_start_content);
        this.mEndContent = obtainStyledAttributes.getString(R.styleable.MediaListFolderPath_ListFolderPath_end_content);
        this.mColorSpan = new ForegroundColorSpan(defaultColor);
        this.mAbsoluteSizeSpan = new AbsoluteSizeSpan(textSize);
        this.mColorSelectedSpan = new ForegroundColorSpan(this.mSelectedColor);
        this.mAbsoluteSizeSelectedSpan = new AbsoluteSizeSpan(this.mSelectedSize);
    }

    public void setFolderPathText(String str, String str2) {
        String str3;
        int i;
        if (this.mListFolderPathShowFolderPath) {
            if (this.mSpannable == null) {
                this.mSpannable = new SpannableStringBuilder();
            } else {
                this.mSpannable.clear();
            }
            if (!TextUtils.isEmpty(str2)) {
                int length = str.length();
                int i2 = str2.length() > length ? length + 1 : 0;
                if (i2 == 0) {
                    str3 = this.mRootDirectoryName.length() > 0 ? this.mRootDirectoryName.substring(0, this.mRootDirectoryName.length() - 1) : "";
                } else {
                    str3 = this.mRootDirectoryName + str2.substring(i2);
                }
                this.mCurrentPathText = str3;
                int lastIndexOf = str3.lastIndexOf("/");
                Log.d(TAG, "setFolderPathText: text==" + str3 + ",endIndex==" + lastIndexOf);
                if (TextUtils.isEmpty(this.mStartContent)) {
                    i = 0;
                } else {
                    this.mSpannable.append((CharSequence) this.mStartContent);
                    i = this.mStartContent.length();
                    this.mSpannable.setSpan(this.mColorSpan, 0, i, 33);
                    this.mSpannable.setSpan(this.mAbsoluteSizeSpan, 0, i, 33);
                }
                if (lastIndexOf == -1) {
                    this.mSpannable.append((CharSequence) str3);
                    this.mSpannable.setSpan(this.mColorSelectedSpan, i, str3.length() + i, 33);
                    this.mSpannable.setSpan(this.mAbsoluteSizeSelectedSpan, i, str3.length() + i, 33);
                } else {
                    this.mSpannable.append((CharSequence) str3.substring(0, lastIndexOf));
                    int i3 = lastIndexOf + i;
                    this.mSpannable.setSpan(this.mColorSpan, i, i3, 33);
                    this.mSpannable.setSpan(this.mAbsoluteSizeSpan, i, i3, 33);
                    String substring = str3.substring(lastIndexOf);
                    this.mSpannable.append((CharSequence) substring);
                    this.mSpannable.setSpan(this.mColorSelectedSpan, i3, substring.length() + lastIndexOf + i, 33);
                    this.mSpannable.setSpan(this.mAbsoluteSizeSelectedSpan, i3, lastIndexOf + substring.length() + i, 33);
                }
                if (!TextUtils.isEmpty(this.mEndContent)) {
                    int length2 = i + str3.length();
                    this.mSpannable.append((CharSequence) this.mEndContent);
                    this.mSpannable.setSpan(this.mColorSpan, length2, this.mEndContent.length() + length2, 33);
                    this.mSpannable.setSpan(this.mAbsoluteSizeSpan, length2, this.mEndContent.length() + length2, 33);
                }
                setText(this.mSpannable);
                return;
            }
            setText("");
        }
    }

    public String getCurrentPathText() {
        return this.mCurrentPathText;
    }

    public String getRootDirectoryName() {
        return this.mRootDirectoryName;
    }

    public int getListId() {
        return this.mListId;
    }

    public String getStartContent() {
        return this.mStartContent;
    }

    public String getEndContent() {
        return this.mEndContent;
    }

    public int getSelectedColor() {
        return this.mSelectedColor;
    }

    public int getSelectedSize() {
        return this.mSelectedSize;
    }

    public boolean isClickBack() {
        return this.mClickBack;
    }

    public boolean isClickFolder() {
        return this.mClickFolder;
    }

    public void setVisibility(int i) {
        super.setVisibility(i);
    }

    public boolean isDirectoryInvisible() {
        if (this.mDirectoryInvisibleValue != -1) {
            setVisibility(this.mDirectoryInvisibleValue);
            return false;
        }
        return this.mDirectoryInvisible;
    }

    public boolean isDirectoryVisible() {
        return this.mDirectoryVisible;
    }
}
