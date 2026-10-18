.class public Lcom/facebook/imagepipeline/animated/base/AnimatedImageResultBuilder;
.super Ljava/lang/Object;
.source "AnimatedImageResultBuilder.java"


# instance fields
.field private mBitmapTransformation:Lcom/facebook/imagepipeline/transformation/BitmapTransformation;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mDecodedFrames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field private mFrameForPreview:I

.field private final mImage:Lcom/facebook/imagepipeline/animated/base/AnimatedImage;

.field private mPreviewBitmap:Lcom/facebook/common/references/CloseableReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/references/CloseableReference<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/animated/base/AnimatedImage;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/facebook/imagepipeline/animated/base/AnimatedImageResultBuilder;->mImage:Lcom/facebook/imagepipeline/animated/base/AnimatedImage;

    return-void
.end method


# virtual methods
.method public build()Lcom/facebook/imagepipeline/animated/base/AnimatedImageResult;
    .locals 3

    const/4 v0, 0x0

    .line 133
    :try_start_0
    new-instance v1, Lcom/facebook/imagepipeline/animated/base/AnimatedImageResult;

    invoke-direct {v1, p0}, Lcom/facebook/imagepipeline/animated/base/AnimatedImageResult;-><init>(Lcom/facebook/imagepipeline/animated/base/AnimatedImageResultBuilder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    iget-object v2, p0, Lcom/facebook/imagepipeline/animated/base/AnimatedImageResultBuilder;->mPreviewBitmap:Lcom/facebook/common/references/CloseableReference;

    invoke-static {v2}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    .line 136
    iput-object v0, p0, Lcom/facebook/imagepipeline/animated/base/AnimatedImageResultBuilder;->mPreviewBitmap:Lcom/facebook/common/references/CloseableReference;

    .line 137
    iget-object v2, p0, Lcom/facebook/imagepipeline/animated/base/AnimatedImageResultBuilder;->mDecodedFrames:Ljava/util/List;

    invoke-static {v2}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Ljava/lang/Iterable;)V

    .line 138
    iput-object v0, p0, Lcom/facebook/imagepipeline/animated/base/AnimatedImageResultBuilder;->mDecodedFrames:Ljava/util/List;

    return-object v1

    :catchall_0
    move-exception v1

    .line 135
    iget-object v2, p0, Lcom/facebook/imagepipeline/animated/base/AnimatedImageResultBuilder;->mPreviewBitmap:Lcom/facebook/common/references/CloseableReference;

    invoke-static {v2}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    .line 136
    iput-object v0, p0, Lcom/facebook/imagepipeline/animated/base/AnimatedImageResultBuilder;->mPreviewBitmap:Lcom/facebook/common/references/CloseableReference;

    .line 137
    iget-object v2, p0, Lcom/facebook/imagepipeline/animated/base/AnimatedImageResultBuilder;->mDecodedFrames:Ljava/util/List;

    invoke-static {v2}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Ljava/lang/Iterable;)V

    .line 138
    iput-object v0, p0, Lcom/facebook/imagepipeline/animated/base/AnimatedImageResultBuilder;->mDecodedFrames:Ljava/util/List;

    .line 139
    throw v1
.end method

.method public getBitmapTransformation()Lcom/facebook/imagepipeline/transformation/BitmapTransformation;
    .locals 0
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 110
    iget-object p0, p0, Lcom/facebook/imagepipeline/animated/base/AnimatedImageResultBuilder;->mBitmapTransformation:Lcom/facebook/imagepipeline/transformation/BitmapTransformation;

    return-object p0
.end method

.method public getDecodedFrames()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation

    .line 88
    iget-object p0, p0, Lcom/facebook/imagepipeline/animated/base/AnimatedImageResultBuilder;->mDecodedFrames:Ljava/util/List;

    invoke-static {p0}, Lcom/facebook/common/references/CloseableReference;->cloneOrNull(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getFrameForPreview()I
    .locals 0

    .line 66
    iget p0, p0, Lcom/facebook/imagepipeline/animated/base/AnimatedImageResultBuilder;->mFrameForPreview:I

    return p0
.end method

.method public getImage()Lcom/facebook/imagepipeline/animated/base/AnimatedImage;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/facebook/imagepipeline/animated/base/AnimatedImageResultBuilder;->mImage:Lcom/facebook/imagepipeline/animated/base/AnimatedImage;

    return-object p0
.end method

.method public getPreviewBitmap()Lcom/facebook/common/references/CloseableReference;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/common/references/CloseableReference<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 45
    iget-object p0, p0, Lcom/facebook/imagepipeline/animated/base/AnimatedImageResultBuilder;->mPreviewBitmap:Lcom/facebook/common/references/CloseableReference;

    invoke-static {p0}, Lcom/facebook/common/references/CloseableReference;->cloneOrNull(Lcom/facebook/common/references/CloseableReference;)Lcom/facebook/common/references/CloseableReference;

    move-result-object p0

    return-object p0
.end method

.method public setBitmapTransformation(Lcom/facebook/imagepipeline/transformation/BitmapTransformation;)Lcom/facebook/imagepipeline/animated/base/AnimatedImageResultBuilder;
    .locals 0
    .param p1    # Lcom/facebook/imagepipeline/transformation/BitmapTransformation;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 120
    iput-object p1, p0, Lcom/facebook/imagepipeline/animated/base/AnimatedImageResultBuilder;->mBitmapTransformation:Lcom/facebook/imagepipeline/transformation/BitmapTransformation;

    return-object p0
.end method

.method public setDecodedFrames(Ljava/util/List;)Lcom/facebook/imagepipeline/animated/base/AnimatedImageResultBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Landroid/graphics/Bitmap;",
            ">;>;)",
            "Lcom/facebook/imagepipeline/animated/base/AnimatedImageResultBuilder;"
        }
    .end annotation

    .line 99
    invoke-static {p1}, Lcom/facebook/common/references/CloseableReference;->cloneOrNull(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/imagepipeline/animated/base/AnimatedImageResultBuilder;->mDecodedFrames:Ljava/util/List;

    return-object p0
.end method

.method public setFrameForPreview(I)Lcom/facebook/imagepipeline/animated/base/AnimatedImageResultBuilder;
    .locals 0

    .line 76
    iput p1, p0, Lcom/facebook/imagepipeline/animated/base/AnimatedImageResultBuilder;->mFrameForPreview:I

    return-object p0
.end method

.method public setPreviewBitmap(Lcom/facebook/common/references/CloseableReference;)Lcom/facebook/imagepipeline/animated/base/AnimatedImageResultBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/references/CloseableReference<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/facebook/imagepipeline/animated/base/AnimatedImageResultBuilder;"
        }
    .end annotation

    .line 55
    invoke-static {p1}, Lcom/facebook/common/references/CloseableReference;->cloneOrNull(Lcom/facebook/common/references/CloseableReference;)Lcom/facebook/common/references/CloseableReference;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/imagepipeline/animated/base/AnimatedImageResultBuilder;->mPreviewBitmap:Lcom/facebook/common/references/CloseableReference;

    return-object p0
.end method
