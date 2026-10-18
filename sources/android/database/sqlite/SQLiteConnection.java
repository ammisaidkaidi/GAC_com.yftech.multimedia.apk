package android.database.sqlite;

import android.database.CursorWindow;
import android.database.DatabaseUtils;
import android.database.sqlite.SQLiteDebug;
import android.net.TrafficStats;
import android.net.wifi.WifiEnterpriseConfig;
import android.os.CancellationSignal;
import android.os.ParcelFileDescriptor;
import android.os.SystemClock;
import android.os.Trace;
import android.util.Log;
import android.util.LruCache;
import android.util.Printer;
import dalvik.system.BlockGuard;
import dalvik.system.CloseGuard;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Map;

/* loaded from: /home/user/work/dex/classes.dex */
public final class SQLiteConnection implements CancellationSignal.OnCancelListener {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final boolean DEBUG = false;
    private static final String TAG = "SQLiteConnection";
    private int mCancellationSignalAttachCount;
    private final CloseGuard mCloseGuard = CloseGuard.get();
    private final SQLiteDatabaseConfiguration mConfiguration;
    private final int mConnectionId;
    private long mConnectionPtr;
    private final boolean mIsPrimaryConnection;
    private final boolean mIsReadOnlyConnection;
    private boolean mOnlyAllowReadOnlyOperations;
    private final SQLiteConnectionPool mPool;
    private final PreparedStatementCache mPreparedStatementCache;
    private PreparedStatement mPreparedStatementPool;
    private final OperationLog mRecentOperations;
    private static final String[] EMPTY_STRING_ARRAY = new String[0];
    private static final byte[] EMPTY_BYTE_ARRAY = new byte[0];

    private static boolean isCacheable(int i) {
        return i == 2 || i == 1;
    }

    private static native void nativeBindBlob(long j, long j2, int i, byte[] bArr);

    private static native void nativeBindDouble(long j, long j2, int i, double d);

    private static native void nativeBindLong(long j, long j2, int i, long j3);

    private static native void nativeBindNull(long j, long j2, int i);

    private static native void nativeBindString(long j, long j2, int i, String str);

    private static native void nativeCancel(long j);

    private static native void nativeClose(long j);

    private static native void nativeExecute(long j, long j2);

    private static native int nativeExecuteForBlobFileDescriptor(long j, long j2);

    private static native int nativeExecuteForChangedRowCount(long j, long j2);

    private static native long nativeExecuteForCursorWindow(long j, long j2, long j3, int i, int i2, boolean z);

    private static native long nativeExecuteForLastInsertedRowId(long j, long j2);

    private static native long nativeExecuteForLong(long j, long j2);

    private static native String nativeExecuteForString(long j, long j2);

    private static native void nativeFinalizeStatement(long j, long j2);

    private static native int nativeGetColumnCount(long j, long j2);

    private static native String nativeGetColumnName(long j, long j2, int i);

    private static native int nativeGetDbLookaside(long j);

    private static native int nativeGetParameterCount(long j, long j2);

    private static native boolean nativeIsReadOnly(long j, long j2);

    private static native long nativeOpen(String str, int i, String str2, boolean z, boolean z2, int i2, int i3);

    private static native long nativePrepareStatement(long j, String str);

    private static native void nativeRegisterCustomFunction(long j, SQLiteCustomFunction sQLiteCustomFunction);

    private static native void nativeRegisterLocalizedCollators(long j, String str);

    private static native void nativeResetCancel(long j, boolean z);

    private static native void nativeResetStatementAndClearBindings(long j, long j2);

    private SQLiteConnection(SQLiteConnectionPool sQLiteConnectionPool, SQLiteDatabaseConfiguration sQLiteDatabaseConfiguration, int i, boolean z) {
        this.mPool = sQLiteConnectionPool;
        this.mRecentOperations = new OperationLog(this.mPool);
        this.mConfiguration = new SQLiteDatabaseConfiguration(sQLiteDatabaseConfiguration);
        this.mConnectionId = i;
        this.mIsPrimaryConnection = z;
        this.mIsReadOnlyConnection = (sQLiteDatabaseConfiguration.openFlags & 1) != 0;
        this.mPreparedStatementCache = new PreparedStatementCache(this.mConfiguration.maxSqlCacheSize);
        this.mCloseGuard.open("close");
    }

    protected void finalize() throws Throwable {
        try {
            if (this.mPool != null && this.mConnectionPtr != 0) {
                this.mPool.onConnectionLeaked();
            }
            dispose(true);
        } finally {
            super.finalize();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static SQLiteConnection open(SQLiteConnectionPool sQLiteConnectionPool, SQLiteDatabaseConfiguration sQLiteDatabaseConfiguration, int i, boolean z) {
        SQLiteConnection sQLiteConnection = new SQLiteConnection(sQLiteConnectionPool, sQLiteDatabaseConfiguration, i, z);
        try {
            sQLiteConnection.open();
            return sQLiteConnection;
        } catch (SQLiteException e) {
            sQLiteConnection.dispose(false);
            throw e;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void close() {
        dispose(false);
    }

    private void open() {
        this.mConnectionPtr = nativeOpen(this.mConfiguration.path, this.mConfiguration.openFlags, this.mConfiguration.label, SQLiteDebug.DEBUG_SQL_STATEMENTS, SQLiteDebug.DEBUG_SQL_TIME, this.mConfiguration.lookasideSlotSize, this.mConfiguration.lookasideSlotCount);
        setPageSize();
        setForeignKeyModeFromConfiguration();
        setWalModeFromConfiguration();
        setJournalSizeLimit();
        setAutoCheckpointInterval();
        setLocaleFromConfiguration();
        int size = this.mConfiguration.customFunctions.size();
        for (int i = 0; i < size; i++) {
            nativeRegisterCustomFunction(this.mConnectionPtr, this.mConfiguration.customFunctions.get(i));
        }
    }

    private void dispose(boolean z) {
        if (this.mCloseGuard != null) {
            if (z) {
                this.mCloseGuard.warnIfOpen();
            }
            this.mCloseGuard.close();
        }
        if (this.mConnectionPtr != 0) {
            int beginOperation = this.mRecentOperations.beginOperation("close", null, null);
            try {
                this.mPreparedStatementCache.evictAll();
                nativeClose(this.mConnectionPtr);
                this.mConnectionPtr = 0L;
            } finally {
                this.mRecentOperations.endOperation(beginOperation);
            }
        }
    }

    private void setPageSize() {
        if (this.mConfiguration.isInMemoryDb() || this.mIsReadOnlyConnection) {
            return;
        }
        long defaultPageSize = SQLiteGlobal.getDefaultPageSize();
        if (executeForLong("PRAGMA page_size", null, null) != defaultPageSize) {
            execute("PRAGMA page_size=" + defaultPageSize, null, null);
        }
    }

    private void setAutoCheckpointInterval() {
        if (this.mConfiguration.isInMemoryDb() || this.mIsReadOnlyConnection) {
            return;
        }
        long wALAutoCheckpoint = SQLiteGlobal.getWALAutoCheckpoint();
        if (executeForLong("PRAGMA wal_autocheckpoint", null, null) != wALAutoCheckpoint) {
            executeForLong("PRAGMA wal_autocheckpoint=" + wALAutoCheckpoint, null, null);
        }
    }

    private void setJournalSizeLimit() {
        if (this.mConfiguration.isInMemoryDb() || this.mIsReadOnlyConnection) {
            return;
        }
        long journalSizeLimit = SQLiteGlobal.getJournalSizeLimit();
        if (executeForLong("PRAGMA journal_size_limit", null, null) != journalSizeLimit) {
            executeForLong("PRAGMA journal_size_limit=" + journalSizeLimit, null, null);
        }
    }

    private void setForeignKeyModeFromConfiguration() {
        if (this.mIsReadOnlyConnection) {
            return;
        }
        long j = this.mConfiguration.foreignKeyConstraintsEnabled ? 1L : 0L;
        if (executeForLong("PRAGMA foreign_keys", null, null) != j) {
            execute("PRAGMA foreign_keys=" + j, null, null);
        }
    }

    private void setWalModeFromConfiguration() {
        if (this.mConfiguration.isInMemoryDb() || this.mIsReadOnlyConnection) {
            return;
        }
        boolean z = (this.mConfiguration.openFlags & 536870912) != 0;
        boolean useCompatibilityWal = this.mConfiguration.useCompatibilityWal();
        if (z || useCompatibilityWal) {
            setJournalMode("WAL");
            if (this.mConfiguration.syncMode != null) {
                setSyncMode(this.mConfiguration.syncMode);
                return;
            } else if (useCompatibilityWal && SQLiteCompatibilityWalFlags.areFlagsSet()) {
                setSyncMode(SQLiteCompatibilityWalFlags.getWALSyncMode());
                return;
            } else {
                setSyncMode(SQLiteGlobal.getWALSyncMode());
                return;
            }
        }
        setJournalMode(this.mConfiguration.journalMode == null ? SQLiteGlobal.getDefaultJournalMode() : this.mConfiguration.journalMode);
        setSyncMode(this.mConfiguration.syncMode == null ? SQLiteGlobal.getDefaultSyncMode() : this.mConfiguration.syncMode);
    }

    private void setSyncMode(String str) {
        if (canonicalizeSyncMode(executeForString("PRAGMA synchronous", null, null)).equalsIgnoreCase(canonicalizeSyncMode(str))) {
            return;
        }
        execute("PRAGMA synchronous=" + str, null, null);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private static String canonicalizeSyncMode(String str) {
        char c;
        switch (str.hashCode()) {
            case 48:
                if (str.equals(WifiEnterpriseConfig.ENGINE_DISABLE)) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            case 49:
                if (str.equals(WifiEnterpriseConfig.ENGINE_ENABLE)) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            case 50:
                if (str.equals("2")) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        switch (c) {
            case 0:
                return "OFF";
            case 1:
                return "NORMAL";
            case 2:
                return "FULL";
            default:
                return str;
        }
    }

    private void setJournalMode(String str) {
        String executeForString = executeForString("PRAGMA journal_mode", null, null);
        if (executeForString.equalsIgnoreCase(str)) {
            return;
        }
        try {
            if (executeForString("PRAGMA journal_mode=" + str, null, null).equalsIgnoreCase(str)) {
                return;
            }
        } catch (SQLiteDatabaseLockedException unused) {
        }
        Log.w(TAG, "Could not change the database journal mode of '" + this.mConfiguration.label + "' from '" + executeForString + "' to '" + str + "' because the database is locked.  This usually means that there are other open connections to the database which prevents the database from enabling or disabling write-ahead logging mode.  Proceeding without changing the journal mode.");
    }

    private void setLocaleFromConfiguration() {
        if ((this.mConfiguration.openFlags & 16) != 0) {
            return;
        }
        String locale = this.mConfiguration.locale.toString();
        nativeRegisterLocalizedCollators(this.mConnectionPtr, locale);
        if (this.mIsReadOnlyConnection) {
            return;
        }
        try {
            execute("CREATE TABLE IF NOT EXISTS android_metadata (locale TEXT)", null, null);
            String executeForString = executeForString("SELECT locale FROM android_metadata UNION SELECT NULL ORDER BY locale DESC LIMIT 1", null, null);
            if (executeForString == null || !executeForString.equals(locale)) {
                execute("BEGIN", null, null);
                try {
                    execute("DELETE FROM android_metadata", null, null);
                    execute("INSERT INTO android_metadata (locale) VALUES(?)", new Object[]{locale}, null);
                    execute("REINDEX LOCALIZED", null, null);
                    execute("COMMIT", null, null);
                } catch (Throwable th) {
                    execute("ROLLBACK", null, null);
                    throw th;
                }
            }
        } catch (RuntimeException e) {
            throw new SQLiteException("Failed to change locale for db '" + this.mConfiguration.label + "' to '" + locale + "'.", e);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void reconfigure(SQLiteDatabaseConfiguration sQLiteDatabaseConfiguration) {
        this.mOnlyAllowReadOnlyOperations = false;
        int size = sQLiteDatabaseConfiguration.customFunctions.size();
        for (int i = 0; i < size; i++) {
            SQLiteCustomFunction sQLiteCustomFunction = sQLiteDatabaseConfiguration.customFunctions.get(i);
            if (!this.mConfiguration.customFunctions.contains(sQLiteCustomFunction)) {
                nativeRegisterCustomFunction(this.mConnectionPtr, sQLiteCustomFunction);
            }
        }
        boolean z = sQLiteDatabaseConfiguration.foreignKeyConstraintsEnabled != this.mConfiguration.foreignKeyConstraintsEnabled;
        boolean z2 = ((sQLiteDatabaseConfiguration.openFlags ^ this.mConfiguration.openFlags) & 1610612736) != 0;
        boolean z3 = !sQLiteDatabaseConfiguration.locale.equals(this.mConfiguration.locale);
        this.mConfiguration.updateParametersFrom(sQLiteDatabaseConfiguration);
        this.mPreparedStatementCache.resize(sQLiteDatabaseConfiguration.maxSqlCacheSize);
        if (z) {
            setForeignKeyModeFromConfiguration();
        }
        if (z2) {
            setWalModeFromConfiguration();
        }
        if (z3) {
            setLocaleFromConfiguration();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setOnlyAllowReadOnlyOperations(boolean z) {
        this.mOnlyAllowReadOnlyOperations = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isPreparedStatementInCache(String str) {
        return this.mPreparedStatementCache.get(str) != null;
    }

    public int getConnectionId() {
        return this.mConnectionId;
    }

    public boolean isPrimaryConnection() {
        return this.mIsPrimaryConnection;
    }

    public void prepare(String str, SQLiteStatementInfo sQLiteStatementInfo) {
        if (str == null) {
            throw new IllegalArgumentException("sql must not be null.");
        }
        int beginOperation = this.mRecentOperations.beginOperation("prepare", str, null);
        try {
            try {
                PreparedStatement acquirePreparedStatement = acquirePreparedStatement(str);
                if (sQLiteStatementInfo != null) {
                    try {
                        sQLiteStatementInfo.numParameters = acquirePreparedStatement.mNumParameters;
                        sQLiteStatementInfo.readOnly = acquirePreparedStatement.mReadOnly;
                        int nativeGetColumnCount = nativeGetColumnCount(this.mConnectionPtr, acquirePreparedStatement.mStatementPtr);
                        if (nativeGetColumnCount == 0) {
                            sQLiteStatementInfo.columnNames = EMPTY_STRING_ARRAY;
                        } else {
                            sQLiteStatementInfo.columnNames = new String[nativeGetColumnCount];
                            for (int i = 0; i < nativeGetColumnCount; i++) {
                                sQLiteStatementInfo.columnNames[i] = nativeGetColumnName(this.mConnectionPtr, acquirePreparedStatement.mStatementPtr, i);
                            }
                        }
                    } finally {
                        releasePreparedStatement(acquirePreparedStatement);
                    }
                }
            } catch (RuntimeException e) {
                this.mRecentOperations.failOperation(beginOperation, e);
                throw e;
            }
        } finally {
            this.mRecentOperations.endOperation(beginOperation);
        }
    }

    public void execute(String str, Object[] objArr, CancellationSignal cancellationSignal) {
        if (str == null) {
            throw new IllegalArgumentException("sql must not be null.");
        }
        int beginOperation = this.mRecentOperations.beginOperation("execute", str, objArr);
        try {
            try {
                PreparedStatement acquirePreparedStatement = acquirePreparedStatement(str);
                try {
                    throwIfStatementForbidden(acquirePreparedStatement);
                    bindArguments(acquirePreparedStatement, objArr);
                    applyBlockGuardPolicy(acquirePreparedStatement);
                    attachCancellationSignal(cancellationSignal);
                    try {
                        nativeExecute(this.mConnectionPtr, acquirePreparedStatement.mStatementPtr);
                    } finally {
                        detachCancellationSignal(cancellationSignal);
                    }
                } finally {
                    releasePreparedStatement(acquirePreparedStatement);
                }
            } finally {
                this.mRecentOperations.endOperation(beginOperation);
            }
        } catch (RuntimeException e) {
            this.mRecentOperations.failOperation(beginOperation, e);
            throw e;
        }
    }

    public long executeForLong(String str, Object[] objArr, CancellationSignal cancellationSignal) {
        if (str == null) {
            throw new IllegalArgumentException("sql must not be null.");
        }
        int beginOperation = this.mRecentOperations.beginOperation("executeForLong", str, objArr);
        try {
            try {
                PreparedStatement acquirePreparedStatement = acquirePreparedStatement(str);
                try {
                    throwIfStatementForbidden(acquirePreparedStatement);
                    bindArguments(acquirePreparedStatement, objArr);
                    applyBlockGuardPolicy(acquirePreparedStatement);
                    attachCancellationSignal(cancellationSignal);
                    try {
                        return nativeExecuteForLong(this.mConnectionPtr, acquirePreparedStatement.mStatementPtr);
                    } finally {
                        detachCancellationSignal(cancellationSignal);
                    }
                } finally {
                    releasePreparedStatement(acquirePreparedStatement);
                }
            } catch (RuntimeException e) {
                this.mRecentOperations.failOperation(beginOperation, e);
                throw e;
            }
        } finally {
            this.mRecentOperations.endOperation(beginOperation);
        }
    }

    public String executeForString(String str, Object[] objArr, CancellationSignal cancellationSignal) {
        if (str == null) {
            throw new IllegalArgumentException("sql must not be null.");
        }
        int beginOperation = this.mRecentOperations.beginOperation("executeForString", str, objArr);
        try {
            try {
                PreparedStatement acquirePreparedStatement = acquirePreparedStatement(str);
                try {
                    throwIfStatementForbidden(acquirePreparedStatement);
                    bindArguments(acquirePreparedStatement, objArr);
                    applyBlockGuardPolicy(acquirePreparedStatement);
                    attachCancellationSignal(cancellationSignal);
                    try {
                        return nativeExecuteForString(this.mConnectionPtr, acquirePreparedStatement.mStatementPtr);
                    } finally {
                        detachCancellationSignal(cancellationSignal);
                    }
                } finally {
                    releasePreparedStatement(acquirePreparedStatement);
                }
            } catch (RuntimeException e) {
                this.mRecentOperations.failOperation(beginOperation, e);
                throw e;
            }
        } finally {
            this.mRecentOperations.endOperation(beginOperation);
        }
    }

    public ParcelFileDescriptor executeForBlobFileDescriptor(String str, Object[] objArr, CancellationSignal cancellationSignal) {
        if (str == null) {
            throw new IllegalArgumentException("sql must not be null.");
        }
        int beginOperation = this.mRecentOperations.beginOperation("executeForBlobFileDescriptor", str, objArr);
        try {
            try {
                PreparedStatement acquirePreparedStatement = acquirePreparedStatement(str);
                try {
                    throwIfStatementForbidden(acquirePreparedStatement);
                    bindArguments(acquirePreparedStatement, objArr);
                    applyBlockGuardPolicy(acquirePreparedStatement);
                    attachCancellationSignal(cancellationSignal);
                    try {
                        int nativeExecuteForBlobFileDescriptor = nativeExecuteForBlobFileDescriptor(this.mConnectionPtr, acquirePreparedStatement.mStatementPtr);
                        return nativeExecuteForBlobFileDescriptor >= 0 ? ParcelFileDescriptor.adoptFd(nativeExecuteForBlobFileDescriptor) : null;
                    } finally {
                        detachCancellationSignal(cancellationSignal);
                    }
                } finally {
                    releasePreparedStatement(acquirePreparedStatement);
                }
            } catch (RuntimeException e) {
                this.mRecentOperations.failOperation(beginOperation, e);
                throw e;
            }
        } finally {
            this.mRecentOperations.endOperation(beginOperation);
        }
    }

    public int executeForChangedRowCount(String str, Object[] objArr, CancellationSignal cancellationSignal) {
        PreparedStatement acquirePreparedStatement;
        int nativeExecuteForChangedRowCount;
        if (str == null) {
            throw new IllegalArgumentException("sql must not be null.");
        }
        int i = 0;
        int beginOperation = this.mRecentOperations.beginOperation("executeForChangedRowCount", str, objArr);
        try {
            try {
                acquirePreparedStatement = acquirePreparedStatement(str);
                try {
                    throwIfStatementForbidden(acquirePreparedStatement);
                    bindArguments(acquirePreparedStatement, objArr);
                    applyBlockGuardPolicy(acquirePreparedStatement);
                    attachCancellationSignal(cancellationSignal);
                    try {
                        nativeExecuteForChangedRowCount = nativeExecuteForChangedRowCount(this.mConnectionPtr, acquirePreparedStatement.mStatementPtr);
                    } finally {
                    }
                } catch (Throwable th) {
                    th = th;
                }
            } catch (RuntimeException e) {
                e = e;
            }
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            try {
                releasePreparedStatement(acquirePreparedStatement);
                if (this.mRecentOperations.endOperationDeferLog(beginOperation)) {
                    this.mRecentOperations.logOperation(beginOperation, "changedRows=" + nativeExecuteForChangedRowCount);
                }
                return nativeExecuteForChangedRowCount;
            } catch (RuntimeException e2) {
                e = e2;
                i = nativeExecuteForChangedRowCount;
                this.mRecentOperations.failOperation(beginOperation, e);
                throw e;
            } catch (Throwable th3) {
                th = th3;
                i = nativeExecuteForChangedRowCount;
                if (this.mRecentOperations.endOperationDeferLog(beginOperation)) {
                    this.mRecentOperations.logOperation(beginOperation, "changedRows=" + i);
                }
                throw th;
            }
        } catch (Throwable th4) {
            th = th4;
            i = nativeExecuteForChangedRowCount;
            releasePreparedStatement(acquirePreparedStatement);
            throw th;
        }
    }

    public long executeForLastInsertedRowId(String str, Object[] objArr, CancellationSignal cancellationSignal) {
        if (str == null) {
            throw new IllegalArgumentException("sql must not be null.");
        }
        int beginOperation = this.mRecentOperations.beginOperation("executeForLastInsertedRowId", str, objArr);
        try {
            try {
                PreparedStatement acquirePreparedStatement = acquirePreparedStatement(str);
                try {
                    throwIfStatementForbidden(acquirePreparedStatement);
                    bindArguments(acquirePreparedStatement, objArr);
                    applyBlockGuardPolicy(acquirePreparedStatement);
                    attachCancellationSignal(cancellationSignal);
                    try {
                        return nativeExecuteForLastInsertedRowId(this.mConnectionPtr, acquirePreparedStatement.mStatementPtr);
                    } finally {
                        detachCancellationSignal(cancellationSignal);
                    }
                } finally {
                    releasePreparedStatement(acquirePreparedStatement);
                }
            } catch (RuntimeException e) {
                this.mRecentOperations.failOperation(beginOperation, e);
                throw e;
            }
        } finally {
            this.mRecentOperations.endOperation(beginOperation);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v0, types: [android.database.sqlite.SQLiteConnection$OperationLog] */
    /* JADX WARN: Type inference failed for: r4v1 */
    /* JADX WARN: Type inference failed for: r4v8, types: [int] */
    /* JADX WARN: Type inference failed for: r5v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v8, types: [int] */
    public int executeForCursorWindow(String str, Object[] objArr, CursorWindow cursorWindow, int i, int i2, boolean z, CancellationSignal cancellationSignal) {
        int i3;
        PreparedStatement acquirePreparedStatement;
        PreparedStatement preparedStatement;
        if (str == null) {
            throw new IllegalArgumentException("sql must not be null.");
        }
        if (cursorWindow == null) {
            throw new IllegalArgumentException("window must not be null.");
        }
        cursorWindow.acquireReference();
        try {
            int i4 = this.mRecentOperations;
            int i5 = "executeForCursorWindow";
            int beginOperation = i4.beginOperation("executeForCursorWindow", str, objArr);
            try {
                try {
                    acquirePreparedStatement = acquirePreparedStatement(str);
                } catch (Throwable th) {
                    th = th;
                    i3 = -1;
                }
                try {
                    throwIfStatementForbidden(acquirePreparedStatement);
                    bindArguments(acquirePreparedStatement, objArr);
                    applyBlockGuardPolicy(acquirePreparedStatement);
                    attachCancellationSignal(cancellationSignal);
                    try {
                        preparedStatement = acquirePreparedStatement;
                        try {
                            long nativeExecuteForCursorWindow = nativeExecuteForCursorWindow(this.mConnectionPtr, acquirePreparedStatement.mStatementPtr, cursorWindow.mWindowPtr, i, i2, z);
                            i3 = (int) (nativeExecuteForCursorWindow >> 32);
                            i4 = (int) nativeExecuteForCursorWindow;
                            try {
                                i5 = cursorWindow.getNumRows();
                            } catch (Throwable th2) {
                                th = th2;
                            }
                        } catch (Throwable th3) {
                            th = th3;
                            try {
                                detachCancellationSignal(cancellationSignal);
                                throw th;
                            } catch (Throwable th4) {
                                th = th4;
                                try {
                                    releasePreparedStatement(preparedStatement);
                                    throw th;
                                } catch (RuntimeException e) {
                                    e = e;
                                    this.mRecentOperations.failOperation(beginOperation, e);
                                    throw e;
                                }
                            }
                        }
                    } catch (Throwable th5) {
                        th = th5;
                        preparedStatement = acquirePreparedStatement;
                    }
                    try {
                        cursorWindow.setStartPosition(i3);
                        try {
                            detachCancellationSignal(cancellationSignal);
                            try {
                                releasePreparedStatement(preparedStatement);
                                if (this.mRecentOperations.endOperationDeferLog(beginOperation)) {
                                    this.mRecentOperations.logOperation(beginOperation, "window='" + cursorWindow + "', startPos=" + i + ", actualPos=" + i3 + ", filledRows=" + ((int) i5) + ", countedRows=" + ((int) i4));
                                }
                                return i4;
                            } catch (RuntimeException e2) {
                                e = e2;
                                this.mRecentOperations.failOperation(beginOperation, e);
                                throw e;
                            } catch (Throwable th6) {
                                th = th6;
                                if (this.mRecentOperations.endOperationDeferLog(beginOperation)) {
                                    this.mRecentOperations.logOperation(beginOperation, "window='" + cursorWindow + "', startPos=" + i + ", actualPos=" + i3 + ", filledRows=" + i5 + ", countedRows=" + i4);
                                }
                                throw th;
                            }
                        } catch (Throwable th7) {
                            th = th7;
                            releasePreparedStatement(preparedStatement);
                            throw th;
                        }
                    } catch (Throwable th8) {
                        th = th8;
                        detachCancellationSignal(cancellationSignal);
                        throw th;
                    }
                } catch (Throwable th9) {
                    th = th9;
                    preparedStatement = acquirePreparedStatement;
                }
            } catch (RuntimeException e3) {
                e = e3;
            } catch (Throwable th10) {
                th = th10;
                i4 = -1;
                i5 = -1;
                i3 = -1;
            }
        } finally {
            cursorWindow.releaseReference();
        }
    }

    private PreparedStatement acquirePreparedStatement(String str) {
        boolean z;
        PreparedStatement preparedStatement = this.mPreparedStatementCache.get(str);
        if (preparedStatement == null) {
            z = false;
        } else {
            if (!preparedStatement.mInUse) {
                return preparedStatement;
            }
            z = true;
        }
        long nativePrepareStatement = nativePrepareStatement(this.mConnectionPtr, str);
        try {
            int nativeGetParameterCount = nativeGetParameterCount(this.mConnectionPtr, nativePrepareStatement);
            int sqlStatementType = DatabaseUtils.getSqlStatementType(str);
            PreparedStatement obtainPreparedStatement = obtainPreparedStatement(str, nativePrepareStatement, nativeGetParameterCount, sqlStatementType, nativeIsReadOnly(this.mConnectionPtr, nativePrepareStatement));
            if (!z) {
                try {
                    if (isCacheable(sqlStatementType)) {
                        this.mPreparedStatementCache.put(str, obtainPreparedStatement);
                        obtainPreparedStatement.mInCache = true;
                    }
                } catch (RuntimeException e) {
                    e = e;
                    preparedStatement = obtainPreparedStatement;
                    if (preparedStatement == null || !preparedStatement.mInCache) {
                        nativeFinalizeStatement(this.mConnectionPtr, nativePrepareStatement);
                    }
                    throw e;
                }
            }
            obtainPreparedStatement.mInUse = true;
            return obtainPreparedStatement;
        } catch (RuntimeException e2) {
            e = e2;
        }
    }

    private void releasePreparedStatement(PreparedStatement preparedStatement) {
        preparedStatement.mInUse = false;
        if (preparedStatement.mInCache) {
            try {
                nativeResetStatementAndClearBindings(this.mConnectionPtr, preparedStatement.mStatementPtr);
                return;
            } catch (SQLiteException unused) {
                this.mPreparedStatementCache.remove(preparedStatement.mSql);
                return;
            }
        }
        finalizePreparedStatement(preparedStatement);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void finalizePreparedStatement(PreparedStatement preparedStatement) {
        nativeFinalizeStatement(this.mConnectionPtr, preparedStatement.mStatementPtr);
        recyclePreparedStatement(preparedStatement);
    }

    private void attachCancellationSignal(CancellationSignal cancellationSignal) {
        if (cancellationSignal != null) {
            cancellationSignal.throwIfCanceled();
            this.mCancellationSignalAttachCount++;
            if (this.mCancellationSignalAttachCount == 1) {
                nativeResetCancel(this.mConnectionPtr, true);
                cancellationSignal.setOnCancelListener(this);
            }
        }
    }

    private void detachCancellationSignal(CancellationSignal cancellationSignal) {
        if (cancellationSignal != null) {
            this.mCancellationSignalAttachCount--;
            if (this.mCancellationSignalAttachCount == 0) {
                cancellationSignal.setOnCancelListener(null);
                nativeResetCancel(this.mConnectionPtr, false);
            }
        }
    }

    @Override // android.os.CancellationSignal.OnCancelListener
    public void onCancel() {
        nativeCancel(this.mConnectionPtr);
    }

    private void bindArguments(PreparedStatement preparedStatement, Object[] objArr) {
        int length = objArr != null ? objArr.length : 0;
        if (length != preparedStatement.mNumParameters) {
            throw new SQLiteBindOrColumnIndexOutOfRangeException("Expected " + preparedStatement.mNumParameters + " bind arguments but " + length + " were provided.");
        }
        if (length == 0) {
            return;
        }
        long j = preparedStatement.mStatementPtr;
        for (int i = 0; i < length; i++) {
            Object obj = objArr[i];
            int typeOfObject = DatabaseUtils.getTypeOfObject(obj);
            if (typeOfObject != 4) {
                switch (typeOfObject) {
                    case 0:
                        nativeBindNull(this.mConnectionPtr, j, i + 1);
                        break;
                    case 1:
                        nativeBindLong(this.mConnectionPtr, j, i + 1, ((Number) obj).longValue());
                        break;
                    case 2:
                        nativeBindDouble(this.mConnectionPtr, j, i + 1, ((Number) obj).doubleValue());
                        break;
                    default:
                        if (obj instanceof Boolean) {
                            nativeBindLong(this.mConnectionPtr, j, i + 1, ((Boolean) obj).booleanValue() ? 1L : 0L);
                            break;
                        } else {
                            nativeBindString(this.mConnectionPtr, j, i + 1, obj.toString());
                            break;
                        }
                }
            } else {
                nativeBindBlob(this.mConnectionPtr, j, i + 1, (byte[]) obj);
            }
        }
    }

    private void throwIfStatementForbidden(PreparedStatement preparedStatement) {
        if (this.mOnlyAllowReadOnlyOperations && !preparedStatement.mReadOnly) {
            throw new SQLiteException("Cannot execute this statement because it might modify the database but the connection is read-only.");
        }
    }

    private void applyBlockGuardPolicy(PreparedStatement preparedStatement) {
        if (this.mConfiguration.isInMemoryDb()) {
            return;
        }
        if (preparedStatement.mReadOnly) {
            BlockGuard.getThreadPolicy().onReadFromDisk();
        } else {
            BlockGuard.getThreadPolicy().onWriteToDisk();
        }
    }

    public void dump(Printer printer, boolean z) {
        dumpUnsafe(printer, z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void dumpUnsafe(Printer printer, boolean z) {
        printer.println("Connection #" + this.mConnectionId + ":");
        if (z) {
            printer.println("  connectionPtr: 0x" + Long.toHexString(this.mConnectionPtr));
        }
        printer.println("  isPrimaryConnection: " + this.mIsPrimaryConnection);
        printer.println("  onlyAllowReadOnlyOperations: " + this.mOnlyAllowReadOnlyOperations);
        this.mRecentOperations.dump(printer, z);
        if (z) {
            this.mPreparedStatementCache.dump(printer);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String describeCurrentOperationUnsafe() {
        return this.mRecentOperations.describeCurrentOperation();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0041 A[Catch: all -> 0x00c9, SQLiteException -> 0x00ce, TRY_LEAVE, TryCatch #3 {all -> 0x00c9, blocks: (B:9:0x002c, B:10:0x003b, B:12:0x0041, B:14:0x004a, B:16:0x0064, B:18:0x0088, B:20:0x009f, B:21:0x00b3), top: B:8:0x002c }] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x009f A[Catch: all -> 0x00c9, SQLiteException -> 0x00ce, TryCatch #3 {all -> 0x00c9, blocks: (B:9:0x002c, B:10:0x003b, B:12:0x0041, B:14:0x004a, B:16:0x0064, B:18:0x0088, B:20:0x009f, B:21:0x00b3), top: B:8:0x002c }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void collectDbStats(ArrayList<SQLiteDebug.DbStats> arrayList) {
        long j;
        long j2;
        CursorWindow cursorWindow;
        int i;
        long j3;
        long j4;
        long j5;
        int nativeGetDbLookaside = nativeGetDbLookaside(this.mConnectionPtr);
        try {
            j = executeForLong("PRAGMA page_count;", null, null);
        } catch (SQLiteException unused) {
            j = 0;
        }
        try {
            j2 = executeForLong("PRAGMA page_size;", null, null);
        } catch (SQLiteException unused2) {
            j2 = 0;
            arrayList.add(getMainDbStatsUnsafe(nativeGetDbLookaside, j, j2));
            cursorWindow = new CursorWindow("collectDbStats");
            try {
                executeForCursorWindow("PRAGMA database_list;", null, cursorWindow, 0, 0, false, null);
                while (i < cursorWindow.getNumRows()) {
                }
            } finally {
                cursorWindow.close();
            }
        }
        arrayList.add(getMainDbStatsUnsafe(nativeGetDbLookaside, j, j2));
        cursorWindow = new CursorWindow("collectDbStats");
        try {
            executeForCursorWindow("PRAGMA database_list;", null, cursorWindow, 0, 0, false, null);
            for (i = 1; i < cursorWindow.getNumRows(); i++) {
                String string = cursorWindow.getString(i, 1);
                String string2 = cursorWindow.getString(i, 2);
                try {
                    j3 = executeForLong("PRAGMA " + string + ".page_count;", null, null);
                    try {
                        j4 = j3;
                        j5 = executeForLong("PRAGMA " + string + ".page_size;", null, null);
                    } catch (SQLiteException unused3) {
                        j4 = j3;
                        j5 = 0;
                        String str = "  (attached) " + string;
                        if (!string2.isEmpty()) {
                        }
                        arrayList.add(new SQLiteDebug.DbStats(str, j4, j5, 0, 0, 0, 0));
                    }
                } catch (SQLiteException unused4) {
                    j3 = 0;
                }
                String str2 = "  (attached) " + string;
                if (!string2.isEmpty()) {
                    str2 = str2 + ": " + string2;
                }
                arrayList.add(new SQLiteDebug.DbStats(str2, j4, j5, 0, 0, 0, 0));
            }
        } catch (SQLiteException unused5) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void collectDbStatsUnsafe(ArrayList<SQLiteDebug.DbStats> arrayList) {
        arrayList.add(getMainDbStatsUnsafe(0, 0L, 0L));
    }

    private SQLiteDebug.DbStats getMainDbStatsUnsafe(int i, long j, long j2) {
        String str = this.mConfiguration.path;
        if (!this.mIsPrimaryConnection) {
            str = str + " (" + this.mConnectionId + ")";
        }
        return new SQLiteDebug.DbStats(str, j, j2, i, this.mPreparedStatementCache.hitCount(), this.mPreparedStatementCache.missCount(), this.mPreparedStatementCache.size());
    }

    public String toString() {
        return "SQLiteConnection: " + this.mConfiguration.path + " (" + this.mConnectionId + ")";
    }

    private PreparedStatement obtainPreparedStatement(String str, long j, int i, int i2, boolean z) {
        PreparedStatement preparedStatement = this.mPreparedStatementPool;
        if (preparedStatement != null) {
            this.mPreparedStatementPool = preparedStatement.mPoolNext;
            preparedStatement.mPoolNext = null;
            preparedStatement.mInCache = false;
        } else {
            preparedStatement = new PreparedStatement();
        }
        preparedStatement.mSql = str;
        preparedStatement.mStatementPtr = j;
        preparedStatement.mNumParameters = i;
        preparedStatement.mType = i2;
        preparedStatement.mReadOnly = z;
        return preparedStatement;
    }

    private void recyclePreparedStatement(PreparedStatement preparedStatement) {
        preparedStatement.mSql = null;
        preparedStatement.mPoolNext = this.mPreparedStatementPool;
        this.mPreparedStatementPool = preparedStatement;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String trimSqlForDisplay(String str) {
        return str.replaceAll("[\\s]*\\n+[\\s]*", WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static final class PreparedStatement {
        public boolean mInCache;
        public boolean mInUse;
        public int mNumParameters;
        public PreparedStatement mPoolNext;
        public boolean mReadOnly;
        public String mSql;
        public long mStatementPtr;
        public int mType;

        private PreparedStatement() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public final class PreparedStatementCache extends LruCache<String, PreparedStatement> {
        public PreparedStatementCache(int i) {
            super(i);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.util.LruCache
        public void entryRemoved(boolean z, String str, PreparedStatement preparedStatement, PreparedStatement preparedStatement2) {
            preparedStatement.mInCache = false;
            if (preparedStatement.mInUse) {
                return;
            }
            SQLiteConnection.this.finalizePreparedStatement(preparedStatement);
        }

        public void dump(Printer printer) {
            printer.println("  Prepared statement cache:");
            Map<String, PreparedStatement> snapshot = snapshot();
            if (!snapshot.isEmpty()) {
                int i = 0;
                for (Map.Entry<String, PreparedStatement> entry : snapshot.entrySet()) {
                    PreparedStatement value = entry.getValue();
                    if (value.mInCache) {
                        printer.println("    " + i + ": statementPtr=0x" + Long.toHexString(value.mStatementPtr) + ", numParameters=" + value.mNumParameters + ", type=" + value.mType + ", readOnly=" + value.mReadOnly + ", sql=\"" + SQLiteConnection.trimSqlForDisplay(entry.getKey()) + "\"");
                    }
                    i++;
                }
                return;
            }
            printer.println("    <none>");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static final class OperationLog {
        private static final int COOKIE_GENERATION_SHIFT = 8;
        private static final int COOKIE_INDEX_MASK = 255;
        private static final int MAX_RECENT_OPERATIONS = 20;
        private int mGeneration;
        private int mIndex;
        private final Operation[] mOperations = new Operation[20];
        private final SQLiteConnectionPool mPool;

        OperationLog(SQLiteConnectionPool sQLiteConnectionPool) {
            this.mPool = sQLiteConnectionPool;
        }

        public int beginOperation(String str, String str2, Object[] objArr) {
            int i;
            synchronized (this.mOperations) {
                int i2 = (this.mIndex + 1) % 20;
                Operation operation = this.mOperations[i2];
                if (operation == null) {
                    operation = new Operation();
                    this.mOperations[i2] = operation;
                } else {
                    operation.mFinished = false;
                    operation.mException = null;
                    if (operation.mBindArgs != null) {
                        operation.mBindArgs.clear();
                    }
                }
                operation.mStartWallTime = System.currentTimeMillis();
                operation.mStartTime = SystemClock.uptimeMillis();
                operation.mKind = str;
                operation.mSql = str2;
                if (objArr != null) {
                    if (operation.mBindArgs == null) {
                        operation.mBindArgs = new ArrayList<>();
                    } else {
                        operation.mBindArgs.clear();
                    }
                    for (Object obj : objArr) {
                        if (obj != null && (obj instanceof byte[])) {
                            operation.mBindArgs.add(SQLiteConnection.EMPTY_BYTE_ARRAY);
                        } else {
                            operation.mBindArgs.add(obj);
                        }
                    }
                }
                operation.mCookie = newOperationCookieLocked(i2);
                if (Trace.isTagEnabled(TrafficStats.MB_IN_BYTES)) {
                    Trace.asyncTraceBegin(TrafficStats.MB_IN_BYTES, operation.getTraceMethodName(), operation.mCookie);
                }
                this.mIndex = i2;
                i = operation.mCookie;
            }
            return i;
        }

        public void failOperation(int i, Exception exc) {
            synchronized (this.mOperations) {
                Operation operationLocked = getOperationLocked(i);
                if (operationLocked != null) {
                    operationLocked.mException = exc;
                }
            }
        }

        public void endOperation(int i) {
            synchronized (this.mOperations) {
                if (endOperationDeferLogLocked(i)) {
                    logOperationLocked(i, null);
                }
            }
        }

        public boolean endOperationDeferLog(int i) {
            boolean endOperationDeferLogLocked;
            synchronized (this.mOperations) {
                endOperationDeferLogLocked = endOperationDeferLogLocked(i);
            }
            return endOperationDeferLogLocked;
        }

        public void logOperation(int i, String str) {
            synchronized (this.mOperations) {
                logOperationLocked(i, str);
            }
        }

        private boolean endOperationDeferLogLocked(int i) {
            Operation operationLocked = getOperationLocked(i);
            if (operationLocked == null) {
                return false;
            }
            if (Trace.isTagEnabled(TrafficStats.MB_IN_BYTES)) {
                Trace.asyncTraceEnd(TrafficStats.MB_IN_BYTES, operationLocked.getTraceMethodName(), operationLocked.mCookie);
            }
            operationLocked.mEndTime = SystemClock.uptimeMillis();
            operationLocked.mFinished = true;
            long j = operationLocked.mEndTime - operationLocked.mStartTime;
            this.mPool.onStatementExecuted(j);
            return SQLiteDebug.DEBUG_LOG_SLOW_QUERIES && SQLiteDebug.shouldLogSlowQuery(j);
        }

        private void logOperationLocked(int i, String str) {
            Operation operationLocked = getOperationLocked(i);
            StringBuilder sb = new StringBuilder();
            operationLocked.describe(sb, false);
            if (str != null) {
                sb.append(", ");
                sb.append(str);
            }
            Log.d(SQLiteConnection.TAG, sb.toString());
        }

        private int newOperationCookieLocked(int i) {
            int i2 = this.mGeneration;
            this.mGeneration = i2 + 1;
            return (i2 << 8) | i;
        }

        private Operation getOperationLocked(int i) {
            Operation operation = this.mOperations[i & 255];
            if (operation.mCookie == i) {
                return operation;
            }
            return null;
        }

        public String describeCurrentOperation() {
            synchronized (this.mOperations) {
                Operation operation = this.mOperations[this.mIndex];
                if (operation == null || operation.mFinished) {
                    return null;
                }
                StringBuilder sb = new StringBuilder();
                operation.describe(sb, false);
                return sb.toString();
            }
        }

        public void dump(Printer printer, boolean z) {
            synchronized (this.mOperations) {
                printer.println("  Most recently executed operations:");
                int i = this.mIndex;
                Operation operation = this.mOperations[i];
                if (operation != null) {
                    SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS");
                    int i2 = 0;
                    do {
                        StringBuilder sb = new StringBuilder();
                        sb.append("    ");
                        sb.append(i2);
                        sb.append(": [");
                        sb.append(simpleDateFormat.format(new Date(operation.mStartWallTime)));
                        sb.append("] ");
                        operation.describe(sb, z);
                        printer.println(sb.toString());
                        i = i > 0 ? i - 1 : 19;
                        i2++;
                        operation = this.mOperations[i];
                        if (operation == null) {
                            break;
                        }
                    } while (i2 < 20);
                } else {
                    printer.println("    <none>");
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static final class Operation {
        private static final int MAX_TRACE_METHOD_NAME_LEN = 256;
        public ArrayList<Object> mBindArgs;
        public int mCookie;
        public long mEndTime;
        public Exception mException;
        public boolean mFinished;
        public String mKind;
        public String mSql;
        public long mStartTime;
        public long mStartWallTime;

        private Operation() {
        }

        public void describe(StringBuilder sb, boolean z) {
            sb.append(this.mKind);
            if (this.mFinished) {
                sb.append(" took ");
                sb.append(this.mEndTime - this.mStartTime);
                sb.append("ms");
            } else {
                sb.append(" started ");
                sb.append(System.currentTimeMillis() - this.mStartWallTime);
                sb.append("ms ago");
            }
            sb.append(" - ");
            sb.append(getStatus());
            if (this.mSql != null) {
                sb.append(", sql=\"");
                sb.append(SQLiteConnection.trimSqlForDisplay(this.mSql));
                sb.append("\"");
            }
            if (z && this.mBindArgs != null && this.mBindArgs.size() != 0) {
                sb.append(", bindArgs=[");
                int size = this.mBindArgs.size();
                for (int i = 0; i < size; i++) {
                    Object obj = this.mBindArgs.get(i);
                    if (i != 0) {
                        sb.append(", ");
                    }
                    if (obj == null) {
                        sb.append("null");
                    } else if (obj instanceof byte[]) {
                        sb.append("<byte[]>");
                    } else if (obj instanceof String) {
                        sb.append("\"");
                        sb.append((String) obj);
                        sb.append("\"");
                    } else {
                        sb.append(obj);
                    }
                }
                sb.append("]");
            }
            if (this.mException != null) {
                sb.append(", exception=\"");
                sb.append(this.mException.getMessage());
                sb.append("\"");
            }
        }

        private String getStatus() {
            return !this.mFinished ? "running" : this.mException != null ? "failed" : "succeeded";
        }

        /* JADX INFO: Access modifiers changed from: private */
        public String getTraceMethodName() {
            String str = this.mKind + WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER + this.mSql;
            return str.length() > 256 ? str.substring(0, 256) : str;
        }
    }
}
