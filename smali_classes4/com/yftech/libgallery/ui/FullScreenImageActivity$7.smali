.class Lcom/yftech/libgallery/ui/FullScreenImageActivity$7;
.super Lcom/facebook/drawee/controller/BaseControllerListener;
.source "FullScreenImageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/libgallery/ui/FullScreenImageActivity;->displayImage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/drawee/controller/BaseControllerListener<",
        "Lcom/facebook/imagepipeline/image/ImageInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libgallery/ui/FullScreenImageActivity;


# direct methods
.method constructor <init>(Lcom/yftech/libgallery/ui/FullScreenImageActivity;)V
    .locals 0

    .line 450
    iput-object p1, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity$7;->this$0:Lcom/yftech/libgallery/ui/FullScreenImageActivity;

    invoke-direct {p0}, Lcom/facebook/drawee/controller/BaseControllerListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const-string p1, "play error!!!!!!!!!!!"

    .line 454
    invoke-static {p1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 457
    iget-object p1, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity$7;->this$0:Lcom/yftech/libgallery/ui/FullScreenImageActivity;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->access$1202(Lcom/yftech/libgallery/ui/FullScreenImageActivity;I)I

    .line 459
    iget-object p1, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity$7;->this$0:Lcom/yftech/libgallery/ui/FullScreenImageActivity;

    invoke-static {p1}, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->access$100(Lcom/yftech/libgallery/ui/FullScreenImageActivity;)I

    move-result p1

    if-lez p1, :cond_0

    .line 460
    iget-object p1, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity$7;->this$0:Lcom/yftech/libgallery/ui/FullScreenImageActivity;

    iget-object p2, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity$7;->this$0:Lcom/yftech/libgallery/ui/FullScreenImageActivity;

    invoke-static {p2}, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->access$200(Lcom/yftech/libgallery/ui/FullScreenImageActivity;)I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    iget-object v0, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity$7;->this$0:Lcom/yftech/libgallery/ui/FullScreenImageActivity;

    invoke-static {v0}, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->access$300(Lcom/yftech/libgallery/ui/FullScreenImageActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    rem-int/2addr p2, v0

    invoke-static {p1, p2}, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->access$202(Lcom/yftech/libgallery/ui/FullScreenImageActivity;I)I

    goto :goto_0

    .line 461
    :cond_0
    iget-object p1, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity$7;->this$0:Lcom/yftech/libgallery/ui/FullScreenImageActivity;

    invoke-static {p1}, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->access$100(Lcom/yftech/libgallery/ui/FullScreenImageActivity;)I

    move-result p1

    if-gez p1, :cond_2

    .line 463
    iget-object p1, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity$7;->this$0:Lcom/yftech/libgallery/ui/FullScreenImageActivity;

    invoke-static {p1}, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->access$200(Lcom/yftech/libgallery/ui/FullScreenImageActivity;)I

    move-result p1

    if-lez p1, :cond_1

    .line 464
    iget-object p1, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity$7;->this$0:Lcom/yftech/libgallery/ui/FullScreenImageActivity;

    invoke-static {p1}, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->access$210(Lcom/yftech/libgallery/ui/FullScreenImageActivity;)I

    goto :goto_0

    .line 466
    :cond_1
    iget-object p1, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity$7;->this$0:Lcom/yftech/libgallery/ui/FullScreenImageActivity;

    iget-object p2, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity$7;->this$0:Lcom/yftech/libgallery/ui/FullScreenImageActivity;

    invoke-static {p2}, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->access$200(Lcom/yftech/libgallery/ui/FullScreenImageActivity;)I

    move-result p2

    iget-object v0, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity$7;->this$0:Lcom/yftech/libgallery/ui/FullScreenImageActivity;

    invoke-static {v0}, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->access$300(Lcom/yftech/libgallery/ui/FullScreenImageActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    add-int/2addr p2, v0

    invoke-static {p1, p2}, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->access$202(Lcom/yftech/libgallery/ui/FullScreenImageActivity;I)I

    .line 469
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity$7;->this$0:Lcom/yftech/libgallery/ui/FullScreenImageActivity;

    invoke-static {p0}, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->access$400(Lcom/yftech/libgallery/ui/FullScreenImageActivity;)V

    return-void
.end method
