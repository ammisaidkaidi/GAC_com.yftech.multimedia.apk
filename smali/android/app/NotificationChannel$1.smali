.class Landroid/app/NotificationChannel$1;
.super Ljava/lang/Object;
.source "NotificationChannel.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/NotificationChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/app/NotificationChannel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 869
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/app/NotificationChannel;
    .locals 0

    .line 872
    new-instance p0, Landroid/app/NotificationChannel;

    invoke-direct {p0, p1}, Landroid/app/NotificationChannel;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 869
    invoke-virtual {p0, p1}, Landroid/app/NotificationChannel$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/NotificationChannel;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/app/NotificationChannel;
    .locals 0

    .line 877
    new-array p0, p1, [Landroid/app/NotificationChannel;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 869
    invoke-virtual {p0, p1}, Landroid/app/NotificationChannel$1;->newArray(I)[Landroid/app/NotificationChannel;

    move-result-object p0

    return-object p0
.end method
