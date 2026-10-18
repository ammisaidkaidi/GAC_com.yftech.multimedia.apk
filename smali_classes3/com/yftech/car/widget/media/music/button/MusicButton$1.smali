.class Lcom/yftech/car/widget/media/music/button/MusicButton$1;
.super Ljava/lang/Object;
.source "MusicButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/car/widget/media/music/button/MusicButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/car/widget/media/music/button/MusicButton;


# direct methods
.method constructor <init>(Lcom/yftech/car/widget/media/music/button/MusicButton;)V
    .locals 0

    .line 419
    iput-object p1, p0, Lcom/yftech/car/widget/media/music/button/MusicButton$1;->this$0:Lcom/yftech/car/widget/media/music/button/MusicButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 422
    iget-object v0, p0, Lcom/yftech/car/widget/media/music/button/MusicButton$1;->this$0:Lcom/yftech/car/widget/media/music/button/MusicButton;

    invoke-static {v0}, Lcom/yftech/car/widget/media/music/button/MusicButton;->access$000(Lcom/yftech/car/widget/media/music/button/MusicButton;)I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/yftech/car/widget/media/music/button/MusicButton$1;->this$0:Lcom/yftech/car/widget/media/music/button/MusicButton;

    invoke-static {v0}, Lcom/yftech/car/widget/media/music/button/MusicButton;->access$100(Lcom/yftech/car/widget/media/music/button/MusicButton;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "MediaButton"

    const-string p1, "onClick: PLAY_DIRECTORY_ALL isActivatedStatus true"

    .line 423
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 426
    :cond_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/music/button/MusicButton$1;->this$0:Lcom/yftech/car/widget/media/music/button/MusicButton;

    iget-object v1, p0, Lcom/yftech/car/widget/media/music/button/MusicButton$1;->this$0:Lcom/yftech/car/widget/media/music/button/MusicButton;

    invoke-static {v1}, Lcom/yftech/car/widget/media/music/button/MusicButton;->access$000(Lcom/yftech/car/widget/media/music/button/MusicButton;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/yftech/car/widget/media/music/button/MusicButton;->access$200(Lcom/yftech/car/widget/media/music/button/MusicButton;I)V

    .line 427
    iget-object v0, p0, Lcom/yftech/car/widget/media/music/button/MusicButton$1;->this$0:Lcom/yftech/car/widget/media/music/button/MusicButton;

    invoke-static {v0}, Lcom/yftech/car/widget/media/music/button/MusicButton;->access$300(Lcom/yftech/car/widget/media/music/button/MusicButton;)Lcom/yftech/car/widget/media/music/button/MusicButton$OnClickFunctionListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 428
    iget-object v0, p0, Lcom/yftech/car/widget/media/music/button/MusicButton$1;->this$0:Lcom/yftech/car/widget/media/music/button/MusicButton;

    invoke-static {v0}, Lcom/yftech/car/widget/media/music/button/MusicButton;->access$300(Lcom/yftech/car/widget/media/music/button/MusicButton;)Lcom/yftech/car/widget/media/music/button/MusicButton$OnClickFunctionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/car/widget/media/music/button/MusicButton$1;->this$0:Lcom/yftech/car/widget/media/music/button/MusicButton;

    invoke-static {v1}, Lcom/yftech/car/widget/media/music/button/MusicButton;->access$400(Lcom/yftech/car/widget/media/music/button/MusicButton;)I

    move-result v1

    iget-object v2, p0, Lcom/yftech/car/widget/media/music/button/MusicButton$1;->this$0:Lcom/yftech/car/widget/media/music/button/MusicButton;

    invoke-static {v2}, Lcom/yftech/car/widget/media/music/button/MusicButton;->access$000(Lcom/yftech/car/widget/media/music/button/MusicButton;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/yftech/car/widget/media/music/button/MusicButton$OnClickFunctionListener;->onClickFunction(II)V

    .line 430
    :cond_1
    iget-object v0, p0, Lcom/yftech/car/widget/media/music/button/MusicButton$1;->this$0:Lcom/yftech/car/widget/media/music/button/MusicButton;

    invoke-static {v0}, Lcom/yftech/car/widget/media/music/button/MusicButton;->access$500(Lcom/yftech/car/widget/media/music/button/MusicButton;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 431
    iget-object p0, p0, Lcom/yftech/car/widget/media/music/button/MusicButton$1;->this$0:Lcom/yftech/car/widget/media/music/button/MusicButton;

    invoke-static {p0}, Lcom/yftech/car/widget/media/music/button/MusicButton;->access$500(Lcom/yftech/car/widget/media/music/button/MusicButton;)Landroid/view/View$OnClickListener;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_2
    return-void
.end method
