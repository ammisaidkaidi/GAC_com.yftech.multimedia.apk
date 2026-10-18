.class Lcom/yftech/car/widget/media/recyclerview/widget/MessageThreadUtil$1;
.super Ljava/lang/Object;
.source "MessageThreadUtil.java"

# interfaces
.implements Lcom/yftech/car/widget/media/recyclerview/widget/ThreadUtil$MainThreadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/car/widget/media/recyclerview/widget/MessageThreadUtil;->getMainThreadProxy(Lcom/yftech/car/widget/media/recyclerview/widget/ThreadUtil$MainThreadCallback;)Lcom/yftech/car/widget/media/recyclerview/widget/ThreadUtil$MainThreadCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yftech/car/widget/media/recyclerview/widget/ThreadUtil$MainThreadCallback<",
        "TT;>;"
    }
.end annotation


# static fields
.field static final ADD_TILE:I = 0x2

.field static final REMOVE_TILE:I = 0x3

.field static final UPDATE_ITEM_COUNT:I = 0x1


# instance fields
.field private final mMainThreadHandler:Landroid/os/Handler;

.field private mMainThreadRunnable:Ljava/lang/Runnable;

.field final mQueue:Lcom/yftech/car/widget/media/recyclerview/widget/MessageThreadUtil$MessageQueue;

.field final synthetic this$0:Lcom/yftech/car/widget/media/recyclerview/widget/MessageThreadUtil;

.field final synthetic val$callback:Lcom/yftech/car/widget/media/recyclerview/widget/ThreadUtil$MainThreadCallback;


# direct methods
.method constructor <init>(Lcom/yftech/car/widget/media/recyclerview/widget/MessageThreadUtil;Lcom/yftech/car/widget/media/recyclerview/widget/ThreadUtil$MainThreadCallback;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/MessageThreadUtil$1;->this$0:Lcom/yftech/car/widget/media/recyclerview/widget/MessageThreadUtil;

    iput-object p2, p0, Lcom/yftech/car/widget/media/recyclerview/widget/MessageThreadUtil$1;->val$callback:Lcom/yftech/car/widget/media/recyclerview/widget/ThreadUtil$MainThreadCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance p1, Lcom/yftech/car/widget/media/recyclerview/widget/MessageThreadUtil$MessageQueue;

    invoke-direct {p1}, Lcom/yftech/car/widget/media/recyclerview/widget/MessageThreadUtil$MessageQueue;-><init>()V

    iput-object p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/MessageThreadUtil$1;->mQueue:Lcom/yftech/car/widget/media/recyclerview/widget/MessageThreadUtil$MessageQueue;

    .line 32
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/MessageThreadUtil$1;->mMainThreadHandler:Landroid/os/Handler;

    .line 58
    new-instance p1, Lcom/yftech/car/widget/media/recyclerview/widget/MessageThreadUtil$1$1;

    invoke-direct {p1, p0}, Lcom/yftech/car/widget/media/recyclerview/widget/MessageThreadUtil$1$1;-><init>(Lcom/yftech/car/widget/media/recyclerview/widget/MessageThreadUtil$1;)V

    iput-object p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/MessageThreadUtil$1;->mMainThreadRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private sendMessage(Lcom/yftech/car/widget/media/recyclerview/widget/MessageThreadUtil$SyncQueueItem;)V
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/MessageThreadUtil$1;->mQueue:Lcom/yftech/car/widget/media/recyclerview/widget/MessageThreadUtil$MessageQueue;

    invoke-virtual {v0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/MessageThreadUtil$MessageQueue;->sendMessage(Lcom/yftech/car/widget/media/recyclerview/widget/MessageThreadUtil$SyncQueueItem;)V

    .line 55
    iget-object p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/MessageThreadUtil$1;->mMainThreadHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/MessageThreadUtil$1;->mMainThreadRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public addTile(ILcom/yftech/car/widget/media/recyclerview/widget/TileList$Tile;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/yftech/car/widget/media/recyclerview/widget/TileList$Tile<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x2

    .line 45
    invoke-static {v0, p1, p2}, Lcom/yftech/car/widget/media/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->obtainMessage(IILjava/lang/Object;)Lcom/yftech/car/widget/media/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/MessageThreadUtil$1;->sendMessage(Lcom/yftech/car/widget/media/recyclerview/widget/MessageThreadUtil$SyncQueueItem;)V

    return-void
.end method

.method public removeTile(II)V
    .locals 1

    const/4 v0, 0x3

    .line 50
    invoke-static {v0, p1, p2}, Lcom/yftech/car/widget/media/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->obtainMessage(III)Lcom/yftech/car/widget/media/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/MessageThreadUtil$1;->sendMessage(Lcom/yftech/car/widget/media/recyclerview/widget/MessageThreadUtil$SyncQueueItem;)V

    return-void
.end method

.method public updateItemCount(II)V
    .locals 1

    const/4 v0, 0x1

    .line 40
    invoke-static {v0, p1, p2}, Lcom/yftech/car/widget/media/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->obtainMessage(III)Lcom/yftech/car/widget/media/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/MessageThreadUtil$1;->sendMessage(Lcom/yftech/car/widget/media/recyclerview/widget/MessageThreadUtil$SyncQueueItem;)V

    return-void
.end method
