.class Lcom/yftech/libmedia/player/PlayActivity$10$1;
.super Ljava/lang/Object;
.source "PlayActivity.java"

# interfaces
.implements Lcom/media/common/ui/widget/TipsDialog$OnConfirmClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/libmedia/player/PlayActivity$10;->onPlayerError(II)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/yftech/libmedia/player/PlayActivity$10;


# direct methods
.method constructor <init>(Lcom/yftech/libmedia/player/PlayActivity$10;)V
    .locals 0

    .line 691
    iput-object p1, p0, Lcom/yftech/libmedia/player/PlayActivity$10$1;->this$1:Lcom/yftech/libmedia/player/PlayActivity$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfirm()V
    .locals 0

    .line 696
    iget-object p0, p0, Lcom/yftech/libmedia/player/PlayActivity$10$1;->this$1:Lcom/yftech/libmedia/player/PlayActivity$10;

    iget-object p0, p0, Lcom/yftech/libmedia/player/PlayActivity$10;->this$0:Lcom/yftech/libmedia/player/PlayActivity;

    invoke-virtual {p0}, Lcom/yftech/libmedia/player/PlayActivity;->onBackPressed()V

    return-void
.end method
