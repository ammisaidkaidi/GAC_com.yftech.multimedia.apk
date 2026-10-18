.class Lcom/yftech/libmusic/utils/CarPlayMusicManager$1;
.super Lcom/yftech/car/phonelink/CarPhoneLinkManager$CarPhoneLinkCallback;
.source "CarPlayMusicManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/libmusic/utils/CarPlayMusicManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libmusic/utils/CarPlayMusicManager;


# direct methods
.method constructor <init>(Lcom/yftech/libmusic/utils/CarPlayMusicManager;)V
    .locals 0

    .line 399
    iput-object p1, p0, Lcom/yftech/libmusic/utils/CarPlayMusicManager$1;->this$0:Lcom/yftech/libmusic/utils/CarPlayMusicManager;

    invoke-direct {p0}, Lcom/yftech/car/phonelink/CarPhoneLinkManager$CarPhoneLinkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectedStatusChanged(Ljava/lang/String;)V
    .locals 2

    .line 408
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CarPlay onConnectedStatusChanged:status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    const-string v0, "carplay"

    .line 410
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    .line 411
    iget-object v0, p0, Lcom/yftech/libmusic/utils/CarPlayMusicManager$1;->this$0:Lcom/yftech/libmusic/utils/CarPlayMusicManager;

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {v0, p1}, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->access$002(Lcom/yftech/libmusic/utils/CarPlayMusicManager;I)I

    .line 413
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "ACTION_CARPLAY_STATUS_CHANGE"

    .line 414
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "carplay_state"

    .line 415
    iget-object v1, p0, Lcom/yftech/libmusic/utils/CarPlayMusicManager$1;->this$0:Lcom/yftech/libmusic/utils/CarPlayMusicManager;

    invoke-static {v1}, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->access$000(Lcom/yftech/libmusic/utils/CarPlayMusicManager;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 416
    invoke-static {}, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->access$100()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 418
    iget-object p1, p0, Lcom/yftech/libmusic/utils/CarPlayMusicManager$1;->this$0:Lcom/yftech/libmusic/utils/CarPlayMusicManager;

    invoke-static {p1}, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->access$200(Lcom/yftech/libmusic/utils/CarPlayMusicManager;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/libmusic/utils/CarPlayMusicManager$CarPlayMusicListener;

    .line 419
    iget-object v1, p0, Lcom/yftech/libmusic/utils/CarPlayMusicManager$1;->this$0:Lcom/yftech/libmusic/utils/CarPlayMusicManager;

    invoke-static {v1}, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->access$000(Lcom/yftech/libmusic/utils/CarPlayMusicManager;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/yftech/libmusic/utils/CarPlayMusicManager$CarPlayMusicListener;->onCarplayConnectChanged(I)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public onDeviceChanged(Lcom/yftech/car/phonelink/PhoneLink;)V
    .locals 1

    .line 402
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "CarPlay onDeviceChanged:phoneLink="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/yftech/car/phonelink/PhoneLink;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onShowHuaWeiConnectedDialog()V
    .locals 0

    const-string p0, "CarPlay onShowHuaWeiConnectedDialog"

    .line 425
    invoke-static {p0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onVRStatusChanged(I)V
    .locals 1

    .line 430
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "CarPlay onVRStatusChanged:status="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/media/common/util/LogUtil;->i(Ljava/lang/String;)V

    return-void
.end method
