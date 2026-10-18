.class public Lcom/android/ims/internal/uce/presence/PresResInfo;
.super Ljava/lang/Object;
.source "PresResInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/ims/internal/uce/presence/PresResInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDisplayName:Ljava/lang/String;

.field private mInstanceInfo:Lcom/android/ims/internal/uce/presence/PresResInstanceInfo;

.field private mResUri:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 99
    new-instance v0, Lcom/android/ims/internal/uce/presence/PresResInfo$1;

    invoke-direct {v0}, Lcom/android/ims/internal/uce/presence/PresResInfo$1;-><init>()V

    sput-object v0, Lcom/android/ims/internal/uce/presence/PresResInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 25
    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresResInfo;->mResUri:Ljava/lang/String;

    const-string v0, ""

    .line 26
    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresResInfo;->mDisplayName:Ljava/lang/String;

    .line 83
    new-instance v0, Lcom/android/ims/internal/uce/presence/PresResInstanceInfo;

    invoke-direct {v0}, Lcom/android/ims/internal/uce/presence/PresResInstanceInfo;-><init>()V

    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresResInfo;->mInstanceInfo:Lcom/android/ims/internal/uce/presence/PresResInstanceInfo;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 25
    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresResInfo;->mResUri:Ljava/lang/String;

    const-string v0, ""

    .line 26
    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresResInfo;->mDisplayName:Ljava/lang/String;

    .line 112
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/uce/presence/PresResInfo;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/ims/internal/uce/presence/PresResInfo$1;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/android/ims/internal/uce/presence/PresResInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/android/ims/internal/uce/presence/PresResInfo;->mDisplayName:Ljava/lang/String;

    return-object p0
.end method

.method public getInstanceInfo()Lcom/android/ims/internal/uce/presence/PresResInstanceInfo;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/android/ims/internal/uce/presence/PresResInfo;->mInstanceInfo:Lcom/android/ims/internal/uce/presence/PresResInstanceInfo;

    return-object p0
.end method

.method public getResUri()Ljava/lang/String;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/android/ims/internal/uce/presence/PresResInfo;->mResUri:Ljava/lang/String;

    return-object p0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresResInfo;->mResUri:Ljava/lang/String;

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresResInfo;->mDisplayName:Ljava/lang/String;

    .line 119
    const-class v0, Lcom/android/ims/internal/uce/presence/PresResInstanceInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/android/ims/internal/uce/presence/PresResInstanceInfo;

    iput-object p1, p0, Lcom/android/ims/internal/uce/presence/PresResInfo;->mInstanceInfo:Lcom/android/ims/internal/uce/presence/PresResInstanceInfo;

    return-void
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/android/ims/internal/uce/presence/PresResInfo;->mDisplayName:Ljava/lang/String;

    return-void
.end method

.method public setInstanceInfo(Lcom/android/ims/internal/uce/presence/PresResInstanceInfo;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/android/ims/internal/uce/presence/PresResInfo;->mInstanceInfo:Lcom/android/ims/internal/uce/presence/PresResInstanceInfo;

    return-void
.end method

.method public setResUri(Ljava/lang/String;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/android/ims/internal/uce/presence/PresResInfo;->mResUri:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/android/ims/internal/uce/presence/PresResInfo;->mResUri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/android/ims/internal/uce/presence/PresResInfo;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 95
    iget-object p0, p0, Lcom/android/ims/internal/uce/presence/PresResInfo;->mInstanceInfo:Lcom/android/ims/internal/uce/presence/PresResInstanceInfo;

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
