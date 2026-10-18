.class public Landroid/net/lowpan/LowpanEnergyScanResult;
.super Ljava/lang/Object;
.source "LowpanEnergyScanResult.java"


# static fields
.field public static final UNKNOWN:I = 0x7fffffff


# instance fields
.field private mChannel:I

.field private mMaxRssi:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    .line 28
    iput v0, p0, Landroid/net/lowpan/LowpanEnergyScanResult;->mChannel:I

    .line 29
    iput v0, p0, Landroid/net/lowpan/LowpanEnergyScanResult;->mMaxRssi:I

    return-void
.end method


# virtual methods
.method public getChannel()I
    .locals 0

    .line 34
    iget p0, p0, Landroid/net/lowpan/LowpanEnergyScanResult;->mChannel:I

    return p0
.end method

.method public getMaxRssi()I
    .locals 0

    .line 38
    iget p0, p0, Landroid/net/lowpan/LowpanEnergyScanResult;->mMaxRssi:I

    return p0
.end method

.method setChannel(I)V
    .locals 0

    .line 42
    iput p1, p0, Landroid/net/lowpan/LowpanEnergyScanResult;->mChannel:I

    return-void
.end method

.method setMaxRssi(I)V
    .locals 0

    .line 46
    iput p1, p0, Landroid/net/lowpan/LowpanEnergyScanResult;->mMaxRssi:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LowpanEnergyScanResult(channel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/lowpan/LowpanEnergyScanResult;->mChannel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", maxRssi:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/net/lowpan/LowpanEnergyScanResult;->mMaxRssi:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
