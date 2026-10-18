package android.service.autofill;

import android.content.IntentSender;
import android.os.RemoteException;
import com.android.internal.util.Preconditions;

/* loaded from: /home/user/work/dex/classes2.dex */
public final class SaveCallback {
    private final ISaveCallback mCallback;
    private boolean mCalled;

    /* JADX INFO: Access modifiers changed from: package-private */
    public SaveCallback(ISaveCallback iSaveCallback) {
        this.mCallback = iSaveCallback;
    }

    public void onSuccess() {
        onSuccessInternal(null);
    }

    public void onSuccess(IntentSender intentSender) {
        onSuccessInternal((IntentSender) Preconditions.checkNotNull(intentSender));
    }

    private void onSuccessInternal(IntentSender intentSender) {
        assertNotCalled();
        this.mCalled = true;
        try {
            this.mCallback.onSuccess(intentSender);
        } catch (RemoteException e) {
            e.rethrowAsRuntimeException();
        }
    }

    public void onFailure(CharSequence charSequence) {
        assertNotCalled();
        this.mCalled = true;
        try {
            this.mCallback.onFailure(charSequence);
        } catch (RemoteException e) {
            e.rethrowAsRuntimeException();
        }
    }

    private void assertNotCalled() {
        if (this.mCalled) {
            throw new IllegalStateException("Already called");
        }
    }
}
