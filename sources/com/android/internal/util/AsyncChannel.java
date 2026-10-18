package com.android.internal.util;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.util.Slog;
import java.util.Objects;
import java.util.Stack;

/* loaded from: /home/user/work/dex/classes3.dex */
public class AsyncChannel {
    private static final int BASE = 69632;
    public static final int CMD_CHANNEL_DISCONNECT = 69635;
    public static final int CMD_CHANNEL_DISCONNECTED = 69636;
    public static final int CMD_CHANNEL_FULLY_CONNECTED = 69634;
    public static final int CMD_CHANNEL_FULL_CONNECTION = 69633;
    public static final int CMD_CHANNEL_HALF_CONNECTED = 69632;
    private static final int CMD_TO_STRING_COUNT = 5;
    private static final boolean DBG = false;
    public static final int STATUS_BINDING_UNSUCCESSFUL = 1;
    public static final int STATUS_FULL_CONNECTION_REFUSED_ALREADY_CONNECTED = 3;
    public static final int STATUS_REMOTE_DISCONNECTION = 4;
    public static final int STATUS_SEND_UNSUCCESSFUL = 2;
    public static final int STATUS_SUCCESSFUL = 0;
    private static final String TAG = "AsyncChannel";
    private static String[] sCmdToString = new String[5];
    private AsyncChannelConnection mConnection;
    private DeathMonitor mDeathMonitor;
    private Messenger mDstMessenger;
    private Context mSrcContext;
    private Handler mSrcHandler;
    private Messenger mSrcMessenger;

    static {
        sCmdToString[0] = "CMD_CHANNEL_HALF_CONNECTED";
        sCmdToString[1] = "CMD_CHANNEL_FULL_CONNECTION";
        sCmdToString[2] = "CMD_CHANNEL_FULLY_CONNECTED";
        sCmdToString[3] = "CMD_CHANNEL_DISCONNECT";
        sCmdToString[4] = "CMD_CHANNEL_DISCONNECTED";
    }

    protected static String cmdToString(int i) {
        int i2 = i - 69632;
        if (i2 < 0 || i2 >= sCmdToString.length) {
            return null;
        }
        return sCmdToString[i2];
    }

    public int connectSrcHandlerToPackageSync(Context context, Handler handler, String str, String str2) {
        this.mConnection = new AsyncChannelConnection();
        this.mSrcContext = context;
        this.mSrcHandler = handler;
        this.mSrcMessenger = new Messenger(handler);
        this.mDstMessenger = null;
        Intent intent = new Intent("android.intent.action.MAIN");
        intent.setClassName(str, str2);
        return !context.bindService(intent, this.mConnection, 1) ? 1 : 0;
    }

    public int connectSync(Context context, Handler handler, Messenger messenger) {
        connected(context, handler, messenger);
        return 0;
    }

    public int connectSync(Context context, Handler handler, Handler handler2) {
        return connectSync(context, handler, new Messenger(handler2));
    }

    public int fullyConnectSync(Context context, Handler handler, Handler handler2) {
        int connectSync = connectSync(context, handler, handler2);
        return connectSync == 0 ? sendMessageSynchronously(CMD_CHANNEL_FULL_CONNECTION).arg1 : connectSync;
    }

    public void connect(Context context, Handler handler, String str, String str2) {
        new Thread(new Runnable(context, handler, str, str2) { // from class: com.android.internal.util.AsyncChannel.1ConnectAsync
            String mDstClassName;
            String mDstPackageName;
            Context mSrcCtx;
            Handler mSrcHdlr;

            {
                this.mSrcCtx = context;
                this.mSrcHdlr = handler;
                this.mDstPackageName = str;
                this.mDstClassName = str2;
            }

            @Override // java.lang.Runnable
            public void run() {
                AsyncChannel.this.replyHalfConnected(AsyncChannel.this.connectSrcHandlerToPackageSync(this.mSrcCtx, this.mSrcHdlr, this.mDstPackageName, this.mDstClassName));
            }
        }).start();
    }

    public void connect(Context context, Handler handler, Class<?> cls) {
        connect(context, handler, cls.getPackage().getName(), cls.getName());
    }

    public void connect(Context context, Handler handler, Messenger messenger) {
        connected(context, handler, messenger);
        replyHalfConnected(0);
    }

    public void connected(Context context, Handler handler, Messenger messenger) {
        this.mSrcContext = context;
        this.mSrcHandler = handler;
        this.mSrcMessenger = new Messenger(this.mSrcHandler);
        this.mDstMessenger = messenger;
    }

    public void connect(Context context, Handler handler, Handler handler2) {
        connect(context, handler, new Messenger(handler2));
    }

    public void connect(AsyncService asyncService, Messenger messenger) {
        connect(asyncService, asyncService.getHandler(), messenger);
    }

    public void disconnected() {
        this.mSrcContext = null;
        this.mSrcHandler = null;
        this.mSrcMessenger = null;
        this.mDstMessenger = null;
        this.mDeathMonitor = null;
        this.mConnection = null;
    }

    public void disconnect() {
        if (this.mConnection != null && this.mSrcContext != null) {
            this.mSrcContext.unbindService(this.mConnection);
            this.mConnection = null;
        }
        try {
            Message obtain = Message.obtain();
            obtain.what = CMD_CHANNEL_DISCONNECTED;
            obtain.replyTo = this.mSrcMessenger;
            this.mDstMessenger.send(obtain);
        } catch (Exception unused) {
        }
        replyDisconnected(0);
        this.mSrcHandler = null;
        if (this.mConnection != null || this.mDstMessenger == null || this.mDeathMonitor == null) {
            return;
        }
        this.mDstMessenger.getBinder().unlinkToDeath(this.mDeathMonitor, 0);
        this.mDeathMonitor = null;
    }

    public void sendMessage(Message message) {
        message.replyTo = this.mSrcMessenger;
        try {
            this.mDstMessenger.send(message);
        } catch (RemoteException unused) {
            replyDisconnected(2);
        }
    }

    public void sendMessage(int i) {
        Message obtain = Message.obtain();
        obtain.what = i;
        sendMessage(obtain);
    }

    public void sendMessage(int i, int i2) {
        Message obtain = Message.obtain();
        obtain.what = i;
        obtain.arg1 = i2;
        sendMessage(obtain);
    }

    public void sendMessage(int i, int i2, int i3) {
        Message obtain = Message.obtain();
        obtain.what = i;
        obtain.arg1 = i2;
        obtain.arg2 = i3;
        sendMessage(obtain);
    }

    public void sendMessage(int i, int i2, int i3, Object obj) {
        Message obtain = Message.obtain();
        obtain.what = i;
        obtain.arg1 = i2;
        obtain.arg2 = i3;
        obtain.obj = obj;
        sendMessage(obtain);
    }

    public void sendMessage(int i, Object obj) {
        Message obtain = Message.obtain();
        obtain.what = i;
        obtain.obj = obj;
        sendMessage(obtain);
    }

    public void replyToMessage(Message message, Message message2) {
        try {
            message2.replyTo = this.mSrcMessenger;
            message.replyTo.send(message2);
        } catch (RemoteException e) {
            log("TODO: handle replyToMessage RemoteException" + e);
            e.printStackTrace();
        }
    }

    public void replyToMessage(Message message, int i) {
        Message obtain = Message.obtain();
        obtain.what = i;
        replyToMessage(message, obtain);
    }

    public void replyToMessage(Message message, int i, int i2) {
        Message obtain = Message.obtain();
        obtain.what = i;
        obtain.arg1 = i2;
        replyToMessage(message, obtain);
    }

    public void replyToMessage(Message message, int i, int i2, int i3) {
        Message obtain = Message.obtain();
        obtain.what = i;
        obtain.arg1 = i2;
        obtain.arg2 = i3;
        replyToMessage(message, obtain);
    }

    public void replyToMessage(Message message, int i, int i2, int i3, Object obj) {
        Message obtain = Message.obtain();
        obtain.what = i;
        obtain.arg1 = i2;
        obtain.arg2 = i3;
        obtain.obj = obj;
        replyToMessage(message, obtain);
    }

    public void replyToMessage(Message message, int i, Object obj) {
        Message obtain = Message.obtain();
        obtain.what = i;
        obtain.obj = obj;
        replyToMessage(message, obtain);
    }

    public Message sendMessageSynchronously(Message message) {
        return SyncMessenger.sendMessageSynchronously(this.mDstMessenger, message);
    }

    public Message sendMessageSynchronously(int i) {
        Message obtain = Message.obtain();
        obtain.what = i;
        return sendMessageSynchronously(obtain);
    }

    public Message sendMessageSynchronously(int i, int i2) {
        Message obtain = Message.obtain();
        obtain.what = i;
        obtain.arg1 = i2;
        return sendMessageSynchronously(obtain);
    }

    public Message sendMessageSynchronously(int i, int i2, int i3) {
        Message obtain = Message.obtain();
        obtain.what = i;
        obtain.arg1 = i2;
        obtain.arg2 = i3;
        return sendMessageSynchronously(obtain);
    }

    public Message sendMessageSynchronously(int i, int i2, int i3, Object obj) {
        Message obtain = Message.obtain();
        obtain.what = i;
        obtain.arg1 = i2;
        obtain.arg2 = i3;
        obtain.obj = obj;
        return sendMessageSynchronously(obtain);
    }

    public Message sendMessageSynchronously(int i, Object obj) {
        Message obtain = Message.obtain();
        obtain.what = i;
        obtain.obj = obj;
        return sendMessageSynchronously(obtain);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes3.dex */
    public static class SyncMessenger {
        private SyncHandler mHandler;
        private HandlerThread mHandlerThread;
        private Messenger mMessenger;
        private static Stack<SyncMessenger> sStack = new Stack<>();
        private static int sCount = 0;

        private SyncMessenger() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: /home/user/work/dex/classes3.dex */
        public class SyncHandler extends Handler {
            private Object mLockObject;
            private Message mResultMsg;

            private SyncHandler(Looper looper) {
                super(looper);
                this.mLockObject = new Object();
            }

            @Override // android.os.Handler
            public void handleMessage(Message message) {
                Message obtain = Message.obtain();
                obtain.copyFrom(message);
                synchronized (this.mLockObject) {
                    this.mResultMsg = obtain;
                    this.mLockObject.notify();
                }
            }
        }

        private static SyncMessenger obtain() {
            SyncMessenger pop;
            synchronized (sStack) {
                if (sStack.isEmpty()) {
                    pop = new SyncMessenger();
                    StringBuilder sb = new StringBuilder();
                    sb.append("SyncHandler-");
                    int i = sCount;
                    sCount = i + 1;
                    sb.append(i);
                    pop.mHandlerThread = new HandlerThread(sb.toString());
                    pop.mHandlerThread.start();
                    Objects.requireNonNull(pop);
                    pop.mHandler = new SyncHandler(pop.mHandlerThread.getLooper());
                    pop.mMessenger = new Messenger(pop.mHandler);
                } else {
                    pop = sStack.pop();
                }
            }
            return pop;
        }

        private void recycle() {
            synchronized (sStack) {
                sStack.push(this);
            }
        }

        /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
            jadx.core.utils.exceptions.JadxRuntimeException: Can't find top splitter block for handler:B:22:0x0046
            	at jadx.core.utils.BlockUtils.getTopSplitterForHandler(BlockUtils.java:1166)
            	at jadx.core.dex.visitors.regions.RegionMaker.processTryCatchBlocks(RegionMaker.java:1022)
            	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:55)
            */
        /* JADX INFO: Access modifiers changed from: private */
        public static android.os.Message sendMessageSynchronously(android.os.Messenger r5, android.os.Message r6) {
            /*
                com.android.internal.util.AsyncChannel$SyncMessenger r0 = obtain()
                r1 = 0
                if (r5 == 0) goto L5a
                if (r6 == 0) goto L5a
                android.os.Messenger r2 = r0.mMessenger     // Catch: android.os.RemoteException -> L49 java.lang.InterruptedException -> L52
                r6.replyTo = r2     // Catch: android.os.RemoteException -> L49 java.lang.InterruptedException -> L52
                com.android.internal.util.AsyncChannel$SyncMessenger$SyncHandler r2 = r0.mHandler     // Catch: android.os.RemoteException -> L49 java.lang.InterruptedException -> L52
                java.lang.Object r2 = com.android.internal.util.AsyncChannel.SyncMessenger.SyncHandler.access$300(r2)     // Catch: android.os.RemoteException -> L49 java.lang.InterruptedException -> L52
                monitor-enter(r2)     // Catch: android.os.RemoteException -> L49 java.lang.InterruptedException -> L52
                com.android.internal.util.AsyncChannel$SyncMessenger$SyncHandler r3 = r0.mHandler     // Catch: java.lang.Throwable -> L46
                android.os.Message r3 = com.android.internal.util.AsyncChannel.SyncMessenger.SyncHandler.access$400(r3)     // Catch: java.lang.Throwable -> L46
                if (r3 == 0) goto L28
                java.lang.String r3 = "AsyncChannel"
                java.lang.String r4 = "mResultMsg should be null here"
                android.util.Slog.wtf(r3, r4)     // Catch: java.lang.Throwable -> L46
                com.android.internal.util.AsyncChannel$SyncMessenger$SyncHandler r3 = r0.mHandler     // Catch: java.lang.Throwable -> L46
                com.android.internal.util.AsyncChannel.SyncMessenger.SyncHandler.access$402(r3, r1)     // Catch: java.lang.Throwable -> L46
            L28:
                r5.send(r6)     // Catch: java.lang.Throwable -> L46
                com.android.internal.util.AsyncChannel$SyncMessenger$SyncHandler r5 = r0.mHandler     // Catch: java.lang.Throwable -> L46
                java.lang.Object r5 = com.android.internal.util.AsyncChannel.SyncMessenger.SyncHandler.access$300(r5)     // Catch: java.lang.Throwable -> L46
                r5.wait()     // Catch: java.lang.Throwable -> L46
                com.android.internal.util.AsyncChannel$SyncMessenger$SyncHandler r5 = r0.mHandler     // Catch: java.lang.Throwable -> L46
                android.os.Message r5 = com.android.internal.util.AsyncChannel.SyncMessenger.SyncHandler.access$400(r5)     // Catch: java.lang.Throwable -> L46
                com.android.internal.util.AsyncChannel$SyncMessenger$SyncHandler r6 = r0.mHandler     // Catch: java.lang.Throwable -> L42
                com.android.internal.util.AsyncChannel.SyncMessenger.SyncHandler.access$402(r6, r1)     // Catch: java.lang.Throwable -> L42
                monitor-exit(r2)     // Catch: java.lang.Throwable -> L42
                r1 = r5
                goto L5a
            L42:
                r6 = move-exception
                r1 = r5
                r5 = r6
                goto L47
            L46:
                r5 = move-exception
            L47:
                monitor-exit(r2)     // Catch: java.lang.Throwable -> L46
                throw r5     // Catch: android.os.RemoteException -> L49 java.lang.InterruptedException -> L52
            L49:
                r5 = move-exception
                java.lang.String r6 = "AsyncChannel"
                java.lang.String r2 = "error in sendMessageSynchronously"
                android.util.Slog.e(r6, r2, r5)
                goto L5a
            L52:
                r5 = move-exception
                java.lang.String r6 = "AsyncChannel"
                java.lang.String r2 = "error in sendMessageSynchronously"
                android.util.Slog.e(r6, r2, r5)
            L5a:
                r0.recycle()
                return r1
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.internal.util.AsyncChannel.SyncMessenger.sendMessageSynchronously(android.os.Messenger, android.os.Message):android.os.Message");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void replyHalfConnected(int i) {
        Message obtainMessage = this.mSrcHandler.obtainMessage(69632);
        obtainMessage.arg1 = i;
        obtainMessage.obj = this;
        obtainMessage.replyTo = this.mDstMessenger;
        if (!linkToDeathMonitor()) {
            obtainMessage.arg1 = 1;
        }
        this.mSrcHandler.sendMessage(obtainMessage);
    }

    private boolean linkToDeathMonitor() {
        if (this.mConnection != null || this.mDeathMonitor != null) {
            return true;
        }
        this.mDeathMonitor = new DeathMonitor();
        try {
            this.mDstMessenger.getBinder().linkToDeath(this.mDeathMonitor, 0);
            return true;
        } catch (RemoteException unused) {
            this.mDeathMonitor = null;
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void replyDisconnected(int i) {
        if (this.mSrcHandler == null) {
            return;
        }
        Message obtainMessage = this.mSrcHandler.obtainMessage(CMD_CHANNEL_DISCONNECTED);
        obtainMessage.arg1 = i;
        obtainMessage.obj = this;
        obtainMessage.replyTo = this.mDstMessenger;
        this.mSrcHandler.sendMessage(obtainMessage);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes3.dex */
    public class AsyncChannelConnection implements ServiceConnection {
        AsyncChannelConnection() {
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            AsyncChannel.this.mDstMessenger = new Messenger(iBinder);
            AsyncChannel.this.replyHalfConnected(0);
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            AsyncChannel.this.replyDisconnected(0);
        }
    }

    private static void log(String str) {
        Slog.d(TAG, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes3.dex */
    public final class DeathMonitor implements IBinder.DeathRecipient {
        DeathMonitor() {
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            AsyncChannel.this.replyDisconnected(4);
        }
    }
}
