.class public interface abstract Lcom/media/common/ui/widget/zoomable/ZoomableController;
.super Ljava/lang/Object;
.source "ZoomableController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/media/common/ui/widget/zoomable/ZoomableController$Listener;
    }
.end annotation


# virtual methods
.method public abstract computeHorizontalScrollExtent()I
.end method

.method public abstract computeHorizontalScrollOffset()I
.end method

.method public abstract computeHorizontalScrollRange()I
.end method

.method public abstract computeVerticalScrollExtent()I
.end method

.method public abstract computeVerticalScrollOffset()I
.end method

.method public abstract computeVerticalScrollRange()I
.end method

.method public abstract getScaleFactor()F
.end method

.method public abstract getTransform()Landroid/graphics/Matrix;
.end method

.method public abstract isEnabled()Z
.end method

.method public abstract isIdentity()Z
.end method

.method public abstract onTouchEvent(Landroid/view/MotionEvent;)Z
.end method

.method public abstract setEnabled(Z)V
.end method

.method public abstract setImageBounds(Landroid/graphics/RectF;)V
.end method

.method public abstract setListener(Lcom/media/common/ui/widget/zoomable/ZoomableController$Listener;)V
.end method

.method public abstract setViewBounds(Landroid/graphics/RectF;)V
.end method

.method public abstract wasTransformCorrected()Z
.end method
