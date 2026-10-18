.class public Lcom/facebook/cache/common/DebuggingCacheKey;
.super Lcom/facebook/cache/common/SimpleCacheKey;
.source "DebuggingCacheKey.java"


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->STRICT:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation


# instance fields
.field private final mCallerContext:Ljava/lang/Object;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mSourceUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;Landroid/net/Uri;)V
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 25
    invoke-direct {p0, p1}, Lcom/facebook/cache/common/SimpleCacheKey;-><init>(Ljava/lang/String;)V

    .line 26
    iput-object p2, p0, Lcom/facebook/cache/common/DebuggingCacheKey;->mCallerContext:Ljava/lang/Object;

    .line 27
    iput-object p3, p0, Lcom/facebook/cache/common/DebuggingCacheKey;->mSourceUri:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public getCallerContext()Ljava/lang/Object;
    .locals 0
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 32
    iget-object p0, p0, Lcom/facebook/cache/common/DebuggingCacheKey;->mCallerContext:Ljava/lang/Object;

    return-object p0
.end method

.method public getSourceUri()Landroid/net/Uri;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/facebook/cache/common/DebuggingCacheKey;->mSourceUri:Landroid/net/Uri;

    return-object p0
.end method
