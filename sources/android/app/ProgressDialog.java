package android.app;

import android.content.Context;
import android.content.DialogInterface;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.text.SpannableString;
import android.text.style.StyleSpan;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.android.internal.R;
import java.text.NumberFormat;

@Deprecated
/* loaded from: /home/user/work/dex/classes.dex */
public class ProgressDialog extends AlertDialog {
    public static final int STYLE_HORIZONTAL = 1;
    public static final int STYLE_SPINNER = 0;
    private boolean mHasStarted;
    private int mIncrementBy;
    private int mIncrementSecondaryBy;
    private boolean mIndeterminate;
    private Drawable mIndeterminateDrawable;
    private int mMax;
    private CharSequence mMessage;
    private TextView mMessageView;
    private ProgressBar mProgress;
    private Drawable mProgressDrawable;
    private TextView mProgressNumber;
    private String mProgressNumberFormat;
    private TextView mProgressPercent;
    private NumberFormat mProgressPercentFormat;
    private int mProgressStyle;
    private int mProgressVal;
    private int mSecondaryProgressVal;
    private Handler mViewUpdateHandler;

    public ProgressDialog(Context context) {
        super(context);
        this.mProgressStyle = 0;
        initFormats();
    }

    public ProgressDialog(Context context, int i) {
        super(context, i);
        this.mProgressStyle = 0;
        initFormats();
    }

    private void initFormats() {
        this.mProgressNumberFormat = "%1d/%2d";
        this.mProgressPercentFormat = NumberFormat.getPercentInstance();
        this.mProgressPercentFormat.setMaximumFractionDigits(0);
    }

    public static ProgressDialog show(Context context, CharSequence charSequence, CharSequence charSequence2) {
        return show(context, charSequence, charSequence2, false);
    }

    public static ProgressDialog show(Context context, CharSequence charSequence, CharSequence charSequence2, boolean z) {
        return show(context, charSequence, charSequence2, z, false, null);
    }

    public static ProgressDialog show(Context context, CharSequence charSequence, CharSequence charSequence2, boolean z, boolean z2) {
        return show(context, charSequence, charSequence2, z, z2, null);
    }

    public static ProgressDialog show(Context context, CharSequence charSequence, CharSequence charSequence2, boolean z, boolean z2, DialogInterface.OnCancelListener onCancelListener) {
        ProgressDialog progressDialog = new ProgressDialog(context);
        progressDialog.setTitle(charSequence);
        progressDialog.setMessage(charSequence2);
        progressDialog.setIndeterminate(z);
        progressDialog.setCancelable(z2);
        progressDialog.setOnCancelListener(onCancelListener);
        progressDialog.show();
        return progressDialog;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.AlertDialog, android.app.Dialog
    public void onCreate(Bundle bundle) {
        LayoutInflater from = LayoutInflater.from(this.mContext);
        TypedArray obtainStyledAttributes = this.mContext.obtainStyledAttributes(null, R.styleable.AlertDialog, android.R.attr.alertDialogStyle, 0);
        if (this.mProgressStyle == 1) {
            this.mViewUpdateHandler = new Handler() { // from class: android.app.ProgressDialog.1
                @Override // android.os.Handler
                public void handleMessage(Message message) {
                    super.handleMessage(message);
                    int progress = ProgressDialog.this.mProgress.getProgress();
                    int max = ProgressDialog.this.mProgress.getMax();
                    if (ProgressDialog.this.mProgressNumberFormat != null) {
                        ProgressDialog.this.mProgressNumber.setText(String.format(ProgressDialog.this.mProgressNumberFormat, Integer.valueOf(progress), Integer.valueOf(max)));
                    } else {
                        ProgressDialog.this.mProgressNumber.setText("");
                    }
                    if (ProgressDialog.this.mProgressPercentFormat == null) {
                        ProgressDialog.this.mProgressPercent.setText("");
                        return;
                    }
                    SpannableString spannableString = new SpannableString(ProgressDialog.this.mProgressPercentFormat.format(progress / max));
                    spannableString.setSpan(new StyleSpan(1), 0, spannableString.length(), 33);
                    ProgressDialog.this.mProgressPercent.setText(spannableString);
                }
            };
            View inflate = from.inflate(obtainStyledAttributes.getResourceId(13, 17367086), (ViewGroup) null);
            this.mProgress = (ProgressBar) inflate.findViewById(android.R.id.progress);
            this.mProgressNumber = (TextView) inflate.findViewById(16909207);
            this.mProgressPercent = (TextView) inflate.findViewById(16909208);
            setView(inflate);
        } else {
            View inflate2 = from.inflate(obtainStyledAttributes.getResourceId(18, 17367242), (ViewGroup) null);
            this.mProgress = (ProgressBar) inflate2.findViewById(android.R.id.progress);
            this.mMessageView = (TextView) inflate2.findViewById(android.R.id.message);
            setView(inflate2);
        }
        obtainStyledAttributes.recycle();
        if (this.mMax > 0) {
            setMax(this.mMax);
        }
        if (this.mProgressVal > 0) {
            setProgress(this.mProgressVal);
        }
        if (this.mSecondaryProgressVal > 0) {
            setSecondaryProgress(this.mSecondaryProgressVal);
        }
        if (this.mIncrementBy > 0) {
            incrementProgressBy(this.mIncrementBy);
        }
        if (this.mIncrementSecondaryBy > 0) {
            incrementSecondaryProgressBy(this.mIncrementSecondaryBy);
        }
        if (this.mProgressDrawable != null) {
            setProgressDrawable(this.mProgressDrawable);
        }
        if (this.mIndeterminateDrawable != null) {
            setIndeterminateDrawable(this.mIndeterminateDrawable);
        }
        if (this.mMessage != null) {
            setMessage(this.mMessage);
        }
        setIndeterminate(this.mIndeterminate);
        onProgressChanged();
        super.onCreate(bundle);
    }

    @Override // android.app.Dialog
    public void onStart() {
        super.onStart();
        this.mHasStarted = true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.Dialog
    public void onStop() {
        super.onStop();
        this.mHasStarted = false;
    }

    public void setProgress(int i) {
        if (this.mHasStarted) {
            this.mProgress.setProgress(i);
            onProgressChanged();
        } else {
            this.mProgressVal = i;
        }
    }

    public void setSecondaryProgress(int i) {
        if (this.mProgress != null) {
            this.mProgress.setSecondaryProgress(i);
            onProgressChanged();
        } else {
            this.mSecondaryProgressVal = i;
        }
    }

    public int getProgress() {
        if (this.mProgress != null) {
            return this.mProgress.getProgress();
        }
        return this.mProgressVal;
    }

    public int getSecondaryProgress() {
        if (this.mProgress != null) {
            return this.mProgress.getSecondaryProgress();
        }
        return this.mSecondaryProgressVal;
    }

    public int getMax() {
        if (this.mProgress != null) {
            return this.mProgress.getMax();
        }
        return this.mMax;
    }

    public void setMax(int i) {
        if (this.mProgress != null) {
            this.mProgress.setMax(i);
            onProgressChanged();
        } else {
            this.mMax = i;
        }
    }

    public void incrementProgressBy(int i) {
        if (this.mProgress != null) {
            this.mProgress.incrementProgressBy(i);
            onProgressChanged();
        } else {
            this.mIncrementBy += i;
        }
    }

    public void incrementSecondaryProgressBy(int i) {
        if (this.mProgress != null) {
            this.mProgress.incrementSecondaryProgressBy(i);
            onProgressChanged();
        } else {
            this.mIncrementSecondaryBy += i;
        }
    }

    public void setProgressDrawable(Drawable drawable) {
        if (this.mProgress != null) {
            this.mProgress.setProgressDrawable(drawable);
        } else {
            this.mProgressDrawable = drawable;
        }
    }

    public void setIndeterminateDrawable(Drawable drawable) {
        if (this.mProgress != null) {
            this.mProgress.setIndeterminateDrawable(drawable);
        } else {
            this.mIndeterminateDrawable = drawable;
        }
    }

    public void setIndeterminate(boolean z) {
        if (this.mProgress != null) {
            this.mProgress.setIndeterminate(z);
        } else {
            this.mIndeterminate = z;
        }
    }

    public boolean isIndeterminate() {
        if (this.mProgress != null) {
            return this.mProgress.isIndeterminate();
        }
        return this.mIndeterminate;
    }

    @Override // android.app.AlertDialog
    public void setMessage(CharSequence charSequence) {
        if (this.mProgress != null) {
            if (this.mProgressStyle == 1) {
                super.setMessage(charSequence);
                return;
            } else {
                this.mMessageView.setText(charSequence);
                return;
            }
        }
        this.mMessage = charSequence;
    }

    public void setProgressStyle(int i) {
        this.mProgressStyle = i;
    }

    public void setProgressNumberFormat(String str) {
        this.mProgressNumberFormat = str;
        onProgressChanged();
    }

    public void setProgressPercentFormat(NumberFormat numberFormat) {
        this.mProgressPercentFormat = numberFormat;
        onProgressChanged();
    }

    private void onProgressChanged() {
        if (this.mProgressStyle != 1 || this.mViewUpdateHandler == null || this.mViewUpdateHandler.hasMessages(0)) {
            return;
        }
        this.mViewUpdateHandler.sendEmptyMessage(0);
    }
}
