.class Landroid/service/notification/Condition$1;
.super Ljava/lang/Object;
.source "Condition.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/notification/Condition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/service/notification/Condition;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/service/notification/Condition;
    .locals 0

    .line 250
    new-instance p0, Landroid/service/notification/Condition;

    invoke-direct {p0, p1}, Landroid/service/notification/Condition;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 247
    invoke-virtual {p0, p1}, Landroid/service/notification/Condition$1;->createFromParcel(Landroid/os/Parcel;)Landroid/service/notification/Condition;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/service/notification/Condition;
    .locals 0

    .line 255
    new-array p0, p1, [Landroid/service/notification/Condition;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 247
    invoke-virtual {p0, p1}, Landroid/service/notification/Condition$1;->newArray(I)[Landroid/service/notification/Condition;

    move-result-object p0

    return-object p0
.end method
