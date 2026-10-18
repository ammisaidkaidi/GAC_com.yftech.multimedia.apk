.class Landroid/os/StatsLogEventWrapper$1;
.super Ljava/lang/Object;
.source "StatsLogEventWrapper.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/StatsLogEventWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/os/StatsLogEventWrapper;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/os/StatsLogEventWrapper;
    .locals 1

    const/4 p0, 0x3

    .line 68
    new-array p0, p0, [Ljava/lang/Object;

    const/4 p1, 0x0

    const-string v0, "112550251"

    aput-object v0, p0, p1

    .line 69
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x1

    aput-object p1, p0, v0

    const/4 p1, 0x2

    const-string v0, ""

    aput-object v0, p0, p1

    const p1, 0x534e4554

    .line 68
    invoke-static {p1, p0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 71
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Not implemented"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 66
    invoke-virtual {p0, p1}, Landroid/os/StatsLogEventWrapper$1;->createFromParcel(Landroid/os/Parcel;)Landroid/os/StatsLogEventWrapper;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/os/StatsLogEventWrapper;
    .locals 1

    const/4 p0, 0x3

    .line 75
    new-array p0, p0, [Ljava/lang/Object;

    const/4 p1, 0x0

    const-string v0, "112550251"

    aput-object v0, p0, p1

    .line 76
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x1

    aput-object p1, p0, v0

    const/4 p1, 0x2

    const-string v0, ""

    aput-object v0, p0, p1

    const p1, 0x534e4554

    .line 75
    invoke-static {p1, p0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 78
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Not implemented"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 66
    invoke-virtual {p0, p1}, Landroid/os/StatsLogEventWrapper$1;->newArray(I)[Landroid/os/StatsLogEventWrapper;

    move-result-object p0

    return-object p0
.end method
