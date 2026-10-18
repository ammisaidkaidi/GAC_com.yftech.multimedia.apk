.class Landroid/telecom/VideoProfile$1;
.super Ljava/lang/Object;
.source "VideoProfile.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/VideoProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/telecom/VideoProfile;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/telecom/VideoProfile;
    .locals 1

    .line 180
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p0

    .line 181
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 183
    const-class v0, Landroid/telecom/VideoProfile;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 184
    new-instance v0, Landroid/telecom/VideoProfile;

    invoke-direct {v0, p0, p1}, Landroid/telecom/VideoProfile;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 171
    invoke-virtual {p0, p1}, Landroid/telecom/VideoProfile$1;->createFromParcel(Landroid/os/Parcel;)Landroid/telecom/VideoProfile;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/telecom/VideoProfile;
    .locals 0

    .line 189
    new-array p0, p1, [Landroid/telecom/VideoProfile;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 171
    invoke-virtual {p0, p1}, Landroid/telecom/VideoProfile$1;->newArray(I)[Landroid/telecom/VideoProfile;

    move-result-object p0

    return-object p0
.end method
