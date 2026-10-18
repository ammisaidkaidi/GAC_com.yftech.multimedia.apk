package android.telecom;

import android.net.Uri;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.telecom.ConnectionRequest;
import android.telecom.Logging.Session;
import android.telecom.RemoteConference;
import android.telecom.RemoteConnection;
import com.android.internal.telecom.IConnectionService;
import com.android.internal.telecom.IConnectionServiceAdapter;
import com.android.internal.telecom.IVideoProvider;
import com.android.internal.telecom.RemoteServiceCallback;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.UUID;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: /home/user/work/dex/classes2.dex */
public final class RemoteConnectionService {
    private final ConnectionService mOurConnectionServiceImpl;
    private final IConnectionService mOutgoingConnectionServiceRpc;
    private static final RemoteConnection NULL_CONNECTION = new RemoteConnection("NULL", null, (ConnectionRequest) null);
    private static final RemoteConference NULL_CONFERENCE = new RemoteConference("NULL", null);
    private final IConnectionServiceAdapter mServantDelegate = new IConnectionServiceAdapter() { // from class: android.telecom.RemoteConnectionService.1
        public void onConnectionServiceFocusReleased(Session.Info info) {
        }

        public void onPhoneAccountChanged(String str, PhoneAccountHandle phoneAccountHandle, Session.Info info) {
        }

        public void queryRemoteConnectionServices(RemoteServiceCallback remoteServiceCallback, Session.Info info) {
        }

        public void setConferenceMergeFailed(String str, Session.Info info) {
        }

        public void handleCreateConnectionComplete(String str, ConnectionRequest connectionRequest, ParcelableConnection parcelableConnection, Session.Info info) {
            RemoteConnection findConnectionForAction = RemoteConnectionService.this.findConnectionForAction(str, "handleCreateConnectionSuccessful");
            if (findConnectionForAction == RemoteConnectionService.NULL_CONNECTION || !RemoteConnectionService.this.mPendingConnections.contains(findConnectionForAction)) {
                return;
            }
            RemoteConnectionService.this.mPendingConnections.remove(findConnectionForAction);
            findConnectionForAction.setConnectionCapabilities(parcelableConnection.getConnectionCapabilities());
            findConnectionForAction.setConnectionProperties(parcelableConnection.getConnectionProperties());
            if (parcelableConnection.getHandle() != null || parcelableConnection.getState() != 6) {
                findConnectionForAction.setAddress(parcelableConnection.getHandle(), parcelableConnection.getHandlePresentation());
            }
            if (parcelableConnection.getCallerDisplayName() != null || parcelableConnection.getState() != 6) {
                findConnectionForAction.setCallerDisplayName(parcelableConnection.getCallerDisplayName(), parcelableConnection.getCallerDisplayNamePresentation());
            }
            if (parcelableConnection.getState() == 6) {
                findConnectionForAction.setDisconnected(parcelableConnection.getDisconnectCause());
            } else {
                findConnectionForAction.setState(parcelableConnection.getState());
            }
            ArrayList arrayList = new ArrayList();
            for (String str2 : parcelableConnection.getConferenceableConnectionIds()) {
                if (RemoteConnectionService.this.mConnectionById.containsKey(str2)) {
                    arrayList.add((RemoteConnection) RemoteConnectionService.this.mConnectionById.get(str2));
                }
            }
            findConnectionForAction.setConferenceableConnections(arrayList);
            findConnectionForAction.setVideoState(parcelableConnection.getVideoState());
            if (findConnectionForAction.getState() == 6) {
                findConnectionForAction.setDestroyed();
            }
            findConnectionForAction.setStatusHints(parcelableConnection.getStatusHints());
            findConnectionForAction.setIsVoipAudioMode(parcelableConnection.getIsVoipAudioMode());
            findConnectionForAction.setRingbackRequested(parcelableConnection.isRingbackRequested());
            findConnectionForAction.putExtras(parcelableConnection.getExtras());
        }

        public void setActive(String str, Session.Info info) {
            if (RemoteConnectionService.this.mConnectionById.containsKey(str)) {
                RemoteConnectionService.this.findConnectionForAction(str, "setActive").setState(4);
            } else {
                RemoteConnectionService.this.findConferenceForAction(str, "setActive").setState(4);
            }
        }

        public void setRinging(String str, Session.Info info) {
            RemoteConnectionService.this.findConnectionForAction(str, "setRinging").setState(2);
        }

        public void setDialing(String str, Session.Info info) {
            RemoteConnectionService.this.findConnectionForAction(str, "setDialing").setState(3);
        }

        public void setPulling(String str, Session.Info info) {
            RemoteConnectionService.this.findConnectionForAction(str, "setPulling").setState(7);
        }

        public void setDisconnected(String str, DisconnectCause disconnectCause, Session.Info info) {
            if (RemoteConnectionService.this.mConnectionById.containsKey(str)) {
                RemoteConnectionService.this.findConnectionForAction(str, "setDisconnected").setDisconnected(disconnectCause);
            } else {
                RemoteConnectionService.this.findConferenceForAction(str, "setDisconnected").setDisconnected(disconnectCause);
            }
        }

        public void setOnHold(String str, Session.Info info) {
            if (RemoteConnectionService.this.mConnectionById.containsKey(str)) {
                RemoteConnectionService.this.findConnectionForAction(str, "setOnHold").setState(5);
            } else {
                RemoteConnectionService.this.findConferenceForAction(str, "setOnHold").setState(5);
            }
        }

        public void setRingbackRequested(String str, boolean z, Session.Info info) {
            RemoteConnectionService.this.findConnectionForAction(str, "setRingbackRequested").setRingbackRequested(z);
        }

        public void setConnectionCapabilities(String str, int i, Session.Info info) {
            if (RemoteConnectionService.this.mConnectionById.containsKey(str)) {
                RemoteConnectionService.this.findConnectionForAction(str, "setConnectionCapabilities").setConnectionCapabilities(i);
            } else {
                RemoteConnectionService.this.findConferenceForAction(str, "setConnectionCapabilities").setConnectionCapabilities(i);
            }
        }

        public void setConnectionProperties(String str, int i, Session.Info info) {
            if (RemoteConnectionService.this.mConnectionById.containsKey(str)) {
                RemoteConnectionService.this.findConnectionForAction(str, "setConnectionProperties").setConnectionProperties(i);
            } else {
                RemoteConnectionService.this.findConferenceForAction(str, "setConnectionProperties").setConnectionProperties(i);
            }
        }

        public void setIsConferenced(String str, String str2, Session.Info info) {
            RemoteConnection findConnectionForAction = RemoteConnectionService.this.findConnectionForAction(str, "setIsConferenced");
            if (findConnectionForAction != RemoteConnectionService.NULL_CONNECTION) {
                if (str2 != null) {
                    RemoteConference findConferenceForAction = RemoteConnectionService.this.findConferenceForAction(str2, "setIsConferenced");
                    if (findConferenceForAction != RemoteConnectionService.NULL_CONFERENCE) {
                        findConferenceForAction.addConnection(findConnectionForAction);
                        return;
                    }
                    return;
                }
                if (findConnectionForAction.getConference() != null) {
                    findConnectionForAction.getConference().removeConnection(findConnectionForAction);
                }
            }
        }

        public void addConferenceCall(final String str, ParcelableConference parcelableConference, Session.Info info) {
            RemoteConference remoteConference = new RemoteConference(str, RemoteConnectionService.this.mOutgoingConnectionServiceRpc);
            Iterator<String> it = parcelableConference.getConnectionIds().iterator();
            while (it.hasNext()) {
                RemoteConnection remoteConnection = (RemoteConnection) RemoteConnectionService.this.mConnectionById.get(it.next());
                if (remoteConnection != null) {
                    remoteConference.addConnection(remoteConnection);
                }
            }
            if (remoteConference.getConnections().size() == 0) {
                Log.d(this, "addConferenceCall - skipping", new Object[0]);
                return;
            }
            remoteConference.setState(parcelableConference.getState());
            remoteConference.setConnectionCapabilities(parcelableConference.getConnectionCapabilities());
            remoteConference.setConnectionProperties(parcelableConference.getConnectionProperties());
            remoteConference.putExtras(parcelableConference.getExtras());
            RemoteConnectionService.this.mConferenceById.put(str, remoteConference);
            Bundle bundle = new Bundle();
            bundle.putString(Connection.EXTRA_ORIGINAL_CONNECTION_ID, str);
            remoteConference.putExtras(bundle);
            remoteConference.registerCallback(new RemoteConference.Callback() { // from class: android.telecom.RemoteConnectionService.1.1
                @Override // android.telecom.RemoteConference.Callback
                public void onDestroyed(RemoteConference remoteConference2) {
                    RemoteConnectionService.this.mConferenceById.remove(str);
                    RemoteConnectionService.this.maybeDisconnectAdapter();
                }
            });
            RemoteConnectionService.this.mOurConnectionServiceImpl.addRemoteConference(remoteConference);
        }

        public void removeCall(String str, Session.Info info) {
            if (RemoteConnectionService.this.mConnectionById.containsKey(str)) {
                RemoteConnectionService.this.findConnectionForAction(str, "removeCall").setDestroyed();
            } else {
                RemoteConnectionService.this.findConferenceForAction(str, "removeCall").setDestroyed();
            }
        }

        public void onPostDialWait(String str, String str2, Session.Info info) {
            RemoteConnectionService.this.findConnectionForAction(str, "onPostDialWait").setPostDialWait(str2);
        }

        public void onPostDialChar(String str, char c, Session.Info info) {
            RemoteConnectionService.this.findConnectionForAction(str, "onPostDialChar").onPostDialChar(c);
        }

        public void setVideoProvider(String str, IVideoProvider iVideoProvider, Session.Info info) {
            RemoteConnectionService.this.findConnectionForAction(str, "setVideoProvider").setVideoProvider(iVideoProvider != null ? new RemoteConnection.VideoProvider(iVideoProvider, RemoteConnectionService.this.mOurConnectionServiceImpl.getApplicationContext().getOpPackageName(), RemoteConnectionService.this.mOurConnectionServiceImpl.getApplicationInfo().targetSdkVersion) : null);
        }

        public void setVideoState(String str, int i, Session.Info info) {
            RemoteConnectionService.this.findConnectionForAction(str, "setVideoState").setVideoState(i);
        }

        public void setIsVoipAudioMode(String str, boolean z, Session.Info info) {
            RemoteConnectionService.this.findConnectionForAction(str, "setIsVoipAudioMode").setIsVoipAudioMode(z);
        }

        public void setStatusHints(String str, StatusHints statusHints, Session.Info info) {
            RemoteConnectionService.this.findConnectionForAction(str, "setStatusHints").setStatusHints(statusHints);
        }

        public void setAddress(String str, Uri uri, int i, Session.Info info) {
            RemoteConnectionService.this.findConnectionForAction(str, "setAddress").setAddress(uri, i);
        }

        public void setCallerDisplayName(String str, String str2, int i, Session.Info info) {
            RemoteConnectionService.this.findConnectionForAction(str, "setCallerDisplayName").setCallerDisplayName(str2, i);
        }

        public IBinder asBinder() {
            throw new UnsupportedOperationException();
        }

        public final void setConferenceableConnections(String str, List<String> list, Session.Info info) {
            ArrayList arrayList = new ArrayList();
            for (String str2 : list) {
                if (RemoteConnectionService.this.mConnectionById.containsKey(str2)) {
                    arrayList.add((RemoteConnection) RemoteConnectionService.this.mConnectionById.get(str2));
                }
            }
            if (RemoteConnectionService.this.hasConnection(str)) {
                RemoteConnectionService.this.findConnectionForAction(str, "setConferenceableConnections").setConferenceableConnections(arrayList);
            } else {
                RemoteConnectionService.this.findConferenceForAction(str, "setConferenceableConnections").setConferenceableConnections(arrayList);
            }
        }

        public void addExistingConnection(final String str, ParcelableConnection parcelableConnection, Session.Info info) {
            RemoteConnection remoteConnection = new RemoteConnection(str, RemoteConnectionService.this.mOutgoingConnectionServiceRpc, parcelableConnection, RemoteConnectionService.this.mOurConnectionServiceImpl.getApplicationContext().getOpPackageName(), RemoteConnectionService.this.mOurConnectionServiceImpl.getApplicationInfo().targetSdkVersion);
            RemoteConnectionService.this.mConnectionById.put(str, remoteConnection);
            remoteConnection.registerCallback(new RemoteConnection.Callback() { // from class: android.telecom.RemoteConnectionService.1.2
                @Override // android.telecom.RemoteConnection.Callback
                public void onDestroyed(RemoteConnection remoteConnection2) {
                    RemoteConnectionService.this.mConnectionById.remove(str);
                    RemoteConnectionService.this.maybeDisconnectAdapter();
                }
            });
            RemoteConnectionService.this.mOurConnectionServiceImpl.addRemoteExistingConnection(remoteConnection);
        }

        public void putExtras(String str, Bundle bundle, Session.Info info) {
            if (RemoteConnectionService.this.hasConnection(str)) {
                RemoteConnectionService.this.findConnectionForAction(str, "putExtras").putExtras(bundle);
            } else {
                RemoteConnectionService.this.findConferenceForAction(str, "putExtras").putExtras(bundle);
            }
        }

        public void removeExtras(String str, List<String> list, Session.Info info) {
            if (RemoteConnectionService.this.hasConnection(str)) {
                RemoteConnectionService.this.findConnectionForAction(str, "removeExtra").removeExtras(list);
            } else {
                RemoteConnectionService.this.findConferenceForAction(str, "removeExtra").removeExtras(list);
            }
        }

        public void setAudioRoute(String str, int i, String str2, Session.Info info) {
            RemoteConnectionService.this.hasConnection(str);
        }

        public void onConnectionEvent(String str, String str2, Bundle bundle, Session.Info info) {
            if (RemoteConnectionService.this.mConnectionById.containsKey(str)) {
                RemoteConnectionService.this.findConnectionForAction(str, "onConnectionEvent").onConnectionEvent(str2, bundle);
            }
        }

        public void onRttInitiationSuccess(String str, Session.Info info) throws RemoteException {
            if (RemoteConnectionService.this.hasConnection(str)) {
                RemoteConnectionService.this.findConnectionForAction(str, "onRttInitiationSuccess").onRttInitiationSuccess();
            } else {
                Log.w(this, "onRttInitiationSuccess called on a remote conference", new Object[0]);
            }
        }

        public void onRttInitiationFailure(String str, int i, Session.Info info) throws RemoteException {
            if (RemoteConnectionService.this.hasConnection(str)) {
                RemoteConnectionService.this.findConnectionForAction(str, "onRttInitiationFailure").onRttInitiationFailure(i);
            } else {
                Log.w(this, "onRttInitiationFailure called on a remote conference", new Object[0]);
            }
        }

        public void onRttSessionRemotelyTerminated(String str, Session.Info info) throws RemoteException {
            if (RemoteConnectionService.this.hasConnection(str)) {
                RemoteConnectionService.this.findConnectionForAction(str, "onRttSessionRemotelyTerminated").onRttSessionRemotelyTerminated();
            } else {
                Log.w(this, "onRttSessionRemotelyTerminated called on a remote conference", new Object[0]);
            }
        }

        public void onRemoteRttRequest(String str, Session.Info info) throws RemoteException {
            if (RemoteConnectionService.this.hasConnection(str)) {
                RemoteConnectionService.this.findConnectionForAction(str, "onRemoteRttRequest").onRemoteRttRequest();
            } else {
                Log.w(this, "onRemoteRttRequest called on a remote conference", new Object[0]);
            }
        }
    };
    private final ConnectionServiceAdapterServant mServant = new ConnectionServiceAdapterServant(this.mServantDelegate);
    private final IBinder.DeathRecipient mDeathRecipient = new IBinder.DeathRecipient() { // from class: android.telecom.RemoteConnectionService.2
        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            Iterator it = RemoteConnectionService.this.mConnectionById.values().iterator();
            while (it.hasNext()) {
                ((RemoteConnection) it.next()).setDestroyed();
            }
            Iterator it2 = RemoteConnectionService.this.mConferenceById.values().iterator();
            while (it2.hasNext()) {
                ((RemoteConference) it2.next()).setDestroyed();
            }
            RemoteConnectionService.this.mConnectionById.clear();
            RemoteConnectionService.this.mConferenceById.clear();
            RemoteConnectionService.this.mPendingConnections.clear();
            RemoteConnectionService.this.mOutgoingConnectionServiceRpc.asBinder().unlinkToDeath(RemoteConnectionService.this.mDeathRecipient, 0);
        }
    };
    private final Map<String, RemoteConnection> mConnectionById = new HashMap();
    private final Map<String, RemoteConference> mConferenceById = new HashMap();
    private final Set<RemoteConnection> mPendingConnections = new HashSet();

    /* JADX INFO: Access modifiers changed from: package-private */
    public RemoteConnectionService(IConnectionService iConnectionService, ConnectionService connectionService) throws RemoteException {
        this.mOutgoingConnectionServiceRpc = iConnectionService;
        this.mOutgoingConnectionServiceRpc.asBinder().linkToDeath(this.mDeathRecipient, 0);
        this.mOurConnectionServiceImpl = connectionService;
    }

    public String toString() {
        return "[RemoteCS - " + this.mOutgoingConnectionServiceRpc.asBinder().toString() + "]";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final RemoteConnection createRemoteConnection(PhoneAccountHandle phoneAccountHandle, ConnectionRequest connectionRequest, boolean z) {
        final String uuid = UUID.randomUUID().toString();
        ConnectionRequest build = new ConnectionRequest.Builder().setAccountHandle(connectionRequest.getAccountHandle()).setAddress(connectionRequest.getAddress()).setExtras(connectionRequest.getExtras()).setVideoState(connectionRequest.getVideoState()).setRttPipeFromInCall(connectionRequest.getRttPipeFromInCall()).setRttPipeToInCall(connectionRequest.getRttPipeToInCall()).build();
        try {
            if (this.mConnectionById.isEmpty()) {
                this.mOutgoingConnectionServiceRpc.addConnectionServiceAdapter(this.mServant.getStub(), (Session.Info) null);
            }
            RemoteConnection remoteConnection = new RemoteConnection(uuid, this.mOutgoingConnectionServiceRpc, build);
            this.mPendingConnections.add(remoteConnection);
            this.mConnectionById.put(uuid, remoteConnection);
            this.mOutgoingConnectionServiceRpc.createConnection(phoneAccountHandle, uuid, build, z, false, (Session.Info) null);
            remoteConnection.registerCallback(new RemoteConnection.Callback() { // from class: android.telecom.RemoteConnectionService.3
                @Override // android.telecom.RemoteConnection.Callback
                public void onDestroyed(RemoteConnection remoteConnection2) {
                    RemoteConnectionService.this.mConnectionById.remove(uuid);
                    RemoteConnectionService.this.maybeDisconnectAdapter();
                }
            });
            return remoteConnection;
        } catch (RemoteException e) {
            return RemoteConnection.failure(new DisconnectCause(1, e.toString()));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean hasConnection(String str) {
        return this.mConnectionById.containsKey(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public RemoteConnection findConnectionForAction(String str, String str2) {
        if (this.mConnectionById.containsKey(str)) {
            return this.mConnectionById.get(str);
        }
        Log.w(this, "%s - Cannot find Connection %s", str2, str);
        return NULL_CONNECTION;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public RemoteConference findConferenceForAction(String str, String str2) {
        if (this.mConferenceById.containsKey(str)) {
            return this.mConferenceById.get(str);
        }
        Log.w(this, "%s - Cannot find Conference %s", str2, str);
        return NULL_CONFERENCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void maybeDisconnectAdapter() {
        if (this.mConnectionById.isEmpty() && this.mConferenceById.isEmpty()) {
            try {
                this.mOutgoingConnectionServiceRpc.removeConnectionServiceAdapter(this.mServant.getStub(), (Session.Info) null);
            } catch (RemoteException unused) {
            }
        }
    }
}
