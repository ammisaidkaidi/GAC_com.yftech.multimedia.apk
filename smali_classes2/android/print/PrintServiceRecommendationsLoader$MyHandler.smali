.class Landroid/print/PrintServiceRecommendationsLoader$MyHandler;
.super Landroid/os/Handler;
.source "PrintServiceRecommendationsLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/print/PrintServiceRecommendationsLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/print/PrintServiceRecommendationsLoader;


# direct methods
.method public constructor <init>(Landroid/print/PrintServiceRecommendationsLoader;)V
    .locals 0

    .line 109
    iput-object p1, p0, Landroid/print/PrintServiceRecommendationsLoader$MyHandler;->this$0:Landroid/print/PrintServiceRecommendationsLoader;

    .line 110
    invoke-virtual {p1}, Landroid/print/PrintServiceRecommendationsLoader;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 115
    iget-object v0, p0, Landroid/print/PrintServiceRecommendationsLoader$MyHandler;->this$0:Landroid/print/PrintServiceRecommendationsLoader;

    invoke-virtual {v0}, Landroid/print/PrintServiceRecommendationsLoader;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    iget-object p0, p0, Landroid/print/PrintServiceRecommendationsLoader$MyHandler;->this$0:Landroid/print/PrintServiceRecommendationsLoader;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Landroid/print/PrintServiceRecommendationsLoader;->deliverResult(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
