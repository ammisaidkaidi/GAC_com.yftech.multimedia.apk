.class public interface abstract Lcom/media/common/ui/widget/zoomable/ZoomableController$Listener;
.super Ljava/lang/Object;
.source "ZoomableController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/media/common/ui/widget/zoomable/ZoomableController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onTransformBegin(Landroid/graphics/Matrix;)V
.end method

.method public abstract onTransformChanged(Landroid/graphics/Matrix;)V
.end method

.method public abstract onTransformEnd(Landroid/graphics/Matrix;)V
.end method
