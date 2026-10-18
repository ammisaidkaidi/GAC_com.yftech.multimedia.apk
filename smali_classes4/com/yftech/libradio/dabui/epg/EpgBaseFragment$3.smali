.class Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$3;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "EpgBaseFragment.java"


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

.field final synthetic val$linearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;


# direct methods
.method constructor <init>(Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;Landroidx/recyclerview/widget/LinearLayoutManager;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$3;->this$0:Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;

    iput-object p2, p0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$3;->val$linearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

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

    .line 136
    iget-object p1, p0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$3;->this$0:Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;

    invoke-static {p1}, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;->access$200(Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;)Z

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

    .line 139
    iget-object p1, p0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$3;->this$0:Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;

    if-gez p3, :cond_1

    move v1, v0

    goto :goto_1

    :cond_1
    move v1, p2

    :goto_1
    invoke-static {p1, v1}, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;->access$202(Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;Z)Z

    .line 143
    :cond_2
    iget-object p1, p0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$3;->this$0:Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;

    if-gez p3, :cond_3

    move p3, v0

    goto :goto_2

    :cond_3
    move p3, p2

    :goto_2
    invoke-static {p1, p3}, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;->access$202(Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;Z)Z

    .line 148
    iget-object p1, p0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$3;->val$linearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p1

    .line 150
    iget-object p3, p0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$3;->val$linearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p3

    const/4 v1, 0x7

    if-le p1, v1, :cond_5

    .line 156
    iget-object p1, p0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$3;->this$0:Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;

    invoke-static {p1}, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;->access$300(Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p1

    sub-int/2addr p1, v0

    if-ge p3, p1, :cond_5

    .line 159
    iget-object p1, p0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$3;->this$0:Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;

    invoke-static {p1}, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;->access$200(Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 160
    iget-object p1, p0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$3;->this$0:Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;

    invoke-static {p1}, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;->access$400(Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;)Landroid/widget/ImageView;

    move-result-object p1

    sget p2, Lcom/yftech/libradio/R$mipmap;->radio_btn_reach_top:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 161
    iget-object p0, p0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$3;->this$0:Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;

    invoke-static {p0, v0}, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;->access$500(Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;Z)V

    goto :goto_3

    .line 165
    :cond_4
    iget-object p1, p0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$3;->this$0:Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;

    invoke-static {p1}, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;->access$400(Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;)Landroid/widget/ImageView;

    move-result-object p1

    sget p2, Lcom/yftech/libradio/R$mipmap;->radio_btn_reach_bottom:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 166
    iget-object p0, p0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$3;->this$0:Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;

    invoke-static {p0, v0}, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;->access$500(Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;Z)V

    goto :goto_3

    .line 169
    :cond_5
    iget-object p0, p0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$3;->this$0:Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;

    invoke-static {p0, p2}, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;->access$500(Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;Z)V

    :goto_3
    return-void
.end method
