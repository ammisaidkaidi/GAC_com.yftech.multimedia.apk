package android.app.backup;

import android.annotation.SystemApi;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.os.IBinder;
import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
import com.android.internal.backup.IBackupTransport;

@SystemApi
/* loaded from: /home/user/work/dex/classes.dex */
public class BackupTransport {
    public static final int AGENT_ERROR = -1003;
    public static final int AGENT_UNKNOWN = -1004;
    public static final String EXTRA_TRANSPORT_REGISTRATION = "android.app.backup.extra.TRANSPORT_REGISTRATION";
    public static final int FLAG_INCREMENTAL = 2;
    public static final int FLAG_NON_INCREMENTAL = 4;
    public static final int FLAG_USER_INITIATED = 1;
    public static final int NO_MORE_DATA = -1;
    public static final int TRANSPORT_ERROR = -1000;
    public static final int TRANSPORT_NON_INCREMENTAL_BACKUP_REQUIRED = -1006;
    public static final int TRANSPORT_NOT_INITIALIZED = -1001;
    public static final int TRANSPORT_OK = 0;
    public static final int TRANSPORT_PACKAGE_REJECTED = -1002;
    public static final int TRANSPORT_QUOTA_EXCEEDED = -1005;
    IBackupTransport mBinderImpl = new TransportImpl();

    public int abortFullRestore() {
        return 0;
    }

    public int checkFullBackupSize(long j) {
        return 0;
    }

    public int clearBackupData(PackageInfo packageInfo) {
        return -1000;
    }

    public Intent configurationIntent() {
        return null;
    }

    public Intent dataManagementIntent() {
        return null;
    }

    public int finishBackup() {
        return -1000;
    }

    public RestoreSet[] getAvailableRestoreSets() {
        return null;
    }

    public long getBackupQuota(String str, boolean z) {
        return Long.MAX_VALUE;
    }

    public long getCurrentRestoreSet() {
        return 0L;
    }

    public int getNextFullRestoreDataChunk(ParcelFileDescriptor parcelFileDescriptor) {
        return 0;
    }

    public int getRestoreData(ParcelFileDescriptor parcelFileDescriptor) {
        return -1000;
    }

    public int getTransportFlags() {
        return 0;
    }

    public int initializeDevice() {
        return -1000;
    }

    public boolean isAppEligibleForBackup(PackageInfo packageInfo, boolean z) {
        return true;
    }

    public RestoreDescription nextRestorePackage() {
        return null;
    }

    public int performBackup(PackageInfo packageInfo, ParcelFileDescriptor parcelFileDescriptor) {
        return -1000;
    }

    public int performFullBackup(PackageInfo packageInfo, ParcelFileDescriptor parcelFileDescriptor) {
        return -1002;
    }

    public long requestBackupTime() {
        return 0L;
    }

    public long requestFullBackupTime() {
        return 0L;
    }

    public int sendBackupData(int i) {
        return -1000;
    }

    public int startRestore(long j, PackageInfo[] packageInfoArr) {
        return -1000;
    }

    public IBinder getBinder() {
        return this.mBinderImpl.asBinder();
    }

    public String name() {
        throw new UnsupportedOperationException("Transport name() not implemented");
    }

    public String currentDestinationString() {
        throw new UnsupportedOperationException("Transport currentDestinationString() not implemented");
    }

    public String dataManagementLabel() {
        throw new UnsupportedOperationException("Transport dataManagementLabel() not implemented");
    }

    public String transportDirName() {
        throw new UnsupportedOperationException("Transport transportDirName() not implemented");
    }

    public int performBackup(PackageInfo packageInfo, ParcelFileDescriptor parcelFileDescriptor, int i) {
        return performBackup(packageInfo, parcelFileDescriptor);
    }

    public void finishRestore() {
        throw new UnsupportedOperationException("Transport finishRestore() not implemented");
    }

    public int performFullBackup(PackageInfo packageInfo, ParcelFileDescriptor parcelFileDescriptor, int i) {
        return performFullBackup(packageInfo, parcelFileDescriptor);
    }

    public void cancelFullBackup() {
        throw new UnsupportedOperationException("Transport cancelFullBackup() not implemented");
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    class TransportImpl extends IBackupTransport.Stub {
        TransportImpl() {
        }

        public String name() throws RemoteException {
            return BackupTransport.this.name();
        }

        public Intent configurationIntent() throws RemoteException {
            return BackupTransport.this.configurationIntent();
        }

        public String currentDestinationString() throws RemoteException {
            return BackupTransport.this.currentDestinationString();
        }

        public Intent dataManagementIntent() {
            return BackupTransport.this.dataManagementIntent();
        }

        public String dataManagementLabel() {
            return BackupTransport.this.dataManagementLabel();
        }

        public String transportDirName() throws RemoteException {
            return BackupTransport.this.transportDirName();
        }

        public long requestBackupTime() throws RemoteException {
            return BackupTransport.this.requestBackupTime();
        }

        public int initializeDevice() throws RemoteException {
            return BackupTransport.this.initializeDevice();
        }

        public int performBackup(PackageInfo packageInfo, ParcelFileDescriptor parcelFileDescriptor, int i) throws RemoteException {
            return BackupTransport.this.performBackup(packageInfo, parcelFileDescriptor, i);
        }

        public int clearBackupData(PackageInfo packageInfo) throws RemoteException {
            return BackupTransport.this.clearBackupData(packageInfo);
        }

        public int finishBackup() throws RemoteException {
            return BackupTransport.this.finishBackup();
        }

        public RestoreSet[] getAvailableRestoreSets() throws RemoteException {
            return BackupTransport.this.getAvailableRestoreSets();
        }

        public long getCurrentRestoreSet() throws RemoteException {
            return BackupTransport.this.getCurrentRestoreSet();
        }

        public int startRestore(long j, PackageInfo[] packageInfoArr) throws RemoteException {
            return BackupTransport.this.startRestore(j, packageInfoArr);
        }

        public RestoreDescription nextRestorePackage() throws RemoteException {
            return BackupTransport.this.nextRestorePackage();
        }

        public int getRestoreData(ParcelFileDescriptor parcelFileDescriptor) throws RemoteException {
            return BackupTransport.this.getRestoreData(parcelFileDescriptor);
        }

        public void finishRestore() throws RemoteException {
            BackupTransport.this.finishRestore();
        }

        public long requestFullBackupTime() throws RemoteException {
            return BackupTransport.this.requestFullBackupTime();
        }

        public int performFullBackup(PackageInfo packageInfo, ParcelFileDescriptor parcelFileDescriptor, int i) throws RemoteException {
            return BackupTransport.this.performFullBackup(packageInfo, parcelFileDescriptor, i);
        }

        public int checkFullBackupSize(long j) {
            return BackupTransport.this.checkFullBackupSize(j);
        }

        public int sendBackupData(int i) throws RemoteException {
            return BackupTransport.this.sendBackupData(i);
        }

        public void cancelFullBackup() throws RemoteException {
            BackupTransport.this.cancelFullBackup();
        }

        public boolean isAppEligibleForBackup(PackageInfo packageInfo, boolean z) throws RemoteException {
            return BackupTransport.this.isAppEligibleForBackup(packageInfo, z);
        }

        public long getBackupQuota(String str, boolean z) {
            return BackupTransport.this.getBackupQuota(str, z);
        }

        public int getTransportFlags() {
            return BackupTransport.this.getTransportFlags();
        }

        public int getNextFullRestoreDataChunk(ParcelFileDescriptor parcelFileDescriptor) {
            return BackupTransport.this.getNextFullRestoreDataChunk(parcelFileDescriptor);
        }

        public int abortFullRestore() {
            return BackupTransport.this.abortFullRestore();
        }
    }
}
