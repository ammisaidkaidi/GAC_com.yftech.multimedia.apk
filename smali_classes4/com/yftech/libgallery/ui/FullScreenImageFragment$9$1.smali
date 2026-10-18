.class Lcom/yftech/libgallery/ui/FullScreenImageFragment$9$1;
.super Ljava/lang/Object;
.source "FullScreenImageFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/libgallery/ui/FullScreenImageFragment$9;->onDoubleClickDown()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/yftech/libgallery/ui/FullScreenImageFragment$9;


# direct methods
.method constructor <init>(Lcom/yftech/libgallery/ui/FullScreenImageFragment$9;)V
    .locals 0

    .line 545
    iput-object p1, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment$9$1;->this$1:Lcom/yftech/libgallery/ui/FullScreenImageFragment$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 549
    iget-object p0, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment$9$1;->this$1:Lcom/yftech/libgallery/ui/FullScreenImageFragment$9;

    iget-object p0, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment$9;->this$0:Lcom/yftech/libgallery/ui/FullScreenImageFragment;

    invoke-virtual {p0}, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/media/common/util/AudioSettingUtil;->playSystemClickSoundEffect(Landroid/content/Context;)V

    return-void
.end method
