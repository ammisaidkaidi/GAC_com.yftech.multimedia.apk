.class Lcom/yftech/libgallery/ui/FullScreenImageFragment$4;
.super Landroid/content/BroadcastReceiver;
.source "FullScreenImageFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/libgallery/ui/FullScreenImageFragment;
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

    .line 302
    iput-object p1, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment$4;->this$0:Lcom/yftech/libgallery/ui/FullScreenImageFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string p1, "com.yftech.avmservice.SHOW_STATE"

    .line 306
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "isShow"

    const/4 v0, 0x0

    .line 308
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 310
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.yftech.avmservice.SHOW_STATE:isShow="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 313
    iget-object p1, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment$4;->this$0:Lcom/yftech/libgallery/ui/FullScreenImageFragment;

    invoke-static {p1, v0}, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->access$1102(Lcom/yftech/libgallery/ui/FullScreenImageFragment;Z)Z

    .line 314
    iget-object p0, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment$4;->this$0:Lcom/yftech/libgallery/ui/FullScreenImageFragment;

    invoke-virtual {p0}, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->onStop()V

    goto :goto_0

    .line 317
    :cond_0
    iget-object p0, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment$4;->this$0:Lcom/yftech/libgallery/ui/FullScreenImageFragment;

    invoke-virtual {p0}, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->onResume()V

    :cond_1
    :goto_0
    return-void
.end method
