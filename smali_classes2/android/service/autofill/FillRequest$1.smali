.class Landroid/service/autofill/FillRequest$1;
.super Ljava/lang/Object;
.source "FillRequest.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/autofill/FillRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/service/autofill/FillRequest;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/service/autofill/FillRequest;
    .locals 1

    .line 163
    new-instance p0, Landroid/service/autofill/FillRequest;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/service/autofill/FillRequest;-><init>(Landroid/os/Parcel;Landroid/service/autofill/FillRequest$1;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 160
    invoke-virtual {p0, p1}, Landroid/service/autofill/FillRequest$1;->createFromParcel(Landroid/os/Parcel;)Landroid/service/autofill/FillRequest;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/service/autofill/FillRequest;
    .locals 0

    .line 168
    new-array p0, p1, [Landroid/service/autofill/FillRequest;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 160
    invoke-virtual {p0, p1}, Landroid/service/autofill/FillRequest$1;->newArray(I)[Landroid/service/autofill/FillRequest;

    move-result-object p0

    return-object p0
.end method
