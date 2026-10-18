.class Landroid/security/keystore/recovery/KeyChainSnapshot$1;
.super Ljava/lang/Object;
.source "KeyChainSnapshot.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/keystore/recovery/KeyChainSnapshot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/security/keystore/recovery/KeyChainSnapshot;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/security/keystore/recovery/KeyChainSnapshot;
    .locals 0

    .line 166
    new-instance p0, Landroid/security/keystore/recovery/KeyChainSnapshot;

    invoke-direct {p0, p1}, Landroid/security/keystore/recovery/KeyChainSnapshot;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 164
    invoke-virtual {p0, p1}, Landroid/security/keystore/recovery/KeyChainSnapshot$1;->createFromParcel(Landroid/os/Parcel;)Landroid/security/keystore/recovery/KeyChainSnapshot;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/security/keystore/recovery/KeyChainSnapshot;
    .locals 0

    .line 170
    new-array p0, p1, [Landroid/security/keystore/recovery/KeyChainSnapshot;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 164
    invoke-virtual {p0, p1}, Landroid/security/keystore/recovery/KeyChainSnapshot$1;->newArray(I)[Landroid/security/keystore/recovery/KeyChainSnapshot;

    move-result-object p0

    return-object p0
.end method
