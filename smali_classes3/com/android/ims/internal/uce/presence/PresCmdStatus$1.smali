.class Lcom/android/ims/internal/uce/presence/PresCmdStatus$1;
.super Ljava/lang/Object;
.source "PresCmdStatus.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/uce/presence/PresCmdStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/android/ims/internal/uce/presence/PresCmdStatus;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/ims/internal/uce/presence/PresCmdStatus;
    .locals 1

    .line 124
    new-instance p0, Lcom/android/ims/internal/uce/presence/PresCmdStatus;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/ims/internal/uce/presence/PresCmdStatus;-><init>(Landroid/os/Parcel;Lcom/android/ims/internal/uce/presence/PresCmdStatus$1;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 120
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/uce/presence/PresCmdStatus$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/ims/internal/uce/presence/PresCmdStatus;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/android/ims/internal/uce/presence/PresCmdStatus;
    .locals 0

    .line 129
    new-array p0, p1, [Lcom/android/ims/internal/uce/presence/PresCmdStatus;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 120
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/uce/presence/PresCmdStatus$1;->newArray(I)[Lcom/android/ims/internal/uce/presence/PresCmdStatus;

    move-result-object p0

    return-object p0
.end method
