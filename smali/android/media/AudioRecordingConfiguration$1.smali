.class Landroid/media/AudioRecordingConfiguration$1;
.super Ljava/lang/Object;
.source "AudioRecordingConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioRecordingConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/media/AudioRecordingConfiguration;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/media/AudioRecordingConfiguration;
    .locals 1

    .line 231
    new-instance p0, Landroid/media/AudioRecordingConfiguration;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/media/AudioRecordingConfiguration;-><init>(Landroid/os/Parcel;Landroid/media/AudioRecordingConfiguration$1;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 224
    invoke-virtual {p0, p1}, Landroid/media/AudioRecordingConfiguration$1;->createFromParcel(Landroid/os/Parcel;)Landroid/media/AudioRecordingConfiguration;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/media/AudioRecordingConfiguration;
    .locals 0

    .line 234
    new-array p0, p1, [Landroid/media/AudioRecordingConfiguration;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 224
    invoke-virtual {p0, p1}, Landroid/media/AudioRecordingConfiguration$1;->newArray(I)[Landroid/media/AudioRecordingConfiguration;

    move-result-object p0

    return-object p0
.end method
