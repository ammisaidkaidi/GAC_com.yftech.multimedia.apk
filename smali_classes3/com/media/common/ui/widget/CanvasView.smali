.class public Lcom/media/common/ui/widget/CanvasView;
.super Landroid/view/View;
.source "CanvasView.java"


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mCanvas:Landroid/graphics/Canvas;

.field private mPaint:Landroid/graphics/Paint;

.field private mPath:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 19
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 35
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/media/common/ui/widget/CanvasView;->mPath:Landroid/graphics/Path;

    .line 36
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/media/common/ui/widget/CanvasView;->mPaint:Landroid/graphics/Paint;

    .line 41
    iget-object p1, p0, Lcom/media/common/ui/widget/CanvasView;->mPaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 42
    iget-object p1, p0, Lcom/media/common/ui/widget/CanvasView;->mPaint:Landroid/graphics/Paint;

    const-string v0, "#E1D08C"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 43
    iget-object p1, p0, Lcom/media/common/ui/widget/CanvasView;->mPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 44
    iget-object p1, p0, Lcom/media/common/ui/widget/CanvasView;->mPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 45
    iget-object p0, p0, Lcom/media/common/ui/widget/CanvasView;->mPaint:Landroid/graphics/Paint;

    const/high16 p1, 0x40000000    # 2.0f

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/media/common/ui/widget/CanvasView;->mPath:Landroid/graphics/Path;

    .line 36
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/media/common/ui/widget/CanvasView;->mPaint:Landroid/graphics/Paint;

    .line 41
    iget-object p1, p0, Lcom/media/common/ui/widget/CanvasView;->mPaint:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 42
    iget-object p1, p0, Lcom/media/common/ui/widget/CanvasView;->mPaint:Landroid/graphics/Paint;

    const-string p2, "#E1D08C"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 43
    iget-object p1, p0, Lcom/media/common/ui/widget/CanvasView;->mPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 44
    iget-object p1, p0, Lcom/media/common/ui/widget/CanvasView;->mPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 45
    iget-object p0, p0, Lcom/media/common/ui/widget/CanvasView;->mPaint:Landroid/graphics/Paint;

    const/high16 p1, 0x40000000    # 2.0f

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/media/common/ui/widget/CanvasView;->mPath:Landroid/graphics/Path;

    .line 36
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/media/common/ui/widget/CanvasView;->mPaint:Landroid/graphics/Paint;

    .line 41
    iget-object p1, p0, Lcom/media/common/ui/widget/CanvasView;->mPaint:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 42
    iget-object p1, p0, Lcom/media/common/ui/widget/CanvasView;->mPaint:Landroid/graphics/Paint;

    const-string p2, "#E1D08C"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 43
    iget-object p1, p0, Lcom/media/common/ui/widget/CanvasView;->mPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 44
    iget-object p1, p0, Lcom/media/common/ui/widget/CanvasView;->mPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 45
    iget-object p0, p0, Lcom/media/common/ui/widget/CanvasView;->mPaint:Landroid/graphics/Paint;

    const/high16 p1, 0x40000000    # 2.0f

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 79
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    invoke-virtual {p0, v0}, Lcom/media/common/ui/widget/CanvasView;->setPath(Landroid/graphics/Path;)V

    return-void
.end method

.method public getPath()Landroid/graphics/Path;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/media/common/ui/widget/CanvasView;->mPath:Landroid/graphics/Path;

    return-object p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 32
    iget-object p0, p0, Lcom/media/common/ui/widget/CanvasView;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v0, v0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 50
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 51
    sget-object p3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/media/common/ui/widget/CanvasView;->mBitmap:Landroid/graphics/Bitmap;

    .line 52
    new-instance p1, Landroid/graphics/Canvas;

    iget-object p2, p0, Lcom/media/common/ui/widget/CanvasView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p1, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object p1, p0, Lcom/media/common/ui/widget/CanvasView;->mCanvas:Landroid/graphics/Canvas;

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 57
    invoke-virtual {p0}, Lcom/media/common/ui/widget/CanvasView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 60
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 66
    :pswitch_0
    iget-object v0, p0, Lcom/media/common/ui/widget/CanvasView;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_0

    .line 62
    :pswitch_1
    iget-object v0, p0, Lcom/media/common/ui/widget/CanvasView;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 69
    :goto_0
    iget-object p1, p0, Lcom/media/common/ui/widget/CanvasView;->mCanvas:Landroid/graphics/Canvas;

    iget-object v0, p0, Lcom/media/common/ui/widget/CanvasView;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/media/common/ui/widget/CanvasView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 70
    invoke-virtual {p0}, Lcom/media/common/ui/widget/CanvasView;->invalidate()V

    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setPath(Landroid/graphics/Path;)V
    .locals 2

    .line 83
    iput-object p1, p0, Lcom/media/common/ui/widget/CanvasView;->mPath:Landroid/graphics/Path;

    .line 84
    invoke-virtual {p0}, Lcom/media/common/ui/widget/CanvasView;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Lcom/media/common/ui/widget/CanvasView;->getHeight()I

    move-result v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/media/common/ui/widget/CanvasView;->mBitmap:Landroid/graphics/Bitmap;

    .line 85
    new-instance p1, Landroid/graphics/Canvas;

    iget-object v0, p0, Lcom/media/common/ui/widget/CanvasView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object p1, p0, Lcom/media/common/ui/widget/CanvasView;->mCanvas:Landroid/graphics/Canvas;

    .line 86
    iget-object p1, p0, Lcom/media/common/ui/widget/CanvasView;->mCanvas:Landroid/graphics/Canvas;

    iget-object v0, p0, Lcom/media/common/ui/widget/CanvasView;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/media/common/ui/widget/CanvasView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 87
    invoke-virtual {p0}, Lcom/media/common/ui/widget/CanvasView;->invalidate()V

    return-void
.end method
