.class Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher$1;
.super Landroid/os/Handler;
.source "PhotoViewAttacher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;


# direct methods
.method constructor <init>(Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;Landroid/os/Looper;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher$1;->this$0:Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0
    .param p1    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 94
    iget-object p0, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher$1;->this$0:Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;

    invoke-static {p0}, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->access$000(Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;)Lcom/yftech/car/widget/media/photo/photoview/ImageOnTouch;

    move-result-object p0

    invoke-interface {p0}, Lcom/yftech/car/widget/media/photo/photoview/ImageOnTouch;->OntouchListener()V

    return-void
.end method
