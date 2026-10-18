.class public Landroid/app/servertransaction/PipModeChangeItem;
.super Landroid/app/servertransaction/ClientTransactionItem;
.source "PipModeChangeItem.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/servertransaction/PipModeChangeItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mIsInPipMode:Z

.field private mOverrideConfig:Landroid/content/res/Configuration;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 82
    new-instance v0, Landroid/app/servertransaction/PipModeChangeItem$1;

    invoke-direct {v0}, Landroid/app/servertransaction/PipModeChangeItem$1;-><init>()V

    sput-object v0, Landroid/app/servertransaction/PipModeChangeItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Landroid/app/servertransaction/ClientTransactionItem;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 77
    invoke-direct {p0}, Landroid/app/servertransaction/ClientTransactionItem;-><init>()V

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/servertransaction/PipModeChangeItem;->mIsInPipMode:Z

    .line 79
    sget-object v0, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/res/Configuration;

    iput-object p1, p0, Landroid/app/servertransaction/PipModeChangeItem;->mOverrideConfig:Landroid/content/res/Configuration;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/servertransaction/PipModeChangeItem$1;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Landroid/app/servertransaction/PipModeChangeItem;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static obtain(ZLandroid/content/res/Configuration;)Landroid/app/servertransaction/PipModeChangeItem;
    .locals 1

    .line 50
    const-class v0, Landroid/app/servertransaction/PipModeChangeItem;

    invoke-static {v0}, Landroid/app/servertransaction/ObjectPool;->obtain(Ljava/lang/Class;)Landroid/app/servertransaction/ObjectPoolItem;

    move-result-object v0

    check-cast v0, Landroid/app/servertransaction/PipModeChangeItem;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Landroid/app/servertransaction/PipModeChangeItem;

    invoke-direct {v0}, Landroid/app/servertransaction/PipModeChangeItem;-><init>()V

    .line 54
    :cond_0
    iput-boolean p0, v0, Landroid/app/servertransaction/PipModeChangeItem;->mIsInPipMode:Z

    .line 55
    iput-object p1, v0, Landroid/app/servertransaction/PipModeChangeItem;->mOverrideConfig:Landroid/content/res/Configuration;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 98
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 101
    :cond_1
    check-cast p1, Landroid/app/servertransaction/PipModeChangeItem;

    .line 102
    iget-boolean v2, p0, Landroid/app/servertransaction/PipModeChangeItem;->mIsInPipMode:Z

    iget-boolean v3, p1, Landroid/app/servertransaction/PipModeChangeItem;->mIsInPipMode:Z

    if-ne v2, v3, :cond_2

    iget-object p0, p0, Landroid/app/servertransaction/PipModeChangeItem;->mOverrideConfig:Landroid/content/res/Configuration;

    iget-object p1, p1, Landroid/app/servertransaction/PipModeChangeItem;->mOverrideConfig:Landroid/content/res/Configuration;

    .line 103
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public execute(Landroid/app/ClientTransactionHandler;Landroid/os/IBinder;Landroid/app/servertransaction/PendingTransactionActions;)V
    .locals 0

    .line 40
    iget-boolean p3, p0, Landroid/app/servertransaction/PipModeChangeItem;->mIsInPipMode:Z

    iget-object p0, p0, Landroid/app/servertransaction/PipModeChangeItem;->mOverrideConfig:Landroid/content/res/Configuration;

    invoke-virtual {p1, p2, p3, p0}, Landroid/app/ClientTransactionHandler;->handlePictureInPictureModeChanged(Landroid/os/IBinder;ZLandroid/content/res/Configuration;)V

    return-void
.end method

.method public hashCode()I
    .locals 2

    .line 109
    iget-boolean v0, p0, Landroid/app/servertransaction/PipModeChangeItem;->mIsInPipMode:Z

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 110
    iget-object p0, p0, Landroid/app/servertransaction/PipModeChangeItem;->mOverrideConfig:Landroid/content/res/Configuration;

    invoke-virtual {p0}, Landroid/content/res/Configuration;->hashCode()I

    move-result p0

    add-int/2addr v1, p0

    return v1
.end method

.method public recycle()V
    .locals 1

    const/4 v0, 0x0

    .line 62
    iput-boolean v0, p0, Landroid/app/servertransaction/PipModeChangeItem;->mIsInPipMode:Z

    const/4 v0, 0x0

    .line 63
    iput-object v0, p0, Landroid/app/servertransaction/PipModeChangeItem;->mOverrideConfig:Landroid/content/res/Configuration;

    .line 64
    invoke-static {p0}, Landroid/app/servertransaction/ObjectPool;->recycle(Landroid/app/servertransaction/ObjectPoolItem;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PipModeChangeItem{isInPipMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/app/servertransaction/PipModeChangeItem;->mIsInPipMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",overrideConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/app/servertransaction/PipModeChangeItem;->mOverrideConfig:Landroid/content/res/Configuration;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 72
    iget-boolean v0, p0, Landroid/app/servertransaction/PipModeChangeItem;->mIsInPipMode:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 73
    iget-object p0, p0, Landroid/app/servertransaction/PipModeChangeItem;->mOverrideConfig:Landroid/content/res/Configuration;

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    return-void
.end method
