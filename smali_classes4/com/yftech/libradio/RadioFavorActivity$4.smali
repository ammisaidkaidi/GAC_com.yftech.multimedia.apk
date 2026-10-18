.class Lcom/yftech/libradio/RadioFavorActivity$4;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "RadioFavorActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/libradio/RadioFavorActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libradio/RadioFavorActivity;


# direct methods
.method constructor <init>(Lcom/yftech/libradio/RadioFavorActivity;)V
    .locals 0

    .line 215
    iput-object p1, p0, Lcom/yftech/libradio/RadioFavorActivity$4;->this$0:Lcom/yftech/libradio/RadioFavorActivity;

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

    .line 221
    iget-object p1, p0, Lcom/yftech/libradio/RadioFavorActivity$4;->this$0:Lcom/yftech/libradio/RadioFavorActivity;

    invoke-static {p1}, Lcom/yftech/libradio/RadioFavorActivity;->access$400(Lcom/yftech/libradio/RadioFavorActivity;)Z

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

    .line 224
    iget-object p1, p0, Lcom/yftech/libradio/RadioFavorActivity$4;->this$0:Lcom/yftech/libradio/RadioFavorActivity;

    if-gez p3, :cond_1

    move v1, v0

    goto :goto_1

    :cond_1
    move v1, p2

    :goto_1
    invoke-static {p1, v1}, Lcom/yftech/libradio/RadioFavorActivity;->access$402(Lcom/yftech/libradio/RadioFavorActivity;Z)Z

    .line 228
    :cond_2
    iget-object p1, p0, Lcom/yftech/libradio/RadioFavorActivity$4;->this$0:Lcom/yftech/libradio/RadioFavorActivity;

    if-gez p3, :cond_3

    move p3, v0

    goto :goto_2

    :cond_3
    move p3, p2

    :goto_2
    invoke-static {p1, p3}, Lcom/yftech/libradio/RadioFavorActivity;->access$402(Lcom/yftech/libradio/RadioFavorActivity;Z)Z

    .line 233
    iget-object p1, p0, Lcom/yftech/libradio/RadioFavorActivity$4;->this$0:Lcom/yftech/libradio/RadioFavorActivity;

    invoke-static {p1}, Lcom/yftech/libradio/RadioFavorActivity;->access$500(Lcom/yftech/libradio/RadioFavorActivity;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p1

    .line 235
    iget-object p3, p0, Lcom/yftech/libradio/RadioFavorActivity$4;->this$0:Lcom/yftech/libradio/RadioFavorActivity;

    invoke-static {p3}, Lcom/yftech/libradio/RadioFavorActivity;->access$500(Lcom/yftech/libradio/RadioFavorActivity;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p3

    const/4 v1, 0x7

    if-le p1, v1, :cond_5

    .line 241
    iget-object p1, p0, Lcom/yftech/libradio/RadioFavorActivity$4;->this$0:Lcom/yftech/libradio/RadioFavorActivity;

    invoke-static {p1}, Lcom/yftech/libradio/RadioFavorActivity;->access$300(Lcom/yftech/libradio/RadioFavorActivity;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p1

    sub-int/2addr p1, v0

    if-ge p3, p1, :cond_5

    .line 244
    iget-object p1, p0, Lcom/yftech/libradio/RadioFavorActivity$4;->this$0:Lcom/yftech/libradio/RadioFavorActivity;

    invoke-static {p1}, Lcom/yftech/libradio/RadioFavorActivity;->access$400(Lcom/yftech/libradio/RadioFavorActivity;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 245
    iget-object p1, p0, Lcom/yftech/libradio/RadioFavorActivity$4;->this$0:Lcom/yftech/libradio/RadioFavorActivity;

    invoke-static {p1}, Lcom/yftech/libradio/RadioFavorActivity;->access$600(Lcom/yftech/libradio/RadioFavorActivity;)Landroid/widget/ImageView;

    move-result-object p1

    sget p2, Lcom/yftech/libradio/R$mipmap;->radio_btn_reach_top:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 246
    iget-object p0, p0, Lcom/yftech/libradio/RadioFavorActivity$4;->this$0:Lcom/yftech/libradio/RadioFavorActivity;

    invoke-static {p0, v0}, Lcom/yftech/libradio/RadioFavorActivity;->access$700(Lcom/yftech/libradio/RadioFavorActivity;Z)V

    goto :goto_3

    .line 250
    :cond_4
    iget-object p1, p0, Lcom/yftech/libradio/RadioFavorActivity$4;->this$0:Lcom/yftech/libradio/RadioFavorActivity;

    invoke-static {p1}, Lcom/yftech/libradio/RadioFavorActivity;->access$600(Lcom/yftech/libradio/RadioFavorActivity;)Landroid/widget/ImageView;

    move-result-object p1

    sget p2, Lcom/yftech/libradio/R$mipmap;->radio_btn_reach_bottom:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 251
    iget-object p0, p0, Lcom/yftech/libradio/RadioFavorActivity$4;->this$0:Lcom/yftech/libradio/RadioFavorActivity;

    invoke-static {p0, v0}, Lcom/yftech/libradio/RadioFavorActivity;->access$700(Lcom/yftech/libradio/RadioFavorActivity;Z)V

    goto :goto_3

    .line 254
    :cond_5
    iget-object p0, p0, Lcom/yftech/libradio/RadioFavorActivity$4;->this$0:Lcom/yftech/libradio/RadioFavorActivity;

    invoke-static {p0, p2}, Lcom/yftech/libradio/RadioFavorActivity;->access$700(Lcom/yftech/libradio/RadioFavorActivity;Z)V

    :goto_3
    return-void
.end method
