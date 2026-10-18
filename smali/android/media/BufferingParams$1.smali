.class Landroid/media/BufferingParams$1;
.super Ljava/lang/Object;
.source "BufferingParams.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/BufferingParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/media/BufferingParams;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/media/BufferingParams;
    .locals 1

    .line 174
    new-instance p0, Landroid/media/BufferingParams;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/media/BufferingParams;-><init>(Landroid/os/Parcel;Landroid/media/BufferingParams$1;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 171
    invoke-virtual {p0, p1}, Landroid/media/BufferingParams$1;->createFromParcel(Landroid/os/Parcel;)Landroid/media/BufferingParams;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/media/BufferingParams;
    .locals 0

    .line 179
    new-array p0, p1, [Landroid/media/BufferingParams;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 171
    invoke-virtual {p0, p1}, Landroid/media/BufferingParams$1;->newArray(I)[Landroid/media/BufferingParams;

    move-result-object p0

    return-object p0
.end method
