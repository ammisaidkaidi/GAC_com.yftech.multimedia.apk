.class Lcom/yftech/libgallery/ui/FullScreenImageFragment$8;
.super Ljava/lang/Object;
.source "FullScreenImageFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/libgallery/ui/FullScreenImageFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libgallery/ui/FullScreenImageFragment;


# direct methods
.method constructor <init>(Lcom/yftech/libgallery/ui/FullScreenImageFragment;)V
    .locals 0

    .line 490
    iput-object p1, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment$8;->this$0:Lcom/yftech/libgallery/ui/FullScreenImageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 494
    iget-object p1, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment$8;->this$0:Lcom/yftech/libgallery/ui/FullScreenImageFragment;

    invoke-virtual {p1}, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 496
    iget-object p1, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment$8;->this$0:Lcom/yftech/libgallery/ui/FullScreenImageFragment;

    invoke-virtual {p1}, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->onBackPressed()V

    .line 499
    :cond_0
    iget-object p1, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment$8;->this$0:Lcom/yftech/libgallery/ui/FullScreenImageFragment;

    invoke-static {p1}, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->access$600(Lcom/yftech/libgallery/ui/FullScreenImageFragment;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0x63

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 500
    iget-object p0, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment$8;->this$0:Lcom/yftech/libgallery/ui/FullScreenImageFragment;

    invoke-static {p0}, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->access$600(Lcom/yftech/libgallery/ui/FullScreenImageFragment;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    return-void
.end method
