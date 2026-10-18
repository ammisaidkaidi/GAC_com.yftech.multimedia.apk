.class Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$5;
.super Ljava/lang/Object;
.source "EpgBaseFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;->onProgrameGot(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;

.field final synthetic val$programmeList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;Ljava/util/List;)V
    .locals 0

    .line 226
    iput-object p1, p0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$5;->this$0:Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;

    iput-object p2, p0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$5;->val$programmeList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 229
    iget-object v0, p0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$5;->this$0:Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;

    invoke-static {v0}, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;->access$600(Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 230
    iget-object v0, p0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$5;->val$programmeList:Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$5;->val$programmeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$5;->this$0:Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;

    invoke-static {v0}, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;->access$700(Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 232
    iget-object v0, p0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$5;->this$0:Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;

    invoke-static {v0}, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;->access$700(Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;)Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$5;->val$programmeList:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 233
    iget-object v0, p0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$5;->this$0:Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;

    invoke-static {v0}, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;->access$300(Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 234
    iget-object v0, p0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$5;->this$0:Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;

    invoke-static {v0}, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;->access$800(Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 235
    iget-object v0, p0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$5;->this$0:Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;

    invoke-static {v0}, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;->access$300(Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 236
    iget-object v0, p0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$5;->this$0:Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;

    iget-object v0, v0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;->mHanlder:Landroid/os/Handler;

    const v1, 0xaa2b

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 237
    iget-object v0, p0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$5;->this$0:Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;

    iget-object v0, v0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;->currentDate:Ljava/util/Calendar;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v3, p0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$5;->this$0:Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;

    invoke-static {v3}, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;->access$000(Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;)Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$5;->this$0:Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;

    iget-object v0, v0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;->currentDate:Ljava/util/Calendar;

    const/4 v2, 0x2

    .line 238
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v3, p0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$5;->this$0:Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;

    invoke-static {v3}, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;->access$000(Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;)Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v0, v2, :cond_1

    .line 239
    iget-object p0, p0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$5;->this$0:Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;

    iget-object p0, p0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;->mHanlder:Landroid/os/Handler;

    const-wide/32 v2, 0xea60

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$5;->this$0:Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;

    invoke-static {v0}, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;->access$300(Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 243
    iget-object p0, p0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$5;->this$0:Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;

    invoke-static {p0}, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;->access$800(Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method
