package android.app.backup;

import android.app.IBackupAgent;
import android.app.QueuedWork;
import android.app.backup.FullBackup;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.pm.ApplicationInfo;
import android.os.Binder;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.ParcelFileDescriptor;
import android.os.Process;
import android.os.RemoteException;
import android.system.ErrnoException;
import android.system.Os;
import android.system.OsConstants;
import android.system.StructStat;
import android.util.ArraySet;
import android.util.Log;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CountDownLatch;
import libcore.io.IoUtils;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: /home/user/work/dex/classes.dex */
public abstract class BackupAgent extends ContextWrapper {
    private static final boolean DEBUG = false;
    public static final int FLAG_CLIENT_SIDE_ENCRYPTION_ENABLED = 1;
    public static final int FLAG_DEVICE_TO_DEVICE_TRANSFER = 2;
    public static final int FLAG_FAKE_CLIENT_SIDE_ENCRYPTION_ENABLED = Integer.MIN_VALUE;
    private static final String TAG = "BackupAgent";
    public static final int TYPE_DIRECTORY = 2;
    public static final int TYPE_EOF = 0;
    public static final int TYPE_FILE = 1;
    public static final int TYPE_SYMLINK = 3;
    private final IBinder mBinder;
    Handler mHandler;

    private boolean areIncludeRequiredTransportFlagsSatisfied(int i, int i2) {
        return (i2 & i) == i;
    }

    public abstract void onBackup(ParcelFileDescriptor parcelFileDescriptor, BackupDataOutput backupDataOutput, ParcelFileDescriptor parcelFileDescriptor2) throws IOException;

    public void onCreate() {
    }

    public void onDestroy() {
    }

    public void onQuotaExceeded(long j, long j2) {
    }

    public abstract void onRestore(BackupDataInput backupDataInput, int i, ParcelFileDescriptor parcelFileDescriptor) throws IOException;

    public void onRestoreFinished() {
    }

    Handler getHandler() {
        if (this.mHandler == null) {
            this.mHandler = new Handler(Looper.getMainLooper());
        }
        return this.mHandler;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public class SharedPrefsSynchronizer implements Runnable {
        public final CountDownLatch mLatch = new CountDownLatch(1);

        SharedPrefsSynchronizer() {
        }

        @Override // java.lang.Runnable
        public void run() {
            QueuedWork.waitToFinish();
            this.mLatch.countDown();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void waitForSharedPrefs() {
        Handler handler = getHandler();
        SharedPrefsSynchronizer sharedPrefsSynchronizer = new SharedPrefsSynchronizer();
        handler.postAtFrontOfQueue(sharedPrefsSynchronizer);
        try {
            sharedPrefsSynchronizer.mLatch.await();
        } catch (InterruptedException unused) {
        }
    }

    public BackupAgent() {
        super(null);
        this.mHandler = null;
        this.mBinder = new BackupServiceBinder().asBinder();
    }

    public void onRestore(BackupDataInput backupDataInput, long j, ParcelFileDescriptor parcelFileDescriptor) throws IOException {
        onRestore(backupDataInput, (int) j, parcelFileDescriptor);
    }

    public void onFullBackup(FullBackupDataOutput fullBackupDataOutput) throws IOException {
        FullBackup.BackupScheme backupScheme = FullBackup.getBackupScheme(this);
        if (backupScheme.isFullBackupContentEnabled()) {
            try {
                Map<String, Set<FullBackup.BackupScheme.PathWithRequiredFlags>> maybeParseAndGetCanonicalIncludePaths = backupScheme.maybeParseAndGetCanonicalIncludePaths();
                ArraySet<FullBackup.BackupScheme.PathWithRequiredFlags> maybeParseAndGetCanonicalExcludePaths = backupScheme.maybeParseAndGetCanonicalExcludePaths();
                String packageName = getPackageName();
                ApplicationInfo applicationInfo = getApplicationInfo();
                Context createCredentialProtectedStorageContext = createCredentialProtectedStorageContext();
                String canonicalPath = createCredentialProtectedStorageContext.getDataDir().getCanonicalPath();
                String canonicalPath2 = createCredentialProtectedStorageContext.getFilesDir().getCanonicalPath();
                String canonicalPath3 = createCredentialProtectedStorageContext.getNoBackupFilesDir().getCanonicalPath();
                String canonicalPath4 = createCredentialProtectedStorageContext.getDatabasePath("foo").getParentFile().getCanonicalPath();
                String canonicalPath5 = createCredentialProtectedStorageContext.getSharedPreferencesPath("foo").getParentFile().getCanonicalPath();
                String canonicalPath6 = createCredentialProtectedStorageContext.getCacheDir().getCanonicalPath();
                String canonicalPath7 = createCredentialProtectedStorageContext.getCodeCacheDir().getCanonicalPath();
                Context createDeviceProtectedStorageContext = createDeviceProtectedStorageContext();
                String canonicalPath8 = createDeviceProtectedStorageContext.getDataDir().getCanonicalPath();
                String canonicalPath9 = createDeviceProtectedStorageContext.getFilesDir().getCanonicalPath();
                String canonicalPath10 = createDeviceProtectedStorageContext.getNoBackupFilesDir().getCanonicalPath();
                String canonicalPath11 = createDeviceProtectedStorageContext.getDatabasePath("foo").getParentFile().getCanonicalPath();
                String canonicalPath12 = createDeviceProtectedStorageContext.getSharedPreferencesPath("foo").getParentFile().getCanonicalPath();
                String canonicalPath13 = createDeviceProtectedStorageContext.getCacheDir().getCanonicalPath();
                String canonicalPath14 = createDeviceProtectedStorageContext.getCodeCacheDir().getCanonicalPath();
                String canonicalPath15 = applicationInfo.nativeLibraryDir != null ? new File(applicationInfo.nativeLibraryDir).getCanonicalPath() : null;
                ArraySet<String> arraySet = new ArraySet<>();
                arraySet.add(canonicalPath2);
                arraySet.add(canonicalPath3);
                arraySet.add(canonicalPath4);
                arraySet.add(canonicalPath5);
                arraySet.add(canonicalPath6);
                arraySet.add(canonicalPath7);
                arraySet.add(canonicalPath9);
                arraySet.add(canonicalPath10);
                arraySet.add(canonicalPath11);
                arraySet.add(canonicalPath12);
                arraySet.add(canonicalPath13);
                arraySet.add(canonicalPath14);
                if (canonicalPath15 != null) {
                    arraySet.add(canonicalPath15);
                }
                applyXmlFiltersAndDoFullBackupForDomain(packageName, FullBackup.ROOT_TREE_TOKEN, maybeParseAndGetCanonicalIncludePaths, maybeParseAndGetCanonicalExcludePaths, arraySet, fullBackupDataOutput);
                arraySet.add(canonicalPath);
                applyXmlFiltersAndDoFullBackupForDomain(packageName, FullBackup.DEVICE_ROOT_TREE_TOKEN, maybeParseAndGetCanonicalIncludePaths, maybeParseAndGetCanonicalExcludePaths, arraySet, fullBackupDataOutput);
                arraySet.add(canonicalPath8);
                arraySet.remove(canonicalPath2);
                applyXmlFiltersAndDoFullBackupForDomain(packageName, FullBackup.FILES_TREE_TOKEN, maybeParseAndGetCanonicalIncludePaths, maybeParseAndGetCanonicalExcludePaths, arraySet, fullBackupDataOutput);
                arraySet.add(canonicalPath2);
                arraySet.remove(canonicalPath9);
                applyXmlFiltersAndDoFullBackupForDomain(packageName, FullBackup.DEVICE_FILES_TREE_TOKEN, maybeParseAndGetCanonicalIncludePaths, maybeParseAndGetCanonicalExcludePaths, arraySet, fullBackupDataOutput);
                arraySet.add(canonicalPath9);
                arraySet.remove(canonicalPath4);
                applyXmlFiltersAndDoFullBackupForDomain(packageName, FullBackup.DATABASE_TREE_TOKEN, maybeParseAndGetCanonicalIncludePaths, maybeParseAndGetCanonicalExcludePaths, arraySet, fullBackupDataOutput);
                arraySet.add(canonicalPath4);
                arraySet.remove(canonicalPath11);
                applyXmlFiltersAndDoFullBackupForDomain(packageName, FullBackup.DEVICE_DATABASE_TREE_TOKEN, maybeParseAndGetCanonicalIncludePaths, maybeParseAndGetCanonicalExcludePaths, arraySet, fullBackupDataOutput);
                arraySet.add(canonicalPath11);
                arraySet.remove(canonicalPath5);
                applyXmlFiltersAndDoFullBackupForDomain(packageName, FullBackup.SHAREDPREFS_TREE_TOKEN, maybeParseAndGetCanonicalIncludePaths, maybeParseAndGetCanonicalExcludePaths, arraySet, fullBackupDataOutput);
                arraySet.add(canonicalPath5);
                arraySet.remove(canonicalPath12);
                applyXmlFiltersAndDoFullBackupForDomain(packageName, FullBackup.DEVICE_SHAREDPREFS_TREE_TOKEN, maybeParseAndGetCanonicalIncludePaths, maybeParseAndGetCanonicalExcludePaths, arraySet, fullBackupDataOutput);
                arraySet.add(canonicalPath12);
                if (Process.myUid() == 1000 || getExternalFilesDir(null) == null) {
                    return;
                }
                applyXmlFiltersAndDoFullBackupForDomain(packageName, FullBackup.MANAGED_EXTERNAL_TREE_TOKEN, maybeParseAndGetCanonicalIncludePaths, maybeParseAndGetCanonicalExcludePaths, arraySet, fullBackupDataOutput);
            } catch (IOException | XmlPullParserException e) {
                if (Log.isLoggable("BackupXmlParserLogging", 2)) {
                    Log.v("BackupXmlParserLogging", "Exception trying to parse fullBackupContent xml file! Aborting full backup.", e);
                }
            }
        }
    }

    private void applyXmlFiltersAndDoFullBackupForDomain(String str, String str2, Map<String, Set<FullBackup.BackupScheme.PathWithRequiredFlags>> map, ArraySet<FullBackup.BackupScheme.PathWithRequiredFlags> arraySet, ArraySet<String> arraySet2, FullBackupDataOutput fullBackupDataOutput) throws IOException {
        if (map == null || map.size() == 0) {
            fullBackupFileTree(str, str2, FullBackup.getBackupScheme(this).tokenToDirectoryPath(str2), arraySet, arraySet2, fullBackupDataOutput);
            return;
        }
        if (map.get(str2) != null) {
            for (FullBackup.BackupScheme.PathWithRequiredFlags pathWithRequiredFlags : map.get(str2)) {
                if (areIncludeRequiredTransportFlagsSatisfied(pathWithRequiredFlags.getRequiredFlags(), fullBackupDataOutput.getTransportFlags())) {
                    fullBackupFileTree(str, str2, pathWithRequiredFlags.getPath(), arraySet, arraySet2, fullBackupDataOutput);
                }
            }
        }
    }

    public final void fullBackupFile(File file, FullBackupDataOutput fullBackupDataOutput) {
        String str;
        String str2;
        String str3;
        File externalFilesDir;
        ApplicationInfo applicationInfo = getApplicationInfo();
        try {
            Context createCredentialProtectedStorageContext = createCredentialProtectedStorageContext();
            String canonicalPath = createCredentialProtectedStorageContext.getDataDir().getCanonicalPath();
            String canonicalPath2 = createCredentialProtectedStorageContext.getFilesDir().getCanonicalPath();
            String canonicalPath3 = createCredentialProtectedStorageContext.getNoBackupFilesDir().getCanonicalPath();
            String canonicalPath4 = createCredentialProtectedStorageContext.getDatabasePath("foo").getParentFile().getCanonicalPath();
            String canonicalPath5 = createCredentialProtectedStorageContext.getSharedPreferencesPath("foo").getParentFile().getCanonicalPath();
            String canonicalPath6 = createCredentialProtectedStorageContext.getCacheDir().getCanonicalPath();
            String canonicalPath7 = createCredentialProtectedStorageContext.getCodeCacheDir().getCanonicalPath();
            Context createDeviceProtectedStorageContext = createDeviceProtectedStorageContext();
            String canonicalPath8 = createDeviceProtectedStorageContext.getDataDir().getCanonicalPath();
            String canonicalPath9 = createDeviceProtectedStorageContext.getFilesDir().getCanonicalPath();
            String canonicalPath10 = createDeviceProtectedStorageContext.getNoBackupFilesDir().getCanonicalPath();
            String canonicalPath11 = createDeviceProtectedStorageContext.getDatabasePath("foo").getParentFile().getCanonicalPath();
            String canonicalPath12 = createDeviceProtectedStorageContext.getSharedPreferencesPath("foo").getParentFile().getCanonicalPath();
            String canonicalPath13 = createDeviceProtectedStorageContext.getCacheDir().getCanonicalPath();
            String canonicalPath14 = createDeviceProtectedStorageContext.getCodeCacheDir().getCanonicalPath();
            String str4 = null;
            String canonicalPath15 = applicationInfo.nativeLibraryDir == null ? null : new File(applicationInfo.nativeLibraryDir).getCanonicalPath();
            if (Process.myUid() != 1000 && (externalFilesDir = getExternalFilesDir(null)) != null) {
                str4 = externalFilesDir.getCanonicalPath();
            }
            String canonicalPath16 = file.getCanonicalPath();
            if (canonicalPath16.startsWith(canonicalPath6) || canonicalPath16.startsWith(canonicalPath7) || canonicalPath16.startsWith(canonicalPath3) || canonicalPath16.startsWith(canonicalPath13) || canonicalPath16.startsWith(canonicalPath14) || canonicalPath16.startsWith(canonicalPath10) || canonicalPath16.startsWith(canonicalPath15)) {
                Log.w(TAG, "lib, cache, code_cache, and no_backup files are not backed up");
                return;
            }
            if (canonicalPath16.startsWith(canonicalPath4)) {
                str = FullBackup.DATABASE_TREE_TOKEN;
                str2 = canonicalPath4;
            } else if (canonicalPath16.startsWith(canonicalPath5)) {
                str = FullBackup.SHAREDPREFS_TREE_TOKEN;
                str2 = canonicalPath5;
            } else if (canonicalPath16.startsWith(canonicalPath2)) {
                str = FullBackup.FILES_TREE_TOKEN;
                str2 = canonicalPath2;
            } else if (canonicalPath16.startsWith(canonicalPath)) {
                str = FullBackup.ROOT_TREE_TOKEN;
                str2 = canonicalPath;
            } else if (canonicalPath16.startsWith(canonicalPath11)) {
                str = FullBackup.DEVICE_DATABASE_TREE_TOKEN;
                str2 = canonicalPath11;
            } else if (canonicalPath16.startsWith(canonicalPath12)) {
                str = FullBackup.DEVICE_SHAREDPREFS_TREE_TOKEN;
                str2 = canonicalPath12;
            } else {
                String str5 = canonicalPath9;
                if (canonicalPath16.startsWith(str5)) {
                    str3 = FullBackup.DEVICE_FILES_TREE_TOKEN;
                } else {
                    str5 = canonicalPath8;
                    if (canonicalPath16.startsWith(str5)) {
                        str3 = FullBackup.DEVICE_ROOT_TREE_TOKEN;
                    } else {
                        if (str4 == null || !canonicalPath16.startsWith(str4)) {
                            Log.w(TAG, "File " + canonicalPath16 + " is in an unsupported location; skipping");
                            return;
                        }
                        str = FullBackup.MANAGED_EXTERNAL_TREE_TOKEN;
                        str2 = str4;
                    }
                }
                str2 = str5;
                str = str3;
            }
            FullBackup.backupToTar(getPackageName(), str, null, str2, canonicalPath16, fullBackupDataOutput);
        } catch (IOException unused) {
            Log.w(TAG, "Unable to obtain canonical paths");
        }
    }

    protected final void fullBackupFileTree(String str, String str2, String str3, ArraySet<FullBackup.BackupScheme.PathWithRequiredFlags> arraySet, ArraySet<String> arraySet2, FullBackupDataOutput fullBackupDataOutput) {
        File[] listFiles;
        String str4 = FullBackup.getBackupScheme(this).tokenToDirectoryPath(str2);
        if (str4 == null) {
            return;
        }
        File file = new File(str3);
        if (file.exists()) {
            LinkedList linkedList = new LinkedList();
            linkedList.add(file);
            while (linkedList.size() > 0) {
                File file2 = (File) linkedList.remove(0);
                try {
                    StructStat lstat = Os.lstat(file2.getPath());
                    if (OsConstants.S_ISREG(lstat.st_mode) || OsConstants.S_ISDIR(lstat.st_mode)) {
                        String canonicalPath = file2.getCanonicalPath();
                        if (arraySet == null || !manifestExcludesContainFilePath(arraySet, canonicalPath)) {
                            if (arraySet2 == null || !arraySet2.contains(canonicalPath)) {
                                if (OsConstants.S_ISDIR(lstat.st_mode) && (listFiles = file2.listFiles()) != null) {
                                    for (File file3 : listFiles) {
                                        linkedList.add(0, file3);
                                    }
                                }
                                FullBackup.backupToTar(str, str2, null, str4, canonicalPath, fullBackupDataOutput);
                            }
                        }
                    }
                } catch (ErrnoException e) {
                    if (Log.isLoggable("BackupXmlParserLogging", 2)) {
                        Log.v("BackupXmlParserLogging", "Error scanning file " + file2 + " : " + e);
                    }
                } catch (IOException unused) {
                    if (Log.isLoggable("BackupXmlParserLogging", 2)) {
                        Log.v("BackupXmlParserLogging", "Error canonicalizing path of " + file2);
                    }
                }
            }
        }
    }

    private boolean manifestExcludesContainFilePath(ArraySet<FullBackup.BackupScheme.PathWithRequiredFlags> arraySet, String str) {
        Iterator<FullBackup.BackupScheme.PathWithRequiredFlags> it = arraySet.iterator();
        while (it.hasNext()) {
            String path = it.next().getPath();
            if (path != null && path.equals(str)) {
                return true;
            }
        }
        return false;
    }

    public void onRestoreFile(ParcelFileDescriptor parcelFileDescriptor, long j, File file, int i, long j2, long j3) throws IOException {
        FullBackup.restoreFile(parcelFileDescriptor, j, i, j2, j3, isFileEligibleForRestore(file) ? file : null);
    }

    private boolean isFileEligibleForRestore(File file) throws IOException {
        FullBackup.BackupScheme backupScheme = FullBackup.getBackupScheme(this);
        if (!backupScheme.isFullBackupContentEnabled()) {
            if (Log.isLoggable("BackupXmlParserLogging", 2)) {
                Log.v("BackupXmlParserLogging", "onRestoreFile \"" + file.getCanonicalPath() + "\" : fullBackupContent not enabled for " + getPackageName());
            }
            return false;
        }
        String canonicalPath = file.getCanonicalPath();
        try {
            Map<String, Set<FullBackup.BackupScheme.PathWithRequiredFlags>> maybeParseAndGetCanonicalIncludePaths = backupScheme.maybeParseAndGetCanonicalIncludePaths();
            ArraySet<FullBackup.BackupScheme.PathWithRequiredFlags> maybeParseAndGetCanonicalExcludePaths = backupScheme.maybeParseAndGetCanonicalExcludePaths();
            if (maybeParseAndGetCanonicalExcludePaths != null && isFileSpecifiedInPathList(file, maybeParseAndGetCanonicalExcludePaths)) {
                if (Log.isLoggable("BackupXmlParserLogging", 2)) {
                    Log.v("BackupXmlParserLogging", "onRestoreFile: \"" + canonicalPath + "\": listed in excludes; skipping.");
                }
                return false;
            }
            if (maybeParseAndGetCanonicalIncludePaths == null || maybeParseAndGetCanonicalIncludePaths.isEmpty()) {
                return true;
            }
            Iterator<Set<FullBackup.BackupScheme.PathWithRequiredFlags>> it = maybeParseAndGetCanonicalIncludePaths.values().iterator();
            boolean z = false;
            while (it.hasNext() && !((z = z | isFileSpecifiedInPathList(file, it.next())))) {
            }
            if (z) {
                return true;
            }
            if (Log.isLoggable("BackupXmlParserLogging", 2)) {
                Log.v("BackupXmlParserLogging", "onRestoreFile: Trying to restore \"" + canonicalPath + "\" but it isn't specified in the included files; skipping.");
            }
            return false;
        } catch (XmlPullParserException e) {
            if (Log.isLoggable("BackupXmlParserLogging", 2)) {
                Log.v("BackupXmlParserLogging", "onRestoreFile \"" + canonicalPath + "\" : Exception trying to parse fullBackupContent xml file! Aborting onRestoreFile.", e);
            }
            return false;
        }
    }

    private boolean isFileSpecifiedInPathList(File file, Collection<FullBackup.BackupScheme.PathWithRequiredFlags> collection) throws IOException {
        Iterator<FullBackup.BackupScheme.PathWithRequiredFlags> it = collection.iterator();
        while (it.hasNext()) {
            String path = it.next().getPath();
            File file2 = new File(path);
            if (file2.isDirectory()) {
                if (file.isDirectory()) {
                    return file.equals(file2);
                }
                return file.getCanonicalPath().startsWith(path);
            }
            if (file.equals(file2)) {
                return true;
            }
        }
        return false;
    }

    protected void onRestoreFile(ParcelFileDescriptor parcelFileDescriptor, long j, int i, String str, String str2, long j2, long j3) throws IOException {
        String str3 = FullBackup.getBackupScheme(this).tokenToDirectoryPath(str);
        long j4 = str.equals(FullBackup.MANAGED_EXTERNAL_TREE_TOKEN) ? -1L : j2;
        if (str3 != null) {
            File file = new File(str3, str2);
            if (file.getCanonicalPath().startsWith(str3 + File.separatorChar)) {
                onRestoreFile(parcelFileDescriptor, j, file, i, j4, j3);
                return;
            }
        }
        FullBackup.restoreFile(parcelFileDescriptor, j, i, j4, j3, null);
    }

    public final IBinder onBind() {
        return this.mBinder;
    }

    public void attach(Context context) {
        attachBaseContext(context);
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    private class BackupServiceBinder extends IBackupAgent.Stub {
        private static final String TAG = "BackupServiceBinder";

        private BackupServiceBinder() {
        }

        @Override // android.app.IBackupAgent
        public void doBackup(ParcelFileDescriptor parcelFileDescriptor, ParcelFileDescriptor parcelFileDescriptor2, ParcelFileDescriptor parcelFileDescriptor3, long j, int i, IBackupManager iBackupManager, int i2) throws RemoteException {
            long clearCallingIdentity = Binder.clearCallingIdentity();
            BackupDataOutput backupDataOutput = new BackupDataOutput(parcelFileDescriptor2.getFileDescriptor(), j, i2);
            try {
                try {
                    BackupAgent.this.onBackup(parcelFileDescriptor, backupDataOutput, parcelFileDescriptor3);
                    BackupAgent.this.waitForSharedPrefs();
                    Binder.restoreCallingIdentity(clearCallingIdentity);
                    try {
                        iBackupManager.opComplete(i, 0L);
                    } catch (RemoteException unused) {
                    }
                    if (Binder.getCallingPid() != Process.myPid()) {
                        IoUtils.closeQuietly(parcelFileDescriptor);
                        IoUtils.closeQuietly(parcelFileDescriptor2);
                        IoUtils.closeQuietly(parcelFileDescriptor3);
                    }
                } finally {
                }
            } catch (IOException e) {
                Log.d(TAG, "onBackup (" + BackupAgent.this.getClass().getName() + ") threw", e);
                throw new RuntimeException(e);
            } catch (RuntimeException e2) {
                Log.d(TAG, "onBackup (" + BackupAgent.this.getClass().getName() + ") threw", e2);
                throw e2;
            }
        }

        @Override // android.app.IBackupAgent
        public void doRestore(ParcelFileDescriptor parcelFileDescriptor, long j, ParcelFileDescriptor parcelFileDescriptor2, int i, IBackupManager iBackupManager) throws RemoteException {
            long clearCallingIdentity = Binder.clearCallingIdentity();
            BackupAgent.this.waitForSharedPrefs();
            try {
                try {
                    BackupAgent.this.onRestore(new BackupDataInput(parcelFileDescriptor.getFileDescriptor()), j, parcelFileDescriptor2);
                    BackupAgent.this.reloadSharedPreferences();
                    Binder.restoreCallingIdentity(clearCallingIdentity);
                    try {
                        iBackupManager.opComplete(i, 0L);
                    } catch (RemoteException unused) {
                    }
                    if (Binder.getCallingPid() != Process.myPid()) {
                        IoUtils.closeQuietly(parcelFileDescriptor);
                        IoUtils.closeQuietly(parcelFileDescriptor2);
                    }
                } finally {
                }
            } catch (IOException e) {
                Log.d(TAG, "onRestore (" + BackupAgent.this.getClass().getName() + ") threw", e);
                throw new RuntimeException(e);
            } catch (RuntimeException e2) {
                Log.d(TAG, "onRestore (" + BackupAgent.this.getClass().getName() + ") threw", e2);
                throw e2;
            }
        }

        @Override // android.app.IBackupAgent
        public void doFullBackup(ParcelFileDescriptor parcelFileDescriptor, long j, int i, IBackupManager iBackupManager, int i2) {
            long clearCallingIdentity = Binder.clearCallingIdentity();
            BackupAgent.this.waitForSharedPrefs();
            try {
                try {
                    BackupAgent.this.onFullBackup(new FullBackupDataOutput(parcelFileDescriptor, j, i2));
                    BackupAgent.this.waitForSharedPrefs();
                    try {
                        new FileOutputStream(parcelFileDescriptor.getFileDescriptor()).write(new byte[4]);
                    } catch (IOException unused) {
                        Log.e(TAG, "Unable to finalize backup stream!");
                    }
                    Binder.restoreCallingIdentity(clearCallingIdentity);
                    try {
                        iBackupManager.opComplete(i, 0L);
                    } catch (RemoteException unused2) {
                    }
                    if (Binder.getCallingPid() != Process.myPid()) {
                        IoUtils.closeQuietly(parcelFileDescriptor);
                    }
                } finally {
                }
            } catch (IOException e) {
                Log.d(TAG, "onFullBackup (" + BackupAgent.this.getClass().getName() + ") threw", e);
                throw new RuntimeException(e);
            } catch (RuntimeException e2) {
                Log.d(TAG, "onFullBackup (" + BackupAgent.this.getClass().getName() + ") threw", e2);
                throw e2;
            }
        }

        @Override // android.app.IBackupAgent
        public void doMeasureFullBackup(long j, int i, IBackupManager iBackupManager, int i2) {
            long clearCallingIdentity = Binder.clearCallingIdentity();
            FullBackupDataOutput fullBackupDataOutput = new FullBackupDataOutput(j, i2);
            BackupAgent.this.waitForSharedPrefs();
            try {
                try {
                    BackupAgent.this.onFullBackup(fullBackupDataOutput);
                    try {
                        iBackupManager.opComplete(i, fullBackupDataOutput.getSize());
                    } catch (RemoteException unused) {
                    }
                } catch (IOException e) {
                    Log.d(TAG, "onFullBackup[M] (" + BackupAgent.this.getClass().getName() + ") threw", e);
                    throw new RuntimeException(e);
                } catch (RuntimeException e2) {
                    Log.d(TAG, "onFullBackup[M] (" + BackupAgent.this.getClass().getName() + ") threw", e2);
                    throw e2;
                }
            } finally {
                Binder.restoreCallingIdentity(clearCallingIdentity);
                try {
                    iBackupManager.opComplete(i, fullBackupDataOutput.getSize());
                } catch (RemoteException unused2) {
                }
            }
        }

        @Override // android.app.IBackupAgent
        public void doRestoreFile(ParcelFileDescriptor parcelFileDescriptor, long j, int i, String str, String str2, long j2, long j3, int i2, IBackupManager iBackupManager) throws RemoteException {
            long clearCallingIdentity = Binder.clearCallingIdentity();
            try {
                try {
                    BackupAgent.this.onRestoreFile(parcelFileDescriptor, j, i, str, str2, j2, j3);
                    BackupAgent.this.waitForSharedPrefs();
                    BackupAgent.this.reloadSharedPreferences();
                    Binder.restoreCallingIdentity(clearCallingIdentity);
                    try {
                        iBackupManager.opComplete(i2, 0L);
                    } catch (RemoteException unused) {
                    }
                    if (Binder.getCallingPid() != Process.myPid()) {
                        IoUtils.closeQuietly(parcelFileDescriptor);
                    }
                } catch (IOException e) {
                    Log.d(TAG, "onRestoreFile (" + BackupAgent.this.getClass().getName() + ") threw", e);
                    throw new RuntimeException(e);
                }
            } finally {
            }
        }

        @Override // android.app.IBackupAgent
        public void doRestoreFinished(int i, IBackupManager iBackupManager) {
            long clearCallingIdentity = Binder.clearCallingIdentity();
            try {
                try {
                    BackupAgent.this.onRestoreFinished();
                    try {
                        iBackupManager.opComplete(i, 0L);
                    } catch (RemoteException unused) {
                    }
                } catch (Exception e) {
                    Log.d(TAG, "onRestoreFinished (" + BackupAgent.this.getClass().getName() + ") threw", e);
                    throw e;
                }
            } finally {
                BackupAgent.this.waitForSharedPrefs();
                Binder.restoreCallingIdentity(clearCallingIdentity);
                try {
                    iBackupManager.opComplete(i, 0L);
                } catch (RemoteException unused2) {
                }
            }
        }

        @Override // android.app.IBackupAgent
        public void fail(String str) {
            BackupAgent.this.getHandler().post(new FailRunnable(str));
        }

        @Override // android.app.IBackupAgent
        public void doQuotaExceeded(long j, long j2) {
            long clearCallingIdentity = Binder.clearCallingIdentity();
            try {
                try {
                    BackupAgent.this.onQuotaExceeded(j, j2);
                } catch (Exception e) {
                    Log.d(TAG, "onQuotaExceeded(" + BackupAgent.this.getClass().getName() + ") threw", e);
                    throw e;
                }
            } finally {
                BackupAgent.this.waitForSharedPrefs();
                Binder.restoreCallingIdentity(clearCallingIdentity);
            }
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    static class FailRunnable implements Runnable {
        private String mMessage;

        FailRunnable(String str) {
            this.mMessage = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            throw new IllegalStateException(this.mMessage);
        }
    }
}
