package android.widget;

import android.os.Handler;

/* loaded from: /home/user/work/dex/classes2.dex */
class DoubleDigitManager {
    private Integer intermediateDigit;
    private final CallBack mCallBack;
    private final long timeoutInMillis;

    /* loaded from: /home/user/work/dex/classes2.dex */
    interface CallBack {
        void singleDigitFinal(int i);

        boolean singleDigitIntermediate(int i);

        boolean twoDigitsFinal(int i, int i2);
    }

    public DoubleDigitManager(long j, CallBack callBack) {
        this.timeoutInMillis = j;
        this.mCallBack = callBack;
    }

    public void reportDigit(int i) {
        if (this.intermediateDigit == null) {
            this.intermediateDigit = Integer.valueOf(i);
            new Handler().postDelayed(new Runnable() { // from class: android.widget.DoubleDigitManager.1
                @Override // java.lang.Runnable
                public void run() {
                    if (DoubleDigitManager.this.intermediateDigit != null) {
                        DoubleDigitManager.this.mCallBack.singleDigitFinal(DoubleDigitManager.this.intermediateDigit.intValue());
                        DoubleDigitManager.this.intermediateDigit = null;
                    }
                }
            }, this.timeoutInMillis);
            if (this.mCallBack.singleDigitIntermediate(i)) {
                return;
            }
            this.intermediateDigit = null;
            this.mCallBack.singleDigitFinal(i);
            return;
        }
        if (this.mCallBack.twoDigitsFinal(this.intermediateDigit.intValue(), i)) {
            this.intermediateDigit = null;
        }
    }
}
