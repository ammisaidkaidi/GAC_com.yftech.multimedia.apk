.class public Lcom/media/common/ui/widget/DrawableTextView;
.super Landroid/widget/TextView;
.source "DrawableTextView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/media/common/ui/widget/DrawableTextView$OnDrawableRightListener;,
        Lcom/media/common/ui/widget/DrawableTextView$OnDrawableLeftListener;
    }
.end annotation


# instance fields
.field private final LEFT:I

.field private final RIGHT:I

.field private drawableBottom:Landroid/graphics/drawable/Drawable;

.field private drawableHeight:I

.field private drawableLeft:Landroid/graphics/drawable/Drawable;

.field private drawableRight:Landroid/graphics/drawable/Drawable;

.field private drawableTop:Landroid/graphics/drawable/Drawable;

.field private drawableWidth:I

.field private leftListener:Lcom/media/common/ui/widget/DrawableTextView$OnDrawableLeftListener;

.field private rightListener:Lcom/media/common/ui/widget/DrawableTextView$OnDrawableRightListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 24
    invoke-direct {p0, p1, v0}, Lcom/media/common/ui/widget/DrawableTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, p1, p2, v0}, Lcom/media/common/ui/widget/DrawableTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 17
    iput-object p3, p0, Lcom/media/common/ui/widget/DrawableTextView;->drawableLeft:Landroid/graphics/drawable/Drawable;

    iput-object p3, p0, Lcom/media/common/ui/widget/DrawableTextView;->drawableTop:Landroid/graphics/drawable/Drawable;

    iput-object p3, p0, Lcom/media/common/ui/widget/DrawableTextView;->drawableRight:Landroid/graphics/drawable/Drawable;

    iput-object p3, p0, Lcom/media/common/ui/widget/DrawableTextView;->drawableBottom:Landroid/graphics/drawable/Drawable;

    const/4 p3, 0x0

    .line 19
    iput p3, p0, Lcom/media/common/ui/widget/DrawableTextView;->LEFT:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/media/common/ui/widget/DrawableTextView;->RIGHT:I

    .line 33
    sget-object v0, Lcom/media/common/ui/widget/R$styleable;->DrawableTextView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 34
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    move v0, p3

    :goto_0
    if-ge v0, p2, :cond_6

    .line 36
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    .line 37
    sget v2, Lcom/media/common/ui/widget/R$styleable;->DrawableTextView_drawableRight:I

    if-ne v1, v2, :cond_0

    .line 38
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/media/common/ui/widget/DrawableTextView;->drawableRight:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 39
    :cond_0
    sget v2, Lcom/media/common/ui/widget/R$styleable;->DrawableTextView_drawableLeft:I

    if-ne v1, v2, :cond_1

    .line 40
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/media/common/ui/widget/DrawableTextView;->drawableLeft:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 41
    :cond_1
    sget v2, Lcom/media/common/ui/widget/R$styleable;->DrawableTextView_drawableTop:I

    if-ne v1, v2, :cond_2

    .line 42
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/media/common/ui/widget/DrawableTextView;->drawableTop:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 43
    :cond_2
    sget v2, Lcom/media/common/ui/widget/R$styleable;->DrawableTextView_drawableBottom:I

    if-ne v1, v2, :cond_3

    .line 44
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/media/common/ui/widget/DrawableTextView;->drawableBottom:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 45
    :cond_3
    sget v2, Lcom/media/common/ui/widget/R$styleable;->DrawableTextView_drawableWidth:I

    if-ne v1, v2, :cond_4

    .line 46
    invoke-virtual {p1, v1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/media/common/ui/widget/DrawableTextView;->drawableWidth:I

    goto :goto_1

    .line 47
    :cond_4
    sget v2, Lcom/media/common/ui/widget/R$styleable;->DrawableTextView_drawableHeight:I

    if-ne v1, v2, :cond_5

    .line 48
    invoke-virtual {p1, v1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/media/common/ui/widget/DrawableTextView;->drawableHeight:I

    :cond_5
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 51
    :cond_6
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 52
    iget-object p1, p0, Lcom/media/common/ui/widget/DrawableTextView;->drawableLeft:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_7

    .line 53
    iget-object p1, p0, Lcom/media/common/ui/widget/DrawableTextView;->drawableLeft:Landroid/graphics/drawable/Drawable;

    iget p2, p0, Lcom/media/common/ui/widget/DrawableTextView;->drawableWidth:I

    iget v0, p0, Lcom/media/common/ui/widget/DrawableTextView;->drawableHeight:I

    invoke-virtual {p1, p3, p3, p2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 55
    :cond_7
    iget-object p1, p0, Lcom/media/common/ui/widget/DrawableTextView;->drawableRight:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_8

    .line 56
    iget-object p1, p0, Lcom/media/common/ui/widget/DrawableTextView;->drawableRight:Landroid/graphics/drawable/Drawable;

    iget p2, p0, Lcom/media/common/ui/widget/DrawableTextView;->drawableWidth:I

    iget v0, p0, Lcom/media/common/ui/widget/DrawableTextView;->drawableHeight:I

    invoke-virtual {p1, p3, p3, p2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 58
    :cond_8
    iget-object p1, p0, Lcom/media/common/ui/widget/DrawableTextView;->drawableTop:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_9

    .line 59
    iget-object p1, p0, Lcom/media/common/ui/widget/DrawableTextView;->drawableTop:Landroid/graphics/drawable/Drawable;

    iget p2, p0, Lcom/media/common/ui/widget/DrawableTextView;->drawableWidth:I

    iget v0, p0, Lcom/media/common/ui/widget/DrawableTextView;->drawableHeight:I

    invoke-virtual {p1, p3, p3, p2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 61
    :cond_9
    iget-object p1, p0, Lcom/media/common/ui/widget/DrawableTextView;->drawableBottom:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_a

    .line 62
    iget-object p1, p0, Lcom/media/common/ui/widget/DrawableTextView;->drawableBottom:Landroid/graphics/drawable/Drawable;

    iget p2, p0, Lcom/media/common/ui/widget/DrawableTextView;->drawableWidth:I

    iget v0, p0, Lcom/media/common/ui/widget/DrawableTextView;->drawableHeight:I

    invoke-virtual {p1, p3, p3, p2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 64
    :cond_a
    iget-object p1, p0, Lcom/media/common/ui/widget/DrawableTextView;->drawableLeft:Landroid/graphics/drawable/Drawable;

    iget-object p2, p0, Lcom/media/common/ui/widget/DrawableTextView;->drawableTop:Landroid/graphics/drawable/Drawable;

    iget-object p3, p0, Lcom/media/common/ui/widget/DrawableTextView;->drawableRight:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/media/common/ui/widget/DrawableTextView;->drawableBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/media/common/ui/widget/DrawableTextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 69
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 71
    :cond_0
    invoke-virtual {p0}, Lcom/media/common/ui/widget/DrawableTextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v0, v0, v2

    if-eqz v0, :cond_1

    .line 72
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {p0}, Lcom/media/common/ui/widget/DrawableTextView;->getLeft()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    add-int/2addr v3, v0

    int-to-float v0, v3

    cmpg-float v0, v2, v0

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/media/common/ui/widget/DrawableTextView;->leftListener:Lcom/media/common/ui/widget/DrawableTextView$OnDrawableLeftListener;

    if-eqz v0, :cond_1

    .line 73
    iget-object v0, p0, Lcom/media/common/ui/widget/DrawableTextView;->leftListener:Lcom/media/common/ui/widget/DrawableTextView$OnDrawableLeftListener;

    invoke-interface {v0, p0}, Lcom/media/common/ui/widget/DrawableTextView$OnDrawableLeftListener;->onLeftClick(Landroid/view/View;)V

    .line 75
    :cond_1
    invoke-virtual {p0}, Lcom/media/common/ui/widget/DrawableTextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v2, 0x2

    aget-object v0, v0, v2

    if-eqz v0, :cond_2

    .line 76
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    invoke-virtual {p0}, Lcom/media/common/ui/widget/DrawableTextView;->getRight()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    sub-int/2addr v2, v0

    int-to-float v0, v2

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_2

    iget-object p1, p0, Lcom/media/common/ui/widget/DrawableTextView;->leftListener:Lcom/media/common/ui/widget/DrawableTextView$OnDrawableLeftListener;

    if-eqz p1, :cond_2

    .line 77
    iget-object p1, p0, Lcom/media/common/ui/widget/DrawableTextView;->rightListener:Lcom/media/common/ui/widget/DrawableTextView$OnDrawableRightListener;

    invoke-interface {p1, p0}, Lcom/media/common/ui/widget/DrawableTextView$OnDrawableRightListener;->onRightClick(Landroid/view/View;)V

    goto :goto_0

    .line 79
    :cond_2
    invoke-virtual {p0}, Lcom/media/common/ui/widget/DrawableTextView;->performClick()Z

    :goto_0
    return v1
.end method

.method public setOnDrawableLeftListener(Lcom/media/common/ui/widget/DrawableTextView$OnDrawableLeftListener;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/media/common/ui/widget/DrawableTextView;->leftListener:Lcom/media/common/ui/widget/DrawableTextView$OnDrawableLeftListener;

    return-void
.end method

.method public setOnDrawableRightListener(Lcom/media/common/ui/widget/DrawableTextView$OnDrawableRightListener;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/media/common/ui/widget/DrawableTextView;->rightListener:Lcom/media/common/ui/widget/DrawableTextView$OnDrawableRightListener;

    return-void
.end method
