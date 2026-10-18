.class Lcom/yftech/libgallery/ui/FullScreenImageActivity$3;
.super Lcom/yftech/car/input/CarInputManager$CarInputCallback;
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

    .line 194
    iput-object p1, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity$3;->this$0:Lcom/yftech/libgallery/ui/FullScreenImageActivity;

    invoke-direct {p0}, Lcom/yftech/car/input/CarInputManager$CarInputCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onInputKey(Lcom/yftech/car/input/CarKey;)V
    .locals 2

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onInputKey:CarKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/yftech/car/input/CarKey;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 201
    iget-object v0, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity$3;->this$0:Lcom/yftech/libgallery/ui/FullScreenImageActivity;

    iget-boolean v0, v0, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->isDisplaying:Z

    if-nez v0, :cond_0

    return-void

    .line 204
    :cond_0
    iget v0, p1, Lcom/yftech/car/input/CarKey;->mAction:I

    if-nez v0, :cond_1

    .line 206
    iget-object v0, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity$3;->this$0:Lcom/yftech/libgallery/ui/FullScreenImageActivity;

    invoke-static {v0}, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->access$500(Lcom/yftech/libgallery/ui/FullScreenImageActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 207
    iget p1, p1, Lcom/yftech/car/input/CarKey;->mCode:I

    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 208
    iget-object p0, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity$3;->this$0:Lcom/yftech/libgallery/ui/FullScreenImageActivity;

    invoke-static {p0}, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->access$500(Lcom/yftech/libgallery/ui/FullScreenImageActivity;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    return-void
.end method
