.class public final Landroid/hardware/display/BrightnessChangeEvent;
.super Ljava/lang/Object;
.source "BrightnessChangeEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/display/BrightnessChangeEvent$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/display/BrightnessChangeEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final batteryLevel:F

.field public final brightness:F

.field public final colorTemperature:I

.field public final isDefaultBrightnessConfig:Z

.field public final isUserSetBrightness:Z

.field public final lastBrightness:F

.field public final luxTimestamps:[J

.field public final luxValues:[F

.field public final nightMode:Z

.field public final packageName:Ljava/lang/String;

.field public final powerBrightnessFactor:F

.field public final timeStamp:J

.field public final userId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 129
    new-instance v0, Landroid/hardware/display/BrightnessChangeEvent$1;

    invoke-direct {v0}, Landroid/hardware/display/BrightnessChangeEvent$1;-><init>()V

    sput-object v0, Landroid/hardware/display/BrightnessChangeEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(FJLjava/lang/String;I[F[JFFZIFZZ)V
    .locals 0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput p1, p0, Landroid/hardware/display/BrightnessChangeEvent;->brightness:F

    .line 82
    iput-wide p2, p0, Landroid/hardware/display/BrightnessChangeEvent;->timeStamp:J

    .line 83
    iput-object p4, p0, Landroid/hardware/display/BrightnessChangeEvent;->packageName:Ljava/lang/String;

    .line 84
    iput p5, p0, Landroid/hardware/display/BrightnessChangeEvent;->userId:I

    .line 85
    iput-object p6, p0, Landroid/hardware/display/BrightnessChangeEvent;->luxValues:[F

    .line 86
    iput-object p7, p0, Landroid/hardware/display/BrightnessChangeEvent;->luxTimestamps:[J

    .line 87
    iput p8, p0, Landroid/hardware/display/BrightnessChangeEvent;->batteryLevel:F

    .line 88
    iput p9, p0, Landroid/hardware/display/BrightnessChangeEvent;->powerBrightnessFactor:F

    .line 89
    iput-boolean p10, p0, Landroid/hardware/display/BrightnessChangeEvent;->nightMode:Z

    .line 90
    iput p11, p0, Landroid/hardware/display/BrightnessChangeEvent;->colorTemperature:I

    .line 91
    iput p12, p0, Landroid/hardware/display/BrightnessChangeEvent;->lastBrightness:F

    .line 92
    iput-boolean p13, p0, Landroid/hardware/display/BrightnessChangeEvent;->isDefaultBrightnessConfig:Z

    .line 93
    iput-boolean p14, p0, Landroid/hardware/display/BrightnessChangeEvent;->isUserSetBrightness:Z

    return-void
.end method

.method synthetic constructor <init>(FJLjava/lang/String;I[F[JFFZIFZZLandroid/hardware/display/BrightnessChangeEvent$1;)V
    .locals 0

    .line 32
    invoke-direct/range {p0 .. p14}, Landroid/hardware/display/BrightnessChangeEvent;-><init>(FJLjava/lang/String;I[F[JFFZIFZZ)V

    return-void
.end method

.method public constructor <init>(Landroid/hardware/display/BrightnessChangeEvent;Z)V
    .locals 2

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iget v0, p1, Landroid/hardware/display/BrightnessChangeEvent;->brightness:F

    iput v0, p0, Landroid/hardware/display/BrightnessChangeEvent;->brightness:F

    .line 99
    iget-wide v0, p1, Landroid/hardware/display/BrightnessChangeEvent;->timeStamp:J

    iput-wide v0, p0, Landroid/hardware/display/BrightnessChangeEvent;->timeStamp:J

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 100
    :cond_0
    iget-object p2, p1, Landroid/hardware/display/BrightnessChangeEvent;->packageName:Ljava/lang/String;

    :goto_0
    iput-object p2, p0, Landroid/hardware/display/BrightnessChangeEvent;->packageName:Ljava/lang/String;

    .line 101
    iget p2, p1, Landroid/hardware/display/BrightnessChangeEvent;->userId:I

    iput p2, p0, Landroid/hardware/display/BrightnessChangeEvent;->userId:I

    .line 102
    iget-object p2, p1, Landroid/hardware/display/BrightnessChangeEvent;->luxValues:[F

    iput-object p2, p0, Landroid/hardware/display/BrightnessChangeEvent;->luxValues:[F

    .line 103
    iget-object p2, p1, Landroid/hardware/display/BrightnessChangeEvent;->luxTimestamps:[J

    iput-object p2, p0, Landroid/hardware/display/BrightnessChangeEvent;->luxTimestamps:[J

    .line 104
    iget p2, p1, Landroid/hardware/display/BrightnessChangeEvent;->batteryLevel:F

    iput p2, p0, Landroid/hardware/display/BrightnessChangeEvent;->batteryLevel:F

    .line 105
    iget p2, p1, Landroid/hardware/display/BrightnessChangeEvent;->powerBrightnessFactor:F

    iput p2, p0, Landroid/hardware/display/BrightnessChangeEvent;->powerBrightnessFactor:F

    .line 106
    iget-boolean p2, p1, Landroid/hardware/display/BrightnessChangeEvent;->nightMode:Z

    iput-boolean p2, p0, Landroid/hardware/display/BrightnessChangeEvent;->nightMode:Z

    .line 107
    iget p2, p1, Landroid/hardware/display/BrightnessChangeEvent;->colorTemperature:I

    iput p2, p0, Landroid/hardware/display/BrightnessChangeEvent;->colorTemperature:I

    .line 108
    iget p2, p1, Landroid/hardware/display/BrightnessChangeEvent;->lastBrightness:F

    iput p2, p0, Landroid/hardware/display/BrightnessChangeEvent;->lastBrightness:F

    .line 109
    iget-boolean p2, p1, Landroid/hardware/display/BrightnessChangeEvent;->isDefaultBrightnessConfig:Z

    iput-boolean p2, p0, Landroid/hardware/display/BrightnessChangeEvent;->isDefaultBrightnessConfig:Z

    .line 110
    iget-boolean p1, p1, Landroid/hardware/display/BrightnessChangeEvent;->isUserSetBrightness:Z

    iput-boolean p1, p0, Landroid/hardware/display/BrightnessChangeEvent;->isUserSetBrightness:Z

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/hardware/display/BrightnessChangeEvent;->brightness:F

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/display/BrightnessChangeEvent;->timeStamp:J

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/display/BrightnessChangeEvent;->packageName:Ljava/lang/String;

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/display/BrightnessChangeEvent;->userId:I

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/display/BrightnessChangeEvent;->luxValues:[F

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/display/BrightnessChangeEvent;->luxTimestamps:[J

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/hardware/display/BrightnessChangeEvent;->batteryLevel:F

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/hardware/display/BrightnessChangeEvent;->powerBrightnessFactor:F

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/display/BrightnessChangeEvent;->nightMode:Z

    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/display/BrightnessChangeEvent;->colorTemperature:I

    .line 124
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/hardware/display/BrightnessChangeEvent;->lastBrightness:F

    .line 125
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/display/BrightnessChangeEvent;->isDefaultBrightnessConfig:Z

    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    iput-boolean p1, p0, Landroid/hardware/display/BrightnessChangeEvent;->isUserSetBrightness:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/hardware/display/BrightnessChangeEvent$1;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Landroid/hardware/display/BrightnessChangeEvent;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 146
    iget p2, p0, Landroid/hardware/display/BrightnessChangeEvent;->brightness:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 147
    iget-wide v0, p0, Landroid/hardware/display/BrightnessChangeEvent;->timeStamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 148
    iget-object p2, p0, Landroid/hardware/display/BrightnessChangeEvent;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 149
    iget p2, p0, Landroid/hardware/display/BrightnessChangeEvent;->userId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 150
    iget-object p2, p0, Landroid/hardware/display/BrightnessChangeEvent;->luxValues:[F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 151
    iget-object p2, p0, Landroid/hardware/display/BrightnessChangeEvent;->luxTimestamps:[J

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 152
    iget p2, p0, Landroid/hardware/display/BrightnessChangeEvent;->batteryLevel:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 153
    iget p2, p0, Landroid/hardware/display/BrightnessChangeEvent;->powerBrightnessFactor:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 154
    iget-boolean p2, p0, Landroid/hardware/display/BrightnessChangeEvent;->nightMode:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 155
    iget p2, p0, Landroid/hardware/display/BrightnessChangeEvent;->colorTemperature:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 156
    iget p2, p0, Landroid/hardware/display/BrightnessChangeEvent;->lastBrightness:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 157
    iget-boolean p2, p0, Landroid/hardware/display/BrightnessChangeEvent;->isDefaultBrightnessConfig:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 158
    iget-boolean p0, p0, Landroid/hardware/display/BrightnessChangeEvent;->isUserSetBrightness:Z

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void
.end method
