.class Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$7;
.super Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicControlCallback;
.source "MusicLayoutChildManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->getCarRadioControlCallback()Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicControlCallback;
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

    .line 920
    iput-object p1, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$7;->this$0:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;

    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicControlCallback;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onChangePlayMode$4(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$7;I)V
    .locals 0

    .line 1030
    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$7;->onChangePlayMode(I)V

    return-void
.end method

.method public static synthetic lambda$onChangePlayMusic$0(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$7;Lcom/yftech/car/media/data/entity/MediaFile;)V
    .locals 0

    .line 950
    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$7;->onChangePlayMusic(Lcom/yftech/car/media/data/entity/MediaFile;)V

    return-void
.end method

.method public static synthetic lambda$onChangePlaying$2(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$7;Z)V
    .locals 0

    .line 998
    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$7;->onChangePlaying(Z)V

    return-void
.end method

.method public static synthetic lambda$onChangeProgress$5(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$7;I)V
    .locals 0

    .line 1069
    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$7;->onChangeProgress(I)V

    return-void
.end method

.method public static synthetic lambda$onCollectChange$3(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$7;)V
    .locals 3

    .line 1005
    iget-object p0, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$7;->this$0:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;

    invoke-static {p0}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->access$700(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/car/widget/media/music/button/MusicButton;

    const/4 v1, 0x6

    .line 1006
    invoke-virtual {v0, v1}, Lcom/yftech/car/widget/media/music/button/MusicButton;->isFunction(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1007
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MusicManager;->getInstance()Lcom/yftech/car/widget/media/manager/MusicManager;

    move-result-object v1

    invoke-static {}, Lcom/yftech/car/widget/media/manager/MusicManager;->getInstance()Lcom/yftech/car/widget/media/manager/MusicManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yftech/car/widget/media/manager/MusicManager;->getPlayMusic()Lcom/yftech/car/media/data/entity/MediaFile;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yftech/car/widget/media/manager/MusicManager;->isCollectMusic(Lcom/yftech/car/media/data/entity/MediaFile;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yftech/car/widget/media/music/button/MusicButton;->setActivatedStatus(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static synthetic lambda$onPlayListChange$1(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$7;I)V
    .locals 3

    .line 958
    iget-object v0, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$7;->this$0:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;

    invoke-static {v0}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->access$700(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/car/widget/media/music/button/MusicButton;

    .line 959
    invoke-virtual {v1}, Lcom/yftech/car/widget/media/music/button/MusicButton;->isUsbFunction()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 960
    invoke-virtual {v1, p1}, Lcom/yftech/car/widget/media/music/button/MusicButton;->setUsbStatus(I)V

    goto :goto_0

    :cond_1
    const-string v0, "LayoutChildManager"

    .line 963
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPlayListChange: index=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    iget-object p0, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$7;->this$0:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;

    invoke-static {p0}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->access$1600(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yftech/car/widget/media/text/MediaFileTextView;

    .line 965
    invoke-virtual {p1}, Lcom/yftech/car/widget/media/text/MediaFileTextView;->isMediaFileInfo()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 966
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MusicManager;->getInstance()Lcom/yftech/car/widget/media/manager/MusicManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/manager/MusicManager;->getPlayMusic()Lcom/yftech/car/media/data/entity/MediaFile;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/yftech/car/widget/media/text/MediaFileTextView;->updateMediaFile(Lcom/yftech/car/media/data/entity/MediaFile;)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public static synthetic lambda$onPrepared$6(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$7;I)V
    .locals 0

    .line 1086
    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$7;->onPrepared(I)V

    return-void
.end method


# virtual methods
.method public onChangePlayMode(I)V
    .locals 2

    .line 1023
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 1024
    iget-object p0, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$7;->this$0:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;

    invoke-static {p0}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->access$700(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/car/widget/media/music/button/MusicButton;

    const/4 v1, 0x5

    .line 1025
    invoke-virtual {v0, v1}, Lcom/yftech/car/widget/media/music/button/MusicButton;->isFunction(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1026
    invoke-virtual {v0, p1}, Lcom/yftech/car/widget/media/music/button/MusicButton;->updatePlayMode(I)V

    goto :goto_0

    .line 1030
    :cond_1
    iget-object v0, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$7;->this$0:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;

    invoke-static {v0}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->access$1300(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;)Landroid/view/ViewGroup;

    move-result-object v0

    new-instance v1, Lcom/yftech/car/widget/media/music/layout/-$$Lambda$MusicLayoutChildManager$7$1vzwu1oaG5CXKtLsTaHGKhgAsX0;

    invoke-direct {v1, p0, p1}, Lcom/yftech/car/widget/media/music/layout/-$$Lambda$MusicLayoutChildManager$7$1vzwu1oaG5CXKtLsTaHGKhgAsX0;-><init>(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$7;I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->postOnAnimation(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method public onChangePlayMusic(Lcom/yftech/car/media/data/entity/MediaFile;)V
    .locals 5

    .line 924
    iget-object v0, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$7;->this$0:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;

    invoke-static {v0, p1}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->access$1102(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;Lcom/yftech/car/media/data/entity/MediaFile;)Lcom/yftech/car/media/data/entity/MediaFile;

    .line 925
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_6

    .line 926
    iget-object v0, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$7;->this$0:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;

    invoke-static {v0}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->access$700(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/car/widget/media/music/button/MusicButton;

    const/4 v2, 0x6

    .line 927
    invoke-virtual {v1, v2}, Lcom/yftech/car/widget/media/music/button/MusicButton;->isFunction(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 928
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MusicManager;->getInstance()Lcom/yftech/car/widget/media/manager/MusicManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/yftech/car/widget/media/manager/MusicManager;->isCollectMusic(Lcom/yftech/car/media/data/entity/MediaFile;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/yftech/car/widget/media/music/button/MusicButton;->setActivatedStatus(Z)V

    goto :goto_0

    .line 931
    :cond_1
    iget-object v0, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$7;->this$0:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;

    invoke-static {v0}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->access$1600(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/car/widget/media/text/MediaFileTextView;

    .line 932
    invoke-virtual {v1}, Lcom/yftech/car/widget/media/text/MediaFileTextView;->isMediaFileInfo()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 933
    invoke-virtual {v1, p1}, Lcom/yftech/car/widget/media/text/MediaFileTextView;->updateMediaFile(Lcom/yftech/car/media/data/entity/MediaFile;)V

    goto :goto_1

    .line 937
    :cond_3
    iget-object v0, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$7;->this$0:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;

    invoke-static {v0}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->access$1200(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 938
    iget-object v0, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$7;->this$0:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;

    invoke-static {v0}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->access$2500(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;)Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$MusicImageRunnable;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 939
    iget-object v0, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$7;->this$0:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;

    invoke-static {v0}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->access$2500(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;)Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$MusicImageRunnable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$MusicImageRunnable;->access$202(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$MusicImageRunnable;Z)Z

    .line 941
    :cond_4
    iget-object v0, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$7;->this$0:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;

    new-instance v1, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$MusicImageRunnable;

    iget-object v2, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$7;->this$0:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;

    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getData()Ljava/lang/String;

    move-result-object p1

    iget-object v3, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$7;->this$0:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;

    invoke-static {v3}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->access$1300(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;)Landroid/view/ViewGroup;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v1, v2, p1, v3, v4}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$MusicImageRunnable;-><init>(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;Ljava/lang/String;Landroid/view/View;Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$1;)V

    invoke-static {v0, v1}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->access$2502(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$MusicImageRunnable;)Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$MusicImageRunnable;

    .line 942
    invoke-static {}, Lcom/yftech/car/widget/media/utils/TaskManager;->getInstance()Lcom/yftech/car/widget/media/utils/TaskManager;

    move-result-object p1

    iget-object v0, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$7;->this$0:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;

    invoke-static {v0}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->access$2500(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;)Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$MusicImageRunnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/yftech/car/widget/media/utils/TaskManager;->threadRunnable(Ljava/lang/Runnable;)V

    .line 945
    :cond_5
    iget-object p0, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$7;->this$0:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;

    invoke-static {p0}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->access$800(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yftech/car/widget/media/list/MediaDataList;

    .line 946
    invoke-virtual {p1}, Lcom/yftech/car/widget/media/list/MediaDataList;->notifyDataSetChanged()V

    .line 947
    invoke-virtual {p1}, Lcom/yftech/car/widget/media/list/MediaDataList;->updateListPosition()V

    goto :goto_2

    .line 950
    :cond_6
    iget-object v0, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$7;->this$0:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;

    invoke-static {v0}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->access$1300(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;)Landroid/view/ViewGroup;

    move-result-object v0

    new-instance v1, Lcom/yftech/car/widget/media/music/layout/-$$Lambda$MusicLayoutChildManager$7$NRlgWPL4x0vYDxBfnjzO8KTDNCc;

    invoke-direct {v1, p0, p1}, Lcom/yftech/car/widget/media/music/layout/-$$Lambda$MusicLayoutChildManager$7$NRlgWPL4x0vYDxBfnjzO8KTDNCc;-><init>(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$7;Lcom/yftech/car/media/data/entity/MediaFile;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->postOnAnimation(Ljava/lang/Runnable;)V

    :cond_7
    return-void
.end method

.method public onChangePlaying(Z)V
    .locals 3

    const-string v0, "LayoutChildManager"

    .line 987
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChangePlaying: mButtonList=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$7;->this$0:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;

    invoke-static {v2}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->access$700(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",isPlaying=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 989
    iget-object v0, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$7;->this$0:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;

    invoke-static {v0}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->access$700(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/car/widget/media/music/button/MusicButton;

    const/4 v2, 0x4

    .line 990
    invoke-virtual {v1, v2}, Lcom/yftech/car/widget/media/music/button/MusicButton;->isFunction(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 991
    invoke-virtual {v1, p1}, Lcom/yftech/car/widget/media/music/button/MusicButton;->setActivatedStatus(Z)V

    goto :goto_0

    .line 994
    :cond_1
    iget-object p0, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$7;->this$0:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;

    invoke-static {p0}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->access$800(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yftech/car/widget/media/list/MediaDataList;

    .line 995
    invoke-virtual {p1}, Lcom/yftech/car/widget/media/list/MediaDataList;->notifyDataSetChanged()V

    goto :goto_1

    .line 998
    :cond_2
    iget-object v0, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$7;->this$0:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;

    invoke-static {v0}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->access$1300(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;)Landroid/view/ViewGroup;

    move-result-object v0

    new-instance v1, Lcom/yftech/car/widget/media/music/layout/-$$Lambda$MusicLayoutChildManager$7$KPXuAApzQ0PhXdTS-3CQg5wC_qQ;

    invoke-direct {v1, p0, p1}, Lcom/yftech/car/widget/media/music/layout/-$$Lambda$MusicLayoutChildManager$7$KPXuAApzQ0PhXdTS-3CQg5wC_qQ;-><init>(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$7;Z)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->postOnAnimation(Ljava/lang/Runnable;)V

    :cond_3
    return-void
.end method

.method public onChangeProgress(I)V
    .locals 4

    .line 1038
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_4

    .line 1040
    iget-object v0, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$7;->this$0:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;

    invoke-static {v0}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->access$500(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1041
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1042
    iget-object v2, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$7;->this$0:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;

    invoke-static {v2}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->access$600(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0xc8

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 1043
    iget-object v0, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$7;->this$0:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;

    invoke-static {v0}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->access$400(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/car/widget/media/text/MediaPlayTime;

    int-to-long v2, p1

    .line 1044
    invoke-virtual {v1, v2, v3}, Lcom/yftech/car/widget/media/text/MediaPlayTime;->updateProgress(J)V

    goto :goto_0

    .line 1046
    :cond_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$7;->this$0:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;

    invoke-static {v0}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->access$1700(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/car/widget/media/view/MediaSeekBar;

    .line 1047
    invoke-virtual {v1, p1}, Lcom/yftech/car/widget/media/view/MediaSeekBar;->setProgress(I)V

    goto :goto_1

    .line 1050
    :cond_1
    iget-object v0, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$7;->this$0:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;

    invoke-static {v0}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->access$1800(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    .line 1051
    invoke-virtual {v1, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_2

    .line 1055
    :cond_2
    iget-object p1, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$7;->this$0:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;

    invoke-static {p1}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->access$700(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/car/widget/media/music/button/MusicButton;

    const/4 v1, 0x4

    .line 1056
    invoke-virtual {v0, v1}, Lcom/yftech/car/widget/media/music/button/MusicButton;->isFunction(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1057
    invoke-virtual {v0}, Lcom/yftech/car/widget/media/music/button/MusicButton;->isActivatedStatus()Z

    move-result p1

    if-nez p1, :cond_5

    .line 1059
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MusicManager;->getInstance()Lcom/yftech/car/widget/media/manager/MusicManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/car/widget/media/manager/MusicManager;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "LayoutChildManager"

    const-string v0, "onChangeProgress: play status error"

    .line 1061
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 1062
    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$7;->onChangePlaying(Z)V

    goto :goto_3

    .line 1069
    :cond_4
    iget-object v0, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$7;->this$0:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;

    invoke-static {v0}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->access$1300(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;)Landroid/view/ViewGroup;

    move-result-object v0

    new-instance v1, Lcom/yftech/car/widget/media/music/layout/-$$Lambda$MusicLayoutChildManager$7$4ZWzlCRvu5UBtCOZwuw62KFKnUU;

    invoke-direct {v1, p0, p1}, Lcom/yftech/car/widget/media/music/layout/-$$Lambda$MusicLayoutChildManager$7$4ZWzlCRvu5UBtCOZwuw62KFKnUU;-><init>(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$7;I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->postOnAnimation(Ljava/lang/Runnable;)V

    :cond_5
    :goto_3
    return-void
.end method

.method public onCollectChange(I)V
    .locals 3

    .line 1004
    new-instance v0, Lcom/yftech/car/widget/media/music/layout/-$$Lambda$MusicLayoutChildManager$7$t-oirIBzVB6HzvUkLv75A-hQuHU;

    invoke-direct {v0, p0}, Lcom/yftech/car/widget/media/music/layout/-$$Lambda$MusicLayoutChildManager$7$t-oirIBzVB6HzvUkLv75A-hQuHU;-><init>(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$7;)V

    .line 1012
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 1013
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 1015
    :cond_0
    iget-object v1, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$7;->this$0:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;

    invoke-static {v1}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->access$1300(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 1018
    :goto_0
    iget-object p0, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$7;->this$0:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;

    invoke-static {p0, p1}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->access$100(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;I)V

    return-void
.end method

.method public onPlayListChange(I)V
    .locals 2

    .line 957
    new-instance v0, Lcom/yftech/car/widget/media/music/layout/-$$Lambda$MusicLayoutChildManager$7$WdaOZjP6tvgAamTFSDC2sQgmkbM;

    invoke-direct {v0, p0, p1}, Lcom/yftech/car/widget/media/music/layout/-$$Lambda$MusicLayoutChildManager$7$WdaOZjP6tvgAamTFSDC2sQgmkbM;-><init>(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$7;I)V

    .line 971
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 972
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 974
    :cond_0
    iget-object p1, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$7;->this$0:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;

    invoke-static {p1}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->access$1300(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;)Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 976
    :goto_0
    iget-object p0, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$7;->this$0:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;

    invoke-static {p0}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->access$000(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;)V

    return-void
.end method

.method public onPrepared(I)V
    .locals 4

    .line 1075
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 1076
    iget-object v0, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$7;->this$0:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;

    invoke-static {v0}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->access$400(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/car/widget/media/text/MediaPlayTime;

    int-to-long v2, p1

    .line 1077
    invoke-virtual {v1, v2, v3}, Lcom/yftech/car/widget/media/text/MediaPlayTime;->updateDuration(J)V

    goto :goto_0

    .line 1079
    :cond_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$7;->this$0:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;

    invoke-static {v0}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->access$1700(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/car/widget/media/view/MediaSeekBar;

    .line 1080
    invoke-virtual {v1, p1}, Lcom/yftech/car/widget/media/view/MediaSeekBar;->setMax(I)V

    goto :goto_1

    .line 1082
    :cond_1
    iget-object p0, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$7;->this$0:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;

    invoke-static {p0}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->access$1800(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 1083
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    goto :goto_2

    .line 1086
    :cond_2
    iget-object v0, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$7;->this$0:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;

    invoke-static {v0}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->access$1300(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;)Landroid/view/ViewGroup;

    move-result-object v0

    new-instance v1, Lcom/yftech/car/widget/media/music/layout/-$$Lambda$MusicLayoutChildManager$7$MWcVsNM1NHb4oIdwc4aqfQaDaIQ;

    invoke-direct {v1, p0, p1}, Lcom/yftech/car/widget/media/music/layout/-$$Lambda$MusicLayoutChildManager$7$MWcVsNM1NHb4oIdwc4aqfQaDaIQ;-><init>(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$7;I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->postOnAnimation(Ljava/lang/Runnable;)V

    :cond_3
    return-void
.end method
