.class public Landroid/app/backup/FullBackupDataOutput;
.super Ljava/lang/Object;
.source "FullBackupDataOutput.java"


# instance fields
.field private final mData:Landroid/app/backup/BackupDataOutput;

.field private final mQuota:J

.field private mSize:J

.field private final mTransportFlags:I


# direct methods
.method public constructor <init>(J)V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Landroid/app/backup/FullBackupDataOutput;->mData:Landroid/app/backup/BackupDataOutput;

    .line 40
    iput-wide p1, p0, Landroid/app/backup/FullBackupDataOutput;->mQuota:J

    const-wide/16 p1, 0x0

    .line 41
    iput-wide p1, p0, Landroid/app/backup/FullBackupDataOutput;->mSize:J

    const/4 p1, 0x0

    .line 42
    iput p1, p0, Landroid/app/backup/FullBackupDataOutput;->mTransportFlags:I

    return-void
.end method

.method public constructor <init>(JI)V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Landroid/app/backup/FullBackupDataOutput;->mData:Landroid/app/backup/BackupDataOutput;

    .line 48
    iput-wide p1, p0, Landroid/app/backup/FullBackupDataOutput;->mQuota:J

    const-wide/16 p1, 0x0

    .line 49
    iput-wide p1, p0, Landroid/app/backup/FullBackupDataOutput;->mSize:J

    .line 50
    iput p3, p0, Landroid/app/backup/FullBackupDataOutput;->mTransportFlags:I

    return-void
.end method

.method public constructor <init>(Landroid/os/ParcelFileDescriptor;)V
    .locals 3

    const-wide/16 v0, -0x1

    const/4 v2, 0x0

    .line 69
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/app/backup/FullBackupDataOutput;-><init>(Landroid/os/ParcelFileDescriptor;JI)V

    return-void
.end method

.method public constructor <init>(Landroid/os/ParcelFileDescriptor;J)V
    .locals 2

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Landroid/app/backup/BackupDataOutput;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Landroid/app/backup/BackupDataOutput;-><init>(Ljava/io/FileDescriptor;JI)V

    iput-object v0, p0, Landroid/app/backup/FullBackupDataOutput;->mData:Landroid/app/backup/BackupDataOutput;

    .line 56
    iput-wide p2, p0, Landroid/app/backup/FullBackupDataOutput;->mQuota:J

    .line 57
    iput v1, p0, Landroid/app/backup/FullBackupDataOutput;->mTransportFlags:I

    return-void
.end method

.method public constructor <init>(Landroid/os/ParcelFileDescriptor;JI)V
    .locals 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Landroid/app/backup/BackupDataOutput;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/app/backup/BackupDataOutput;-><init>(Ljava/io/FileDescriptor;JI)V

    iput-object v0, p0, Landroid/app/backup/FullBackupDataOutput;->mData:Landroid/app/backup/BackupDataOutput;

    .line 63
    iput-wide p2, p0, Landroid/app/backup/FullBackupDataOutput;->mQuota:J

    .line 64
    iput p4, p0, Landroid/app/backup/FullBackupDataOutput;->mTransportFlags:I

    return-void
.end method


# virtual methods
.method public addSize(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 78
    iget-wide v0, p0, Landroid/app/backup/FullBackupDataOutput;->mSize:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Landroid/app/backup/FullBackupDataOutput;->mSize:J

    :cond_0
    return-void
.end method

.method public getData()Landroid/app/backup/BackupDataOutput;
    .locals 0

    .line 73
    iget-object p0, p0, Landroid/app/backup/FullBackupDataOutput;->mData:Landroid/app/backup/BackupDataOutput;

    return-object p0
.end method

.method public getQuota()J
    .locals 2

    .line 24
    iget-wide v0, p0, Landroid/app/backup/FullBackupDataOutput;->mQuota:J

    return-wide v0
.end method

.method public getSize()J
    .locals 2

    .line 83
    iget-wide v0, p0, Landroid/app/backup/FullBackupDataOutput;->mSize:J

    return-wide v0
.end method

.method public getTransportFlags()I
    .locals 0

    .line 34
    iget p0, p0, Landroid/app/backup/FullBackupDataOutput;->mTransportFlags:I

    return p0
.end method
