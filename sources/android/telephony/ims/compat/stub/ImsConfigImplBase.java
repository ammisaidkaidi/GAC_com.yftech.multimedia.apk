package android.telephony.ims.compat.stub;

import android.content.Context;
import android.content.Intent;
import android.os.RemoteException;
import android.util.Log;
import com.android.ims.ImsConfigListener;
import com.android.ims.internal.IImsConfig;
import com.android.internal.annotations.VisibleForTesting;
import java.lang.ref.WeakReference;
import java.util.HashMap;

/* loaded from: /home/user/work/dex/classes2.dex */
public class ImsConfigImplBase {
    private static final String TAG = "ImsConfigImplBase";
    ImsConfigStub mImsConfigStub;

    public void getFeatureValue(int i, int i2, ImsConfigListener imsConfigListener) throws RemoteException {
    }

    public String getProvisionedStringValue(int i) throws RemoteException {
        return null;
    }

    public int getProvisionedValue(int i) throws RemoteException {
        return -1;
    }

    public void getVideoQuality(ImsConfigListener imsConfigListener) throws RemoteException {
    }

    public boolean getVolteProvisioned() throws RemoteException {
        return false;
    }

    public void setFeatureValue(int i, int i2, int i3, ImsConfigListener imsConfigListener) throws RemoteException {
    }

    public int setProvisionedStringValue(int i, String str) throws RemoteException {
        return 1;
    }

    public int setProvisionedValue(int i, int i2) throws RemoteException {
        return 1;
    }

    public void setVideoQuality(int i, ImsConfigListener imsConfigListener) throws RemoteException {
    }

    public ImsConfigImplBase(Context context) {
        this.mImsConfigStub = new ImsConfigStub(this, context);
    }

    public IImsConfig getIImsConfig() {
        return this.mImsConfigStub;
    }

    public final void notifyProvisionedValueChanged(int i, int i2) {
        this.mImsConfigStub.updateCachedValue(i, i2, true);
    }

    public final void notifyProvisionedValueChanged(int i, String str) {
        this.mImsConfigStub.updateCachedValue(i, str, true);
    }

    @VisibleForTesting
    /* loaded from: /home/user/work/dex/classes2.dex */
    public static class ImsConfigStub extends IImsConfig.Stub {
        Context mContext;
        WeakReference<ImsConfigImplBase> mImsConfigImplBaseWeakReference;
        private HashMap<Integer, Integer> mProvisionedIntValue = new HashMap<>();
        private HashMap<Integer, String> mProvisionedStringValue = new HashMap<>();

        @VisibleForTesting
        public ImsConfigStub(ImsConfigImplBase imsConfigImplBase, Context context) {
            this.mContext = context;
            this.mImsConfigImplBaseWeakReference = new WeakReference<>(imsConfigImplBase);
        }

        public synchronized int getProvisionedValue(int i) throws RemoteException {
            if (this.mProvisionedIntValue.containsKey(Integer.valueOf(i))) {
                return this.mProvisionedIntValue.get(Integer.valueOf(i)).intValue();
            }
            int provisionedValue = getImsConfigImpl().getProvisionedValue(i);
            if (provisionedValue != -1) {
                updateCachedValue(i, provisionedValue, false);
            }
            return provisionedValue;
        }

        public synchronized String getProvisionedStringValue(int i) throws RemoteException {
            if (this.mProvisionedIntValue.containsKey(Integer.valueOf(i))) {
                return this.mProvisionedStringValue.get(Integer.valueOf(i));
            }
            String provisionedStringValue = getImsConfigImpl().getProvisionedStringValue(i);
            if (provisionedStringValue != null) {
                updateCachedValue(i, provisionedStringValue, false);
            }
            return provisionedStringValue;
        }

        public synchronized int setProvisionedValue(int i, int i2) throws RemoteException {
            int provisionedValue;
            this.mProvisionedIntValue.remove(Integer.valueOf(i));
            provisionedValue = getImsConfigImpl().setProvisionedValue(i, i2);
            if (provisionedValue == 0) {
                updateCachedValue(i, i2, true);
            } else {
                Log.d(ImsConfigImplBase.TAG, "Set provision value of " + i + " to " + i2 + " failed with error code " + provisionedValue);
            }
            return provisionedValue;
        }

        public synchronized int setProvisionedStringValue(int i, String str) throws RemoteException {
            int provisionedStringValue;
            this.mProvisionedStringValue.remove(Integer.valueOf(i));
            provisionedStringValue = getImsConfigImpl().setProvisionedStringValue(i, str);
            if (provisionedStringValue == 0) {
                updateCachedValue(i, str, true);
            }
            return provisionedStringValue;
        }

        public void getFeatureValue(int i, int i2, ImsConfigListener imsConfigListener) throws RemoteException {
            getImsConfigImpl().getFeatureValue(i, i2, imsConfigListener);
        }

        public void setFeatureValue(int i, int i2, int i3, ImsConfigListener imsConfigListener) throws RemoteException {
            getImsConfigImpl().setFeatureValue(i, i2, i3, imsConfigListener);
        }

        public boolean getVolteProvisioned() throws RemoteException {
            return getImsConfigImpl().getVolteProvisioned();
        }

        public void getVideoQuality(ImsConfigListener imsConfigListener) throws RemoteException {
            getImsConfigImpl().getVideoQuality(imsConfigListener);
        }

        public void setVideoQuality(int i, ImsConfigListener imsConfigListener) throws RemoteException {
            getImsConfigImpl().setVideoQuality(i, imsConfigListener);
        }

        private ImsConfigImplBase getImsConfigImpl() throws RemoteException {
            ImsConfigImplBase imsConfigImplBase = this.mImsConfigImplBaseWeakReference.get();
            if (imsConfigImplBase != null) {
                return imsConfigImplBase;
            }
            throw new RemoteException("Fail to get ImsConfigImpl");
        }

        private void sendImsConfigChangedIntent(int i, int i2) {
            sendImsConfigChangedIntent(i, Integer.toString(i2));
        }

        private void sendImsConfigChangedIntent(int i, String str) {
            Intent intent = new Intent("com.android.intent.action.IMS_CONFIG_CHANGED");
            intent.putExtra("item", i);
            intent.putExtra("value", str);
            if (this.mContext != null) {
                this.mContext.sendBroadcast(intent);
            }
        }

        protected synchronized void updateCachedValue(int i, int i2, boolean z) {
            this.mProvisionedIntValue.put(Integer.valueOf(i), Integer.valueOf(i2));
            if (z) {
                sendImsConfigChangedIntent(i, i2);
            }
        }

        protected synchronized void updateCachedValue(int i, String str, boolean z) {
            this.mProvisionedStringValue.put(Integer.valueOf(i), str);
            if (z) {
                sendImsConfigChangedIntent(i, str);
            }
        }
    }
}
