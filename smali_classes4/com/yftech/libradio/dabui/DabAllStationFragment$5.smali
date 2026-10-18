.class Lcom/yftech/libradio/dabui/DabAllStationFragment$5;
.super Ljava/lang/Object;
.source "DabAllStationFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/libradio/dabui/DabAllStationFragment;->updatePlayInfoView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libradio/dabui/DabAllStationFragment;


# direct methods
.method constructor <init>(Lcom/yftech/libradio/dabui/DabAllStationFragment;)V
    .locals 0

    .line 253
    iput-object p1, p0, Lcom/yftech/libradio/dabui/DabAllStationFragment$5;->this$0:Lcom/yftech/libradio/dabui/DabAllStationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    .line 256
    :goto_0
    iget-object v2, p0, Lcom/yftech/libradio/dabui/DabAllStationFragment$5;->this$0:Lcom/yftech/libradio/dabui/DabAllStationFragment;

    invoke-static {v2}, Lcom/yftech/libradio/dabui/DabAllStationFragment;->access$000(Lcom/yftech/libradio/dabui/DabAllStationFragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 257
    iget-object v2, p0, Lcom/yftech/libradio/dabui/DabAllStationFragment$5;->this$0:Lcom/yftech/libradio/dabui/DabAllStationFragment;

    invoke-static {v2}, Lcom/yftech/libradio/dabui/DabAllStationFragment;->access$000(Lcom/yftech/libradio/dabui/DabAllStationFragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yftech/libradio/bean/DabChannelInfo;

    .line 258
    iget-object v3, p0, Lcom/yftech/libradio/dabui/DabAllStationFragment$5;->this$0:Lcom/yftech/libradio/dabui/DabAllStationFragment;

    invoke-static {v3}, Lcom/yftech/libradio/dabui/DabAllStationFragment;->access$500(Lcom/yftech/libradio/dabui/DabAllStationFragment;)Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;->getFrequency()J

    move-result-wide v3

    invoke-virtual {v2}, Lcom/yftech/libradio/bean/DabChannelInfo;->getFrequency()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/yftech/libradio/dabui/DabAllStationFragment$5;->this$0:Lcom/yftech/libradio/dabui/DabAllStationFragment;

    .line 259
    invoke-static {v3}, Lcom/yftech/libradio/dabui/DabAllStationFragment;->access$500(Lcom/yftech/libradio/dabui/DabAllStationFragment;)Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;->getServiceId()J

    move-result-wide v3

    invoke-virtual {v2}, Lcom/yftech/libradio/bean/DabChannelInfo;->getServiceId()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/yftech/libradio/dabui/DabAllStationFragment$5;->this$0:Lcom/yftech/libradio/dabui/DabAllStationFragment;

    .line 260
    invoke-static {v3}, Lcom/yftech/libradio/dabui/DabAllStationFragment;->access$500(Lcom/yftech/libradio/dabui/DabAllStationFragment;)Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;->getEnsembleId()I

    move-result v3

    invoke-virtual {v2}, Lcom/yftech/libradio/bean/DabChannelInfo;->getEnsembleId()I

    move-result v2

    if-ne v3, v2, :cond_4

    .line 261
    iget-object v2, p0, Lcom/yftech/libradio/dabui/DabAllStationFragment$5;->this$0:Lcom/yftech/libradio/dabui/DabAllStationFragment;

    invoke-static {v2}, Lcom/yftech/libradio/dabui/DabAllStationFragment;->access$200(Lcom/yftech/libradio/dabui/DabAllStationFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 262
    iget-object v2, p0, Lcom/yftech/libradio/dabui/DabAllStationFragment$5;->this$0:Lcom/yftech/libradio/dabui/DabAllStationFragment;

    invoke-static {v2}, Lcom/yftech/libradio/dabui/DabAllStationFragment;->access$1100(Lcom/yftech/libradio/dabui/DabAllStationFragment;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 263
    iget-object p0, p0, Lcom/yftech/libradio/dabui/DabAllStationFragment$5;->this$0:Lcom/yftech/libradio/dabui/DabAllStationFragment;

    invoke-static {p0}, Lcom/yftech/libradio/dabui/DabAllStationFragment;->access$200(Lcom/yftech/libradio/dabui/DabAllStationFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPosition(I)V

    goto :goto_3

    :cond_0
    const/4 v2, 0x1

    if-eqz v1, :cond_3

    .line 265
    iget-object v3, p0, Lcom/yftech/libradio/dabui/DabAllStationFragment$5;->this$0:Lcom/yftech/libradio/dabui/DabAllStationFragment;

    invoke-static {v3}, Lcom/yftech/libradio/dabui/DabAllStationFragment;->access$000(Lcom/yftech/libradio/dabui/DabAllStationFragment;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v1

    const/4 v4, 0x5

    if-gt v3, v4, :cond_1

    goto :goto_1

    :cond_1
    if-ne v1, v2, :cond_2

    .line 268
    iget-object v3, p0, Lcom/yftech/libradio/dabui/DabAllStationFragment$5;->this$0:Lcom/yftech/libradio/dabui/DabAllStationFragment;

    invoke-static {v3}, Lcom/yftech/libradio/dabui/DabAllStationFragment;->access$200(Lcom/yftech/libradio/dabui/DabAllStationFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    sub-int/2addr v1, v2

    invoke-virtual {v3, v1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    goto :goto_2

    .line 270
    :cond_2
    iget-object v3, p0, Lcom/yftech/libradio/dabui/DabAllStationFragment$5;->this$0:Lcom/yftech/libradio/dabui/DabAllStationFragment;

    invoke-static {v3}, Lcom/yftech/libradio/dabui/DabAllStationFragment;->access$200(Lcom/yftech/libradio/dabui/DabAllStationFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v3, v1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    goto :goto_2

    .line 266
    :cond_3
    :goto_1
    iget-object v3, p0, Lcom/yftech/libradio/dabui/DabAllStationFragment$5;->this$0:Lcom/yftech/libradio/dabui/DabAllStationFragment;

    invoke-static {v3}, Lcom/yftech/libradio/dabui/DabAllStationFragment;->access$200(Lcom/yftech/libradio/dabui/DabAllStationFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v3, v1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 272
    :goto_2
    iget-object p0, p0, Lcom/yftech/libradio/dabui/DabAllStationFragment$5;->this$0:Lcom/yftech/libradio/dabui/DabAllStationFragment;

    invoke-static {p0, v2}, Lcom/yftech/libradio/dabui/DabAllStationFragment;->access$1102(Lcom/yftech/libradio/dabui/DabAllStationFragment;Z)Z

    goto :goto_3

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_5
    :goto_3
    return-void
.end method
