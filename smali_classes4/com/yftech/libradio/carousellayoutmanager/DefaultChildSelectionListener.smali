.class public Lcom/yftech/libradio/carousellayoutmanager/DefaultChildSelectionListener;
.super Lcom/yftech/libradio/carousellayoutmanager/CarouselChildSelectionListener;
.source "DefaultChildSelectionListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/libradio/carousellayoutmanager/DefaultChildSelectionListener$OnCenterItemClickListener;
    }
.end annotation


# instance fields
.field private final mOnCenterItemClickListener:Lcom/yftech/libradio/carousellayoutmanager/DefaultChildSelectionListener$OnCenterItemClickListener;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/yftech/libradio/carousellayoutmanager/DefaultChildSelectionListener$OnCenterItemClickListener;Landroidx/recyclerview/widget/RecyclerView;Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;)V
    .locals 0
    .param p1    # Lcom/yftech/libradio/carousellayoutmanager/DefaultChildSelectionListener$OnCenterItemClickListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 14
    invoke-direct {p0, p2, p3}, Lcom/yftech/libradio/carousellayoutmanager/CarouselChildSelectionListener;-><init>(Landroidx/recyclerview/widget/RecyclerView;Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;)V

    .line 16
    iput-object p1, p0, Lcom/yftech/libradio/carousellayoutmanager/DefaultChildSelectionListener;->mOnCenterItemClickListener:Lcom/yftech/libradio/carousellayoutmanager/DefaultChildSelectionListener$OnCenterItemClickListener;

    return-void
.end method

.method public static initCenterItemListener(Lcom/yftech/libradio/carousellayoutmanager/DefaultChildSelectionListener$OnCenterItemClickListener;Landroidx/recyclerview/widget/RecyclerView;Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;)Lcom/yftech/libradio/carousellayoutmanager/DefaultChildSelectionListener;
    .locals 1
    .param p0    # Lcom/yftech/libradio/carousellayoutmanager/DefaultChildSelectionListener$OnCenterItemClickListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 30
    new-instance v0, Lcom/yftech/libradio/carousellayoutmanager/DefaultChildSelectionListener;

    invoke-direct {v0, p0, p1, p2}, Lcom/yftech/libradio/carousellayoutmanager/DefaultChildSelectionListener;-><init>(Lcom/yftech/libradio/carousellayoutmanager/DefaultChildSelectionListener$OnCenterItemClickListener;Landroidx/recyclerview/widget/RecyclerView;Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;)V

    return-object v0
.end method


# virtual methods
.method protected onBackItemClicked(Landroidx/recyclerview/widget/RecyclerView;Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;Landroid/view/View;)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 26
    invoke-virtual {p2, p3}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->getPosition(Landroid/view/View;)I

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    return-void
.end method

.method protected onCenterItemClicked(Landroidx/recyclerview/widget/RecyclerView;Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;Landroid/view/View;)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 21
    iget-object p0, p0, Lcom/yftech/libradio/carousellayoutmanager/DefaultChildSelectionListener;->mOnCenterItemClickListener:Lcom/yftech/libradio/carousellayoutmanager/DefaultChildSelectionListener$OnCenterItemClickListener;

    invoke-interface {p0, p1, p2, p3}, Lcom/yftech/libradio/carousellayoutmanager/DefaultChildSelectionListener$OnCenterItemClickListener;->onCenterItemClicked(Landroidx/recyclerview/widget/RecyclerView;Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;Landroid/view/View;)V

    return-void
.end method
