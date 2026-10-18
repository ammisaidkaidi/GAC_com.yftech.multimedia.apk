.class public Landroid/media/audiofx/DynamicsProcessing$BandStage;
.super Landroid/media/audiofx/DynamicsProcessing$Stage;
.source "DynamicsProcessing.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audiofx/DynamicsProcessing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BandStage"
.end annotation


# instance fields
.field private mBandCount:I


# direct methods
.method public constructor <init>(ZZI)V
    .locals 0

    .line 377
    invoke-direct {p0, p1, p2}, Landroid/media/audiofx/DynamicsProcessing$Stage;-><init>(ZZ)V

    .line 378
    invoke-virtual {p0}, Landroid/media/audiofx/DynamicsProcessing$BandStage;->isInUse()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    iput p3, p0, Landroid/media/audiofx/DynamicsProcessing$BandStage;->mBandCount:I

    return-void
.end method


# virtual methods
.method public getBandCount()I
    .locals 0

    .line 386
    iget p0, p0, Landroid/media/audiofx/DynamicsProcessing$BandStage;->mBandCount:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 391
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 392
    invoke-super {p0}, Landroid/media/audiofx/DynamicsProcessing$Stage;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    invoke-virtual {p0}, Landroid/media/audiofx/DynamicsProcessing$BandStage;->isInUse()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, " Band Count: %d%n"

    const/4 v2, 0x1

    .line 396
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget p0, p0, Landroid/media/audiofx/DynamicsProcessing$BandStage;->mBandCount:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
