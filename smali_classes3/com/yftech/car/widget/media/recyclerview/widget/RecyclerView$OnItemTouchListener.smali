.class public interface abstract Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$OnItemTouchListener;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnItemTouchListener"
.end annotation


# virtual methods
.method public abstract onInterceptTouchEvent(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .param p1    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract onRequestDisallowInterceptTouchEvent(Z)V
.end method

.method public abstract onTouchEvent(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)V
    .param p1    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method
