.class Landroid/content/pm/VersionedPackage$1;
.super Ljava/lang/Object;
.source "VersionedPackage.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/VersionedPackage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/content/pm/VersionedPackage;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/content/pm/VersionedPackage;
    .locals 1

    .line 112
    new-instance p0, Landroid/content/pm/VersionedPackage;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/content/pm/VersionedPackage;-><init>(Landroid/os/Parcel;Landroid/content/pm/VersionedPackage$1;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 109
    invoke-virtual {p0, p1}, Landroid/content/pm/VersionedPackage$1;->createFromParcel(Landroid/os/Parcel;)Landroid/content/pm/VersionedPackage;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/content/pm/VersionedPackage;
    .locals 0

    .line 117
    new-array p0, p1, [Landroid/content/pm/VersionedPackage;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 109
    invoke-virtual {p0, p1}, Landroid/content/pm/VersionedPackage$1;->newArray(I)[Landroid/content/pm/VersionedPackage;

    move-result-object p0

    return-object p0
.end method
