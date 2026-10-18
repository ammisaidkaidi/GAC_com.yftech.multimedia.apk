.class Lcom/yftech/libradio/RadioListActivity$6;
.super Ljava/lang/Object;
.source "RadioListActivity.java"

# interfaces
.implements Lcom/yftech/libradio/rds/RdsDataManager$RdsDataManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/libradio/RadioListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libradio/RadioListActivity;


# direct methods
.method constructor <init>(Lcom/yftech/libradio/RadioListActivity;)V
    .locals 0

    .line 544
    iput-object p1, p0, Lcom/yftech/libradio/RadioListActivity$6;->this$0:Lcom/yftech/libradio/RadioListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRdsInfoListChanged(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/yftech/car/media/radio/rds/entity/RdsInfo;",
            ">;)V"
        }
    .end annotation

    .line 547
    iget-object v0, p0, Lcom/yftech/libradio/RadioListActivity$6;->this$0:Lcom/yftech/libradio/RadioListActivity;

    invoke-static {v0, p1}, Lcom/yftech/libradio/RadioListActivity;->access$802(Lcom/yftech/libradio/RadioListActivity;Ljava/util/Map;)Ljava/util/Map;

    .line 548
    iget-object p1, p0, Lcom/yftech/libradio/RadioListActivity$6;->this$0:Lcom/yftech/libradio/RadioListActivity;

    invoke-static {p1}, Lcom/yftech/libradio/RadioListActivity;->access$1600(Lcom/yftech/libradio/RadioListActivity;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/yftech/libradio/RadioListActivity$6$1;

    invoke-direct {v0, p0}, Lcom/yftech/libradio/RadioListActivity$6$1;-><init>(Lcom/yftech/libradio/RadioListActivity$6;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
