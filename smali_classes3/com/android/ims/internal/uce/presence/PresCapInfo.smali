.class public Lcom/android/ims/internal/uce/presence/PresCapInfo;
.super Ljava/lang/Object;
.source "PresCapInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/ims/internal/uce/presence/PresCapInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCapInfo:Lcom/android/ims/internal/uce/common/CapInfo;

.field private mContactUri:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 83
    new-instance v0, Lcom/android/ims/internal/uce/presence/PresCapInfo$1;

    invoke-direct {v0}, Lcom/android/ims/internal/uce/presence/PresCapInfo$1;-><init>()V

    sput-object v0, Lcom/android/ims/internal/uce/presence/PresCapInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 29
    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresCapInfo;->mContactUri:Ljava/lang/String;

    .line 68
    new-instance v0, Lcom/android/ims/internal/uce/common/CapInfo;

    invoke-direct {v0}, Lcom/android/ims/internal/uce/common/CapInfo;-><init>()V

    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresCapInfo;->mCapInfo:Lcom/android/ims/internal/uce/common/CapInfo;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 29
    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresCapInfo;->mContactUri:Ljava/lang/String;

    .line 97
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/uce/presence/PresCapInfo;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/ims/internal/uce/presence/PresCapInfo$1;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/android/ims/internal/uce/presence/PresCapInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getCapInfo()Lcom/android/ims/internal/uce/common/CapInfo;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/android/ims/internal/uce/presence/PresCapInfo;->mCapInfo:Lcom/android/ims/internal/uce/common/CapInfo;

    return-object p0
.end method

.method public getContactUri()Ljava/lang/String;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/ims/internal/uce/presence/PresCapInfo;->mContactUri:Ljava/lang/String;

    return-object p0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresCapInfo;->mContactUri:Ljava/lang/String;

    .line 103
    const-class v0, Lcom/android/ims/internal/uce/common/CapInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/android/ims/internal/uce/common/CapInfo;

    iput-object p1, p0, Lcom/android/ims/internal/uce/presence/PresCapInfo;->mCapInfo:Lcom/android/ims/internal/uce/common/CapInfo;

    return-void
.end method

.method public setCapInfo(Lcom/android/ims/internal/uce/common/CapInfo;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/android/ims/internal/uce/presence/PresCapInfo;->mCapInfo:Lcom/android/ims/internal/uce/common/CapInfo;

    return-void
.end method

.method public setContactUri(Ljava/lang/String;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/android/ims/internal/uce/presence/PresCapInfo;->mContactUri:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/android/ims/internal/uce/presence/PresCapInfo;->mContactUri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 79
    iget-object p0, p0, Lcom/android/ims/internal/uce/presence/PresCapInfo;->mCapInfo:Lcom/android/ims/internal/uce/common/CapInfo;

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
