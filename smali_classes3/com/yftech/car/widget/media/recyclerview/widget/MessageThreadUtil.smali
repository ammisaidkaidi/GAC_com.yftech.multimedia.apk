.class Lcom/yftech/car/widget/media/recyclerview/widget/MessageThreadUtil;
.super Ljava/lang/Object;
.source "MessageThreadUtil.java"

# interfaces
.implements Lcom/yftech/car/widget/media/recyclerview/widget/ThreadUtil;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/car/widget/media/recyclerview/widget/MessageThreadUtil$MessageQueue;,
        Lcom/yftech/car/widget/media/recyclerview/widget/MessageThreadUtil$SyncQueueItem;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/yftech/car/widget/media/recyclerview/widget/ThreadUtil<",
        "TT;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBackgroundProxy(Lcom/yftech/car/widget/media/recyclerview/widget/ThreadUtil$BackgroundCallback;)Lcom/yftech/car/widget/media/recyclerview/widget/ThreadUtil$BackgroundCallback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yftech/car/widget/media/recyclerview/widget/ThreadUtil$BackgroundCallback<",
            "TT;>;)",
            "Lcom/yftech/car/widget/media/recyclerview/widget/ThreadUtil$BackgroundCallback<",
            "TT;>;"
        }
    .end annotation

    .line 88
    new-instance v0, Lcom/yftech/car/widget/media/recyclerview/widget/MessageThreadUtil$2;

    invoke-direct {v0, p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/MessageThreadUtil$2;-><init>(Lcom/yftech/car/widget/media/recyclerview/widget/MessageThreadUtil;Lcom/yftech/car/widget/media/recyclerview/widget/ThreadUtil$BackgroundCallback;)V

    return-object v0
.end method

.method public getMainThreadProxy(Lcom/yftech/car/widget/media/recyclerview/widget/ThreadUtil$MainThreadCallback;)Lcom/yftech/car/widget/media/recyclerview/widget/ThreadUtil$MainThreadCallback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yftech/car/widget/media/recyclerview/widget/ThreadUtil$MainThreadCallback<",
            "TT;>;)",
            "Lcom/yftech/car/widget/media/recyclerview/widget/ThreadUtil$MainThreadCallback<",
            "TT;>;"
        }
    .end annotation

    .line 30
    new-instance v0, Lcom/yftech/car/widget/media/recyclerview/widget/MessageThreadUtil$1;

    invoke-direct {v0, p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/MessageThreadUtil$1;-><init>(Lcom/yftech/car/widget/media/recyclerview/widget/MessageThreadUtil;Lcom/yftech/car/widget/media/recyclerview/widget/ThreadUtil$MainThreadCallback;)V

    return-object v0
.end method
