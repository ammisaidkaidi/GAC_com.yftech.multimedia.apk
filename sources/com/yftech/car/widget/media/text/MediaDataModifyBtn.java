package com.yftech.car.widget.media.text;

import android.content.Context;
import android.content.res.TypedArray;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Size;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatTextView;
import com.yftech.car.media.data.entity.MediaFile;
import com.yftech.car.widget.media.R;
import com.yftech.car.widget.media.dialog.ConfirmDialog;
import java.util.List;

/* loaded from: /home/user/work/dex/classes3.dex */
public class MediaDataModifyBtn extends AppCompatTextView {
    public static final int ALL_SELECTED = 3;
    public static final int CANCEL_SELECTED = 6;
    public static final int CLOSE_CHECK_BOX = 5;
    public static final int COLLECT = 1;
    public static final int DELETE = 0;
    public static final int OPEN_CHECK_BOX = 4;
    public static final int SAVE = 2;
    private static final String TAG = "MediaDataModifyBtn";
    private final int mClickModify;
    private ConfirmDialog mConfirmDialog;
    private final boolean mDialogCancelable;
    private final int mDialogFlags;
    private final int mDialogThemeResId;
    private final Size mDialogWidthHeight;
    private long mFileSize;
    private View.OnClickListener mMediaDataModifyBtnClick;
    private final int mModifyClickDialogLayoutId;
    private final int mModifyMediaDataListId;
    private final View.OnClickListener mOnClickListener;
    private final ConfirmDialog.OnConfirmDialogListener mOnConfirmDialogListener;
    private OnMediaDataChangeListener mOnMediaDataChangeListener;
    private String mSaveFilePath;
    private int mSelectedSize;

    /* loaded from: /home/user/work/dex/classes3.dex */
    public interface OnMediaDataChangeListener {
        void onBatchOperation(int i, List<MediaFile> list);
    }

    public MediaDataModifyBtn(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 16842884);
    }

    public MediaDataModifyBtn(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mOnClickListener = new View.OnClickListener() { // from class: com.yftech.car.widget.media.text.MediaDataModifyBtn.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (MediaDataModifyBtn.this.mModifyClickDialogLayoutId != -1) {
                    if (MediaDataModifyBtn.this.mConfirmDialog == null) {
                        MediaDataModifyBtn.this.mConfirmDialog = new ConfirmDialog(MediaDataModifyBtn.this.getContext(), MediaDataModifyBtn.this.mDialogThemeResId, MediaDataModifyBtn.this.mModifyClickDialogLayoutId);
                        MediaDataModifyBtn.this.mConfirmDialog.setOnConfirmDialogListener(MediaDataModifyBtn.this.mOnConfirmDialogListener);
                    }
                    MediaDataModifyBtn.this.mConfirmDialog.show(MediaDataModifyBtn.this.mDialogFlags, MediaDataModifyBtn.this.mSelectedSize, MediaDataModifyBtn.this.mFileSize, MediaDataModifyBtn.this.mDialogWidthHeight);
                    MediaDataModifyBtn.this.mConfirmDialog.setCancelable(MediaDataModifyBtn.this.mDialogCancelable);
                    return;
                }
                Log.e(MediaDataModifyBtn.TAG, "onClick: mModifyClickDialogLayoutId == -1");
                MediaDataModifyBtn.this.mMediaDataModifyBtnClick.onClick(MediaDataModifyBtn.this);
            }
        };
        this.mOnConfirmDialogListener = new ConfirmDialog.OnConfirmDialogListener() { // from class: com.yftech.car.widget.media.text.MediaDataModifyBtn.2
            public void onConfirm(boolean z) {
                if (!z || MediaDataModifyBtn.this.mMediaDataModifyBtnClick == null) {
                    return;
                }
                MediaDataModifyBtn.this.mMediaDataModifyBtnClick.onClick(MediaDataModifyBtn.this);
            }
        };
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.MediaDataModifyBtn);
            this.mClickModify = obtainStyledAttributes.getInt(R.styleable.MediaDataModifyBtn_click_modify, -1);
            this.mSaveFilePath = obtainStyledAttributes.getString(R.styleable.MediaDataModifyBtn_save_file_path);
            this.mModifyMediaDataListId = obtainStyledAttributes.getResourceId(R.styleable.MediaDataModifyBtn_modify_media_data_list_id, -1);
            TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, R.styleable.Dialog);
            this.mDialogFlags = obtainStyledAttributes2.getInt(R.styleable.Dialog_dialog_flags, 0);
            this.mModifyClickDialogLayoutId = obtainStyledAttributes2.getResourceId(R.styleable.Dialog_dialog_layout_id, -1);
            this.mDialogThemeResId = obtainStyledAttributes2.getResourceId(R.styleable.Dialog_dialog_themeResId, 0);
            this.mDialogCancelable = obtainStyledAttributes2.getBoolean(R.styleable.Dialog_dialog_cancelable, true);
            this.mDialogWidthHeight = new Size((int) obtainStyledAttributes2.getDimension(R.styleable.Dialog_dialog_width, -2.0f), (int) obtainStyledAttributes2.getDimension(R.styleable.Dialog_dialog_height, -2.0f));
        } else {
            this.mDialogFlags = 0;
            this.mDialogThemeResId = 0;
            this.mDialogCancelable = true;
            this.mDialogWidthHeight = null;
            this.mClickModify = -1;
            this.mModifyClickDialogLayoutId = -1;
            this.mModifyMediaDataListId = -1;
        }
        if (TextUtils.isEmpty(this.mSaveFilePath)) {
            this.mSaveFilePath = "/sdcard/Download/";
        } else if (this.mSaveFilePath.charAt(this.mSaveFilePath.length() - 1) != '/') {
            this.mSaveFilePath += "/";
        }
    }

    public String getSaveFilePath() {
        return this.mSaveFilePath;
    }

    public int getModifyMediaDataListId() {
        return this.mModifyMediaDataListId;
    }

    public int getModifyClickDialogLayoutId() {
        return this.mModifyClickDialogLayoutId;
    }

    public int getClickModify() {
        return this.mClickModify;
    }

    public boolean isClickModify(int i) {
        return this.mClickModify == i;
    }

    public void setSelectedSize(int i) {
        this.mSelectedSize = i;
    }

    public void setFileSize(long j) {
        this.mFileSize = j;
    }

    public void setOnMediaDataChangeListener(OnMediaDataChangeListener onMediaDataChangeListener) {
        this.mOnMediaDataChangeListener = onMediaDataChangeListener;
    }

    public void notifyDeleteList(List<MediaFile> list) {
        if (this.mOnMediaDataChangeListener != null) {
            this.mOnMediaDataChangeListener.onBatchOperation(0, list);
        }
    }

    public void setOnClickListener(@Nullable View.OnClickListener onClickListener) {
        if (this.mClickModify != -1) {
            super.setOnClickListener(this.mOnClickListener);
            this.mMediaDataModifyBtnClick = onClickListener;
        }
    }
}
