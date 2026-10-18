.class public Landroid/app/backup/BackupTransport;
.super Ljava/lang/Object;
.source "BackupTransport.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/backup/BackupTransport$TransportImpl;
    }
.end annotation


# static fields
.field public static final AGENT_ERROR:I = -0x3eb

.field public static final AGENT_UNKNOWN:I = -0x3ec

.field public static final EXTRA_TRANSPORT_REGISTRATION:Ljava/lang/String; = "android.app.backup.extra.TRANSPORT_REGISTRATION"

.field public static final FLAG_INCREMENTAL:I = 0x2

.field public static final FLAG_NON_INCREMENTAL:I = 0x4

.field public static final FLAG_USER_INITIATED:I = 0x1

.field public static final NO_MORE_DATA:I = -0x1

.field public static final TRANSPORT_ERROR:I = -0x3e8

.field public static final TRANSPORT_NON_INCREMENTAL_BACKUP_REQUIRED:I = -0x3ee

.field public static final TRANSPORT_NOT_INITIALIZED:I = -0x3e9

.field public static final TRANSPORT_OK:I = 0x0

.field public static final TRANSPORT_PACKAGE_REJECTED:I = -0x3ea

.field public static final TRANSPORT_QUOTA_EXCEEDED:I = -0x3ed


# instance fields
.field mBinderImpl:Lcom/android/internal/backup/IBackupTransport;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v0, Landroid/app/backup/BackupTransport$TransportImpl;

    invoke-direct {v0, p0}, Landroid/app/backup/BackupTransport$TransportImpl;-><init>(Landroid/app/backup/BackupTransport;)V

    iput-object v0, p0, Landroid/app/backup/BackupTransport;->mBinderImpl:Lcom/android/internal/backup/IBackupTransport;

    return-void
.end method


# virtual methods
.method public abortFullRestore()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public cancelFullBackup()V
    .locals 1

    .line 532
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Transport cancelFullBackup() not implemented"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public checkFullBackupSize(J)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public clearBackupData(Landroid/content/pm/PackageInfo;)I
    .locals 0

    const/16 p0, -0x3e8

    return p0
.end method

.method public configurationIntent()Landroid/content/Intent;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public currentDestinationString()Ljava/lang/String;
    .locals 1

    .line 138
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Transport currentDestinationString() not implemented"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public dataManagementIntent()Landroid/content/Intent;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public dataManagementLabel()Ljava/lang/String;
    .locals 1

    .line 175
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Transport dataManagementLabel() not implemented"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public finishBackup()I
    .locals 0

    const/16 p0, -0x3e8

    return p0
.end method

.method public finishRestore()V
    .locals 1

    .line 400
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Transport finishRestore() not implemented"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getAvailableRestoreSets()[Landroid/app/backup/RestoreSet;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getBackupQuota(Ljava/lang/String;Z)J
    .locals 0

    const-wide p0, 0x7fffffffffffffffL

    return-wide p0
.end method

.method public getBinder()Landroid/os/IBinder;
    .locals 0

    .line 96
    iget-object p0, p0, Landroid/app/backup/BackupTransport;->mBinderImpl:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {p0}, Lcom/android/internal/backup/IBackupTransport;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentRestoreSet()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getNextFullRestoreDataChunk(Landroid/os/ParcelFileDescriptor;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getRestoreData(Landroid/os/ParcelFileDescriptor;)I
    .locals 0

    const/16 p0, -0x3e8

    return p0
.end method

.method public getTransportFlags()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public initializeDevice()I
    .locals 0

    const/16 p0, -0x3e8

    return p0
.end method

.method public isAppEligibleForBackup(Landroid/content/pm/PackageInfo;Z)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .line 108
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Transport name() not implemented"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public nextRestorePackage()Landroid/app/backup/RestoreDescription;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public performBackup(Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;)I
    .locals 0

    const/16 p0, -0x3e8

    return p0
.end method

.method public performBackup(Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;I)I
    .locals 0

    .line 298
    invoke-virtual {p0, p1, p2}, Landroid/app/backup/BackupTransport;->performBackup(Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;)I

    move-result p0

    return p0
.end method

.method public performFullBackup(Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;)I
    .locals 0

    const/16 p0, -0x3ea

    return p0
.end method

.method public performFullBackup(Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;I)I
    .locals 0

    .line 463
    invoke-virtual {p0, p1, p2}, Landroid/app/backup/BackupTransport;->performFullBackup(Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;)I

    move-result p0

    return p0
.end method

.method public requestBackupTime()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public requestFullBackupTime()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public sendBackupData(I)I
    .locals 0

    const/16 p0, -0x3e8

    return p0
.end method

.method public startRestore(J[Landroid/content/pm/PackageInfo;)I
    .locals 0

    const/16 p0, -0x3e8

    return p0
.end method

.method public transportDirName()Ljava/lang/String;
    .locals 1

    .line 192
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Transport transportDirName() not implemented"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
