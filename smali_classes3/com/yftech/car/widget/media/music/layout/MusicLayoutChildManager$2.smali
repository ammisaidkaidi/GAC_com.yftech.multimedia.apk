.class Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$2;
.super Ljava/lang/Object;
.source "MusicLayoutChildManager.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->getOnSeekBarChangeListener()Landroid/widget/SeekBar$OnSeekBarChangeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;


# direct methods
.method constructor <init>(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;)V
    .locals 0

    .line 499
    iput-object p1, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$2;->this$0:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    if-eqz p3, :cond_0

    .line 503
    iget-object p0, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$2;->this$0:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;

    invoke-static {p0}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->access$400(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yftech/car/widget/media/text/MediaPlayTime;

    int-to-long v0, p2

    .line 504
    invoke-virtual {p1, v0, v1}, Lcom/yftech/car/widget/media/text/MediaPlayTime;->updateProgress(J)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .line 511
    check-cast p1, Lcom/yftech/car/widget/media/view/MediaSeekBar;

    const/4 v0, 0x1

    .line 512
    invoke-virtual {p1, v0}, Lcom/yftech/car/widget/media/view/MediaSeekBar;->setTouchSeekBar(Z)V

    .line 513
    iget-object p0, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$2;->this$0:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;

    invoke-static {p0, v0}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->access$502(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;Z)Z

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 5

    .line 518
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    .line 519
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MusicManager;->getInstance()Lcom/yftech/car/widget/media/manager/MusicManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/yftech/car/widget/media/manager/MusicManager;->setPlayProgress(I)V

    .line 520
    iget-object v1, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$2;->this$0:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;

    invoke-static {v1}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->access$400(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yftech/car/widget/media/text/MediaPlayTime;

    int-to-long v3, v0

    .line 521
    invoke-virtual {v2, v3, v4}, Lcom/yftech/car/widget/media/text/MediaPlayTime;->updateProgress(J)V

    goto :goto_0

    .line 523
    :cond_0
    check-cast p1, Lcom/yftech/car/widget/media/view/MediaSeekBar;

    const/4 v0, 0x0

    .line 524
    invoke-virtual {p1, v0}, Lcom/yftech/car/widget/media/view/MediaSeekBar;->setTouchSeekBar(Z)V

    .line 525
    iget-object p1, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$2;->this$0:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;

    invoke-static {p1, v0}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->access$502(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;Z)Z

    .line 526
    iget-object p0, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$2;->this$0:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->access$602(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;J)J

    return-void
.end method
