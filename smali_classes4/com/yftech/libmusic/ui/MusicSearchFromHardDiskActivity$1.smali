.class Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity$1;
.super Landroid/os/Handler;
.source "MusicSearchFromHardDiskActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;


# direct methods
.method constructor <init>(Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;Landroid/os/Looper;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity$1;->this$0:Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 85
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 86
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 88
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity$1;->this$0:Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;

    invoke-virtual {v0}, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;->getPresenter()Lcom/yftech/libmvpmodule/mvp/BaseMvpPresenter;

    move-result-object v0

    check-cast v0, Lcom/yftech/libmusic/presenter/MusicSearchPresenter;

    iget-object p0, p0, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity$1;->this$0:Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;

    invoke-static {p0}, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;->access$000(Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;)I

    move-result p0

    invoke-virtual {v0, p1, p0}, Lcom/yftech/libmusic/presenter/MusicSearchPresenter;->searchMusic(Ljava/lang/String;I)V

    goto :goto_0

    .line 89
    :cond_0
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x14

    if-ne p1, v0, :cond_1

    .line 91
    iget-object p1, p0, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity$1;->this$0:Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;

    invoke-virtual {p1}, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object p0, p0, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity$1;->this$0:Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;

    invoke-static {p0}, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;->access$100(Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;)Landroid/widget/EditText;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p1, p0, v0}, Lcom/media/common/util/SoftHideKeyBoardUtil;->isShowKeyBoard(Landroid/content/Context;Landroid/view/View;Z)V

    :cond_1
    :goto_0
    return-void
.end method
