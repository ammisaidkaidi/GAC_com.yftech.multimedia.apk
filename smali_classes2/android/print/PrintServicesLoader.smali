.class public Landroid/print/PrintServicesLoader;
.super Landroid/content/Loader;
.source "PrintServicesLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/print/PrintServicesLoader$MyHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/Loader<",
        "Ljava/util/List<",
        "Landroid/printservice/PrintServiceInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mListener:Landroid/print/PrintManager$PrintServicesChangeListener;

.field private final mPrintManager:Landroid/print/PrintManager;

.field private final mSelectionFlags:I


# direct methods
.method public constructor <init>(Landroid/print/PrintManager;Landroid/content/Context;I)V
    .locals 0

    .line 57
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/Context;

    invoke-direct {p0, p2}, Landroid/content/Loader;-><init>(Landroid/content/Context;)V

    .line 58
    new-instance p2, Landroid/print/PrintServicesLoader$MyHandler;

    invoke-direct {p2, p0}, Landroid/print/PrintServicesLoader$MyHandler;-><init>(Landroid/print/PrintServicesLoader;)V

    iput-object p2, p0, Landroid/print/PrintServicesLoader;->mHandler:Landroid/os/Handler;

    .line 59
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/print/PrintManager;

    iput-object p1, p0, Landroid/print/PrintServicesLoader;->mPrintManager:Landroid/print/PrintManager;

    const/4 p1, 0x3

    .line 60
    invoke-static {p3, p1}, Lcom/android/internal/util/Preconditions;->checkFlagsArgument(II)I

    move-result p1

    iput p1, p0, Landroid/print/PrintServicesLoader;->mSelectionFlags:I

    return-void
.end method

.method static synthetic access$000(Landroid/print/PrintServicesLoader;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Landroid/print/PrintServicesLoader;->queueNewResult()V

    return-void
.end method

.method private queueNewResult()V
    .locals 3

    .line 73
    iget-object v0, p0, Landroid/print/PrintServicesLoader;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 74
    iget-object v1, p0, Landroid/print/PrintServicesLoader;->mPrintManager:Landroid/print/PrintManager;

    iget v2, p0, Landroid/print/PrintServicesLoader;->mSelectionFlags:I

    invoke-virtual {v1, v2}, Landroid/print/PrintManager;->getPrintServices(I)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 75
    iget-object p0, p0, Landroid/print/PrintServicesLoader;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method


# virtual methods
.method protected onForceLoad()V
    .locals 0

    .line 66
    invoke-direct {p0}, Landroid/print/PrintServicesLoader;->queueNewResult()V

    return-void
.end method

.method protected onReset()V
    .locals 0

    .line 104
    invoke-virtual {p0}, Landroid/print/PrintServicesLoader;->onStopLoading()V

    return-void
.end method

.method protected onStartLoading()V
    .locals 3

    .line 80
    new-instance v0, Landroid/print/PrintServicesLoader$1;

    invoke-direct {v0, p0}, Landroid/print/PrintServicesLoader$1;-><init>(Landroid/print/PrintServicesLoader;)V

    iput-object v0, p0, Landroid/print/PrintServicesLoader;->mListener:Landroid/print/PrintManager$PrintServicesChangeListener;

    .line 86
    iget-object v0, p0, Landroid/print/PrintServicesLoader;->mPrintManager:Landroid/print/PrintManager;

    iget-object v1, p0, Landroid/print/PrintServicesLoader;->mListener:Landroid/print/PrintManager$PrintServicesChangeListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/print/PrintManager;->addPrintServicesChangeListener(Landroid/print/PrintManager$PrintServicesChangeListener;Landroid/os/Handler;)V

    .line 89
    iget-object v0, p0, Landroid/print/PrintServicesLoader;->mPrintManager:Landroid/print/PrintManager;

    iget v1, p0, Landroid/print/PrintServicesLoader;->mSelectionFlags:I

    invoke-virtual {v0, v1}, Landroid/print/PrintManager;->getPrintServices(I)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/print/PrintServicesLoader;->deliverResult(Ljava/lang/Object;)V

    return-void
.end method

.method protected onStopLoading()V
    .locals 2

    .line 94
    iget-object v0, p0, Landroid/print/PrintServicesLoader;->mListener:Landroid/print/PrintManager$PrintServicesChangeListener;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Landroid/print/PrintServicesLoader;->mPrintManager:Landroid/print/PrintManager;

    iget-object v1, p0, Landroid/print/PrintServicesLoader;->mListener:Landroid/print/PrintManager$PrintServicesChangeListener;

    invoke-virtual {v0, v1}, Landroid/print/PrintManager;->removePrintServicesChangeListener(Landroid/print/PrintManager$PrintServicesChangeListener;)V

    const/4 v0, 0x0

    .line 96
    iput-object v0, p0, Landroid/print/PrintServicesLoader;->mListener:Landroid/print/PrintManager$PrintServicesChangeListener;

    .line 99
    :cond_0
    iget-object p0, p0, Landroid/print/PrintServicesLoader;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method
