.class Lcom/yftech/libradio/dabui/DabStationFilteredListFragment$4;
.super Ljava/lang/Object;
.source "DabStationFilteredListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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


# direct methods
.method constructor <init>(Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment$4;->this$0:Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 137
    iget-object p1, p0, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment$4;->this$0:Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;

    invoke-static {p1}, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;->access$500(Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 139
    iget-object p0, p0, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment$4;->this$0:Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;

    iget-object p0, p0, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;->rvStationList:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    goto :goto_0

    .line 142
    :cond_0
    iget-object p1, p0, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment$4;->this$0:Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;

    iget-object p1, p1, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;->rvStationList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_1

    .line 144
    iget-object p0, p0, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment$4;->this$0:Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;

    iget-object p0, p0, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;->rvStationList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :cond_1
    :goto_0
    return-void
.end method
