.class Landroid/app/backup/BackupAgent$SharedPrefsSynchronizer;
.super Ljava/lang/Object;
.source "BackupAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/backup/BackupAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SharedPrefsSynchronizer"
.end annotation


# instance fields
.field public final mLatch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic this$0:Landroid/app/backup/BackupAgent;


# direct methods
.method constructor <init>(Landroid/app/backup/BackupAgent;)V
    .locals 1

    .line 186
    iput-object p1, p0, Landroid/app/backup/BackupAgent$SharedPrefsSynchronizer;->this$0:Landroid/app/backup/BackupAgent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Landroid/app/backup/BackupAgent$SharedPrefsSynchronizer;->mLatch:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 191
    invoke-static {}, Landroid/app/QueuedWork;->waitToFinish()V

    .line 192
    iget-object p0, p0, Landroid/app/backup/BackupAgent$SharedPrefsSynchronizer;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
