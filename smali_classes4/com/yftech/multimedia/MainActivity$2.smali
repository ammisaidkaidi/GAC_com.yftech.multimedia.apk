.class Lcom/yftech/multimedia/MainActivity$2;
.super Landroid/os/Handler;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/multimedia/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/multimedia/MainActivity;


# direct methods
.method constructor <init>(Lcom/yftech/multimedia/MainActivity;Landroid/os/Looper;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/yftech/multimedia/MainActivity$2;->this$0:Lcom/yftech/multimedia/MainActivity;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 88
    iget p0, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x3e8

    if-ne p0, v0, :cond_2

    .line 90
    iget p0, p1, Landroid/os/Message;->arg1:I

    const/4 p1, 0x0

    const/4 v0, 0x1

    if-nez p0, :cond_0

    move p0, v0

    goto :goto_0

    :cond_0
    move p0, p1

    :goto_0
    if-eqz p0, :cond_1

    const-string p0, "onDeleteSuccess"

    .line 93
    invoke-static {p0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 94
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p0

    new-instance p1, Lcom/yftech/libgallery/event/PictureDeleteResultEvent;

    invoke-direct {p1, v0}, Lcom/yftech/libgallery/event/PictureDeleteResultEvent;-><init>(Z)V

    invoke-virtual {p0, p1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p0, "onDeleteError"

    .line 98
    invoke-static {p0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 99
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p0

    new-instance v0, Lcom/yftech/libgallery/event/PictureDeleteResultEvent;

    invoke-direct {v0, p1}, Lcom/yftech/libgallery/event/PictureDeleteResultEvent;-><init>(Z)V

    invoke-virtual {p0, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_2
    :goto_1
    return-void
.end method
