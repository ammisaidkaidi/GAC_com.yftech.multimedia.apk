package android.webkit;

import android.R;
import android.annotation.SystemApi;
import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Message;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.TextView;
import java.net.MalformedURLException;
import java.net.URL;

@SystemApi
/* loaded from: /home/user/work/dex/classes2.dex */
public class JsDialogHelper {
    public static final int ALERT = 1;
    public static final int CONFIRM = 2;
    public static final int PROMPT = 3;
    private static final String TAG = "JsDialogHelper";
    public static final int UNLOAD = 4;
    private final String mDefaultValue;
    private final String mMessage;
    private final JsPromptResult mResult;
    private final int mType;
    private final String mUrl;

    public JsDialogHelper(JsPromptResult jsPromptResult, int i, String str, String str2, String str3) {
        this.mResult = jsPromptResult;
        this.mDefaultValue = str;
        this.mMessage = str2;
        this.mType = i;
        this.mUrl = str3;
    }

    public JsDialogHelper(JsPromptResult jsPromptResult, Message message) {
        this.mResult = jsPromptResult;
        this.mDefaultValue = message.getData().getString("default");
        this.mMessage = message.getData().getString("message");
        this.mType = message.getData().getInt("type");
        this.mUrl = message.getData().getString("url");
    }

    public boolean invokeCallback(WebChromeClient webChromeClient, WebView webView) {
        switch (this.mType) {
            case 1:
                return webChromeClient.onJsAlert(webView, this.mUrl, this.mMessage, this.mResult);
            case 2:
                return webChromeClient.onJsConfirm(webView, this.mUrl, this.mMessage, this.mResult);
            case 3:
                return webChromeClient.onJsPrompt(webView, this.mUrl, this.mMessage, this.mDefaultValue, this.mResult);
            case 4:
                return webChromeClient.onJsBeforeUnload(webView, this.mUrl, this.mMessage, this.mResult);
            default:
                throw new IllegalArgumentException("Unexpected type: " + this.mType);
        }
    }

    public void showDialog(Context context) {
        String jsDialogTitle;
        String str;
        int i;
        int i2;
        if (!canShowAlertDialog(context)) {
            Log.w(TAG, "Cannot create a dialog, the WebView context is not an Activity");
            this.mResult.cancel();
            return;
        }
        if (this.mType == 4) {
            jsDialogTitle = context.getString(R.string.default_wallpaper_component);
            str = context.getString(R.string.default_browser, this.mMessage);
            i = R.string.default_sms_application;
            i2 = R.string.default_notification_channel_label;
        } else {
            jsDialogTitle = getJsDialogTitle(context);
            str = this.mMessage;
            i = R.string.ok;
            i2 = R.string.cancel;
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(context);
        builder.setTitle(jsDialogTitle);
        builder.setOnCancelListener(new CancelListener());
        if (this.mType != 3) {
            builder.setMessage(str);
            builder.setPositiveButton(i, new PositiveListener(null));
        } else {
            View inflate = LayoutInflater.from(context).inflate(R.layout.floating_popup_overflow_button, (ViewGroup) null);
            EditText editText = (EditText) inflate.findViewById(R.id.sub_number);
            editText.setText(this.mDefaultValue);
            builder.setPositiveButton(i, new PositiveListener(editText));
            ((TextView) inflate.findViewById(R.id.message)).setText(this.mMessage);
            builder.setView(inflate);
        }
        if (this.mType != 1) {
            builder.setNegativeButton(i2, new CancelListener());
        }
        builder.show();
    }

    /* loaded from: /home/user/work/dex/classes2.dex */
    private class CancelListener implements DialogInterface.OnCancelListener, DialogInterface.OnClickListener {
        private CancelListener() {
        }

        @Override // android.content.DialogInterface.OnCancelListener
        public void onCancel(DialogInterface dialogInterface) {
            JsDialogHelper.this.mResult.cancel();
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            JsDialogHelper.this.mResult.cancel();
        }
    }

    /* loaded from: /home/user/work/dex/classes2.dex */
    private class PositiveListener implements DialogInterface.OnClickListener {
        private final EditText mEdit;

        public PositiveListener(EditText editText) {
            this.mEdit = editText;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            if (this.mEdit == null) {
                JsDialogHelper.this.mResult.confirm();
            } else {
                JsDialogHelper.this.mResult.confirm(this.mEdit.getText().toString());
            }
        }
    }

    private String getJsDialogTitle(Context context) {
        String str = this.mUrl;
        if (URLUtil.isDataUrl(this.mUrl)) {
            return context.getString(R.string.deleteText);
        }
        try {
            URL url = new URL(this.mUrl);
            return context.getString(R.string.delete, url.getProtocol() + "://" + url.getHost());
        } catch (MalformedURLException unused) {
            return str;
        }
    }

    private static boolean canShowAlertDialog(Context context) {
        return context instanceof Activity;
    }
}
