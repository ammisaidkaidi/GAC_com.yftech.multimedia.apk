.class Lcom/yftech/libmusic/ui/MusicPlayerFragment$7;
.super Ljava/lang/Object;
.source "MusicPlayerFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/libmusic/ui/MusicPlayerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;


# direct methods
.method constructor <init>(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)V
    .locals 0

    .line 618
    iput-object p1, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$7;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "MUSIC_SOURCE_OF_BLUETOOTH"

    .line 621
    iget-object v1, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$7;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-static {v1}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->access$1200(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 623
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$7;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-static {v0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->access$1700(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 624
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$7;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-static {v0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->access$1400(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 625
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$7;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-static {v0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->access$1300(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 626
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$7;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-static {v0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->access$500(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 627
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$7;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-static {v0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->access$200(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 628
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$7;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-static {v0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->access$300(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 629
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$7;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-static {v0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->access$1100(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 630
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$7;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-static {v0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->access$1000(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 631
    iget-object p0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$7;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-static {p0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->access$400(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)Landroid/widget/ImageView;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 633
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p0

    new-instance v0, Lcom/yftech/libmusic/event/MusicPlayStatusEvent;

    invoke-direct {v0, v1}, Lcom/yftech/libmusic/event/MusicPlayStatusEvent;-><init>(Z)V

    invoke-virtual {p0, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
