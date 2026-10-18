.class Lcom/yftech/vehicle/internal/CarManager$1;
.super Ljava/lang/Object;
.source "CarManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/CarManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/vehicle/internal/CarManager;


# direct methods
.method constructor <init>(Lcom/yftech/vehicle/internal/CarManager;)V
    .locals 0

    .line 454
    iput-object p1, p0, Lcom/yftech/vehicle/internal/CarManager$1;->this$0:Lcom/yftech/vehicle/internal/CarManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 5

    .line 458
    invoke-static {}, Lcom/yftech/vehicle/internal/CarManager;->access$100()Lcom/yftech/vehicle/internal/ICarService;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 459
    invoke-static {}, Lcom/yftech/vehicle/internal/CarManager;->access$100()Lcom/yftech/vehicle/internal/ICarService;

    move-result-object v0

    invoke-interface {v0}, Lcom/yftech/vehicle/internal/ICarService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 460
    invoke-static {v1}, Lcom/yftech/vehicle/internal/CarManager;->access$102(Lcom/yftech/vehicle/internal/ICarService;)Lcom/yftech/vehicle/internal/ICarService;

    :cond_0
    :goto_0
    const/4 v0, 0x2

    if-gt v2, v0, :cond_3

    .line 465
    :try_start_0
    invoke-static {}, Lcom/yftech/vehicle/internal/CarManager;->access$100()Lcom/yftech/vehicle/internal/ICarService;

    move-result-object v0

    if-nez v0, :cond_3

    add-int/lit8 v2, v2, 0x1

    const-wide/16 v3, 0x3e8

    .line 467
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    .line 468
    iget-object v0, p0, Lcom/yftech/vehicle/internal/CarManager$1;->this$0:Lcom/yftech/vehicle/internal/CarManager;

    invoke-static {v0}, Lcom/yftech/vehicle/internal/CarManager;->access$200(Lcom/yftech/vehicle/internal/CarManager;)Lcom/yftech/vehicle/internal/ICarService;

    const-string v0, "CarManager"

    .line 469
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "service dead ,mDeathRecipient-> try conn 1000ms-> count ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mService="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/yftech/vehicle/internal/CarManager;->access$100()Lcom/yftech/vehicle/internal/ICarService;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-static {}, Lcom/yftech/vehicle/internal/CarManager;->access$100()Lcom/yftech/vehicle/internal/ICarService;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_1

    :cond_1
    const-string/jumbo v4, "null"

    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    invoke-static {}, Lcom/yftech/vehicle/internal/CarManager;->access$100()Lcom/yftech/vehicle/internal/ICarService;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 473
    :cond_2
    iget-object v0, p0, Lcom/yftech/vehicle/internal/CarManager$1;->this$0:Lcom/yftech/vehicle/internal/CarManager;

    invoke-static {v0, v1}, Lcom/yftech/vehicle/internal/CarManager;->access$300(Lcom/yftech/vehicle/internal/CarManager;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "CarManager"

    const-string/jumbo v0, "service dead , try conn sleep 1000ms error !"

    .line 476
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method
