.class Landroid/security/keymaster/KeyAttestationPackageInfo$1;
.super Ljava/lang/Object;
.source "KeyAttestationPackageInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/keymaster/KeyAttestationPackageInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/security/keymaster/KeyAttestationPackageInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/security/keymaster/KeyAttestationPackageInfo;
    .locals 1

    .line 81
    new-instance p0, Landroid/security/keymaster/KeyAttestationPackageInfo;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/security/keymaster/KeyAttestationPackageInfo;-><init>(Landroid/os/Parcel;Landroid/security/keymaster/KeyAttestationPackageInfo$1;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 78
    invoke-virtual {p0, p1}, Landroid/security/keymaster/KeyAttestationPackageInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/security/keymaster/KeyAttestationPackageInfo;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/security/keymaster/KeyAttestationPackageInfo;
    .locals 0

    .line 86
    new-array p0, p1, [Landroid/security/keymaster/KeyAttestationPackageInfo;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 78
    invoke-virtual {p0, p1}, Landroid/security/keymaster/KeyAttestationPackageInfo$1;->newArray(I)[Landroid/security/keymaster/KeyAttestationPackageInfo;

    move-result-object p0

    return-object p0
.end method
