.class Lcom/yftech/libradio/dabui/DabAllStationFragment$1$1;
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

    .line 60
    iput-object p1, p0, Lcom/yftech/libradio/dabui/DabAllStationFragment$1$1;->this$1:Lcom/yftech/libradio/dabui/DabAllStationFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/yftech/libradio/dabui/DabAllStationFragment$1$1;->this$1:Lcom/yftech/libradio/dabui/DabAllStationFragment$1;

    iget-object v0, v0, Lcom/yftech/libradio/dabui/DabAllStationFragment$1;->this$0:Lcom/yftech/libradio/dabui/DabAllStationFragment;

    iget-object v1, p0, Lcom/yftech/libradio/dabui/DabAllStationFragment$1$1;->this$1:Lcom/yftech/libradio/dabui/DabAllStationFragment$1;

    iget-object v1, v1, Lcom/yftech/libradio/dabui/DabAllStationFragment$1;->this$0:Lcom/yftech/libradio/dabui/DabAllStationFragment;

    invoke-static {v1}, Lcom/yftech/libradio/dabui/DabAllStationFragment;->access$000(Lcom/yftech/libradio/dabui/DabAllStationFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/yftech/libradio/dabui/DabAllStationFragment;->access$100(Lcom/yftech/libradio/dabui/DabAllStationFragment;Z)V

    .line 64
    iget-object p0, p0, Lcom/yftech/libradio/dabui/DabAllStationFragment$1$1;->this$1:Lcom/yftech/libradio/dabui/DabAllStationFragment$1;

    iget-object p0, p0, Lcom/yftech/libradio/dabui/DabAllStationFragment$1;->this$0:Lcom/yftech/libradio/dabui/DabAllStationFragment;

    invoke-static {p0}, Lcom/yftech/libradio/dabui/DabAllStationFragment;->access$200(Lcom/yftech/libradio/dabui/DabAllStationFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
