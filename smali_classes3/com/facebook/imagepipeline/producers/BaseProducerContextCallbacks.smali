.class public Lcom/facebook/imagepipeline/producers/BaseProducerContextCallbacks;
.super Ljava/lang/Object;
.source "BaseProducerContextCallbacks.java"

# interfaces
.implements Lcom/facebook/imagepipeline/producers/ProducerContextCallbacks;


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->STRICT:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancellationRequested()V
    .locals 0

    return-void
.end method

.method public onIsIntermediateResultExpectedChanged()V
    .locals 0

    return-void
.end method

.method public onIsPrefetchChanged()V
    .locals 0

    return-void
.end method

.method public onPriorityChanged()V
    .locals 0

    return-void
.end method
