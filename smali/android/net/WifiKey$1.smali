.class Landroid/net/WifiKey$1;
.super Ljava/lang/Object;
.source "WifiKey.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/WifiKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/WifiKey;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/WifiKey;
    .locals 1

    .line 117
    new-instance p0, Landroid/net/WifiKey;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/net/WifiKey;-><init>(Landroid/os/Parcel;Landroid/net/WifiKey$1;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 114
    invoke-virtual {p0, p1}, Landroid/net/WifiKey$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/WifiKey;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/net/WifiKey;
    .locals 0

    .line 122
    new-array p0, p1, [Landroid/net/WifiKey;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 114
    invoke-virtual {p0, p1}, Landroid/net/WifiKey$1;->newArray(I)[Landroid/net/WifiKey;

    move-result-object p0

    return-object p0
.end method
