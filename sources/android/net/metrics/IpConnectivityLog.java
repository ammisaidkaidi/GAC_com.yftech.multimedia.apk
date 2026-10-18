package android.net.metrics;

import android.net.ConnectivityMetricsEvent;
import android.net.IIpConnectivityMetrics;
import android.os.Parcelable;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.util.Log;
import com.android.internal.annotations.VisibleForTesting;
import com.android.internal.util.BitUtils;

/* loaded from: /home/user/work/dex/classes.dex */
public class IpConnectivityLog {
    private static final boolean DBG = false;
    public static final String SERVICE_NAME = "connmetrics";
    private static final String TAG = "IpConnectivityLog";
    private IIpConnectivityMetrics mService;

    public IpConnectivityLog() {
    }

    @VisibleForTesting
    public IpConnectivityLog(IIpConnectivityMetrics iIpConnectivityMetrics) {
        this.mService = iIpConnectivityMetrics;
    }

    private boolean checkLoggerService() {
        if (this.mService != null) {
            return true;
        }
        IIpConnectivityMetrics asInterface = IIpConnectivityMetrics.Stub.asInterface(ServiceManager.getService(SERVICE_NAME));
        if (asInterface == null) {
            return false;
        }
        this.mService = asInterface;
        return true;
    }

    public boolean log(ConnectivityMetricsEvent connectivityMetricsEvent) {
        if (!checkLoggerService()) {
            return false;
        }
        if (connectivityMetricsEvent.timestamp == 0) {
            connectivityMetricsEvent.timestamp = System.currentTimeMillis();
        }
        try {
            return this.mService.logEvent(connectivityMetricsEvent) >= 0;
        } catch (RemoteException e) {
            Log.e(TAG, "Error logging event", e);
            return false;
        }
    }

    public boolean log(long j, Parcelable parcelable) {
        ConnectivityMetricsEvent makeEv = makeEv(parcelable);
        makeEv.timestamp = j;
        return log(makeEv);
    }

    public boolean log(String str, Parcelable parcelable) {
        ConnectivityMetricsEvent makeEv = makeEv(parcelable);
        makeEv.ifname = str;
        return log(makeEv);
    }

    public boolean log(int i, int[] iArr, Parcelable parcelable) {
        ConnectivityMetricsEvent makeEv = makeEv(parcelable);
        makeEv.netId = i;
        makeEv.transports = BitUtils.packBits(iArr);
        return log(makeEv);
    }

    public boolean log(Parcelable parcelable) {
        return log(makeEv(parcelable));
    }

    private static ConnectivityMetricsEvent makeEv(Parcelable parcelable) {
        ConnectivityMetricsEvent connectivityMetricsEvent = new ConnectivityMetricsEvent();
        connectivityMetricsEvent.data = parcelable;
        return connectivityMetricsEvent;
    }
}
