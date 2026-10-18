.class Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal$2;
.super Ljava/lang/Object;
.source "MediaDataManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;


# direct methods
.method constructor <init>(Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;)V
    .locals 0

    .line 782
    iput-object p1, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal$2;->this$0:Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    const-string v0, "MediaDataManager"

    const-string v1, "binderDied: com.yf.media.scanner killing"

    .line 785
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal$2;->this$0:Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;

    invoke-static {v0}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->access$4800(Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 787
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal$2;->this$0:Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;

    iget-object v1, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal$2;->this$0:Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;

    invoke-static {v1}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->access$4800(Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;)Landroid/content/Context;

    move-result-object v1

    iget-object p0, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal$2;->this$0:Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;

    invoke-static {p0}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->access$4700(Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;)Lcom/yftech/car/widget/media/manager/MediaDataManager$InitCallback;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->access$4900(Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;Landroid/content/Context;Lcom/yftech/car/widget/media/manager/MediaDataManager$InitCallback;)V

    goto :goto_0

    .line 789
    :cond_0
    iget-object p0, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal$2;->this$0:Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;

    invoke-static {p0}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->access$5000(Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;)Z

    :goto_0
    return-void
.end method
