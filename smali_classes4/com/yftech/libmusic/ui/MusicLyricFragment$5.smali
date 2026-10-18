.class Lcom/yftech/libmusic/ui/MusicLyricFragment$5;
.super Ljava/lang/Object;
.source "MusicLyricFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/libmusic/ui/MusicLyricFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libmusic/ui/MusicLyricFragment;


# direct methods
.method constructor <init>(Lcom/yftech/libmusic/ui/MusicLyricFragment;)V
    .locals 0

    .line 384
    iput-object p1, p0, Lcom/yftech/libmusic/ui/MusicLyricFragment$5;->this$0:Lcom/yftech/libmusic/ui/MusicLyricFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    .line 388
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onTouchEvent:action="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 390
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 392
    iget-object p1, p0, Lcom/yftech/libmusic/ui/MusicLyricFragment$5;->this$0:Lcom/yftech/libmusic/ui/MusicLyricFragment;

    invoke-static {p1, v0}, Lcom/yftech/libmusic/ui/MusicLyricFragment;->access$402(Lcom/yftech/libmusic/ui/MusicLyricFragment;Z)Z

    .line 393
    iget-object p1, p0, Lcom/yftech/libmusic/ui/MusicLyricFragment$5;->this$0:Lcom/yftech/libmusic/ui/MusicLyricFragment;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-static {p1, v1}, Lcom/yftech/libmusic/ui/MusicLyricFragment;->access$1102(Lcom/yftech/libmusic/ui/MusicLyricFragment;F)F

    .line 394
    iget-object p1, p0, Lcom/yftech/libmusic/ui/MusicLyricFragment$5;->this$0:Lcom/yftech/libmusic/ui/MusicLyricFragment;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-static {p1, p2}, Lcom/yftech/libmusic/ui/MusicLyricFragment;->access$1202(Lcom/yftech/libmusic/ui/MusicLyricFragment;F)F

    .line 395
    iget-object p0, p0, Lcom/yftech/libmusic/ui/MusicLyricFragment$5;->this$0:Lcom/yftech/libmusic/ui/MusicLyricFragment;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-static {p0, p1, p2}, Lcom/yftech/libmusic/ui/MusicLyricFragment;->access$1302(Lcom/yftech/libmusic/ui/MusicLyricFragment;J)J

    goto/16 :goto_4

    .line 397
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne p1, v1, :cond_3

    .line 399
    iget-object p1, p0, Lcom/yftech/libmusic/ui/MusicLyricFragment$5;->this$0:Lcom/yftech/libmusic/ui/MusicLyricFragment;

    invoke-static {p1}, Lcom/yftech/libmusic/ui/MusicLyricFragment;->access$1100(Lcom/yftech/libmusic/ui/MusicLyricFragment;)F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    .line 400
    iget-object v1, p0, Lcom/yftech/libmusic/ui/MusicLyricFragment$5;->this$0:Lcom/yftech/libmusic/ui/MusicLyricFragment;

    invoke-static {v1}, Lcom/yftech/libmusic/ui/MusicLyricFragment;->access$1200(Lcom/yftech/libmusic/ui/MusicLyricFragment;)F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    sub-float/2addr v1, p2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result p2

    .line 402
    iget-object v1, p0, Lcom/yftech/libmusic/ui/MusicLyricFragment$5;->this$0:Lcom/yftech/libmusic/ui/MusicLyricFragment;

    iget-object p0, p0, Lcom/yftech/libmusic/ui/MusicLyricFragment$5;->this$0:Lcom/yftech/libmusic/ui/MusicLyricFragment;

    invoke-static {p0}, Lcom/yftech/libmusic/ui/MusicLyricFragment;->access$000(Lcom/yftech/libmusic/ui/MusicLyricFragment;)Z

    move-result p0

    const/high16 v3, 0x40a00000    # 5.0f

    cmpl-float p1, p1, v3

    if-lez p1, :cond_1

    move p1, v2

    goto :goto_0

    :cond_1
    move p1, v0

    :goto_0
    or-int/2addr p0, p1

    cmpl-float p1, p2, v3

    if-lez p1, :cond_2

    goto :goto_1

    :cond_2
    move v2, v0

    :goto_1
    or-int/2addr p0, v2

    invoke-static {v1, p0}, Lcom/yftech/libmusic/ui/MusicLyricFragment;->access$002(Lcom/yftech/libmusic/ui/MusicLyricFragment;Z)Z

    goto/16 :goto_4

    .line 403
    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v2, :cond_7

    .line 405
    iget-object p1, p0, Lcom/yftech/libmusic/ui/MusicLyricFragment$5;->this$0:Lcom/yftech/libmusic/ui/MusicLyricFragment;

    invoke-static {p1}, Lcom/yftech/libmusic/ui/MusicLyricFragment;->access$1100(Lcom/yftech/libmusic/ui/MusicLyricFragment;)F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    .line 406
    iget-object v1, p0, Lcom/yftech/libmusic/ui/MusicLyricFragment$5;->this$0:Lcom/yftech/libmusic/ui/MusicLyricFragment;

    invoke-static {v1}, Lcom/yftech/libmusic/ui/MusicLyricFragment;->access$1200(Lcom/yftech/libmusic/ui/MusicLyricFragment;)F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    sub-float/2addr v1, p2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result p2

    .line 407
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v1, p0, Lcom/yftech/libmusic/ui/MusicLyricFragment$5;->this$0:Lcom/yftech/libmusic/ui/MusicLyricFragment;

    invoke-static {v1}, Lcom/yftech/libmusic/ui/MusicLyricFragment;->access$1300(Lcom/yftech/libmusic/ui/MusicLyricFragment;)J

    move-result-wide v5

    sub-long/2addr v3, v5

    .line 409
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onTouchEvent:xOffset="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ", yOffset="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ", timeOffset="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 411
    iget-object v1, p0, Lcom/yftech/libmusic/ui/MusicLyricFragment$5;->this$0:Lcom/yftech/libmusic/ui/MusicLyricFragment;

    const-wide/16 v5, 0x12c

    cmp-long v3, v3, v5

    if-gez v3, :cond_4

    const/high16 v4, 0x41a00000    # 20.0f

    cmpg-float p1, p1, v4

    if-gez p1, :cond_4

    cmpg-float p1, p2, v4

    if-gez p1, :cond_4

    move p1, v2

    goto :goto_2

    :cond_4
    move p1, v0

    :goto_2
    invoke-static {v1, p1}, Lcom/yftech/libmusic/ui/MusicLyricFragment;->access$402(Lcom/yftech/libmusic/ui/MusicLyricFragment;Z)Z

    .line 413
    iget-object p1, p0, Lcom/yftech/libmusic/ui/MusicLyricFragment$5;->this$0:Lcom/yftech/libmusic/ui/MusicLyricFragment;

    invoke-static {p1}, Lcom/yftech/libmusic/ui/MusicLyricFragment;->access$400(Lcom/yftech/libmusic/ui/MusicLyricFragment;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 415
    iget-object p1, p0, Lcom/yftech/libmusic/ui/MusicLyricFragment$5;->this$0:Lcom/yftech/libmusic/ui/MusicLyricFragment;

    invoke-virtual {p1}, Lcom/yftech/libmusic/ui/MusicLyricFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-static {p1}, Lcom/media/common/util/AudioSettingUtil;->playSystemClickSoundEffect(Landroid/content/Context;)V

    .line 417
    :cond_5
    iget-object p1, p0, Lcom/yftech/libmusic/ui/MusicLyricFragment$5;->this$0:Lcom/yftech/libmusic/ui/MusicLyricFragment;

    iget-object p2, p0, Lcom/yftech/libmusic/ui/MusicLyricFragment$5;->this$0:Lcom/yftech/libmusic/ui/MusicLyricFragment;

    invoke-static {p2}, Lcom/yftech/libmusic/ui/MusicLyricFragment;->access$000(Lcom/yftech/libmusic/ui/MusicLyricFragment;)Z

    move-result p2

    if-lez v3, :cond_6

    goto :goto_3

    :cond_6
    move v2, v0

    :goto_3
    or-int/2addr p2, v2

    invoke-static {p1, p2}, Lcom/yftech/libmusic/ui/MusicLyricFragment;->access$002(Lcom/yftech/libmusic/ui/MusicLyricFragment;Z)Z

    .line 419
    iget-object p1, p0, Lcom/yftech/libmusic/ui/MusicLyricFragment$5;->this$0:Lcom/yftech/libmusic/ui/MusicLyricFragment;

    invoke-static {p1}, Lcom/yftech/libmusic/ui/MusicLyricFragment;->access$600(Lcom/yftech/libmusic/ui/MusicLyricFragment;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/yftech/libmusic/ui/MusicLyricFragment$5;->this$0:Lcom/yftech/libmusic/ui/MusicLyricFragment;

    invoke-static {p2}, Lcom/yftech/libmusic/ui/MusicLyricFragment;->access$1400(Lcom/yftech/libmusic/ui/MusicLyricFragment;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 420
    iget-object p1, p0, Lcom/yftech/libmusic/ui/MusicLyricFragment$5;->this$0:Lcom/yftech/libmusic/ui/MusicLyricFragment;

    invoke-static {p1}, Lcom/yftech/libmusic/ui/MusicLyricFragment;->access$600(Lcom/yftech/libmusic/ui/MusicLyricFragment;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/yftech/libmusic/ui/MusicLyricFragment$5;->this$0:Lcom/yftech/libmusic/ui/MusicLyricFragment;

    invoke-static {p0}, Lcom/yftech/libmusic/ui/MusicLyricFragment;->access$1400(Lcom/yftech/libmusic/ui/MusicLyricFragment;)Ljava/lang/Runnable;

    move-result-object p0

    const-wide/16 v1, 0xbb8

    invoke-virtual {p1, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_7
    :goto_4
    return v0
.end method
