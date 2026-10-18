package android.telephony.ims.stub;

import android.annotation.SystemApi;
import android.os.Message;
import android.os.RemoteException;
import android.telephony.ims.ImsCallProfile;
import android.telephony.ims.ImsCallSessionListener;
import android.telephony.ims.ImsStreamMediaProfile;
import android.telephony.ims.ImsVideoCallProvider;
import android.telephony.ims.aidl.IImsCallSessionListener;
import com.android.ims.internal.IImsCallSession;
import com.android.ims.internal.IImsVideoCallProvider;

@SystemApi
/* loaded from: /home/user/work/dex/classes2.dex */
public class ImsCallSessionImplBase implements AutoCloseable {
    public static final int USSD_MODE_NOTIFY = 0;
    public static final int USSD_MODE_REQUEST = 1;
    private IImsCallSession mServiceImpl = new IImsCallSession.Stub() { // from class: android.telephony.ims.stub.ImsCallSessionImplBase.1
        public void close() {
            ImsCallSessionImplBase.this.close();
        }

        public String getCallId() {
            return ImsCallSessionImplBase.this.getCallId();
        }

        public ImsCallProfile getCallProfile() {
            return ImsCallSessionImplBase.this.getCallProfile();
        }

        public ImsCallProfile getLocalCallProfile() {
            return ImsCallSessionImplBase.this.getLocalCallProfile();
        }

        public ImsCallProfile getRemoteCallProfile() {
            return ImsCallSessionImplBase.this.getRemoteCallProfile();
        }

        public String getProperty(String str) {
            return ImsCallSessionImplBase.this.getProperty(str);
        }

        public int getState() {
            return ImsCallSessionImplBase.this.getState();
        }

        public boolean isInCall() {
            return ImsCallSessionImplBase.this.isInCall();
        }

        public void setListener(IImsCallSessionListener iImsCallSessionListener) {
            ImsCallSessionImplBase.this.setListener(new ImsCallSessionListener(iImsCallSessionListener));
        }

        public void setMute(boolean z) {
            ImsCallSessionImplBase.this.setMute(z);
        }

        public void start(String str, ImsCallProfile imsCallProfile) {
            ImsCallSessionImplBase.this.start(str, imsCallProfile);
        }

        public void startConference(String[] strArr, ImsCallProfile imsCallProfile) throws RemoteException {
            ImsCallSessionImplBase.this.startConference(strArr, imsCallProfile);
        }

        public void accept(int i, ImsStreamMediaProfile imsStreamMediaProfile) {
            ImsCallSessionImplBase.this.accept(i, imsStreamMediaProfile);
        }

        public void deflect(String str) {
            ImsCallSessionImplBase.this.deflect(str);
        }

        public void reject(int i) {
            ImsCallSessionImplBase.this.reject(i);
        }

        public void terminate(int i) {
            ImsCallSessionImplBase.this.terminate(i);
        }

        public void hold(ImsStreamMediaProfile imsStreamMediaProfile) {
            ImsCallSessionImplBase.this.hold(imsStreamMediaProfile);
        }

        public void resume(ImsStreamMediaProfile imsStreamMediaProfile) {
            ImsCallSessionImplBase.this.resume(imsStreamMediaProfile);
        }

        public void merge() {
            ImsCallSessionImplBase.this.merge();
        }

        public void update(int i, ImsStreamMediaProfile imsStreamMediaProfile) {
            ImsCallSessionImplBase.this.update(i, imsStreamMediaProfile);
        }

        public void extendToConference(String[] strArr) {
            ImsCallSessionImplBase.this.extendToConference(strArr);
        }

        public void inviteParticipants(String[] strArr) {
            ImsCallSessionImplBase.this.inviteParticipants(strArr);
        }

        public void removeParticipants(String[] strArr) {
            ImsCallSessionImplBase.this.removeParticipants(strArr);
        }

        public void sendDtmf(char c, Message message) {
            ImsCallSessionImplBase.this.sendDtmf(c, message);
        }

        public void startDtmf(char c) {
            ImsCallSessionImplBase.this.startDtmf(c);
        }

        public void stopDtmf() {
            ImsCallSessionImplBase.this.stopDtmf();
        }

        public void sendUssd(String str) {
            ImsCallSessionImplBase.this.sendUssd(str);
        }

        public IImsVideoCallProvider getVideoCallProvider() {
            return ImsCallSessionImplBase.this.getVideoCallProvider();
        }

        public boolean isMultiparty() {
            return ImsCallSessionImplBase.this.isMultiparty();
        }

        public void sendRttModifyRequest(ImsCallProfile imsCallProfile) {
            ImsCallSessionImplBase.this.sendRttModifyRequest(imsCallProfile);
        }

        public void sendRttModifyResponse(boolean z) {
            ImsCallSessionImplBase.this.sendRttModifyResponse(z);
        }

        public void sendRttMessage(String str) {
            ImsCallSessionImplBase.this.sendRttMessage(str);
        }
    };

    public void accept(int i, ImsStreamMediaProfile imsStreamMediaProfile) {
    }

    @Override // java.lang.AutoCloseable
    public void close() {
    }

    public void deflect(String str) {
    }

    public void extendToConference(String[] strArr) {
    }

    public String getCallId() {
        return null;
    }

    public ImsCallProfile getCallProfile() {
        return null;
    }

    public ImsVideoCallProvider getImsVideoCallProvider() {
        return null;
    }

    public ImsCallProfile getLocalCallProfile() {
        return null;
    }

    public String getProperty(String str) {
        return null;
    }

    public ImsCallProfile getRemoteCallProfile() {
        return null;
    }

    public int getState() {
        return -1;
    }

    public void hold(ImsStreamMediaProfile imsStreamMediaProfile) {
    }

    public void inviteParticipants(String[] strArr) {
    }

    public boolean isInCall() {
        return false;
    }

    public boolean isMultiparty() {
        return false;
    }

    public void merge() {
    }

    public void reject(int i) {
    }

    public void removeParticipants(String[] strArr) {
    }

    public void resume(ImsStreamMediaProfile imsStreamMediaProfile) {
    }

    public void sendDtmf(char c, Message message) {
    }

    public void sendRttMessage(String str) {
    }

    public void sendRttModifyRequest(ImsCallProfile imsCallProfile) {
    }

    public void sendRttModifyResponse(boolean z) {
    }

    public void sendUssd(String str) {
    }

    public void setListener(ImsCallSessionListener imsCallSessionListener) {
    }

    public void setMute(boolean z) {
    }

    public void start(String str, ImsCallProfile imsCallProfile) {
    }

    public void startConference(String[] strArr, ImsCallProfile imsCallProfile) {
    }

    public void startDtmf(char c) {
    }

    public void stopDtmf() {
    }

    public void terminate(int i) {
    }

    public void update(int i, ImsStreamMediaProfile imsStreamMediaProfile) {
    }

    /* loaded from: /home/user/work/dex/classes2.dex */
    public static class State {
        public static final int ESTABLISHED = 4;
        public static final int ESTABLISHING = 3;
        public static final int IDLE = 0;
        public static final int INITIATED = 1;
        public static final int INVALID = -1;
        public static final int NEGOTIATING = 2;
        public static final int REESTABLISHING = 6;
        public static final int RENEGOTIATING = 5;
        public static final int TERMINATED = 8;
        public static final int TERMINATING = 7;

        public static String toString(int i) {
            switch (i) {
                case 0:
                    return "IDLE";
                case 1:
                    return "INITIATED";
                case 2:
                    return "NEGOTIATING";
                case 3:
                    return "ESTABLISHING";
                case 4:
                    return "ESTABLISHED";
                case 5:
                    return "RENEGOTIATING";
                case 6:
                    return "REESTABLISHING";
                case 7:
                    return "TERMINATING";
                case 8:
                    return "TERMINATED";
                default:
                    return "UNKNOWN";
            }
        }

        private State() {
        }
    }

    public final void setListener(IImsCallSessionListener iImsCallSessionListener) throws RemoteException {
        setListener(new ImsCallSessionListener(iImsCallSessionListener));
    }

    public IImsVideoCallProvider getVideoCallProvider() {
        ImsVideoCallProvider imsVideoCallProvider = getImsVideoCallProvider();
        if (imsVideoCallProvider != null) {
            return imsVideoCallProvider.getInterface();
        }
        return null;
    }

    public IImsCallSession getServiceImpl() {
        return this.mServiceImpl;
    }

    public void setServiceImpl(IImsCallSession iImsCallSession) {
        this.mServiceImpl = iImsCallSession;
    }
}
