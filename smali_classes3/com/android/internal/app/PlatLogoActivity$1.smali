.class Lcom/android/internal/app/PlatLogoActivity$1;
.super Ljava/lang/Object;
.source "PlatLogoActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/PlatLogoActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final pc0:Landroid/view/MotionEvent$PointerCoords;

.field final pc1:Landroid/view/MotionEvent$PointerCoords;

.field final synthetic this$0:Lcom/android/internal/app/PlatLogoActivity;


# direct methods
.method constructor <init>(Lcom/android/internal/app/PlatLogoActivity;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/android/internal/app/PlatLogoActivity$1;->this$0:Lcom/android/internal/app/PlatLogoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    new-instance p1, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {p1}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    iput-object p1, p0, Lcom/android/internal/app/PlatLogoActivity$1;->pc0:Landroid/view/MotionEvent$PointerCoords;

    .line 183
    new-instance p1, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {p1}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    iput-object p1, p0, Lcom/android/internal/app/PlatLogoActivity$1;->pc1:Landroid/view/MotionEvent$PointerCoords;

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    .line 187
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 190
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    if-le p1, v0, :cond_1

    const/4 p1, 0x0

    .line 191
    iget-object v1, p0, Lcom/android/internal/app/PlatLogoActivity$1;->pc0:Landroid/view/MotionEvent$PointerCoords;

    invoke-virtual {p2, p1, v1}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 192
    iget-object p1, p0, Lcom/android/internal/app/PlatLogoActivity$1;->pc1:Landroid/view/MotionEvent$PointerCoords;

    invoke-virtual {p2, v0, p1}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 193
    iget-object p1, p0, Lcom/android/internal/app/PlatLogoActivity$1;->this$0:Lcom/android/internal/app/PlatLogoActivity;

    iget-object p1, p1, Lcom/android/internal/app/PlatLogoActivity;->bg:Lcom/android/internal/app/PlatLogoActivity$PBackground;

    iget-object p2, p0, Lcom/android/internal/app/PlatLogoActivity$1;->pc0:Landroid/view/MotionEvent$PointerCoords;

    iget p2, p2, Landroid/view/MotionEvent$PointerCoords;->x:F

    iget-object v1, p0, Lcom/android/internal/app/PlatLogoActivity$1;->pc1:Landroid/view/MotionEvent$PointerCoords;

    iget v1, v1, Landroid/view/MotionEvent$PointerCoords;->x:F

    sub-float/2addr p2, v1

    float-to-double v1, p2

    iget-object p2, p0, Lcom/android/internal/app/PlatLogoActivity$1;->pc0:Landroid/view/MotionEvent$PointerCoords;

    iget p2, p2, Landroid/view/MotionEvent$PointerCoords;->y:F

    iget-object p0, p0, Lcom/android/internal/app/PlatLogoActivity$1;->pc1:Landroid/view/MotionEvent$PointerCoords;

    iget p0, p0, Landroid/view/MotionEvent$PointerCoords;->y:F

    sub-float/2addr p2, p0

    float-to-double v3, p2

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v1

    double-to-float p0, v1

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p0, p2

    invoke-virtual {p1, p0}, Lcom/android/internal/app/PlatLogoActivity$PBackground;->setRadius(F)V

    :cond_1
    :goto_0
    return v0
.end method
