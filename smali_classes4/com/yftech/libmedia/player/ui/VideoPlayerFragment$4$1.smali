.class Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$4$1;
.super Ljava/lang/Object;
.source "VideoPlayerFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$4;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$4;

.field final synthetic val$value:I


# direct methods
.method constructor <init>(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$4;I)V
    .locals 0

    .line 505
    iput-object p1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$4$1;->this$1:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$4;

    iput p2, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$4$1;->val$value:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 509
    iget-object v0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$4$1;->this$1:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$4;

    iget-object v0, v0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$4;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {v0}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$2000(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Lcom/yftech/vehicle/sdk/CarInfoManager$CarInfoListener;

    move-result-object v0

    iget p0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$4$1;->val$value:I

    invoke-virtual {v0, p0}, Lcom/yftech/vehicle/sdk/CarInfoManager$CarInfoListener;->onVehicleSpeedChanged(I)V

    return-void
.end method
