package com.android.internal.backup;

import android.app.backup.BackupDataInput;
import android.app.backup.BackupDataOutput;
import android.app.backup.BackupTransport;
import android.app.backup.RestoreDescription;
import android.app.backup.RestoreSet;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.os.Environment;
import android.os.ParcelFileDescriptor;
import android.util.ArrayMap;
import android.util.Log;
import androidx.core.app.NotificationManagerCompat;
import com.android.org.bouncycastle.util.encoders.Base64;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import libcore.io.IoUtils;

/* loaded from: /home/user/work/dex/classes3.dex */
public class LocalTransport extends BackupTransport {
    private static final long CURRENT_SET_TOKEN = 1;
    private static final boolean DEBUG = false;
    private static final long FULL_BACKUP_SIZE_QUOTA = 26214400;
    private static final String FULL_DATA_DIR = "_full";
    private static final String INCREMENTAL_DIR = "_delta";
    private static final long KEY_VALUE_BACKUP_SIZE_QUOTA = 5242880;
    static final long[] POSSIBLE_SETS = {2, 3, 4, 5, 6, 7, 8, 9};
    private static final String TAG = "LocalTransport";
    private static final String TRANSPORT_DATA_MANAGEMENT_LABEL = "";
    private static final String TRANSPORT_DESTINATION_STRING = "Backing up to debug-only private cache";
    private static final String TRANSPORT_DIR_NAME = "com.android.internal.backup.LocalTransport";
    private Context mContext;
    private FileInputStream mCurFullRestoreStream;
    private byte[] mFullBackupBuffer;
    private BufferedOutputStream mFullBackupOutputStream;
    private long mFullBackupSize;
    private byte[] mFullRestoreBuffer;
    private FileOutputStream mFullRestoreSocketStream;
    private String mFullTargetPackage;
    private final LocalTransportParameters mParameters;
    private File mRestoreSetDir;
    private File mRestoreSetFullDir;
    private File mRestoreSetIncrementalDir;
    private int mRestoreType;
    private ParcelFileDescriptor mSocket;
    private FileInputStream mSocketInputStream;
    private File mDataDir = new File(Environment.getDownloadCacheDirectory(), "backup");
    private File mCurrentSetDir = new File(this.mDataDir, Long.toString(1));
    private File mCurrentSetIncrementalDir = new File(this.mCurrentSetDir, INCREMENTAL_DIR);
    private File mCurrentSetFullDir = new File(this.mCurrentSetDir, FULL_DATA_DIR);
    private PackageInfo[] mRestorePackages = null;
    private int mRestorePackage = -1;

    public int checkFullBackupSize(long j) {
        if (j <= 0) {
            return -1002;
        }
        return j > FULL_BACKUP_SIZE_QUOTA ? -1005 : 0;
    }

    public Intent configurationIntent() {
        return null;
    }

    public String currentDestinationString() {
        return TRANSPORT_DESTINATION_STRING;
    }

    public Intent dataManagementIntent() {
        return null;
    }

    public String dataManagementLabel() {
        return "";
    }

    public long getBackupQuota(String str, boolean z) {
        return z ? FULL_BACKUP_SIZE_QUOTA : KEY_VALUE_BACKUP_SIZE_QUOTA;
    }

    public long getCurrentRestoreSet() {
        return 1L;
    }

    public long requestBackupTime() {
        return 0L;
    }

    public long requestFullBackupTime() {
        return 0L;
    }

    public String transportDirName() {
        return TRANSPORT_DIR_NAME;
    }

    private void makeDataDirs() {
        this.mCurrentSetDir.mkdirs();
        this.mCurrentSetFullDir.mkdir();
        this.mCurrentSetIncrementalDir.mkdir();
    }

    public LocalTransport(Context context, LocalTransportParameters localTransportParameters) {
        this.mContext = context;
        this.mParameters = localTransportParameters;
        makeDataDirs();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public LocalTransportParameters getParameters() {
        return this.mParameters;
    }

    public String name() {
        return new ComponentName(this.mContext, getClass()).flattenToShortString();
    }

    public int getTransportFlags() {
        int transportFlags = super.getTransportFlags();
        return this.mParameters.isFakeEncryptionFlag() ? transportFlags | Integer.MIN_VALUE : transportFlags;
    }

    public int initializeDevice() {
        deleteContents(this.mCurrentSetDir);
        makeDataDirs();
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes3.dex */
    public class KVOperation {
        final String key;
        final byte[] value;

        KVOperation(String str, byte[] bArr) {
            this.key = str;
            this.value = bArr;
        }
    }

    public int performBackup(PackageInfo packageInfo, ParcelFileDescriptor parcelFileDescriptor) {
        return performBackup(packageInfo, parcelFileDescriptor, 0);
    }

    public int performBackup(PackageInfo packageInfo, ParcelFileDescriptor parcelFileDescriptor, int i) {
        boolean z = (i & 2) != 0;
        boolean z2 = (i & 4) != 0;
        if (z) {
            Log.i(TAG, "Performing incremental backup for " + packageInfo.packageName);
        } else if (z2) {
            Log.i(TAG, "Performing non-incremental backup for " + packageInfo.packageName);
        } else {
            Log.i(TAG, "Performing backup for " + packageInfo.packageName);
        }
        File file = new File(this.mCurrentSetIncrementalDir, packageInfo.packageName);
        boolean mkdirs = true ^ file.mkdirs();
        if (z && (this.mParameters.isNonIncrementalOnly() || !mkdirs)) {
            if (this.mParameters.isNonIncrementalOnly()) {
                Log.w(TAG, "Transport is in non-incremental only mode.");
                return -1006;
            }
            Log.w(TAG, "Requested incremental, but transport currently stores no data for the package, requesting non-incremental retry.");
            return -1006;
        }
        if (z2 && mkdirs) {
            Log.w(TAG, "Requested non-incremental, deleting existing data.");
            clearBackupData(packageInfo);
            file.mkdirs();
        }
        try {
            ArrayList<KVOperation> parseBackupStream = parseBackupStream(parcelFileDescriptor);
            ArrayMap<String, Integer> arrayMap = new ArrayMap<>();
            int parseKeySizes = parseKeySizes(file, arrayMap);
            Iterator<KVOperation> it = parseBackupStream.iterator();
            while (it.hasNext()) {
                KVOperation next = it.next();
                Integer num = arrayMap.get(next.key);
                if (num != null) {
                    parseKeySizes -= num.intValue();
                }
                if (next.value != null) {
                    parseKeySizes += next.value.length;
                }
            }
            if (parseKeySizes > KEY_VALUE_BACKUP_SIZE_QUOTA) {
                return -1005;
            }
            Iterator<KVOperation> it2 = parseBackupStream.iterator();
            while (it2.hasNext()) {
                KVOperation next2 = it2.next();
                File file2 = new File(file, next2.key);
                file2.delete();
                if (next2.value != null) {
                    try {
                        FileOutputStream fileOutputStream = new FileOutputStream(file2);
                        Throwable th = null;
                        try {
                            try {
                                fileOutputStream.write(next2.value, 0, next2.value.length);
                                fileOutputStream.close();
                            } finally {
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            throw th;
                        }
                    } catch (IOException unused) {
                        Log.e(TAG, "Unable to update key file " + file2);
                        return NotificationManagerCompat.IMPORTANCE_UNSPECIFIED;
                    }
                }
            }
            return 0;
        } catch (IOException e) {
            Log.v(TAG, "Exception reading backup input", e);
            return NotificationManagerCompat.IMPORTANCE_UNSPECIFIED;
        }
    }

    private ArrayList<KVOperation> parseBackupStream(ParcelFileDescriptor parcelFileDescriptor) throws IOException {
        ArrayList<KVOperation> arrayList = new ArrayList<>();
        BackupDataInput backupDataInput = new BackupDataInput(parcelFileDescriptor.getFileDescriptor());
        while (backupDataInput.readNextHeader()) {
            String str = new String(Base64.encode(backupDataInput.getKey().getBytes()));
            int dataSize = backupDataInput.getDataSize();
            byte[] bArr = dataSize >= 0 ? new byte[dataSize] : null;
            if (dataSize >= 0) {
                backupDataInput.readEntityData(bArr, 0, dataSize);
            }
            arrayList.add(new KVOperation(str, bArr));
        }
        return arrayList;
    }

    private int parseKeySizes(File file, ArrayMap<String, Integer> arrayMap) {
        String[] list = file.list();
        if (list == null) {
            return 0;
        }
        int i = 0;
        for (String str : list) {
            int length = (int) new File(file, str).length();
            i += length;
            arrayMap.put(str, Integer.valueOf(length));
        }
        return i;
    }

    private void deleteContents(File file) {
        File[] listFiles = file.listFiles();
        if (listFiles != null) {
            for (File file2 : listFiles) {
                if (file2.isDirectory()) {
                    deleteContents(file2);
                }
                file2.delete();
            }
        }
    }

    public int clearBackupData(PackageInfo packageInfo) {
        File file = new File(this.mCurrentSetIncrementalDir, packageInfo.packageName);
        File[] listFiles = file.listFiles();
        if (listFiles != null) {
            for (File file2 : listFiles) {
                file2.delete();
            }
            file.delete();
        }
        File file3 = new File(this.mCurrentSetFullDir, packageInfo.packageName);
        File[] listFiles2 = file3.listFiles();
        if (listFiles2 != null) {
            for (File file4 : listFiles2) {
                file4.delete();
            }
            file3.delete();
        }
        return 0;
    }

    public int finishBackup() {
        return tearDownFullBackup();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private int tearDownFullBackup() {
        if (this.mSocket == null) {
            return 0;
        }
        try {
            if (this.mFullBackupOutputStream != null) {
                this.mFullBackupOutputStream.flush();
                this.mFullBackupOutputStream.close();
            }
            this.mSocketInputStream = null;
            this.mFullTargetPackage = null;
            this.mSocket.close();
            return 0;
        } catch (IOException unused) {
            Object[] objArr = r0 == true ? 1 : 0;
            return NotificationManagerCompat.IMPORTANCE_UNSPECIFIED;
        } finally {
            this.mSocket = null;
            this.mFullBackupOutputStream = null;
        }
    }

    private File tarballFile(String str) {
        return new File(this.mCurrentSetFullDir, str);
    }

    public int performFullBackup(PackageInfo packageInfo, ParcelFileDescriptor parcelFileDescriptor) {
        if (this.mSocket != null) {
            Log.e(TAG, "Attempt to initiate full backup while one is in progress");
            return NotificationManagerCompat.IMPORTANCE_UNSPECIFIED;
        }
        try {
            this.mFullBackupSize = 0L;
            this.mSocket = ParcelFileDescriptor.dup(parcelFileDescriptor.getFileDescriptor());
            this.mSocketInputStream = new FileInputStream(this.mSocket.getFileDescriptor());
            this.mFullTargetPackage = packageInfo.packageName;
            this.mFullBackupBuffer = new byte[4096];
            return 0;
        } catch (IOException unused) {
            Log.e(TAG, "Unable to process socket for full backup");
            return NotificationManagerCompat.IMPORTANCE_UNSPECIFIED;
        }
    }

    public int sendBackupData(int i) {
        if (this.mSocket == null) {
            Log.w(TAG, "Attempted sendBackupData before performFullBackup");
            return NotificationManagerCompat.IMPORTANCE_UNSPECIFIED;
        }
        this.mFullBackupSize += i;
        if (this.mFullBackupSize > FULL_BACKUP_SIZE_QUOTA) {
            return -1005;
        }
        if (i > this.mFullBackupBuffer.length) {
            this.mFullBackupBuffer = new byte[i];
        }
        if (this.mFullBackupOutputStream == null) {
            try {
                this.mFullBackupOutputStream = new BufferedOutputStream(new FileOutputStream(tarballFile(this.mFullTargetPackage)));
            } catch (FileNotFoundException unused) {
                return NotificationManagerCompat.IMPORTANCE_UNSPECIFIED;
            }
        }
        while (i > 0) {
            try {
                int read = this.mSocketInputStream.read(this.mFullBackupBuffer, 0, i);
                if (read < 0) {
                    Log.w(TAG, "Unexpected EOD; failing backup");
                    return NotificationManagerCompat.IMPORTANCE_UNSPECIFIED;
                }
                this.mFullBackupOutputStream.write(this.mFullBackupBuffer, 0, read);
                i -= read;
            } catch (IOException unused2) {
                Log.e(TAG, "Error handling backup data for " + this.mFullTargetPackage);
                return NotificationManagerCompat.IMPORTANCE_UNSPECIFIED;
            }
        }
        return 0;
    }

    public void cancelFullBackup() {
        File tarballFile = tarballFile(this.mFullTargetPackage);
        tearDownFullBackup();
        if (tarballFile.exists()) {
            tarballFile.delete();
        }
    }

    public RestoreSet[] getAvailableRestoreSets() {
        long[] jArr = new long[POSSIBLE_SETS.length + 1];
        int i = 0;
        for (long j : POSSIBLE_SETS) {
            if (new File(this.mDataDir, Long.toString(j)).exists()) {
                jArr[i] = j;
                i++;
            }
        }
        jArr[i] = 1;
        RestoreSet[] restoreSetArr = new RestoreSet[i + 1];
        for (int i2 = 0; i2 < restoreSetArr.length; i2++) {
            restoreSetArr[i2] = new RestoreSet("Local disk image", "flash", jArr[i2]);
        }
        return restoreSetArr;
    }

    public int startRestore(long j, PackageInfo[] packageInfoArr) {
        this.mRestorePackages = packageInfoArr;
        this.mRestorePackage = -1;
        this.mRestoreSetDir = new File(this.mDataDir, Long.toString(j));
        this.mRestoreSetIncrementalDir = new File(this.mRestoreSetDir, INCREMENTAL_DIR);
        this.mRestoreSetFullDir = new File(this.mRestoreSetDir, FULL_DATA_DIR);
        return 0;
    }

    public RestoreDescription nextRestorePackage() {
        String str;
        if (this.mRestorePackages == null) {
            throw new IllegalStateException("startRestore not called");
        }
        boolean z = false;
        do {
            int i = this.mRestorePackage + 1;
            this.mRestorePackage = i;
            if (i < this.mRestorePackages.length) {
                str = this.mRestorePackages[this.mRestorePackage].packageName;
                String[] list = new File(this.mRestoreSetIncrementalDir, str).list();
                if (list != null && list.length > 0) {
                    this.mRestoreType = 1;
                    z = true;
                }
                if (!z && new File(this.mRestoreSetFullDir, str).length() > 0) {
                    this.mRestoreType = 2;
                    this.mCurFullRestoreStream = null;
                    z = true;
                }
            } else {
                return RestoreDescription.NO_MORE_PACKAGES;
            }
        } while (!z);
        return new RestoreDescription(str, this.mRestoreType);
    }

    public int getRestoreData(ParcelFileDescriptor parcelFileDescriptor) {
        if (this.mRestorePackages == null) {
            throw new IllegalStateException("startRestore not called");
        }
        if (this.mRestorePackage < 0) {
            throw new IllegalStateException("nextRestorePackage not called");
        }
        if (this.mRestoreType != 1) {
            throw new IllegalStateException("getRestoreData(fd) for non-key/value dataset");
        }
        File file = new File(this.mRestoreSetIncrementalDir, this.mRestorePackages[this.mRestorePackage].packageName);
        ArrayList<DecodedFilename> contentsByKey = contentsByKey(file);
        if (contentsByKey == null) {
            Log.e(TAG, "No keys for package: " + file);
            return NotificationManagerCompat.IMPORTANCE_UNSPECIFIED;
        }
        BackupDataOutput backupDataOutput = new BackupDataOutput(parcelFileDescriptor.getFileDescriptor());
        try {
            Iterator<DecodedFilename> it = contentsByKey.iterator();
            while (it.hasNext()) {
                DecodedFilename next = it.next();
                File file2 = next.file;
                FileInputStream fileInputStream = new FileInputStream(file2);
                try {
                    int length = (int) file2.length();
                    byte[] bArr = new byte[length];
                    fileInputStream.read(bArr);
                    backupDataOutput.writeEntityHeader(next.key, length);
                    backupDataOutput.writeEntityData(bArr, length);
                    fileInputStream.close();
                } finally {
                }
            }
            return 0;
        } catch (IOException e) {
            Log.e(TAG, "Unable to read backup records", e);
            return NotificationManagerCompat.IMPORTANCE_UNSPECIFIED;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes3.dex */
    public static class DecodedFilename implements Comparable<DecodedFilename> {
        public File file;
        public String key;

        public DecodedFilename(File file) {
            this.file = file;
            this.key = new String(Base64.decode(file.getName()));
        }

        @Override // java.lang.Comparable
        public int compareTo(DecodedFilename decodedFilename) {
            return this.key.compareTo(decodedFilename.key);
        }
    }

    private ArrayList<DecodedFilename> contentsByKey(File file) {
        File[] listFiles = file.listFiles();
        if (listFiles == null || listFiles.length == 0) {
            return null;
        }
        ArrayList<DecodedFilename> arrayList = new ArrayList<>();
        for (File file2 : listFiles) {
            arrayList.add(new DecodedFilename(file2));
        }
        Collections.sort(arrayList);
        return arrayList;
    }

    public void finishRestore() {
        if (this.mRestoreType == 2) {
            resetFullRestoreState();
        }
        this.mRestoreType = 0;
    }

    private void resetFullRestoreState() {
        IoUtils.closeQuietly(this.mCurFullRestoreStream);
        this.mCurFullRestoreStream = null;
        this.mFullRestoreSocketStream = null;
        this.mFullRestoreBuffer = null;
    }

    public int getNextFullRestoreDataChunk(ParcelFileDescriptor parcelFileDescriptor) {
        if (this.mRestoreType != 2) {
            throw new IllegalStateException("Asked for full restore data for non-stream package");
        }
        if (this.mCurFullRestoreStream == null) {
            String str = this.mRestorePackages[this.mRestorePackage].packageName;
            try {
                this.mCurFullRestoreStream = new FileInputStream(new File(this.mRestoreSetFullDir, str));
                this.mFullRestoreSocketStream = new FileOutputStream(parcelFileDescriptor.getFileDescriptor());
                this.mFullRestoreBuffer = new byte[2048];
            } catch (IOException unused) {
                Log.e(TAG, "Unable to read archive for " + str);
                return -1002;
            }
        }
        try {
            int read = this.mCurFullRestoreStream.read(this.mFullRestoreBuffer);
            if (read < 0) {
                return -1;
            }
            if (read == 0) {
                Log.w(TAG, "read() of archive file returned 0; treating as EOF");
                return -1;
            }
            this.mFullRestoreSocketStream.write(this.mFullRestoreBuffer, 0, read);
            return read;
        } catch (IOException unused2) {
            return NotificationManagerCompat.IMPORTANCE_UNSPECIFIED;
        }
    }

    public int abortFullRestore() {
        if (this.mRestoreType != 2) {
            throw new IllegalStateException("abortFullRestore() but not currently restoring");
        }
        resetFullRestoreState();
        this.mRestoreType = 0;
        return 0;
    }
}
