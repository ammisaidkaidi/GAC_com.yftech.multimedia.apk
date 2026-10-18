.class Landroid/telecom/TelecomAnalytics$SessionTiming$1;
.super Ljava/lang/Object;
.source "TelecomAnalytics.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/TelecomAnalytics$SessionTiming;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/telecom/TelecomAnalytics$SessionTiming;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/telecom/TelecomAnalytics$SessionTiming;
    .locals 1

    .line 51
    new-instance p0, Landroid/telecom/TelecomAnalytics$SessionTiming;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/telecom/TelecomAnalytics$SessionTiming;-><init>(Landroid/os/Parcel;Landroid/telecom/TelecomAnalytics$1;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Landroid/telecom/TelecomAnalytics$SessionTiming$1;->createFromParcel(Landroid/os/Parcel;)Landroid/telecom/TelecomAnalytics$SessionTiming;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/telecom/TelecomAnalytics$SessionTiming;
    .locals 0

    .line 56
    new-array p0, p1, [Landroid/telecom/TelecomAnalytics$SessionTiming;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Landroid/telecom/TelecomAnalytics$SessionTiming$1;->newArray(I)[Landroid/telecom/TelecomAnalytics$SessionTiming;

    move-result-object p0

    return-object p0
.end method
