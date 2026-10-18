.class Landroid/media/RingtoneManager$NewRingtoneScanner;
.super Ljava/lang/Object;
.source "RingtoneManager.java"

# interfaces
.implements Ljava/io/Closeable;
.implements Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/RingtoneManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NewRingtoneScanner"
.end annotation


# instance fields
.field private mFile:Ljava/io/File;

.field private mMediaScannerConnection:Landroid/media/MediaScannerConnection;

.field private mQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/media/RingtoneManager;


# direct methods
.method public constructor <init>(Landroid/media/RingtoneManager;Ljava/io/File;)V
    .locals 2

    .line 1144
    iput-object p1, p0, Landroid/media/RingtoneManager$NewRingtoneScanner;->this$0:Landroid/media/RingtoneManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1142
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Landroid/media/RingtoneManager$NewRingtoneScanner;->mQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 1145
    iput-object p2, p0, Landroid/media/RingtoneManager$NewRingtoneScanner;->mFile:Ljava/io/File;

    .line 1146
    new-instance p2, Landroid/media/MediaScannerConnection;

    invoke-static {p1}, Landroid/media/RingtoneManager;->access$000(Landroid/media/RingtoneManager;)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Landroid/media/MediaScannerConnection;-><init>(Landroid/content/Context;Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;)V

    iput-object p2, p0, Landroid/media/RingtoneManager$NewRingtoneScanner;->mMediaScannerConnection:Landroid/media/MediaScannerConnection;

    .line 1147
    iget-object p0, p0, Landroid/media/RingtoneManager$NewRingtoneScanner;->mMediaScannerConnection:Landroid/media/MediaScannerConnection;

    invoke-virtual {p0}, Landroid/media/MediaScannerConnection;->connect()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .line 1152
    iget-object p0, p0, Landroid/media/RingtoneManager$NewRingtoneScanner;->mMediaScannerConnection:Landroid/media/MediaScannerConnection;

    invoke-virtual {p0}, Landroid/media/MediaScannerConnection;->disconnect()V

    return-void
.end method

.method public onMediaScannerConnected()V
    .locals 2

    .line 1157
    iget-object v0, p0, Landroid/media/RingtoneManager$NewRingtoneScanner;->mMediaScannerConnection:Landroid/media/MediaScannerConnection;

    iget-object p0, p0, Landroid/media/RingtoneManager$NewRingtoneScanner;->mFile:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/media/MediaScannerConnection;->scanFile(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0

    if-nez p2, :cond_0

    .line 1164
    iget-object p0, p0, Landroid/media/RingtoneManager$NewRingtoneScanner;->mFile:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    return-void

    .line 1168
    :cond_0
    :try_start_0
    iget-object p0, p0, Landroid/media/RingtoneManager$NewRingtoneScanner;->mQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {p0, p2}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "RingtoneManager"

    const-string p2, "Unable to put new ringtone Uri in queue"

    .line 1170
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1172
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    :goto_0
    return-void
.end method

.method public take()Landroid/net/Uri;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1178
    iget-object p0, p0, Landroid/media/RingtoneManager$NewRingtoneScanner;->mQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/Uri;

    return-object p0
.end method
