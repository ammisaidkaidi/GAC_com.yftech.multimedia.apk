.class public Lcom/facebook/fresco/ui/common/DimensionsInfo;
.super Ljava/lang/Object;
.source "DimensionsInfo.java"


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->STRICT:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation


# instance fields
.field private final mDecodedImageHeight:I

.field private final mDecodedImageWidth:I

.field private final mEncodedImageHeight:I

.field private final mEncodedImageWidth:I

.field private final mScaleType:Ljava/lang/String;

.field private final mViewportHeight:I

.field private final mViewportWidth:I


# direct methods
.method public constructor <init>(IIIIIILjava/lang/String;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput p1, p0, Lcom/facebook/fresco/ui/common/DimensionsInfo;->mViewportWidth:I

    .line 34
    iput p2, p0, Lcom/facebook/fresco/ui/common/DimensionsInfo;->mViewportHeight:I

    .line 35
    iput p3, p0, Lcom/facebook/fresco/ui/common/DimensionsInfo;->mEncodedImageWidth:I

    .line 36
    iput p4, p0, Lcom/facebook/fresco/ui/common/DimensionsInfo;->mEncodedImageHeight:I

    .line 37
    iput p5, p0, Lcom/facebook/fresco/ui/common/DimensionsInfo;->mDecodedImageWidth:I

    .line 38
    iput p6, p0, Lcom/facebook/fresco/ui/common/DimensionsInfo;->mDecodedImageHeight:I

    .line 39
    iput-object p7, p0, Lcom/facebook/fresco/ui/common/DimensionsInfo;->mScaleType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDecodedImageHeight()I
    .locals 0

    .line 63
    iget p0, p0, Lcom/facebook/fresco/ui/common/DimensionsInfo;->mDecodedImageHeight:I

    return p0
.end method

.method public getDecodedImageWidth()I
    .locals 0

    .line 59
    iget p0, p0, Lcom/facebook/fresco/ui/common/DimensionsInfo;->mDecodedImageWidth:I

    return p0
.end method

.method public getEncodedImageHeight()I
    .locals 0

    .line 55
    iget p0, p0, Lcom/facebook/fresco/ui/common/DimensionsInfo;->mEncodedImageHeight:I

    return p0
.end method

.method public getEncodedImageWidth()I
    .locals 0

    .line 51
    iget p0, p0, Lcom/facebook/fresco/ui/common/DimensionsInfo;->mEncodedImageWidth:I

    return p0
.end method

.method public getScaleType()Ljava/lang/String;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/facebook/fresco/ui/common/DimensionsInfo;->mScaleType:Ljava/lang/String;

    return-object p0
.end method

.method public getViewportHeight()I
    .locals 0

    .line 47
    iget p0, p0, Lcom/facebook/fresco/ui/common/DimensionsInfo;->mViewportHeight:I

    return p0
.end method

.method public getViewportWidth()I
    .locals 0

    .line 43
    iget p0, p0, Lcom/facebook/fresco/ui/common/DimensionsInfo;->mViewportWidth:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DimensionsInfo{mViewportWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/facebook/fresco/ui/common/DimensionsInfo;->mViewportWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mViewportHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/facebook/fresco/ui/common/DimensionsInfo;->mViewportHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mEncodedImageWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/facebook/fresco/ui/common/DimensionsInfo;->mEncodedImageWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mEncodedImageHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/facebook/fresco/ui/common/DimensionsInfo;->mEncodedImageHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mDecodedImageWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/facebook/fresco/ui/common/DimensionsInfo;->mDecodedImageWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mDecodedImageHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/facebook/fresco/ui/common/DimensionsInfo;->mDecodedImageHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mScaleType=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/facebook/fresco/ui/common/DimensionsInfo;->mScaleType:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x27

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
