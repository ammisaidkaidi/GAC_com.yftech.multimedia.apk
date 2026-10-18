.class Lcom/yftech/libgallery/ui/BrowseImageFragment$3$1;
.super Ljava/lang/Object;
.source "BrowseImageFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/libgallery/ui/BrowseImageFragment$3;->onDoubleClickDown()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/yftech/libgallery/ui/BrowseImageFragment$3;


# direct methods
.method constructor <init>(Lcom/yftech/libgallery/ui/BrowseImageFragment$3;)V
    .locals 0

    .line 239
    iput-object p1, p0, Lcom/yftech/libgallery/ui/BrowseImageFragment$3$1;->this$1:Lcom/yftech/libgallery/ui/BrowseImageFragment$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/yftech/libgallery/ui/BrowseImageFragment$3$1;->this$1:Lcom/yftech/libgallery/ui/BrowseImageFragment$3;

    iget-object v0, v0, Lcom/yftech/libgallery/ui/BrowseImageFragment$3;->this$0:Lcom/yftech/libgallery/ui/BrowseImageFragment;

    invoke-static {v0}, Lcom/yftech/libgallery/ui/BrowseImageFragment;->access$400(Lcom/yftech/libgallery/ui/BrowseImageFragment;)Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 244
    iget-object p0, p0, Lcom/yftech/libgallery/ui/BrowseImageFragment$3$1;->this$1:Lcom/yftech/libgallery/ui/BrowseImageFragment$3;

    iget-object p0, p0, Lcom/yftech/libgallery/ui/BrowseImageFragment$3;->this$0:Lcom/yftech/libgallery/ui/BrowseImageFragment;

    invoke-static {p0}, Lcom/yftech/libgallery/ui/BrowseImageFragment;->access$400(Lcom/yftech/libgallery/ui/BrowseImageFragment;)Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;->playSoundEffect(I)V

    :cond_0
    return-void
.end method
