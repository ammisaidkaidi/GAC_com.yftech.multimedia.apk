.class Landroid/app/job/JobParameters$1;
.super Ljava/lang/Object;
.source "JobParameters.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/job/JobParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/app/job/JobParameters;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 341
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/app/job/JobParameters;
    .locals 1

    .line 344
    new-instance p0, Landroid/app/job/JobParameters;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/app/job/JobParameters;-><init>(Landroid/os/Parcel;Landroid/app/job/JobParameters$1;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 341
    invoke-virtual {p0, p1}, Landroid/app/job/JobParameters$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/job/JobParameters;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/app/job/JobParameters;
    .locals 0

    .line 349
    new-array p0, p1, [Landroid/app/job/JobParameters;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 341
    invoke-virtual {p0, p1}, Landroid/app/job/JobParameters$1;->newArray(I)[Landroid/app/job/JobParameters;

    move-result-object p0

    return-object p0
.end method
