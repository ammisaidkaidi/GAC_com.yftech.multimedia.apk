package com.android.internal.policy;

import android.os.RemoteException;
import com.android.internal.policy.IKeyguardDismissCallback;

/* loaded from: /home/user/work/dex/classes3.dex */
public class KeyguardDismissCallback extends IKeyguardDismissCallback.Stub {
    @Override // com.android.internal.policy.IKeyguardDismissCallback
    public void onDismissCancelled() throws RemoteException {
    }

    @Override // com.android.internal.policy.IKeyguardDismissCallback
    public void onDismissError() throws RemoteException {
    }

    @Override // com.android.internal.policy.IKeyguardDismissCallback
    public void onDismissSucceeded() throws RemoteException {
    }
}
