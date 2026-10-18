.class Landroid/media/AudioFormat$1;
.super Ljava/lang/Object;
.source "AudioFormat.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/media/AudioFormat;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1036
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/media/AudioFormat;
    .locals 1

    .line 1038
    new-instance p0, Landroid/media/AudioFormat;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/media/AudioFormat;-><init>(Landroid/os/Parcel;Landroid/media/AudioFormat$1;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1036
    invoke-virtual {p0, p1}, Landroid/media/AudioFormat$1;->createFromParcel(Landroid/os/Parcel;)Landroid/media/AudioFormat;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/media/AudioFormat;
    .locals 0

    .line 1041
    new-array p0, p1, [Landroid/media/AudioFormat;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1036
    invoke-virtual {p0, p1}, Landroid/media/AudioFormat$1;->newArray(I)[Landroid/media/AudioFormat;

    move-result-object p0

    return-object p0
.end method
