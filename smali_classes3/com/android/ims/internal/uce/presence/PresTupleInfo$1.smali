.class Lcom/android/ims/internal/uce/presence/PresTupleInfo$1;
.super Ljava/lang/Object;
.source "PresTupleInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/uce/presence/PresTupleInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/android/ims/internal/uce/presence/PresTupleInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/ims/internal/uce/presence/PresTupleInfo;
    .locals 1

    .line 100
    new-instance p0, Lcom/android/ims/internal/uce/presence/PresTupleInfo;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/ims/internal/uce/presence/PresTupleInfo;-><init>(Landroid/os/Parcel;Lcom/android/ims/internal/uce/presence/PresTupleInfo$1;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 97
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/uce/presence/PresTupleInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/ims/internal/uce/presence/PresTupleInfo;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/android/ims/internal/uce/presence/PresTupleInfo;
    .locals 0

    .line 104
    new-array p0, p1, [Lcom/android/ims/internal/uce/presence/PresTupleInfo;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 97
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/uce/presence/PresTupleInfo$1;->newArray(I)[Lcom/android/ims/internal/uce/presence/PresTupleInfo;

    move-result-object p0

    return-object p0
.end method
