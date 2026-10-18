.class Lcom/facebook/imagepipeline/producers/PriorityStarvingThrottlingProducer$PriorityComparator;
.super Ljava/lang/Object;
.source "PriorityStarvingThrottlingProducer.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/producers/PriorityStarvingThrottlingProducer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PriorityComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/facebook/imagepipeline/producers/PriorityStarvingThrottlingProducer$Item<",
        "TT;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/facebook/imagepipeline/producers/PriorityStarvingThrottlingProducer$Item;Lcom/facebook/imagepipeline/producers/PriorityStarvingThrottlingProducer$Item;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/PriorityStarvingThrottlingProducer$Item<",
            "TT;>;",
            "Lcom/facebook/imagepipeline/producers/PriorityStarvingThrottlingProducer$Item<",
            "TT;>;)I"
        }
    .end annotation

    .line 94
    iget-object p0, p1, Lcom/facebook/imagepipeline/producers/PriorityStarvingThrottlingProducer$Item;->producerContext:Lcom/facebook/imagepipeline/producers/ProducerContext;

    invoke-interface {p0}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getPriority()Lcom/facebook/imagepipeline/common/Priority;

    move-result-object p0

    .line 95
    iget-object v0, p2, Lcom/facebook/imagepipeline/producers/PriorityStarvingThrottlingProducer$Item;->producerContext:Lcom/facebook/imagepipeline/producers/ProducerContext;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getPriority()Lcom/facebook/imagepipeline/common/Priority;

    move-result-object v0

    if-ne p0, v0, :cond_0

    .line 99
    iget-wide p0, p1, Lcom/facebook/imagepipeline/producers/PriorityStarvingThrottlingProducer$Item;->time:J

    long-to-double p0, p0

    iget-wide v0, p2, Lcom/facebook/imagepipeline/producers/PriorityStarvingThrottlingProducer$Item;->time:J

    long-to-double v0, v0

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Double;->compare(DD)I

    move-result p0

    return p0

    .line 102
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/common/Priority;->ordinal()I

    move-result p0

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/common/Priority;->ordinal()I

    move-result p1

    if-le p0, p1, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 90
    check-cast p1, Lcom/facebook/imagepipeline/producers/PriorityStarvingThrottlingProducer$Item;

    check-cast p2, Lcom/facebook/imagepipeline/producers/PriorityStarvingThrottlingProducer$Item;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/imagepipeline/producers/PriorityStarvingThrottlingProducer$PriorityComparator;->compare(Lcom/facebook/imagepipeline/producers/PriorityStarvingThrottlingProducer$Item;Lcom/facebook/imagepipeline/producers/PriorityStarvingThrottlingProducer$Item;)I

    move-result p0

    return p0
.end method
