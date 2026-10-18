.class Landroid/hardware/hdmi/HdmiTimerRecordSources$TimeUnit;
.super Ljava/lang/Object;
.source "HdmiTimerRecordSources.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/hdmi/HdmiTimerRecordSources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TimeUnit"
.end annotation


# instance fields
.field final mHour:I

.field final mMinute:I


# direct methods
.method constructor <init>(II)V
    .locals 0

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    iput p1, p0, Landroid/hardware/hdmi/HdmiTimerRecordSources$TimeUnit;->mHour:I

    .line 196
    iput p2, p0, Landroid/hardware/hdmi/HdmiTimerRecordSources$TimeUnit;->mMinute:I

    return-void
.end method

.method static toBcdByte(I)B
    .locals 1

    .line 206
    div-int/lit8 v0, p0, 0xa

    rem-int/lit8 v0, v0, 0xa

    .line 207
    rem-int/lit8 p0, p0, 0xa

    shl-int/lit8 v0, v0, 0x4

    or-int/2addr p0, v0

    int-to-byte p0, p0

    return p0
.end method


# virtual methods
.method toByteArray([BI)I
    .locals 1

    .line 200
    iget v0, p0, Landroid/hardware/hdmi/HdmiTimerRecordSources$TimeUnit;->mHour:I

    invoke-static {v0}, Landroid/hardware/hdmi/HdmiTimerRecordSources$TimeUnit;->toBcdByte(I)B

    move-result v0

    aput-byte v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    .line 201
    iget p0, p0, Landroid/hardware/hdmi/HdmiTimerRecordSources$TimeUnit;->mMinute:I

    invoke-static {p0}, Landroid/hardware/hdmi/HdmiTimerRecordSources$TimeUnit;->toBcdByte(I)B

    move-result p0

    aput-byte p0, p1, p2

    const/4 p0, 0x2

    return p0
.end method
