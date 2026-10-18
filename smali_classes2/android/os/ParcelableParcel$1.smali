.class Landroid/os/ParcelableParcel$1;
.super Ljava/lang/Object;
.source "ParcelableParcel.java"

# interfaces
.implements Landroid/os/Parcelable$ClassLoaderCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/ParcelableParcel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$ClassLoaderCreator<",
        "Landroid/os/ParcelableParcel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/os/ParcelableParcel;
    .locals 1

    .line 70
    new-instance p0, Landroid/os/ParcelableParcel;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/os/ParcelableParcel;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object p0
.end method

.method public createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroid/os/ParcelableParcel;
    .locals 0

    .line 74
    new-instance p0, Landroid/os/ParcelableParcel;

    invoke-direct {p0, p1, p2}, Landroid/os/ParcelableParcel;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 68
    invoke-virtual {p0, p1}, Landroid/os/ParcelableParcel$1;->createFromParcel(Landroid/os/Parcel;)Landroid/os/ParcelableParcel;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 0

    .line 68
    invoke-virtual {p0, p1, p2}, Landroid/os/ParcelableParcel$1;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroid/os/ParcelableParcel;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/os/ParcelableParcel;
    .locals 0

    .line 78
    new-array p0, p1, [Landroid/os/ParcelableParcel;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 68
    invoke-virtual {p0, p1}, Landroid/os/ParcelableParcel$1;->newArray(I)[Landroid/os/ParcelableParcel;

    move-result-object p0

    return-object p0
.end method
