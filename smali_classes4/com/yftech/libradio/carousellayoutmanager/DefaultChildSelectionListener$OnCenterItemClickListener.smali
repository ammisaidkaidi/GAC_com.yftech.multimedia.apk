.class public interface abstract Lcom/yftech/libradio/carousellayoutmanager/DefaultChildSelectionListener$OnCenterItemClickListener;
.super Ljava/lang/Object;
.source "DefaultChildSelectionListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/libradio/carousellayoutmanager/DefaultChildSelectionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnCenterItemClickListener"
.end annotation


# virtual methods
.method public abstract onCenterItemClicked(Landroidx/recyclerview/widget/RecyclerView;Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;Landroid/view/View;)V
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
.end method
