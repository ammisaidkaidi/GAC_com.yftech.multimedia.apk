.class public final Lcom/yftech/car/widget/media/photo/photoview/gestures/VersionedGestureDetector;
.super Ljava/lang/Object;
.source "VersionedGestureDetector.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newInstance(Landroid/content/Context;Lcom/yftech/car/widget/media/photo/photoview/gestures/OnGestureListener;)Lcom/yftech/car/widget/media/photo/photoview/gestures/GestureDetector;
    .locals 2

    .line 26
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 30
    new-instance v0, Lcom/yftech/car/widget/media/photo/photoview/gestures/CupcakeGestureDetector;

    invoke-direct {v0, p0}, Lcom/yftech/car/widget/media/photo/photoview/gestures/CupcakeGestureDetector;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_1

    .line 32
    new-instance v0, Lcom/yftech/car/widget/media/photo/photoview/gestures/EclairGestureDetector;

    invoke-direct {v0, p0}, Lcom/yftech/car/widget/media/photo/photoview/gestures/EclairGestureDetector;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 34
    :cond_1
    new-instance v0, Lcom/yftech/car/widget/media/photo/photoview/gestures/FroyoGestureDetector;

    invoke-direct {v0, p0}, Lcom/yftech/car/widget/media/photo/photoview/gestures/FroyoGestureDetector;-><init>(Landroid/content/Context;)V

    .line 37
    :goto_0
    invoke-interface {v0, p1}, Lcom/yftech/car/widget/media/photo/photoview/gestures/GestureDetector;->setOnGestureListener(Lcom/yftech/car/widget/media/photo/photoview/gestures/OnGestureListener;)V

    return-object v0
.end method
