.class Landroid/os/Debug$MemoryInfo$1;
.super Ljava/lang/Object;
.source "Debug.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/Debug$MemoryInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/os/Debug$MemoryInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 823
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/os/Debug$MemoryInfo;
    .locals 1

    .line 825
    new-instance p0, Landroid/os/Debug$MemoryInfo;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/os/Debug$MemoryInfo;-><init>(Landroid/os/Parcel;Landroid/os/Debug$1;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 823
    invoke-virtual {p0, p1}, Landroid/os/Debug$MemoryInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/os/Debug$MemoryInfo;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/os/Debug$MemoryInfo;
    .locals 0

    .line 828
    new-array p0, p1, [Landroid/os/Debug$MemoryInfo;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 823
    invoke-virtual {p0, p1}, Landroid/os/Debug$MemoryInfo$1;->newArray(I)[Landroid/os/Debug$MemoryInfo;

    move-result-object p0

    return-object p0
.end method
