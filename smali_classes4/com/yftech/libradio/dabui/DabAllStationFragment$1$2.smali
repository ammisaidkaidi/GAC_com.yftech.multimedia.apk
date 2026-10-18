.class Lcom/yftech/libradio/dabui/DabAllStationFragment$1$2;
.super Ljava/lang/Object;
.source "DabAllStationFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/libradio/dabui/DabAllStationFragment$1;->onDataListChanged(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/yftech/libradio/dabui/DabAllStationFragment$1;


# direct methods
.method constructor <init>(Lcom/yftech/libradio/dabui/DabAllStationFragment$1;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/yftech/libradio/dabui/DabAllStationFragment$1$2;->this$1:Lcom/yftech/libradio/dabui/DabAllStationFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/yftech/libradio/dabui/DabAllStationFragment$1$2;->this$1:Lcom/yftech/libradio/dabui/DabAllStationFragment$1;

    iget-object v0, v0, Lcom/yftech/libradio/dabui/DabAllStationFragment$1;->this$0:Lcom/yftech/libradio/dabui/DabAllStationFragment;

    invoke-static {v0}, Lcom/yftech/libradio/dabui/DabAllStationFragment;->access$000(Lcom/yftech/libradio/dabui/DabAllStationFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    iget-object p0, p0, Lcom/yftech/libradio/dabui/DabAllStationFragment$1$2;->this$1:Lcom/yftech/libradio/dabui/DabAllStationFragment$1;

    iget-object p0, p0, Lcom/yftech/libradio/dabui/DabAllStationFragment$1;->this$0:Lcom/yftech/libradio/dabui/DabAllStationFragment;

    invoke-static {p0}, Lcom/yftech/libradio/dabui/DabAllStationFragment;->access$400(Lcom/yftech/libradio/dabui/DabAllStationFragment;)V

    :cond_0
    return-void
.end method
