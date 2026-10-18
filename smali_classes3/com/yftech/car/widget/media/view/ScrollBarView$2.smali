.class Lcom/yftech/car/widget/media/view/ScrollBarView$2;
.super Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$OnScrollListener;
.source "ScrollBarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/car/widget/media/view/ScrollBarView;->getOnScrollListener()Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$OnScrollListener;
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

    .line 231
    iput-object p1, p0, Lcom/yftech/car/widget/media/view/ScrollBarView$2;->this$0:Lcom/yftech/car/widget/media/view/ScrollBarView;

    invoke-direct {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;II)V
    .locals 0
    .param p1    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 245
    invoke-super {p0, p1, p2, p3}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;II)V

    .line 246
    iget-object p1, p0, Lcom/yftech/car/widget/media/view/ScrollBarView$2;->this$0:Lcom/yftech/car/widget/media/view/ScrollBarView;

    invoke-static {p1}, Lcom/yftech/car/widget/media/view/ScrollBarView;->access$200(Lcom/yftech/car/widget/media/view/ScrollBarView;)I

    move-result p1

    if-lez p1, :cond_0

    .line 247
    iget-object p0, p0, Lcom/yftech/car/widget/media/view/ScrollBarView$2;->this$0:Lcom/yftech/car/widget/media/view/ScrollBarView;

    invoke-static {p0}, Lcom/yftech/car/widget/media/view/ScrollBarView;->access$300(Lcom/yftech/car/widget/media/view/ScrollBarView;)V

    :cond_0
    return-void
.end method
