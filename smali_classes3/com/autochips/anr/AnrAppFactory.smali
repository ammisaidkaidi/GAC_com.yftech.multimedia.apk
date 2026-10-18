.class public Lcom/autochips/anr/AnrAppFactory;
.super Ljava/lang/Object;
.source "AnrAppFactory.java"


# static fields
.field private static lock:Ljava/lang/Object;

.field private static sInstance:Lcom/autochips/anr/AnrAppFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/autochips/anr/AnrAppFactory;->lock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/autochips/anr/AnrAppFactory;
    .locals 5

    .line 45
    sget-object v0, Lcom/autochips/anr/AnrAppFactory;->sInstance:Lcom/autochips/anr/AnrAppFactory;

    if-nez v0, :cond_1

    .line 46
    sget-object v0, Lcom/autochips/anr/AnrAppFactory;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 47
    :try_start_0
    sget-object v1, Lcom/autochips/anr/AnrAppFactory;->sInstance:Lcom/autochips/anr/AnrAppFactory;

    if-nez v1, :cond_0

    const-string v1, "com.autichips.anr.AnrAppFactoryImpl"

    const-string v2, "/system/framework/autochips-framework.jar"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    :try_start_1
    new-instance v3, Ldalvik/system/PathClassLoader;

    const-class v4, Lcom/autochips/anr/AnrAppFactory;

    .line 53
    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    const/4 v2, 0x0

    .line 54
    invoke-static {v1, v2, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    .line 55
    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 56
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/autochips/anr/AnrAppFactory;

    sput-object v1, Lcom/autochips/anr/AnrAppFactory;->sInstance:Lcom/autochips/anr/AnrAppFactory;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 58
    :catch_0
    :try_start_2
    new-instance v1, Lcom/autochips/anr/AnrAppFactory;

    invoke-direct {v1}, Lcom/autochips/anr/AnrAppFactory;-><init>()V

    sput-object v1, Lcom/autochips/anr/AnrAppFactory;->sInstance:Lcom/autochips/anr/AnrAppFactory;

    .line 61
    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 63
    :cond_1
    :goto_1
    sget-object v0, Lcom/autochips/anr/AnrAppFactory;->sInstance:Lcom/autochips/anr/AnrAppFactory;

    return-object v0
.end method


# virtual methods
.method public makeAnrAppManager()Lcom/autochips/anr/AnrAppManager;
    .locals 0

    .line 67
    new-instance p0, Lcom/autochips/anr/AnrAppManager;

    invoke-direct {p0}, Lcom/autochips/anr/AnrAppManager;-><init>()V

    return-object p0
.end method
