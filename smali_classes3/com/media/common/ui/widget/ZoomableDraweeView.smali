.class public Lcom/media/common/ui/widget/ZoomableDraweeView;
.super Lcom/facebook/drawee/view/SimpleDraweeView;
.source "ZoomableDraweeView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/media/common/ui/widget/ZoomableDraweeView$OnClickListener;
    }
.end annotation


# instance fields
.field private mClickListener:Lcom/media/common/ui/widget/ZoomableDraweeView$OnClickListener;

.field private mCurrentMatrix:Landroid/graphics/Matrix;

.field private mCurrentScale:F

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mMidX:F

.field private mMidY:F

.field private mScaleDetector:Landroid/view/ScaleGestureDetector;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/facebook/drawee/view/SimpleDraweeView;-><init>(Landroid/content/Context;)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 23
    iput p1, p0, Lcom/media/common/ui/widget/ZoomableDraweeView;->mCurrentScale:F

    .line 32
    invoke-direct {p0}, Lcom/media/common/ui/widget/ZoomableDraweeView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/facebook/drawee/view/SimpleDraweeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 23
    iput p1, p0, Lcom/media/common/ui/widget/ZoomableDraweeView;->mCurrentScale:F

    .line 37
    invoke-direct {p0}, Lcom/media/common/ui/widget/ZoomableDraweeView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/drawee/view/SimpleDraweeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 23
    iput p1, p0, Lcom/media/common/ui/widget/ZoomableDraweeView;->mCurrentScale:F

    .line 42
    invoke-direct {p0}, Lcom/media/common/ui/widget/ZoomableDraweeView;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/media/common/ui/widget/ZoomableDraweeView;)F
    .locals 0

    .line 19
    iget p0, p0, Lcom/media/common/ui/widget/ZoomableDraweeView;->mCurrentScale:F

    return p0
.end method

.method static synthetic access$002(Lcom/media/common/ui/widget/ZoomableDraweeView;F)F
    .locals 0

    .line 19
    iput p1, p0, Lcom/media/common/ui/widget/ZoomableDraweeView;->mCurrentScale:F

    return p1
.end method

.method static synthetic access$100(Lcom/media/common/ui/widget/ZoomableDraweeView;)F
    .locals 0

    .line 19
    iget p0, p0, Lcom/media/common/ui/widget/ZoomableDraweeView;->mMidX:F

    return p0
.end method

.method static synthetic access$102(Lcom/media/common/ui/widget/ZoomableDraweeView;F)F
    .locals 0

    .line 19
    iput p1, p0, Lcom/media/common/ui/widget/ZoomableDraweeView;->mMidX:F

    return p1
.end method

.method static synthetic access$200(Lcom/media/common/ui/widget/ZoomableDraweeView;)F
    .locals 0

    .line 19
    iget p0, p0, Lcom/media/common/ui/widget/ZoomableDraweeView;->mMidY:F

    return p0
.end method

.method static synthetic access$202(Lcom/media/common/ui/widget/ZoomableDraweeView;F)F
    .locals 0

    .line 19
    iput p1, p0, Lcom/media/common/ui/widget/ZoomableDraweeView;->mMidY:F

    return p1
.end method

.method static synthetic access$300(Lcom/media/common/ui/widget/ZoomableDraweeView;)Landroid/graphics/Matrix;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/media/common/ui/widget/ZoomableDraweeView;->mCurrentMatrix:Landroid/graphics/Matrix;

    return-object p0
.end method

.method static synthetic access$400(Lcom/media/common/ui/widget/ZoomableDraweeView;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/media/common/ui/widget/ZoomableDraweeView;->reset()V

    return-void
.end method

.method static synthetic access$500(Lcom/media/common/ui/widget/ZoomableDraweeView;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/media/common/ui/widget/ZoomableDraweeView;->checkBorder()V

    return-void
.end method

.method static synthetic access$600(Lcom/media/common/ui/widget/ZoomableDraweeView;)Lcom/media/common/ui/widget/ZoomableDraweeView$OnClickListener;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/media/common/ui/widget/ZoomableDraweeView;->mClickListener:Lcom/media/common/ui/widget/ZoomableDraweeView$OnClickListener;

    return-object p0
.end method

.method private checkBorder()V
    .locals 7

    .line 107
    iget-object v0, p0, Lcom/media/common/ui/widget/ZoomableDraweeView;->mCurrentMatrix:Landroid/graphics/Matrix;

    invoke-direct {p0, v0}, Lcom/media/common/ui/widget/ZoomableDraweeView;->getDisplayRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object v0

    .line 112
    iget v1, v0, Landroid/graphics/RectF;->left:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    const/4 v3, 0x1

    if-lez v1, :cond_0

    .line 113
    invoke-virtual {p0}, Lcom/media/common/ui/widget/ZoomableDraweeView;->getLeft()I

    move-result v1

    int-to-float v1, v1

    iget v4, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v4

    move v4, v1

    move v1, v3

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    move v4, v2

    .line 116
    :goto_0
    iget v5, v0, Landroid/graphics/RectF;->top:F

    cmpl-float v5, v5, v2

    if-lez v5, :cond_1

    .line 117
    invoke-virtual {p0}, Lcom/media/common/ui/widget/ZoomableDraweeView;->getTop()I

    move-result v1

    int-to-float v1, v1

    iget v2, v0, Landroid/graphics/RectF;->top:F

    sub-float v2, v1, v2

    move v1, v3

    .line 120
    :cond_1
    iget v5, v0, Landroid/graphics/RectF;->right:F

    invoke-virtual {p0}, Lcom/media/common/ui/widget/ZoomableDraweeView;->getRight()I

    move-result v6

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_2

    .line 121
    invoke-virtual {p0}, Lcom/media/common/ui/widget/ZoomableDraweeView;->getRight()I

    move-result v1

    int-to-float v1, v1

    iget v4, v0, Landroid/graphics/RectF;->right:F

    sub-float v4, v1, v4

    move v1, v3

    .line 124
    :cond_2
    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0}, Lcom/media/common/ui/widget/ZoomableDraweeView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_3

    .line 125
    invoke-virtual {p0}, Lcom/media/common/ui/widget/ZoomableDraweeView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    sub-float v2, v1, v0

    move v1, v3

    :cond_3
    if-eqz v1, :cond_4

    .line 129
    iget-object v0, p0, Lcom/media/common/ui/widget/ZoomableDraweeView;->mCurrentMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v4, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 130
    invoke-virtual {p0}, Lcom/media/common/ui/widget/ZoomableDraweeView;->invalidate()V

    :cond_4
    return-void
.end method

.method private getDisplayRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;
    .locals 4

    .line 141
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/media/common/ui/widget/ZoomableDraweeView;->getLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/media/common/ui/widget/ZoomableDraweeView;->getTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/media/common/ui/widget/ZoomableDraweeView;->getRight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/media/common/ui/widget/ZoomableDraweeView;->getBottom()I

    move-result p0

    int-to-float p0, p0

    invoke-direct {v0, v1, v2, v3, p0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 142
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    return-object v0
.end method

.method private init()V
    .locals 3

    .line 46
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/media/common/ui/widget/ZoomableDraweeView;->mCurrentMatrix:Landroid/graphics/Matrix;

    .line 48
    new-instance v0, Lcom/media/common/ui/widget/ZoomableDraweeView$1;

    invoke-direct {v0, p0}, Lcom/media/common/ui/widget/ZoomableDraweeView$1;-><init>(Lcom/media/common/ui/widget/ZoomableDraweeView;)V

    .line 78
    new-instance v1, Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0}, Lcom/media/common/ui/widget/ZoomableDraweeView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v1, p0, Lcom/media/common/ui/widget/ZoomableDraweeView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    .line 80
    new-instance v0, Lcom/media/common/ui/widget/ZoomableDraweeView$2;

    invoke-direct {v0, p0}, Lcom/media/common/ui/widget/ZoomableDraweeView$2;-><init>(Lcom/media/common/ui/widget/ZoomableDraweeView;)V

    .line 99
    new-instance v1, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/media/common/ui/widget/ZoomableDraweeView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/media/common/ui/widget/ZoomableDraweeView;->mGestureDetector:Landroid/view/GestureDetector;

    return-void
.end method

.method private reset()V
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/media/common/ui/widget/ZoomableDraweeView;->mCurrentMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 181
    iput v0, p0, Lcom/media/common/ui/widget/ZoomableDraweeView;->mCurrentScale:F

    .line 182
    invoke-virtual {p0}, Lcom/media/common/ui/widget/ZoomableDraweeView;->invalidate()V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 160
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 161
    iget-object v1, p0, Lcom/media/common/ui/widget/ZoomableDraweeView;->mCurrentMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 162
    invoke-super {p0, p1}, Lcom/facebook/drawee/view/SimpleDraweeView;->onDraw(Landroid/graphics/Canvas;)V

    .line 163
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/media/common/ui/widget/ZoomableDraweeView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 169
    iget-object v0, p0, Lcom/media/common/ui/widget/ZoomableDraweeView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v0

    if-nez v0, :cond_0

    .line 170
    iget-object p0, p0, Lcom/media/common/ui/widget/ZoomableDraweeView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {p0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 154
    invoke-direct {p0}, Lcom/media/common/ui/widget/ZoomableDraweeView;->reset()V

    .line 155
    invoke-super {p0, p1}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 0

    .line 148
    invoke-direct {p0}, Lcom/media/common/ui/widget/ZoomableDraweeView;->reset()V

    .line 149
    invoke-super {p0, p1}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageURI(Landroid/net/Uri;)V

    return-void
.end method

.method public setOnClickListener(Lcom/media/common/ui/widget/ZoomableDraweeView$OnClickListener;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lcom/media/common/ui/widget/ZoomableDraweeView;->mClickListener:Lcom/media/common/ui/widget/ZoomableDraweeView$OnClickListener;

    return-void
.end method
