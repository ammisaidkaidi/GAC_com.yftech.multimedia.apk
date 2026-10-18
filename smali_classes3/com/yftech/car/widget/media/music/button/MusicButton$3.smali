.class Lcom/yftech/car/widget/media/music/button/MusicButton$3;
.super Ljava/lang/Object;
.source "MusicButton.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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

    .line 504
    iput-object p1, p0, Lcom/yftech/car/widget/media/music/button/MusicButton$3;->this$0:Lcom/yftech/car/widget/media/music/button/MusicButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    .line 507
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const-string v0, "MediaButton"

    .line 508
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTouch: action=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    const/16 v1, 0x8

    const/4 v2, 0x7

    const/4 v3, 0x0

    if-eq p2, v0, :cond_4

    packed-switch p2, :pswitch_data_0

    goto/16 :goto_1

    .line 511
    :pswitch_0
    iget-object p1, p0, Lcom/yftech/car/widget/media/music/button/MusicButton$3;->this$0:Lcom/yftech/car/widget/media/music/button/MusicButton;

    invoke-static {p1}, Lcom/yftech/car/widget/media/music/button/MusicButton;->access$000(Lcom/yftech/car/widget/media/music/button/MusicButton;)I

    move-result p1

    if-eq p1, v2, :cond_2

    iget-object p1, p0, Lcom/yftech/car/widget/media/music/button/MusicButton$3;->this$0:Lcom/yftech/car/widget/media/music/button/MusicButton;

    invoke-static {p1}, Lcom/yftech/car/widget/media/music/button/MusicButton;->access$000(Lcom/yftech/car/widget/media/music/button/MusicButton;)I

    move-result p1

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 523
    :cond_0
    iget-object p1, p0, Lcom/yftech/car/widget/media/music/button/MusicButton$3;->this$0:Lcom/yftech/car/widget/media/music/button/MusicButton;

    invoke-static {p1}, Lcom/yftech/car/widget/media/music/button/MusicButton;->access$600(Lcom/yftech/car/widget/media/music/button/MusicButton;)I

    move-result p1

    if-eq p1, v2, :cond_1

    iget-object p1, p0, Lcom/yftech/car/widget/media/music/button/MusicButton$3;->this$0:Lcom/yftech/car/widget/media/music/button/MusicButton;

    invoke-static {p1}, Lcom/yftech/car/widget/media/music/button/MusicButton;->access$600(Lcom/yftech/car/widget/media/music/button/MusicButton;)I

    move-result p1

    if-ne p1, v1, :cond_3

    .line 524
    :cond_1
    iget-object p1, p0, Lcom/yftech/car/widget/media/music/button/MusicButton$3;->this$0:Lcom/yftech/car/widget/media/music/button/MusicButton;

    invoke-static {p1}, Lcom/yftech/car/widget/media/music/button/MusicButton;->access$600(Lcom/yftech/car/widget/media/music/button/MusicButton;)I

    move-result p1

    const-wide/16 v0, 0x3e8

    packed-switch p1, :pswitch_data_1

    goto :goto_1

    .line 530
    :pswitch_1
    iget-object p1, p0, Lcom/yftech/car/widget/media/music/button/MusicButton$3;->this$0:Lcom/yftech/car/widget/media/music/button/MusicButton;

    iget-object p2, p0, Lcom/yftech/car/widget/media/music/button/MusicButton$3;->this$0:Lcom/yftech/car/widget/media/music/button/MusicButton;

    invoke-static {p2}, Lcom/yftech/car/widget/media/music/button/MusicButton;->access$900(Lcom/yftech/car/widget/media/music/button/MusicButton;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/yftech/car/widget/media/music/button/MusicButton;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 531
    iget-object p1, p0, Lcom/yftech/car/widget/media/music/button/MusicButton$3;->this$0:Lcom/yftech/car/widget/media/music/button/MusicButton;

    iget-object p0, p0, Lcom/yftech/car/widget/media/music/button/MusicButton$3;->this$0:Lcom/yftech/car/widget/media/music/button/MusicButton;

    invoke-static {p0}, Lcom/yftech/car/widget/media/music/button/MusicButton;->access$900(Lcom/yftech/car/widget/media/music/button/MusicButton;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {p1, p0, v0, v1}, Lcom/yftech/car/widget/media/music/button/MusicButton;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    goto :goto_1

    .line 526
    :pswitch_2
    iget-object p1, p0, Lcom/yftech/car/widget/media/music/button/MusicButton$3;->this$0:Lcom/yftech/car/widget/media/music/button/MusicButton;

    iget-object p2, p0, Lcom/yftech/car/widget/media/music/button/MusicButton$3;->this$0:Lcom/yftech/car/widget/media/music/button/MusicButton;

    invoke-static {p2}, Lcom/yftech/car/widget/media/music/button/MusicButton;->access$800(Lcom/yftech/car/widget/media/music/button/MusicButton;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/yftech/car/widget/media/music/button/MusicButton;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 527
    iget-object p1, p0, Lcom/yftech/car/widget/media/music/button/MusicButton$3;->this$0:Lcom/yftech/car/widget/media/music/button/MusicButton;

    iget-object p0, p0, Lcom/yftech/car/widget/media/music/button/MusicButton$3;->this$0:Lcom/yftech/car/widget/media/music/button/MusicButton;

    invoke-static {p0}, Lcom/yftech/car/widget/media/music/button/MusicButton;->access$800(Lcom/yftech/car/widget/media/music/button/MusicButton;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {p1, p0, v0, v1}, Lcom/yftech/car/widget/media/music/button/MusicButton;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    goto :goto_1

    .line 512
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/yftech/car/widget/media/music/button/MusicButton$3;->this$0:Lcom/yftech/car/widget/media/music/button/MusicButton;

    invoke-static {p1}, Lcom/yftech/car/widget/media/music/button/MusicButton;->access$000(Lcom/yftech/car/widget/media/music/button/MusicButton;)I

    move-result p1

    packed-switch p1, :pswitch_data_2

    goto :goto_1

    .line 517
    :pswitch_3
    iget-object p0, p0, Lcom/yftech/car/widget/media/music/button/MusicButton$3;->this$0:Lcom/yftech/car/widget/media/music/button/MusicButton;

    invoke-static {p0}, Lcom/yftech/car/widget/media/music/button/MusicButton;->access$900(Lcom/yftech/car/widget/media/music/button/MusicButton;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    .line 514
    :pswitch_4
    iget-object p0, p0, Lcom/yftech/car/widget/media/music/button/MusicButton$3;->this$0:Lcom/yftech/car/widget/media/music/button/MusicButton;

    invoke-static {p0}, Lcom/yftech/car/widget/media/music/button/MusicButton;->access$800(Lcom/yftech/car/widget/media/music/button/MusicButton;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_3
    :goto_1
    return v3

    .line 540
    :cond_4
    :pswitch_5
    iget-object v0, p0, Lcom/yftech/car/widget/media/music/button/MusicButton$3;->this$0:Lcom/yftech/car/widget/media/music/button/MusicButton;

    iget-object v4, p0, Lcom/yftech/car/widget/media/music/button/MusicButton$3;->this$0:Lcom/yftech/car/widget/media/music/button/MusicButton;

    invoke-static {v4}, Lcom/yftech/car/widget/media/music/button/MusicButton;->access$800(Lcom/yftech/car/widget/media/music/button/MusicButton;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/yftech/car/widget/media/music/button/MusicButton;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 541
    iget-object v0, p0, Lcom/yftech/car/widget/media/music/button/MusicButton$3;->this$0:Lcom/yftech/car/widget/media/music/button/MusicButton;

    iget-object v4, p0, Lcom/yftech/car/widget/media/music/button/MusicButton$3;->this$0:Lcom/yftech/car/widget/media/music/button/MusicButton;

    invoke-static {v4}, Lcom/yftech/car/widget/media/music/button/MusicButton;->access$900(Lcom/yftech/car/widget/media/music/button/MusicButton;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/yftech/car/widget/media/music/button/MusicButton;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 542
    iget-object v0, p0, Lcom/yftech/car/widget/media/music/button/MusicButton$3;->this$0:Lcom/yftech/car/widget/media/music/button/MusicButton;

    invoke-static {v0}, Lcom/yftech/car/widget/media/music/button/MusicButton;->access$1000(Lcom/yftech/car/widget/media/music/button/MusicButton;)I

    move-result v0

    const/4 v4, -0x1

    if-eq v0, v4, :cond_7

    .line 543
    iget-object v0, p0, Lcom/yftech/car/widget/media/music/button/MusicButton$3;->this$0:Lcom/yftech/car/widget/media/music/button/MusicButton;

    invoke-static {v0}, Lcom/yftech/car/widget/media/music/button/MusicButton;->access$1000(Lcom/yftech/car/widget/media/music/button/MusicButton;)I

    move-result v0

    if-ne v0, v2, :cond_5

    .line 544
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MusicManager;->getInstance()Lcom/yftech/car/widget/media/manager/MusicManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/yftech/car/widget/media/manager/MusicManager;->fastForward(I)Z

    goto :goto_2

    .line 545
    :cond_5
    iget-object v0, p0, Lcom/yftech/car/widget/media/music/button/MusicButton$3;->this$0:Lcom/yftech/car/widget/media/music/button/MusicButton;

    invoke-static {v0}, Lcom/yftech/car/widget/media/music/button/MusicButton;->access$1000(Lcom/yftech/car/widget/media/music/button/MusicButton;)I

    move-result v0

    if-ne v0, v1, :cond_6

    .line 546
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MusicManager;->getInstance()Lcom/yftech/car/widget/media/manager/MusicManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/yftech/car/widget/media/manager/MusicManager;->fastBack(I)Z

    .line 548
    :cond_6
    :goto_2
    iget-object p0, p0, Lcom/yftech/car/widget/media/music/button/MusicButton$3;->this$0:Lcom/yftech/car/widget/media/music/button/MusicButton;

    invoke-static {p0, v4}, Lcom/yftech/car/widget/media/music/button/MusicButton;->access$1002(Lcom/yftech/car/widget/media/music/button/MusicButton;I)I

    .line 549
    invoke-virtual {p1, v3}, Landroid/view/View;->setPressed(Z)V

    const/4 p0, 0x1

    return p0

    :cond_7
    return v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x7
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method
