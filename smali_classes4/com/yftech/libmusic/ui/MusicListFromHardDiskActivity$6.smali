.class Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity$6;
.super Ljava/lang/Object;
.source "MusicListFromHardDiskActivity.java"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemChildClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;


# direct methods
.method constructor <init>(Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;)V
    .locals 0

    .line 393
    iput-object p1, p0, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity$6;->this$0:Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemChildClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 4

    .line 396
    iget-object p1, p0, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity$6;->this$0:Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;

    invoke-static {p1}, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;->access$000(Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;)Lcom/yftech/libmusic/ui/adapter/MusicListForHardDiskAdapter;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/yftech/libmusic/ui/adapter/MusicListForHardDiskAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yftech/libmusic/bean/MusicListItem;

    const/4 p2, 0x1

    if-eqz p1, :cond_1

    .line 397
    invoke-virtual {p1}, Lcom/yftech/libmusic/bean/MusicListItem;->isDir()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 399
    iget-object p3, p0, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity$6;->this$0:Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;

    invoke-static {p3}, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;->access$400(Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;)Landroid/widget/TextView;

    move-result-object p3

    invoke-virtual {p1}, Lcom/yftech/libmusic/bean/MusicListItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 400
    iget-object p3, p0, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity$6;->this$0:Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;

    invoke-static {p3}, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;->access$500(Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;)Lcom/media/common/ui/widget/ScrollableTextView;

    move-result-object p3

    invoke-virtual {p1}, Lcom/yftech/libmusic/bean/MusicListItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/media/common/ui/widget/ScrollableTextView;->setContent(Ljava/lang/String;)V

    .line 402
    iget-object p3, p0, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity$6;->this$0:Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;

    invoke-static {p3}, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;->access$000(Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;)Lcom/yftech/libmusic/ui/adapter/MusicListForHardDiskAdapter;

    move-result-object p3

    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity$6;->this$0:Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;

    invoke-static {v0}, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;->access$000(Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;)Lcom/yftech/libmusic/ui/adapter/MusicListForHardDiskAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/libmusic/ui/adapter/MusicListForHardDiskAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/yftech/libmusic/ui/adapter/MusicListForHardDiskAdapter;->setParentList(Ljava/util/List;)V

    .line 403
    iget-object p3, p0, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity$6;->this$0:Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;

    invoke-static {p3}, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;->access$000(Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;)Lcom/yftech/libmusic/ui/adapter/MusicListForHardDiskAdapter;

    move-result-object p3

    invoke-virtual {p1}, Lcom/yftech/libmusic/bean/MusicListItem;->getData()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/yftech/libmusic/ui/adapter/MusicListForHardDiskAdapter;->setNewData(Ljava/util/List;)V

    .line 405
    iget-object p3, p0, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity$6;->this$0:Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;

    invoke-static {p3}, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;->access$000(Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;)Lcom/yftech/libmusic/ui/adapter/MusicListForHardDiskAdapter;

    move-result-object p3

    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity$6;->this$0:Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;

    invoke-static {v0}, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;->access$000(Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;)Lcom/yftech/libmusic/ui/adapter/MusicListForHardDiskAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/libmusic/ui/adapter/MusicListForHardDiskAdapter;->getPlayingPath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Lcom/yftech/libmusic/ui/adapter/MusicListForHardDiskAdapter;->setPlaying(Ljava/lang/String;Z)V

    .line 406
    iget-object p3, p0, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity$6;->this$0:Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;

    invoke-static {p3}, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;->access$000(Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;)Lcom/yftech/libmusic/ui/adapter/MusicListForHardDiskAdapter;

    move-result-object p3

    invoke-virtual {p3}, Lcom/yftech/libmusic/ui/adapter/MusicListForHardDiskAdapter;->getPosition()I

    move-result p3

    .line 407
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity$6;->this$0:Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;

    invoke-static {v0}, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;->access$600(Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 410
    iget-object p3, p0, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity$6;->this$0:Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;

    invoke-static {p3}, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;->access$700(Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;)Landroid/widget/TextView;

    move-result-object p3

    const/4 v0, 0x4

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 413
    invoke-virtual {p1}, Lcom/yftech/libmusic/bean/MusicListItem;->getData()Ljava/util/List;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 414
    iget-object p3, p0, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity$6;->this$0:Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;

    invoke-static {p3}, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;->access$800(Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;)Landroid/widget/TextView;

    move-result-object p3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v2, "(%d)"

    new-array p2, p2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/yftech/libmusic/bean/MusicListItem;->getData()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, p2, v1

    invoke-static {v0, v2, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 416
    :cond_0
    iget-object p3, p0, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity$6;->this$0:Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;

    invoke-static {p3}, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;->access$800(Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;)Landroid/widget/TextView;

    move-result-object p3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v2, "(%d)"

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, p2, v1

    invoke-static {v0, v2, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 418
    :goto_0
    iget-object p0, p0, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity$6;->this$0:Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;

    invoke-virtual {p1}, Lcom/yftech/libmusic/bean/MusicListItem;->getFoloder()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;->access$902(Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_2

    :cond_1
    if-eqz p1, :cond_4

    .line 422
    iget-object p3, p0, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity$6;->this$0:Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;

    invoke-static {p3, p2}, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;->access$202(Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;Z)Z

    .line 423
    invoke-static {}, Lcom/yftech/car/media/music/CarMusicManager;->getInstance()Lcom/yftech/car/media/music/CarMusicManager;

    move-result-object p3

    invoke-virtual {p1}, Lcom/yftech/libmusic/bean/MusicListItem;->getFoloder()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/yftech/libmusic/bean/MusicListItem;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1, p2}, Lcom/yftech/car/media/music/CarMusicManager;->start(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 425
    iget-object p3, p0, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity$6;->this$0:Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;

    invoke-static {p3}, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;->access$000(Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;)Lcom/yftech/libmusic/ui/adapter/MusicListForHardDiskAdapter;

    move-result-object p3

    invoke-virtual {p3}, Lcom/yftech/libmusic/ui/adapter/MusicListForHardDiskAdapter;->getPlayingPath()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_2

    iget-object p3, p0, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity$6;->this$0:Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;

    invoke-static {p3}, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;->access$000(Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;)Lcom/yftech/libmusic/ui/adapter/MusicListForHardDiskAdapter;

    move-result-object p3

    invoke-virtual {p3}, Lcom/yftech/libmusic/ui/adapter/MusicListForHardDiskAdapter;->getPlayingPath()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1}, Lcom/yftech/libmusic/bean/MusicListItem;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_2

    .line 426
    iget-object p3, p0, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity$6;->this$0:Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;

    invoke-static {p3}, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;->access$000(Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;)Lcom/yftech/libmusic/ui/adapter/MusicListForHardDiskAdapter;

    move-result-object p3

    invoke-virtual {p1}, Lcom/yftech/libmusic/bean/MusicListItem;->getFilePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1, p2}, Lcom/yftech/libmusic/ui/adapter/MusicListForHardDiskAdapter;->setPlaying(Ljava/lang/String;Z)V

    .line 430
    :cond_2
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance p2, Lcom/yftech/libmusic/event/MusicSourceChangedEvent;

    iget-object p0, p0, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity$6;->this$0:Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;

    invoke-static {p0}, Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;->access$1000(Lcom/yftech/libmusic/ui/MusicListFromHardDiskActivity;)I

    move-result p0

    if-nez p0, :cond_3

    const-string p0, "MUSIC_SOURCE_OF_USB1"

    goto :goto_1

    :cond_3
    const-string p0, "MUSIC_SOURCE_OF_USB2"

    :goto_1
    invoke-direct {p2, p0}, Lcom/yftech/libmusic/event/MusicSourceChangedEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_4
    :goto_2
    return-void
.end method
