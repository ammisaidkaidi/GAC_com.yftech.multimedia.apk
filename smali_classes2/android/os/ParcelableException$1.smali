.class Landroid/os/ParcelableException$1;
.super Ljava/lang/Object;
.source "ParcelableException.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/ParcelableException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/os/ParcelableException;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/os/ParcelableException;
    .locals 0

    .line 82
    new-instance p0, Landroid/os/ParcelableException;

    invoke-static {p1}, Landroid/os/ParcelableException;->readFromParcel(Landroid/os/Parcel;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 79
    invoke-virtual {p0, p1}, Landroid/os/ParcelableException$1;->createFromParcel(Landroid/os/Parcel;)Landroid/os/ParcelableException;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/os/ParcelableException;
    .locals 0

    .line 87
    new-array p0, p1, [Landroid/os/ParcelableException;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 79
    invoke-virtual {p0, p1}, Landroid/os/ParcelableException$1;->newArray(I)[Landroid/os/ParcelableException;

    move-result-object p0

    return-object p0
.end method
