package com.yftech.car.widget.media.text;

import android.content.Context;
import android.content.res.TypedArray;
import android.text.SpannableStringBuilder;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.ForegroundColorSpan;
import android.util.AttributeSet;
import android.util.Log;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatTextView;
import com.yftech.car.media.data.entity.MediaFolder;
import com.yftech.car.widget.media.R;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

/* loaded from: /home/user/work/dex/classes3.dex */
public class MediaFolderTextView extends AppCompatTextView {
    private static final int FOLDER_NAME = 2;
    private static final int FOLDER_PATH = 3;
    private static final int LIST_SIZE = 4;
    private static final int NUMBER = 1;
    private static final String TAG = "MediaFolderTextView";
    private String mFolderAlbumTextUnknown;
    private String mFolderArtistTextUnknown;
    private String mFolderGenreTextUnknown;
    private final List<MediaFolderInfoItem> mList;
    private MediaFolder mMediaFolder;
    private SpannableStringBuilder mSpannable;

    public MediaFolderTextView(Context context) {
        super(context);
        this.mList = new ArrayList();
    }

    public MediaFolderTextView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mList = new ArrayList();
        init(context, attributeSet);
    }

    public MediaFolderTextView(Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mList = new ArrayList();
        init(context, attributeSet);
    }

    private void init(Context context, AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.MediaFolderTextView);
        int defaultColor = getTextColors().getDefaultColor();
        int textSize = (int) getTextSize();
        this.mList.clear();
        int i = obtainStyledAttributes.getInt(R.styleable.MediaFolderTextView_folder_number_position, -1);
        if (i != -1) {
            MediaFolderInfoItem mediaFolderInfoItem = new MediaFolderInfoItem(1);
            mediaFolderInfoItem.position = i;
            mediaFolderInfoItem.setColorSpan(obtainStyledAttributes.getColor(R.styleable.MediaFolderTextView_folder_number_text_color, defaultColor));
            mediaFolderInfoItem.setAbsoluteSizeSpan(obtainStyledAttributes.getDimensionPixelSize(R.styleable.MediaFolderTextView_folder_number_text_size, textSize));
            mediaFolderInfoItem.mLineFeed = obtainStyledAttributes.getBoolean(R.styleable.MediaFolderTextView_folder_number_line_feed, false);
            mediaFolderInfoItem.mStartContent = obtainStyledAttributes.getString(R.styleable.MediaFolderTextView_folder_number_start_content);
            mediaFolderInfoItem.mEndContent = obtainStyledAttributes.getString(R.styleable.MediaFolderTextView_folder_number_end_content);
            this.mList.add(mediaFolderInfoItem);
        }
        int i2 = obtainStyledAttributes.getInt(R.styleable.MediaFolderTextView_folder_name_position, -1);
        if (i2 != -1) {
            MediaFolderInfoItem mediaFolderInfoItem2 = new MediaFolderInfoItem(2);
            mediaFolderInfoItem2.position = i2;
            mediaFolderInfoItem2.setColorSpan(obtainStyledAttributes.getColor(R.styleable.MediaFolderTextView_folder_name_text_color, defaultColor));
            mediaFolderInfoItem2.setAbsoluteSizeSpan(obtainStyledAttributes.getDimensionPixelSize(R.styleable.MediaFolderTextView_folder_name_text_size, textSize));
            mediaFolderInfoItem2.mLineFeed = obtainStyledAttributes.getBoolean(R.styleable.MediaFolderTextView_folder_name_line_feed, false);
            mediaFolderInfoItem2.mStartContent = obtainStyledAttributes.getString(R.styleable.MediaFolderTextView_folder_name_start_content);
            mediaFolderInfoItem2.mEndContent = obtainStyledAttributes.getString(R.styleable.MediaFolderTextView_folder_name_end_content);
            this.mList.add(mediaFolderInfoItem2);
        }
        int i3 = obtainStyledAttributes.getInt(R.styleable.MediaFolderTextView_folder_path_position, -1);
        if (i3 != -1) {
            MediaFolderInfoItem mediaFolderInfoItem3 = new MediaFolderInfoItem(3);
            mediaFolderInfoItem3.position = i3;
            mediaFolderInfoItem3.setColorSpan(obtainStyledAttributes.getColor(R.styleable.MediaFolderTextView_folder_path_text_color, defaultColor));
            mediaFolderInfoItem3.setAbsoluteSizeSpan(obtainStyledAttributes.getDimensionPixelSize(R.styleable.MediaFolderTextView_folder_path_text_size, textSize));
            mediaFolderInfoItem3.mLineFeed = obtainStyledAttributes.getBoolean(R.styleable.MediaFolderTextView_folder_path_line_feed, false);
            mediaFolderInfoItem3.mStartContent = obtainStyledAttributes.getString(R.styleable.MediaFolderTextView_folder_path_start_content);
            mediaFolderInfoItem3.mEndContent = obtainStyledAttributes.getString(R.styleable.MediaFolderTextView_folder_path_end_content);
            this.mList.add(mediaFolderInfoItem3);
        }
        int i4 = obtainStyledAttributes.getInt(R.styleable.MediaFolderTextView_folder_list_size_position, -1);
        if (i4 != -1) {
            MediaFolderInfoItem mediaFolderInfoItem4 = new MediaFolderInfoItem(4);
            mediaFolderInfoItem4.position = i4;
            mediaFolderInfoItem4.setColorSpan(obtainStyledAttributes.getColor(R.styleable.MediaFolderTextView_folder_list_size_text_color, defaultColor));
            mediaFolderInfoItem4.setAbsoluteSizeSpan(obtainStyledAttributes.getDimensionPixelSize(R.styleable.MediaFolderTextView_folder_list_size_text_size, textSize));
            mediaFolderInfoItem4.mLineFeed = obtainStyledAttributes.getBoolean(R.styleable.MediaFolderTextView_folder_list_size_line_feed, false);
            mediaFolderInfoItem4.mStartContent = obtainStyledAttributes.getString(R.styleable.MediaFolderTextView_folder_list_size_start_content);
            mediaFolderInfoItem4.mEndContent = obtainStyledAttributes.getString(R.styleable.MediaFolderTextView_folder_list_size_end_content);
            this.mList.add(mediaFolderInfoItem4);
        }
        this.mFolderArtistTextUnknown = obtainStyledAttributes.getString(R.styleable.MediaFolderTextView_folder_artist_text_unknown);
        this.mFolderAlbumTextUnknown = obtainStyledAttributes.getString(R.styleable.MediaFolderTextView_folder_album_text_unknown);
        this.mFolderGenreTextUnknown = obtainStyledAttributes.getString(R.styleable.MediaFolderTextView_folder_genre_text_unknown);
        Collections.sort(this.mList, new Comparator<MediaFolderInfoItem>() { // from class: com.yftech.car.widget.media.text.MediaFolderTextView.1
            @Override // java.util.Comparator
            public int compare(MediaFolderInfoItem mediaFolderInfoItem5, MediaFolderInfoItem mediaFolderInfoItem6) {
                return mediaFolderInfoItem5.position - mediaFolderInfoItem6.position;
            }
        });
    }

    public boolean isMediaFileInfo() {
        return this.mSpannable == null || this.mSpannable.length() > 0;
    }

    public MediaFolder getMediaFolder() {
        return this.mMediaFolder;
    }

    public void updateFolder(MediaFolder mediaFolder) {
        updateFolder(mediaFolder, 0);
    }

    public void updateFolder(MediaFolder mediaFolder, int i) {
        this.mMediaFolder = mediaFolder;
        if (mediaFolder != null) {
            if (this.mSpannable == null) {
                this.mSpannable = new SpannableStringBuilder();
            } else {
                this.mSpannable.clear();
            }
            for (MediaFolderInfoItem mediaFolderInfoItem : this.mList) {
                String str = null;
                switch (mediaFolderInfoItem.mInfoType) {
                    case 1:
                        str = (i + 1) + "";
                        break;
                    case 2:
                        str = getMediaFolderInfo(mediaFolder.getFolder(), mediaFolder.getType());
                        break;
                    case 3:
                        str = mediaFolder.getFolderPath();
                        break;
                    case 4:
                        List data = mediaFolder.getData();
                        str = (data != null ? data.size() : 0) + "";
                        break;
                    default:
                        Log.e(TAG, "updateMediaFile: error info type");
                        break;
                }
                int length = this.mSpannable.length();
                if (str == null) {
                    str = "";
                }
                if (mediaFolderInfoItem.mStartContent != null) {
                    str = mediaFolderInfoItem.mStartContent + str;
                }
                if (mediaFolderInfoItem.mEndContent != null) {
                    str = str + mediaFolderInfoItem.mEndContent;
                }
                SpannableStringBuilder spannableStringBuilder = this.mSpannable;
                if (mediaFolderInfoItem.mLineFeed) {
                    str = "\n" + str;
                }
                spannableStringBuilder.append((CharSequence) str);
                int length2 = this.mSpannable.length();
                this.mSpannable.setSpan(mediaFolderInfoItem.mColorSpan, length, length2, 33);
                this.mSpannable.setSpan(mediaFolderInfoItem.mAbsoluteSizeSpan, length, length2, 33);
            }
            if (this.mSpannable.length() > 0) {
                setText(this.mSpannable);
                return;
            }
            return;
        }
        Log.e(TAG, "updateMediaFile: file is null");
    }

    private String getMediaFolderInfo(String str, int i) {
        if (str != null && !"<unknown>".equals(str)) {
            return str;
        }
        switch (i) {
            case 1:
                return this.mFolderArtistTextUnknown != null ? this.mFolderArtistTextUnknown : str;
            case 2:
                return this.mFolderArtistTextUnknown != null ? this.mFolderAlbumTextUnknown : str;
            case 3:
                return this.mFolderArtistTextUnknown != null ? this.mFolderGenreTextUnknown : str;
            default:
                return str;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes3.dex */
    public class MediaFolderInfoItem {
        private AbsoluteSizeSpan mAbsoluteSizeSpan;
        private ForegroundColorSpan mColorSpan;
        private String mEndContent;
        private final int mInfoType;
        private boolean mLineFeed;
        private String mPattern;
        private String mStartContent;
        private int position;

        private MediaFolderInfoItem(int i) {
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
