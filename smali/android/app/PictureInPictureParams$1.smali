.class Landroid/app/PictureInPictureParams$1;
.super Ljava/lang/Object;
.source "PictureInPictureParams.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/PictureInPictureParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/app/PictureInPictureParams;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/app/PictureInPictureParams;
    .locals 0

    .line 277
    new-instance p0, Landroid/app/PictureInPictureParams;

    invoke-direct {p0, p1}, Landroid/app/PictureInPictureParams;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 275
    invoke-virtual {p0, p1}, Landroid/app/PictureInPictureParams$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/PictureInPictureParams;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/app/PictureInPictureParams;
    .locals 0

    .line 280
    new-array p0, p1, [Landroid/app/PictureInPictureParams;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 275
    invoke-virtual {p0, p1}, Landroid/app/PictureInPictureParams$1;->newArray(I)[Landroid/app/PictureInPictureParams;

    move-result-object p0

    return-object p0
.end method
