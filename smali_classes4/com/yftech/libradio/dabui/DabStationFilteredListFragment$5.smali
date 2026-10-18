.class Lcom/yftech/libradio/dabui/DabStationFilteredListFragment$5;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "DabStationFilteredListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;

.field final synthetic val$layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;


# direct methods
.method constructor <init>(Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;Landroidx/recyclerview/widget/GridLayoutManager;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment$5;->this$0:Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;

    iput-object p2, p0, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment$5;->val$layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 2
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 154
    iget-object p1, p0, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment$5;->this$0:Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;

    invoke-static {p1}, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;->access$500(Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;)Z

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-gez p3, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, p2

    :goto_0
    if-eq p1, v1, :cond_2

    .line 156
    iget-object p1, p0, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment$5;->this$0:Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;

    if-gez p3, :cond_1

    move v1, v0

    goto :goto_1

    :cond_1
    move v1, p2

    :goto_1
    invoke-static {p1, v1}, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;->access$502(Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;Z)Z

    .line 159
    :cond_2
    iget-object p1, p0, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment$5;->this$0:Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;

    if-gez p3, :cond_3

    move p3, v0

    goto :goto_2

    :cond_3
    move p3, p2

    :goto_2
    invoke-static {p1, p3}, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;->access$502(Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;Z)Z

    .line 162
    iget-object p1, p0, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment$5;->val$layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager;->findFirstVisibleItemPosition()I

    move-result p1

    .line 164
    iget-object p3, p0, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment$5;->val$layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p3}, Landroidx/recyclerview/widget/GridLayoutManager;->findLastVisibleItemPosition()I

    move-result p3

    const/16 v1, 0xb

    if-le p1, v1, :cond_5

    .line 168
    iget-object p1, p0, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment$5;->this$0:Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;

    iget-object p1, p1, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;->rvStationList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p1

    sub-int/2addr p1, v0

    if-ge p3, p1, :cond_5

    .line 170
    iget-object p1, p0, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment$5;->this$0:Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;

    invoke-static {p1}, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;->access$500(Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 171
    iget-object p1, p0, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment$5;->this$0:Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;

    invoke-static {p1}, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;->access$600(Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;)Landroid/widget/ImageView;

    move-result-object p1

    sget p2, Lcom/yftech/libradio/R$mipmap;->radio_btn_reach_top:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 172
    iget-object p0, p0, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment$5;->this$0:Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;

    invoke-static {p0, v0}, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;->access$700(Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;Z)V

    goto :goto_3

    .line 176
    :cond_4
    iget-object p1, p0, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment$5;->this$0:Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;

    invoke-static {p1}, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;->access$600(Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;)Landroid/widget/ImageView;

    move-result-object p1

    sget p2, Lcom/yftech/libradio/R$mipmap;->radio_btn_reach_bottom:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 177
    iget-object p0, p0, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment$5;->this$0:Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;

    invoke-static {p0, v0}, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;->access$700(Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;Z)V

    goto :goto_3

    .line 180
    :cond_5
    iget-object p0, p0, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment$5;->this$0:Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;

    invoke-static {p0, p2}, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;->access$700(Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;Z)V

    :goto_3
    return-void
.end method
