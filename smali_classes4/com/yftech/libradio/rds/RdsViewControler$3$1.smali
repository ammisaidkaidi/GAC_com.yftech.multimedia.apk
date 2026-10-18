.class Lcom/yftech/libradio/rds/RdsViewControler$3$1;
.super Ljava/lang/Object;
.source "RdsViewControler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/libradio/rds/RdsViewControler$3;->onRdsInfoListChanged(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/yftech/libradio/rds/RdsViewControler$3;

.field final synthetic val$dataOfRadio:Lcom/yftech/car/media/radio/entity/DataOfRadio;


# direct methods
.method constructor <init>(Lcom/yftech/libradio/rds/RdsViewControler$3;Lcom/yftech/car/media/radio/entity/DataOfRadio;)V
    .locals 0

    .line 332
    iput-object p1, p0, Lcom/yftech/libradio/rds/RdsViewControler$3$1;->this$1:Lcom/yftech/libradio/rds/RdsViewControler$3;

    iput-object p2, p0, Lcom/yftech/libradio/rds/RdsViewControler$3$1;->val$dataOfRadio:Lcom/yftech/car/media/radio/entity/DataOfRadio;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 335
    iget-object v0, p0, Lcom/yftech/libradio/rds/RdsViewControler$3$1;->this$1:Lcom/yftech/libradio/rds/RdsViewControler$3;

    iget-object v0, v0, Lcom/yftech/libradio/rds/RdsViewControler$3;->this$0:Lcom/yftech/libradio/rds/RdsViewControler;

    iget-object p0, p0, Lcom/yftech/libradio/rds/RdsViewControler$3$1;->val$dataOfRadio:Lcom/yftech/car/media/radio/entity/DataOfRadio;

    invoke-static {v0, p0}, Lcom/yftech/libradio/rds/RdsViewControler;->access$300(Lcom/yftech/libradio/rds/RdsViewControler;Lcom/yftech/car/media/radio/entity/DataOfRadio;)V

    return-void
.end method
