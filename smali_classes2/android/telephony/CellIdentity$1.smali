.class Landroid/telephony/CellIdentity$1;
.super Ljava/lang/Object;
.source "CellIdentity.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/CellIdentity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/telephony/CellIdentity;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/telephony/CellIdentity;
    .locals 0

    .line 215
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    .line 222
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Bad Cell identity Parcel"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 221
    :pswitch_0
    invoke-static {p1}, Landroid/telephony/CellIdentityTdscdma;->createFromParcelBody(Landroid/os/Parcel;)Landroid/telephony/CellIdentityTdscdma;

    move-result-object p0

    return-object p0

    .line 218
    :pswitch_1
    invoke-static {p1}, Landroid/telephony/CellIdentityWcdma;->createFromParcelBody(Landroid/os/Parcel;)Landroid/telephony/CellIdentityWcdma;

    move-result-object p0

    return-object p0

    .line 220
    :pswitch_2
    invoke-static {p1}, Landroid/telephony/CellIdentityLte;->createFromParcelBody(Landroid/os/Parcel;)Landroid/telephony/CellIdentityLte;

    move-result-object p0

    return-object p0

    .line 219
    :pswitch_3
    invoke-static {p1}, Landroid/telephony/CellIdentityCdma;->createFromParcelBody(Landroid/os/Parcel;)Landroid/telephony/CellIdentityCdma;

    move-result-object p0

    return-object p0

    .line 217
    :pswitch_4
    invoke-static {p1}, Landroid/telephony/CellIdentityGsm;->createFromParcelBody(Landroid/os/Parcel;)Landroid/telephony/CellIdentityGsm;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 212
    invoke-virtual {p0, p1}, Landroid/telephony/CellIdentity$1;->createFromParcel(Landroid/os/Parcel;)Landroid/telephony/CellIdentity;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/telephony/CellIdentity;
    .locals 0

    .line 228
    new-array p0, p1, [Landroid/telephony/CellIdentity;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 212
    invoke-virtual {p0, p1}, Landroid/telephony/CellIdentity$1;->newArray(I)[Landroid/telephony/CellIdentity;

    move-result-object p0

    return-object p0
.end method
