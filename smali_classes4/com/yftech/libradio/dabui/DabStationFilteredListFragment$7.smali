.class Lcom/yftech/libradio/dabui/DabStationFilteredListFragment$7;
.super Ljava/lang/Object;
.source "DabStationFilteredListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;->updateLayoutWithData(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;

.field final synthetic val$dabChannelInfoList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;Ljava/util/List;)V
    .locals 0

    .line 241
    iput-object p1, p0, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment$7;->this$0:Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;

    iput-object p2, p0, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment$7;->val$dabChannelInfoList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 244
    iget-object v0, p0, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment$7;->this$0:Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;

    invoke-static {v0}, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;->access$000(Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 245
    iget-object v0, p0, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment$7;->this$0:Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;

    invoke-static {v0}, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;->access$000(Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment$7;->val$dabChannelInfoList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 246
    iget-object v0, p0, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment$7;->this$0:Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;

    invoke-static {v0}, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;->access$000(Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment$7;->this$0:Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;

    iget-object v0, v0, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;->rvStationList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 248
    iget-object p0, p0, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment$7;->this$0:Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;

    invoke-static {p0}, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;->access$900(Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 250
    :cond_0
    invoke-static {}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getInstance()Lcom/yftech/car/media/radio/dab/CarDabRadioManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getPlayInfo()Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;

    move-result-object v0

    .line 251
    iget-object v3, p0, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment$7;->this$0:Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;

    iget-object v3, v3, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;->rvStationList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 252
    iget-object v1, p0, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment$7;->this$0:Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;

    invoke-static {v1}, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;->access$900(Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    if-nez v0, :cond_1

    .line 254
    iget-object p0, p0, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment$7;->this$0:Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;

    iget-object p0, p0, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;->rvStationList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    const-string p0, "dabPlayInfo is null----"

    .line 255
    invoke-static {p0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 257
    :cond_1
    iget-object v1, p0, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment$7;->this$0:Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;

    iget-object v1, v1, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;->rvStationList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 258
    iget-object p0, p0, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment$7;->this$0:Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;

    invoke-static {p0, v0}, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;->access$1000(Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;)V

    :goto_0
    return-void
.end method
