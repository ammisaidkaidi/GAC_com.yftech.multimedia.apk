.class Lcom/yftech/libgallery/ui/BrowseImageFragment$3;
.super Ljava/lang/Object;
.source "BrowseImageFragment.java"

# interfaces
.implements Lcom/media/common/ui/widget/zoomable/DoubleTapGestureListener$OnSingleClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/libgallery/ui/BrowseImageFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libgallery/ui/BrowseImageFragment;


# direct methods
.method constructor <init>(Lcom/yftech/libgallery/ui/BrowseImageFragment;)V
    .locals 0

    .line 203
    iput-object p1, p0, Lcom/yftech/libgallery/ui/BrowseImageFragment$3;->this$0:Lcom/yftech/libgallery/ui/BrowseImageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleClickDown()V
    .locals 4

    .line 235
    iget-object v0, p0, Lcom/yftech/libgallery/ui/BrowseImageFragment$3;->this$0:Lcom/yftech/libgallery/ui/BrowseImageFragment;

    invoke-static {v0}, Lcom/yftech/libgallery/ui/BrowseImageFragment;->access$400(Lcom/yftech/libgallery/ui/BrowseImageFragment;)Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/yftech/libgallery/ui/BrowseImageFragment$3;->this$0:Lcom/yftech/libgallery/ui/BrowseImageFragment;

    invoke-static {v0}, Lcom/yftech/libgallery/ui/BrowseImageFragment;->access$400(Lcom/yftech/libgallery/ui/BrowseImageFragment;)Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;->playSoundEffect(I)V

    .line 239
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/yftech/libgallery/ui/BrowseImageFragment$3$1;

    invoke-direct {v1, p0}, Lcom/yftech/libgallery/ui/BrowseImageFragment$3$1;-><init>(Lcom/yftech/libgallery/ui/BrowseImageFragment$3;)V

    const-wide/16 v2, 0x82

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onDoubleTapMoving()V
    .locals 0

    const-string p0, "onDoubleTapMoving"

    .line 254
    invoke-static {p0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onNext()V
    .locals 0

    .line 259
    iget-object p0, p0, Lcom/yftech/libgallery/ui/BrowseImageFragment$3;->this$0:Lcom/yftech/libgallery/ui/BrowseImageFragment;

    invoke-static {p0}, Lcom/yftech/libgallery/ui/BrowseImageFragment;->access$100(Lcom/yftech/libgallery/ui/BrowseImageFragment;)Landroid/widget/ImageView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/ImageView;->callOnClick()Z

    return-void
.end method

.method public onPrev()V
    .locals 0

    .line 264
    iget-object p0, p0, Lcom/yftech/libgallery/ui/BrowseImageFragment$3;->this$0:Lcom/yftech/libgallery/ui/BrowseImageFragment;

    invoke-static {p0}, Lcom/yftech/libgallery/ui/BrowseImageFragment;->access$200(Lcom/yftech/libgallery/ui/BrowseImageFragment;)Landroid/widget/ImageView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/ImageView;->callOnClick()Z

    return-void
.end method

.method public onSingleClick()V
    .locals 3

    const-string v0, "image on single click"

    .line 206
    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 209
    iget-object v0, p0, Lcom/yftech/libgallery/ui/BrowseImageFragment$3;->this$0:Lcom/yftech/libgallery/ui/BrowseImageFragment;

    invoke-static {v0}, Lcom/yftech/libgallery/ui/BrowseImageFragment;->access$400(Lcom/yftech/libgallery/ui/BrowseImageFragment;)Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/yftech/libgallery/ui/BrowseImageFragment$3;->this$0:Lcom/yftech/libgallery/ui/BrowseImageFragment;

    invoke-static {v0}, Lcom/yftech/libgallery/ui/BrowseImageFragment;->access$400(Lcom/yftech/libgallery/ui/BrowseImageFragment;)Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;->playSoundEffect(I)V

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/yftech/libgallery/ui/BrowseImageFragment$3;->this$0:Lcom/yftech/libgallery/ui/BrowseImageFragment;

    invoke-static {v0}, Lcom/yftech/libgallery/ui/BrowseImageFragment;->access$500(Lcom/yftech/libgallery/ui/BrowseImageFragment;)Z

    move-result v0

    const/16 v2, 0xa

    if-nez v0, :cond_2

    .line 215
    iget-object v0, p0, Lcom/yftech/libgallery/ui/BrowseImageFragment$3;->this$0:Lcom/yftech/libgallery/ui/BrowseImageFragment;

    invoke-static {v0, v1}, Lcom/yftech/libgallery/ui/BrowseImageFragment;->access$000(Lcom/yftech/libgallery/ui/BrowseImageFragment;I)V

    .line 217
    iget-object v0, p0, Lcom/yftech/libgallery/ui/BrowseImageFragment$3;->this$0:Lcom/yftech/libgallery/ui/BrowseImageFragment;

    invoke-static {v0}, Lcom/yftech/libgallery/ui/BrowseImageFragment;->access$300(Lcom/yftech/libgallery/ui/BrowseImageFragment;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 218
    iget-object v0, p0, Lcom/yftech/libgallery/ui/BrowseImageFragment$3;->this$0:Lcom/yftech/libgallery/ui/BrowseImageFragment;

    invoke-static {v0}, Lcom/yftech/libgallery/ui/BrowseImageFragment;->access$300(Lcom/yftech/libgallery/ui/BrowseImageFragment;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 221
    :cond_1
    iget-object p0, p0, Lcom/yftech/libgallery/ui/BrowseImageFragment$3;->this$0:Lcom/yftech/libgallery/ui/BrowseImageFragment;

    invoke-static {p0}, Lcom/yftech/libgallery/ui/BrowseImageFragment;->access$300(Lcom/yftech/libgallery/ui/BrowseImageFragment;)Landroid/os/Handler;

    move-result-object p0

    const-wide/16 v0, 0x1388

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 224
    :cond_2
    iget-object v0, p0, Lcom/yftech/libgallery/ui/BrowseImageFragment$3;->this$0:Lcom/yftech/libgallery/ui/BrowseImageFragment;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/yftech/libgallery/ui/BrowseImageFragment;->access$000(Lcom/yftech/libgallery/ui/BrowseImageFragment;I)V

    .line 226
    iget-object v0, p0, Lcom/yftech/libgallery/ui/BrowseImageFragment$3;->this$0:Lcom/yftech/libgallery/ui/BrowseImageFragment;

    invoke-static {v0}, Lcom/yftech/libgallery/ui/BrowseImageFragment;->access$300(Lcom/yftech/libgallery/ui/BrowseImageFragment;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 227
    iget-object p0, p0, Lcom/yftech/libgallery/ui/BrowseImageFragment$3;->this$0:Lcom/yftech/libgallery/ui/BrowseImageFragment;

    invoke-static {p0}, Lcom/yftech/libgallery/ui/BrowseImageFragment;->access$300(Lcom/yftech/libgallery/ui/BrowseImageFragment;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_3
    :goto_0
    return-void
.end method
