.class Lcom/yftech/libmusic/utils/CarLifeMusicManager$1;
.super Lcom/yftech/car/phonelink/CarPhoneLinkManager$CarPhoneLinkCallback;
.source "CarLifeMusicManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/libmusic/utils/CarLifeMusicManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libmusic/utils/CarLifeMusicManager;


# direct methods
.method constructor <init>(Lcom/yftech/libmusic/utils/CarLifeMusicManager;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/yftech/libmusic/utils/CarLifeMusicManager$1;->this$0:Lcom/yftech/libmusic/utils/CarLifeMusicManager;

    invoke-direct {p0}, Lcom/yftech/car/phonelink/CarPhoneLinkManager$CarPhoneLinkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectedStatusChanged(Ljava/lang/String;)V
    .locals 2

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConnectedStatusChanged:status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/yftech/libmusic/utils/CarLifeMusicManager$1;->this$0:Lcom/yftech/libmusic/utils/CarLifeMusicManager;

    const-string v1, "carlife"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {v0, p1}, Lcom/yftech/libmusic/utils/CarLifeMusicManager;->access$002(Lcom/yftech/libmusic/utils/CarLifeMusicManager;Z)Z

    .line 111
    iget-object p1, p0, Lcom/yftech/libmusic/utils/CarLifeMusicManager$1;->this$0:Lcom/yftech/libmusic/utils/CarLifeMusicManager;

    invoke-static {p1}, Lcom/yftech/libmusic/utils/CarLifeMusicManager;->access$100(Lcom/yftech/libmusic/utils/CarLifeMusicManager;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/libmusic/utils/CarLifeMusicManager$OnCarLifeDataChangedCallback;

    .line 112
    iget-object v1, p0, Lcom/yftech/libmusic/utils/CarLifeMusicManager$1;->this$0:Lcom/yftech/libmusic/utils/CarLifeMusicManager;

    invoke-static {v1}, Lcom/yftech/libmusic/utils/CarLifeMusicManager;->access$000(Lcom/yftech/libmusic/utils/CarLifeMusicManager;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/yftech/libmusic/utils/CarLifeMusicManager$OnCarLifeDataChangedCallback;->onConnectionStatusChanged(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onDeviceChanged(Lcom/yftech/car/phonelink/PhoneLink;)V
    .locals 1

    .line 101
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onDeviceChanged:phoneLink="

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

    const-string p0, "onShowHuaWeiConnectedDialog"

    .line 117
    invoke-static {p0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onVRStatusChanged(I)V
    .locals 1

    .line 122
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onVRStatusChanged:status="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/media/common/util/LogUtil;->i(Ljava/lang/String;)V

    return-void
.end method
