.class Landroid/nfc/NdefRecord$1;
.super Ljava/lang/Object;
.source "NdefRecord.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nfc/NdefRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/nfc/NdefRecord;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 994
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/nfc/NdefRecord;
    .locals 3

    .line 997
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p0

    int-to-short p0, p0

    .line 998
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 999
    new-array v0, v0, [B

    .line 1000
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    .line 1001
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1002
    new-array v1, v1, [B

    .line 1003
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readByteArray([B)V

    .line 1004
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1005
    new-array v2, v2, [B

    .line 1006
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readByteArray([B)V

    .line 1008
    new-instance p1, Landroid/nfc/NdefRecord;

    invoke-direct {p1, p0, v0, v1, v2}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 994
    invoke-virtual {p0, p1}, Landroid/nfc/NdefRecord$1;->createFromParcel(Landroid/os/Parcel;)Landroid/nfc/NdefRecord;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/nfc/NdefRecord;
    .locals 0

    .line 1012
    new-array p0, p1, [Landroid/nfc/NdefRecord;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 994
    invoke-virtual {p0, p1}, Landroid/nfc/NdefRecord$1;->newArray(I)[Landroid/nfc/NdefRecord;

    move-result-object p0

    return-object p0
.end method
