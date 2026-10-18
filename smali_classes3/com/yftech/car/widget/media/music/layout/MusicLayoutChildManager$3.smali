.class Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$3;
.super Ljava/lang/Object;
.source "MusicLayoutChildManager.java"

# interfaces
.implements Lcom/yftech/car/widget/media/list/MediaDataList$OnDirectoryListener;


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
.method constructor <init>(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;)V
    .locals 0

    .line 531
    iput-object p1, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$3;->this$0:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDirectoryPathChange(Ljava/lang/String;)V
    .locals 2

    .line 534
    iget-object p0, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$3;->this$0:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;

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

    const/16 v1, 0x9

    .line 535
    invoke-virtual {v0, v1}, Lcom/yftech/car/widget/media/music/button/MusicButton;->isFunction(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 536
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MusicManager;->getInstance()Lcom/yftech/car/widget/media/manager/MusicManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/yftech/car/widget/media/manager/MusicManager;->isDirectoryPlayPath(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yftech/car/widget/media/music/button/MusicButton;->setActivatedStatus(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method
