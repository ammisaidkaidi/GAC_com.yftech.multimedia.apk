.class Lcom/android/internal/net/LegacyVpnInfo$1;
.super Ljava/lang/Object;
.source "LegacyVpnInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/LegacyVpnInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/android/internal/net/LegacyVpnInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/net/LegacyVpnInfo;
    .locals 1

    .line 61
    new-instance p0, Lcom/android/internal/net/LegacyVpnInfo;

    invoke-direct {p0}, Lcom/android/internal/net/LegacyVpnInfo;-><init>()V

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    const/4 v0, 0x0

    .line 64
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/app/PendingIntent;

    iput-object p1, p0, Lcom/android/internal/net/LegacyVpnInfo;->intent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 58
    invoke-virtual {p0, p1}, Lcom/android/internal/net/LegacyVpnInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/net/LegacyVpnInfo;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/android/internal/net/LegacyVpnInfo;
    .locals 0

    .line 70
    new-array p0, p1, [Lcom/android/internal/net/LegacyVpnInfo;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 58
    invoke-virtual {p0, p1}, Lcom/android/internal/net/LegacyVpnInfo$1;->newArray(I)[Lcom/android/internal/net/LegacyVpnInfo;

    move-result-object p0

    return-object p0
.end method
