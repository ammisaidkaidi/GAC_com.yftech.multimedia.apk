.class Landroid/view/View$TooltipInfo;
.super Ljava/lang/Object;
.source "View.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TooltipInfo"
.end annotation


# instance fields
.field mAnchorX:I

.field mAnchorY:I

.field mHideTooltipRunnable:Ljava/lang/Runnable;

.field mHoverSlop:I

.field mShowTooltipRunnable:Ljava/lang/Runnable;

.field mTooltipFromLongClick:Z

.field mTooltipPopup:Lcom/android/internal/view/TooltipPopup;

.field mTooltipText:Ljava/lang/CharSequence;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 4334
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/View$1;)V
    .locals 0

    .line 4334
    invoke-direct {p0}, Landroid/view/View$TooltipInfo;-><init>()V

    return-void
.end method

.method static synthetic access$3500(Landroid/view/View$TooltipInfo;)V
    .locals 0

    .line 4334
    invoke-direct {p0}, Landroid/view/View$TooltipInfo;->clearAnchorPos()V

    return-void
.end method

.method static synthetic access$3600(Landroid/view/View$TooltipInfo;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 4334
    invoke-direct {p0, p1}, Landroid/view/View$TooltipInfo;->updateAnchorPos(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method private clearAnchorPos()V
    .locals 1

    const v0, 0x7fffffff

    .line 4392
    iput v0, p0, Landroid/view/View$TooltipInfo;->mAnchorX:I

    .line 4393
    iput v0, p0, Landroid/view/View$TooltipInfo;->mAnchorY:I

    return-void
.end method

.method private updateAnchorPos(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 4377
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 4378
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    .line 4379
    iget v1, p0, Landroid/view/View$TooltipInfo;->mAnchorX:I

    sub-int v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Landroid/view/View$TooltipInfo;->mHoverSlop:I

    if-gt v1, v2, :cond_0

    iget v1, p0, Landroid/view/View$TooltipInfo;->mAnchorY:I

    sub-int v1, p1, v1

    .line 4380
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Landroid/view/View$TooltipInfo;->mHoverSlop:I

    if-gt v1, v2, :cond_0

    const/4 p0, 0x0

    return p0

    .line 4383
    :cond_0
    iput v0, p0, Landroid/view/View$TooltipInfo;->mAnchorX:I

    .line 4384
    iput p1, p0, Landroid/view/View$TooltipInfo;->mAnchorY:I

    const/4 p0, 0x1

    return p0
.end method
