.class Lcom/yftech/vehicle/internal/CarManager;
.super Ljava/lang/Object;
.source "CarManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/vehicle/internal/CarManager$SignalReceiverHolder;,
        Lcom/yftech/vehicle/internal/CarManager$SignalCallback;
    }
.end annotation


# static fields
.field private static final SERVICE_NAME:Ljava/lang/String; = "yfcarservice"

.field private static final TAG:Ljava/lang/String; = "CarManager"

.field private static mService:Lcom/yftech/vehicle/internal/ICarService;

.field private static sMe:Lcom/yftech/vehicle/internal/CarManager;


# instance fields
.field private mCallback:Lcom/yftech/vehicle/internal/CarManager$SignalCallback;

.field private mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private mL:[B

.field private mSignalReceivers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/yftech/vehicle/internal/CarManager$SignalReceiverHolder;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 47
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/yftech/vehicle/internal/CarManager;->mL:[B

    .line 454
    new-instance v0, Lcom/yftech/vehicle/internal/CarManager$1;

    invoke-direct {v0, p0}, Lcom/yftech/vehicle/internal/CarManager$1;-><init>(Lcom/yftech/vehicle/internal/CarManager;)V

    iput-object v0, p0, Lcom/yftech/vehicle/internal/CarManager;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/yftech/vehicle/internal/CarManager;->mSignalReceivers:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$100()Lcom/yftech/vehicle/internal/ICarService;
    .locals 1

    .line 37
    sget-object v0, Lcom/yftech/vehicle/internal/CarManager;->mService:Lcom/yftech/vehicle/internal/ICarService;

    return-object v0
.end method

.method static synthetic access$102(Lcom/yftech/vehicle/internal/ICarService;)Lcom/yftech/vehicle/internal/ICarService;
    .locals 0

    .line 37
    sput-object p0, Lcom/yftech/vehicle/internal/CarManager;->mService:Lcom/yftech/vehicle/internal/ICarService;

    return-object p0
.end method

.method static synthetic access$200(Lcom/yftech/vehicle/internal/CarManager;)Lcom/yftech/vehicle/internal/ICarService;
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/yftech/vehicle/internal/CarManager;->getService()Lcom/yftech/vehicle/internal/ICarService;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/yftech/vehicle/internal/CarManager;Ljava/util/Map;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/yftech/vehicle/internal/CarManager;->newOrRetryRegisterSignalCallback(Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$400(Lcom/yftech/vehicle/internal/CarManager;I[B)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/yftech/vehicle/internal/CarManager;->sendSignalCallback(I[B)V

    return-void
.end method

.method static synthetic access$500(Lcom/yftech/vehicle/internal/CarManager;ILjava/lang/Number;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/yftech/vehicle/internal/CarManager;->sendSignalCallback(ILjava/lang/Number;)V

    return-void
.end method

.method public static declared-synchronized get()Lcom/yftech/vehicle/internal/CarManager;
    .locals 2

    const-class v0, Lcom/yftech/vehicle/internal/CarManager;

    monitor-enter v0

    .line 59
    :try_start_0
    sget-object v1, Lcom/yftech/vehicle/internal/CarManager;->sMe:Lcom/yftech/vehicle/internal/CarManager;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/yftech/vehicle/internal/CarManager;->sMe:Lcom/yftech/vehicle/internal/CarManager;

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/yftech/vehicle/internal/CarManager;

    invoke-direct {v1}, Lcom/yftech/vehicle/internal/CarManager;-><init>()V

    sput-object v1, Lcom/yftech/vehicle/internal/CarManager;->sMe:Lcom/yftech/vehicle/internal/CarManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getService()Lcom/yftech/vehicle/internal/ICarService;
    .locals 1

    const/4 v0, 0x0

    .line 433
    invoke-direct {p0, v0}, Lcom/yftech/vehicle/internal/CarManager;->getService(Z)Lcom/yftech/vehicle/internal/ICarService;

    move-result-object p0

    return-object p0
.end method

.method private getService(Z)Lcom/yftech/vehicle/internal/ICarService;
    .locals 3

    .line 437
    iget-object v0, p0, Lcom/yftech/vehicle/internal/CarManager;->mL:[B

    monitor-enter v0

    .line 438
    :try_start_0
    sget-object v1, Lcom/yftech/vehicle/internal/CarManager;->mService:Lcom/yftech/vehicle/internal/ICarService;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x0

    .line 439
    sput-object p1, Lcom/yftech/vehicle/internal/CarManager;->mService:Lcom/yftech/vehicle/internal/ICarService;

    const-string/jumbo p1, "yfcarservice"

    .line 440
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    .line 443
    :try_start_1
    iget-object p0, p0, Lcom/yftech/vehicle/internal/CarManager;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v1, 0x0

    invoke-interface {p1, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 444
    invoke-static {p1}, Lcom/yftech/vehicle/internal/ICarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/yftech/vehicle/internal/ICarService;

    move-result-object p0

    sput-object p0, Lcom/yftech/vehicle/internal/CarManager;->mService:Lcom/yftech/vehicle/internal/ICarService;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_2
    const-string p1, "CarManager"

    .line 446
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getService->linkToDeath error, e->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 451
    sget-object p0, Lcom/yftech/vehicle/internal/CarManager;->mService:Lcom/yftech/vehicle/internal/ICarService;

    return-object p0

    :catchall_0
    move-exception p0

    .line 450
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method private getSignalValueInner(I)[B
    .locals 3

    .line 251
    :try_start_0
    invoke-direct {p0}, Lcom/yftech/vehicle/internal/CarManager;->getService()Lcom/yftech/vehicle/internal/ICarService;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/yftech/vehicle/internal/ICarService;->getSignalValue(I)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "CarManager"

    const-string v2, "getSignalValue()"

    .line 253
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x1

    .line 255
    :try_start_1
    invoke-direct {p0, v1}, Lcom/yftech/vehicle/internal/CarManager;->getService(Z)Lcom/yftech/vehicle/internal/ICarService;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/yftech/vehicle/internal/ICarService;->getSignalValue(I)[B

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    const-string p0, "CarManager"

    const-string p1, "getSignalValue() retry"

    .line 257
    invoke-static {p0, p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private getSignalsValueInner([I)[B
    .locals 3

    .line 270
    :try_start_0
    invoke-direct {p0}, Lcom/yftech/vehicle/internal/CarManager;->getService()Lcom/yftech/vehicle/internal/ICarService;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/yftech/vehicle/internal/ICarService;->getSignalsValue([I)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "CarManager"

    const-string v2, "getSignalsValue()"

    .line 272
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x1

    .line 274
    :try_start_1
    invoke-direct {p0, v1}, Lcom/yftech/vehicle/internal/CarManager;->getService(Z)Lcom/yftech/vehicle/internal/ICarService;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/yftech/vehicle/internal/ICarService;->getSignalsValue([I)[B

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    const-string p0, "CarManager"

    const-string p1, "getSignalsValue() retry"

    .line 276
    invoke-static {p0, p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private isObjectsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 500
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static declared-synchronized isServiceConnected()Z
    .locals 2

    const-class v0, Lcom/yftech/vehicle/internal/CarManager;

    monitor-enter v0

    .line 67
    :try_start_0
    sget-object v1, Lcom/yftech/vehicle/internal/CarManager;->mService:Lcom/yftech/vehicle/internal/ICarService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private isSystemCalss(Ljava/lang/String;)Z
    .locals 0

    const-string p0, "java."

    .line 504
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "javax."

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "android."

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private newOrRetryRegisterSignalCallback(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/yftech/vehicle/internal/CarManager$SignalReceiverHolder;",
            ">;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 376
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    goto :goto_0

    .line 378
    :cond_0
    iget-object v0, p0, Lcom/yftech/vehicle/internal/CarManager;->mSignalReceivers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    :goto_0
    if-lez v0, :cond_4

    const/4 v1, 0x0

    .line 382
    new-array v0, v0, [I

    if-eqz p1, :cond_1

    .line 383
    :goto_1
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    goto :goto_2

    :cond_1
    iget-object p1, p0, Lcom/yftech/vehicle/internal/CarManager;->mSignalReceivers:Ljava/util/Map;

    goto :goto_1

    .line 384
    :goto_2
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v3, v1, 0x1

    .line 385
    aput v2, v0, v1

    move v1, v3

    goto :goto_3

    .line 387
    :cond_2
    iget-object p1, p0, Lcom/yftech/vehicle/internal/CarManager;->mCallback:Lcom/yftech/vehicle/internal/CarManager$SignalCallback;

    if-nez p1, :cond_3

    .line 388
    new-instance p1, Lcom/yftech/vehicle/internal/CarManager$SignalCallback;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1}, Lcom/yftech/vehicle/internal/CarManager$SignalCallback;-><init>(Lcom/yftech/vehicle/internal/CarManager;Lcom/yftech/vehicle/internal/CarManager$1;)V

    iput-object p1, p0, Lcom/yftech/vehicle/internal/CarManager;->mCallback:Lcom/yftech/vehicle/internal/CarManager$SignalCallback;

    .line 390
    :cond_3
    iget-object p1, p0, Lcom/yftech/vehicle/internal/CarManager;->mCallback:Lcom/yftech/vehicle/internal/CarManager$SignalCallback;

    invoke-direct {p0, p1, v0}, Lcom/yftech/vehicle/internal/CarManager;->registerSignalCallback(Lcom/yftech/vehicle/internal/ISignalCallback;[I)V

    goto :goto_4

    .line 392
    :cond_4
    iget-object p1, p0, Lcom/yftech/vehicle/internal/CarManager;->mCallback:Lcom/yftech/vehicle/internal/CarManager$SignalCallback;

    invoke-direct {p0, p1}, Lcom/yftech/vehicle/internal/CarManager;->unregisterSignalCallback(Lcom/yftech/vehicle/internal/ISignalCallback;)V

    :goto_4
    return-void
.end method

.method private registerSignalCallback(Lcom/yftech/vehicle/internal/ISignalCallback;[I)V
    .locals 3

    .line 403
    :try_start_0
    invoke-direct {p0}, Lcom/yftech/vehicle/internal/CarManager;->getService()Lcom/yftech/vehicle/internal/ICarService;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/yftech/vehicle/internal/ICarService;->registerSignalCallback(Lcom/yftech/vehicle/internal/ISignalCallback;[I)V

    const-string v0, "CarManager"

    .line 404
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerSignalCallback() newOrRetry "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "CarManager"

    const-string/jumbo v2, "registerSignalCallback() newOrRetry "

    .line 406
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x1

    .line 408
    :try_start_1
    invoke-direct {p0, v1}, Lcom/yftech/vehicle/internal/CarManager;->getService(Z)Lcom/yftech/vehicle/internal/ICarService;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/yftech/vehicle/internal/ICarService;->registerSignalCallback(Lcom/yftech/vehicle/internal/ISignalCallback;[I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    const-string p0, "CarManager"

    const-string/jumbo p1, "registerSignalCallback() retry"

    .line 410
    invoke-static {p0, p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private sendSignalCallback(ILjava/lang/Number;)V
    .locals 9

    .line 303
    iget-object p0, p0, Lcom/yftech/vehicle/internal/CarManager;->mSignalReceivers:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 304
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    move v2, v0

    :goto_1
    if-ge v2, v1, :cond_14

    .line 305
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yftech/vehicle/internal/CarManager$SignalReceiverHolder;

    .line 308
    :try_start_0
    iget-boolean v4, v3, Lcom/yftech/vehicle/internal/CarManager$SignalReceiverHolder;->valueToEnabledState:Z

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    .line 309
    invoke-virtual {p2}, Ljava/lang/Number;->byteValue()B

    move-result v4

    if-ne v4, v5, :cond_1

    move v4, v5

    goto :goto_2

    :cond_1
    move v4, v0

    :goto_2
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto/16 :goto_b

    .line 310
    :cond_2
    iget-object v4, v3, Lcom/yftech/vehicle/internal/CarManager$SignalReceiverHolder;->valueOfMethod:Ljava/lang/reflect/Method;

    if-eqz v4, :cond_3

    .line 311
    iget-object v4, v3, Lcom/yftech/vehicle/internal/CarManager$SignalReceiverHolder;->valueOfMethod:Ljava/lang/reflect/Method;

    const/4 v6, 0x0

    new-array v7, v5, [Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v0

    invoke-virtual {v4, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    goto/16 :goto_b

    .line 313
    :cond_3
    iget-object v4, v3, Lcom/yftech/vehicle/internal/CarManager$SignalReceiverHolder;->paramType:Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_12

    iget-object v4, v3, Lcom/yftech/vehicle/internal/CarManager$SignalReceiverHolder;->paramType:Ljava/lang/Class;

    const-class v6, Ljava/lang/Integer;

    .line 314
    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto/16 :goto_a

    .line 316
    :cond_4
    iget-object v4, v3, Lcom/yftech/vehicle/internal/CarManager$SignalReceiverHolder;->paramType:Ljava/lang/Class;

    sget-object v6, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    iget-object v4, v3, Lcom/yftech/vehicle/internal/CarManager$SignalReceiverHolder;->paramType:Ljava/lang/Class;

    const-class v6, Ljava/lang/Byte;

    .line 317
    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto/16 :goto_9

    .line 319
    :cond_5
    iget-object v4, v3, Lcom/yftech/vehicle/internal/CarManager$SignalReceiverHolder;->paramType:Ljava/lang/Class;

    sget-object v6, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_10

    iget-object v4, v3, Lcom/yftech/vehicle/internal/CarManager$SignalReceiverHolder;->paramType:Ljava/lang/Class;

    const-class v6, Ljava/lang/Short;

    .line 320
    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    goto/16 :goto_8

    .line 322
    :cond_6
    iget-object v4, v3, Lcom/yftech/vehicle/internal/CarManager$SignalReceiverHolder;->paramType:Ljava/lang/Class;

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f

    iget-object v4, v3, Lcom/yftech/vehicle/internal/CarManager$SignalReceiverHolder;->paramType:Ljava/lang/Class;

    const-class v6, Ljava/lang/Long;

    .line 323
    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    goto/16 :goto_7

    .line 325
    :cond_7
    iget-object v4, v3, Lcom/yftech/vehicle/internal/CarManager$SignalReceiverHolder;->paramType:Ljava/lang/Class;

    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    iget-object v4, v3, Lcom/yftech/vehicle/internal/CarManager$SignalReceiverHolder;->paramType:Ljava/lang/Class;

    const-class v6, Ljava/lang/Float;

    .line 326
    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    goto :goto_6

    .line 328
    :cond_8
    iget-object v4, v3, Lcom/yftech/vehicle/internal/CarManager$SignalReceiverHolder;->paramType:Ljava/lang/Class;

    sget-object v6, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    iget-object v4, v3, Lcom/yftech/vehicle/internal/CarManager$SignalReceiverHolder;->paramType:Ljava/lang/Class;

    const-class v6, Ljava/lang/Double;

    .line 329
    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    goto :goto_5

    .line 331
    :cond_9
    iget-object v4, v3, Lcom/yftech/vehicle/internal/CarManager$SignalReceiverHolder;->paramType:Ljava/lang/Class;

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    iget-object v4, v3, Lcom/yftech/vehicle/internal/CarManager$SignalReceiverHolder;->paramType:Ljava/lang/Class;

    const-class v6, Ljava/lang/Boolean;

    .line 332
    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    goto :goto_3

    :cond_a
    move-object v4, p2

    goto :goto_b

    .line 333
    :cond_b
    :goto_3
    invoke-virtual {p2}, Ljava/lang/Number;->byteValue()B

    move-result v4

    if-ne v4, v5, :cond_c

    move v4, v5

    goto :goto_4

    :cond_c
    move v4, v0

    :goto_4
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_b

    .line 330
    :cond_d
    :goto_5
    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    goto :goto_b

    .line 327
    :cond_e
    :goto_6
    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    goto :goto_b

    .line 324
    :cond_f
    :goto_7
    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    goto :goto_b

    .line 321
    :cond_10
    :goto_8
    invoke-virtual {p2}, Ljava/lang/Number;->shortValue()S

    move-result v4

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    goto :goto_b

    .line 318
    :cond_11
    :goto_9
    invoke-virtual {p2}, Ljava/lang/Number;->byteValue()B

    move-result v4

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    goto :goto_b

    .line 315
    :cond_12
    :goto_a
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 338
    :goto_b
    iget-boolean v6, v3, Lcom/yftech/vehicle/internal/CarManager$SignalReceiverHolder;->needSignalId:Z

    if-eqz v6, :cond_13

    .line 339
    iget-object v6, v3, Lcom/yftech/vehicle/internal/CarManager$SignalReceiverHolder;->method:Ljava/lang/reflect/Method;

    iget-object v3, v3, Lcom/yftech/vehicle/internal/CarManager$SignalReceiverHolder;->receiver:Ljava/lang/ref/Reference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v0

    aput-object v4, v7, v5

    invoke-virtual {v6, v3, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c

    .line 341
    :cond_13
    iget-object v6, v3, Lcom/yftech/vehicle/internal/CarManager$SignalReceiverHolder;->method:Ljava/lang/reflect/Method;

    iget-object v3, v3, Lcom/yftech/vehicle/internal/CarManager$SignalReceiverHolder;->receiver:Ljava/lang/ref/Reference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v4, v5, v0

    invoke-virtual {v6, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_c

    :catch_0
    move-exception v3

    const-string v4, "CarManager"

    const-string/jumbo v5, "sendSignalCallback() for Number error"

    .line 344
    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_c
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_14
    return-void
.end method

.method private sendSignalCallback(I[B)V
    .locals 9

    .line 350
    iget-object p0, p0, Lcom/yftech/vehicle/internal/CarManager;->mSignalReceivers:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 351
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    move v2, v0

    :goto_1
    if-ge v2, v1, :cond_3

    .line 352
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yftech/vehicle/internal/CarManager$SignalReceiverHolder;

    .line 355
    :try_start_0
    iget-object v4, v3, Lcom/yftech/vehicle/internal/CarManager$SignalReceiverHolder;->valueOfMethod:Ljava/lang/reflect/Method;

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    .line 356
    iget-object v4, v3, Lcom/yftech/vehicle/internal/CarManager$SignalReceiverHolder;->valueOfMethod:Ljava/lang/reflect/Method;

    const/4 v6, 0x0

    new-array v7, v5, [Ljava/lang/Object;

    aput-object p2, v7, v0

    invoke-virtual {v4, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_2

    :cond_1
    move-object v4, p2

    .line 360
    :goto_2
    iget-boolean v6, v3, Lcom/yftech/vehicle/internal/CarManager$SignalReceiverHolder;->needSignalId:Z

    if-eqz v6, :cond_2

    .line 361
    iget-object v6, v3, Lcom/yftech/vehicle/internal/CarManager$SignalReceiverHolder;->method:Ljava/lang/reflect/Method;

    iget-object v3, v3, Lcom/yftech/vehicle/internal/CarManager$SignalReceiverHolder;->receiver:Ljava/lang/ref/Reference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v0

    aput-object v4, v7, v5

    invoke-virtual {v6, v3, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 363
    :cond_2
    iget-object v6, v3, Lcom/yftech/vehicle/internal/CarManager$SignalReceiverHolder;->method:Ljava/lang/reflect/Method;

    iget-object v3, v3, Lcom/yftech/vehicle/internal/CarManager$SignalReceiverHolder;->receiver:Ljava/lang/ref/Reference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v4, v5, v0

    invoke-virtual {v6, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v3

    const-string v4, "CarManager"

    const-string/jumbo v5, "sendSignalCallback() for byte[] error"

    .line 366
    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method private setSignalValueInner(I[B)Z
    .locals 3

    .line 290
    :try_start_0
    invoke-direct {p0}, Lcom/yftech/vehicle/internal/CarManager;->getService()Lcom/yftech/vehicle/internal/ICarService;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/yftech/vehicle/internal/ICarService;->setSignalValue(I[B)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "CarManager"

    const-string/jumbo v2, "setSignalValue()"

    .line 292
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x1

    .line 294
    :try_start_1
    invoke-direct {p0, v1}, Lcom/yftech/vehicle/internal/CarManager;->getService(Z)Lcom/yftech/vehicle/internal/ICarService;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/yftech/vehicle/internal/ICarService;->setSignalValue(I[B)Z

    move-result p0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    return p0

    :catch_1
    const-string p0, "CarManager"

    const-string/jumbo p1, "setSignalValue() retry"

    .line 296
    invoke-static {p0, p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method private unregisterSignalCallback(Lcom/yftech/vehicle/internal/ISignalCallback;)V
    .locals 3

    .line 421
    :try_start_0
    invoke-direct {p0}, Lcom/yftech/vehicle/internal/CarManager;->getService()Lcom/yftech/vehicle/internal/ICarService;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/yftech/vehicle/internal/ICarService;->unregisterSignalCallback(Lcom/yftech/vehicle/internal/ISignalCallback;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "CarManager"

    const-string/jumbo v2, "unregisterSignalCallback()"

    .line 423
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x1

    .line 425
    :try_start_1
    invoke-direct {p0, v1}, Lcom/yftech/vehicle/internal/CarManager;->getService(Z)Lcom/yftech/vehicle/internal/ICarService;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/yftech/vehicle/internal/ICarService;->unregisterSignalCallback(Lcom/yftech/vehicle/internal/ISignalCallback;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    const-string p0, "CarManager"

    const-string/jumbo p1, "unregisterSignalCallback() retry"

    .line 427
    invoke-static {p0, p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public getSignalDataValue(I)[B
    .locals 1

    .line 98
    new-instance v0, Lcom/yftech/vehicle/internal/CarData;

    invoke-direct {p0, p1}, Lcom/yftech/vehicle/internal/CarManager;->getSignalValueInner(I)[B

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yftech/vehicle/internal/CarData;-><init>([B)V

    invoke-virtual {v0}, Lcom/yftech/vehicle/internal/CarData;->dataValue()[B

    move-result-object p0

    return-object p0
.end method

.method public getSignalValue(I)Ljava/lang/Number;
    .locals 1

    .line 74
    new-instance v0, Lcom/yftech/vehicle/internal/CarData;

    invoke-direct {p0, p1}, Lcom/yftech/vehicle/internal/CarManager;->getSignalValueInner(I)[B

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yftech/vehicle/internal/CarData;-><init>([B)V

    invoke-virtual {v0}, Lcom/yftech/vehicle/internal/CarData;->numberValue()Ljava/lang/Number;

    move-result-object p0

    return-object p0
.end method

.method public getSignalsValue([I)[Ljava/lang/Number;
    .locals 2

    .line 81
    invoke-direct {p0, p1}, Lcom/yftech/vehicle/internal/CarManager;->getSignalsValueInner([I)[B

    move-result-object p0

    if-eqz p0, :cond_1

    .line 82
    array-length v0, p0

    array-length p1, p1

    if-ne v0, p1, :cond_1

    .line 83
    array-length p1, p0

    new-array p1, p1, [Ljava/lang/Number;

    .line 84
    new-instance v0, Lcom/yftech/vehicle/internal/CarData;

    invoke-direct {v0, p0}, Lcom/yftech/vehicle/internal/CarData;-><init>([B)V

    const/4 p0, 0x0

    .line 85
    :goto_0
    array-length v1, p1

    if-ge p0, v1, :cond_0

    .line 86
    invoke-virtual {v0}, Lcom/yftech/vehicle/internal/CarData;->numberValue()Ljava/lang/Number;

    move-result-object v1

    aput-object v1, p1, p0

    .line 87
    invoke-virtual {v0}, Lcom/yftech/vehicle/internal/CarData;->next()Lcom/yftech/vehicle/internal/CarData;

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return-object p1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public registerReceiver(Ljava/lang/Object;)V
    .locals 21

    move-object/from16 v7, p0

    .line 161
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 162
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    move-object v9, v0

    :goto_0
    if-eqz v9, :cond_a

    .line 163
    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Lcom/yftech/vehicle/internal/CarManager;->isSystemCalss(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 164
    invoke-virtual {v9}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v10

    const/4 v11, 0x0

    move v12, v11

    .line 165
    :goto_1
    array-length v0, v10

    if-ge v12, v0, :cond_9

    .line 166
    aget-object v13, v10, v12

    .line 167
    const-class v0, Lcom/yftech/vehicle/internal/SignalReceiver;

    invoke-virtual {v13, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lcom/yftech/vehicle/internal/SignalReceiver;

    if-eqz v14, :cond_8

    .line 169
    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    .line 170
    invoke-interface {v14}, Lcom/yftech/vehicle/internal/SignalReceiver;->signalId()I

    move-result v1

    .line 171
    invoke-interface {v14}, Lcom/yftech/vehicle/internal/SignalReceiver;->signalsIdArray()[I

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 172
    array-length v4, v2

    if-lez v4, :cond_0

    aget v4, v2, v11

    if-ltz v4, :cond_0

    move v15, v3

    goto :goto_2

    :cond_0
    move v15, v11

    :goto_2
    if-nez v15, :cond_1

    if-ltz v1, :cond_1

    .line 176
    new-array v2, v3, [I

    aput v1, v2, v11

    :cond_1
    move-object v6, v2

    if-eqz v0, :cond_8

    if-eqz v6, :cond_8

    .line 178
    array-length v1, v6

    if-lez v1, :cond_8

    array-length v1, v0

    if-eqz v15, :cond_2

    const/4 v3, 0x2

    :cond_2
    if-ne v1, v3, :cond_8

    .line 182
    aget-object v16, v0, v15

    move v5, v11

    .line 183
    :goto_3
    array-length v0, v6

    if-ge v5, v0, :cond_8

    .line 184
    aget v4, v6, v5

    const/4 v0, -0x1

    if-ne v4, v0, :cond_3

    move/from16 v19, v5

    move-object/from16 v20, v6

    goto :goto_4

    .line 188
    :cond_3
    new-instance v3, Lcom/yftech/vehicle/internal/CarManager$SignalReceiverHolder;

    .line 189
    invoke-interface {v14}, Lcom/yftech/vehicle/internal/SignalReceiver;->valueToEnabledState()Z

    move-result v17

    move-object v0, v3

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v11, v3

    move-object v3, v13

    move/from16 v18, v4

    move-object/from16 v4, v16

    move/from16 v19, v5

    move v5, v15

    move-object/from16 v20, v6

    move/from16 v6, v17

    invoke-direct/range {v0 .. v6}, Lcom/yftech/vehicle/internal/CarManager$SignalReceiverHolder;-><init>(Lcom/yftech/vehicle/internal/CarManager;Ljava/lang/Object;Ljava/lang/reflect/Method;Ljava/lang/Class;ZZ)V

    .line 191
    iget-object v0, v7, Lcom/yftech/vehicle/internal/CarManager;->mSignalReceivers:Ljava/util/Map;

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_4

    .line 192
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 193
    :cond_4
    invoke-interface {v0, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    :cond_5
    iget-object v1, v7, Lcom/yftech/vehicle/internal/CarManager;->mSignalReceivers:Ljava/util/Map;

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_6

    .line 199
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 201
    :cond_6
    invoke-interface {v0, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 203
    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    :cond_7
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v8, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4
    add-int/lit8 v5, v19, 0x1

    move-object/from16 v6, v20

    const/4 v11, 0x0

    goto :goto_3

    :cond_8
    add-int/lit8 v12, v12, 0x1

    const/4 v11, 0x0

    goto/16 :goto_1

    .line 211
    :cond_9
    invoke-virtual {v9}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v9

    goto/16 :goto_0

    .line 214
    :cond_a
    invoke-direct {v7, v8}, Lcom/yftech/vehicle/internal/CarManager;->newOrRetryRegisterSignalCallback(Ljava/util/Map;)V

    return-void
.end method

.method public setSignalValue(IB)Z
    .locals 1

    .line 105
    new-instance v0, Lcom/yftech/vehicle/internal/CarData;

    invoke-direct {v0, p2}, Lcom/yftech/vehicle/internal/CarData;-><init>(B)V

    invoke-virtual {v0}, Lcom/yftech/vehicle/internal/CarData;->getBytes()[B

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/yftech/vehicle/internal/CarManager;->setSignalValueInner(I[B)Z

    move-result p0

    return p0
.end method

.method public setSignalValue(ID)Z
    .locals 1

    .line 140
    new-instance v0, Lcom/yftech/vehicle/internal/CarData;

    invoke-direct {v0, p2, p3}, Lcom/yftech/vehicle/internal/CarData;-><init>(D)V

    invoke-virtual {v0}, Lcom/yftech/vehicle/internal/CarData;->getBytes()[B

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/yftech/vehicle/internal/CarManager;->setSignalValueInner(I[B)Z

    move-result p0

    return p0
.end method

.method public setSignalValue(IF)Z
    .locals 1

    .line 133
    new-instance v0, Lcom/yftech/vehicle/internal/CarData;

    invoke-direct {v0, p2}, Lcom/yftech/vehicle/internal/CarData;-><init>(F)V

    invoke-virtual {v0}, Lcom/yftech/vehicle/internal/CarData;->getBytes()[B

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/yftech/vehicle/internal/CarManager;->setSignalValueInner(I[B)Z

    move-result p0

    return p0
.end method

.method public setSignalValue(II)Z
    .locals 1

    .line 119
    new-instance v0, Lcom/yftech/vehicle/internal/CarData;

    invoke-direct {v0, p2}, Lcom/yftech/vehicle/internal/CarData;-><init>(I)V

    invoke-virtual {v0}, Lcom/yftech/vehicle/internal/CarData;->getBytes()[B

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/yftech/vehicle/internal/CarManager;->setSignalValueInner(I[B)Z

    move-result p0

    return p0
.end method

.method public setSignalValue(IJ)Z
    .locals 1

    .line 126
    new-instance v0, Lcom/yftech/vehicle/internal/CarData;

    invoke-direct {v0, p2, p3}, Lcom/yftech/vehicle/internal/CarData;-><init>(J)V

    invoke-virtual {v0}, Lcom/yftech/vehicle/internal/CarData;->getBytes()[B

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/yftech/vehicle/internal/CarManager;->setSignalValueInner(I[B)Z

    move-result p0

    return p0
.end method

.method public setSignalValue(IS)Z
    .locals 1

    .line 112
    new-instance v0, Lcom/yftech/vehicle/internal/CarData;

    invoke-direct {v0, p2}, Lcom/yftech/vehicle/internal/CarData;-><init>(S)V

    invoke-virtual {v0}, Lcom/yftech/vehicle/internal/CarData;->getBytes()[B

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/yftech/vehicle/internal/CarManager;->setSignalValueInner(I[B)Z

    move-result p0

    return p0
.end method

.method public setSignalValue(IZ)Z
    .locals 0

    int-to-byte p2, p2

    .line 147
    invoke-virtual {p0, p1, p2}, Lcom/yftech/vehicle/internal/CarManager;->setSignalValue(IB)Z

    move-result p0

    return p0
.end method

.method public setSignalValue(I[B)Z
    .locals 2

    .line 154
    new-instance v0, Lcom/yftech/vehicle/internal/CarData;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Lcom/yftech/vehicle/internal/CarData;-><init>([BZ)V

    invoke-virtual {v0}, Lcom/yftech/vehicle/internal/CarData;->getBytes()[B

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/yftech/vehicle/internal/CarManager;->setSignalValueInner(I[B)Z

    move-result p0

    return p0
.end method

.method public unregisterReceiver(Ljava/lang/Object;)V
    .locals 7

    .line 221
    iget-object v0, p0, Lcom/yftech/vehicle/internal/CarManager;->mSignalReceivers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 222
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 223
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_4

    .line 225
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 226
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 227
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 228
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yftech/vehicle/internal/CarManager$SignalReceiverHolder;

    .line 229
    iget-object v5, v4, Lcom/yftech/vehicle/internal/CarManager$SignalReceiverHolder;->receiver:Ljava/lang/ref/Reference;

    invoke-virtual {v5}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v5

    .line 230
    invoke-direct {p0, v5, p1}, Lcom/yftech/vehicle/internal/CarManager;->isObjectsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    if-nez v5, :cond_1

    .line 231
    :cond_2
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 234
    :cond_3
    invoke-interface {v1, v2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    :cond_4
    if-eqz v1, :cond_5

    .line 236
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 237
    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_6
    const/4 p1, 0x0

    .line 241
    invoke-direct {p0, p1}, Lcom/yftech/vehicle/internal/CarManager;->newOrRetryRegisterSignalCallback(Ljava/util/Map;)V

    return-void
.end method
