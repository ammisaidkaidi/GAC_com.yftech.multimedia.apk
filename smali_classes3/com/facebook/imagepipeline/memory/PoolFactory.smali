.class public Lcom/facebook/imagepipeline/memory/PoolFactory;
.super Ljava/lang/Object;
.source "PoolFactory.java"


# annotations
.annotation build Ljavax/annotation/concurrent/NotThreadSafe;
.end annotation


# instance fields
.field private mAshmemMemoryChunkPool:Lcom/facebook/imagepipeline/memory/MemoryChunkPool;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mBitmapPool:Lcom/facebook/imagepipeline/memory/BitmapPool;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mBufferMemoryChunkPool:Lcom/facebook/imagepipeline/memory/MemoryChunkPool;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mConfig:Lcom/facebook/imagepipeline/memory/PoolConfig;

.field private mFlexByteArrayPool:Lcom/facebook/imagepipeline/memory/FlexByteArrayPool;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mNativeMemoryChunkPool:Lcom/facebook/imagepipeline/memory/MemoryChunkPool;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mPooledByteBufferFactory:Lcom/facebook/common/memory/PooledByteBufferFactory;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mPooledByteStreams:Lcom/facebook/common/memory/PooledByteStreams;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mSharedByteArray:Lcom/facebook/imagepipeline/memory/SharedByteArray;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mSmallByteArrayPool:Lcom/facebook/common/memory/ByteArrayPool;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/memory/PoolConfig;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-static {p1}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/imagepipeline/memory/PoolConfig;

    iput-object p1, p0, Lcom/facebook/imagepipeline/memory/PoolFactory;->mConfig:Lcom/facebook/imagepipeline/memory/PoolConfig;

    return-void
.end method

.method private getAshmemMemoryChunkPool()Lcom/facebook/imagepipeline/memory/MemoryChunkPool;
    .locals 8
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 172
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/PoolFactory;->mAshmemMemoryChunkPool:Lcom/facebook/imagepipeline/memory/MemoryChunkPool;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "com.facebook.imagepipeline.memory.AshmemMemoryChunkPool"

    .line 174
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x3

    .line 175
    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Lcom/facebook/common/memory/MemoryTrimmableRegistry;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Lcom/facebook/imagepipeline/memory/PoolParams;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const-class v4, Lcom/facebook/imagepipeline/memory/PoolStatsTracker;

    const/4 v7, 0x2

    aput-object v4, v3, v7

    .line 176
    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 178
    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/facebook/imagepipeline/memory/PoolFactory;->mConfig:Lcom/facebook/imagepipeline/memory/PoolConfig;

    .line 181
    invoke-virtual {v3}, Lcom/facebook/imagepipeline/memory/PoolConfig;->getMemoryTrimmableRegistry()Lcom/facebook/common/memory/MemoryTrimmableRegistry;

    move-result-object v3

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/facebook/imagepipeline/memory/PoolFactory;->mConfig:Lcom/facebook/imagepipeline/memory/PoolConfig;

    .line 182
    invoke-virtual {v3}, Lcom/facebook/imagepipeline/memory/PoolConfig;->getMemoryChunkPoolParams()Lcom/facebook/imagepipeline/memory/PoolParams;

    move-result-object v3

    aput-object v3, v2, v6

    iget-object v3, p0, Lcom/facebook/imagepipeline/memory/PoolFactory;->mConfig:Lcom/facebook/imagepipeline/memory/PoolConfig;

    .line 183
    invoke-virtual {v3}, Lcom/facebook/imagepipeline/memory/PoolConfig;->getMemoryChunkPoolStatsTracker()Lcom/facebook/imagepipeline/memory/PoolStatsTracker;

    move-result-object v3

    aput-object v3, v2, v7

    .line 180
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/imagepipeline/memory/MemoryChunkPool;

    iput-object v1, p0, Lcom/facebook/imagepipeline/memory/PoolFactory;->mAshmemMemoryChunkPool:Lcom/facebook/imagepipeline/memory/MemoryChunkPool;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 193
    :catch_0
    iput-object v0, p0, Lcom/facebook/imagepipeline/memory/PoolFactory;->mAshmemMemoryChunkPool:Lcom/facebook/imagepipeline/memory/MemoryChunkPool;

    goto :goto_0

    .line 191
    :catch_1
    iput-object v0, p0, Lcom/facebook/imagepipeline/memory/PoolFactory;->mAshmemMemoryChunkPool:Lcom/facebook/imagepipeline/memory/MemoryChunkPool;

    goto :goto_0

    .line 189
    :catch_2
    iput-object v0, p0, Lcom/facebook/imagepipeline/memory/PoolFactory;->mAshmemMemoryChunkPool:Lcom/facebook/imagepipeline/memory/MemoryChunkPool;

    goto :goto_0

    .line 187
    :catch_3
    iput-object v0, p0, Lcom/facebook/imagepipeline/memory/PoolFactory;->mAshmemMemoryChunkPool:Lcom/facebook/imagepipeline/memory/MemoryChunkPool;

    goto :goto_0

    .line 185
    :catch_4
    iput-object v0, p0, Lcom/facebook/imagepipeline/memory/PoolFactory;->mAshmemMemoryChunkPool:Lcom/facebook/imagepipeline/memory/MemoryChunkPool;

    .line 196
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/facebook/imagepipeline/memory/PoolFactory;->mAshmemMemoryChunkPool:Lcom/facebook/imagepipeline/memory/MemoryChunkPool;

    return-object p0
.end method

.method private getMemoryChunkPool(I)Lcom/facebook/imagepipeline/memory/MemoryChunkPool;
    .locals 0
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    packed-switch p1, :pswitch_data_0

    .line 253
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid MemoryChunkType"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 251
    :pswitch_0
    invoke-direct {p0}, Lcom/facebook/imagepipeline/memory/PoolFactory;->getAshmemMemoryChunkPool()Lcom/facebook/imagepipeline/memory/MemoryChunkPool;

    move-result-object p0

    return-object p0

    .line 249
    :pswitch_1
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/memory/PoolFactory;->getBufferMemoryChunkPool()Lcom/facebook/imagepipeline/memory/MemoryChunkPool;

    move-result-object p0

    return-object p0

    .line 247
    :pswitch_2
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/memory/PoolFactory;->getNativeMemoryChunkPool()Lcom/facebook/imagepipeline/memory/MemoryChunkPool;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getBitmapPool()Lcom/facebook/imagepipeline/memory/BitmapPool;
    .locals 5

    .line 49
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/PoolFactory;->mBitmapPool:Lcom/facebook/imagepipeline/memory/BitmapPool;

    if-nez v0, :cond_3

    .line 50
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/PoolFactory;->mConfig:Lcom/facebook/imagepipeline/memory/PoolConfig;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/memory/PoolConfig;->getBitmapPoolType()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    .line 51
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "dummy"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_1
    const-string v2, "dummy_with_tracking"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string v2, "experimental"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :sswitch_3
    const-string v2, "legacy"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :sswitch_4
    const-string v2, "legacy_default_params"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 79
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    .line 80
    new-instance v0, Lcom/facebook/imagepipeline/memory/BucketsBitmapPool;

    iget-object v1, p0, Lcom/facebook/imagepipeline/memory/PoolFactory;->mConfig:Lcom/facebook/imagepipeline/memory/PoolConfig;

    .line 82
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/memory/PoolConfig;->getMemoryTrimmableRegistry()Lcom/facebook/common/memory/MemoryTrimmableRegistry;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/imagepipeline/memory/PoolFactory;->mConfig:Lcom/facebook/imagepipeline/memory/PoolConfig;

    .line 83
    invoke-virtual {v2}, Lcom/facebook/imagepipeline/memory/PoolConfig;->getBitmapPoolParams()Lcom/facebook/imagepipeline/memory/PoolParams;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/imagepipeline/memory/PoolFactory;->mConfig:Lcom/facebook/imagepipeline/memory/PoolConfig;

    .line 84
    invoke-virtual {v3}, Lcom/facebook/imagepipeline/memory/PoolConfig;->getBitmapPoolStatsTracker()Lcom/facebook/imagepipeline/memory/PoolStatsTracker;

    move-result-object v3

    iget-object v4, p0, Lcom/facebook/imagepipeline/memory/PoolFactory;->mConfig:Lcom/facebook/imagepipeline/memory/PoolConfig;

    .line 85
    invoke-virtual {v4}, Lcom/facebook/imagepipeline/memory/PoolConfig;->isIgnoreBitmapPoolHardCap()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/facebook/imagepipeline/memory/BucketsBitmapPool;-><init>(Lcom/facebook/common/memory/MemoryTrimmableRegistry;Lcom/facebook/imagepipeline/memory/PoolParams;Lcom/facebook/imagepipeline/memory/PoolStatsTracker;Z)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/memory/PoolFactory;->mBitmapPool:Lcom/facebook/imagepipeline/memory/BitmapPool;

    goto :goto_2

    .line 69
    :pswitch_0
    new-instance v0, Lcom/facebook/imagepipeline/memory/BucketsBitmapPool;

    iget-object v1, p0, Lcom/facebook/imagepipeline/memory/PoolFactory;->mConfig:Lcom/facebook/imagepipeline/memory/PoolConfig;

    .line 71
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/memory/PoolConfig;->getMemoryTrimmableRegistry()Lcom/facebook/common/memory/MemoryTrimmableRegistry;

    move-result-object v1

    .line 72
    invoke-static {}, Lcom/facebook/imagepipeline/memory/DefaultBitmapPoolParams;->get()Lcom/facebook/imagepipeline/memory/PoolParams;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/imagepipeline/memory/PoolFactory;->mConfig:Lcom/facebook/imagepipeline/memory/PoolConfig;

    .line 73
    invoke-virtual {v3}, Lcom/facebook/imagepipeline/memory/PoolConfig;->getBitmapPoolStatsTracker()Lcom/facebook/imagepipeline/memory/PoolStatsTracker;

    move-result-object v3

    iget-object v4, p0, Lcom/facebook/imagepipeline/memory/PoolFactory;->mConfig:Lcom/facebook/imagepipeline/memory/PoolConfig;

    .line 74
    invoke-virtual {v4}, Lcom/facebook/imagepipeline/memory/PoolConfig;->isIgnoreBitmapPoolHardCap()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/facebook/imagepipeline/memory/BucketsBitmapPool;-><init>(Lcom/facebook/common/memory/MemoryTrimmableRegistry;Lcom/facebook/imagepipeline/memory/PoolParams;Lcom/facebook/imagepipeline/memory/PoolStatsTracker;Z)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/memory/PoolFactory;->mBitmapPool:Lcom/facebook/imagepipeline/memory/BitmapPool;

    goto :goto_2

    .line 59
    :pswitch_1
    new-instance v0, Lcom/facebook/imagepipeline/memory/LruBitmapPool;

    iget-object v1, p0, Lcom/facebook/imagepipeline/memory/PoolFactory;->mConfig:Lcom/facebook/imagepipeline/memory/PoolConfig;

    .line 61
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/memory/PoolConfig;->getBitmapPoolMaxPoolSize()I

    move-result v1

    iget-object v2, p0, Lcom/facebook/imagepipeline/memory/PoolFactory;->mConfig:Lcom/facebook/imagepipeline/memory/PoolConfig;

    .line 62
    invoke-virtual {v2}, Lcom/facebook/imagepipeline/memory/PoolConfig;->getBitmapPoolMaxBitmapSize()I

    move-result v2

    .line 63
    invoke-static {}, Lcom/facebook/imagepipeline/memory/NoOpPoolStatsTracker;->getInstance()Lcom/facebook/imagepipeline/memory/NoOpPoolStatsTracker;

    move-result-object v3

    iget-object v4, p0, Lcom/facebook/imagepipeline/memory/PoolFactory;->mConfig:Lcom/facebook/imagepipeline/memory/PoolConfig;

    .line 64
    invoke-virtual {v4}, Lcom/facebook/imagepipeline/memory/PoolConfig;->isRegisterLruBitmapPoolAsMemoryTrimmable()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/facebook/imagepipeline/memory/PoolFactory;->mConfig:Lcom/facebook/imagepipeline/memory/PoolConfig;

    .line 65
    invoke-virtual {v4}, Lcom/facebook/imagepipeline/memory/PoolConfig;->getMemoryTrimmableRegistry()Lcom/facebook/common/memory/MemoryTrimmableRegistry;

    move-result-object v4

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/facebook/imagepipeline/memory/LruBitmapPool;-><init>(IILcom/facebook/imagepipeline/memory/PoolStatsTracker;Lcom/facebook/common/memory/MemoryTrimmableRegistry;)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/memory/PoolFactory;->mBitmapPool:Lcom/facebook/imagepipeline/memory/BitmapPool;

    goto :goto_2

    .line 56
    :pswitch_2
    new-instance v0, Lcom/facebook/imagepipeline/memory/DummyTrackingInUseBitmapPool;

    invoke-direct {v0}, Lcom/facebook/imagepipeline/memory/DummyTrackingInUseBitmapPool;-><init>()V

    iput-object v0, p0, Lcom/facebook/imagepipeline/memory/PoolFactory;->mBitmapPool:Lcom/facebook/imagepipeline/memory/BitmapPool;

    goto :goto_2

    .line 53
    :pswitch_3
    new-instance v0, Lcom/facebook/imagepipeline/memory/DummyBitmapPool;

    invoke-direct {v0}, Lcom/facebook/imagepipeline/memory/DummyBitmapPool;-><init>()V

    iput-object v0, p0, Lcom/facebook/imagepipeline/memory/PoolFactory;->mBitmapPool:Lcom/facebook/imagepipeline/memory/BitmapPool;

    goto :goto_2

    .line 87
    :cond_2
    new-instance v0, Lcom/facebook/imagepipeline/memory/DummyBitmapPool;

    invoke-direct {v0}, Lcom/facebook/imagepipeline/memory/DummyBitmapPool;-><init>()V

    iput-object v0, p0, Lcom/facebook/imagepipeline/memory/PoolFactory;->mBitmapPool:Lcom/facebook/imagepipeline/memory/BitmapPool;

    .line 91
    :cond_3
    :goto_2
    iget-object p0, p0, Lcom/facebook/imagepipeline/memory/PoolFactory;->mBitmapPool:Lcom/facebook/imagepipeline/memory/BitmapPool;

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6f64eb86 -> :sswitch_4
        -0x41f50c37 -> :sswitch_3
        -0x181d2318 -> :sswitch_2
        -0x17f85147 -> :sswitch_1
        0x5b804a8 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getBufferMemoryChunkPool()Lcom/facebook/imagepipeline/memory/MemoryChunkPool;
    .locals 8
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 96
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/PoolFactory;->mBufferMemoryChunkPool:Lcom/facebook/imagepipeline/memory/MemoryChunkPool;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "com.facebook.imagepipeline.memory.BufferMemoryChunkPool"

    .line 98
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x3

    .line 99
    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Lcom/facebook/common/memory/MemoryTrimmableRegistry;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Lcom/facebook/imagepipeline/memory/PoolParams;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const-class v4, Lcom/facebook/imagepipeline/memory/PoolStatsTracker;

    const/4 v7, 0x2

    aput-object v4, v3, v7

    .line 100
    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 102
    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/facebook/imagepipeline/memory/PoolFactory;->mConfig:Lcom/facebook/imagepipeline/memory/PoolConfig;

    .line 105
    invoke-virtual {v3}, Lcom/facebook/imagepipeline/memory/PoolConfig;->getMemoryTrimmableRegistry()Lcom/facebook/common/memory/MemoryTrimmableRegistry;

    move-result-object v3

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/facebook/imagepipeline/memory/PoolFactory;->mConfig:Lcom/facebook/imagepipeline/memory/PoolConfig;

    .line 106
    invoke-virtual {v3}, Lcom/facebook/imagepipeline/memory/PoolConfig;->getMemoryChunkPoolParams()Lcom/facebook/imagepipeline/memory/PoolParams;

    move-result-object v3

    aput-object v3, v2, v6

    iget-object v3, p0, Lcom/facebook/imagepipeline/memory/PoolFactory;->mConfig:Lcom/facebook/imagepipeline/memory/PoolConfig;

    .line 107
    invoke-virtual {v3}, Lcom/facebook/imagepipeline/memory/PoolConfig;->getMemoryChunkPoolStatsTracker()Lcom/facebook/imagepipeline/memory/PoolStatsTracker;

    move-result-object v3

    aput-object v3, v2, v7

    .line 104
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/imagepipeline/memory/MemoryChunkPool;

    iput-object v1, p0, Lcom/facebook/imagepipeline/memory/PoolFactory;->mBufferMemoryChunkPool:Lcom/facebook/imagepipeline/memory/MemoryChunkPool;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 117
    :catch_0
    iput-object v0, p0, Lcom/facebook/imagepipeline/memory/PoolFactory;->mBufferMemoryChunkPool:Lcom/facebook/imagepipeline/memory/MemoryChunkPool;

    goto :goto_0

    .line 115
    :catch_1
    iput-object v0, p0, Lcom/facebook/imagepipeline/memory/PoolFactory;->mBufferMemoryChunkPool:Lcom/facebook/imagepipeline/memory/MemoryChunkPool;

    goto :goto_0

    .line 113
    :catch_2
    iput-object v0, p0, Lcom/facebook/imagepipeline/memory/PoolFactory;->mBufferMemoryChunkPool:Lcom/facebook/imagepipeline/memory/MemoryChunkPool;

    goto :goto_0

    .line 111
    :catch_3
    iput-object v0, p0, Lcom/facebook/imagepipeline/memory/PoolFactory;->mBufferMemoryChunkPool:Lcom/facebook/imagepipeline/memory/MemoryChunkPool;

    goto :goto_0

    .line 109
    :catch_4
    iput-object v0, p0, Lcom/facebook/imagepipeline/memory/PoolFactory;->mBufferMemoryChunkPool:Lcom/facebook/imagepipeline/memory/MemoryChunkPool;

    .line 120
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/facebook/imagepipeline/memory/PoolFactory;->mBufferMemoryChunkPool:Lcom/facebook/imagepipeline/memory/MemoryChunkPool;

    return-object p0
.end method

.method public getFlexByteArrayPool()Lcom/facebook/imagepipeline/memory/FlexByteArrayPool;
    .locals 3

    .line 124
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/PoolFactory;->mFlexByteArrayPool:Lcom/facebook/imagepipeline/memory/FlexByteArrayPool;

    if-nez v0, :cond_0

    .line 125
    new-instance v0, Lcom/facebook/imagepipeline/memory/FlexByteArrayPool;

    iget-object v1, p0, Lcom/facebook/imagepipeline/memory/PoolFactory;->mConfig:Lcom/facebook/imagepipeline/memory/PoolConfig;

    .line 127
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/memory/PoolConfig;->getMemoryTrimmableRegistry()Lcom/facebook/common/memory/MemoryTrimmableRegistry;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/imagepipeline/memory/PoolFactory;->mConfig:Lcom/facebook/imagepipeline/memory/PoolConfig;

    invoke-virtual {v2}, Lcom/facebook/imagepipeline/memory/PoolConfig;->getFlexByteArrayPoolParams()Lcom/facebook/imagepipeline/memory/PoolParams;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/facebook/imagepipeline/memory/FlexByteArrayPool;-><init>(Lcom/facebook/common/memory/MemoryTrimmableRegistry;Lcom/facebook/imagepipeline/memory/PoolParams;)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/memory/PoolFactory;->mFlexByteArrayPool:Lcom/facebook/imagepipeline/memory/FlexByteArrayPool;

    .line 129
    :cond_0
    iget-object p0, p0, Lcom/facebook/imagepipeline/memory/PoolFactory;->mFlexByteArrayPool:Lcom/facebook/imagepipeline/memory/FlexByteArrayPool;

    return-object p0
.end method

.method public getFlexByteArrayPoolMaxNumThreads()I
    .locals 0

    .line 133
    iget-object p0, p0, Lcom/facebook/imagepipeline/memory/PoolFactory;->mConfig:Lcom/facebook/imagepipeline/memory/PoolConfig;

    invoke-virtual {p0}, Lcom/facebook/imagepipeline/memory/PoolConfig;->getFlexByteArrayPoolParams()Lcom/facebook/imagepipeline/memory/PoolParams;

    move-result-object p0

    iget p0, p0, Lcom/facebook/imagepipeline/memory/PoolParams;->maxNumThreads:I

    return p0
.end method

.method public getNativeMemoryChunkPool()Lcom/facebook/imagepipeline/memory/MemoryChunkPool;
    .locals 8
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 138
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/PoolFactory;->mNativeMemoryChunkPool:Lcom/facebook/imagepipeline/memory/MemoryChunkPool;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "com.facebook.imagepipeline.memory.NativeMemoryChunkPool"

    .line 140
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x3

    .line 141
    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Lcom/facebook/common/memory/MemoryTrimmableRegistry;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Lcom/facebook/imagepipeline/memory/PoolParams;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const-class v4, Lcom/facebook/imagepipeline/memory/PoolStatsTracker;

    const/4 v7, 0x2

    aput-object v4, v3, v7

    .line 142
    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 144
    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/facebook/imagepipeline/memory/PoolFactory;->mConfig:Lcom/facebook/imagepipeline/memory/PoolConfig;

    .line 147
    invoke-virtual {v3}, Lcom/facebook/imagepipeline/memory/PoolConfig;->getMemoryTrimmableRegistry()Lcom/facebook/common/memory/MemoryTrimmableRegistry;

    move-result-object v3

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/facebook/imagepipeline/memory/PoolFactory;->mConfig:Lcom/facebook/imagepipeline/memory/PoolConfig;

    .line 148
    invoke-virtual {v3}, Lcom/facebook/imagepipeline/memory/PoolConfig;->getMemoryChunkPoolParams()Lcom/facebook/imagepipeline/memory/PoolParams;

    move-result-object v3

    aput-object v3, v2, v6

    iget-object v3, p0, Lcom/facebook/imagepipeline/memory/PoolFactory;->mConfig:Lcom/facebook/imagepipeline/memory/PoolConfig;

    .line 149
    invoke-virtual {v3}, Lcom/facebook/imagepipeline/memory/PoolConfig;->getMemoryChunkPoolStatsTracker()Lcom/facebook/imagepipeline/memory/PoolStatsTracker;

    move-result-object v3

    aput-object v3, v2, v7

    .line 146
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/imagepipeline/memory/MemoryChunkPool;

    iput-object v1, p0, Lcom/facebook/imagepipeline/memory/PoolFactory;->mNativeMemoryChunkPool:Lcom/facebook/imagepipeline/memory/MemoryChunkPool;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "PoolFactory"

    const-string v3, ""

    .line 163
    invoke-static {v2, v3, v1}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 164
    iput-object v0, p0, Lcom/facebook/imagepipeline/memory/PoolFactory;->mNativeMemoryChunkPool:Lcom/facebook/imagepipeline/memory/MemoryChunkPool;

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v2, "PoolFactory"

    const-string v3, ""

    .line 160
    invoke-static {v2, v3, v1}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 161
    iput-object v0, p0, Lcom/facebook/imagepipeline/memory/PoolFactory;->mNativeMemoryChunkPool:Lcom/facebook/imagepipeline/memory/MemoryChunkPool;

    goto :goto_0

    :catch_2
    move-exception v1

    const-string v2, "PoolFactory"

    const-string v3, ""

    .line 157
    invoke-static {v2, v3, v1}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 158
    iput-object v0, p0, Lcom/facebook/imagepipeline/memory/PoolFactory;->mNativeMemoryChunkPool:Lcom/facebook/imagepipeline/memory/MemoryChunkPool;

    goto :goto_0

    :catch_3
    move-exception v1

    const-string v2, "PoolFactory"

    const-string v3, ""

    .line 154
    invoke-static {v2, v3, v1}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 155
    iput-object v0, p0, Lcom/facebook/imagepipeline/memory/PoolFactory;->mNativeMemoryChunkPool:Lcom/facebook/imagepipeline/memory/MemoryChunkPool;

    goto :goto_0

    :catch_4
    move-exception v1

    const-string v2, "PoolFactory"

    const-string v3, ""

    .line 151
    invoke-static {v2, v3, v1}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 152
    iput-object v0, p0, Lcom/facebook/imagepipeline/memory/PoolFactory;->mNativeMemoryChunkPool:Lcom/facebook/imagepipeline/memory/MemoryChunkPool;

    .line 167
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/facebook/imagepipeline/memory/PoolFactory;->mNativeMemoryChunkPool:Lcom/facebook/imagepipeline/memory/MemoryChunkPool;

    return-object p0
.end method

.method public getPooledByteBufferFactory()Lcom/facebook/common/memory/PooledByteBufferFactory;
    .locals 1

    .line 201
    invoke-static {}, Lcom/facebook/imagepipeline/core/NativeCodeSetup;->getUseNativeCode()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 200
    invoke-virtual {p0, v0}, Lcom/facebook/imagepipeline/memory/PoolFactory;->getPooledByteBufferFactory(I)Lcom/facebook/common/memory/PooledByteBufferFactory;

    move-result-object p0

    return-object p0
.end method

.method public getPooledByteBufferFactory(I)Lcom/facebook/common/memory/PooledByteBufferFactory;
    .locals 3

    .line 205
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/PoolFactory;->mPooledByteBufferFactory:Lcom/facebook/common/memory/PooledByteBufferFactory;

    if-nez v0, :cond_0

    .line 206
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/memory/PoolFactory;->getMemoryChunkPool(I)Lcom/facebook/imagepipeline/memory/MemoryChunkPool;

    move-result-object v0

    .line 207
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to get pool for chunk type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    new-instance v0, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferFactory;

    .line 211
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/memory/PoolFactory;->getMemoryChunkPool(I)Lcom/facebook/imagepipeline/memory/MemoryChunkPool;

    move-result-object p1

    invoke-virtual {p0}, Lcom/facebook/imagepipeline/memory/PoolFactory;->getPooledByteStreams()Lcom/facebook/common/memory/PooledByteStreams;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferFactory;-><init>(Lcom/facebook/imagepipeline/memory/MemoryChunkPool;Lcom/facebook/common/memory/PooledByteStreams;)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/memory/PoolFactory;->mPooledByteBufferFactory:Lcom/facebook/common/memory/PooledByteBufferFactory;

    .line 213
    :cond_0
    iget-object p0, p0, Lcom/facebook/imagepipeline/memory/PoolFactory;->mPooledByteBufferFactory:Lcom/facebook/common/memory/PooledByteBufferFactory;

    return-object p0
.end method

.method public getPooledByteStreams()Lcom/facebook/common/memory/PooledByteStreams;
    .locals 2

    .line 217
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/PoolFactory;->mPooledByteStreams:Lcom/facebook/common/memory/PooledByteStreams;

    if-nez v0, :cond_0

    .line 218
    new-instance v0, Lcom/facebook/common/memory/PooledByteStreams;

    invoke-virtual {p0}, Lcom/facebook/imagepipeline/memory/PoolFactory;->getSmallByteArrayPool()Lcom/facebook/common/memory/ByteArrayPool;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/common/memory/PooledByteStreams;-><init>(Lcom/facebook/common/memory/ByteArrayPool;)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/memory/PoolFactory;->mPooledByteStreams:Lcom/facebook/common/memory/PooledByteStreams;

    .line 220
    :cond_0
    iget-object p0, p0, Lcom/facebook/imagepipeline/memory/PoolFactory;->mPooledByteStreams:Lcom/facebook/common/memory/PooledByteStreams;

    return-object p0
.end method

.method public getSharedByteArray()Lcom/facebook/imagepipeline/memory/SharedByteArray;
    .locals 3

    .line 224
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/PoolFactory;->mSharedByteArray:Lcom/facebook/imagepipeline/memory/SharedByteArray;

    if-nez v0, :cond_0

    .line 225
    new-instance v0, Lcom/facebook/imagepipeline/memory/SharedByteArray;

    iget-object v1, p0, Lcom/facebook/imagepipeline/memory/PoolFactory;->mConfig:Lcom/facebook/imagepipeline/memory/PoolConfig;

    .line 227
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/memory/PoolConfig;->getMemoryTrimmableRegistry()Lcom/facebook/common/memory/MemoryTrimmableRegistry;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/imagepipeline/memory/PoolFactory;->mConfig:Lcom/facebook/imagepipeline/memory/PoolConfig;

    invoke-virtual {v2}, Lcom/facebook/imagepipeline/memory/PoolConfig;->getFlexByteArrayPoolParams()Lcom/facebook/imagepipeline/memory/PoolParams;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/facebook/imagepipeline/memory/SharedByteArray;-><init>(Lcom/facebook/common/memory/MemoryTrimmableRegistry;Lcom/facebook/imagepipeline/memory/PoolParams;)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/memory/PoolFactory;->mSharedByteArray:Lcom/facebook/imagepipeline/memory/SharedByteArray;

    .line 229
    :cond_0
    iget-object p0, p0, Lcom/facebook/imagepipeline/memory/PoolFactory;->mSharedByteArray:Lcom/facebook/imagepipeline/memory/SharedByteArray;

    return-object p0
.end method

.method public getSmallByteArrayPool()Lcom/facebook/common/memory/ByteArrayPool;
    .locals 4

    .line 233
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/PoolFactory;->mSmallByteArrayPool:Lcom/facebook/common/memory/ByteArrayPool;

    if-nez v0, :cond_0

    .line 234
    new-instance v0, Lcom/facebook/imagepipeline/memory/GenericByteArrayPool;

    iget-object v1, p0, Lcom/facebook/imagepipeline/memory/PoolFactory;->mConfig:Lcom/facebook/imagepipeline/memory/PoolConfig;

    .line 236
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/memory/PoolConfig;->getMemoryTrimmableRegistry()Lcom/facebook/common/memory/MemoryTrimmableRegistry;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/imagepipeline/memory/PoolFactory;->mConfig:Lcom/facebook/imagepipeline/memory/PoolConfig;

    .line 237
    invoke-virtual {v2}, Lcom/facebook/imagepipeline/memory/PoolConfig;->getSmallByteArrayPoolParams()Lcom/facebook/imagepipeline/memory/PoolParams;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/imagepipeline/memory/PoolFactory;->mConfig:Lcom/facebook/imagepipeline/memory/PoolConfig;

    .line 238
    invoke-virtual {v3}, Lcom/facebook/imagepipeline/memory/PoolConfig;->getSmallByteArrayPoolStatsTracker()Lcom/facebook/imagepipeline/memory/PoolStatsTracker;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/imagepipeline/memory/GenericByteArrayPool;-><init>(Lcom/facebook/common/memory/MemoryTrimmableRegistry;Lcom/facebook/imagepipeline/memory/PoolParams;Lcom/facebook/imagepipeline/memory/PoolStatsTracker;)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/memory/PoolFactory;->mSmallByteArrayPool:Lcom/facebook/common/memory/ByteArrayPool;

    .line 240
    :cond_0
    iget-object p0, p0, Lcom/facebook/imagepipeline/memory/PoolFactory;->mSmallByteArrayPool:Lcom/facebook/common/memory/ByteArrayPool;

    return-object p0
.end method
