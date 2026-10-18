.class Landroid/net/UidRange$1;
.super Ljava/lang/Object;
.source "UidRange.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/UidRange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/UidRange;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/UidRange;
    .locals 1

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p0

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 111
    new-instance v0, Landroid/net/UidRange;

    invoke-direct {v0, p0, p1}, Landroid/net/UidRange;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 105
    invoke-virtual {p0, p1}, Landroid/net/UidRange$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/UidRange;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/net/UidRange;
    .locals 0

    .line 115
    new-array p0, p1, [Landroid/net/UidRange;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 105
    invoke-virtual {p0, p1}, Landroid/net/UidRange$1;->newArray(I)[Landroid/net/UidRange;

    move-result-object p0

    return-object p0
.end method
