package android.telecom;

import android.app.Service;
import android.content.Intent;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.telecom.Call;
import com.android.internal.os.SomeArgs;
import com.android.internal.telecom.ICallScreeningAdapter;
import com.android.internal.telecom.ICallScreeningService;

/* loaded from: /home/user/work/dex/classes2.dex */
public abstract class CallScreeningService extends Service {
    private static final int MSG_SCREEN_CALL = 1;
    public static final String SERVICE_INTERFACE = "android.telecom.CallScreeningService";
    private ICallScreeningAdapter mCallScreeningAdapter;
    private final Handler mHandler = new Handler(Looper.getMainLooper()) { // from class: android.telecom.CallScreeningService.1
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (message.what != 1) {
                return;
            }
            SomeArgs someArgs = (SomeArgs) message.obj;
            try {
                CallScreeningService.this.mCallScreeningAdapter = (ICallScreeningAdapter) someArgs.arg1;
                CallScreeningService.this.onScreenCall(Call.Details.createFromParcelableCall((ParcelableCall) someArgs.arg2));
            } finally {
                someArgs.recycle();
            }
        }
    };

    public abstract void onScreenCall(Call.Details details);

    /* loaded from: /home/user/work/dex/classes2.dex */
    private final class CallScreeningBinder extends ICallScreeningService.Stub {
        private CallScreeningBinder() {
        }

        public void screenCall(ICallScreeningAdapter iCallScreeningAdapter, ParcelableCall parcelableCall) {
            Log.v(this, "screenCall", new Object[0]);
            SomeArgs obtain = SomeArgs.obtain();
            obtain.arg1 = iCallScreeningAdapter;
            obtain.arg2 = parcelableCall;
            CallScreeningService.this.mHandler.obtainMessage(1, obtain).sendToTarget();
        }
    }

    /* loaded from: /home/user/work/dex/classes2.dex */
    public static class CallResponse {
        private final boolean mShouldDisallowCall;
        private final boolean mShouldRejectCall;
        private final boolean mShouldSkipCallLog;
        private final boolean mShouldSkipNotification;

        private CallResponse(boolean z, boolean z2, boolean z3, boolean z4) {
            if (!z && (z2 || z3 || z4)) {
                throw new IllegalStateException("Invalid response state for allowed call.");
            }
            this.mShouldDisallowCall = z;
            this.mShouldRejectCall = z2;
            this.mShouldSkipCallLog = z3;
            this.mShouldSkipNotification = z4;
        }

        public boolean getDisallowCall() {
            return this.mShouldDisallowCall;
        }

        public boolean getRejectCall() {
            return this.mShouldRejectCall;
        }

        public boolean getSkipCallLog() {
            return this.mShouldSkipCallLog;
        }

        public boolean getSkipNotification() {
            return this.mShouldSkipNotification;
        }

        /* loaded from: /home/user/work/dex/classes2.dex */
        public static class Builder {
            private boolean mShouldDisallowCall;
            private boolean mShouldRejectCall;
            private boolean mShouldSkipCallLog;
            private boolean mShouldSkipNotification;

            public Builder setDisallowCall(boolean z) {
                this.mShouldDisallowCall = z;
                return this;
            }

            public Builder setRejectCall(boolean z) {
                this.mShouldRejectCall = z;
                return this;
            }

            public Builder setSkipCallLog(boolean z) {
                this.mShouldSkipCallLog = z;
                return this;
            }

            public Builder setSkipNotification(boolean z) {
                this.mShouldSkipNotification = z;
                return this;
            }

            public CallResponse build() {
                return new CallResponse(this.mShouldDisallowCall, this.mShouldRejectCall, this.mShouldSkipCallLog, this.mShouldSkipNotification);
            }
        }
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        Log.v(this, "onBind", new Object[0]);
        return new CallScreeningBinder();
    }

    @Override // android.app.Service
    public boolean onUnbind(Intent intent) {
        Log.v(this, "onUnbind", new Object[0]);
        return false;
    }

    public final void respondToCall(Call.Details details, CallResponse callResponse) {
        try {
            if (callResponse.getDisallowCall()) {
                this.mCallScreeningAdapter.disallowCall(details.getTelecomCallId(), callResponse.getRejectCall(), !callResponse.getSkipCallLog(), !callResponse.getSkipNotification());
            } else {
                this.mCallScreeningAdapter.allowCall(details.getTelecomCallId());
            }
        } catch (RemoteException unused) {
        }
    }
}
