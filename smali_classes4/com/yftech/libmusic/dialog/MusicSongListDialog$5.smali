.class Lcom/yftech/libmusic/dialog/MusicSongListDialog$5;
.super Ljava/lang/Object;
.source "MusicSongListDialog.java"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemChildClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/libmusic/dialog/MusicSongListDialog;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libmusic/dialog/MusicSongListDialog;


# direct methods
.method constructor <init>(Lcom/yftech/libmusic/dialog/MusicSongListDialog;)V
    .locals 0

    .line 364
    iput-object p1, p0, Lcom/yftech/libmusic/dialog/MusicSongListDialog$5;->this$0:Lcom/yftech/libmusic/dialog/MusicSongListDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemChildClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 3

    .line 368
    iget-object p1, p0, Lcom/yftech/libmusic/dialog/MusicSongListDialog$5;->this$0:Lcom/yftech/libmusic/dialog/MusicSongListDialog;

    invoke-static {p1}, Lcom/yftech/libmusic/dialog/MusicSongListDialog;->access$300(Lcom/yftech/libmusic/dialog/MusicSongListDialog;)Landroid/os/Handler;

    move-result-object p1

    const/16 p2, 0xa

    invoke-virtual {p1, p2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 369
    iget-object p1, p0, Lcom/yftech/libmusic/dialog/MusicSongListDialog$5;->this$0:Lcom/yftech/libmusic/dialog/MusicSongListDialog;

    invoke-static {p1}, Lcom/yftech/libmusic/dialog/MusicSongListDialog;->access$300(Lcom/yftech/libmusic/dialog/MusicSongListDialog;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 370
    :cond_0
    iget-object p1, p0, Lcom/yftech/libmusic/dialog/MusicSongListDialog$5;->this$0:Lcom/yftech/libmusic/dialog/MusicSongListDialog;

    invoke-static {p1}, Lcom/yftech/libmusic/dialog/MusicSongListDialog;->access$300(Lcom/yftech/libmusic/dialog/MusicSongListDialog;)Landroid/os/Handler;

    move-result-object p1

    const-wide/16 v0, 0x3a98

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 372
    iget-object p1, p0, Lcom/yftech/libmusic/dialog/MusicSongListDialog$5;->this$0:Lcom/yftech/libmusic/dialog/MusicSongListDialog;

    invoke-static {p1}, Lcom/yftech/libmusic/dialog/MusicSongListDialog;->access$200(Lcom/yftech/libmusic/dialog/MusicSongListDialog;)Lcom/yftech/libmusic/dialog/adapter/MusicSongListAdapter;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 374
    iget-object p1, p0, Lcom/yftech/libmusic/dialog/MusicSongListDialog$5;->this$0:Lcom/yftech/libmusic/dialog/MusicSongListDialog;

    invoke-static {p1}, Lcom/yftech/libmusic/dialog/MusicSongListDialog;->access$200(Lcom/yftech/libmusic/dialog/MusicSongListDialog;)Lcom/yftech/libmusic/dialog/adapter/MusicSongListAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/libmusic/dialog/adapter/MusicSongListAdapter;->getPosition()I

    move-result p1

    if-eq p1, p3, :cond_1

    .line 377
    iget-object p1, p0, Lcom/yftech/libmusic/dialog/MusicSongListDialog$5;->this$0:Lcom/yftech/libmusic/dialog/MusicSongListDialog;

    invoke-static {p1}, Lcom/yftech/libmusic/dialog/MusicSongListDialog;->access$200(Lcom/yftech/libmusic/dialog/MusicSongListDialog;)Lcom/yftech/libmusic/dialog/adapter/MusicSongListAdapter;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/yftech/libmusic/dialog/adapter/MusicSongListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yftech/libmusic/bean/MediaFileItem;

    if-eqz p1, :cond_1

    .line 382
    invoke-static {}, Lcom/yftech/car/media/music/CarMusicManager;->getInstance()Lcom/yftech/car/media/music/CarMusicManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/yftech/car/media/music/CarMusicManager;->getMusicType()I

    move-result p2

    .line 383
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getMusicType:type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 384
    new-instance v0, Lcom/yftech/car/media/data/entity/MediaFile;

    invoke-virtual {p1}, Lcom/yftech/libmusic/bean/MediaFileItem;->getType()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/yftech/car/media/data/entity/MediaFile;-><init>(I)V

    .line 385
    invoke-virtual {p1}, Lcom/yftech/libmusic/bean/MediaFileItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yftech/car/media/data/entity/MediaFile;->setTitle(Ljava/lang/String;)V

    .line 386
    invoke-virtual {p1}, Lcom/yftech/libmusic/bean/MediaFileItem;->getAlbum()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yftech/car/media/data/entity/MediaFile;->setAlbum(Ljava/lang/String;)V

    .line 387
    invoke-virtual {p1}, Lcom/yftech/libmusic/bean/MediaFileItem;->getArtist()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yftech/car/media/data/entity/MediaFile;->setArtist(Ljava/lang/String;)V

    .line 388
    invoke-virtual {p1}, Lcom/yftech/libmusic/bean/MediaFileItem;->getCurrentTime()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yftech/car/media/data/entity/MediaFile;->setCurrentTime(I)V

    .line 389
    invoke-virtual {p1}, Lcom/yftech/libmusic/bean/MediaFileItem;->getData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yftech/car/media/data/entity/MediaFile;->setData(Ljava/lang/String;)V

    .line 390
    invoke-virtual {p1}, Lcom/yftech/libmusic/bean/MediaFileItem;->getDuration()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/yftech/car/media/data/entity/MediaFile;->setDuration(J)V

    .line 391
    invoke-virtual {p1}, Lcom/yftech/libmusic/bean/MediaFileItem;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yftech/car/media/data/entity/MediaFile;->setFileName(Ljava/lang/String;)V

    .line 392
    invoke-virtual {p1}, Lcom/yftech/libmusic/bean/MediaFileItem;->getFolder()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yftech/car/media/data/entity/MediaFile;->setFolder(Ljava/lang/String;)V

    .line 393
    invoke-virtual {p1}, Lcom/yftech/libmusic/bean/MediaFileItem;->getGenre()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yftech/car/media/data/entity/MediaFile;->setGenre(Ljava/lang/String;)V

    .line 394
    invoke-virtual {p1}, Lcom/yftech/libmusic/bean/MediaFileItem;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yftech/car/media/data/entity/MediaFile;->setFileName(Ljava/lang/String;)V

    .line 395
    invoke-virtual {p1}, Lcom/yftech/libmusic/bean/MediaFileItem;->getSize()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/yftech/car/media/data/entity/MediaFile;->setSize(J)V

    .line 396
    invoke-static {}, Lcom/yftech/car/media/music/CarMusicManager;->getInstance()Lcom/yftech/car/media/music/CarMusicManager;

    move-result-object p1

    invoke-virtual {p1, v0, p2}, Lcom/yftech/car/media/music/CarMusicManager;->start(Lcom/yftech/car/media/data/entity/MediaFile;I)Z

    .line 398
    iget-object p1, p0, Lcom/yftech/libmusic/dialog/MusicSongListDialog$5;->this$0:Lcom/yftech/libmusic/dialog/MusicSongListDialog;

    invoke-static {p1}, Lcom/yftech/libmusic/dialog/MusicSongListDialog;->access$200(Lcom/yftech/libmusic/dialog/MusicSongListDialog;)Lcom/yftech/libmusic/dialog/adapter/MusicSongListAdapter;

    move-result-object p1

    const/4 p2, 0x1

    iget-object p0, p0, Lcom/yftech/libmusic/dialog/MusicSongListDialog$5;->this$0:Lcom/yftech/libmusic/dialog/MusicSongListDialog;

    invoke-static {p0}, Lcom/yftech/libmusic/dialog/MusicSongListDialog;->access$100(Lcom/yftech/libmusic/dialog/MusicSongListDialog;)Z

    move-result p0

    invoke-virtual {p1, p3, p2, p0}, Lcom/yftech/libmusic/dialog/adapter/MusicSongListAdapter;->setPlayingIndex(IZZ)V

    :cond_1
    return-void
.end method
