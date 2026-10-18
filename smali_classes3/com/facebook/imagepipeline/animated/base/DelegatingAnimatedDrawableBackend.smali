.class public abstract Lcom/facebook/imagepipeline/animated/base/DelegatingAnimatedDrawableBackend;
.super Ljava/lang/Object;
.source "DelegatingAnimatedDrawableBackend.java"

# interfaces
.implements Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;


# instance fields
.field private final mAnimatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/facebook/imagepipeline/animated/base/DelegatingAnimatedDrawableBackend;->mAnimatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;

    return-void
.end method


# virtual methods
.method public dropCaches()V
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/facebook/imagepipeline/animated/base/DelegatingAnimatedDrawableBackend;->mAnimatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;

    invoke-interface {p0}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;->dropCaches()V

    return-void
.end method

.method public getAnimatedImageResult()Lcom/facebook/imagepipeline/animated/base/AnimatedImageResult;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/facebook/imagepipeline/animated/base/DelegatingAnimatedDrawableBackend;->mAnimatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;

    invoke-interface {p0}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;->getAnimatedImageResult()Lcom/facebook/imagepipeline/animated/base/AnimatedImageResult;

    move-result-object p0

    return-object p0
.end method

.method protected getDelegate()Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/facebook/imagepipeline/animated/base/DelegatingAnimatedDrawableBackend;->mAnimatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;

    return-object p0
.end method

.method public getDurationMs()I
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/facebook/imagepipeline/animated/base/DelegatingAnimatedDrawableBackend;->mAnimatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;

    invoke-interface {p0}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;->getDurationMs()I

    move-result p0

    return p0
.end method

.method public getDurationMsForFrame(I)I
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/facebook/imagepipeline/animated/base/DelegatingAnimatedDrawableBackend;->mAnimatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;

    invoke-interface {p0, p1}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;->getDurationMsForFrame(I)I

    move-result p0

    return p0
.end method

.method public getFrameCount()I
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/facebook/imagepipeline/animated/base/DelegatingAnimatedDrawableBackend;->mAnimatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;

    invoke-interface {p0}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;->getFrameCount()I

    move-result p0

    return p0
.end method

.method public getFrameForPreview()I
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/facebook/imagepipeline/animated/base/DelegatingAnimatedDrawableBackend;->mAnimatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;

    invoke-interface {p0}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;->getFrameForPreview()I

    move-result p0

    return p0
.end method

.method public getFrameForTimestampMs(I)I
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/facebook/imagepipeline/animated/base/DelegatingAnimatedDrawableBackend;->mAnimatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;

    invoke-interface {p0, p1}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;->getFrameForTimestampMs(I)I

    move-result p0

    return p0
.end method

.method public getFrameInfo(I)Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/facebook/imagepipeline/animated/base/DelegatingAnimatedDrawableBackend;->mAnimatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;

    invoke-interface {p0, p1}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;->getFrameInfo(I)Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;

    move-result-object p0

    return-object p0
.end method

.method public getHeight()I
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/facebook/imagepipeline/animated/base/DelegatingAnimatedDrawableBackend;->mAnimatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;

    invoke-interface {p0}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;->getHeight()I

    move-result p0

    return p0
.end method

.method public getLoopCount()I
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/facebook/imagepipeline/animated/base/DelegatingAnimatedDrawableBackend;->mAnimatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;

    invoke-interface {p0}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;->getLoopCount()I

    move-result p0

    return p0
.end method

.method public getMemoryUsage()I
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/facebook/imagepipeline/animated/base/DelegatingAnimatedDrawableBackend;->mAnimatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;

    invoke-interface {p0}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;->getMemoryUsage()I

    move-result p0

    return p0
.end method

.method public getPreDecodedFrame(I)Lcom/facebook/common/references/CloseableReference;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/facebook/common/references/CloseableReference<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 107
    iget-object p0, p0, Lcom/facebook/imagepipeline/animated/base/DelegatingAnimatedDrawableBackend;->mAnimatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;

    invoke-interface {p0, p1}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;->getPreDecodedFrame(I)Lcom/facebook/common/references/CloseableReference;

    move-result-object p0

    return-object p0
.end method

.method public getRenderedHeight()I
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/facebook/imagepipeline/animated/base/DelegatingAnimatedDrawableBackend;->mAnimatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;

    invoke-interface {p0}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;->getRenderedHeight()I

    move-result p0

    return p0
.end method

.method public getRenderedWidth()I
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/facebook/imagepipeline/animated/base/DelegatingAnimatedDrawableBackend;->mAnimatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;

    invoke-interface {p0}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;->getRenderedWidth()I

    move-result p0

    return p0
.end method

.method public getTimestampMsForFrame(I)I
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/facebook/imagepipeline/animated/base/DelegatingAnimatedDrawableBackend;->mAnimatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;

    invoke-interface {p0, p1}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;->getTimestampMsForFrame(I)I

    move-result p0

    return p0
.end method

.method public getWidth()I
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/facebook/imagepipeline/animated/base/DelegatingAnimatedDrawableBackend;->mAnimatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;

    invoke-interface {p0}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;->getWidth()I

    move-result p0

    return p0
.end method

.method public hasPreDecodedFrame(I)Z
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/facebook/imagepipeline/animated/base/DelegatingAnimatedDrawableBackend;->mAnimatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;

    invoke-interface {p0, p1}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;->hasPreDecodedFrame(I)Z

    move-result p0

    return p0
.end method

.method public renderFrame(ILandroid/graphics/Canvas;)V
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/facebook/imagepipeline/animated/base/DelegatingAnimatedDrawableBackend;->mAnimatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;

    invoke-interface {p0, p1, p2}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;->renderFrame(ILandroid/graphics/Canvas;)V

    return-void
.end method
