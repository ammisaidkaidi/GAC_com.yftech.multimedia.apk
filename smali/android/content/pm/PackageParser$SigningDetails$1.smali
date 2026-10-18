.class Landroid/content/pm/PackageParser$SigningDetails$1;
.super Ljava/lang/Object;
.source "PackageParser.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageParser$SigningDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/content/pm/PackageParser$SigningDetails;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 6080
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/content/pm/PackageParser$SigningDetails;
    .locals 0

    .line 6083
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 6084
    sget-object p0, Landroid/content/pm/PackageParser$SigningDetails;->UNKNOWN:Landroid/content/pm/PackageParser$SigningDetails;

    return-object p0

    .line 6086
    :cond_0
    new-instance p0, Landroid/content/pm/PackageParser$SigningDetails;

    invoke-direct {p0, p1}, Landroid/content/pm/PackageParser$SigningDetails;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 6080
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageParser$SigningDetails$1;->createFromParcel(Landroid/os/Parcel;)Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/content/pm/PackageParser$SigningDetails;
    .locals 0

    .line 6091
    new-array p0, p1, [Landroid/content/pm/PackageParser$SigningDetails;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 6080
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageParser$SigningDetails$1;->newArray(I)[Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object p0

    return-object p0
.end method
