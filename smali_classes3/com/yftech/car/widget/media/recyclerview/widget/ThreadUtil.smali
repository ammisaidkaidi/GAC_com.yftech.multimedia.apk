.class interface abstract Lcom/yftech/car/widget/media/recyclerview/widget/ThreadUtil;
.super Ljava/lang/Object;
.source "ThreadUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/car/widget/media/recyclerview/widget/ThreadUtil$BackgroundCallback;,
        Lcom/yftech/car/widget/media/recyclerview/widget/ThreadUtil$MainThreadCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract getBackgroundProxy(Lcom/yftech/car/widget/media/recyclerview/widget/ThreadUtil$BackgroundCallback;)Lcom/yftech/car/widget/media/recyclerview/widget/ThreadUtil$BackgroundCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yftech/car/widget/media/recyclerview/widget/ThreadUtil$BackgroundCallback<",
            "TT;>;)",
            "Lcom/yftech/car/widget/media/recyclerview/widget/ThreadUtil$BackgroundCallback<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract getMainThreadProxy(Lcom/yftech/car/widget/media/recyclerview/widget/ThreadUtil$MainThreadCallback;)Lcom/yftech/car/widget/media/recyclerview/widget/ThreadUtil$MainThreadCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yftech/car/widget/media/recyclerview/widget/ThreadUtil$MainThreadCallback<",
            "TT;>;)",
            "Lcom/yftech/car/widget/media/recyclerview/widget/ThreadUtil$MainThreadCallback<",
            "TT;>;"
        }
    .end annotation
.end method
