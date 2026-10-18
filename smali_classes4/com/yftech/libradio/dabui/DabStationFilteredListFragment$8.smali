.class Lcom/yftech/libradio/dabui/DabStationFilteredListFragment$8;
.super Ljava/lang/Object;
.source "DabStationFilteredListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;->updatePlayInfoView(Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;


# direct methods
.method constructor <init>(Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;)V
    .locals 0

    .line 275
    iput-object p1, p0, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment$8;->this$0:Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v0, 0x0

    .line 278
    :goto_0
    iget-object v1, p0, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment$8;->this$0:Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;

    invoke-static {v1}, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;->access$000(Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 279
    iget-object v1, p0, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment$8;->this$0:Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;

    invoke-static {v1}, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;->access$000(Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/libradio/bean/DabChannelInfo;

    .line 280
    iget-object v2, p0, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment$8;->this$0:Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;

    invoke-static {v2}, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;->access$100(Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;)Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;->getFrequency()J

    move-result-wide v2

    invoke-virtual {v1}, Lcom/yftech/libradio/bean/DabChannelInfo;->getFrequency()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment$8;->this$0:Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;

    .line 281
    invoke-static {v2}, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;->access$100(Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;)Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;->getServiceId()J

    move-result-wide v2

    invoke-virtual {v1}, Lcom/yftech/libradio/bean/DabChannelInfo;->getServiceId()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment$8;->this$0:Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;

    .line 282
    invoke-static {v2}, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;->access$100(Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;)Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;->getEnsembleId()I

    move-result v2

    invoke-virtual {v1}, Lcom/yftech/libradio/bean/DabChannelInfo;->getEnsembleId()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 283
    iget-object v2, p0, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment$8;->this$0:Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;

    iget-object v2, v2, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;->rvStationList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 284
    iget-object v2, p0, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment$8;->this$0:Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;

    iget-object v2, v2, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;->rvStationList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 285
    iget-object v0, p0, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment$8;->this$0:Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;

    invoke-virtual {v0}, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;->getFilterString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 286
    iget-object p0, p0, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment$8;->this$0:Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;

    iget-object p0, p0, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;->tvLableName:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/yftech/libradio/bean/DabChannelInfo;->getEnsembleLabel()Lcom/yftech/car/media/radio/dab/entity/DabLabel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/media/radio/dab/entity/DabLabel;->getLabelString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
