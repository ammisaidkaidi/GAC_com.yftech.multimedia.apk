.class public Lcom/media/common/ui/widget/ScrollableTextView;
.super Landroid/view/View;
.source "ScrollableTextView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "ScrollableTextView"


# instance fields
.field private final DEFAULT_HEIGHT_SIZE:I

.field private final DEFAULT_WIDTH_SIZE:I

.field private builder:Ljava/lang/StringBuilder;

.field private content:Ljava/lang/String;

.field private ellipsizeStr:Ljava/lang/String;

.field private height:I

.field private isRightStart:Z

.field private isShowAllText:Z

.field private paint:Landroid/text/TextPaint;

.field private tempX:F

.field private textAlignment:I

.field private textColor:I

.field private textSize:F

.field private textStyle_isBold:Z

.field private width:I

.field private x:F

.field private xMaxOffset:F

.field private xOffset:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 51
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 32
    iput p1, p0, Lcom/media/common/ui/widget/ScrollableTextView;->textColor:I

    const/high16 p1, 0x41c00000    # 24.0f

    .line 33
    iput p1, p0, Lcom/media/common/ui/widget/ScrollableTextView;->textSize:F

    const/16 p1, 0xff

    .line 34
    iput p1, p0, Lcom/media/common/ui/widget/ScrollableTextView;->DEFAULT_WIDTH_SIZE:I

    const/16 p1, 0x32

    .line 35
    iput p1, p0, Lcom/media/common/ui/widget/ScrollableTextView;->DEFAULT_HEIGHT_SIZE:I

    const/4 p1, 0x0

    .line 39
    iput-boolean p1, p0, Lcom/media/common/ui/widget/ScrollableTextView;->textStyle_isBold:Z

    const-string v0, "..."

    .line 40
    iput-object v0, p0, Lcom/media/common/ui/widget/ScrollableTextView;->ellipsizeStr:Ljava/lang/String;

    const-string/jumbo v0, "\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d\u5341\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d\u5341"

    .line 41
    iput-object v0, p0, Lcom/media/common/ui/widget/ScrollableTextView;->content:Ljava/lang/String;

    const/4 v0, 0x0

    .line 42
    iput v0, p0, Lcom/media/common/ui/widget/ScrollableTextView;->xOffset:F

    .line 44
    iput-boolean p1, p0, Lcom/media/common/ui/widget/ScrollableTextView;->isShowAllText:Z

    .line 45
    iput p1, p0, Lcom/media/common/ui/widget/ScrollableTextView;->textAlignment:I

    .line 47
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p1, p0, Lcom/media/common/ui/widget/ScrollableTextView;->builder:Ljava/lang/StringBuilder;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, p1, p2, v0}, Lcom/media/common/ui/widget/ScrollableTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 59
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, -0x1

    .line 32
    iput p3, p0, Lcom/media/common/ui/widget/ScrollableTextView;->textColor:I

    const/high16 p3, 0x41c00000    # 24.0f

    .line 33
    iput p3, p0, Lcom/media/common/ui/widget/ScrollableTextView;->textSize:F

    const/16 p3, 0xff

    .line 34
    iput p3, p0, Lcom/media/common/ui/widget/ScrollableTextView;->DEFAULT_WIDTH_SIZE:I

    const/16 p3, 0x32

    .line 35
    iput p3, p0, Lcom/media/common/ui/widget/ScrollableTextView;->DEFAULT_HEIGHT_SIZE:I

    const/4 p3, 0x0

    .line 39
    iput-boolean p3, p0, Lcom/media/common/ui/widget/ScrollableTextView;->textStyle_isBold:Z

    const-string v0, "..."

    .line 40
    iput-object v0, p0, Lcom/media/common/ui/widget/ScrollableTextView;->ellipsizeStr:Ljava/lang/String;

    const-string/jumbo v0, "\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d\u5341\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d\u5341"

    .line 41
    iput-object v0, p0, Lcom/media/common/ui/widget/ScrollableTextView;->content:Ljava/lang/String;

    const/4 v0, 0x0

    .line 42
    iput v0, p0, Lcom/media/common/ui/widget/ScrollableTextView;->xOffset:F

    .line 44
    iput-boolean p3, p0, Lcom/media/common/ui/widget/ScrollableTextView;->isShowAllText:Z

    .line 45
    iput p3, p0, Lcom/media/common/ui/widget/ScrollableTextView;->textAlignment:I

    .line 47
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p3, p0, Lcom/media/common/ui/widget/ScrollableTextView;->builder:Ljava/lang/StringBuilder;

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/media/common/ui/widget/ScrollableTextView;->initAttr(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    invoke-direct {p0}, Lcom/media/common/ui/widget/ScrollableTextView;->initPaint()V

    .line 63
    invoke-virtual {p0, p0}, Lcom/media/common/ui/widget/ScrollableTextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private calculateString(FII)I
    .locals 4

    .line 208
    iget-object v0, p0, Lcom/media/common/ui/widget/ScrollableTextView;->builder:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/media/common/ui/widget/ScrollableTextView;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/media/common/ui/widget/ScrollableTextView;->content:Ljava/lang/String;

    invoke-virtual {v1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    iget-object p2, p0, Lcom/media/common/ui/widget/ScrollableTextView;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    move p3, p2

    move p2, v2

    :goto_0
    sub-int v0, p3, p2

    .line 213
    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p2

    if-eq v0, p2, :cond_4

    if-ne v0, p3, :cond_0

    goto :goto_2

    .line 219
    :cond_0
    iget v1, p0, Lcom/media/common/ui/widget/ScrollableTextView;->textAlignment:I

    if-nez v1, :cond_3

    .line 220
    iget-object v1, p0, Lcom/media/common/ui/widget/ScrollableTextView;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v0}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/media/common/ui/widget/ScrollableTextView;->getContentWidth(Ljava/lang/String;)F

    move-result v1

    cmpg-float v1, p1, v1

    if-gez v1, :cond_2

    :cond_1
    move p3, v0

    goto :goto_0

    :cond_2
    :goto_1
    move p2, v0

    goto :goto_0

    .line 227
    :cond_3
    iget-object v1, p0, Lcom/media/common/ui/widget/ScrollableTextView;->builder:Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/media/common/ui/widget/ScrollableTextView;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v1, v0, v3}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/media/common/ui/widget/ScrollableTextView;->getContentWidth(Ljava/lang/String;)F

    move-result v1

    cmpg-float v1, p1, v1

    if-gez v1, :cond_1

    goto :goto_1

    :cond_4
    :goto_2
    return v0
.end method

.method private getContentHeight()F
    .locals 1

    .line 261
    iget-object p0, p0, Lcom/media/common/ui/widget/ScrollableTextView;->paint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p0

    .line 262
    iget v0, p0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget p0, p0, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p0, v0

    return p0
.end method

.method private getContentWidth(Ljava/lang/String;)F
    .locals 1

    .line 241
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 245
    :cond_0
    iget-object p0, p0, Lcom/media/common/ui/widget/ScrollableTextView;->paint:Landroid/text/TextPaint;

    invoke-virtual {p0, p1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result p0

    .line 247
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getContentWidth="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    return p0
.end method

.method private initAttr(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 90
    sget-object v0, Lcom/media/common/ui/widget/R$styleable;->ScrollableTextView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 92
    sget p2, Lcom/media/common/ui/widget/R$styleable;->ScrollableTextView_scrollable_text_view_ellipsizeStr:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/media/common/ui/widget/ScrollableTextView;->ellipsizeStr:Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget p2, Lcom/media/common/ui/widget/R$styleable;->ScrollableTextView_scrollable_text_view_ellipsizeStr:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    :goto_0
    iput-object p2, p0, Lcom/media/common/ui/widget/ScrollableTextView;->ellipsizeStr:Ljava/lang/String;

    .line 93
    sget p2, Lcom/media/common/ui/widget/R$styleable;->ScrollableTextView_scrollable_text_view_textSize:I

    iget v0, p0, Lcom/media/common/ui/widget/ScrollableTextView;->textSize:F

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/media/common/ui/widget/ScrollableTextView;->textSize:F

    .line 94
    sget p2, Lcom/media/common/ui/widget/R$styleable;->ScrollableTextView_scrollable_text_view_text:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/media/common/ui/widget/ScrollableTextView;->content:Ljava/lang/String;

    goto :goto_1

    :cond_1
    sget p2, Lcom/media/common/ui/widget/R$styleable;->ScrollableTextView_scrollable_text_view_text:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    :goto_1
    iput-object p2, p0, Lcom/media/common/ui/widget/ScrollableTextView;->content:Ljava/lang/String;

    .line 95
    sget p2, Lcom/media/common/ui/widget/R$styleable;->ScrollableTextView_scrollable_text_view_textColor:I

    iget v0, p0, Lcom/media/common/ui/widget/ScrollableTextView;->textColor:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/media/common/ui/widget/ScrollableTextView;->textColor:I

    .line 96
    sget p2, Lcom/media/common/ui/widget/R$styleable;->ScrollableTextView_scrollable_text_view_textStyle_isBold:I

    iget-boolean v0, p0, Lcom/media/common/ui/widget/ScrollableTextView;->textStyle_isBold:Z

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/media/common/ui/widget/ScrollableTextView;->textStyle_isBold:Z

    .line 97
    sget p2, Lcom/media/common/ui/widget/R$styleable;->ScrollableTextView_scrollable_text_view_textAlignment:I

    iget v0, p0, Lcom/media/common/ui/widget/ScrollableTextView;->textAlignment:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/media/common/ui/widget/ScrollableTextView;->textAlignment:I

    .line 98
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 99
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    .line 100
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p2

    const-string v0, "ar"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "he"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 p1, 0x1

    :goto_3
    iput-boolean p1, p0, Lcom/media/common/ui/widget/ScrollableTextView;->isRightStart:Z

    return-void
.end method

.method private initPaint()V
    .locals 2

    .line 81
    new-instance v0, Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/media/common/ui/widget/ScrollableTextView;->paint:Landroid/text/TextPaint;

    .line 82
    iget-object v0, p0, Lcom/media/common/ui/widget/ScrollableTextView;->paint:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 83
    iget-object v0, p0, Lcom/media/common/ui/widget/ScrollableTextView;->paint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/media/common/ui/widget/ScrollableTextView;->textColor:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 84
    iget-object v0, p0, Lcom/media/common/ui/widget/ScrollableTextView;->paint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/media/common/ui/widget/ScrollableTextView;->textSize:F

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 85
    iget-object v0, p0, Lcom/media/common/ui/widget/ScrollableTextView;->paint:Landroid/text/TextPaint;

    iget-boolean p0, p0, Lcom/media/common/ui/widget/ScrollableTextView;->textStyle_isBold:Z

    invoke-virtual {v0, p0}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 151
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 154
    iget-object v0, p0, Lcom/media/common/ui/widget/ScrollableTextView;->content:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 157
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v1, p0}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    return-void

    .line 162
    :cond_0
    iget-boolean v0, p0, Lcom/media/common/ui/widget/ScrollableTextView;->isShowAllText:Z

    const/4 v2, 0x0

    const/high16 v3, 0x40000000    # 2.0f

    if-eqz v0, :cond_2

    .line 164
    iget v0, p0, Lcom/media/common/ui/widget/ScrollableTextView;->xOffset:F

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 166
    iget-object v0, p0, Lcom/media/common/ui/widget/ScrollableTextView;->content:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/media/common/ui/widget/ScrollableTextView;->getContentWidth(Ljava/lang/String;)F

    move-result v0

    .line 168
    iget v2, p0, Lcom/media/common/ui/widget/ScrollableTextView;->width:I

    int-to-float v2, v2

    cmpl-float v2, v2, v0

    if-lez v2, :cond_1

    .line 169
    iget-boolean v2, p0, Lcom/media/common/ui/widget/ScrollableTextView;->isRightStart:Z

    if-eqz v2, :cond_1

    iget v1, p0, Lcom/media/common/ui/widget/ScrollableTextView;->width:I

    int-to-float v1, v1

    sub-float/2addr v1, v0

    float-to-int v0, v1

    move v1, v0

    .line 173
    :cond_1
    iget-object v0, p0, Lcom/media/common/ui/widget/ScrollableTextView;->content:Ljava/lang/String;

    int-to-float v1, v1

    iget v2, p0, Lcom/media/common/ui/widget/ScrollableTextView;->height:I

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-direct {p0}, Lcom/media/common/ui/widget/ScrollableTextView;->getContentHeight()F

    move-result v4

    div-float/2addr v4, v3

    add-float/2addr v2, v4

    iget-object p0, p0, Lcom/media/common/ui/widget/ScrollableTextView;->paint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 175
    :cond_2
    iget-object v0, p0, Lcom/media/common/ui/widget/ScrollableTextView;->content:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/media/common/ui/widget/ScrollableTextView;->getContentWidth(Ljava/lang/String;)F

    move-result v0

    .line 177
    iget v4, p0, Lcom/media/common/ui/widget/ScrollableTextView;->width:I

    int-to-float v4, v4

    cmpl-float v4, v4, v0

    if-lez v4, :cond_4

    .line 179
    iget-boolean v2, p0, Lcom/media/common/ui/widget/ScrollableTextView;->isRightStart:Z

    if-eqz v2, :cond_3

    iget v1, p0, Lcom/media/common/ui/widget/ScrollableTextView;->width:I

    int-to-float v1, v1

    sub-float/2addr v1, v0

    float-to-int v1, v1

    .line 183
    :cond_3
    iget-object v0, p0, Lcom/media/common/ui/widget/ScrollableTextView;->content:Ljava/lang/String;

    int-to-float v1, v1

    iget v2, p0, Lcom/media/common/ui/widget/ScrollableTextView;->height:I

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-direct {p0}, Lcom/media/common/ui/widget/ScrollableTextView;->getContentHeight()F

    move-result v4

    div-float/2addr v4, v3

    add-float/2addr v2, v4

    iget-object p0, p0, Lcom/media/common/ui/widget/ScrollableTextView;->paint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 189
    :cond_4
    iget-object v0, p0, Lcom/media/common/ui/widget/ScrollableTextView;->content:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 191
    iget v4, p0, Lcom/media/common/ui/widget/ScrollableTextView;->width:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/media/common/ui/widget/ScrollableTextView;->ellipsizeStr:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/media/common/ui/widget/ScrollableTextView;->getContentWidth(Ljava/lang/String;)F

    move-result v5

    sub-float/2addr v4, v5

    .line 193
    invoke-direct {p0, v4, v1, v0}, Lcom/media/common/ui/widget/ScrollableTextView;->calculateString(FII)I

    move-result v0

    .line 195
    iget v4, p0, Lcom/media/common/ui/widget/ScrollableTextView;->textAlignment:I

    if-nez v4, :cond_5

    .line 196
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/media/common/ui/widget/ScrollableTextView;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1, v0}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/media/common/ui/widget/ScrollableTextView;->ellipsizeStr:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/media/common/ui/widget/ScrollableTextView;->height:I

    int-to-float v1, v1

    div-float/2addr v1, v3

    invoke-direct {p0}, Lcom/media/common/ui/widget/ScrollableTextView;->getContentHeight()F

    move-result v4

    div-float/2addr v4, v3

    add-float/2addr v1, v4

    iget-object p0, p0, Lcom/media/common/ui/widget/ScrollableTextView;->paint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v2, v1, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 198
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/media/common/ui/widget/ScrollableTextView;->ellipsizeStr:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/media/common/ui/widget/ScrollableTextView;->builder:Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    iget-object v5, p0, Lcom/media/common/ui/widget/ScrollableTextView;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    invoke-virtual {v4, v0, v5}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/media/common/ui/widget/ScrollableTextView;->height:I

    int-to-float v1, v1

    div-float/2addr v1, v3

    invoke-direct {p0}, Lcom/media/common/ui/widget/ScrollableTextView;->getContentHeight()F

    move-result v4

    div-float/2addr v4, v3

    add-float/2addr v1, v4

    iget-object p0, p0, Lcom/media/common/ui/widget/ScrollableTextView;->paint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v2, v1, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 105
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 107
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 108
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 109
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WidthMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", WidthSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    const/16 v1, 0xff

    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v3, -0x80000000

    if-eq v0, v3, :cond_1

    if-eq v0, v2, :cond_0

    .line 120
    iput v1, p0, Lcom/media/common/ui/widget/ScrollableTextView;->width:I

    goto :goto_0

    .line 116
    :cond_0
    iput p1, p0, Lcom/media/common/ui/widget/ScrollableTextView;->width:I

    goto :goto_0

    .line 113
    :cond_1
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/media/common/ui/widget/ScrollableTextView;->width:I

    .line 124
    :goto_0
    iget p1, p0, Lcom/media/common/ui/widget/ScrollableTextView;->width:I

    int-to-float p1, p1

    iget-object v0, p0, Lcom/media/common/ui/widget/ScrollableTextView;->content:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/media/common/ui/widget/ScrollableTextView;->getContentWidth(Ljava/lang/String;)F

    move-result v0

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iput p1, p0, Lcom/media/common/ui/widget/ScrollableTextView;->xMaxOffset:F

    .line 125
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "xMaxOffset="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/media/common/ui/widget/ScrollableTextView;->xMaxOffset:F

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 126
    iget p1, p0, Lcom/media/common/ui/widget/ScrollableTextView;->textAlignment:I

    if-nez p1, :cond_2

    const/4 p1, 0x0

    .line 127
    iput p1, p0, Lcom/media/common/ui/widget/ScrollableTextView;->xOffset:F

    goto :goto_1

    .line 129
    :cond_2
    iget p1, p0, Lcom/media/common/ui/widget/ScrollableTextView;->xMaxOffset:F

    neg-float p1, p1

    iput p1, p0, Lcom/media/common/ui/widget/ScrollableTextView;->xOffset:F

    .line 131
    :goto_1
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    .line 132
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "heightMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", heightSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    const/16 v0, 0x32

    if-eq p1, v3, :cond_4

    if-eq p1, v2, :cond_3

    .line 144
    iput v0, p0, Lcom/media/common/ui/widget/ScrollableTextView;->height:I

    goto :goto_2

    .line 140
    :cond_3
    iput p2, p0, Lcom/media/common/ui/widget/ScrollableTextView;->height:I

    goto :goto_2

    .line 137
    :cond_4
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/media/common/ui/widget/ScrollableTextView;->height:I

    :goto_2
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 297
    iget p1, p0, Lcom/media/common/ui/widget/ScrollableTextView;->width:I

    int-to-float p1, p1

    iget-object v0, p0, Lcom/media/common/ui/widget/ScrollableTextView;->content:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/media/common/ui/widget/ScrollableTextView;->getContentWidth(Ljava/lang/String;)F

    move-result v0

    cmpg-float p1, p1, v0

    const/4 v0, 0x1

    if-gtz p1, :cond_4

    .line 299
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto/16 :goto_0

    .line 308
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget p2, p0, Lcom/media/common/ui/widget/ScrollableTextView;->x:F

    sub-float/2addr p1, p2

    .line 310
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTouch:xMove="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", xOffset="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/media/common/ui/widget/ScrollableTextView;->xOffset:F

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 314
    iget p2, p0, Lcom/media/common/ui/widget/ScrollableTextView;->tempX:F

    add-float/2addr p2, p1

    const/4 v1, 0x0

    cmpl-float p2, p2, v1

    if-lez p2, :cond_1

    .line 316
    iput v1, p0, Lcom/media/common/ui/widget/ScrollableTextView;->xOffset:F

    .line 317
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "start:xOffset="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/media/common/ui/widget/ScrollableTextView;->xOffset:F

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 320
    :cond_1
    iget p2, p0, Lcom/media/common/ui/widget/ScrollableTextView;->tempX:F

    add-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    iget v1, p0, Lcom/media/common/ui/widget/ScrollableTextView;->xMaxOffset:F

    cmpl-float p2, p2, v1

    if-lez p2, :cond_2

    .line 322
    iget p1, p0, Lcom/media/common/ui/widget/ScrollableTextView;->xMaxOffset:F

    neg-float p1, p1

    iput p1, p0, Lcom/media/common/ui/widget/ScrollableTextView;->xOffset:F

    .line 323
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "end:xOffset="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/media/common/ui/widget/ScrollableTextView;->xOffset:F

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 328
    :cond_2
    iget p2, p0, Lcom/media/common/ui/widget/ScrollableTextView;->tempX:F

    add-float/2addr p1, p2

    iput p1, p0, Lcom/media/common/ui/widget/ScrollableTextView;->xOffset:F

    .line 329
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "normal:xOffset="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/media/common/ui/widget/ScrollableTextView;->xOffset:F

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 302
    :cond_3
    iput-boolean v0, p0, Lcom/media/common/ui/widget/ScrollableTextView;->isShowAllText:Z

    .line 303
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/media/common/ui/widget/ScrollableTextView;->x:F

    .line 304
    iget p1, p0, Lcom/media/common/ui/widget/ScrollableTextView;->xOffset:F

    iput p1, p0, Lcom/media/common/ui/widget/ScrollableTextView;->tempX:F

    .line 337
    :goto_0
    invoke-virtual {p0}, Lcom/media/common/ui/widget/ScrollableTextView;->invalidate()V

    :cond_4
    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    .line 68
    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onWindowFocusChanged:hasWindowFocus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 72
    iget-boolean p1, p0, Lcom/media/common/ui/widget/ScrollableTextView;->isShowAllText:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 74
    iput-boolean p1, p0, Lcom/media/common/ui/widget/ScrollableTextView;->isShowAllText:Z

    .line 75
    invoke-virtual {p0}, Lcom/media/common/ui/widget/ScrollableTextView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 1

    .line 269
    iput-object p1, p0, Lcom/media/common/ui/widget/ScrollableTextView;->content:Ljava/lang/String;

    .line 270
    iget v0, p0, Lcom/media/common/ui/widget/ScrollableTextView;->width:I

    int-to-float v0, v0

    invoke-direct {p0, p1}, Lcom/media/common/ui/widget/ScrollableTextView;->getContentWidth(Ljava/lang/String;)F

    move-result p1

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iput p1, p0, Lcom/media/common/ui/widget/ScrollableTextView;->xMaxOffset:F

    const/4 p1, 0x0

    .line 271
    iput-boolean p1, p0, Lcom/media/common/ui/widget/ScrollableTextView;->isShowAllText:Z

    .line 272
    iget p1, p0, Lcom/media/common/ui/widget/ScrollableTextView;->textAlignment:I

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 273
    iput p1, p0, Lcom/media/common/ui/widget/ScrollableTextView;->xOffset:F

    goto :goto_0

    .line 275
    :cond_0
    iget p1, p0, Lcom/media/common/ui/widget/ScrollableTextView;->xMaxOffset:F

    neg-float p1, p1

    iput p1, p0, Lcom/media/common/ui/widget/ScrollableTextView;->xOffset:F

    .line 277
    :goto_0
    invoke-virtual {p0}, Lcom/media/common/ui/widget/ScrollableTextView;->invalidate()V

    return-void
.end method

.method public setTextColor(I)V
    .locals 0

    if-eqz p1, :cond_0

    .line 285
    iput p1, p0, Lcom/media/common/ui/widget/ScrollableTextView;->textColor:I

    .line 286
    iget-object p0, p0, Lcom/media/common/ui/widget/ScrollableTextView;->paint:Landroid/text/TextPaint;

    invoke-virtual {p0, p1}, Landroid/text/TextPaint;->setColor(I)V

    :cond_0
    return-void
.end method
