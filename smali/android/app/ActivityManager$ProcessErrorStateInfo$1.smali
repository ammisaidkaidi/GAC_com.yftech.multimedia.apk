.class Landroid/app/ActivityManager$ProcessErrorStateInfo$1;
.super Ljava/lang/Object;
.source "ActivityManager.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityManager$ProcessErrorStateInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/app/ActivityManager$ProcessErrorStateInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 2914
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/app/ActivityManager$ProcessErrorStateInfo;
    .locals 1

    .line 2916
    new-instance p0, Landroid/app/ActivityManager$ProcessErrorStateInfo;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/app/ActivityManager$ProcessErrorStateInfo;-><init>(Landroid/os/Parcel;Landroid/app/ActivityManager$1;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 2914
    invoke-virtual {p0, p1}, Landroid/app/ActivityManager$ProcessErrorStateInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/ActivityManager$ProcessErrorStateInfo;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/app/ActivityManager$ProcessErrorStateInfo;
    .locals 0

    .line 2919
    new-array p0, p1, [Landroid/app/ActivityManager$ProcessErrorStateInfo;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 2914
    invoke-virtual {p0, p1}, Landroid/app/ActivityManager$ProcessErrorStateInfo$1;->newArray(I)[Landroid/app/ActivityManager$ProcessErrorStateInfo;

    move-result-object p0

    return-object p0
.end method
