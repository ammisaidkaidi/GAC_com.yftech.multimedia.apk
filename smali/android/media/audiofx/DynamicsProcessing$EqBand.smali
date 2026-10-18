.class public final Landroid/media/audiofx/DynamicsProcessing$EqBand;
.super Landroid/media/audiofx/DynamicsProcessing$BandBase;
.source "DynamicsProcessing.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audiofx/DynamicsProcessing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EqBand"
.end annotation


# instance fields
.field private mGain:F


# direct methods
.method public constructor <init>(Landroid/media/audiofx/DynamicsProcessing$EqBand;)V
    .locals 2

    .line 496
    invoke-virtual {p1}, Landroid/media/audiofx/DynamicsProcessing$EqBand;->isEnabled()Z

    move-result v0

    invoke-virtual {p1}, Landroid/media/audiofx/DynamicsProcessing$EqBand;->getCutoffFrequency()F

    move-result v1

    invoke-direct {p0, v0, v1}, Landroid/media/audiofx/DynamicsProcessing$BandBase;-><init>(ZF)V

    .line 497
    iget p1, p1, Landroid/media/audiofx/DynamicsProcessing$EqBand;->mGain:F

    iput p1, p0, Landroid/media/audiofx/DynamicsProcessing$EqBand;->mGain:F

    return-void
.end method

.method public constructor <init>(ZFF)V
    .locals 0

    .line 487
    invoke-direct {p0, p1, p2}, Landroid/media/audiofx/DynamicsProcessing$BandBase;-><init>(ZF)V

    .line 488
    iput p3, p0, Landroid/media/audiofx/DynamicsProcessing$EqBand;->mGain:F

    return-void
.end method


# virtual methods
.method public getGain()F
    .locals 0

    .line 516
    iget p0, p0, Landroid/media/audiofx/DynamicsProcessing$EqBand;->mGain:F

    return p0
.end method

.method public setGain(F)V
    .locals 0

    .line 524
    iput p1, p0, Landroid/media/audiofx/DynamicsProcessing$EqBand;->mGain:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 502
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 503
    invoke-super {p0}, Landroid/media/audiofx/DynamicsProcessing$BandBase;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Gain: %f%n"

    const/4 v2, 0x1

    .line 506
    new-array v2, v2, [Ljava/lang/Object;

    iget p0, p0, Landroid/media/audiofx/DynamicsProcessing$EqBand;->mGain:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
