.class Landroid/content/pm/PackageParser$Activity$1;
.super Ljava/lang/Object;
.source "PackageParser.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageParser$Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/content/pm/PackageParser$Activity;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 7603
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/content/pm/PackageParser$Activity;
    .locals 1

    .line 7605
    new-instance p0, Landroid/content/pm/PackageParser$Activity;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/content/pm/PackageParser$Activity;-><init>(Landroid/os/Parcel;Landroid/content/pm/PackageParser$1;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 7603
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageParser$Activity$1;->createFromParcel(Landroid/os/Parcel;)Landroid/content/pm/PackageParser$Activity;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/content/pm/PackageParser$Activity;
    .locals 0

    .line 7609
    new-array p0, p1, [Landroid/content/pm/PackageParser$Activity;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 7603
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageParser$Activity$1;->newArray(I)[Landroid/content/pm/PackageParser$Activity;

    move-result-object p0

    return-object p0
.end method
