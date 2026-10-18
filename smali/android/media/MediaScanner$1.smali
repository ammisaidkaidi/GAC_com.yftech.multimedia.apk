.class Landroid/media/MediaScanner$1;
.super Landroid/os/Handler;
.source "MediaScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/MediaScanner;->scanDirectories([Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/MediaScanner;

.field final synthetic val$ht:Landroid/os/HandlerThread;


# direct methods
.method constructor <init>(Landroid/media/MediaScanner;Landroid/os/Looper;Landroid/os/HandlerThread;)V
    .locals 0

    .line 1578
    iput-object p1, p0, Landroid/media/MediaScanner$1;->this$0:Landroid/media/MediaScanner;

    iput-object p3, p0, Landroid/media/MediaScanner$1;->val$ht:Landroid/os/HandlerThread;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1581
    monitor-enter p0

    .line 1582
    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1585
    :try_start_1
    iget-object p1, p0, Landroid/media/MediaScanner$1;->this$0:Landroid/media/MediaScanner;

    invoke-static {p1}, Landroid/media/MediaScanner;->access$3800(Landroid/media/MediaScanner;)Ljava/util/Stack;

    move-result-object p1

    monitor-enter p1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 1586
    :try_start_2
    iget-object v0, p0, Landroid/media/MediaScanner$1;->this$0:Landroid/media/MediaScanner;

    invoke-static {v0}, Landroid/media/MediaScanner;->access$3800(Landroid/media/MediaScanner;)Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaScanner$MediaData;

    .line 1587
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1588
    :try_start_3
    iget-boolean p1, v0, Landroid/media/MediaScanner$MediaData;->fgPriority:Z

    if-eqz p1, :cond_0

    .line 1589
    iget-object p1, p0, Landroid/media/MediaScanner$1;->this$0:Landroid/media/MediaScanner;

    invoke-static {p1}, Landroid/media/MediaScanner;->access$3100(Landroid/media/MediaScanner;)Landroid/media/MediaInserter;

    move-result-object p1

    iget-object v1, v0, Landroid/media/MediaScanner$MediaData;->tableUri:Landroid/net/Uri;

    iget-object v0, v0, Landroid/media/MediaScanner$MediaData;->values:Landroid/content/ContentValues;

    invoke-virtual {p1, v1, v0}, Landroid/media/MediaInserter;->insertwithPriority(Landroid/net/Uri;Landroid/content/ContentValues;)V

    goto :goto_0

    .line 1591
    :cond_0
    iget-object p1, p0, Landroid/media/MediaScanner$1;->this$0:Landroid/media/MediaScanner;

    invoke-static {p1}, Landroid/media/MediaScanner;->access$3100(Landroid/media/MediaScanner;)Landroid/media/MediaInserter;

    move-result-object p1

    iget-object v1, v0, Landroid/media/MediaScanner$MediaData;->tableUri:Landroid/net/Uri;

    iget-object v0, v0, Landroid/media/MediaScanner$MediaData;->values:Landroid/content/ContentValues;

    invoke-virtual {p1, v1, v0}, Landroid/media/MediaInserter;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 1587
    :try_start_4
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catch_0
    move-exception p1

    :try_start_6
    const-string v0, "MediaScanner"

    const-string v1, "RemoteException in insert media value "

    .line 1595
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1597
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 1599
    :try_start_7
    iget-object p1, p0, Landroid/media/MediaScanner$1;->this$0:Landroid/media/MediaScanner;

    invoke-static {p1}, Landroid/media/MediaScanner;->access$3800(Landroid/media/MediaScanner;)Ljava/util/Stack;

    move-result-object p1

    monitor-enter p1
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 1601
    :try_start_8
    iget-object v0, p0, Landroid/media/MediaScanner$1;->this$0:Landroid/media/MediaScanner;

    invoke-static {v0}, Landroid/media/MediaScanner;->access$3100(Landroid/media/MediaScanner;)Landroid/media/MediaInserter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaInserter;->flushAll()V

    .line 1602
    monitor-exit p1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw v0
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :catch_1
    move-exception p1

    :try_start_a
    const-string v0, "MediaScanner"

    const-string v1, "RemoteException in insert media value"

    .line 1605
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1607
    :cond_2
    iget p1, p1, Landroid/os/Message;->what:I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 1609
    :try_start_b
    iget-object p1, p0, Landroid/media/MediaScanner$1;->this$0:Landroid/media/MediaScanner;

    invoke-static {p1}, Landroid/media/MediaScanner;->access$3800(Landroid/media/MediaScanner;)Ljava/util/Stack;

    move-result-object p1

    monitor-enter p1
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :try_start_c
    const-string v0, "MediaScanner"

    const-string v1, " mMediaInserter Quit start \n"

    .line 1610
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1611
    iget-object v0, p0, Landroid/media/MediaScanner$1;->val$ht:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 1612
    monitor-exit p1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :try_start_d
    const-string p1, "MediaScanner"

    const-string v0, " mMediaInserter quit done \n"

    .line 1613
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    goto :goto_0

    :catchall_2
    move-exception v0

    .line 1612
    :try_start_e
    monitor-exit p1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    :try_start_f
    throw v0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_2
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    :catch_2
    move-exception p1

    :try_start_10
    const-string v0, "MediaScanner"

    const-string v1, "Exception in quit insert thread"

    .line 1615
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1618
    :cond_3
    :goto_0
    monitor-exit p0

    return-void

    :catchall_3
    move-exception p1

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    throw p1
.end method
