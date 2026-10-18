.class public final Landroid/os/connectivity/GpsBatteryStats;
.super Ljava/lang/Object;
.source "GpsBatteryStats.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/connectivity/GpsBatteryStats;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mEnergyConsumedMaMs:J

.field private mLoggingDurationMs:J

.field private mTimeInGpsSignalQualityLevel:[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Landroid/os/connectivity/GpsBatteryStats$1;

    invoke-direct {v0}, Landroid/os/connectivity/GpsBatteryStats$1;-><init>()V

    sput-object v0, Landroid/os/connectivity/GpsBatteryStats;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-direct {p0}, Landroid/os/connectivity/GpsBatteryStats;->initialize()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    invoke-direct {p0}, Landroid/os/connectivity/GpsBatteryStats;->initialize()V

    .line 99
    invoke-virtual {p0, p1}, Landroid/os/connectivity/GpsBatteryStats;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/os/connectivity/GpsBatteryStats$1;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Landroid/os/connectivity/GpsBatteryStats;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private initialize()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 103
    iput-wide v0, p0, Landroid/os/connectivity/GpsBatteryStats;->mLoggingDurationMs:J

    .line 104
    iput-wide v0, p0, Landroid/os/connectivity/GpsBatteryStats;->mEnergyConsumedMaMs:J

    const/4 v0, 0x2

    .line 105
    new-array v0, v0, [J

    iput-object v0, p0, Landroid/os/connectivity/GpsBatteryStats;->mTimeInGpsSignalQualityLevel:[J

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getEnergyConsumedMaMs()J
    .locals 2

    .line 69
    iget-wide v0, p0, Landroid/os/connectivity/GpsBatteryStats;->mEnergyConsumedMaMs:J

    return-wide v0
.end method

.method public getLoggingDurationMs()J
    .locals 2

    .line 65
    iget-wide v0, p0, Landroid/os/connectivity/GpsBatteryStats;->mLoggingDurationMs:J

    return-wide v0
.end method

.method public getTimeInGpsSignalQualityLevel()[J
    .locals 0

    .line 73
    iget-object p0, p0, Landroid/os/connectivity/GpsBatteryStats;->mTimeInGpsSignalQualityLevel:[J

    return-object p0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/connectivity/GpsBatteryStats;->mLoggingDurationMs:J

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/connectivity/GpsBatteryStats;->mEnergyConsumedMaMs:J

    .line 61
    iget-object p0, p0, Landroid/os/connectivity/GpsBatteryStats;->mTimeInGpsSignalQualityLevel:[J

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->readLongArray([J)V

    return-void
.end method

.method public setEnergyConsumedMaMs(J)V
    .locals 0

    .line 82
    iput-wide p1, p0, Landroid/os/connectivity/GpsBatteryStats;->mEnergyConsumedMaMs:J

    return-void
.end method

.method public setLoggingDurationMs(J)V
    .locals 0

    .line 77
    iput-wide p1, p0, Landroid/os/connectivity/GpsBatteryStats;->mLoggingDurationMs:J

    return-void
.end method

.method public setTimeInGpsSignalQualityLevel([J)V
    .locals 2

    .line 87
    array-length v0, p1

    const/4 v1, 0x2

    .line 88
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    .line 87
    invoke-static {p1, v1, v0}, Ljava/util/Arrays;->copyOfRange([JII)[J

    move-result-object p1

    iput-object p1, p0, Landroid/os/connectivity/GpsBatteryStats;->mTimeInGpsSignalQualityLevel:[J

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 53
    iget-wide v0, p0, Landroid/os/connectivity/GpsBatteryStats;->mLoggingDurationMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 54
    iget-wide v0, p0, Landroid/os/connectivity/GpsBatteryStats;->mEnergyConsumedMaMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 55
    iget-object p0, p0, Landroid/os/connectivity/GpsBatteryStats;->mTimeInGpsSignalQualityLevel:[J

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeLongArray([J)V

    return-void
.end method
