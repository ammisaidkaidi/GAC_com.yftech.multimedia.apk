.class Lcom/yftech/car/widget/media/radio/list/RadioFixedFavorList$1;
.super Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$OnScrollListener;
.source "RadioFixedFavorList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/car/widget/media/radio/list/RadioFixedFavorList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/car/widget/media/radio/list/RadioFixedFavorList;


# direct methods
.method constructor <init>(Lcom/yftech/car/widget/media/radio/list/RadioFixedFavorList;)V
    .locals 0

    .line 211
    iput-object p1, p0, Lcom/yftech/car/widget/media/radio/list/RadioFixedFavorList$1;->this$0:Lcom/yftech/car/widget/media/radio/list/RadioFixedFavorList;

    invoke-direct {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;I)V
    .locals 0
    .param p1    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 221
    invoke-super {p0, p1, p2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;I)V

    return-void
.end method

.method public onScrolled(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;II)V
    .locals 0
    .param p1    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 239
    invoke-super {p0, p1, p2, p3}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;II)V

    return-void
.end method
