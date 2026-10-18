.class Lcom/yftech/libradio/rds/RdsViewControler$3;
.super Ljava/lang/Object;
.source "RdsViewControler.java"

# interfaces
.implements Lcom/yftech/libradio/rds/RdsDataManager$RdsDataManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/libradio/rds/RdsViewControler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libradio/rds/RdsViewControler;


# direct methods
.method constructor <init>(Lcom/yftech/libradio/rds/RdsViewControler;)V
    .locals 0

    .line 323
    iput-object p1, p0, Lcom/yftech/libradio/rds/RdsViewControler$3;->this$0:Lcom/yftech/libradio/rds/RdsViewControler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRdsInfoListChanged(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/yftech/car/media/radio/rds/entity/RdsInfo;",
            ">;)V"
        }
    .end annotation

    .line 326
    invoke-static {}, Lcom/yftech/car/media/radio/CarRadioManager;->getInstance()Lcom/yftech/car/media/radio/CarRadioManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/media/radio/CarRadioManager;->getFreq()Lcom/yftech/car/media/radio/entity/DataOfRadio;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 330
    :cond_0
    invoke-virtual {v0}, Lcom/yftech/car/media/radio/entity/DataOfRadio;->getFreq()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yftech/car/media/radio/rds/entity/RdsInfo;

    if-eqz p1, :cond_1

    .line 332
    iget-object p1, p0, Lcom/yftech/libradio/rds/RdsViewControler$3;->this$0:Lcom/yftech/libradio/rds/RdsViewControler;

    invoke-static {p1}, Lcom/yftech/libradio/rds/RdsViewControler;->access$400(Lcom/yftech/libradio/rds/RdsViewControler;)Landroid/os/Handler;

    move-result-object p1

    new-instance v1, Lcom/yftech/libradio/rds/RdsViewControler$3$1;

    invoke-direct {v1, p0, v0}, Lcom/yftech/libradio/rds/RdsViewControler$3$1;-><init>(Lcom/yftech/libradio/rds/RdsViewControler$3;Lcom/yftech/car/media/radio/entity/DataOfRadio;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method
