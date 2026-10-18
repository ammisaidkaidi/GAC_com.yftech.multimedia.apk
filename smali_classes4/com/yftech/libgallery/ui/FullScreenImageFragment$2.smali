.class Lcom/yftech/libgallery/ui/FullScreenImageFragment$2;
.super Lcom/yftech/car/screen/CarScreenManager$CarScreenCallback;
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

    .line 213
    iput-object p1, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment$2;->this$0:Lcom/yftech/libgallery/ui/FullScreenImageFragment;

    invoke-direct {p0}, Lcom/yftech/car/screen/CarScreenManager$CarScreenCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangedDayNightMode(I)V
    .locals 1

    .line 235
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onChangedDayNightMode:mode="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onChangedScreenBrightness(ZI)V
    .locals 2

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onChangedScreenBrightness:open="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", brightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", isOpen="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment$2;->this$0:Lcom/yftech/libgallery/ui/FullScreenImageFragment;

    invoke-static {p2}, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->access$1000(Lcom/yftech/libgallery/ui/FullScreenImageFragment;)Z

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 220
    iget-object p2, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment$2;->this$0:Lcom/yftech/libgallery/ui/FullScreenImageFragment;

    invoke-static {p2}, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->access$1000(Lcom/yftech/libgallery/ui/FullScreenImageFragment;)Z

    move-result p2

    if-ne p2, p1, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 224
    iget-object p2, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment$2;->this$0:Lcom/yftech/libgallery/ui/FullScreenImageFragment;

    invoke-virtual {p2}, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->onResume()V

    goto :goto_0

    .line 226
    :cond_1
    iget-object p2, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment$2;->this$0:Lcom/yftech/libgallery/ui/FullScreenImageFragment;

    invoke-virtual {p2}, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->onStop()V

    .line 229
    :goto_0
    iget-object p0, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment$2;->this$0:Lcom/yftech/libgallery/ui/FullScreenImageFragment;

    invoke-static {p0, p1}, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->access$1002(Lcom/yftech/libgallery/ui/FullScreenImageFragment;Z)Z

    return-void
.end method
