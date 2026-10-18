.class Landroid/telephony/PcoData$1;
.super Ljava/lang/Object;
.source "PcoData.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/PcoData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/telephony/PcoData;
    .locals 0

    .line 74
    new-instance p0, Landroid/telephony/PcoData;

    invoke-direct {p0, p1}, Landroid/telephony/PcoData;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 72
    invoke-virtual {p0, p1}, Landroid/telephony/PcoData$1;->createFromParcel(Landroid/os/Parcel;)Landroid/telephony/PcoData;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/telephony/PcoData;
    .locals 0

    .line 78
    new-array p0, p1, [Landroid/telephony/PcoData;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 72
    invoke-virtual {p0, p1}, Landroid/telephony/PcoData$1;->newArray(I)[Landroid/telephony/PcoData;

    move-result-object p0

    return-object p0
.end method
