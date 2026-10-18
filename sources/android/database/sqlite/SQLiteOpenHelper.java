package android.database.sqlite;

import android.app.admin.DevicePolicyManager;
import android.content.Context;
import android.database.DatabaseErrorHandler;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.os.FileUtils;
import android.os.SystemProperties;
import android.util.Log;
import com.android.internal.util.Preconditions;
import java.io.File;

/* loaded from: /home/user/work/dex/classes.dex */
public abstract class SQLiteOpenHelper {
    private static final boolean ATC_AOSP_ENHANCEMENT = SystemProperties.getBoolean("ro.atc.aosp_enhancement", false);
    private static final String TAG = "SQLiteOpenHelper";
    private final Context mContext;
    private SQLiteDatabase mDatabase;
    private boolean mIsInitializing;
    private final int mMinimumSupportedVersion;
    private final String mName;
    private final int mNewVersion;
    private SQLiteDatabase.OpenParams.Builder mOpenParamsBuilder;

    public void onBeforeDelete(SQLiteDatabase sQLiteDatabase) {
    }

    public void onConfigure(SQLiteDatabase sQLiteDatabase) {
    }

    public abstract void onCreate(SQLiteDatabase sQLiteDatabase);

    public void onOpen(SQLiteDatabase sQLiteDatabase) {
    }

    public abstract void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2);

    public SQLiteOpenHelper(Context context, String str, SQLiteDatabase.CursorFactory cursorFactory, int i) {
        this(context, str, cursorFactory, i, (DatabaseErrorHandler) null);
    }

    public SQLiteOpenHelper(Context context, String str, SQLiteDatabase.CursorFactory cursorFactory, int i, DatabaseErrorHandler databaseErrorHandler) {
        this(context, str, cursorFactory, i, 0, databaseErrorHandler);
    }

    public SQLiteOpenHelper(Context context, String str, int i, SQLiteDatabase.OpenParams openParams) {
        this(context, str, i, 0, openParams.toBuilder());
    }

    public SQLiteOpenHelper(Context context, String str, SQLiteDatabase.CursorFactory cursorFactory, int i, int i2, DatabaseErrorHandler databaseErrorHandler) {
        this(context, str, i, i2, new SQLiteDatabase.OpenParams.Builder());
        this.mOpenParamsBuilder.setCursorFactory(cursorFactory);
        this.mOpenParamsBuilder.setErrorHandler(databaseErrorHandler);
    }

    private SQLiteOpenHelper(Context context, String str, int i, int i2, SQLiteDatabase.OpenParams.Builder builder) {
        Preconditions.checkNotNull(builder);
        if (i < 1) {
            throw new IllegalArgumentException("Version must be >= 1, was " + i);
        }
        this.mContext = context;
        this.mName = str;
        this.mNewVersion = i;
        this.mMinimumSupportedVersion = Math.max(0, i2);
        setOpenParamsBuilder(builder);
    }

    public String getDatabaseName() {
        return this.mName;
    }

    public void setWriteAheadLoggingEnabled(boolean z) {
        synchronized (this) {
            if (this.mOpenParamsBuilder.isWriteAheadLoggingEnabled() != z) {
                if (this.mDatabase != null && this.mDatabase.isOpen() && !this.mDatabase.isReadOnly()) {
                    if (z) {
                        this.mDatabase.enableWriteAheadLogging();
                    } else {
                        this.mDatabase.disableWriteAheadLogging();
                    }
                }
                this.mOpenParamsBuilder.setWriteAheadLoggingEnabled(z);
            }
            this.mOpenParamsBuilder.addOpenFlags(1073741824);
        }
    }

    public void setLookasideConfig(int i, int i2) {
        synchronized (this) {
            if (this.mDatabase != null && this.mDatabase.isOpen()) {
                throw new IllegalStateException("Lookaside memory config cannot be changed after opening the database");
            }
            this.mOpenParamsBuilder.setLookasideConfig(i, i2);
        }
    }

    public void setOpenParams(SQLiteDatabase.OpenParams openParams) {
        Preconditions.checkNotNull(openParams);
        synchronized (this) {
            if (this.mDatabase != null && this.mDatabase.isOpen()) {
                throw new IllegalStateException("OpenParams cannot be set after opening the database");
            }
            setOpenParamsBuilder(new SQLiteDatabase.OpenParams.Builder(openParams));
        }
    }

    private void setOpenParamsBuilder(SQLiteDatabase.OpenParams.Builder builder) {
        this.mOpenParamsBuilder = builder;
        this.mOpenParamsBuilder.addOpenFlags(268435456);
    }

    public void setIdleConnectionTimeout(long j) {
        synchronized (this) {
            if (this.mDatabase != null && this.mDatabase.isOpen()) {
                throw new IllegalStateException("Connection timeout setting cannot be changed after opening the database");
            }
            this.mOpenParamsBuilder.setIdleConnectionTimeout(j);
        }
    }

    public SQLiteDatabase getWritableDatabase() {
        SQLiteDatabase databaseLocked;
        synchronized (this) {
            databaseLocked = getDatabaseLocked(true);
        }
        return databaseLocked;
    }

    public SQLiteDatabase getReadableDatabase() {
        SQLiteDatabase databaseLocked;
        synchronized (this) {
            databaseLocked = getDatabaseLocked(false);
        }
        return databaseLocked;
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x00c3 A[Catch: all -> 0x01a5, TryCatch #3 {all -> 0x01a5, blocks: (B:26:0x0044, B:29:0x004a, B:31:0x0050, B:32:0x00b8, B:34:0x00c3, B:37:0x00cb, B:39:0x00cf, B:41:0x00e4, B:48:0x00f6, B:49:0x0116, B:50:0x0117, B:55:0x0139, B:63:0x013d, B:64:0x0140, B:65:0x0141, B:66:0x016f, B:67:0x0170, B:69:0x0179, B:70:0x0196, B:77:0x0054, B:79:0x0058, B:80:0x0064, B:82:0x0072, B:53:0x011c, B:54:0x0131, B:57:0x0122, B:59:0x0126, B:60:0x012c), top: B:25:0x0044, inners: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0179 A[Catch: all -> 0x01a5, TryCatch #3 {all -> 0x01a5, blocks: (B:26:0x0044, B:29:0x004a, B:31:0x0050, B:32:0x00b8, B:34:0x00c3, B:37:0x00cb, B:39:0x00cf, B:41:0x00e4, B:48:0x00f6, B:49:0x0116, B:50:0x0117, B:55:0x0139, B:63:0x013d, B:64:0x0140, B:65:0x0141, B:66:0x016f, B:67:0x0170, B:69:0x0179, B:70:0x0196, B:77:0x0054, B:79:0x0058, B:80:0x0064, B:82:0x0072, B:53:0x011c, B:54:0x0131, B:57:0x0122, B:59:0x0126, B:60:0x012c), top: B:25:0x0044, inners: #1 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private SQLiteDatabase getDatabaseLocked(boolean z) {
        SQLException e;
        int version;
        boolean z2 = !ATC_AOSP_ENHANCEMENT || this.mName == null || this.mContext.getDatabasePath(this.mName).exists();
        if (this.mDatabase != null && (!ATC_AOSP_ENHANCEMENT || z2)) {
            if (!this.mDatabase.isOpen()) {
                this.mDatabase = null;
            } else if (!z || !this.mDatabase.isReadOnly()) {
                return this.mDatabase;
            }
        }
        if (this.mIsInitializing) {
            throw new IllegalStateException("getDatabase called recursively");
        }
        SQLiteDatabase sQLiteDatabase = this.mDatabase;
        try {
            this.mIsInitializing = true;
            if (sQLiteDatabase != null) {
                if (z && sQLiteDatabase.isReadOnly()) {
                    sQLiteDatabase.reopenReadWrite();
                }
            } else if (this.mName == null) {
                sQLiteDatabase = SQLiteDatabase.createInMemory(this.mOpenParamsBuilder.build());
            } else {
                File databasePath = this.mContext.getDatabasePath(this.mName);
                SQLiteDatabase.OpenParams build = this.mOpenParamsBuilder.build();
                try {
                    SQLiteDatabase openDatabase = SQLiteDatabase.openDatabase(databasePath, build);
                    try {
                        try {
                            setFilePermissionsForDb(databasePath.getPath());
                            sQLiteDatabase = openDatabase;
                        } catch (SQLException e2) {
                            e = e2;
                            if (z) {
                                throw e;
                            }
                            Log.e(TAG, "Couldn't open " + this.mName + " for writing (will try read-only):", e);
                            sQLiteDatabase = SQLiteDatabase.openDatabase(databasePath, build.toBuilder().addOpenFlags(1).build());
                            onConfigure(sQLiteDatabase);
                            version = sQLiteDatabase.getVersion();
                            if (version != this.mNewVersion) {
                            }
                            onOpen(sQLiteDatabase);
                            if (sQLiteDatabase.isReadOnly()) {
                            }
                            this.mDatabase = sQLiteDatabase;
                            this.mIsInitializing = false;
                            if (sQLiteDatabase != null) {
                                sQLiteDatabase.close();
                            }
                            return sQLiteDatabase;
                        }
                    } catch (Throwable th) {
                        th = th;
                        sQLiteDatabase = openDatabase;
                        this.mIsInitializing = false;
                        if (sQLiteDatabase != null) {
                            sQLiteDatabase.close();
                        }
                        throw th;
                    }
                } catch (SQLException e3) {
                    e = e3;
                }
            }
            onConfigure(sQLiteDatabase);
            version = sQLiteDatabase.getVersion();
            if (version != this.mNewVersion) {
                if (sQLiteDatabase.isReadOnly()) {
                    throw new SQLiteException("Can't upgrade read-only database from version " + sQLiteDatabase.getVersion() + " to " + this.mNewVersion + ": " + this.mName);
                }
                if (version > 0 && version < this.mMinimumSupportedVersion) {
                    File file = new File(sQLiteDatabase.getPath());
                    onBeforeDelete(sQLiteDatabase);
                    sQLiteDatabase.close();
                    if (SQLiteDatabase.deleteDatabase(file)) {
                        this.mIsInitializing = false;
                        SQLiteDatabase databaseLocked = getDatabaseLocked(z);
                        this.mIsInitializing = false;
                        if (sQLiteDatabase != null && sQLiteDatabase != this.mDatabase) {
                            sQLiteDatabase.close();
                        }
                        return databaseLocked;
                    }
                    throw new IllegalStateException("Unable to delete obsolete database " + this.mName + " with version " + version);
                }
                sQLiteDatabase.beginTransaction();
                try {
                    if (version == 0) {
                        onCreate(sQLiteDatabase);
                    } else if (version > this.mNewVersion) {
                        onDowngrade(sQLiteDatabase, version, this.mNewVersion);
                    } else {
                        onUpgrade(sQLiteDatabase, version, this.mNewVersion);
                    }
                    sQLiteDatabase.setVersion(this.mNewVersion);
                    sQLiteDatabase.setTransactionSuccessful();
                    sQLiteDatabase.endTransaction();
                } catch (Throwable th2) {
                    sQLiteDatabase.endTransaction();
                    throw th2;
                }
            }
            onOpen(sQLiteDatabase);
            if (sQLiteDatabase.isReadOnly()) {
                Log.w(TAG, "Opened " + this.mName + " in read-only mode");
            }
            this.mDatabase = sQLiteDatabase;
            this.mIsInitializing = false;
            if (sQLiteDatabase != null && sQLiteDatabase != this.mDatabase) {
                sQLiteDatabase.close();
            }
            return sQLiteDatabase;
        } catch (Throwable th3) {
            th = th3;
            this.mIsInitializing = false;
            if (sQLiteDatabase != null && sQLiteDatabase != this.mDatabase) {
                sQLiteDatabase.close();
            }
            throw th;
        }
    }

    private static void setFilePermissionsForDb(String str) {
        FileUtils.setPermissions(str, DevicePolicyManager.PROFILE_KEYGUARD_FEATURES_AFFECT_OWNER, -1, -1);
    }

    public synchronized void close() {
        if (this.mIsInitializing) {
            throw new IllegalStateException("Closed during initialization");
        }
        if (this.mDatabase != null && this.mDatabase.isOpen()) {
            this.mDatabase.close();
            this.mDatabase = null;
        }
    }

    public void onDowngrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        throw new SQLiteException("Can't downgrade database from version " + i + " to " + i2);
    }
}
