.class Lcom/android/ims/internal/uce/common/CapInfo$1;
.super Ljava/lang/Object;
.source "CapInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/uce/common/CapInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/android/ims/internal/uce/common/CapInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 401
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/ims/internal/uce/common/CapInfo;
    .locals 1

    .line 404
    new-instance p0, Lcom/android/ims/internal/uce/common/CapInfo;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/ims/internal/uce/common/CapInfo;-><init>(Landroid/os/Parcel;Lcom/android/ims/internal/uce/common/CapInfo$1;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 401
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/uce/common/CapInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/ims/internal/uce/common/CapInfo;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/android/ims/internal/uce/common/CapInfo;
    .locals 0

    .line 408
    new-array p0, p1, [Lcom/android/ims/internal/uce/common/CapInfo;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 401
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/uce/common/CapInfo$1;->newArray(I)[Lcom/android/ims/internal/uce/common/CapInfo;

    move-result-object p0

    return-object p0
.end method
