.class Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$2;
.super Ljava/lang/Object;
.source "EpgBaseFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;


# direct methods
.method constructor <init>(Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$2;->this$0:Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 118
    iget-object p1, p0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$2;->this$0:Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;

    invoke-static {p1}, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;->access$200(Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 120
    iget-object p0, p0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$2;->this$0:Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;

    invoke-static {p0}, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;->access$300(Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    goto :goto_0

    .line 123
    :cond_0
    iget-object p1, p0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$2;->this$0:Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;

    invoke-static {p1}, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;->access$300(Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_1

    .line 125
    iget-object p0, p0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$2;->this$0:Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;

    invoke-static {p0}, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;->access$300(Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :cond_1
    :goto_0
    return-void
.end method
