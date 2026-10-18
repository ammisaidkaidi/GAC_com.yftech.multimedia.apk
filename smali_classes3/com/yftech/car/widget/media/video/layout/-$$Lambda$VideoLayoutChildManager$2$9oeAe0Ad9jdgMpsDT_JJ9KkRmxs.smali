.class public final synthetic Lcom/yftech/car/widget/media/video/layout/-$$Lambda$VideoLayoutChildManager$2$9oeAe0Ad9jdgMpsDT_JJ9KkRmxs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$2;

.field private final synthetic f$1:I

.field private final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$2;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yftech/car/widget/media/video/layout/-$$Lambda$VideoLayoutChildManager$2$9oeAe0Ad9jdgMpsDT_JJ9KkRmxs;->f$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$2;

    iput p2, p0, Lcom/yftech/car/widget/media/video/layout/-$$Lambda$VideoLayoutChildManager$2$9oeAe0Ad9jdgMpsDT_JJ9KkRmxs;->f$1:I

    iput-boolean p3, p0, Lcom/yftech/car/widget/media/video/layout/-$$Lambda$VideoLayoutChildManager$2$9oeAe0Ad9jdgMpsDT_JJ9KkRmxs;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/yftech/car/widget/media/video/layout/-$$Lambda$VideoLayoutChildManager$2$9oeAe0Ad9jdgMpsDT_JJ9KkRmxs;->f$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$2;

    iget v1, p0, Lcom/yftech/car/widget/media/video/layout/-$$Lambda$VideoLayoutChildManager$2$9oeAe0Ad9jdgMpsDT_JJ9KkRmxs;->f$1:I

    iget-boolean p0, p0, Lcom/yftech/car/widget/media/video/layout/-$$Lambda$VideoLayoutChildManager$2$9oeAe0Ad9jdgMpsDT_JJ9KkRmxs;->f$2:Z

    invoke-static {v0, v1, p0}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$2;->lambda$onScanStatusChange$3(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$2;IZ)V

    return-void
.end method
