.class Landroid/telephony/RadioAccessSpecifier$1;
.super Ljava/lang/Object;
.source "RadioAccessSpecifier.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/RadioAccessSpecifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/telephony/RadioAccessSpecifier;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/telephony/RadioAccessSpecifier;
    .locals 1

    .line 116
    new-instance p0, Landroid/telephony/RadioAccessSpecifier;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/telephony/RadioAccessSpecifier;-><init>(Landroid/os/Parcel;Landroid/telephony/RadioAccessSpecifier$1;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 113
    invoke-virtual {p0, p1}, Landroid/telephony/RadioAccessSpecifier$1;->createFromParcel(Landroid/os/Parcel;)Landroid/telephony/RadioAccessSpecifier;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/telephony/RadioAccessSpecifier;
    .locals 0

    .line 121
    new-array p0, p1, [Landroid/telephony/RadioAccessSpecifier;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 113
    invoke-virtual {p0, p1}, Landroid/telephony/RadioAccessSpecifier$1;->newArray(I)[Landroid/telephony/RadioAccessSpecifier;

    move-result-object p0

    return-object p0
.end method
