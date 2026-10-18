.class Landroid/telecom/ParcelableCallAnalytics$AnalyticsEvent$1;
.super Ljava/lang/Object;
.source "ParcelableCallAnalytics.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/ParcelableCallAnalytics$AnalyticsEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/telecom/ParcelableCallAnalytics$AnalyticsEvent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/telecom/ParcelableCallAnalytics$AnalyticsEvent;
    .locals 0

    .line 143
    new-instance p0, Landroid/telecom/ParcelableCallAnalytics$AnalyticsEvent;

    invoke-direct {p0, p1}, Landroid/telecom/ParcelableCallAnalytics$AnalyticsEvent;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 139
    invoke-virtual {p0, p1}, Landroid/telecom/ParcelableCallAnalytics$AnalyticsEvent$1;->createFromParcel(Landroid/os/Parcel;)Landroid/telecom/ParcelableCallAnalytics$AnalyticsEvent;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/telecom/ParcelableCallAnalytics$AnalyticsEvent;
    .locals 0

    .line 148
    new-array p0, p1, [Landroid/telecom/ParcelableCallAnalytics$AnalyticsEvent;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 139
    invoke-virtual {p0, p1}, Landroid/telecom/ParcelableCallAnalytics$AnalyticsEvent$1;->newArray(I)[Landroid/telecom/ParcelableCallAnalytics$AnalyticsEvent;

    move-result-object p0

    return-object p0
.end method
