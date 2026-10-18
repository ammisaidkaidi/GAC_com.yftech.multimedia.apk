.class Landroid/telephony/RadioAccessFamily$1;
.super Ljava/lang/Object;
.source "RadioAccessFamily.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/RadioAccessFamily;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/telephony/RadioAccessFamily;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/telephony/RadioAccessFamily;
    .locals 1

    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p0

    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 144
    new-instance v0, Landroid/telephony/RadioAccessFamily;

    invoke-direct {v0, p0, p1}, Landroid/telephony/RadioAccessFamily;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 137
    invoke-virtual {p0, p1}, Landroid/telephony/RadioAccessFamily$1;->createFromParcel(Landroid/os/Parcel;)Landroid/telephony/RadioAccessFamily;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/telephony/RadioAccessFamily;
    .locals 0

    .line 149
    new-array p0, p1, [Landroid/telephony/RadioAccessFamily;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 137
    invoke-virtual {p0, p1}, Landroid/telephony/RadioAccessFamily$1;->newArray(I)[Landroid/telephony/RadioAccessFamily;

    move-result-object p0

    return-object p0
.end method
