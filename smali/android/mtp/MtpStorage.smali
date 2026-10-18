.class public Landroid/mtp/MtpStorage;
.super Ljava/lang/Object;
.source "MtpStorage.java"


# instance fields
.field private final mDescription:Ljava/lang/String;

.field private final mMaxFileSize:J

.field private final mPath:Ljava/lang/String;

.field private final mRemovable:Z

.field private final mStorageId:I


# direct methods
.method public constructor <init>(Landroid/os/storage/StorageVolume;I)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput p2, p0, Landroid/mtp/MtpStorage;->mStorageId:I

    .line 38
    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getInternalPath()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroid/mtp/MtpStorage;->mPath:Ljava/lang/String;

    const/4 p2, 0x0

    .line 39
    invoke-virtual {p1, p2}, Landroid/os/storage/StorageVolume;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroid/mtp/MtpStorage;->mDescription:Ljava/lang/String;

    .line 40
    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result p2

    iput-boolean p2, p0, Landroid/mtp/MtpStorage;->mRemovable:Z

    .line 41
    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getMaxFileSize()J

    move-result-wide p1

    iput-wide p1, p0, Landroid/mtp/MtpStorage;->mMaxFileSize:J

    return-void
.end method


# virtual methods
.method public final getDescription()Ljava/lang/String;
    .locals 0

    .line 68
    iget-object p0, p0, Landroid/mtp/MtpStorage;->mDescription:Ljava/lang/String;

    return-object p0
.end method

.method public getMaxFileSize()J
    .locals 2

    .line 86
    iget-wide v0, p0, Landroid/mtp/MtpStorage;->mMaxFileSize:J

    return-wide v0
.end method

.method public final getPath()Ljava/lang/String;
    .locals 0

    .line 59
    iget-object p0, p0, Landroid/mtp/MtpStorage;->mPath:Ljava/lang/String;

    return-object p0
.end method

.method public final getStorageId()I
    .locals 0

    .line 50
    iget p0, p0, Landroid/mtp/MtpStorage;->mStorageId:I

    return p0
.end method

.method public final isRemovable()Z
    .locals 0

    .line 77
    iget-boolean p0, p0, Landroid/mtp/MtpStorage;->mRemovable:Z

    return p0
.end method
