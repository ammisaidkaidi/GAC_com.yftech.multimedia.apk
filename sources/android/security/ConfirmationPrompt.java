package android.security;

import android.content.ContentResolver;
import android.content.Context;
import android.os.IBinder;
import android.os.RemoteException;
import android.provider.Settings;
import android.security.IConfirmationPromptCallback;
import android.text.TextUtils;
import android.util.Log;
import java.util.Locale;
import java.util.concurrent.Executor;

/* loaded from: /home/user/work/dex/classes2.dex */
public class ConfirmationPrompt {
    private static final String TAG = "ConfirmationPrompt";
    private static final int UI_OPTION_ACCESSIBILITY_INVERTED_FLAG = 1;
    private static final int UI_OPTION_ACCESSIBILITY_MAGNIFIED_FLAG = 2;
    private ConfirmationCallback mCallback;
    private final IBinder mCallbackBinder;
    private Context mContext;
    private Executor mExecutor;
    private byte[] mExtraData;
    private final KeyStore mKeyStore;
    private CharSequence mPromptText;

    /* JADX INFO: Access modifiers changed from: private */
    public void doCallback(int i, byte[] bArr, ConfirmationCallback confirmationCallback) {
        if (i != 5) {
            switch (i) {
                case 0:
                    confirmationCallback.onConfirmed(bArr);
                    return;
                case 1:
                    confirmationCallback.onDismissed();
                    return;
                case 2:
                    confirmationCallback.onCanceled();
                    return;
                default:
                    confirmationCallback.onError(new Exception("Unexpected responseCode=" + i + " from onConfirmtionPromptCompleted() callback."));
                    return;
            }
        }
        confirmationCallback.onError(new Exception("System error returned by ConfirmationUI."));
    }

    /* loaded from: /home/user/work/dex/classes2.dex */
    public static final class Builder {
        private Context mContext;
        private byte[] mExtraData;
        private CharSequence mPromptText;

        public Builder(Context context) {
            this.mContext = context;
        }

        public Builder setPromptText(CharSequence charSequence) {
            this.mPromptText = charSequence;
            return this;
        }

        public Builder setExtraData(byte[] bArr) {
            this.mExtraData = bArr;
            return this;
        }

        public ConfirmationPrompt build() {
            if (TextUtils.isEmpty(this.mPromptText)) {
                throw new IllegalArgumentException("prompt text must be set and non-empty");
            }
            if (this.mExtraData == null) {
                throw new IllegalArgumentException("extraData must be set");
            }
            return new ConfirmationPrompt(this.mContext, this.mPromptText, this.mExtraData);
        }
    }

    private ConfirmationPrompt(Context context, CharSequence charSequence, byte[] bArr) {
        this.mKeyStore = KeyStore.getInstance();
        this.mCallbackBinder = new IConfirmationPromptCallback.Stub() { // from class: android.security.ConfirmationPrompt.1
            @Override // android.security.IConfirmationPromptCallback
            public void onConfirmationPromptCompleted(final int i, final byte[] bArr2) throws RemoteException {
                if (ConfirmationPrompt.this.mCallback != null) {
                    final ConfirmationCallback confirmationCallback = ConfirmationPrompt.this.mCallback;
                    Executor executor = ConfirmationPrompt.this.mExecutor;
                    ConfirmationPrompt.this.mCallback = null;
                    ConfirmationPrompt.this.mExecutor = null;
                    if (executor == null) {
                        ConfirmationPrompt.this.doCallback(i, bArr2, confirmationCallback);
                    } else {
                        executor.execute(new Runnable() { // from class: android.security.ConfirmationPrompt.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                ConfirmationPrompt.this.doCallback(i, bArr2, confirmationCallback);
                            }
                        });
                    }
                }
            }
        };
        this.mContext = context;
        this.mPromptText = charSequence;
        this.mExtraData = bArr;
    }

    private int getUiOptionsAsFlags() {
        try {
            ContentResolver contentResolver = this.mContext.getContentResolver();
            r0 = Settings.Secure.getInt(contentResolver, Settings.Secure.ACCESSIBILITY_DISPLAY_INVERSION_ENABLED) == 1 ? 1 : 0;
            return ((double) Settings.System.getFloat(contentResolver, Settings.System.FONT_SCALE)) > 1.0d ? r0 | 2 : r0;
        } catch (Settings.SettingNotFoundException unused) {
            Log.w(TAG, "Unexpected SettingNotFoundException");
            return r0;
        }
    }

    private static boolean isAccessibilityServiceRunning(Context context) {
        try {
            return Settings.Secure.getInt(context.getContentResolver(), Settings.Secure.ACCESSIBILITY_ENABLED) == 1;
        } catch (Settings.SettingNotFoundException e) {
            Log.w(TAG, "Unexpected SettingNotFoundException");
            e.printStackTrace();
            return false;
        }
    }

    public void presentPrompt(Executor executor, ConfirmationCallback confirmationCallback) throws ConfirmationAlreadyPresentingException, ConfirmationNotAvailableException {
        if (this.mCallback != null) {
            throw new ConfirmationAlreadyPresentingException();
        }
        if (isAccessibilityServiceRunning(this.mContext)) {
            throw new ConfirmationNotAvailableException();
        }
        this.mCallback = confirmationCallback;
        this.mExecutor = executor;
        int presentConfirmationPrompt = this.mKeyStore.presentConfirmationPrompt(this.mCallbackBinder, this.mPromptText.toString(), this.mExtraData, Locale.getDefault().toLanguageTag(), getUiOptionsAsFlags());
        if (presentConfirmationPrompt != 0) {
            if (presentConfirmationPrompt == 3) {
                throw new ConfirmationAlreadyPresentingException();
            }
            if (presentConfirmationPrompt == 6) {
                throw new ConfirmationNotAvailableException();
            }
            if (presentConfirmationPrompt == 65536) {
                throw new IllegalArgumentException();
            }
            Log.w(TAG, "Unexpected responseCode=" + presentConfirmationPrompt + " from presentConfirmationPrompt() call.");
            throw new IllegalArgumentException();
        }
    }

    public void cancelPrompt() {
        int cancelConfirmationPrompt = this.mKeyStore.cancelConfirmationPrompt(this.mCallbackBinder);
        if (cancelConfirmationPrompt == 0) {
            return;
        }
        if (cancelConfirmationPrompt == 3) {
            throw new IllegalStateException();
        }
        Log.w(TAG, "Unexpected responseCode=" + cancelConfirmationPrompt + " from cancelConfirmationPrompt() call.");
        throw new IllegalStateException();
    }

    public static boolean isSupported(Context context) {
        if (isAccessibilityServiceRunning(context)) {
            return false;
        }
        return KeyStore.getInstance().isConfirmationPromptSupported();
    }
}
