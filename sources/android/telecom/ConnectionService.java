package android.telecom;

import android.app.Service;
import android.content.ComponentName;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
import android.telecom.Conference;
import android.telecom.Connection;
import android.telecom.Logging.Runnable;
import android.telecom.Logging.Session;
import android.telephony.ims.ImsCallProfile;
import com.android.internal.os.SomeArgs;
import com.android.internal.telecom.IConnectionService;
import com.android.internal.telecom.IConnectionServiceAdapter;
import com.android.internal.telecom.RemoteServiceCallback;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: /home/user/work/dex/classes2.dex */
public abstract class ConnectionService extends Service {
    public static final String EXTRA_IS_HANDOVER = "android.telecom.extra.IS_HANDOVER";
    private static final int MSG_ABORT = 3;
    private static final int MSG_ADD_CONNECTION_SERVICE_ADAPTER = 1;
    private static final int MSG_ANSWER = 4;
    private static final int MSG_ANSWER_VIDEO = 17;
    private static final int MSG_CONFERENCE = 12;
    private static final int MSG_CONNECTION_SERVICE_FOCUS_GAINED = 31;
    private static final int MSG_CONNECTION_SERVICE_FOCUS_LOST = 30;
    private static final int MSG_CREATE_CONNECTION = 2;
    private static final int MSG_CREATE_CONNECTION_COMPLETE = 29;
    private static final int MSG_CREATE_CONNECTION_FAILED = 25;
    private static final int MSG_DEFLECT = 34;
    private static final int MSG_DISCONNECT = 6;
    private static final int MSG_HANDOVER_COMPLETE = 33;
    private static final int MSG_HANDOVER_FAILED = 32;
    private static final int MSG_HOLD = 7;
    private static final int MSG_MERGE_CONFERENCE = 18;
    private static final int MSG_ON_CALL_AUDIO_STATE_CHANGED = 9;
    private static final int MSG_ON_EXTRAS_CHANGED = 24;
    private static final int MSG_ON_POST_DIAL_CONTINUE = 14;
    private static final int MSG_ON_START_RTT = 26;
    private static final int MSG_ON_STOP_RTT = 27;
    private static final int MSG_PLAY_DTMF_TONE = 10;
    private static final int MSG_PULL_EXTERNAL_CALL = 22;
    private static final int MSG_REJECT = 5;
    private static final int MSG_REJECT_WITH_MESSAGE = 20;
    private static final int MSG_REMOVE_CONNECTION_SERVICE_ADAPTER = 16;
    private static final int MSG_RTT_UPGRADE_RESPONSE = 28;
    private static final int MSG_SEND_CALL_EVENT = 23;
    private static final int MSG_SILENCE = 21;
    private static final int MSG_SPLIT_FROM_CONFERENCE = 13;
    private static final int MSG_STOP_DTMF_TONE = 11;
    private static final int MSG_SWAP_CONFERENCE = 19;
    private static final int MSG_UNHOLD = 8;
    private static final boolean PII_DEBUG = Log.isLoggable(3);
    public static final String SERVICE_INTERFACE = "android.telecom.ConnectionService";
    private static final String SESSION_ABORT = "CS.ab";
    private static final String SESSION_ADD_CS_ADAPTER = "CS.aCSA";
    private static final String SESSION_ANSWER = "CS.an";
    private static final String SESSION_ANSWER_VIDEO = "CS.anV";
    private static final String SESSION_CALL_AUDIO_SC = "CS.cASC";
    private static final String SESSION_CONFERENCE = "CS.c";
    private static final String SESSION_CONNECTION_SERVICE_FOCUS_GAINED = "CS.cSFG";
    private static final String SESSION_CONNECTION_SERVICE_FOCUS_LOST = "CS.cSFL";
    private static final String SESSION_CREATE_CONN = "CS.crCo";
    private static final String SESSION_CREATE_CONN_COMPLETE = "CS.crCoC";
    private static final String SESSION_CREATE_CONN_FAILED = "CS.crCoF";
    private static final String SESSION_DEFLECT = "CS.def";
    private static final String SESSION_DISCONNECT = "CS.d";
    private static final String SESSION_EXTRAS_CHANGED = "CS.oEC";
    private static final String SESSION_HANDLER = "H.";
    private static final String SESSION_HANDOVER_COMPLETE = "CS.hC";
    private static final String SESSION_HANDOVER_FAILED = "CS.haF";
    private static final String SESSION_HOLD = "CS.h";
    private static final String SESSION_MERGE_CONFERENCE = "CS.mC";
    private static final String SESSION_PLAY_DTMF = "CS.pDT";
    private static final String SESSION_POST_DIAL_CONT = "CS.oPDC";
    private static final String SESSION_PULL_EXTERNAL_CALL = "CS.pEC";
    private static final String SESSION_REJECT = "CS.r";
    private static final String SESSION_REJECT_MESSAGE = "CS.rWM";
    private static final String SESSION_REMOVE_CS_ADAPTER = "CS.rCSA";
    private static final String SESSION_RTT_UPGRADE_RESPONSE = "CS.rTRUR";
    private static final String SESSION_SEND_CALL_EVENT = "CS.sCE";
    private static final String SESSION_SILENCE = "CS.s";
    private static final String SESSION_SPLIT_CONFERENCE = "CS.sFC";
    private static final String SESSION_START_RTT = "CS.+RTT";
    private static final String SESSION_STOP_DTMF = "CS.sDT";
    private static final String SESSION_STOP_RTT = "CS.-RTT";
    private static final String SESSION_SWAP_CONFERENCE = "CS.sC";
    private static final String SESSION_UNHOLD = "CS.u";
    private static final String SESSION_UPDATE_RTT_PIPES = "CS.uRTT";
    private static Connection sNullConnection;
    private Conference sNullConference;
    private final Map<String, Connection> mConnectionById = new ConcurrentHashMap();
    private final Map<Connection, String> mIdByConnection = new ConcurrentHashMap();
    private final Map<String, Conference> mConferenceById = new ConcurrentHashMap();
    private final Map<Conference, String> mIdByConference = new ConcurrentHashMap();
    private final RemoteConnectionManager mRemoteConnectionManager = new RemoteConnectionManager(this);
    private final List<Runnable> mPreInitializationConnectionRequests = new ArrayList();
    private final ConnectionServiceAdapter mAdapter = new ConnectionServiceAdapter();
    private boolean mAreAccountsInitialized = false;
    private Object mIdSyncRoot = new Object();
    private int mId = 0;
    private final IBinder mBinder = new IConnectionService.Stub() { // from class: android.telecom.ConnectionService.1
        public void addConnectionServiceAdapter(IConnectionServiceAdapter iConnectionServiceAdapter, Session.Info info) {
            Log.startSession(info, ConnectionService.SESSION_ADD_CS_ADAPTER);
            try {
                SomeArgs obtain = SomeArgs.obtain();
                obtain.arg1 = iConnectionServiceAdapter;
                obtain.arg2 = Log.createSubsession();
                ConnectionService.this.mHandler.obtainMessage(1, obtain).sendToTarget();
            } finally {
                Log.endSession();
            }
        }

        public void removeConnectionServiceAdapter(IConnectionServiceAdapter iConnectionServiceAdapter, Session.Info info) {
            Log.startSession(info, ConnectionService.SESSION_REMOVE_CS_ADAPTER);
            try {
                SomeArgs obtain = SomeArgs.obtain();
                obtain.arg1 = iConnectionServiceAdapter;
                obtain.arg2 = Log.createSubsession();
                ConnectionService.this.mHandler.obtainMessage(16, obtain).sendToTarget();
            } finally {
                Log.endSession();
            }
        }

        public void createConnection(PhoneAccountHandle phoneAccountHandle, String str, ConnectionRequest connectionRequest, boolean z, boolean z2, Session.Info info) {
            Log.startSession(info, ConnectionService.SESSION_CREATE_CONN);
            try {
                SomeArgs obtain = SomeArgs.obtain();
                obtain.arg1 = phoneAccountHandle;
                obtain.arg2 = str;
                obtain.arg3 = connectionRequest;
                obtain.arg4 = Log.createSubsession();
                obtain.argi1 = z ? 1 : 0;
                obtain.argi2 = z2 ? 1 : 0;
                ConnectionService.this.mHandler.obtainMessage(2, obtain).sendToTarget();
            } finally {
                Log.endSession();
            }
        }

        public void createConnectionComplete(String str, Session.Info info) {
            Log.startSession(info, ConnectionService.SESSION_CREATE_CONN_COMPLETE);
            try {
                SomeArgs obtain = SomeArgs.obtain();
                obtain.arg1 = str;
                obtain.arg2 = Log.createSubsession();
                ConnectionService.this.mHandler.obtainMessage(29, obtain).sendToTarget();
            } finally {
                Log.endSession();
            }
        }

        public void createConnectionFailed(PhoneAccountHandle phoneAccountHandle, String str, ConnectionRequest connectionRequest, boolean z, Session.Info info) {
            Log.startSession(info, ConnectionService.SESSION_CREATE_CONN_FAILED);
            try {
                SomeArgs obtain = SomeArgs.obtain();
                obtain.arg1 = str;
                obtain.arg2 = connectionRequest;
                obtain.arg3 = Log.createSubsession();
                obtain.arg4 = phoneAccountHandle;
                obtain.argi1 = z ? 1 : 0;
                ConnectionService.this.mHandler.obtainMessage(25, obtain).sendToTarget();
            } finally {
                Log.endSession();
            }
        }

        public void handoverFailed(String str, ConnectionRequest connectionRequest, int i, Session.Info info) {
            Log.startSession(info, ConnectionService.SESSION_HANDOVER_FAILED);
            try {
                SomeArgs obtain = SomeArgs.obtain();
                obtain.arg1 = str;
                obtain.arg2 = connectionRequest;
                obtain.arg3 = Log.createSubsession();
                obtain.arg4 = Integer.valueOf(i);
                ConnectionService.this.mHandler.obtainMessage(32, obtain).sendToTarget();
            } finally {
                Log.endSession();
            }
        }

        public void handoverComplete(String str, Session.Info info) {
            Log.startSession(info, ConnectionService.SESSION_HANDOVER_COMPLETE);
            try {
                SomeArgs obtain = SomeArgs.obtain();
                obtain.arg1 = str;
                obtain.arg2 = Log.createSubsession();
                ConnectionService.this.mHandler.obtainMessage(33, obtain).sendToTarget();
            } finally {
                Log.endSession();
            }
        }

        public void abort(String str, Session.Info info) {
            Log.startSession(info, ConnectionService.SESSION_ABORT);
            try {
                SomeArgs obtain = SomeArgs.obtain();
                obtain.arg1 = str;
                obtain.arg2 = Log.createSubsession();
                ConnectionService.this.mHandler.obtainMessage(3, obtain).sendToTarget();
            } finally {
                Log.endSession();
            }
        }

        public void answerVideo(String str, int i, Session.Info info) {
            Log.startSession(info, ConnectionService.SESSION_ANSWER_VIDEO);
            try {
                SomeArgs obtain = SomeArgs.obtain();
                obtain.arg1 = str;
                obtain.arg2 = Log.createSubsession();
                obtain.argi1 = i;
                ConnectionService.this.mHandler.obtainMessage(17, obtain).sendToTarget();
            } finally {
                Log.endSession();
            }
        }

        public void answer(String str, Session.Info info) {
            Log.startSession(info, ConnectionService.SESSION_ANSWER);
            try {
                SomeArgs obtain = SomeArgs.obtain();
                obtain.arg1 = str;
                obtain.arg2 = Log.createSubsession();
                ConnectionService.this.mHandler.obtainMessage(4, obtain).sendToTarget();
            } finally {
                Log.endSession();
            }
        }

        public void deflect(String str, Uri uri, Session.Info info) {
            Log.startSession(info, ConnectionService.SESSION_DEFLECT);
            try {
                SomeArgs obtain = SomeArgs.obtain();
                obtain.arg1 = str;
                obtain.arg2 = uri;
                obtain.arg3 = Log.createSubsession();
                ConnectionService.this.mHandler.obtainMessage(34, obtain).sendToTarget();
            } finally {
                Log.endSession();
            }
        }

        public void reject(String str, Session.Info info) {
            Log.startSession(info, ConnectionService.SESSION_REJECT);
            try {
                SomeArgs obtain = SomeArgs.obtain();
                obtain.arg1 = str;
                obtain.arg2 = Log.createSubsession();
                ConnectionService.this.mHandler.obtainMessage(5, obtain).sendToTarget();
            } finally {
                Log.endSession();
            }
        }

        public void rejectWithMessage(String str, String str2, Session.Info info) {
            Log.startSession(info, ConnectionService.SESSION_REJECT_MESSAGE);
            try {
                SomeArgs obtain = SomeArgs.obtain();
                obtain.arg1 = str;
                obtain.arg2 = str2;
                obtain.arg3 = Log.createSubsession();
                ConnectionService.this.mHandler.obtainMessage(20, obtain).sendToTarget();
            } finally {
                Log.endSession();
            }
        }

        public void silence(String str, Session.Info info) {
            Log.startSession(info, ConnectionService.SESSION_SILENCE);
            try {
                SomeArgs obtain = SomeArgs.obtain();
                obtain.arg1 = str;
                obtain.arg2 = Log.createSubsession();
                ConnectionService.this.mHandler.obtainMessage(21, obtain).sendToTarget();
            } finally {
                Log.endSession();
            }
        }

        public void disconnect(String str, Session.Info info) {
            Log.startSession(info, ConnectionService.SESSION_DISCONNECT);
            try {
                SomeArgs obtain = SomeArgs.obtain();
                obtain.arg1 = str;
                obtain.arg2 = Log.createSubsession();
                ConnectionService.this.mHandler.obtainMessage(6, obtain).sendToTarget();
            } finally {
                Log.endSession();
            }
        }

        public void hold(String str, Session.Info info) {
            Log.startSession(info, ConnectionService.SESSION_HOLD);
            try {
                SomeArgs obtain = SomeArgs.obtain();
                obtain.arg1 = str;
                obtain.arg2 = Log.createSubsession();
                ConnectionService.this.mHandler.obtainMessage(7, obtain).sendToTarget();
            } finally {
                Log.endSession();
            }
        }

        public void unhold(String str, Session.Info info) {
            Log.startSession(info, ConnectionService.SESSION_UNHOLD);
            try {
                SomeArgs obtain = SomeArgs.obtain();
                obtain.arg1 = str;
                obtain.arg2 = Log.createSubsession();
                ConnectionService.this.mHandler.obtainMessage(8, obtain).sendToTarget();
            } finally {
                Log.endSession();
            }
        }

        public void onCallAudioStateChanged(String str, CallAudioState callAudioState, Session.Info info) {
            Log.startSession(info, ConnectionService.SESSION_CALL_AUDIO_SC);
            try {
                SomeArgs obtain = SomeArgs.obtain();
                obtain.arg1 = str;
                obtain.arg2 = callAudioState;
                obtain.arg3 = Log.createSubsession();
                ConnectionService.this.mHandler.obtainMessage(9, obtain).sendToTarget();
            } finally {
                Log.endSession();
            }
        }

        public void playDtmfTone(String str, char c, Session.Info info) {
            Log.startSession(info, ConnectionService.SESSION_PLAY_DTMF);
            try {
                SomeArgs obtain = SomeArgs.obtain();
                obtain.arg1 = Character.valueOf(c);
                obtain.arg2 = str;
                obtain.arg3 = Log.createSubsession();
                ConnectionService.this.mHandler.obtainMessage(10, obtain).sendToTarget();
            } finally {
                Log.endSession();
            }
        }

        public void stopDtmfTone(String str, Session.Info info) {
            Log.startSession(info, ConnectionService.SESSION_STOP_DTMF);
            try {
                SomeArgs obtain = SomeArgs.obtain();
                obtain.arg1 = str;
                obtain.arg2 = Log.createSubsession();
                ConnectionService.this.mHandler.obtainMessage(11, obtain).sendToTarget();
            } finally {
                Log.endSession();
            }
        }

        public void conference(String str, String str2, Session.Info info) {
            Log.startSession(info, ConnectionService.SESSION_CONFERENCE);
            try {
                SomeArgs obtain = SomeArgs.obtain();
                obtain.arg1 = str;
                obtain.arg2 = str2;
                obtain.arg3 = Log.createSubsession();
                ConnectionService.this.mHandler.obtainMessage(12, obtain).sendToTarget();
            } finally {
                Log.endSession();
            }
        }

        public void splitFromConference(String str, Session.Info info) {
            Log.startSession(info, ConnectionService.SESSION_SPLIT_CONFERENCE);
            try {
                SomeArgs obtain = SomeArgs.obtain();
                obtain.arg1 = str;
                obtain.arg2 = Log.createSubsession();
                ConnectionService.this.mHandler.obtainMessage(13, obtain).sendToTarget();
            } finally {
                Log.endSession();
            }
        }

        public void mergeConference(String str, Session.Info info) {
            Log.startSession(info, ConnectionService.SESSION_MERGE_CONFERENCE);
            try {
                SomeArgs obtain = SomeArgs.obtain();
                obtain.arg1 = str;
                obtain.arg2 = Log.createSubsession();
                ConnectionService.this.mHandler.obtainMessage(18, obtain).sendToTarget();
            } finally {
                Log.endSession();
            }
        }

        public void swapConference(String str, Session.Info info) {
            Log.startSession(info, ConnectionService.SESSION_SWAP_CONFERENCE);
            try {
                SomeArgs obtain = SomeArgs.obtain();
                obtain.arg1 = str;
                obtain.arg2 = Log.createSubsession();
                ConnectionService.this.mHandler.obtainMessage(19, obtain).sendToTarget();
            } finally {
                Log.endSession();
            }
        }

        public void onPostDialContinue(String str, boolean z, Session.Info info) {
            Log.startSession(info, ConnectionService.SESSION_POST_DIAL_CONT);
            try {
                SomeArgs obtain = SomeArgs.obtain();
                obtain.arg1 = str;
                obtain.arg2 = Log.createSubsession();
                obtain.argi1 = z ? 1 : 0;
                ConnectionService.this.mHandler.obtainMessage(14, obtain).sendToTarget();
            } finally {
                Log.endSession();
            }
        }

        public void pullExternalCall(String str, Session.Info info) {
            Log.startSession(info, ConnectionService.SESSION_PULL_EXTERNAL_CALL);
            try {
                SomeArgs obtain = SomeArgs.obtain();
                obtain.arg1 = str;
                obtain.arg2 = Log.createSubsession();
                ConnectionService.this.mHandler.obtainMessage(22, obtain).sendToTarget();
            } finally {
                Log.endSession();
            }
        }

        public void sendCallEvent(String str, String str2, Bundle bundle, Session.Info info) {
            Log.startSession(info, ConnectionService.SESSION_SEND_CALL_EVENT);
            try {
                SomeArgs obtain = SomeArgs.obtain();
                obtain.arg1 = str;
                obtain.arg2 = str2;
                obtain.arg3 = bundle;
                obtain.arg4 = Log.createSubsession();
                ConnectionService.this.mHandler.obtainMessage(23, obtain).sendToTarget();
            } finally {
                Log.endSession();
            }
        }

        public void onExtrasChanged(String str, Bundle bundle, Session.Info info) {
            Log.startSession(info, ConnectionService.SESSION_EXTRAS_CHANGED);
            try {
                SomeArgs obtain = SomeArgs.obtain();
                obtain.arg1 = str;
                obtain.arg2 = bundle;
                obtain.arg3 = Log.createSubsession();
                ConnectionService.this.mHandler.obtainMessage(24, obtain).sendToTarget();
            } finally {
                Log.endSession();
            }
        }

        public void startRtt(String str, ParcelFileDescriptor parcelFileDescriptor, ParcelFileDescriptor parcelFileDescriptor2, Session.Info info) throws RemoteException {
            Log.startSession(info, ConnectionService.SESSION_START_RTT);
            try {
                SomeArgs obtain = SomeArgs.obtain();
                obtain.arg1 = str;
                obtain.arg2 = new Connection.RttTextStream(parcelFileDescriptor2, parcelFileDescriptor);
                obtain.arg3 = Log.createSubsession();
                ConnectionService.this.mHandler.obtainMessage(26, obtain).sendToTarget();
            } finally {
                Log.endSession();
            }
        }

        public void stopRtt(String str, Session.Info info) throws RemoteException {
            Log.startSession(info, ConnectionService.SESSION_STOP_RTT);
            try {
                SomeArgs obtain = SomeArgs.obtain();
                obtain.arg1 = str;
                obtain.arg2 = Log.createSubsession();
                ConnectionService.this.mHandler.obtainMessage(27, obtain).sendToTarget();
            } finally {
                Log.endSession();
            }
        }

        public void respondToRttUpgradeRequest(String str, ParcelFileDescriptor parcelFileDescriptor, ParcelFileDescriptor parcelFileDescriptor2, Session.Info info) throws RemoteException {
            Log.startSession(info, ConnectionService.SESSION_RTT_UPGRADE_RESPONSE);
            try {
                SomeArgs obtain = SomeArgs.obtain();
                obtain.arg1 = str;
                if (parcelFileDescriptor2 != null && parcelFileDescriptor != null) {
                    obtain.arg2 = new Connection.RttTextStream(parcelFileDescriptor2, parcelFileDescriptor);
                    obtain.arg3 = Log.createSubsession();
                    ConnectionService.this.mHandler.obtainMessage(28, obtain).sendToTarget();
                }
                obtain.arg2 = null;
                obtain.arg3 = Log.createSubsession();
                ConnectionService.this.mHandler.obtainMessage(28, obtain).sendToTarget();
            } finally {
                Log.endSession();
            }
        }

        public void connectionServiceFocusLost(Session.Info info) throws RemoteException {
            Log.startSession(info, ConnectionService.SESSION_CONNECTION_SERVICE_FOCUS_LOST);
            try {
                ConnectionService.this.mHandler.obtainMessage(30).sendToTarget();
            } finally {
                Log.endSession();
            }
        }

        public void connectionServiceFocusGained(Session.Info info) throws RemoteException {
            Log.startSession(info, ConnectionService.SESSION_CONNECTION_SERVICE_FOCUS_GAINED);
            try {
                ConnectionService.this.mHandler.obtainMessage(31).sendToTarget();
            } finally {
                Log.endSession();
            }
        }
    };
    private final Handler mHandler = new Handler(Looper.getMainLooper()) { // from class: android.telecom.ConnectionService.2
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            SomeArgs someArgs;
            switch (message.what) {
                case 1:
                    someArgs = (SomeArgs) message.obj;
                    try {
                        IConnectionServiceAdapter iConnectionServiceAdapter = (IConnectionServiceAdapter) someArgs.arg1;
                        Log.continueSession((Session) someArgs.arg2, "H.CS.aCSA");
                        ConnectionService.this.mAdapter.addAdapter(iConnectionServiceAdapter);
                        ConnectionService.this.onAdapterAttached();
                        return;
                    } finally {
                    }
                case 2:
                    someArgs = (SomeArgs) message.obj;
                    Log.continueSession((Session) someArgs.arg4, "H.CS.crCo");
                    try {
                        final PhoneAccountHandle phoneAccountHandle = (PhoneAccountHandle) someArgs.arg1;
                        final String str = (String) someArgs.arg2;
                        final ConnectionRequest connectionRequest = (ConnectionRequest) someArgs.arg3;
                        final boolean z = someArgs.argi1 == 1;
                        final boolean z2 = someArgs.argi2 == 1;
                        if (ConnectionService.this.mAreAccountsInitialized) {
                            ConnectionService.this.createConnection(phoneAccountHandle, str, connectionRequest, z, z2);
                        } else {
                            Log.d(this, "Enqueueing pre-init request %s", str);
                            ConnectionService.this.mPreInitializationConnectionRequests.add(new Runnable("H.CS.crCo.pICR", null) { // from class: android.telecom.ConnectionService.2.1
                                @Override // android.telecom.Logging.Runnable
                                public void loggedRun() {
                                    ConnectionService.this.createConnection(phoneAccountHandle, str, connectionRequest, z, z2);
                                }
                            }.prepare());
                        }
                        return;
                    } finally {
                    }
                case 3:
                    someArgs = (SomeArgs) message.obj;
                    Log.continueSession((Session) someArgs.arg2, "H.CS.ab");
                    try {
                        ConnectionService.this.abort((String) someArgs.arg1);
                        return;
                    } finally {
                    }
                case 4:
                    someArgs = (SomeArgs) message.obj;
                    Log.continueSession((Session) someArgs.arg2, "H.CS.an");
                    try {
                        ConnectionService.this.answer((String) someArgs.arg1);
                        return;
                    } finally {
                    }
                case 5:
                    someArgs = (SomeArgs) message.obj;
                    Log.continueSession((Session) someArgs.arg2, "H.CS.r");
                    try {
                        ConnectionService.this.reject((String) someArgs.arg1);
                        return;
                    } finally {
                    }
                case 6:
                    someArgs = (SomeArgs) message.obj;
                    Log.continueSession((Session) someArgs.arg2, "H.CS.d");
                    try {
                        ConnectionService.this.disconnect((String) someArgs.arg1);
                        return;
                    } finally {
                    }
                case 7:
                    someArgs = (SomeArgs) message.obj;
                    Log.continueSession((Session) someArgs.arg2, "H.CS.r");
                    try {
                        ConnectionService.this.hold((String) someArgs.arg1);
                        return;
                    } finally {
                    }
                case 8:
                    someArgs = (SomeArgs) message.obj;
                    Log.continueSession((Session) someArgs.arg2, "H.CS.u");
                    try {
                        ConnectionService.this.unhold((String) someArgs.arg1);
                        return;
                    } finally {
                    }
                case 9:
                    someArgs = (SomeArgs) message.obj;
                    Log.continueSession((Session) someArgs.arg3, "H.CS.cASC");
                    try {
                        ConnectionService.this.onCallAudioStateChanged((String) someArgs.arg1, new CallAudioState((CallAudioState) someArgs.arg2));
                        return;
                    } finally {
                    }
                case 10:
                    someArgs = (SomeArgs) message.obj;
                    try {
                        Log.continueSession((Session) someArgs.arg3, "H.CS.pDT");
                        ConnectionService.this.playDtmfTone((String) someArgs.arg2, ((Character) someArgs.arg1).charValue());
                        return;
                    } finally {
                    }
                case 11:
                    someArgs = (SomeArgs) message.obj;
                    try {
                        Log.continueSession((Session) someArgs.arg2, "H.CS.sDT");
                        ConnectionService.this.stopDtmfTone((String) someArgs.arg1);
                        return;
                    } finally {
                    }
                case 12:
                    someArgs = (SomeArgs) message.obj;
                    try {
                        Log.continueSession((Session) someArgs.arg3, "H.CS.c");
                        ConnectionService.this.conference((String) someArgs.arg1, (String) someArgs.arg2);
                        return;
                    } finally {
                    }
                case 13:
                    someArgs = (SomeArgs) message.obj;
                    try {
                        Log.continueSession((Session) someArgs.arg2, "H.CS.sFC");
                        ConnectionService.this.splitFromConference((String) someArgs.arg1);
                        return;
                    } finally {
                    }
                case 14:
                    someArgs = (SomeArgs) message.obj;
                    try {
                        Log.continueSession((Session) someArgs.arg2, "H.CS.oPDC");
                        ConnectionService.this.onPostDialContinue((String) someArgs.arg1, someArgs.argi1 == 1);
                        return;
                    } finally {
                    }
                case 15:
                default:
                    return;
                case 16:
                    someArgs = (SomeArgs) message.obj;
                    try {
                        Log.continueSession((Session) someArgs.arg2, "H.CS.rCSA");
                        ConnectionService.this.mAdapter.removeAdapter((IConnectionServiceAdapter) someArgs.arg1);
                        return;
                    } finally {
                    }
                case 17:
                    someArgs = (SomeArgs) message.obj;
                    Log.continueSession((Session) someArgs.arg2, "H.CS.anV");
                    try {
                        ConnectionService.this.answerVideo((String) someArgs.arg1, someArgs.argi1);
                        return;
                    } finally {
                    }
                case 18:
                    someArgs = (SomeArgs) message.obj;
                    try {
                        Log.continueSession((Session) someArgs.arg2, "H.CS.mC");
                        ConnectionService.this.mergeConference((String) someArgs.arg1);
                        return;
                    } finally {
                    }
                case 19:
                    someArgs = (SomeArgs) message.obj;
                    try {
                        Log.continueSession((Session) someArgs.arg2, "H.CS.sC");
                        ConnectionService.this.swapConference((String) someArgs.arg1);
                        return;
                    } finally {
                    }
                case 20:
                    someArgs = (SomeArgs) message.obj;
                    Log.continueSession((Session) someArgs.arg3, "H.CS.rWM");
                    try {
                        ConnectionService.this.reject((String) someArgs.arg1, (String) someArgs.arg2);
                        return;
                    } finally {
                    }
                case 21:
                    someArgs = (SomeArgs) message.obj;
                    Log.continueSession((Session) someArgs.arg2, "H.CS.s");
                    try {
                        ConnectionService.this.silence((String) someArgs.arg1);
                        return;
                    } finally {
                    }
                case 22:
                    someArgs = (SomeArgs) message.obj;
                    try {
                        Log.continueSession((Session) someArgs.arg2, "H.CS.pEC");
                        ConnectionService.this.pullExternalCall((String) someArgs.arg1);
                        return;
                    } finally {
                    }
                case 23:
                    someArgs = (SomeArgs) message.obj;
                    try {
                        Log.continueSession((Session) someArgs.arg4, "H.CS.sCE");
                        ConnectionService.this.sendCallEvent((String) someArgs.arg1, (String) someArgs.arg2, (Bundle) someArgs.arg3);
                        return;
                    } finally {
                    }
                case 24:
                    someArgs = (SomeArgs) message.obj;
                    try {
                        Log.continueSession((Session) someArgs.arg3, "H.CS.oEC");
                        ConnectionService.this.handleExtrasChanged((String) someArgs.arg1, (Bundle) someArgs.arg2);
                        return;
                    } finally {
                    }
                case 25:
                    someArgs = (SomeArgs) message.obj;
                    Log.continueSession((Session) someArgs.arg3, "H.CS.crCoF");
                    try {
                        final String str2 = (String) someArgs.arg1;
                        final ConnectionRequest connectionRequest2 = (ConnectionRequest) someArgs.arg2;
                        final boolean z3 = someArgs.argi1 == 1;
                        final PhoneAccountHandle phoneAccountHandle2 = (PhoneAccountHandle) someArgs.arg4;
                        if (!ConnectionService.this.mAreAccountsInitialized) {
                            Log.d(this, "Enqueueing pre-init request %s", str2);
                            ConnectionService.this.mPreInitializationConnectionRequests.add(new Runnable("H.CS.crCoF.pICR", null) { // from class: android.telecom.ConnectionService.2.3
                                @Override // android.telecom.Logging.Runnable
                                public void loggedRun() {
                                    ConnectionService.this.createConnectionFailed(phoneAccountHandle2, str2, connectionRequest2, z3);
                                }
                            }.prepare());
                        } else {
                            Log.i(this, "createConnectionFailed %s", str2);
                            ConnectionService.this.createConnectionFailed(phoneAccountHandle2, str2, connectionRequest2, z3);
                        }
                        return;
                    } finally {
                    }
                case 26:
                    someArgs = (SomeArgs) message.obj;
                    try {
                        Log.continueSession((Session) someArgs.arg3, "H.CS.+RTT");
                        ConnectionService.this.startRtt((String) someArgs.arg1, (Connection.RttTextStream) someArgs.arg2);
                        return;
                    } finally {
                    }
                case 27:
                    someArgs = (SomeArgs) message.obj;
                    try {
                        Log.continueSession((Session) someArgs.arg2, "H.CS.-RTT");
                        ConnectionService.this.stopRtt((String) someArgs.arg1);
                        return;
                    } finally {
                    }
                case 28:
                    someArgs = (SomeArgs) message.obj;
                    try {
                        Log.continueSession((Session) someArgs.arg3, "H.CS.rTRUR");
                        ConnectionService.this.handleRttUpgradeResponse((String) someArgs.arg1, (Connection.RttTextStream) someArgs.arg2);
                        return;
                    } finally {
                    }
                case 29:
                    someArgs = (SomeArgs) message.obj;
                    Log.continueSession((Session) someArgs.arg2, "H.CS.crCoC");
                    try {
                        final String str3 = (String) someArgs.arg1;
                        if (ConnectionService.this.mAreAccountsInitialized) {
                            ConnectionService.this.notifyCreateConnectionComplete(str3);
                        } else {
                            Log.d(this, "Enqueueing pre-init request %s", str3);
                            ConnectionService.this.mPreInitializationConnectionRequests.add(new Runnable("H.CS.crCoC.pICR", null) { // from class: android.telecom.ConnectionService.2.2
                                @Override // android.telecom.Logging.Runnable
                                public void loggedRun() {
                                    ConnectionService.this.notifyCreateConnectionComplete(str3);
                                }
                            }.prepare());
                        }
                        return;
                    } finally {
                    }
                case 30:
                    ConnectionService.this.onConnectionServiceFocusLost();
                    return;
                case 31:
                    ConnectionService.this.onConnectionServiceFocusGained();
                    return;
                case 32:
                    someArgs = (SomeArgs) message.obj;
                    Log.continueSession((Session) someArgs.arg3, "H.CS.haF");
                    try {
                        final String str4 = (String) someArgs.arg1;
                        final ConnectionRequest connectionRequest3 = (ConnectionRequest) someArgs.arg2;
                        final int intValue = ((Integer) someArgs.arg4).intValue();
                        if (!ConnectionService.this.mAreAccountsInitialized) {
                            Log.d(this, "Enqueueing pre-init request %s", str4);
                            ConnectionService.this.mPreInitializationConnectionRequests.add(new Runnable("H.CS.haF.pICR", null) { // from class: android.telecom.ConnectionService.2.4
                                @Override // android.telecom.Logging.Runnable
                                public void loggedRun() {
                                    ConnectionService.this.handoverFailed(str4, connectionRequest3, intValue);
                                }
                            }.prepare());
                        } else {
                            Log.i(this, "createConnectionFailed %s", str4);
                            ConnectionService.this.handoverFailed(str4, connectionRequest3, intValue);
                        }
                        return;
                    } finally {
                    }
                case 33:
                    someArgs = (SomeArgs) message.obj;
                    try {
                        Log.continueSession((Session) someArgs.arg2, "H.CS.hC");
                        ConnectionService.this.notifyHandoverComplete((String) someArgs.arg1);
                        return;
                    } finally {
                    }
                case 34:
                    someArgs = (SomeArgs) message.obj;
                    Log.continueSession((Session) someArgs.arg3, "H.CS.def");
                    try {
                        ConnectionService.this.deflect((String) someArgs.arg1, (Uri) someArgs.arg2);
                        return;
                    } finally {
                    }
            }
        }
    };
    private final Conference.Listener mConferenceListener = new Conference.Listener() { // from class: android.telecom.ConnectionService.3
        @Override // android.telecom.Conference.Listener
        public void onConnectionAdded(Conference conference, Connection connection) {
        }

        @Override // android.telecom.Conference.Listener
        public void onConnectionRemoved(Conference conference, Connection connection) {
        }

        @Override // android.telecom.Conference.Listener
        public void onStateChanged(Conference conference, int i, int i2) {
            String str = (String) ConnectionService.this.mIdByConference.get(conference);
            switch (i2) {
                case 4:
                    ConnectionService.this.mAdapter.setActive(str);
                    return;
                case 5:
                    ConnectionService.this.mAdapter.setOnHold(str);
                    return;
                default:
                    return;
            }
        }

        @Override // android.telecom.Conference.Listener
        public void onDisconnected(Conference conference, DisconnectCause disconnectCause) {
            ConnectionService.this.mAdapter.setDisconnected((String) ConnectionService.this.mIdByConference.get(conference), disconnectCause);
        }

        @Override // android.telecom.Conference.Listener
        public void onConferenceableConnectionsChanged(Conference conference, List<Connection> list) {
            ConnectionService.this.mAdapter.setConferenceableConnections((String) ConnectionService.this.mIdByConference.get(conference), ConnectionService.this.createConnectionIdList(list));
        }

        @Override // android.telecom.Conference.Listener
        public void onDestroyed(Conference conference) {
            ConnectionService.this.removeConference(conference);
        }

        @Override // android.telecom.Conference.Listener
        public void onConnectionCapabilitiesChanged(Conference conference, int i) {
            String str = (String) ConnectionService.this.mIdByConference.get(conference);
            Log.d(this, "call capabilities: conference: %s", Connection.capabilitiesToString(i));
            ConnectionService.this.mAdapter.setConnectionCapabilities(str, i);
        }

        @Override // android.telecom.Conference.Listener
        public void onConnectionPropertiesChanged(Conference conference, int i) {
            String str = (String) ConnectionService.this.mIdByConference.get(conference);
            Log.d(this, "call capabilities: conference: %s", Connection.propertiesToString(i));
            ConnectionService.this.mAdapter.setConnectionProperties(str, i);
        }

        @Override // android.telecom.Conference.Listener
        public void onVideoStateChanged(Conference conference, int i) {
            String str = (String) ConnectionService.this.mIdByConference.get(conference);
            Log.d(this, "onVideoStateChanged set video state %d", Integer.valueOf(i));
            ConnectionService.this.mAdapter.setVideoState(str, i);
        }

        @Override // android.telecom.Conference.Listener
        public void onVideoProviderChanged(Conference conference, Connection.VideoProvider videoProvider) {
            String str = (String) ConnectionService.this.mIdByConference.get(conference);
            Log.d(this, "onVideoProviderChanged: Connection: %s, VideoProvider: %s", conference, videoProvider);
            ConnectionService.this.mAdapter.setVideoProvider(str, videoProvider);
        }

        @Override // android.telecom.Conference.Listener
        public void onStatusHintsChanged(Conference conference, StatusHints statusHints) {
            String str = (String) ConnectionService.this.mIdByConference.get(conference);
            if (str != null) {
                ConnectionService.this.mAdapter.setStatusHints(str, statusHints);
            }
        }

        @Override // android.telecom.Conference.Listener
        public void onExtrasChanged(Conference conference, Bundle bundle) {
            String str = (String) ConnectionService.this.mIdByConference.get(conference);
            if (str != null) {
                ConnectionService.this.mAdapter.putExtras(str, bundle);
            }
        }

        @Override // android.telecom.Conference.Listener
        public void onExtrasRemoved(Conference conference, List<String> list) {
            String str = (String) ConnectionService.this.mIdByConference.get(conference);
            if (str != null) {
                ConnectionService.this.mAdapter.removeExtras(str, list);
            }
        }
    };
    private final Connection.Listener mConnectionListener = new Connection.Listener() { // from class: android.telecom.ConnectionService.4
        @Override // android.telecom.Connection.Listener
        public void onStateChanged(Connection connection, int i) {
            String str = (String) ConnectionService.this.mIdByConnection.get(connection);
            Log.d(this, "Adapter set state %s %s", str, Connection.stateToString(i));
            switch (i) {
                case 1:
                case 6:
                default:
                    return;
                case 2:
                    ConnectionService.this.mAdapter.setRinging(str);
                    return;
                case 3:
                    ConnectionService.this.mAdapter.setDialing(str);
                    return;
                case 4:
                    ConnectionService.this.mAdapter.setActive(str);
                    return;
                case 5:
                    ConnectionService.this.mAdapter.setOnHold(str);
                    return;
                case 7:
                    ConnectionService.this.mAdapter.setPulling(str);
                    return;
            }
        }

        @Override // android.telecom.Connection.Listener
        public void onDisconnected(Connection connection, DisconnectCause disconnectCause) {
            String str = (String) ConnectionService.this.mIdByConnection.get(connection);
            Log.d(this, "Adapter set disconnected %s", disconnectCause);
            ConnectionService.this.mAdapter.setDisconnected(str, disconnectCause);
        }

        @Override // android.telecom.Connection.Listener
        public void onVideoStateChanged(Connection connection, int i) {
            String str = (String) ConnectionService.this.mIdByConnection.get(connection);
            Log.d(this, "Adapter set video state %d", Integer.valueOf(i));
            ConnectionService.this.mAdapter.setVideoState(str, i);
        }

        @Override // android.telecom.Connection.Listener
        public void onAddressChanged(Connection connection, Uri uri, int i) {
            ConnectionService.this.mAdapter.setAddress((String) ConnectionService.this.mIdByConnection.get(connection), uri, i);
        }

        @Override // android.telecom.Connection.Listener
        public void onCallerDisplayNameChanged(Connection connection, String str, int i) {
            ConnectionService.this.mAdapter.setCallerDisplayName((String) ConnectionService.this.mIdByConnection.get(connection), str, i);
        }

        @Override // android.telecom.Connection.Listener
        public void onDestroyed(Connection connection) {
            ConnectionService.this.removeConnection(connection);
        }

        @Override // android.telecom.Connection.Listener
        public void onPostDialWait(Connection connection, String str) {
            String str2 = (String) ConnectionService.this.mIdByConnection.get(connection);
            Log.d(this, "Adapter onPostDialWait %s, %s", connection, str);
            ConnectionService.this.mAdapter.onPostDialWait(str2, str);
        }

        @Override // android.telecom.Connection.Listener
        public void onPostDialChar(Connection connection, char c) {
            String str = (String) ConnectionService.this.mIdByConnection.get(connection);
            Log.d(this, "Adapter onPostDialChar %s, %s", connection, Character.valueOf(c));
            ConnectionService.this.mAdapter.onPostDialChar(str, c);
        }

        @Override // android.telecom.Connection.Listener
        public void onRingbackRequested(Connection connection, boolean z) {
            String str = (String) ConnectionService.this.mIdByConnection.get(connection);
            Log.d(this, "Adapter onRingback %b", Boolean.valueOf(z));
            ConnectionService.this.mAdapter.setRingbackRequested(str, z);
        }

        @Override // android.telecom.Connection.Listener
        public void onConnectionCapabilitiesChanged(Connection connection, int i) {
            String str = (String) ConnectionService.this.mIdByConnection.get(connection);
            Log.d(this, "capabilities: parcelableconnection: %s", Connection.capabilitiesToString(i));
            ConnectionService.this.mAdapter.setConnectionCapabilities(str, i);
        }

        @Override // android.telecom.Connection.Listener
        public void onConnectionPropertiesChanged(Connection connection, int i) {
            String str = (String) ConnectionService.this.mIdByConnection.get(connection);
            Log.d(this, "properties: parcelableconnection: %s", Connection.propertiesToString(i));
            ConnectionService.this.mAdapter.setConnectionProperties(str, i);
        }

        @Override // android.telecom.Connection.Listener
        public void onVideoProviderChanged(Connection connection, Connection.VideoProvider videoProvider) {
            String str = (String) ConnectionService.this.mIdByConnection.get(connection);
            Log.d(this, "onVideoProviderChanged: Connection: %s, VideoProvider: %s", connection, videoProvider);
            ConnectionService.this.mAdapter.setVideoProvider(str, videoProvider);
        }

        @Override // android.telecom.Connection.Listener
        public void onAudioModeIsVoipChanged(Connection connection, boolean z) {
            ConnectionService.this.mAdapter.setIsVoipAudioMode((String) ConnectionService.this.mIdByConnection.get(connection), z);
        }

        @Override // android.telecom.Connection.Listener
        public void onStatusHintsChanged(Connection connection, StatusHints statusHints) {
            ConnectionService.this.mAdapter.setStatusHints((String) ConnectionService.this.mIdByConnection.get(connection), statusHints);
        }

        @Override // android.telecom.Connection.Listener
        public void onConferenceablesChanged(Connection connection, List<Conferenceable> list) {
            ConnectionService.this.mAdapter.setConferenceableConnections((String) ConnectionService.this.mIdByConnection.get(connection), ConnectionService.this.createIdList(list));
        }

        @Override // android.telecom.Connection.Listener
        public void onConferenceChanged(Connection connection, Conference conference) {
            String str = (String) ConnectionService.this.mIdByConnection.get(connection);
            if (str != null) {
                ConnectionService.this.mAdapter.setIsConferenced(str, conference != null ? (String) ConnectionService.this.mIdByConference.get(conference) : null);
            }
        }

        @Override // android.telecom.Connection.Listener
        public void onConferenceMergeFailed(Connection connection) {
            String str = (String) ConnectionService.this.mIdByConnection.get(connection);
            if (str != null) {
                ConnectionService.this.mAdapter.onConferenceMergeFailed(str);
            }
        }

        @Override // android.telecom.Connection.Listener
        public void onExtrasChanged(Connection connection, Bundle bundle) {
            String str = (String) ConnectionService.this.mIdByConnection.get(connection);
            if (str != null) {
                ConnectionService.this.mAdapter.putExtras(str, bundle);
            }
        }

        @Override // android.telecom.Connection.Listener
        public void onExtrasRemoved(Connection connection, List<String> list) {
            String str = (String) ConnectionService.this.mIdByConnection.get(connection);
            if (str != null) {
                ConnectionService.this.mAdapter.removeExtras(str, list);
            }
        }

        @Override // android.telecom.Connection.Listener
        public void onConnectionEvent(Connection connection, String str, Bundle bundle) {
            String str2 = (String) ConnectionService.this.mIdByConnection.get(connection);
            if (str2 != null) {
                ConnectionService.this.mAdapter.onConnectionEvent(str2, str, bundle);
            }
        }

        @Override // android.telecom.Connection.Listener
        public void onAudioRouteChanged(Connection connection, int i, String str) {
            String str2 = (String) ConnectionService.this.mIdByConnection.get(connection);
            if (str2 != null) {
                ConnectionService.this.mAdapter.setAudioRoute(str2, i, str);
            }
        }

        @Override // android.telecom.Connection.Listener
        public void onRttInitiationSuccess(Connection connection) {
            String str = (String) ConnectionService.this.mIdByConnection.get(connection);
            if (str != null) {
                ConnectionService.this.mAdapter.onRttInitiationSuccess(str);
            }
        }

        @Override // android.telecom.Connection.Listener
        public void onRttInitiationFailure(Connection connection, int i) {
            String str = (String) ConnectionService.this.mIdByConnection.get(connection);
            if (str != null) {
                ConnectionService.this.mAdapter.onRttInitiationFailure(str, i);
            }
        }

        @Override // android.telecom.Connection.Listener
        public void onRttSessionRemotelyTerminated(Connection connection) {
            String str = (String) ConnectionService.this.mIdByConnection.get(connection);
            if (str != null) {
                ConnectionService.this.mAdapter.onRttSessionRemotelyTerminated(str);
            }
        }

        @Override // android.telecom.Connection.Listener
        public void onRemoteRttRequest(Connection connection) {
            String str = (String) ConnectionService.this.mIdByConnection.get(connection);
            if (str != null) {
                ConnectionService.this.mAdapter.onRemoteRttRequest(str);
            }
        }

        @Override // android.telecom.Connection.Listener
        public void onPhoneAccountChanged(Connection connection, PhoneAccountHandle phoneAccountHandle) {
            String str = (String) ConnectionService.this.mIdByConnection.get(connection);
            if (str != null) {
                ConnectionService.this.mAdapter.onPhoneAccountChanged(str, phoneAccountHandle);
            }
        }
    };

    public void onConference(Connection connection, Connection connection2) {
    }

    public void onConferenceAdded(Conference conference) {
    }

    public void onConferenceRemoved(Conference conference) {
    }

    public void onConnectionAdded(Connection connection) {
    }

    public void onConnectionRemoved(Connection connection) {
    }

    public void onConnectionServiceFocusGained() {
    }

    public void onConnectionServiceFocusLost() {
    }

    public void onCreateConnectionComplete(Connection connection) {
    }

    public Connection onCreateIncomingConnection(PhoneAccountHandle phoneAccountHandle, ConnectionRequest connectionRequest) {
        return null;
    }

    public void onCreateIncomingConnectionFailed(PhoneAccountHandle phoneAccountHandle, ConnectionRequest connectionRequest) {
    }

    public Connection onCreateIncomingHandoverConnection(PhoneAccountHandle phoneAccountHandle, ConnectionRequest connectionRequest) {
        return null;
    }

    public Connection onCreateOutgoingConnection(PhoneAccountHandle phoneAccountHandle, ConnectionRequest connectionRequest) {
        return null;
    }

    public void onCreateOutgoingConnectionFailed(PhoneAccountHandle phoneAccountHandle, ConnectionRequest connectionRequest) {
    }

    public Connection onCreateOutgoingHandoverConnection(PhoneAccountHandle phoneAccountHandle, ConnectionRequest connectionRequest) {
        return null;
    }

    public Connection onCreateUnknownConnection(PhoneAccountHandle phoneAccountHandle, ConnectionRequest connectionRequest) {
        return null;
    }

    public void onHandoverFailed(ConnectionRequest connectionRequest, int i) {
    }

    public void onRemoteConferenceAdded(RemoteConference remoteConference) {
    }

    public void onRemoteExistingConnectionAdded(RemoteConnection remoteConnection) {
    }

    public void triggerConferenceRecalculate() {
    }

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        return this.mBinder;
    }

    @Override // android.app.Service
    public boolean onUnbind(Intent intent) {
        endAllConnections();
        return super.onUnbind(intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void createConnection(PhoneAccountHandle phoneAccountHandle, String str, ConnectionRequest connectionRequest, boolean z, boolean z2) {
        Connection onCreateOutgoingConnection;
        boolean z3 = connectionRequest.getExtras() != null && connectionRequest.getExtras().getBoolean("android.telecom.extra.IS_HANDOVER", false);
        boolean z4 = connectionRequest.getExtras() != null && connectionRequest.getExtras().getBoolean(TelecomManager.EXTRA_IS_HANDOVER_CONNECTION, false);
        Log.d(this, "createConnection, callManagerAccount: %s, callId: %s, request: %s, isIncoming: %b, isUnknown: %b, isLegacyHandover: %b, isHandover: %b", phoneAccountHandle, str, connectionRequest, Boolean.valueOf(z), Boolean.valueOf(z2), Boolean.valueOf(z3), Boolean.valueOf(z4));
        if (z4) {
            PhoneAccountHandle phoneAccountHandle2 = connectionRequest.getExtras() != null ? (PhoneAccountHandle) connectionRequest.getExtras().getParcelable(TelecomManager.EXTRA_HANDOVER_FROM_PHONE_ACCOUNT) : null;
            if (!z) {
                onCreateOutgoingConnection = onCreateOutgoingHandoverConnection(phoneAccountHandle2, connectionRequest);
            } else {
                onCreateOutgoingConnection = onCreateIncomingHandoverConnection(phoneAccountHandle2, connectionRequest);
            }
        } else if (z2) {
            onCreateOutgoingConnection = onCreateUnknownConnection(phoneAccountHandle, connectionRequest);
        } else if (z) {
            onCreateOutgoingConnection = onCreateIncomingConnection(phoneAccountHandle, connectionRequest);
        } else {
            onCreateOutgoingConnection = onCreateOutgoingConnection(phoneAccountHandle, connectionRequest);
        }
        Log.d(this, "createConnection, connection: %s", onCreateOutgoingConnection);
        if (onCreateOutgoingConnection == null) {
            Log.i(this, "createConnection, implementation returned null connection.", new Object[0]);
            onCreateOutgoingConnection = Connection.createFailedConnection(new DisconnectCause(1, "IMPL_RETURNED_NULL_CONNECTION"));
        }
        onCreateOutgoingConnection.setTelecomCallId(str);
        if (onCreateOutgoingConnection.getState() != 6) {
            addConnection(connectionRequest.getAccountHandle(), str, onCreateOutgoingConnection);
        }
        Uri address = onCreateOutgoingConnection.getAddress();
        Log.v(this, "createConnection, number: %s, state: %s, capabilities: %s, properties: %s", Connection.toLogSafePhoneNumber(address == null ? "null" : address.getSchemeSpecificPart()), Connection.stateToString(onCreateOutgoingConnection.getState()), Connection.capabilitiesToString(onCreateOutgoingConnection.getConnectionCapabilities()), Connection.propertiesToString(onCreateOutgoingConnection.getConnectionProperties()));
        Log.d(this, "createConnection, calling handleCreateConnectionSuccessful %s", str);
        this.mAdapter.handleCreateConnectionComplete(str, connectionRequest, new ParcelableConnection(connectionRequest.getAccountHandle(), onCreateOutgoingConnection.getState(), onCreateOutgoingConnection.getConnectionCapabilities(), onCreateOutgoingConnection.getConnectionProperties(), onCreateOutgoingConnection.getSupportedAudioRoutes(), onCreateOutgoingConnection.getAddress(), onCreateOutgoingConnection.getAddressPresentation(), onCreateOutgoingConnection.getCallerDisplayName(), onCreateOutgoingConnection.getCallerDisplayNamePresentation(), onCreateOutgoingConnection.getVideoProvider() != null ? onCreateOutgoingConnection.getVideoProvider().getInterface() : null, onCreateOutgoingConnection.getVideoState(), onCreateOutgoingConnection.isRingbackRequested(), onCreateOutgoingConnection.getAudioModeIsVoip(), onCreateOutgoingConnection.getConnectTimeMillis(), onCreateOutgoingConnection.getConnectElapsedTimeMillis(), onCreateOutgoingConnection.getStatusHints(), onCreateOutgoingConnection.getDisconnectCause(), createIdList(onCreateOutgoingConnection.getConferenceables()), onCreateOutgoingConnection.getExtras()));
        if (z && connectionRequest.shouldShowIncomingCallUi() && (onCreateOutgoingConnection.getConnectionProperties() & 128) == 128) {
            onCreateOutgoingConnection.onShowIncomingCallUi();
        }
        if (z2) {
            triggerConferenceRecalculate();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void createConnectionFailed(PhoneAccountHandle phoneAccountHandle, String str, ConnectionRequest connectionRequest, boolean z) {
        Log.i(this, "createConnectionFailed %s", str);
        if (z) {
            onCreateIncomingConnectionFailed(phoneAccountHandle, connectionRequest);
        } else {
            onCreateOutgoingConnectionFailed(phoneAccountHandle, connectionRequest);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handoverFailed(String str, ConnectionRequest connectionRequest, int i) {
        Log.i(this, "handoverFailed %s", str);
        onHandoverFailed(connectionRequest, i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyCreateConnectionComplete(String str) {
        Log.i(this, "notifyCreateConnectionComplete %s", str);
        if (str == null) {
            Log.w(this, "notifyCreateConnectionComplete: callId is null.", new Object[0]);
        } else {
            onCreateConnectionComplete(findConnectionForAction(str, "notifyCreateConnectionComplete"));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void abort(String str) {
        Log.d(this, "abort %s", str);
        findConnectionForAction(str, "abort").onAbort();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void answerVideo(String str, int i) {
        Log.d(this, "answerVideo %s", str);
        findConnectionForAction(str, "answer").onAnswer(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void answer(String str) {
        Log.d(this, "answer %s", str);
        findConnectionForAction(str, "answer").onAnswer();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void deflect(String str, Uri uri) {
        Log.d(this, "deflect %s", str);
        findConnectionForAction(str, "deflect").onDeflect(uri);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void reject(String str) {
        Log.d(this, "reject %s", str);
        findConnectionForAction(str, "reject").onReject();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void reject(String str, String str2) {
        Log.d(this, "reject %s with message", str);
        findConnectionForAction(str, "reject").onReject(str2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void silence(String str) {
        Log.d(this, "silence %s", str);
        findConnectionForAction(str, "silence").onSilence();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void disconnect(String str) {
        Log.d(this, "disconnect %s", str);
        if (this.mConnectionById.containsKey(str)) {
            findConnectionForAction(str, "disconnect").onDisconnect();
        } else {
            findConferenceForAction(str, "disconnect").onDisconnect();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hold(String str) {
        Log.d(this, "hold %s", str);
        if (this.mConnectionById.containsKey(str)) {
            findConnectionForAction(str, "hold").onHold();
        } else {
            findConferenceForAction(str, "hold").onHold();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void unhold(String str) {
        Log.d(this, "unhold %s", str);
        if (this.mConnectionById.containsKey(str)) {
            findConnectionForAction(str, "unhold").onUnhold();
        } else {
            findConferenceForAction(str, "unhold").onUnhold();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onCallAudioStateChanged(String str, CallAudioState callAudioState) {
        Log.d(this, "onAudioStateChanged %s %s", str, callAudioState);
        if (this.mConnectionById.containsKey(str)) {
            findConnectionForAction(str, "onCallAudioStateChanged").setCallAudioState(callAudioState);
        } else {
            findConferenceForAction(str, "onCallAudioStateChanged").setCallAudioState(callAudioState);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void playDtmfTone(String str, char c) {
        Log.d(this, "playDtmfTone %s %c", str, Character.valueOf(c));
        if (this.mConnectionById.containsKey(str)) {
            findConnectionForAction(str, "playDtmfTone").onPlayDtmfTone(c);
        } else {
            findConferenceForAction(str, "playDtmfTone").onPlayDtmfTone(c);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void stopDtmfTone(String str) {
        Log.d(this, "stopDtmfTone %s", str);
        if (this.mConnectionById.containsKey(str)) {
            findConnectionForAction(str, "stopDtmfTone").onStopDtmfTone();
        } else {
            findConferenceForAction(str, "stopDtmfTone").onStopDtmfTone();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void conference(String str, String str2) {
        Log.d(this, "conference %s, %s", str, str2);
        Connection findConnectionForAction = findConnectionForAction(str2, ImsCallProfile.EXTRA_CONFERENCE);
        Conference nullConference = getNullConference();
        if (findConnectionForAction == getNullConnection() && (nullConference = findConferenceForAction(str2, ImsCallProfile.EXTRA_CONFERENCE)) == getNullConference()) {
            Log.w(this, "Connection2 or Conference2 missing in conference request %s.", str2);
            return;
        }
        Connection findConnectionForAction2 = findConnectionForAction(str, ImsCallProfile.EXTRA_CONFERENCE);
        if (findConnectionForAction2 == getNullConnection()) {
            Conference findConferenceForAction = findConferenceForAction(str, "addConnection");
            if (findConferenceForAction == getNullConference()) {
                Log.w(this, "Connection1 or Conference1 missing in conference request %s.", str);
                return;
            } else if (findConnectionForAction != getNullConnection()) {
                findConferenceForAction.onMerge(findConnectionForAction);
                return;
            } else {
                Log.wtf(this, "There can only be one conference and an attempt was made to merge two conferences.", new Object[0]);
                return;
            }
        }
        if (nullConference != getNullConference()) {
            nullConference.onMerge(findConnectionForAction2);
        } else {
            onConference(findConnectionForAction2, findConnectionForAction);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void splitFromConference(String str) {
        Log.d(this, "splitFromConference(%s)", str);
        Connection findConnectionForAction = findConnectionForAction(str, "splitFromConference");
        if (findConnectionForAction == getNullConnection()) {
            Log.w(this, "Connection missing in conference request %s.", str);
            return;
        }
        Conference conference = findConnectionForAction.getConference();
        if (conference != null) {
            conference.onSeparate(findConnectionForAction);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void mergeConference(String str) {
        Log.d(this, "mergeConference(%s)", str);
        Conference findConferenceForAction = findConferenceForAction(str, "mergeConference");
        if (findConferenceForAction != null) {
            findConferenceForAction.onMerge();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void swapConference(String str) {
        Log.d(this, "swapConference(%s)", str);
        Conference findConferenceForAction = findConferenceForAction(str, "swapConference");
        if (findConferenceForAction != null) {
            findConferenceForAction.onSwap();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void pullExternalCall(String str) {
        Log.d(this, "pullExternalCall(%s)", str);
        Connection findConnectionForAction = findConnectionForAction(str, "pullExternalCall");
        if (findConnectionForAction != null) {
            findConnectionForAction.onPullExternalCall();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendCallEvent(String str, String str2, Bundle bundle) {
        Log.d(this, "sendCallEvent(%s, %s)", str, str2);
        Connection findConnectionForAction = findConnectionForAction(str, "sendCallEvent");
        if (findConnectionForAction != null) {
            findConnectionForAction.onCallEvent(str2, bundle);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyHandoverComplete(String str) {
        Log.d(this, "notifyHandoverComplete(%s)", str);
        Connection findConnectionForAction = findConnectionForAction(str, "notifyHandoverComplete");
        if (findConnectionForAction != null) {
            findConnectionForAction.onHandoverComplete();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleExtrasChanged(String str, Bundle bundle) {
        Log.d(this, "handleExtrasChanged(%s, %s)", str, bundle);
        if (this.mConnectionById.containsKey(str)) {
            findConnectionForAction(str, "handleExtrasChanged").handleExtrasChanged(bundle);
        } else if (this.mConferenceById.containsKey(str)) {
            findConferenceForAction(str, "handleExtrasChanged").handleExtrasChanged(bundle);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startRtt(String str, Connection.RttTextStream rttTextStream) {
        Log.d(this, "startRtt(%s)", str);
        if (this.mConnectionById.containsKey(str)) {
            findConnectionForAction(str, "startRtt").onStartRtt(rttTextStream);
        } else if (this.mConferenceById.containsKey(str)) {
            Log.w(this, "startRtt called on a conference.", new Object[0]);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void stopRtt(String str) {
        Log.d(this, "stopRtt(%s)", str);
        if (this.mConnectionById.containsKey(str)) {
            findConnectionForAction(str, "stopRtt").onStopRtt();
        } else if (this.mConferenceById.containsKey(str)) {
            Log.w(this, "stopRtt called on a conference.", new Object[0]);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleRttUpgradeResponse(String str, Connection.RttTextStream rttTextStream) {
        Object[] objArr = new Object[2];
        objArr[0] = str;
        objArr[1] = Boolean.valueOf(rttTextStream == null);
        Log.d(this, "handleRttUpgradeResponse(%s, %s)", objArr);
        if (this.mConnectionById.containsKey(str)) {
            findConnectionForAction(str, "handleRttUpgradeResponse").handleRttUpgradeResponse(rttTextStream);
        } else if (this.mConferenceById.containsKey(str)) {
            Log.w(this, "handleRttUpgradeResponse called on a conference.", new Object[0]);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onPostDialContinue(String str, boolean z) {
        Log.d(this, "onPostDialContinue(%s)", str);
        findConnectionForAction(str, "stopDtmfTone").onPostDialContinue(z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onAdapterAttached() {
        if (this.mAreAccountsInitialized) {
            return;
        }
        this.mAdapter.queryRemoteConnectionServices(new RemoteServiceCallback.Stub() { // from class: android.telecom.ConnectionService.5
            public void onResult(final List<ComponentName> list, final List<IBinder> list2) {
                ConnectionService.this.mHandler.post(new Runnable("oAA.qRCS.oR", null) { // from class: android.telecom.ConnectionService.5.1
                    @Override // android.telecom.Logging.Runnable
                    public void loggedRun() {
                        for (int i = 0; i < list.size() && i < list2.size(); i++) {
                            ConnectionService.this.mRemoteConnectionManager.addConnectionService((ComponentName) list.get(i), IConnectionService.Stub.asInterface((IBinder) list2.get(i)));
                        }
                        ConnectionService.this.onAccountsInitialized();
                        Log.d(this, "remote connection services found: " + list2, new Object[0]);
                    }
                }.prepare());
            }

            public void onError() {
                ConnectionService.this.mHandler.post(new Runnable("oAA.qRCS.oE", null) { // from class: android.telecom.ConnectionService.5.2
                    @Override // android.telecom.Logging.Runnable
                    public void loggedRun() {
                        ConnectionService.this.mAreAccountsInitialized = true;
                    }
                }.prepare());
            }
        });
    }

    public final RemoteConnection createRemoteIncomingConnection(PhoneAccountHandle phoneAccountHandle, ConnectionRequest connectionRequest) {
        return this.mRemoteConnectionManager.createRemoteConnection(phoneAccountHandle, connectionRequest, true);
    }

    public final RemoteConnection createRemoteOutgoingConnection(PhoneAccountHandle phoneAccountHandle, ConnectionRequest connectionRequest) {
        return this.mRemoteConnectionManager.createRemoteConnection(phoneAccountHandle, connectionRequest, false);
    }

    public final void conferenceRemoteConnections(RemoteConnection remoteConnection, RemoteConnection remoteConnection2) {
        this.mRemoteConnectionManager.conferenceRemoteConnections(remoteConnection, remoteConnection2);
    }

    public final void addConference(Conference conference) {
        Log.d(this, "addConference: conference=%s", conference);
        String addConferenceInternal = addConferenceInternal(conference);
        if (addConferenceInternal != null) {
            ArrayList arrayList = new ArrayList(2);
            for (Connection connection : conference.getConnections()) {
                if (this.mIdByConnection.containsKey(connection)) {
                    arrayList.add(this.mIdByConnection.get(connection));
                }
            }
            conference.setTelecomCallId(addConferenceInternal);
            this.mAdapter.addConferenceCall(addConferenceInternal, new ParcelableConference(conference.getPhoneAccountHandle(), conference.getState(), conference.getConnectionCapabilities(), conference.getConnectionProperties(), arrayList, conference.getVideoProvider() == null ? null : conference.getVideoProvider().getInterface(), conference.getVideoState(), conference.getConnectTimeMillis(), conference.getConnectionStartElapsedRealTime(), conference.getStatusHints(), conference.getExtras()));
            this.mAdapter.setVideoProvider(addConferenceInternal, conference.getVideoProvider());
            this.mAdapter.setVideoState(addConferenceInternal, conference.getVideoState());
            Iterator<Connection> it = conference.getConnections().iterator();
            while (it.hasNext()) {
                String str = this.mIdByConnection.get(it.next());
                if (str != null) {
                    this.mAdapter.setIsConferenced(str, addConferenceInternal);
                }
            }
            onConferenceAdded(conference);
        }
    }

    public final void addExistingConnection(PhoneAccountHandle phoneAccountHandle, Connection connection) {
        addExistingConnection(phoneAccountHandle, connection, null);
    }

    public final void connectionServiceFocusReleased() {
        this.mAdapter.onConnectionServiceFocusReleased();
    }

    public final void addExistingConnection(PhoneAccountHandle phoneAccountHandle, Connection connection, Conference conference) {
        String addExistingConnectionInternal = addExistingConnectionInternal(phoneAccountHandle, connection);
        if (addExistingConnectionInternal != null) {
            this.mAdapter.addExistingConnection(addExistingConnectionInternal, new ParcelableConnection(phoneAccountHandle, connection.getState(), connection.getConnectionCapabilities(), connection.getConnectionProperties(), connection.getSupportedAudioRoutes(), connection.getAddress(), connection.getAddressPresentation(), connection.getCallerDisplayName(), connection.getCallerDisplayNamePresentation(), connection.getVideoProvider() != null ? connection.getVideoProvider().getInterface() : null, connection.getVideoState(), connection.isRingbackRequested(), connection.getAudioModeIsVoip(), connection.getConnectTimeMillis(), connection.getConnectElapsedTimeMillis(), connection.getStatusHints(), connection.getDisconnectCause(), new ArrayList(0), connection.getExtras(), conference != null ? this.mIdByConference.get(conference) : null));
        }
    }

    public final Collection<Connection> getAllConnections() {
        return this.mConnectionById.values();
    }

    public final Collection<Conference> getAllConferences() {
        return this.mConferenceById.values();
    }

    public boolean containsConference(Conference conference) {
        return this.mIdByConference.containsKey(conference);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void addRemoteConference(RemoteConference remoteConference) {
        onRemoteConferenceAdded(remoteConference);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void addRemoteExistingConnection(RemoteConnection remoteConnection) {
        onRemoteExistingConnectionAdded(remoteConnection);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onAccountsInitialized() {
        this.mAreAccountsInitialized = true;
        Iterator<Runnable> it = this.mPreInitializationConnectionRequests.iterator();
        while (it.hasNext()) {
            it.next().run();
        }
        this.mPreInitializationConnectionRequests.clear();
    }

    private String addExistingConnectionInternal(PhoneAccountHandle phoneAccountHandle, Connection connection) {
        String str;
        if (connection.getExtras() != null && connection.getExtras().containsKey(Connection.EXTRA_ORIGINAL_CONNECTION_ID)) {
            str = connection.getExtras().getString(Connection.EXTRA_ORIGINAL_CONNECTION_ID);
            Log.d(this, "addExistingConnectionInternal - conn %s reusing original id %s", connection.getTelecomCallId(), str);
        } else if (phoneAccountHandle == null) {
            str = UUID.randomUUID().toString();
        } else {
            str = phoneAccountHandle.getComponentName().getClassName() + "@" + getNextCallId();
        }
        addConnection(phoneAccountHandle, str, connection);
        return str;
    }

    private void addConnection(PhoneAccountHandle phoneAccountHandle, String str, Connection connection) {
        connection.setTelecomCallId(str);
        this.mConnectionById.put(str, connection);
        this.mIdByConnection.put(connection, str);
        connection.addConnectionListener(this.mConnectionListener);
        connection.setConnectionService(this);
        connection.setPhoneAccountHandle(phoneAccountHandle);
        onConnectionAdded(connection);
    }

    protected void removeConnection(Connection connection) {
        connection.unsetConnectionService(this);
        connection.removeConnectionListener(this.mConnectionListener);
        String str = this.mIdByConnection.get(connection);
        if (str != null) {
            this.mConnectionById.remove(str);
            this.mIdByConnection.remove(connection);
            this.mAdapter.removeCall(str);
            onConnectionRemoved(connection);
        }
    }

    private String addConferenceInternal(Conference conference) {
        String str;
        if (conference.getExtras() == null || !conference.getExtras().containsKey(Connection.EXTRA_ORIGINAL_CONNECTION_ID)) {
            str = null;
        } else {
            str = conference.getExtras().getString(Connection.EXTRA_ORIGINAL_CONNECTION_ID);
            Log.d(this, "addConferenceInternal: conf %s reusing original id %s", conference.getTelecomCallId(), str);
        }
        if (this.mIdByConference.containsKey(conference)) {
            Log.w(this, "Re-adding an existing conference: %s.", conference);
        } else if (conference != null) {
            if (str == null) {
                str = UUID.randomUUID().toString();
            }
            this.mConferenceById.put(str, conference);
            this.mIdByConference.put(conference, str);
            conference.addListener(this.mConferenceListener);
            return str;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeConference(Conference conference) {
        if (this.mIdByConference.containsKey(conference)) {
            conference.removeListener(this.mConferenceListener);
            String str = this.mIdByConference.get(conference);
            this.mConferenceById.remove(str);
            this.mIdByConference.remove(conference);
            this.mAdapter.removeCall(str);
            onConferenceRemoved(conference);
        }
    }

    private Connection findConnectionForAction(String str, String str2) {
        if (str != null && this.mConnectionById.containsKey(str)) {
            return this.mConnectionById.get(str);
        }
        Log.w(this, "%s - Cannot find Connection %s", str2, str);
        return getNullConnection();
    }

    static synchronized Connection getNullConnection() {
        Connection connection;
        synchronized (ConnectionService.class) {
            if (sNullConnection == null) {
                sNullConnection = new Connection() { // from class: android.telecom.ConnectionService.6
                };
            }
            connection = sNullConnection;
        }
        return connection;
    }

    private Conference findConferenceForAction(String str, String str2) {
        if (this.mConferenceById.containsKey(str)) {
            return this.mConferenceById.get(str);
        }
        Log.w(this, "%s - Cannot find conference %s", str2, str);
        return getNullConference();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public List<String> createConnectionIdList(List<Connection> list) {
        ArrayList arrayList = new ArrayList();
        for (Connection connection : list) {
            if (this.mIdByConnection.containsKey(connection)) {
                arrayList.add(this.mIdByConnection.get(connection));
            }
        }
        Collections.sort(arrayList);
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public List<String> createIdList(List<Conferenceable> list) {
        ArrayList arrayList = new ArrayList();
        for (Conferenceable conferenceable : list) {
            if (conferenceable instanceof Connection) {
                Connection connection = (Connection) conferenceable;
                if (this.mIdByConnection.containsKey(connection)) {
                    arrayList.add(this.mIdByConnection.get(connection));
                }
            } else if (conferenceable instanceof Conference) {
                Conference conference = (Conference) conferenceable;
                if (this.mIdByConference.containsKey(conference)) {
                    arrayList.add(this.mIdByConference.get(conference));
                }
            }
        }
        Collections.sort(arrayList);
        return arrayList;
    }

    private Conference getNullConference() {
        if (this.sNullConference == null) {
            this.sNullConference = new Conference(null) { // from class: android.telecom.ConnectionService.7
            };
        }
        return this.sNullConference;
    }

    private void endAllConnections() {
        for (Connection connection : this.mIdByConnection.keySet()) {
            if (connection.getConference() == null) {
                connection.onDisconnect();
            }
        }
        Iterator<Conference> it = this.mIdByConference.keySet().iterator();
        while (it.hasNext()) {
            it.next().onDisconnect();
        }
    }

    private int getNextCallId() {
        int i;
        synchronized (this.mIdSyncRoot) {
            i = this.mId + 1;
            this.mId = i;
        }
        return i;
    }
}
