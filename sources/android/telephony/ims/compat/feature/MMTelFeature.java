package android.telephony.ims.compat.feature;

import android.app.PendingIntent;
import android.os.Message;
import android.os.RemoteException;
import android.telephony.ims.ImsCallProfile;
import android.telephony.ims.stub.ImsEcbmImplBase;
import android.telephony.ims.stub.ImsMultiEndpointImplBase;
import android.telephony.ims.stub.ImsUtImplBase;
import com.android.ims.internal.IImsCallSession;
import com.android.ims.internal.IImsCallSessionListener;
import com.android.ims.internal.IImsConfig;
import com.android.ims.internal.IImsEcbm;
import com.android.ims.internal.IImsMMTelFeature;
import com.android.ims.internal.IImsMultiEndpoint;
import com.android.ims.internal.IImsRegistrationListener;
import com.android.ims.internal.IImsUt;

/* loaded from: /home/user/work/dex/classes2.dex */
public class MMTelFeature extends ImsFeature {
    private final Object mLock = new Object();
    private final IImsMMTelFeature mImsMMTelBinder = new IImsMMTelFeature.Stub() { // from class: android.telephony.ims.compat.feature.MMTelFeature.1
        public int startSession(PendingIntent pendingIntent, IImsRegistrationListener iImsRegistrationListener) throws RemoteException {
            int startSession;
            synchronized (MMTelFeature.this.mLock) {
                startSession = MMTelFeature.this.startSession(pendingIntent, iImsRegistrationListener);
            }
            return startSession;
        }

        public void endSession(int i) throws RemoteException {
            synchronized (MMTelFeature.this.mLock) {
                MMTelFeature.this.endSession(i);
            }
        }

        public boolean isConnected(int i, int i2) throws RemoteException {
            boolean isConnected;
            synchronized (MMTelFeature.this.mLock) {
                isConnected = MMTelFeature.this.isConnected(i, i2);
            }
            return isConnected;
        }

        public boolean isOpened() throws RemoteException {
            boolean isOpened;
            synchronized (MMTelFeature.this.mLock) {
                isOpened = MMTelFeature.this.isOpened();
            }
            return isOpened;
        }

        public int getFeatureStatus() throws RemoteException {
            int featureState;
            synchronized (MMTelFeature.this.mLock) {
                featureState = MMTelFeature.this.getFeatureState();
            }
            return featureState;
        }

        public void addRegistrationListener(IImsRegistrationListener iImsRegistrationListener) throws RemoteException {
            synchronized (MMTelFeature.this.mLock) {
                MMTelFeature.this.addRegistrationListener(iImsRegistrationListener);
            }
        }

        public void removeRegistrationListener(IImsRegistrationListener iImsRegistrationListener) throws RemoteException {
            synchronized (MMTelFeature.this.mLock) {
                MMTelFeature.this.removeRegistrationListener(iImsRegistrationListener);
            }
        }

        public ImsCallProfile createCallProfile(int i, int i2, int i3) throws RemoteException {
            ImsCallProfile createCallProfile;
            synchronized (MMTelFeature.this.mLock) {
                createCallProfile = MMTelFeature.this.createCallProfile(i, i2, i3);
            }
            return createCallProfile;
        }

        public IImsCallSession createCallSession(int i, ImsCallProfile imsCallProfile) throws RemoteException {
            IImsCallSession createCallSession;
            synchronized (MMTelFeature.this.mLock) {
                createCallSession = MMTelFeature.this.createCallSession(i, imsCallProfile, null);
            }
            return createCallSession;
        }

        public IImsCallSession getPendingCallSession(int i, String str) throws RemoteException {
            IImsCallSession pendingCallSession;
            synchronized (MMTelFeature.this.mLock) {
                pendingCallSession = MMTelFeature.this.getPendingCallSession(i, str);
            }
            return pendingCallSession;
        }

        public IImsUt getUtInterface() throws RemoteException {
            IImsUt iImsUt;
            synchronized (MMTelFeature.this.mLock) {
                ImsUtImplBase utInterface = MMTelFeature.this.getUtInterface();
                iImsUt = utInterface != null ? utInterface.getInterface() : null;
            }
            return iImsUt;
        }

        public IImsConfig getConfigInterface() throws RemoteException {
            IImsConfig configInterface;
            synchronized (MMTelFeature.this.mLock) {
                configInterface = MMTelFeature.this.getConfigInterface();
            }
            return configInterface;
        }

        public void turnOnIms() throws RemoteException {
            synchronized (MMTelFeature.this.mLock) {
                MMTelFeature.this.turnOnIms();
            }
        }

        public void turnOffIms() throws RemoteException {
            synchronized (MMTelFeature.this.mLock) {
                MMTelFeature.this.turnOffIms();
            }
        }

        public IImsEcbm getEcbmInterface() throws RemoteException {
            IImsEcbm imsEcbm;
            synchronized (MMTelFeature.this.mLock) {
                ImsEcbmImplBase ecbmInterface = MMTelFeature.this.getEcbmInterface();
                imsEcbm = ecbmInterface != null ? ecbmInterface.getImsEcbm() : null;
            }
            return imsEcbm;
        }

        public void setUiTTYMode(int i, Message message) throws RemoteException {
            synchronized (MMTelFeature.this.mLock) {
                MMTelFeature.this.setUiTTYMode(i, message);
            }
        }

        public IImsMultiEndpoint getMultiEndpointInterface() throws RemoteException {
            IImsMultiEndpoint iImsMultiEndpoint;
            synchronized (MMTelFeature.this.mLock) {
                ImsMultiEndpointImplBase multiEndpointInterface = MMTelFeature.this.getMultiEndpointInterface();
                iImsMultiEndpoint = multiEndpointInterface != null ? multiEndpointInterface.getIImsMultiEndpoint() : null;
            }
            return iImsMultiEndpoint;
        }
    };

    public void addRegistrationListener(IImsRegistrationListener iImsRegistrationListener) {
    }

    public ImsCallProfile createCallProfile(int i, int i2, int i3) {
        return null;
    }

    public IImsCallSession createCallSession(int i, ImsCallProfile imsCallProfile, IImsCallSessionListener iImsCallSessionListener) {
        return null;
    }

    public void endSession(int i) {
    }

    public IImsConfig getConfigInterface() {
        return null;
    }

    public ImsEcbmImplBase getEcbmInterface() {
        return null;
    }

    public ImsMultiEndpointImplBase getMultiEndpointInterface() {
        return null;
    }

    public IImsCallSession getPendingCallSession(int i, String str) {
        return null;
    }

    public ImsUtImplBase getUtInterface() {
        return null;
    }

    public boolean isConnected(int i, int i2) {
        return false;
    }

    public boolean isOpened() {
        return false;
    }

    @Override // android.telephony.ims.compat.feature.ImsFeature
    public void onFeatureReady() {
    }

    @Override // android.telephony.ims.compat.feature.ImsFeature
    public void onFeatureRemoved() {
    }

    public void removeRegistrationListener(IImsRegistrationListener iImsRegistrationListener) {
    }

    public void setUiTTYMode(int i, Message message) {
    }

    public int startSession(PendingIntent pendingIntent, IImsRegistrationListener iImsRegistrationListener) {
        return 0;
    }

    public void turnOffIms() {
    }

    public void turnOnIms() {
    }

    @Override // android.telephony.ims.compat.feature.ImsFeature
    public final IImsMMTelFeature getBinder() {
        return this.mImsMMTelBinder;
    }
}
