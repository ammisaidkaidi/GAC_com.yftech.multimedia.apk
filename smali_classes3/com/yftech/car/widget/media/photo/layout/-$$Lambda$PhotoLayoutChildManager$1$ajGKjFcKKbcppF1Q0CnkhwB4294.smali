.class public final synthetic Lcom/yftech/car/widget/media/photo/layout/-$$Lambda$PhotoLayoutChildManager$1$ajGKjFcKKbcppF1Q0CnkhwB4294;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/yftech/car/widget/media/view/MediaImageLoading;


# direct methods
.method public synthetic constructor <init>(Lcom/yftech/car/widget/media/view/MediaImageLoading;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yftech/car/widget/media/photo/layout/-$$Lambda$PhotoLayoutChildManager$1$ajGKjFcKKbcppF1Q0CnkhwB4294;->f$0:Lcom/yftech/car/widget/media/view/MediaImageLoading;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/yftech/car/widget/media/photo/layout/-$$Lambda$PhotoLayoutChildManager$1$ajGKjFcKKbcppF1Q0CnkhwB4294;->f$0:Lcom/yftech/car/widget/media/view/MediaImageLoading;

    invoke-static {p0}, Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager$1;->lambda$onScanStatusChange$1(Lcom/yftech/car/widget/media/view/MediaImageLoading;)V

    return-void
.end method
