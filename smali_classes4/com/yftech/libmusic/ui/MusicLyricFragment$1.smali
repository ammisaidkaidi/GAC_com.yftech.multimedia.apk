.class Lcom/yftech/libmusic/ui/MusicLyricFragment$1;
.super Landroid/os/Handler;
.source "MusicLyricFragment.java"


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
.method constructor <init>(Lcom/yftech/libmusic/ui/MusicLyricFragment;Landroid/os/Looper;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/yftech/libmusic/ui/MusicLyricFragment$1;->this$0:Lcom/yftech/libmusic/ui/MusicLyricFragment;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 93
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_4

    .line 95
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 96
    iget v1, p1, Landroid/os/Message;->arg2:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 97
    :goto_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 101
    iget-object p1, p0, Lcom/yftech/libmusic/ui/MusicLyricFragment$1;->this$0:Lcom/yftech/libmusic/ui/MusicLyricFragment;

    invoke-static {p1}, Lcom/yftech/libmusic/ui/MusicLyricFragment;->access$000(Lcom/yftech/libmusic/ui/MusicLyricFragment;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 103
    iget-object p1, p0, Lcom/yftech/libmusic/ui/MusicLyricFragment$1;->this$0:Lcom/yftech/libmusic/ui/MusicLyricFragment;

    invoke-static {p1}, Lcom/yftech/libmusic/ui/MusicLyricFragment;->access$100(Lcom/yftech/libmusic/ui/MusicLyricFragment;)I

    move-result p1

    add-int/lit8 v1, v0, 0x3

    if-eq p1, v1, :cond_3

    .line 105
    iget-object p1, p0, Lcom/yftech/libmusic/ui/MusicLyricFragment$1;->this$0:Lcom/yftech/libmusic/ui/MusicLyricFragment;

    invoke-static {p1, v1}, Lcom/yftech/libmusic/ui/MusicLyricFragment;->access$102(Lcom/yftech/libmusic/ui/MusicLyricFragment;I)I

    if-eqz v2, :cond_1

    .line 109
    :try_start_0
    iget-object p1, p0, Lcom/yftech/libmusic/ui/MusicLyricFragment$1;->this$0:Lcom/yftech/libmusic/ui/MusicLyricFragment;

    invoke-static {p1}, Lcom/yftech/libmusic/ui/MusicLyricFragment;->access$200(Lcom/yftech/libmusic/ui/MusicLyricFragment;)Lcom/wuyr/pathlayoutmanager/PathLayoutManager;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->smoothScrollToPosition(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v1, "error in smoothScrollToPosition"

    .line 111
    invoke-static {v1}, Lcom/media/common/util/LogUtil;->e(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 115
    :cond_1
    iget-object p1, p0, Lcom/yftech/libmusic/ui/MusicLyricFragment$1;->this$0:Lcom/yftech/libmusic/ui/MusicLyricFragment;

    invoke-static {p1}, Lcom/yftech/libmusic/ui/MusicLyricFragment;->access$200(Lcom/yftech/libmusic/ui/MusicLyricFragment;)Lcom/wuyr/pathlayoutmanager/PathLayoutManager;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->scrollToPosition(I)V

    goto :goto_1

    .line 120
    :cond_2
    iget-object p1, p0, Lcom/yftech/libmusic/ui/MusicLyricFragment$1;->this$0:Lcom/yftech/libmusic/ui/MusicLyricFragment;

    const/4 v1, -0x1

    invoke-static {p1, v1}, Lcom/yftech/libmusic/ui/MusicLyricFragment;->access$102(Lcom/yftech/libmusic/ui/MusicLyricFragment;I)I

    .line 123
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/yftech/libmusic/ui/MusicLyricFragment$1;->this$0:Lcom/yftech/libmusic/ui/MusicLyricFragment;

    invoke-static {p1}, Lcom/yftech/libmusic/ui/MusicLyricFragment;->access$300(Lcom/yftech/libmusic/ui/MusicLyricFragment;)Lcom/yftech/libmusic/ui/adapter/MusicLyricAdapter;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 124
    iget-object p0, p0, Lcom/yftech/libmusic/ui/MusicLyricFragment$1;->this$0:Lcom/yftech/libmusic/ui/MusicLyricFragment;

    invoke-static {p0}, Lcom/yftech/libmusic/ui/MusicLyricFragment;->access$300(Lcom/yftech/libmusic/ui/MusicLyricFragment;)Lcom/yftech/libmusic/ui/adapter/MusicLyricAdapter;

    move-result-object p0

    add-int/lit8 v0, v0, 0x3

    invoke-virtual {p0, v0}, Lcom/yftech/libmusic/ui/adapter/MusicLyricAdapter;->setPlayIndex(I)V

    goto/16 :goto_2

    .line 125
    :cond_4
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x14

    if-ne v0, v1, :cond_7

    .line 127
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 128
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/yftech/libmusic/bean/LyricObject;

    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RC_LYRIC_CLICK:isItemClick="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yftech/libmusic/ui/MusicLyricFragment$1;->this$0:Lcom/yftech/libmusic/ui/MusicLyricFragment;

    invoke-static {v2}, Lcom/yftech/libmusic/ui/MusicLyricFragment;->access$400(Lcom/yftech/libmusic/ui/MusicLyricFragment;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isScrolling="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yftech/libmusic/ui/MusicLyricFragment$1;->this$0:Lcom/yftech/libmusic/ui/MusicLyricFragment;

    invoke-static {v2}, Lcom/yftech/libmusic/ui/MusicLyricFragment;->access$000(Lcom/yftech/libmusic/ui/MusicLyricFragment;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 132
    iget-object v1, p0, Lcom/yftech/libmusic/ui/MusicLyricFragment$1;->this$0:Lcom/yftech/libmusic/ui/MusicLyricFragment;

    invoke-static {v1}, Lcom/yftech/libmusic/ui/MusicLyricFragment;->access$400(Lcom/yftech/libmusic/ui/MusicLyricFragment;)Z

    move-result v1

    if-nez v1, :cond_5

    return-void

    .line 135
    :cond_5
    iget-object v1, p0, Lcom/yftech/libmusic/ui/MusicLyricFragment$1;->this$0:Lcom/yftech/libmusic/ui/MusicLyricFragment;

    invoke-static {v1}, Lcom/yftech/libmusic/ui/MusicLyricFragment;->access$000(Lcom/yftech/libmusic/ui/MusicLyricFragment;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 137
    iget-object p0, p0, Lcom/yftech/libmusic/ui/MusicLyricFragment$1;->this$0:Lcom/yftech/libmusic/ui/MusicLyricFragment;

    invoke-static {p0}, Lcom/yftech/libmusic/ui/MusicLyricFragment;->access$300(Lcom/yftech/libmusic/ui/MusicLyricFragment;)Lcom/yftech/libmusic/ui/adapter/MusicLyricAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/libmusic/ui/adapter/MusicLyricAdapter;->getmPosition()I

    move-result p0

    if-eq p0, v0, :cond_7

    if-eqz p1, :cond_7

    .line 138
    iget p0, p1, Lcom/yftech/libmusic/bean/LyricObject;->begintime:I

    if-lez p0, :cond_7

    .line 140
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "RC_LYRIC_CLICK->:progress="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p1, Lcom/yftech/libmusic/bean/LyricObject;->begintime:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 145
    invoke-static {}, Lcom/yftech/car/media/music/CarMusicManager;->getInstance()Lcom/yftech/car/media/music/CarMusicManager;

    move-result-object p0

    iget p1, p1, Lcom/yftech/libmusic/bean/LyricObject;->begintime:I

    invoke-virtual {p0, p1}, Lcom/yftech/car/media/music/CarMusicManager;->setPlayProgress(I)V

    goto :goto_2

    .line 150
    :cond_6
    iget-object p1, p0, Lcom/yftech/libmusic/ui/MusicLyricFragment$1;->this$0:Lcom/yftech/libmusic/ui/MusicLyricFragment;

    invoke-static {p1}, Lcom/yftech/libmusic/ui/MusicLyricFragment;->access$300(Lcom/yftech/libmusic/ui/MusicLyricFragment;)Lcom/yftech/libmusic/ui/adapter/MusicLyricAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/libmusic/ui/adapter/MusicLyricAdapter;->getData()Ljava/util/List;

    move-result-object p1

    .line 151
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 153
    iget-object p1, p0, Lcom/yftech/libmusic/ui/MusicLyricFragment$1;->this$0:Lcom/yftech/libmusic/ui/MusicLyricFragment;

    invoke-virtual {p1}, Lcom/yftech/libmusic/ui/MusicLyricFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/yftech/libmusic/MusicMainActivity;

    if-eqz p1, :cond_7

    .line 154
    iget-object p1, p0, Lcom/yftech/libmusic/ui/MusicLyricFragment$1;->this$0:Lcom/yftech/libmusic/ui/MusicLyricFragment;

    invoke-virtual {p1}, Lcom/yftech/libmusic/ui/MusicLyricFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/yftech/libmusic/MusicMainActivity;

    .line 155
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicLyricFragment$1;->this$0:Lcom/yftech/libmusic/ui/MusicLyricFragment;

    invoke-static {v0}, Lcom/yftech/libmusic/ui/MusicLyricFragment;->access$500(Lcom/yftech/libmusic/ui/MusicLyricFragment;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 156
    iget-object p0, p0, Lcom/yftech/libmusic/ui/MusicLyricFragment$1;->this$0:Lcom/yftech/libmusic/ui/MusicLyricFragment;

    invoke-static {p0}, Lcom/yftech/libmusic/ui/MusicLyricFragment;->access$500(Lcom/yftech/libmusic/ui/MusicLyricFragment;)Landroidx/fragment/app/Fragment;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/yftech/libmusic/MusicMainActivity;->switchContent(Landroidx/fragment/app/Fragment;)V

    :cond_7
    :goto_2
    return-void
.end method
