.class Lcom/yftech/libradio/model/RadioModel$2;
.super Ljava/lang/Object;
.source "RadioModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/libradio/model/RadioModel;->scanSave(ILcom/yftech/libmvpmodule/BasePresenter;Lcom/yftech/libradio/model/interfaces/IRadioModel$OnRadioChannelScanResultLoadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libradio/model/RadioModel;

.field final synthetic val$listener:Lcom/yftech/libradio/model/interfaces/IRadioModel$OnRadioChannelScanResultLoadListener;


# direct methods
.method constructor <init>(Lcom/yftech/libradio/model/RadioModel;Lcom/yftech/libradio/model/interfaces/IRadioModel$OnRadioChannelScanResultLoadListener;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/yftech/libradio/model/RadioModel$2;->this$0:Lcom/yftech/libradio/model/RadioModel;

    iput-object p2, p0, Lcom/yftech/libradio/model/RadioModel$2;->val$listener:Lcom/yftech/libradio/model/interfaces/IRadioModel$OnRadioChannelScanResultLoadListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ThreadId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    const-string v0, "automatic scan"

    .line 90
    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 93
    invoke-static {}, Lcom/yftech/car/media/radio/CarRadioManager;->getInstance()Lcom/yftech/car/media/radio/CarRadioManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/media/radio/CarRadioManager;->scanSave()V

    .line 96
    iget-object p0, p0, Lcom/yftech/libradio/model/RadioModel$2;->val$listener:Lcom/yftech/libradio/model/interfaces/IRadioModel$OnRadioChannelScanResultLoadListener;

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/yftech/libradio/model/interfaces/IRadioModel$OnRadioChannelScanResultLoadListener;->onComplete(Z)V

    return-void
.end method
