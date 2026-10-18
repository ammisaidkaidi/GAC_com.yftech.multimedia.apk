.class Landroid/app/job/JobInfo$1;
.super Ljava/lang/Object;
.source "JobInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/job/JobInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/app/job/JobInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 855
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/app/job/JobInfo;
    .locals 1

    .line 858
    new-instance p0, Landroid/app/job/JobInfo;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/app/job/JobInfo;-><init>(Landroid/os/Parcel;Landroid/app/job/JobInfo$1;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 855
    invoke-virtual {p0, p1}, Landroid/app/job/JobInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/job/JobInfo;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/app/job/JobInfo;
    .locals 0

    .line 863
    new-array p0, p1, [Landroid/app/job/JobInfo;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 855
    invoke-virtual {p0, p1}, Landroid/app/job/JobInfo$1;->newArray(I)[Landroid/app/job/JobInfo;

    move-result-object p0

    return-object p0
.end method
