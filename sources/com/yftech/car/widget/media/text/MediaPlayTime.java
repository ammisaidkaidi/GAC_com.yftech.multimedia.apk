package com.yftech.car.widget.media.text;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.ForegroundColorSpan;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatTextView;
import com.yftech.car.widget.media.R;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.TimeZone;

/* loaded from: /home/user/work/dex/classes3.dex */
public class MediaPlayTime extends AppCompatTextView {
    public static final int DURATION = 2;
    private static final int HOUR = 3600000;
    private static final int MINUTE = 60000;
    public static final int PROGRESS = 1;
    private boolean isAutoCompletion;
    private String mDurationTime;
    private Drawable[] mForwardDrawable;
    private int mInitHeight;
    private final List<MediaTimeItem> mList;
    private String mPattern;
    private String mProgressTime;
    private SimpleDateFormat mSimpleDateFormat;
    private SimpleDateFormat mSimpleDateFormat2;
    private SimpleDateFormat mSimpleDateFormat3;
    private boolean mSlideForward;
    private final SpannableStringBuilder mSpannable;
    private String mVideoShowScrollBack;
    private Drawable mVideoShowScrollBackDrawable;
    private String mVideoShowScrollForward;
    private Drawable mVideoShowScrollForwardDrawable;
    private boolean mVideoShowScrollTime;
    private boolean seekBarShowScrollTime;
    private float seekBarShowTimeDistance;
    private int seekBarShowTimeId;
    private float seekBarShowTimeOffset;

    public MediaPlayTime(Context context) {
        super(context);
        this.mSpannable = new SpannableStringBuilder();
        this.mList = new ArrayList();
        this.mProgressTime = "";
        this.seekBarShowScrollTime = false;
    }

    public MediaPlayTime(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mSpannable = new SpannableStringBuilder();
        this.mList = new ArrayList();
        this.mProgressTime = "";
        this.seekBarShowScrollTime = false;
        init(context, attributeSet);
    }

    public MediaPlayTime(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mSpannable = new SpannableStringBuilder();
        this.mList = new ArrayList();
        this.mProgressTime = "";
        this.seekBarShowScrollTime = false;
        init(context, attributeSet);
    }

    private void init(Context context, AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.MediaPlayTime);
        this.isAutoCompletion = obtainStyledAttributes.getBoolean(R.styleable.MediaPlayTime_auto_completion, false);
        int defaultColor = getTextColors().getDefaultColor();
        int textSize = (int) getTextSize();
        int i = obtainStyledAttributes.getInt(R.styleable.MediaPlayTime_progress_position, -1);
        if (i != -1) {
            MediaTimeItem mediaTimeItem = new MediaTimeItem(1);
            mediaTimeItem.position = i;
            mediaTimeItem.setColorSpan(obtainStyledAttributes.getColor(R.styleable.MediaPlayTime_progress_text_color, defaultColor));
            mediaTimeItem.setAbsoluteSizeSpan(obtainStyledAttributes.getDimensionPixelSize(R.styleable.MediaPlayTime_progress_text_size, textSize));
            mediaTimeItem.mLineFeed = obtainStyledAttributes.getBoolean(R.styleable.MediaPlayTime_progress_line_feed, false);
            mediaTimeItem.mStartContent = obtainStyledAttributes.getString(R.styleable.MediaPlayTime_progress_start_content);
            mediaTimeItem.mEndContent = obtainStyledAttributes.getString(R.styleable.MediaPlayTime_progress_end_content);
            this.mList.add(mediaTimeItem);
            this.seekBarShowScrollTime = obtainStyledAttributes.getBoolean(R.styleable.MediaPlayTime_seek_bar_show_scroll_time, false);
        }
        int i2 = obtainStyledAttributes.getInt(R.styleable.MediaPlayTime_duration_position, -1);
        if (i2 != -1) {
            MediaTimeItem mediaTimeItem2 = new MediaTimeItem(2);
            mediaTimeItem2.position = i2;
            mediaTimeItem2.setColorSpan(obtainStyledAttributes.getColor(R.styleable.MediaPlayTime_duration_text_color, defaultColor));
            mediaTimeItem2.setAbsoluteSizeSpan(obtainStyledAttributes.getDimensionPixelSize(R.styleable.MediaPlayTime_duration_text_size, textSize));
            mediaTimeItem2.mLineFeed = obtainStyledAttributes.getBoolean(R.styleable.MediaPlayTime_duration_line_feed, false);
            mediaTimeItem2.mStartContent = obtainStyledAttributes.getString(R.styleable.MediaPlayTime_duration_start_content);
            mediaTimeItem2.mEndContent = obtainStyledAttributes.getString(R.styleable.MediaPlayTime_duration_end_content);
            this.mList.add(mediaTimeItem2);
        }
        this.mVideoShowScrollTime = obtainStyledAttributes.getBoolean(R.styleable.MediaPlayTime_video_show_scroll_time, false);
        this.mVideoShowScrollForwardDrawable = obtainStyledAttributes.getDrawable(R.styleable.MediaPlayTime_video_show_scroll_forward_drawable);
        this.mVideoShowScrollBackDrawable = obtainStyledAttributes.getDrawable(R.styleable.MediaPlayTime_video_show_scroll_back_drawable);
        this.mVideoShowScrollForward = obtainStyledAttributes.getString(R.styleable.MediaPlayTime_video_show_scroll_forward);
        this.mVideoShowScrollBack = obtainStyledAttributes.getString(R.styleable.MediaPlayTime_video_show_scroll_back);
        this.seekBarShowTimeDistance = obtainStyledAttributes.getDimension(R.styleable.MediaPlayTime_seek_bar_show_time_distance, 0.0f);
        this.seekBarShowTimeOffset = obtainStyledAttributes.getDimension(R.styleable.MediaPlayTime_seek_bar_show_time_offset, 0.0f);
        this.seekBarShowTimeId = obtainStyledAttributes.getResourceId(R.styleable.MediaPlayTime_seek_bar_show_time_id, -1);
        this.mPattern = obtainStyledAttributes.getString(R.styleable.MediaPlayTime_SimpleDateFormat_pattern);
        if (TextUtils.isEmpty(this.mPattern)) {
            this.mPattern = "HH:mm:ss";
        }
        this.mSimpleDateFormat = new SimpleDateFormat(this.mPattern, Locale.ENGLISH);
        this.mSimpleDateFormat.setTimeZone(TimeZone.getTimeZone("GMT+00:00"));
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
    }

    public void setInitHeight(int i) {
        this.mInitHeight = i;
    }

    public float getSeekBarShowTimeDistance() {
        return this.seekBarShowTimeDistance;
    }

    public float getSeekBarShowTimeOffset() {
        return this.seekBarShowTimeOffset;
    }

    public int getSeekBarShowTimeId() {
        return this.seekBarShowTimeId;
    }

    public boolean isSeekBarShowScrollTime() {
        return this.seekBarShowScrollTime;
    }

    public int getInitHeight() {
        return this.mInitHeight;
    }

    public Drawable[] getForwardDrawable() {
        return this.mForwardDrawable;
    }

    public void setForwardDrawable() {
        Drawable[] compoundDrawablesRelative = getCompoundDrawablesRelative();
        if (compoundDrawablesRelative == null || compoundDrawablesRelative.length <= 2) {
            return;
        }
        this.mForwardDrawable = new Drawable[2];
        this.mForwardDrawable[0] = compoundDrawablesRelative[0] != null ? compoundDrawablesRelative[0] : this.mVideoShowScrollBackDrawable;
        this.mForwardDrawable[1] = compoundDrawablesRelative[2] != null ? compoundDrawablesRelative[2] : this.mVideoShowScrollForwardDrawable;
    }

    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (this.mInitHeight == 0) {
            this.mInitHeight = getHeight();
        }
    }

    public boolean isVideoShowScrollTime() {
        return this.mVideoShowScrollTime;
    }

    public void updateSlideProgress(int i, long j, boolean z) {
        this.mSlideForward = z;
        if (this.mVideoShowScrollForwardDrawable != null && this.mVideoShowScrollBackDrawable != null) {
            setBackground(z ? this.mVideoShowScrollForwardDrawable : this.mVideoShowScrollBackDrawable);
        } else {
            Drawable[] forwardDrawable = getForwardDrawable();
            if (forwardDrawable != null) {
                if (z) {
                    setCompoundDrawablesRelativeWithIntrinsicBounds(null, null, forwardDrawable[1], null);
                } else {
                    setCompoundDrawablesRelativeWithIntrinsicBounds(forwardDrawable[0], null, null, null);
                }
            }
        }
        updateProgress(i);
        updateDuration(j);
    }

    public void updateProgress(long j) {
        int length;
        int length2;
        for (MediaTimeItem mediaTimeItem : this.mList) {
            if (mediaTimeItem.mTimeType == 1) {
                this.mSpannable.clear();
                this.mProgressTime = getPlayTime(j, mediaTimeItem);
                MediaTimeItem mediaTimeItem2 = null;
                Iterator<MediaTimeItem> it = this.mList.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    MediaTimeItem next = it.next();
                    if (next.mTimeType == 2) {
                        mediaTimeItem2 = next;
                        break;
                    }
                }
                if (mediaTimeItem2 == null) {
                    length = this.mSpannable.length();
                    this.mSpannable.append((CharSequence) this.mProgressTime);
                    length2 = this.mSpannable.length();
                } else if (mediaTimeItem2.position > mediaTimeItem.position) {
                    length = this.mSpannable.length();
                    this.mSpannable.append((CharSequence) this.mProgressTime);
                    length2 = this.mSpannable.length();
                    this.mSpannable.append((CharSequence) this.mDurationTime);
                } else {
                    this.mSpannable.append((CharSequence) this.mDurationTime);
                    length = this.mSpannable.length();
                    this.mSpannable.append((CharSequence) this.mProgressTime);
                    length2 = this.mSpannable.length();
                }
                this.mSpannable.setSpan(mediaTimeItem.mColorSpan, length, length2, 33);
                this.mSpannable.setSpan(mediaTimeItem.mAbsoluteSizeSpan, length, length2, 33);
                setText(this.mSpannable);
                return;
            }
        }
    }

    public long getProgress() {
        for (MediaTimeItem mediaTimeItem : this.mList) {
            if (mediaTimeItem.mTimeType == 1) {
                return mediaTimeItem.mDate.getTime();
            }
        }
        return 0L;
    }

    public long getDuration() {
        for (MediaTimeItem mediaTimeItem : this.mList) {
            if (mediaTimeItem.mTimeType == 2) {
                return mediaTimeItem.mDate.getTime();
            }
        }
        return 0L;
    }

    public void updateOnConfigurationChanged(Configuration configuration) {
        this.mSimpleDateFormat = new SimpleDateFormat(this.mPattern, Locale.ENGLISH);
        this.mSimpleDateFormat.setTimeZone(TimeZone.getTimeZone("GMT+00:00"));
        this.mSimpleDateFormat2 = null;
        this.mSimpleDateFormat3 = null;
    }

    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        System.err.println("onConfigurationChanged##");
        updateOnConfigurationChanged(configuration);
    }

    private String getPlayTime(long j, MediaTimeItem mediaTimeItem) {
        String format;
        mediaTimeItem.mDate.setTime(j);
        if (!this.isAutoCompletion) {
            format = this.mSimpleDateFormat.format(mediaTimeItem.mDate);
        } else if (j < 60000) {
            format = this.mSimpleDateFormat.format(mediaTimeItem.mDate);
        } else if (j < 3600000) {
            if (!this.mPattern.contains("m")) {
                if (this.mSimpleDateFormat2 == null) {
                    this.mSimpleDateFormat2 = new SimpleDateFormat("mm:ss", Locale.ENGLISH);
                    this.mSimpleDateFormat2.setTimeZone(TimeZone.getTimeZone("GMT+00:00"));
                }
                format = this.mSimpleDateFormat2.format(mediaTimeItem.mDate);
            } else {
                format = this.mSimpleDateFormat.format(mediaTimeItem.mDate);
            }
        } else if (!this.mPattern.contains("H")) {
            if (this.mSimpleDateFormat3 == null) {
                if (this.mPattern.contains("mm")) {
                    this.mSimpleDateFormat3 = new SimpleDateFormat("HH:mm:ss", Locale.ENGLISH);
                } else {
                    this.mSimpleDateFormat3 = new SimpleDateFormat("H:mm:ss", Locale.ENGLISH);
                }
                this.mSimpleDateFormat3.setTimeZone(TimeZone.getTimeZone("GMT+00:00"));
            }
            format = this.mSimpleDateFormat3.format(mediaTimeItem.mDate);
        } else {
            format = this.mSimpleDateFormat.format(mediaTimeItem.mDate);
        }
        if (mediaTimeItem.mTimeType == 1 && this.mVideoShowScrollTime && !this.seekBarShowScrollTime) {
            if (this.mSlideForward) {
                if (this.mVideoShowScrollForward != null) {
                    mediaTimeItem.mStartContent = this.mVideoShowScrollForward;
                }
            } else if (this.mVideoShowScrollBack != null) {
                mediaTimeItem.mStartContent = this.mVideoShowScrollBack;
            }
        }
        if (!TextUtils.isEmpty(mediaTimeItem.mStartContent)) {
            format = mediaTimeItem.mStartContent + format;
        }
        if (!TextUtils.isEmpty(mediaTimeItem.mEndContent)) {
            format = format + mediaTimeItem.mEndContent;
        }
        if (!mediaTimeItem.mLineFeed) {
            return format;
        }
        return "\n" + format;
    }

    public void updateDuration(long j) {
        int length;
        int length2;
        for (MediaTimeItem mediaTimeItem : this.mList) {
            if (mediaTimeItem.mTimeType == 2) {
                this.mSpannable.clear();
                this.mDurationTime = getPlayTime(j, mediaTimeItem);
                MediaTimeItem mediaTimeItem2 = null;
                Iterator<MediaTimeItem> it = this.mList.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    MediaTimeItem next = it.next();
                    if (next.mTimeType == 1) {
                        mediaTimeItem2 = next;
                        break;
                    }
                }
                if (mediaTimeItem2 == null) {
                    length = this.mSpannable.length();
                    this.mSpannable.append((CharSequence) this.mDurationTime);
                    length2 = this.mSpannable.length();
                } else if (mediaTimeItem2.position > mediaTimeItem.position) {
                    length = this.mSpannable.length();
                    this.mSpannable.append((CharSequence) this.mDurationTime);
                    length2 = this.mSpannable.length();
                    this.mSpannable.append((CharSequence) this.mProgressTime);
                } else {
                    this.mSpannable.append((CharSequence) this.mProgressTime);
                    length = this.mSpannable.length();
                    this.mSpannable.append((CharSequence) this.mDurationTime);
                    length2 = this.mSpannable.length();
                }
                this.mSpannable.setSpan(mediaTimeItem.mColorSpan, length, length2, 33);
                this.mSpannable.setSpan(mediaTimeItem.mAbsoluteSizeSpan, length, length2, 33);
                setText(this.mSpannable);
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes3.dex */
    public class MediaTimeItem {
        private AbsoluteSizeSpan mAbsoluteSizeSpan;
        private ForegroundColorSpan mColorSpan;
        private final Date mDate;
        private String mEndContent;
        private boolean mLineFeed;
        private String mStartContent;
        private final int mTimeType;
        private int position;

        private MediaTimeItem(int i) {
            this.mDate = new Date();
            this.mTimeType = i;
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
