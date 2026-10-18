.class Lcom/yftech/vehicle/internal/CarManager$SignalReceiverHolder;
.super Ljava/lang/Object;
.source "CarManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/CarManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SignalReceiverHolder"
.end annotation


# instance fields
.field method:Ljava/lang/reflect/Method;

.field needSignalId:Z

.field paramType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field receiver:Ljava/lang/ref/Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/Reference<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/yftech/vehicle/internal/CarManager;

.field valueOfMethod:Ljava/lang/reflect/Method;

.field valueToEnabledState:Z


# direct methods
.method constructor <init>(Lcom/yftech/vehicle/internal/CarManager;Ljava/lang/Object;Ljava/lang/reflect/Method;Ljava/lang/Class;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/Class<",
            "*>;ZZ)V"
        }
    .end annotation

    .line 517
    iput-object p1, p0, Lcom/yftech/vehicle/internal/CarManager$SignalReceiverHolder;->this$0:Lcom/yftech/vehicle/internal/CarManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 518
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/yftech/vehicle/internal/CarManager$SignalReceiverHolder;->receiver:Ljava/lang/ref/Reference;

    .line 519
    iput-object p3, p0, Lcom/yftech/vehicle/internal/CarManager$SignalReceiverHolder;->method:Ljava/lang/reflect/Method;

    .line 520
    iput-object p4, p0, Lcom/yftech/vehicle/internal/CarManager$SignalReceiverHolder;->paramType:Ljava/lang/Class;

    .line 521
    iput-boolean p5, p0, Lcom/yftech/vehicle/internal/CarManager$SignalReceiverHolder;->needSignalId:Z

    .line 522
    iput-boolean p6, p0, Lcom/yftech/vehicle/internal/CarManager$SignalReceiverHolder;->valueToEnabledState:Z

    .line 523
    invoke-virtual {p4}, Ljava/lang/Class;->isEnum()Z

    move-result p1

    if-nez p1, :cond_0

    const-class p1, Lcom/yftech/vehicle/internal/adapter/ICarKey$CarKeyEvent;

    if-eq p4, p1, :cond_0

    const-class p1, Lcom/yftech/vehicle/internal/adapter/ICarMisc$KeyTestEvent;

    if-eq p4, p1, :cond_0

    const-class p1, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ErrorCodeInfo;

    if-eq p4, p1, :cond_0

    const-class p1, Lcom/yftech/vehicle/internal/adapter/ICarMisc$DeviceNode;

    if-eq p4, p1, :cond_0

    const-class p1, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$SetItemUnitInfo;

    if-eq p4, p1, :cond_0

    const-class p1, Lcom/yftech/vehicle/internal/adapter/ICarBsp$DisplayDtc;

    if-eq p4, p1, :cond_0

    const-class p1, Lcom/yftech/vehicle/internal/project/IProject$PersonalMemoryInfo;

    if-ne p4, p1, :cond_1

    :cond_0
    const/4 p1, 0x0

    const/4 p2, 0x1

    :try_start_0
    const-string/jumbo p3, "valueOf"

    .line 532
    new-array p5, p2, [Ljava/lang/Class;

    sget-object p6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object p6, p5, p1

    invoke-virtual {p4, p3, p5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p3

    iput-object p3, p0, Lcom/yftech/vehicle/internal/CarManager$SignalReceiverHolder;->valueOfMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :try_start_1
    const-string/jumbo p3, "valueOf"

    .line 536
    new-array p2, p2, [Ljava/lang/Class;

    const-class p5, [B

    aput-object p5, p2, p1

    invoke-virtual {p4, p3, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/vehicle/internal/CarManager$SignalReceiverHolder;->valueOfMethod:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    const-string p1, "CarManager"

    const-string p2, "SignalReceiverHolder<init> valueOf byte[] error"

    .line 538
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 557
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    .line 561
    :cond_2
    check-cast p1, Lcom/yftech/vehicle/internal/CarManager$SignalReceiverHolder;

    .line 562
    iget-object v2, p0, Lcom/yftech/vehicle/internal/CarManager$SignalReceiverHolder;->receiver:Ljava/lang/ref/Reference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_3

    .line 563
    iget-object v2, p1, Lcom/yftech/vehicle/internal/CarManager$SignalReceiverHolder;->receiver:Ljava/lang/ref/Reference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    return v1

    .line 564
    :cond_3
    iget-object v2, p0, Lcom/yftech/vehicle/internal/CarManager$SignalReceiverHolder;->receiver:Ljava/lang/ref/Reference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p1, Lcom/yftech/vehicle/internal/CarManager$SignalReceiverHolder;->receiver:Ljava/lang/ref/Reference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 568
    :cond_4
    iget-object v2, p0, Lcom/yftech/vehicle/internal/CarManager$SignalReceiverHolder;->method:Ljava/lang/reflect/Method;

    if-nez v2, :cond_5

    .line 569
    iget-object p0, p1, Lcom/yftech/vehicle/internal/CarManager$SignalReceiverHolder;->method:Ljava/lang/reflect/Method;

    if-eqz p0, :cond_6

    return v1

    .line 570
    :cond_5
    iget-object p0, p0, Lcom/yftech/vehicle/internal/CarManager$SignalReceiverHolder;->method:Ljava/lang/reflect/Method;

    iget-object p1, p1, Lcom/yftech/vehicle/internal/CarManager$SignalReceiverHolder;->method:Ljava/lang/reflect/Method;

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    return v1

    :cond_6
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 548
    iget-object v0, p0, Lcom/yftech/vehicle/internal/CarManager$SignalReceiverHolder;->receiver:Ljava/lang/ref/Reference;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/yftech/vehicle/internal/CarManager$SignalReceiverHolder;->receiver:Ljava/lang/ref/Reference;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/2addr v0, v2

    .line 549
    iget-object v2, p0, Lcom/yftech/vehicle/internal/CarManager$SignalReceiverHolder;->method:Ljava/lang/reflect/Method;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/yftech/vehicle/internal/CarManager$SignalReceiverHolder;->method:Ljava/lang/reflect/Method;

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 579
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SignalReceiverHolder{receiver="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yftech/vehicle/internal/CarManager$SignalReceiverHolder;->receiver:Ljava/lang/ref/Reference;

    .line 580
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", method="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/yftech/vehicle/internal/CarManager$SignalReceiverHolder;->method:Ljava/lang/reflect/Method;

    .line 581
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
