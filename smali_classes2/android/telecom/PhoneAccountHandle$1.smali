.class Landroid/telecom/PhoneAccountHandle$1;
.super Ljava/lang/Object;
.source "PhoneAccountHandle.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/PhoneAccountHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/telecom/PhoneAccountHandle;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/telecom/PhoneAccountHandle;
    .locals 1

    .line 158
    new-instance p0, Landroid/telecom/PhoneAccountHandle;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/telecom/PhoneAccountHandle;-><init>(Landroid/os/Parcel;Landroid/telecom/PhoneAccountHandle$1;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 155
    invoke-virtual {p0, p1}, Landroid/telecom/PhoneAccountHandle$1;->createFromParcel(Landroid/os/Parcel;)Landroid/telecom/PhoneAccountHandle;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/telecom/PhoneAccountHandle;
    .locals 0

    .line 163
    new-array p0, p1, [Landroid/telecom/PhoneAccountHandle;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 155
    invoke-virtual {p0, p1}, Landroid/telecom/PhoneAccountHandle$1;->newArray(I)[Landroid/telecom/PhoneAccountHandle;

    move-result-object p0

    return-object p0
.end method
