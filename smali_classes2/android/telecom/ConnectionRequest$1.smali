.class Landroid/telecom/ConnectionRequest$1;
.super Ljava/lang/Object;
.source "ConnectionRequest.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/ConnectionRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/telecom/ConnectionRequest;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 343
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/telecom/ConnectionRequest;
    .locals 1

    .line 346
    new-instance p0, Landroid/telecom/ConnectionRequest;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionRequest;-><init>(Landroid/os/Parcel;Landroid/telecom/ConnectionRequest$1;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 343
    invoke-virtual {p0, p1}, Landroid/telecom/ConnectionRequest$1;->createFromParcel(Landroid/os/Parcel;)Landroid/telecom/ConnectionRequest;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/telecom/ConnectionRequest;
    .locals 0

    .line 351
    new-array p0, p1, [Landroid/telecom/ConnectionRequest;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 343
    invoke-virtual {p0, p1}, Landroid/telecom/ConnectionRequest$1;->newArray(I)[Landroid/telecom/ConnectionRequest;

    move-result-object p0

    return-object p0
.end method
