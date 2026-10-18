.class Lcom/yftech/libgallery/ui/FullScreenImageActivity$6$1;
.super Ljava/lang/Object;
.source "FullScreenImageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/libgallery/ui/FullScreenImageActivity$6;->onDoubleClickDown()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/yftech/libgallery/ui/FullScreenImageActivity$6;


# direct methods
.method constructor <init>(Lcom/yftech/libgallery/ui/FullScreenImageActivity$6;)V
    .locals 0

    .line 400
    iput-object p1, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity$6$1;->this$1:Lcom/yftech/libgallery/ui/FullScreenImageActivity$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 404
    iget-object p0, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity$6$1;->this$1:Lcom/yftech/libgallery/ui/FullScreenImageActivity$6;

    iget-object p0, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity$6;->this$0:Lcom/yftech/libgallery/ui/FullScreenImageActivity;

    invoke-virtual {p0}, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/media/common/util/AudioSettingUtil;->playSystemClickSoundEffect(Landroid/content/Context;)V

    return-void
.end method
