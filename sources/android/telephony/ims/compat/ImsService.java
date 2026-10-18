package android.telephony.ims.compat;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import android.os.RemoteException;
import android.telephony.ims.compat.feature.ImsFeature;
import android.telephony.ims.compat.feature.MMTelFeature;
import android.telephony.ims.compat.feature.RcsFeature;
import android.util.Log;
import android.util.SparseArray;
import com.android.ims.internal.IImsFeatureStatusCallback;
import com.android.ims.internal.IImsMMTelFeature;
import com.android.ims.internal.IImsRcsFeature;
import com.android.ims.internal.IImsServiceController;
import com.android.internal.annotations.VisibleForTesting;

/* loaded from: /home/user/work/dex/classes2.dex */
public class ImsService extends Service {
    private static final String LOG_TAG = "ImsService(Compat)";
    public static final String SERVICE_INTERFACE = "android.telephony.ims.compat.ImsService";
    private final SparseArray<SparseArray<ImsFeature>> mFeaturesBySlot = new SparseArray<>();
    protected final IBinder mImsServiceController = new IImsServiceController.Stub() { // from class: android.telephony.ims.compat.ImsService.1
        public IImsMMTelFeature createEmergencyMMTelFeature(int i, IImsFeatureStatusCallback iImsFeatureStatusCallback) {
            return ImsService.this.createEmergencyMMTelFeatureInternal(i, iImsFeatureStatusCallback);
        }

        public IImsMMTelFeature createMMTelFeature(int i, IImsFeatureStatusCallback iImsFeatureStatusCallback) {
            return ImsService.this.createMMTelFeatureInternal(i, iImsFeatureStatusCallback);
        }

        public IImsRcsFeature createRcsFeature(int i, IImsFeatureStatusCallback iImsFeatureStatusCallback) {
            return ImsService.this.createRcsFeatureInternal(i, iImsFeatureStatusCallback);
        }

        public void removeImsFeature(int i, int i2, IImsFeatureStatusCallback iImsFeatureStatusCallback) throws RemoteException {
            ImsService.this.removeImsFeature(i, i2, iImsFeatureStatusCallback);
        }
    };

    public MMTelFeature onCreateEmergencyMMTelImsFeature(int i) {
        return null;
    }

    public MMTelFeature onCreateMMTelImsFeature(int i) {
        return null;
    }

    public RcsFeature onCreateRcsFeature(int i) {
        return null;
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        if (!SERVICE_INTERFACE.equals(intent.getAction())) {
            return null;
        }
        Log.i(LOG_TAG, "ImsService(Compat) Bound.");
        return this.mImsServiceController;
    }

    @VisibleForTesting
    public SparseArray<ImsFeature> getFeatures(int i) {
        return this.mFeaturesBySlot.get(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public IImsMMTelFeature createEmergencyMMTelFeatureInternal(int i, IImsFeatureStatusCallback iImsFeatureStatusCallback) {
        MMTelFeature onCreateEmergencyMMTelImsFeature = onCreateEmergencyMMTelImsFeature(i);
        if (onCreateEmergencyMMTelImsFeature == null) {
            return null;
        }
        setupFeature(onCreateEmergencyMMTelImsFeature, i, 0, iImsFeatureStatusCallback);
        return onCreateEmergencyMMTelImsFeature.getBinder();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public IImsMMTelFeature createMMTelFeatureInternal(int i, IImsFeatureStatusCallback iImsFeatureStatusCallback) {
        MMTelFeature onCreateMMTelImsFeature = onCreateMMTelImsFeature(i);
        if (onCreateMMTelImsFeature == null) {
            return null;
        }
        setupFeature(onCreateMMTelImsFeature, i, 1, iImsFeatureStatusCallback);
        return onCreateMMTelImsFeature.getBinder();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public IImsRcsFeature createRcsFeatureInternal(int i, IImsFeatureStatusCallback iImsFeatureStatusCallback) {
        RcsFeature onCreateRcsFeature = onCreateRcsFeature(i);
        if (onCreateRcsFeature == null) {
            return null;
        }
        setupFeature(onCreateRcsFeature, i, 2, iImsFeatureStatusCallback);
        return onCreateRcsFeature.getBinder();
    }

    private void setupFeature(ImsFeature imsFeature, int i, int i2, IImsFeatureStatusCallback iImsFeatureStatusCallback) {
        imsFeature.setContext(this);
        imsFeature.setSlotId(i);
        imsFeature.addImsFeatureStatusCallback(iImsFeatureStatusCallback);
        addImsFeature(i, i2, imsFeature);
        imsFeature.onFeatureReady();
    }

    private void addImsFeature(int i, int i2, ImsFeature imsFeature) {
        synchronized (this.mFeaturesBySlot) {
            SparseArray<ImsFeature> sparseArray = this.mFeaturesBySlot.get(i);
            if (sparseArray == null) {
                sparseArray = new SparseArray<>();
                this.mFeaturesBySlot.put(i, sparseArray);
            }
            sparseArray.put(i2, imsFeature);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeImsFeature(int i, int i2, IImsFeatureStatusCallback iImsFeatureStatusCallback) {
        synchronized (this.mFeaturesBySlot) {
            SparseArray<ImsFeature> sparseArray = this.mFeaturesBySlot.get(i);
            if (sparseArray == null) {
                Log.w(LOG_TAG, "Can not remove ImsFeature. No ImsFeatures exist on slot " + i);
                return;
            }
            ImsFeature imsFeature = sparseArray.get(i2);
            if (imsFeature == null) {
                Log.w(LOG_TAG, "Can not remove ImsFeature. No feature with type " + i2 + " exists on slot " + i);
                return;
            }
            imsFeature.removeImsFeatureStatusCallback(iImsFeatureStatusCallback);
            imsFeature.onFeatureRemoved();
            sparseArray.remove(i2);
        }
    }
}
