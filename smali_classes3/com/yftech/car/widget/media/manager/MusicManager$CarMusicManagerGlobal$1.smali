.class Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal$1;
.super Ljava/lang/Object;
.source "MusicManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;


# direct methods
.method constructor <init>(Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;)V
    .locals 0

    .line 542
    iput-object p1, p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal$1;->this$0:Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 545
    monitor-enter p0

    .line 546
    :try_start_0
    invoke-static {p2}, Lcom/yftech/car/media/music/ICarMusicClientService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/yftech/car/media/music/ICarMusicClientService;

    move-result-object p1

    invoke-static {p1}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->access$3802(Lcom/yftech/car/media/music/ICarMusicClientService;)Lcom/yftech/car/media/music/ICarMusicClientService;

    .line 547
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->access$3800()Lcom/yftech/car/media/music/ICarMusicClientService;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 549
    :try_start_1
    iget-object p1, p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal$1;->this$0:Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;

    invoke-static {p1}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->access$3900(Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;)Landroid/os/IBinder$DeathRecipient;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 550
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->access$3800()Lcom/yftech/car/media/music/ICarMusicClientService;

    move-result-object p1

    iget-object p2, p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal$1;->this$0:Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;

    invoke-static {p2}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->access$4000(Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;)Lcom/yftech/car/media/music/ICarMusicCallback$Stub;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/yftech/car/media/music/ICarMusicClientService;->registerUiControl(Lcom/yftech/car/media/music/ICarMusicCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 552
    :try_start_2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 554
    :goto_0
    iget-object p1, p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal$1;->this$0:Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;

    invoke-static {p1}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->access$4100(Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;)Lcom/yftech/car/widget/media/manager/MusicManager$InitCallback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 555
    iget-object p1, p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal$1;->this$0:Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;

    invoke-static {p1}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->access$4100(Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;)Lcom/yftech/car/widget/media/manager/MusicManager$InitCallback;

    move-result-object p1

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Lcom/yftech/car/widget/media/manager/MusicManager$InitCallback;->onSuccess(Z)V

    .line 559
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    .line 565
    iget-object p1, p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal$1;->this$0:Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;

    invoke-static {p1}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->access$4100(Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;)Lcom/yftech/car/widget/media/manager/MusicManager$InitCallback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 566
    iget-object p0, p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal$1;->this$0:Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;

    invoke-static {p0}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->access$4100(Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;)Lcom/yftech/car/widget/media/manager/MusicManager$InitCallback;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/yftech/car/widget/media/manager/MusicManager$InitCallback;->onSuccess(Z)V

    :cond_0
    return-void
.end method
