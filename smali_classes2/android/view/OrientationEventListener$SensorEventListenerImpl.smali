.class Landroid/view/OrientationEventListener$SensorEventListenerImpl;
.super Ljava/lang/Object;
.source "OrientationEventListener.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/OrientationEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SensorEventListenerImpl"
.end annotation


# static fields
.field private static final _DATA_X:I = 0x0

.field private static final _DATA_Y:I = 0x1

.field private static final _DATA_Z:I = 0x2


# instance fields
.field final synthetic this$0:Landroid/view/OrientationEventListener;


# direct methods
.method constructor <init>(Landroid/view/OrientationEventListener;)V
    .locals 0

    .line 113
    iput-object p1, p0, Landroid/view/OrientationEventListener$SensorEventListenerImpl;->this$0:Landroid/view/OrientationEventListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 7

    .line 119
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    .line 121
    aget v1, v0, v1

    neg-float v1, v1

    const/4 v2, 0x1

    .line 122
    aget v3, v0, v2

    neg-float v3, v3

    const/4 v4, 0x2

    .line 123
    aget v0, v0, v4

    neg-float v0, v0

    mul-float v4, v1, v1

    mul-float v5, v3, v3

    add-float/2addr v4, v5

    const/high16 v5, 0x40800000    # 4.0f

    mul-float/2addr v4, v5

    mul-float/2addr v0, v0

    cmpl-float v0, v4, v0

    if-ltz v0, :cond_1

    const v0, 0x42652ee1

    neg-float v3, v3

    float-to-double v3, v3

    float-to-double v5, v1

    .line 128
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v3

    double-to-float v1, v3

    mul-float/2addr v1, v0

    .line 129
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x5a

    :goto_0
    const/16 v1, 0x168

    if-lt v0, v1, :cond_0

    add-int/lit16 v0, v0, -0x168

    goto :goto_0

    :cond_0
    :goto_1
    if-gez v0, :cond_2

    add-int/lit16 v0, v0, 0x168

    goto :goto_1

    :cond_1
    const/4 v0, -0x1

    .line 138
    :cond_2
    iget-object v1, p0, Landroid/view/OrientationEventListener$SensorEventListenerImpl;->this$0:Landroid/view/OrientationEventListener;

    invoke-static {v1}, Landroid/view/OrientationEventListener;->access$000(Landroid/view/OrientationEventListener;)Landroid/view/OrientationListener;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 139
    iget-object v1, p0, Landroid/view/OrientationEventListener$SensorEventListenerImpl;->this$0:Landroid/view/OrientationEventListener;

    invoke-static {v1}, Landroid/view/OrientationEventListener;->access$000(Landroid/view/OrientationEventListener;)Landroid/view/OrientationListener;

    move-result-object v1

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {v1, v2, p1}, Landroid/view/OrientationListener;->onSensorChanged(I[F)V

    .line 141
    :cond_3
    iget-object p1, p0, Landroid/view/OrientationEventListener$SensorEventListenerImpl;->this$0:Landroid/view/OrientationEventListener;

    invoke-static {p1}, Landroid/view/OrientationEventListener;->access$100(Landroid/view/OrientationEventListener;)I

    move-result p1

    if-eq v0, p1, :cond_4

    .line 142
    iget-object p1, p0, Landroid/view/OrientationEventListener$SensorEventListenerImpl;->this$0:Landroid/view/OrientationEventListener;

    invoke-static {p1, v0}, Landroid/view/OrientationEventListener;->access$102(Landroid/view/OrientationEventListener;I)I

    .line 143
    iget-object p0, p0, Landroid/view/OrientationEventListener$SensorEventListenerImpl;->this$0:Landroid/view/OrientationEventListener;

    invoke-virtual {p0, v0}, Landroid/view/OrientationEventListener;->onOrientationChanged(I)V

    :cond_4
    return-void
.end method
