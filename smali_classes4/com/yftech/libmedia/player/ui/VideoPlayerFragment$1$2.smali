.class Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$1$2;
.super Ljava/lang/Object;
.source "VideoPlayerFragment.java"

# interfaces
.implements Lcom/media/common/ui/widget/TipsDialog$OnConfirmClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$1;


# direct methods
.method constructor <init>(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$1;)V
    .locals 0

    .line 279
    iput-object p1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$1$2;->this$1:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfirm()V
    .locals 1

    .line 284
    iget-object v0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$1$2;->this$1:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$1;

    iget-object v0, v0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$1;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-virtual {v0}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 285
    iget-object p0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$1$2;->this$1:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$1;

    iget-object p0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$1;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-virtual {p0}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->onBackPressed()V

    :cond_0
    return-void
.end method
