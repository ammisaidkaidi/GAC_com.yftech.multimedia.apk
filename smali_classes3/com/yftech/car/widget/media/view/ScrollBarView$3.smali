.class Lcom/yftech/car/widget/media/view/ScrollBarView$3;
.super Ljava/lang/Object;
.source "ScrollBarView.java"

# interfaces
.implements Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ChildDrawingOrderCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/car/widget/media/view/ScrollBarView;->getChildDrawingOrderCallback()Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ChildDrawingOrderCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/car/widget/media/view/ScrollBarView;


# direct methods
.method constructor <init>(Lcom/yftech/car/widget/media/view/ScrollBarView;)V
    .locals 0

    .line 256
    iput-object p1, p0, Lcom/yftech/car/widget/media/view/ScrollBarView$3;->this$0:Lcom/yftech/car/widget/media/view/ScrollBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetChildDrawingOrder(II)I
    .locals 4

    .line 261
    iget-object p1, p0, Lcom/yftech/car/widget/media/view/ScrollBarView$3;->this$0:Lcom/yftech/car/widget/media/view/ScrollBarView;

    invoke-static {p1}, Lcom/yftech/car/widget/media/view/ScrollBarView;->access$000(Lcom/yftech/car/widget/media/view/ScrollBarView;)Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getAdapter()Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    const/4 v0, 0x4

    if-eqz p1, :cond_7

    .line 263
    invoke-virtual {p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    .line 264
    iget-object v2, p0, Lcom/yftech/car/widget/media/view/ScrollBarView$3;->this$0:Lcom/yftech/car/widget/media/view/ScrollBarView;

    invoke-static {v2}, Lcom/yftech/car/widget/media/view/ScrollBarView;->access$200(Lcom/yftech/car/widget/media/view/ScrollBarView;)I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/yftech/car/widget/media/view/ScrollBarView$3;->this$0:Lcom/yftech/car/widget/media/view/ScrollBarView;

    invoke-static {v2}, Lcom/yftech/car/widget/media/view/ScrollBarView;->access$400(Lcom/yftech/car/widget/media/view/ScrollBarView;)I

    move-result v2

    if-eq v1, v2, :cond_8

    .line 265
    :cond_0
    iget-object v2, p0, Lcom/yftech/car/widget/media/view/ScrollBarView$3;->this$0:Lcom/yftech/car/widget/media/view/ScrollBarView;

    iget-object v3, p0, Lcom/yftech/car/widget/media/view/ScrollBarView$3;->this$0:Lcom/yftech/car/widget/media/view/ScrollBarView;

    invoke-static {v3}, Lcom/yftech/car/widget/media/view/ScrollBarView;->access$000(Lcom/yftech/car/widget/media/view/ScrollBarView;)Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getLayoutManager()Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/yftech/car/widget/media/view/ScrollBarView;->access$502(Lcom/yftech/car/widget/media/view/ScrollBarView;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;)Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    .line 268
    iget-object v2, p0, Lcom/yftech/car/widget/media/view/ScrollBarView$3;->this$0:Lcom/yftech/car/widget/media/view/ScrollBarView;

    invoke-static {v2}, Lcom/yftech/car/widget/media/view/ScrollBarView;->access$500(Lcom/yftech/car/widget/media/view/ScrollBarView;)Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v2

    instance-of v2, v2, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;

    if-eqz v2, :cond_1

    .line 269
    iget-object v1, p0, Lcom/yftech/car/widget/media/view/ScrollBarView$3;->this$0:Lcom/yftech/car/widget/media/view/ScrollBarView;

    iget-object v2, p0, Lcom/yftech/car/widget/media/view/ScrollBarView$3;->this$0:Lcom/yftech/car/widget/media/view/ScrollBarView;

    invoke-static {v2}, Lcom/yftech/car/widget/media/view/ScrollBarView;->access$500(Lcom/yftech/car/widget/media/view/ScrollBarView;)Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v2

    check-cast v2, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;

    invoke-static {v1, v2}, Lcom/yftech/car/widget/media/view/ScrollBarView;->access$602(Lcom/yftech/car/widget/media/view/ScrollBarView;Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;)Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;

    .line 271
    invoke-virtual {p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    iget-object v2, p0, Lcom/yftech/car/widget/media/view/ScrollBarView$3;->this$0:Lcom/yftech/car/widget/media/view/ScrollBarView;

    invoke-static {v2}, Lcom/yftech/car/widget/media/view/ScrollBarView;->access$600(Lcom/yftech/car/widget/media/view/ScrollBarView;)Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result v2

    div-int/2addr v1, v2

    .line 272
    invoke-virtual {p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v2

    iget-object v3, p0, Lcom/yftech/car/widget/media/view/ScrollBarView$3;->this$0:Lcom/yftech/car/widget/media/view/ScrollBarView;

    invoke-static {v3}, Lcom/yftech/car/widget/media/view/ScrollBarView;->access$600(Lcom/yftech/car/widget/media/view/ScrollBarView;)Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result v3

    rem-int/2addr v2, v3

    if-lez v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    .line 277
    :cond_1
    iget-object v2, p0, Lcom/yftech/car/widget/media/view/ScrollBarView$3;->this$0:Lcom/yftech/car/widget/media/view/ScrollBarView;

    invoke-static {v2}, Lcom/yftech/car/widget/media/view/ScrollBarView;->access$100(Lcom/yftech/car/widget/media/view/ScrollBarView;)I

    move-result v2

    sub-int v2, v1, v2

    if-lez v2, :cond_5

    .line 278
    iget-object v0, p0, Lcom/yftech/car/widget/media/view/ScrollBarView$3;->this$0:Lcom/yftech/car/widget/media/view/ScrollBarView;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/view/ScrollBarView;->getVisibility()I

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 279
    iget-object v0, p0, Lcom/yftech/car/widget/media/view/ScrollBarView$3;->this$0:Lcom/yftech/car/widget/media/view/ScrollBarView;

    invoke-virtual {v0, v2}, Lcom/yftech/car/widget/media/view/ScrollBarView;->setVisibility(I)V

    .line 281
    :cond_2
    iget-object v0, p0, Lcom/yftech/car/widget/media/view/ScrollBarView$3;->this$0:Lcom/yftech/car/widget/media/view/ScrollBarView;

    invoke-static {v0}, Lcom/yftech/car/widget/media/view/ScrollBarView;->access$700(Lcom/yftech/car/widget/media/view/ScrollBarView;)Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$AdapterDataObserver;

    move-result-object v0

    if-nez v0, :cond_3

    .line 282
    iget-object v0, p0, Lcom/yftech/car/widget/media/view/ScrollBarView$3;->this$0:Lcom/yftech/car/widget/media/view/ScrollBarView;

    iget-object v3, p0, Lcom/yftech/car/widget/media/view/ScrollBarView$3;->this$0:Lcom/yftech/car/widget/media/view/ScrollBarView;

    invoke-static {v3}, Lcom/yftech/car/widget/media/view/ScrollBarView;->access$800(Lcom/yftech/car/widget/media/view/ScrollBarView;)Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$AdapterDataObserver;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/yftech/car/widget/media/view/ScrollBarView;->access$702(Lcom/yftech/car/widget/media/view/ScrollBarView;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$AdapterDataObserver;)Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$AdapterDataObserver;

    .line 283
    iget-object v0, p0, Lcom/yftech/car/widget/media/view/ScrollBarView$3;->this$0:Lcom/yftech/car/widget/media/view/ScrollBarView;

    invoke-static {v0}, Lcom/yftech/car/widget/media/view/ScrollBarView;->access$700(Lcom/yftech/car/widget/media/view/ScrollBarView;)Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$AdapterDataObserver;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 285
    :cond_3
    iget-object p1, p0, Lcom/yftech/car/widget/media/view/ScrollBarView$3;->this$0:Lcom/yftech/car/widget/media/view/ScrollBarView;

    invoke-static {p1}, Lcom/yftech/car/widget/media/view/ScrollBarView;->access$500(Lcom/yftech/car/widget/media/view/ScrollBarView;)Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/yftech/car/widget/media/view/ScrollBarView$3;->this$0:Lcom/yftech/car/widget/media/view/ScrollBarView;

    invoke-static {p1}, Lcom/yftech/car/widget/media/view/ScrollBarView;->access$500(Lcom/yftech/car/widget/media/view/ScrollBarView;)Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result p1

    if-lez p1, :cond_6

    .line 286
    iget-object p1, p0, Lcom/yftech/car/widget/media/view/ScrollBarView$3;->this$0:Lcom/yftech/car/widget/media/view/ScrollBarView;

    invoke-static {p1}, Lcom/yftech/car/widget/media/view/ScrollBarView;->access$500(Lcom/yftech/car/widget/media/view/ScrollBarView;)Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_4

    .line 290
    iget-object p1, p0, Lcom/yftech/car/widget/media/view/ScrollBarView$3;->this$0:Lcom/yftech/car/widget/media/view/ScrollBarView;

    invoke-static {p1}, Lcom/yftech/car/widget/media/view/ScrollBarView;->access$500(Lcom/yftech/car/widget/media/view/ScrollBarView;)Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 292
    iget-object v0, p0, Lcom/yftech/car/widget/media/view/ScrollBarView$3;->this$0:Lcom/yftech/car/widget/media/view/ScrollBarView;

    iget-object v2, p0, Lcom/yftech/car/widget/media/view/ScrollBarView$3;->this$0:Lcom/yftech/car/widget/media/view/ScrollBarView;

    invoke-static {v2}, Lcom/yftech/car/widget/media/view/ScrollBarView;->access$000(Lcom/yftech/car/widget/media/view/ScrollBarView;)Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getHeight()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    invoke-virtual {v0, v2, p1}, Lcom/yftech/car/widget/media/view/ScrollBarView;->setGroupHeightItemHeight(II)V

    goto :goto_0

    .line 294
    :cond_4
    iget-object p1, p0, Lcom/yftech/car/widget/media/view/ScrollBarView$3;->this$0:Lcom/yftech/car/widget/media/view/ScrollBarView;

    invoke-static {p1}, Lcom/yftech/car/widget/media/view/ScrollBarView;->access$500(Lcom/yftech/car/widget/media/view/ScrollBarView;)Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 295
    iget-object v0, p0, Lcom/yftech/car/widget/media/view/ScrollBarView$3;->this$0:Lcom/yftech/car/widget/media/view/ScrollBarView;

    iget-object v2, p0, Lcom/yftech/car/widget/media/view/ScrollBarView$3;->this$0:Lcom/yftech/car/widget/media/view/ScrollBarView;

    invoke-static {v2}, Lcom/yftech/car/widget/media/view/ScrollBarView;->access$000(Lcom/yftech/car/widget/media/view/ScrollBarView;)Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getHeight()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    invoke-virtual {v0, v2, p1}, Lcom/yftech/car/widget/media/view/ScrollBarView;->setGroupHeightItemHeight(II)V

    goto :goto_0

    .line 299
    :cond_5
    iget-object p1, p0, Lcom/yftech/car/widget/media/view/ScrollBarView$3;->this$0:Lcom/yftech/car/widget/media/view/ScrollBarView;

    invoke-virtual {p1}, Lcom/yftech/car/widget/media/view/ScrollBarView;->getVisibility()I

    move-result p1

    if-eq v0, p1, :cond_6

    .line 300
    iget-object p1, p0, Lcom/yftech/car/widget/media/view/ScrollBarView$3;->this$0:Lcom/yftech/car/widget/media/view/ScrollBarView;

    invoke-virtual {p1, v0}, Lcom/yftech/car/widget/media/view/ScrollBarView;->setVisibility(I)V

    .line 303
    :cond_6
    :goto_0
    iget-object p1, p0, Lcom/yftech/car/widget/media/view/ScrollBarView$3;->this$0:Lcom/yftech/car/widget/media/view/ScrollBarView;

    invoke-virtual {p1, v1}, Lcom/yftech/car/widget/media/view/ScrollBarView;->setMaxProgress(I)V

    .line 304
    iget-object p0, p0, Lcom/yftech/car/widget/media/view/ScrollBarView$3;->this$0:Lcom/yftech/car/widget/media/view/ScrollBarView;

    invoke-static {p0}, Lcom/yftech/car/widget/media/view/ScrollBarView;->access$300(Lcom/yftech/car/widget/media/view/ScrollBarView;)V

    goto :goto_1

    .line 307
    :cond_7
    iget-object p1, p0, Lcom/yftech/car/widget/media/view/ScrollBarView$3;->this$0:Lcom/yftech/car/widget/media/view/ScrollBarView;

    invoke-virtual {p1}, Lcom/yftech/car/widget/media/view/ScrollBarView;->getVisibility()I

    move-result p1

    if-eq v0, p1, :cond_8

    .line 308
    iget-object p0, p0, Lcom/yftech/car/widget/media/view/ScrollBarView$3;->this$0:Lcom/yftech/car/widget/media/view/ScrollBarView;

    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/view/ScrollBarView;->setVisibility(I)V

    :cond_8
    :goto_1
    return p2
.end method
