.class public abstract Lcom/facebook/imagepipeline/image/CloseableBitmap;
.super Lcom/facebook/imagepipeline/image/CloseableImage;
.source "CloseableBitmap.java"


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->STRICT:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/facebook/imagepipeline/image/CloseableImage;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getUnderlyingBitmap()Landroid/graphics/Bitmap;
.end method
