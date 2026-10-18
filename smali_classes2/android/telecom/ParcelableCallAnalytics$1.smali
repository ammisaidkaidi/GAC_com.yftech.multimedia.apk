.class Landroid/telecom/ParcelableCallAnalytics$1;
.super Ljava/lang/Object;
.source "ParcelableCallAnalytics.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/ParcelableCallAnalytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/telecom/ParcelableCallAnalytics;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/telecom/ParcelableCallAnalytics;
    .locals 0

    .line 269
    new-instance p0, Landroid/telecom/ParcelableCallAnalytics;

    invoke-direct {p0, p1}, Landroid/telecom/ParcelableCallAnalytics;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 265
    invoke-virtual {p0, p1}, Landroid/telecom/ParcelableCallAnalytics$1;->createFromParcel(Landroid/os/Parcel;)Landroid/telecom/ParcelableCallAnalytics;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/telecom/ParcelableCallAnalytics;
    .locals 0

    .line 274
    new-array p0, p1, [Landroid/telecom/ParcelableCallAnalytics;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 265
    invoke-virtual {p0, p1}, Landroid/telecom/ParcelableCallAnalytics$1;->newArray(I)[Landroid/telecom/ParcelableCallAnalytics;

    move-result-object p0

    return-object p0
.end method
