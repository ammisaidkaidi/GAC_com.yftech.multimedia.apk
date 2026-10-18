.class Landroid/app/PictureInPictureArgs$1;
.super Ljava/lang/Object;
.source "PictureInPictureArgs.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/PictureInPictureArgs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/app/PictureInPictureArgs;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 346
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/app/PictureInPictureArgs;
    .locals 1

    .line 348
    new-instance p0, Landroid/app/PictureInPictureArgs;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/app/PictureInPictureArgs;-><init>(Landroid/os/Parcel;Landroid/app/PictureInPictureArgs$1;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 346
    invoke-virtual {p0, p1}, Landroid/app/PictureInPictureArgs$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/PictureInPictureArgs;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/app/PictureInPictureArgs;
    .locals 0

    .line 351
    new-array p0, p1, [Landroid/app/PictureInPictureArgs;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 346
    invoke-virtual {p0, p1}, Landroid/app/PictureInPictureArgs$1;->newArray(I)[Landroid/app/PictureInPictureArgs;

    move-result-object p0

    return-object p0
.end method
