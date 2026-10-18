.class Lcom/yftech/libgallery/ui/FullScreenImageActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "FullScreenImageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/libgallery/ui/FullScreenImageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libgallery/ui/FullScreenImageActivity;


# direct methods
.method constructor <init>(Lcom/yftech/libgallery/ui/FullScreenImageActivity;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity$2;->this$0:Lcom/yftech/libgallery/ui/FullScreenImageActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string p1, "com.yftech.avmservice.SHOW_STATE"

    .line 135
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "isShow"

    const/4 v0, 0x0

    .line 137
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 139
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.yftech.avmservice.SHOW_STATE:isShow="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 142
    iget-object p1, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity$2;->this$0:Lcom/yftech/libgallery/ui/FullScreenImageActivity;

    invoke-static {p1, v0}, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->access$802(Lcom/yftech/libgallery/ui/FullScreenImageActivity;Z)Z

    .line 143
    iget-object p0, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity$2;->this$0:Lcom/yftech/libgallery/ui/FullScreenImageActivity;

    invoke-virtual {p0}, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->onStop()V

    goto :goto_0

    .line 146
    :cond_0
    iget-object p0, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity$2;->this$0:Lcom/yftech/libgallery/ui/FullScreenImageActivity;

    invoke-virtual {p0}, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->onResume()V

    :cond_1
    :goto_0
    return-void
.end method
