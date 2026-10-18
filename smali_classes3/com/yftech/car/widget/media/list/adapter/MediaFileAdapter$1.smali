.class Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter$1;
.super Landroid/os/Handler;
.source "MediaFileAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;


# direct methods
.method constructor <init>(Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;Landroid/os/Looper;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter$1;->this$0:Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 100
    iget-object p1, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter$1;->this$0:Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;

    invoke-static {p1}, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->access$000(Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;)Ljava/util/List;

    move-result-object p1

    monitor-enter p1

    .line 101
    :try_start_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter$1;->this$0:Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->notifyDataSetChanged()V

    .line 102
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    iget-object p0, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter$1;->this$0:Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->access$102(Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;J)J

    return-void

    :catchall_0
    move-exception p0

    .line 102
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
