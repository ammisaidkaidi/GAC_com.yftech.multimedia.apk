package com.yftech.car.widget.media.list.holder;

import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.yftech.car.media.data.entity.MediaFile;
import com.yftech.car.widget.media.text.DateTextView;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.LinkedList;

/* loaded from: /home/user/work/dex/classes3.dex */
public class MediaDateFileHolder extends BaseFileHolder {
    public static final int DATA = -10;
    public static final int DATE = -11;
    private static final String TAG = "MediaFileHolder";
    private Date mDate;
    private String mPattern;
    private SimpleDateFormat mSimpleDateFormat;
    private DateTextView mTextView;
    private SimpleDateFormat mThisYearSimpleDateFormat;
    private SimpleDateFormat mYearSimpleDateFormat;

    /* JADX WARN: Multi-variable type inference failed */
    public MediaDateFileHolder(View view, boolean z) {
        super(view);
        if (z) {
            if (view instanceof ViewGroup) {
                LinkedList linkedList = new LinkedList();
                linkedList.add((ViewGroup) view);
                while (!linkedList.isEmpty()) {
                    ViewGroup viewGroup = (ViewGroup) linkedList.removeFirst();
                    int i = 0;
                    while (true) {
                        if (i < viewGroup.getChildCount()) {
                            Object childAt = viewGroup.getChildAt(i);
                            if (childAt instanceof ViewGroup) {
                                linkedList.add((ViewGroup) childAt);
                            } else if (childAt instanceof DateTextView) {
                                this.mTextView = (DateTextView) childAt;
                                break;
                            }
                            i++;
                        }
                    }
                }
            } else if (view instanceof TextView) {
                this.mTextView = (DateTextView) view;
            }
            if (this.mTextView != null) {
                this.mPattern = this.mTextView.getFormatPattern();
            }
            if (this.mPattern == null) {
                this.mPattern = "yyyy.MM.dd-HH:mm:ss";
            }
        }
    }

    @Override // com.yftech.car.widget.media.list.holder.BaseFileHolder
    public void setDateTime(MediaFile mediaFile) {
        if (this.mTextView != null) {
            long currentTimeMillis = System.currentTimeMillis();
            int i = (int) ((((currentTimeMillis / 1000.0d) / 60.0d) / 60.0d) / 24.0d);
            int lastModified = (int) ((((mediaFile.getLastModified() / 1000.0d) / 60.0d) / 60.0d) / 24.0d);
            if (lastModified == i) {
                if (TextUtils.isEmpty(this.mTextView.getToday())) {
                    this.mTextView.setText("今天");
                    return;
                } else {
                    this.mTextView.setText(this.mTextView.getToday());
                    return;
                }
            }
            if (lastModified == i - 1) {
                if (TextUtils.isEmpty(this.mTextView.getYesterday())) {
                    this.mTextView.setText("昨天");
                    return;
                } else {
                    this.mTextView.setText(this.mTextView.getYesterday());
                    return;
                }
            }
            if (this.mSimpleDateFormat == null) {
                this.mSimpleDateFormat = new SimpleDateFormat(this.mPattern);
            }
            if (this.mYearSimpleDateFormat == null) {
                this.mYearSimpleDateFormat = new SimpleDateFormat("yyyy");
            }
            if (this.mDate == null) {
                this.mDate = new Date();
            }
            if (TextUtils.isEmpty(this.mTextView.getThisYearPattern())) {
                this.mDate.setTime(mediaFile.getLastModified());
                this.mTextView.setText(this.mSimpleDateFormat.format(this.mDate));
                return;
            }
            this.mDate.setTime(mediaFile.getLastModified());
            String format = this.mYearSimpleDateFormat.format(this.mDate);
            String format2 = this.mSimpleDateFormat.format(this.mDate);
            this.mDate.setTime(currentTimeMillis);
            if (this.mYearSimpleDateFormat.format(this.mDate).equals(format)) {
                if (this.mThisYearSimpleDateFormat == null) {
                    this.mThisYearSimpleDateFormat = new SimpleDateFormat(this.mTextView.getThisYearPattern());
                }
                this.mDate.setTime(mediaFile.getLastModified());
                this.mTextView.setText(this.mThisYearSimpleDateFormat.format(this.mDate));
                return;
            }
            this.mTextView.setText(format2);
        }
    }
}
