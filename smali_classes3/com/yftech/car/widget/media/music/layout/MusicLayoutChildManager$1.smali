.class Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$1;
.super Landroid/os/Handler;
.source "MusicLayoutChildManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;


# direct methods
.method constructor <init>(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;Landroid/os/Looper;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$1;->this$0:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 157
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 158
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 163
    :pswitch_0
    iget-object p0, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$1;->this$0:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->access$100(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;I)V

    goto :goto_0

    .line 160
    :pswitch_1
    iget-object p0, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$1;->this$0:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;

    invoke-static {p0}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->access$000(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
