package com.yftech.car.widget.media.text;

import android.content.Context;
import android.content.res.TypedArray;
import android.text.SpannableStringBuilder;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.ForegroundColorSpan;
import android.util.AttributeSet;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatTextView;
import com.yftech.car.widget.media.R;
import com.yftech.car.widget.media.utils.FileUtil;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;

/* loaded from: /home/user/work/dex/classes3.dex */
public class MediaDataListText extends AppCompatTextView {
    public static final int LIST_FILE_SIZE = 1;
    public static final int LIST_FOLDER_FILE_SIZE = 3;
    public static final int LIST_FOLDER_SIZE = 2;
    public static final int NOT_SELECTED = 4;
    public static final int SELECTED_SIZE = 5;
    private static final String TAG = "MediaDataListText";
    private final List<MediaListInfoItem> mList;
    private int mMediaDataListId;
    private String mSelectedSizeMiddleContent;
    private SpannableStringBuilder mSpannable;

    public MediaDataListText(@NonNull Context context) {
        super(context);
        this.mList = new ArrayList();
    }

    public MediaDataListText(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mList = new ArrayList();
        init(context, attributeSet);
    }

    public MediaDataListText(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mList = new ArrayList();
        init(context, attributeSet);
    }

    public void init(Context context, AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.MediaDataListText);
        int defaultColor = getTextColors().getDefaultColor();
        int textSize = (int) getTextSize();
        this.mMediaDataListId = obtainStyledAttributes.getResourceId(R.styleable.MediaDataListText_MediaDataListText_list_id, -1);
        int i = obtainStyledAttributes.getInt(R.styleable.MediaDataListText_list_file_size_position, -1);
        if (i != -1) {
            MediaListInfoItem mediaListInfoItem = new MediaListInfoItem(1);
            mediaListInfoItem.position = i;
            mediaListInfoItem.setColorSpan(obtainStyledAttributes.getColor(R.styleable.MediaDataListText_list_file_size_text_color, defaultColor));
            mediaListInfoItem.setAbsoluteSizeSpan(obtainStyledAttributes.getDimensionPixelSize(R.styleable.MediaDataListText_list_file_size_text_size, textSize));
            mediaListInfoItem.mLineFeed = obtainStyledAttributes.getBoolean(R.styleable.MediaDataListText_list_file_size_line_feed, false);
            mediaListInfoItem.mStartContent = obtainStyledAttributes.getString(R.styleable.MediaDataListText_list_file_size_start_content);
            mediaListInfoItem.mEndContent = obtainStyledAttributes.getString(R.styleable.MediaDataListText_list_file_size_end_content);
            this.mList.add(mediaListInfoItem);
        }
        int i2 = obtainStyledAttributes.getInt(R.styleable.MediaDataListText_list_folder_size_position, -1);
        if (i2 != -1) {
            MediaListInfoItem mediaListInfoItem2 = new MediaListInfoItem(2);
            mediaListInfoItem2.position = i2;
            mediaListInfoItem2.setColorSpan(obtainStyledAttributes.getColor(R.styleable.MediaDataListText_list_folder_size_text_color, defaultColor));
            mediaListInfoItem2.setAbsoluteSizeSpan(obtainStyledAttributes.getDimensionPixelSize(R.styleable.MediaDataListText_list_folder_size_text_size, textSize));
            mediaListInfoItem2.mLineFeed = obtainStyledAttributes.getBoolean(R.styleable.MediaDataListText_list_folder_size_line_feed, false);
            mediaListInfoItem2.mStartContent = obtainStyledAttributes.getString(R.styleable.MediaDataListText_list_folder_size_start_content);
            mediaListInfoItem2.mEndContent = obtainStyledAttributes.getString(R.styleable.MediaDataListText_list_folder_size_end_content);
            this.mList.add(mediaListInfoItem2);
        }
        int i3 = obtainStyledAttributes.getInt(R.styleable.MediaDataListText_list_folder_file_size_position, -1);
        if (i3 != -1) {
            MediaListInfoItem mediaListInfoItem3 = new MediaListInfoItem(3);
            mediaListInfoItem3.position = i3;
            mediaListInfoItem3.setColorSpan(obtainStyledAttributes.getColor(R.styleable.MediaDataListText_list_folder_file_size_text_color, defaultColor));
            mediaListInfoItem3.setAbsoluteSizeSpan(obtainStyledAttributes.getDimensionPixelSize(R.styleable.MediaDataListText_list_folder_file_size_text_size, textSize));
            mediaListInfoItem3.mLineFeed = obtainStyledAttributes.getBoolean(R.styleable.MediaDataListText_list_folder_file_size_line_feed, false);
            mediaListInfoItem3.mStartContent = obtainStyledAttributes.getString(R.styleable.MediaDataListText_list_folder_file_size_start_content);
            mediaListInfoItem3.mEndContent = obtainStyledAttributes.getString(R.styleable.MediaDataListText_list_folder_file_size_end_content);
            this.mList.add(mediaListInfoItem3);
        }
        int i4 = obtainStyledAttributes.getInt(R.styleable.MediaDataListText_list_folder_not_selected_position, -1);
        if (i4 != -1) {
            MediaListInfoItem mediaListInfoItem4 = new MediaListInfoItem(4);
            mediaListInfoItem4.position = i4;
            mediaListInfoItem4.setColorSpan(obtainStyledAttributes.getColor(R.styleable.MediaDataListText_list_folder_not_selected_text_color, defaultColor));
            mediaListInfoItem4.setAbsoluteSizeSpan(obtainStyledAttributes.getDimensionPixelSize(R.styleable.MediaDataListText_list_folder_not_selected_text_size, textSize));
            mediaListInfoItem4.mLineFeed = obtainStyledAttributes.getBoolean(R.styleable.MediaDataListText_list_folder_not_selected_line_feed, false);
            mediaListInfoItem4.mStartContent = obtainStyledAttributes.getString(R.styleable.MediaDataListText_list_folder_not_selected_start_content);
            mediaListInfoItem4.mEndContent = obtainStyledAttributes.getString(R.styleable.MediaDataListText_list_folder_not_selected_end_content);
            this.mList.add(mediaListInfoItem4);
        }
        int i5 = obtainStyledAttributes.getInt(R.styleable.MediaDataListText_list_folder_selected_size_position, -1);
        if (i5 != -1) {
            MediaListInfoItem mediaListInfoItem5 = new MediaListInfoItem(5);
            mediaListInfoItem5.position = i5;
            mediaListInfoItem5.setColorSpan(obtainStyledAttributes.getColor(R.styleable.MediaDataListText_list_folder_selected_size_text_color, defaultColor));
            mediaListInfoItem5.setAbsoluteSizeSpan(obtainStyledAttributes.getDimensionPixelSize(R.styleable.MediaDataListText_list_folder_selected_size_text_size, textSize));
            mediaListInfoItem5.mLineFeed = obtainStyledAttributes.getBoolean(R.styleable.MediaDataListText_list_folder_selected_size_line_feed, false);
            mediaListInfoItem5.mStartContent = obtainStyledAttributes.getString(R.styleable.MediaDataListText_list_folder_selected_size_start_content);
            mediaListInfoItem5.mEndContent = obtainStyledAttributes.getString(R.styleable.MediaDataListText_list_folder_selected_size_end_content);
            this.mList.add(mediaListInfoItem5);
        }
        this.mSelectedSizeMiddleContent = obtainStyledAttributes.getString(R.styleable.MediaDataListText_list_folder_selected_size_middle_content);
        if (this.mSelectedSizeMiddleContent == null) {
            this.mSelectedSizeMiddleContent = ",";
        }
        Collections.sort(this.mList, new Comparator<MediaListInfoItem>() { // from class: com.yftech.car.widget.media.text.MediaDataListText.1
            @Override // java.util.Comparator
            public int compare(MediaListInfoItem mediaListInfoItem6, MediaListInfoItem mediaListInfoItem7) {
                return mediaListInfoItem6.position - mediaListInfoItem7.position;
            }
        });
    }

    public boolean isMediaDataListId(int i) {
        return this.mMediaDataListId == -1 || this.mMediaDataListId == i;
    }

    public boolean isSelectedFunction() {
        for (MediaListInfoItem mediaListInfoItem : this.mList) {
            if (mediaListInfoItem.mInfoType == 5 || mediaListInfoItem.mInfoType == 4) {
                return true;
            }
        }
        return false;
    }

    public boolean isFolderFileSize() {
        for (MediaListInfoItem mediaListInfoItem : this.mList) {
            if (mediaListInfoItem.mInfoType == 1 || mediaListInfoItem.mInfoType == 2 || mediaListInfoItem.mInfoType == 3) {
                return true;
            }
        }
        return false;
    }

    public boolean isSelectedFunction(int i) {
        Iterator<MediaListInfoItem> it = this.mList.iterator();
        while (it.hasNext()) {
            if (it.next().mInfoType == i) {
                return true;
            }
        }
        return false;
    }

    public void updateListSize(int i, long j) {
        if (this.mSpannable == null) {
            this.mSpannable = new SpannableStringBuilder();
        } else {
            this.mSpannable.clear();
        }
        for (MediaListInfoItem mediaListInfoItem : this.mList) {
            String str = null;
            switch (mediaListInfoItem.mInfoType) {
                case 1:
                    str = "" + i;
                    break;
                case 2:
                    str = "" + j;
                    break;
                case 3:
                    str = "" + (i + j);
                    break;
                case 4:
                    break;
                case 5:
                    str = i + this.mSelectedSizeMiddleContent + FileUtil.fileSize(j, 2);
                    break;
                default:
                    Log.e(TAG, "updateListSize: error info type");
                    break;
            }
            if (str != null) {
                int length = this.mSpannable.length();
                if (mediaListInfoItem.mStartContent != null) {
                    str = mediaListInfoItem.mStartContent + str;
                }
                if (mediaListInfoItem.mEndContent != null) {
                    str = str + mediaListInfoItem.mEndContent;
                }
                SpannableStringBuilder spannableStringBuilder = this.mSpannable;
                if (mediaListInfoItem.mLineFeed) {
                    str = "\n" + str;
                }
                spannableStringBuilder.append((CharSequence) str);
                int length2 = this.mSpannable.length();
                this.mSpannable.setSpan(mediaListInfoItem.mColorSpan, length, length2, 33);
                this.mSpannable.setSpan(mediaListInfoItem.mAbsoluteSizeSpan, length, length2, 33);
            }
        }
        setText(this.mSpannable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes3.dex */
    public class MediaListInfoItem {
        private AbsoluteSizeSpan mAbsoluteSizeSpan;
        private ForegroundColorSpan mColorSpan;
        private String mEndContent;
        private final int mInfoType;
        private boolean mLineFeed;
        private String mStartContent;
        private int position;

        private MediaListInfoItem(int i) {
            this.mInfoType = i;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setColorSpan(int i) {
            this.mColorSpan = new ForegroundColorSpan(i);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setAbsoluteSizeSpan(int i) {
            this.mAbsoluteSizeSpan = new AbsoluteSizeSpan(i);
        }
    }
}
