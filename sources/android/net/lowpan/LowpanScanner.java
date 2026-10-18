package android.net.lowpan;

import android.net.lowpan.ILowpanEnergyScanCallback;
import android.net.lowpan.ILowpanNetScanCallback;
import android.net.lowpan.LowpanScanner;
import android.os.Handler;
import android.os.RemoteException;
import android.os.ServiceSpecificException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.function.ToIntFunction;

/* loaded from: /home/user/work/dex/classes.dex */
public class LowpanScanner {
    private static final String TAG = "LowpanScanner";
    private ILowpanInterface mBinder;
    private Callback mCallback = null;
    private Handler mHandler = null;
    private ArrayList<Integer> mChannelMask = null;
    private int mTxPower = Integer.MAX_VALUE;

    /* loaded from: /home/user/work/dex/classes.dex */
    public static abstract class Callback {
        public void onEnergyScanResult(LowpanEnergyScanResult lowpanEnergyScanResult) {
        }

        public void onNetScanBeacon(LowpanBeaconInfo lowpanBeaconInfo) {
        }

        public void onScanFinished() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public LowpanScanner(ILowpanInterface iLowpanInterface) {
        this.mBinder = iLowpanInterface;
    }

    public synchronized void setCallback(Callback callback, Handler handler) {
        this.mCallback = callback;
        this.mHandler = handler;
    }

    public void setCallback(Callback callback) {
        setCallback(callback, null);
    }

    public void setChannelMask(Collection<Integer> collection) {
        if (collection == null) {
            this.mChannelMask = null;
            return;
        }
        if (this.mChannelMask == null) {
            this.mChannelMask = new ArrayList<>();
        } else {
            this.mChannelMask.clear();
        }
        this.mChannelMask.addAll(collection);
    }

    public Collection<Integer> getChannelMask() {
        return (Collection) this.mChannelMask.clone();
    }

    public void addChannel(int i) {
        if (this.mChannelMask == null) {
            this.mChannelMask = new ArrayList<>();
        }
        this.mChannelMask.add(Integer.valueOf(i));
    }

    public void setTxPower(int i) {
        this.mTxPower = i;
    }

    public int getTxPower() {
        return this.mTxPower;
    }

    private Map<String, Object> createScanOptionMap() {
        HashMap hashMap = new HashMap();
        if (this.mChannelMask != null) {
            LowpanProperties.KEY_CHANNEL_MASK.putInMap(hashMap, this.mChannelMask.stream().mapToInt(new ToIntFunction() { // from class: android.net.lowpan.-$$Lambda$LowpanScanner$b0nnjTe02JXonssLsm5Kp4EaFqs
                @Override // java.util.function.ToIntFunction
                public final int applyAsInt(Object obj) {
                    int intValue;
                    intValue = ((Integer) obj).intValue();
                    return intValue;
                }
            }).toArray());
        }
        if (this.mTxPower != Integer.MAX_VALUE) {
            LowpanProperties.KEY_MAX_TX_POWER.putInMap(hashMap, Integer.valueOf(this.mTxPower));
        }
        return hashMap;
    }

    public void startNetScan() throws LowpanException {
        try {
            this.mBinder.startNetScan(createScanOptionMap(), new AnonymousClass1());
        } catch (ServiceSpecificException e) {
            throw LowpanException.rethrowFromServiceSpecificException(e);
        } catch (RemoteException e2) {
            throw e2.rethrowAsRuntimeException();
        }
    }

    /* renamed from: android.net.lowpan.LowpanScanner$1, reason: invalid class name */
    /* loaded from: /home/user/work/dex/classes.dex */
    class AnonymousClass1 extends ILowpanNetScanCallback.Stub {
        AnonymousClass1() {
        }

        @Override // android.net.lowpan.ILowpanNetScanCallback
        public void onNetScanBeacon(final LowpanBeaconInfo lowpanBeaconInfo) {
            final Callback callback;
            Handler handler;
            synchronized (LowpanScanner.this) {
                callback = LowpanScanner.this.mCallback;
                handler = LowpanScanner.this.mHandler;
            }
            if (callback == null) {
                return;
            }
            Runnable runnable = new Runnable() { // from class: android.net.lowpan.-$$Lambda$LowpanScanner$1$47buDsybUOrvvSl0JOZR_FC9ISg
                @Override // java.lang.Runnable
                public final void run() {
                    LowpanScanner.Callback.this.onNetScanBeacon(lowpanBeaconInfo);
                }
            };
            if (handler != null) {
                handler.post(runnable);
            } else {
                runnable.run();
            }
        }

        @Override // android.net.lowpan.ILowpanNetScanCallback
        public void onNetScanFinished() {
            final Callback callback;
            Handler handler;
            synchronized (LowpanScanner.this) {
                callback = LowpanScanner.this.mCallback;
                handler = LowpanScanner.this.mHandler;
            }
            if (callback == null) {
                return;
            }
            Runnable runnable = new Runnable() { // from class: android.net.lowpan.-$$Lambda$LowpanScanner$1$lUw1npYnRpaO9LS5odGyASQYaic
                @Override // java.lang.Runnable
                public final void run() {
                    LowpanScanner.Callback.this.onScanFinished();
                }
            };
            if (handler != null) {
                handler.post(runnable);
            } else {
                runnable.run();
            }
        }
    }

    public void stopNetScan() {
        try {
            this.mBinder.stopNetScan();
        } catch (RemoteException e) {
            throw e.rethrowAsRuntimeException();
        }
    }

    public void startEnergyScan() throws LowpanException {
        try {
            this.mBinder.startEnergyScan(createScanOptionMap(), new AnonymousClass2());
        } catch (ServiceSpecificException e) {
            throw LowpanException.rethrowFromServiceSpecificException(e);
        } catch (RemoteException e2) {
            throw e2.rethrowAsRuntimeException();
        }
    }

    /* renamed from: android.net.lowpan.LowpanScanner$2, reason: invalid class name */
    /* loaded from: /home/user/work/dex/classes.dex */
    class AnonymousClass2 extends ILowpanEnergyScanCallback.Stub {
        AnonymousClass2() {
        }

        @Override // android.net.lowpan.ILowpanEnergyScanCallback
        public void onEnergyScanResult(final int i, final int i2) {
            final Callback callback = LowpanScanner.this.mCallback;
            Handler handler = LowpanScanner.this.mHandler;
            if (callback == null) {
                return;
            }
            Runnable runnable = new Runnable() { // from class: android.net.lowpan.-$$Lambda$LowpanScanner$2$GBDCgjndr24KQueHMX2qGNtfLPg
                @Override // java.lang.Runnable
                public final void run() {
                    LowpanScanner.AnonymousClass2.lambda$onEnergyScanResult$0(LowpanScanner.Callback.this, i, i2);
                }
            };
            if (handler != null) {
                handler.post(runnable);
            } else {
                runnable.run();
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static /* synthetic */ void lambda$onEnergyScanResult$0(Callback callback, int i, int i2) {
            if (callback != null) {
                LowpanEnergyScanResult lowpanEnergyScanResult = new LowpanEnergyScanResult();
                lowpanEnergyScanResult.setChannel(i);
                lowpanEnergyScanResult.setMaxRssi(i2);
                callback.onEnergyScanResult(lowpanEnergyScanResult);
            }
        }

        @Override // android.net.lowpan.ILowpanEnergyScanCallback
        public void onEnergyScanFinished() {
            final Callback callback = LowpanScanner.this.mCallback;
            Handler handler = LowpanScanner.this.mHandler;
            if (callback == null) {
                return;
            }
            Runnable runnable = new Runnable() { // from class: android.net.lowpan.-$$Lambda$LowpanScanner$2$n8MSb22N9MEsazioSumvyQhW3Z4
                @Override // java.lang.Runnable
                public final void run() {
                    LowpanScanner.Callback.this.onScanFinished();
                }
            };
            if (handler != null) {
                handler.post(runnable);
            } else {
                runnable.run();
            }
        }
    }

    public void stopEnergyScan() {
        try {
            this.mBinder.stopEnergyScan();
        } catch (RemoteException e) {
            throw e.rethrowAsRuntimeException();
        }
    }
}
