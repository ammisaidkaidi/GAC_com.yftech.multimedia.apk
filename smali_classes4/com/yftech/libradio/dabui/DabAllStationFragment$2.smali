.class Lcom/yftech/libradio/dabui/DabAllStationFragment$2;
.super Ljava/lang/Object;
.source "DabAllStationFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/libradio/dabui/DabAllStationFragment;->initView(Landroid/view/View;)V
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

    .line 116
    iput-object p1, p0, Lcom/yftech/libradio/dabui/DabAllStationFragment$2;->this$0:Lcom/yftech/libradio/dabui/DabAllStationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 119
    iget-object p1, p0, Lcom/yftech/libradio/dabui/DabAllStationFragment$2;->this$0:Lcom/yftech/libradio/dabui/DabAllStationFragment;

    invoke-static {p1}, Lcom/yftech/libradio/dabui/DabAllStationFragment;->access$700(Lcom/yftech/libradio/dabui/DabAllStationFragment;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 121
    iget-object p0, p0, Lcom/yftech/libradio/dabui/DabAllStationFragment$2;->this$0:Lcom/yftech/libradio/dabui/DabAllStationFragment;

    invoke-static {p0}, Lcom/yftech/libradio/dabui/DabAllStationFragment;->access$200(Lcom/yftech/libradio/dabui/DabAllStationFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    goto :goto_0

    .line 124
    :cond_0
    iget-object p1, p0, Lcom/yftech/libradio/dabui/DabAllStationFragment$2;->this$0:Lcom/yftech/libradio/dabui/DabAllStationFragment;

    invoke-static {p1}, Lcom/yftech/libradio/dabui/DabAllStationFragment;->access$200(Lcom/yftech/libradio/dabui/DabAllStationFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_1

    .line 126
    iget-object p0, p0, Lcom/yftech/libradio/dabui/DabAllStationFragment$2;->this$0:Lcom/yftech/libradio/dabui/DabAllStationFragment;

    invoke-static {p0}, Lcom/yftech/libradio/dabui/DabAllStationFragment;->access$200(Lcom/yftech/libradio/dabui/DabAllStationFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :cond_1
    :goto_0
    return-void
.end method
