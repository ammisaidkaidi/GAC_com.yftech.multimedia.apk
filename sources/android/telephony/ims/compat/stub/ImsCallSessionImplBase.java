package android.telephony.ims.compat.stub;

import android.os.Message;
import android.os.RemoteException;
import android.telephony.ims.ImsCallProfile;
import android.telephony.ims.ImsConferenceState;
import android.telephony.ims.ImsReasonInfo;
import android.telephony.ims.ImsStreamMediaProfile;
import android.telephony.ims.ImsSuppServiceNotification;
import com.android.ims.internal.IImsCallSession;
import com.android.ims.internal.IImsCallSessionListener;
import com.android.ims.internal.IImsVideoCallProvider;

/* loaded from: /home/user/work/dex/classes2.dex */
public class ImsCallSessionImplBase extends IImsCallSession.Stub {
    public void accept(int i, ImsStreamMediaProfile imsStreamMediaProfile) {
    }

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

    public IImsVideoCallProvider getVideoCallProvider() {
        return null;
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

    public void setListener(IImsCallSessionListener iImsCallSessionListener) {
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

    public final void setListener(android.telephony.ims.aidl.IImsCallSessionListener iImsCallSessionListener) throws RemoteException {
        setListener((IImsCallSessionListener) new ImsCallSessionListenerConverter(iImsCallSessionListener));
    }

    /* loaded from: /home/user/work/dex/classes2.dex */
    private class ImsCallSessionListenerConverter extends IImsCallSessionListener.Stub {
        private final android.telephony.ims.aidl.IImsCallSessionListener mNewListener;

        public ImsCallSessionListenerConverter(android.telephony.ims.aidl.IImsCallSessionListener iImsCallSessionListener) {
            this.mNewListener = iImsCallSessionListener;
        }

        public void callSessionProgressing(IImsCallSession iImsCallSession, ImsStreamMediaProfile imsStreamMediaProfile) throws RemoteException {
            this.mNewListener.callSessionProgressing(imsStreamMediaProfile);
        }

        public void callSessionStarted(IImsCallSession iImsCallSession, ImsCallProfile imsCallProfile) throws RemoteException {
            this.mNewListener.callSessionInitiated(imsCallProfile);
        }

        public void callSessionStartFailed(IImsCallSession iImsCallSession, ImsReasonInfo imsReasonInfo) throws RemoteException {
            this.mNewListener.callSessionInitiatedFailed(imsReasonInfo);
        }

        public void callSessionTerminated(IImsCallSession iImsCallSession, ImsReasonInfo imsReasonInfo) throws RemoteException {
            this.mNewListener.callSessionTerminated(imsReasonInfo);
        }

        public void callSessionHeld(IImsCallSession iImsCallSession, ImsCallProfile imsCallProfile) throws RemoteException {
            this.mNewListener.callSessionHeld(imsCallProfile);
        }

        public void callSessionHoldFailed(IImsCallSession iImsCallSession, ImsReasonInfo imsReasonInfo) throws RemoteException {
            this.mNewListener.callSessionHoldFailed(imsReasonInfo);
        }

        public void callSessionHoldReceived(IImsCallSession iImsCallSession, ImsCallProfile imsCallProfile) throws RemoteException {
            this.mNewListener.callSessionHoldReceived(imsCallProfile);
        }

        public void callSessionResumed(IImsCallSession iImsCallSession, ImsCallProfile imsCallProfile) throws RemoteException {
            this.mNewListener.callSessionResumed(imsCallProfile);
        }

        public void callSessionResumeFailed(IImsCallSession iImsCallSession, ImsReasonInfo imsReasonInfo) throws RemoteException {
            this.mNewListener.callSessionResumeFailed(imsReasonInfo);
        }

        public void callSessionResumeReceived(IImsCallSession iImsCallSession, ImsCallProfile imsCallProfile) throws RemoteException {
            this.mNewListener.callSessionResumeReceived(imsCallProfile);
        }

        public void callSessionMergeStarted(IImsCallSession iImsCallSession, IImsCallSession iImsCallSession2, ImsCallProfile imsCallProfile) throws RemoteException {
            this.mNewListener.callSessionMergeStarted(iImsCallSession2, imsCallProfile);
        }

        public void callSessionMergeComplete(IImsCallSession iImsCallSession) throws RemoteException {
            this.mNewListener.callSessionMergeComplete(iImsCallSession);
        }

        public void callSessionMergeFailed(IImsCallSession iImsCallSession, ImsReasonInfo imsReasonInfo) throws RemoteException {
            this.mNewListener.callSessionMergeFailed(imsReasonInfo);
        }

        public void callSessionUpdated(IImsCallSession iImsCallSession, ImsCallProfile imsCallProfile) throws RemoteException {
            this.mNewListener.callSessionUpdated(imsCallProfile);
        }

        public void callSessionUpdateFailed(IImsCallSession iImsCallSession, ImsReasonInfo imsReasonInfo) throws RemoteException {
            this.mNewListener.callSessionUpdateFailed(imsReasonInfo);
        }

        public void callSessionUpdateReceived(IImsCallSession iImsCallSession, ImsCallProfile imsCallProfile) throws RemoteException {
            this.mNewListener.callSessionUpdateReceived(imsCallProfile);
        }

        public void callSessionConferenceExtended(IImsCallSession iImsCallSession, IImsCallSession iImsCallSession2, ImsCallProfile imsCallProfile) throws RemoteException {
            this.mNewListener.callSessionConferenceExtended(iImsCallSession2, imsCallProfile);
        }

        public void callSessionConferenceExtendFailed(IImsCallSession iImsCallSession, ImsReasonInfo imsReasonInfo) throws RemoteException {
            this.mNewListener.callSessionConferenceExtendFailed(imsReasonInfo);
        }

        public void callSessionConferenceExtendReceived(IImsCallSession iImsCallSession, IImsCallSession iImsCallSession2, ImsCallProfile imsCallProfile) throws RemoteException {
            this.mNewListener.callSessionConferenceExtendReceived(iImsCallSession2, imsCallProfile);
        }

        public void callSessionInviteParticipantsRequestDelivered(IImsCallSession iImsCallSession) throws RemoteException {
            this.mNewListener.callSessionInviteParticipantsRequestDelivered();
        }

        public void callSessionInviteParticipantsRequestFailed(IImsCallSession iImsCallSession, ImsReasonInfo imsReasonInfo) throws RemoteException {
            this.mNewListener.callSessionInviteParticipantsRequestFailed(imsReasonInfo);
        }

        public void callSessionRemoveParticipantsRequestDelivered(IImsCallSession iImsCallSession) throws RemoteException {
            this.mNewListener.callSessionRemoveParticipantsRequestDelivered();
        }

        public void callSessionRemoveParticipantsRequestFailed(IImsCallSession iImsCallSession, ImsReasonInfo imsReasonInfo) throws RemoteException {
            this.mNewListener.callSessionRemoveParticipantsRequestFailed(imsReasonInfo);
        }

        public void callSessionConferenceStateUpdated(IImsCallSession iImsCallSession, ImsConferenceState imsConferenceState) throws RemoteException {
            this.mNewListener.callSessionConferenceStateUpdated(imsConferenceState);
        }

        public void callSessionUssdMessageReceived(IImsCallSession iImsCallSession, int i, String str) throws RemoteException {
            this.mNewListener.callSessionUssdMessageReceived(i, str);
        }

        public void callSessionHandover(IImsCallSession iImsCallSession, int i, int i2, ImsReasonInfo imsReasonInfo) throws RemoteException {
            this.mNewListener.callSessionHandover(i, i2, imsReasonInfo);
        }

        public void callSessionHandoverFailed(IImsCallSession iImsCallSession, int i, int i2, ImsReasonInfo imsReasonInfo) throws RemoteException {
            this.mNewListener.callSessionHandoverFailed(i, i2, imsReasonInfo);
        }

        public void callSessionMayHandover(IImsCallSession iImsCallSession, int i, int i2) throws RemoteException {
            this.mNewListener.callSessionMayHandover(i, i2);
        }

        public void callSessionTtyModeReceived(IImsCallSession iImsCallSession, int i) throws RemoteException {
            this.mNewListener.callSessionTtyModeReceived(i);
        }

        public void callSessionMultipartyStateChanged(IImsCallSession iImsCallSession, boolean z) throws RemoteException {
            this.mNewListener.callSessionMultipartyStateChanged(z);
        }

        public void callSessionSuppServiceReceived(IImsCallSession iImsCallSession, ImsSuppServiceNotification imsSuppServiceNotification) throws RemoteException {
            this.mNewListener.callSessionSuppServiceReceived(imsSuppServiceNotification);
        }

        public void callSessionRttModifyRequestReceived(IImsCallSession iImsCallSession, ImsCallProfile imsCallProfile) throws RemoteException {
            this.mNewListener.callSessionRttModifyRequestReceived(imsCallProfile);
        }

        public void callSessionRttModifyResponseReceived(int i) throws RemoteException {
            this.mNewListener.callSessionRttModifyResponseReceived(i);
        }

        public void callSessionRttMessageReceived(String str) throws RemoteException {
            this.mNewListener.callSessionRttMessageReceived(str);
        }
    }
}
