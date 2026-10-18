.class Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher$2;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "PhotoViewAttacher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;-><init>(Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;


# direct methods
.method constructor <init>(Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher$2;->this$0:Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    .line 200
    iget-object p1, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher$2;->this$0:Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;

    invoke-static {p1}, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->access$100(Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;)Landroid/view/View$OnLongClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 201
    iget-object p1, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher$2;->this$0:Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;

    invoke-static {p1}, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->access$100(Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;)Landroid/view/View$OnLongClickListener;

    move-result-object p1

    iget-object p0, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher$2;->this$0:Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object p0

    invoke-interface {p1, p0}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    :cond_0
    return-void
.end method
