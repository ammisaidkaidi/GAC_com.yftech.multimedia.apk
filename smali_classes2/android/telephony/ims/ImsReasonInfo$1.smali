.class Landroid/telephony/ims/ImsReasonInfo$1;
.super Ljava/lang/Object;
.source "ImsReasonInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/ImsReasonInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/telephony/ims/ImsReasonInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 506
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/telephony/ims/ImsReasonInfo;
    .locals 1

    .line 509
    new-instance p0, Landroid/telephony/ims/ImsReasonInfo;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/telephony/ims/ImsReasonInfo;-><init>(Landroid/os/Parcel;Landroid/telephony/ims/ImsReasonInfo$1;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 506
    invoke-virtual {p0, p1}, Landroid/telephony/ims/ImsReasonInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/telephony/ims/ImsReasonInfo;
    .locals 0

    .line 514
    new-array p0, p1, [Landroid/telephony/ims/ImsReasonInfo;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 506
    invoke-virtual {p0, p1}, Landroid/telephony/ims/ImsReasonInfo$1;->newArray(I)[Landroid/telephony/ims/ImsReasonInfo;

    move-result-object p0

    return-object p0
.end method
