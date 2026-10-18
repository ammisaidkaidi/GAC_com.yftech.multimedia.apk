.class Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal$1;
.super Ljava/lang/Object;
.source "MediaDataManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;


# direct methods
.method constructor <init>(Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;)V
    .locals 0

    .line 751
    iput-object p1, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal$1;->this$0:Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 754
    monitor-enter p0

    .line 755
    :try_start_0
    iget-object p1, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal$1;->this$0:Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;

    invoke-static {p2}, Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->access$4402(Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;)Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;

    .line 756
    iget-object p1, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal$1;->this$0:Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;

    invoke-static {p1}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->access$4400(Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;)Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 759
    :try_start_1
    iget-object p1, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal$1;->this$0:Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;

    invoke-static {p1}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->access$4500(Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;)Landroid/os/IBinder$DeathRecipient;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 760
    iget-object p1, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal$1;->this$0:Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;

    invoke-static {p1}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->access$4400(Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;)Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;

    move-result-object p1

    iget-object p2, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal$1;->this$0:Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;

    invoke-static {p2}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->access$4600(Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;)Lcom/yftech/car/media/data/callbacklibrary/ICarDataChangeCallback$Stub;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/yftech/car/media/data/callbacklibrary/ICarScanDataClientService;->registerChangeCallback(Lcom/yftech/car/media/data/callbacklibrary/ICarDataChangeCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 762
    :try_start_2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 764
    :goto_0
    iget-object p1, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal$1;->this$0:Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;

    invoke-static {p1}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->access$4700(Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;)Lcom/yftech/car/widget/media/manager/MediaDataManager$InitCallback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 765
    iget-object p1, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal$1;->this$0:Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;

    invoke-static {p1}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->access$4700(Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;)Lcom/yftech/car/widget/media/manager/MediaDataManager$InitCallback;

    move-result-object p1

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Lcom/yftech/car/widget/media/manager/MediaDataManager$InitCallback;->onSuccess(Z)V

    .line 769
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

    .line 775
    iget-object p1, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal$1;->this$0:Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;

    invoke-static {p1}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->access$4700(Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;)Lcom/yftech/car/widget/media/manager/MediaDataManager$InitCallback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 776
    iget-object p0, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal$1;->this$0:Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;

    invoke-static {p0}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->access$4700(Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;)Lcom/yftech/car/widget/media/manager/MediaDataManager$InitCallback;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/yftech/car/widget/media/manager/MediaDataManager$InitCallback;->onSuccess(Z)V

    :cond_0
    return-void
.end method
