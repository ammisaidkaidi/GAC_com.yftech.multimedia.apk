.class public Lcom/media/common/ui/widget/WordsLimitTextView;
.super Landroid/view/View;
.source "WordsLimitTextView.java"


# instance fields
.field private final DEFAULT_HEIGHT_SIZE:I

.field private final DEFAULT_WIDTH_SIZE:I

.field private builder:Ljava/lang/StringBuilder;

.field private content:Ljava/lang/String;

.field private ellipsizeStart:I

.field private ellipsizeStr:Ljava/lang/String;

.field private height:I

.field private offset:F

.field private paint:Landroid/text/TextPaint;

.field private textColor:I

.field private textSize:F

.field private textStyle_isBold:Z

.field private width:I

.field private wordsLimit:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 18
    iput p1, p0, Lcom/media/common/ui/widget/WordsLimitTextView;->textColor:I

    const/high16 p1, 0x41d00000    # 26.0f

    .line 19
    iput p1, p0, Lcom/media/common/ui/widget/WordsLimitTextView;->textSize:F

    const/16 p1, 0x1f4

    .line 20
    iput p1, p0, Lcom/media/common/ui/widget/WordsLimitTextView;->DEFAULT_WIDTH_SIZE:I

    const/16 p1, 0x32

    .line 21
    iput p1, p0, Lcom/media/common/ui/widget/WordsLimitTextView;->DEFAULT_HEIGHT_SIZE:I

    const/16 p1, 0xc

    .line 24
    iput p1, p0, Lcom/media/common/ui/widget/WordsLimitTextView;->wordsLimit:I

    const/4 p1, 0x5

    .line 25
    iput p1, p0, Lcom/media/common/ui/widget/WordsLimitTextView;->ellipsizeStart:I

    const/4 p1, 0x0

    .line 27
    iput-boolean p1, p0, Lcom/media/common/ui/widget/WordsLimitTextView;->textStyle_isBold:Z

    const-string p1, "..."

    .line 28
    iput-object p1, p0, Lcom/media/common/ui/widget/WordsLimitTextView;->ellipsizeStr:Ljava/lang/String;

    const/4 p1, 0x0

    .line 29
    iput p1, p0, Lcom/media/common/ui/widget/WordsLimitTextView;->offset:F

    const-string/jumbo p1, "\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d\u5341\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d\u5341"

    .line 30
    iput-object p1, p0, Lcom/media/common/ui/widget/WordsLimitTextView;->content:Ljava/lang/String;

    .line 32
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p1, p0, Lcom/media/common/ui/widget/WordsLimitTextView;->builder:Ljava/lang/StringBuilder;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1, p2, v0}, Lcom/media/common/ui/widget/WordsLimitTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, -0x1

    .line 18
    iput p3, p0, Lcom/media/common/ui/widget/WordsLimitTextView;->textColor:I

    const/high16 p3, 0x41d00000    # 26.0f

    .line 19
    iput p3, p0, Lcom/media/common/ui/widget/WordsLimitTextView;->textSize:F

    const/16 p3, 0x1f4

    .line 20
    iput p3, p0, Lcom/media/common/ui/widget/WordsLimitTextView;->DEFAULT_WIDTH_SIZE:I

    const/16 p3, 0x32

    .line 21
    iput p3, p0, Lcom/media/common/ui/widget/WordsLimitTextView;->DEFAULT_HEIGHT_SIZE:I

    const/16 p3, 0xc

    .line 24
    iput p3, p0, Lcom/media/common/ui/widget/WordsLimitTextView;->wordsLimit:I

    const/4 p3, 0x5

    .line 25
    iput p3, p0, Lcom/media/common/ui/widget/WordsLimitTextView;->ellipsizeStart:I

    const/4 p3, 0x0

    .line 27
    iput-boolean p3, p0, Lcom/media/common/ui/widget/WordsLimitTextView;->textStyle_isBold:Z

    const-string p3, "..."

    .line 28
    iput-object p3, p0, Lcom/media/common/ui/widget/WordsLimitTextView;->ellipsizeStr:Ljava/lang/String;

    const/4 p3, 0x0

    .line 29
    iput p3, p0, Lcom/media/common/ui/widget/WordsLimitTextView;->offset:F

    const-string/jumbo p3, "\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d\u5341\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d\u5341"

    .line 30
    iput-object p3, p0, Lcom/media/common/ui/widget/WordsLimitTextView;->content:Ljava/lang/String;

    .line 32
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p3, p0, Lcom/media/common/ui/widget/WordsLimitTextView;->builder:Ljava/lang/StringBuilder;

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/media/common/ui/widget/WordsLimitTextView;->initAttr(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    invoke-direct {p0}, Lcom/media/common/ui/widget/WordsLimitTextView;->initPaint()V

    return-void
.end method

.method private calculateString(F)I
    .locals 4

    .line 198
    iget-object v0, p0, Lcom/media/common/ui/widget/WordsLimitTextView;->content:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lcom/media/common/ui/widget/WordsLimitTextView;->wordsLimit:I

    iget v2, p0, Lcom/media/common/ui/widget/WordsLimitTextView;->ellipsizeStart:I

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    .line 202
    iget-object v1, p0, Lcom/media/common/ui/widget/WordsLimitTextView;->builder:Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/media/common/ui/widget/WordsLimitTextView;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/media/common/ui/widget/WordsLimitTextView;->content:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    iget-object v0, p0, Lcom/media/common/ui/widget/WordsLimitTextView;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 205
    :goto_0
    iget-object v1, p0, Lcom/media/common/ui/widget/WordsLimitTextView;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-ge v3, v1, :cond_1

    .line 207
    iget-object v1, p0, Lcom/media/common/ui/widget/WordsLimitTextView;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/media/common/ui/widget/WordsLimitTextView;->getContentWidth(Ljava/lang/String;)F

    move-result v1

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_0

    move v0, v3

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v0
.end method

.method private calculateString(FII)I
    .locals 3

    .line 174
    iget-object v0, p0, Lcom/media/common/ui/widget/WordsLimitTextView;->builder:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/media/common/ui/widget/WordsLimitTextView;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/media/common/ui/widget/WordsLimitTextView;->content:Ljava/lang/String;

    invoke-virtual {v1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    iget-object p2, p0, Lcom/media/common/ui/widget/WordsLimitTextView;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    move p3, p2

    move p2, v2

    :goto_0
    sub-int v0, p3, p2

    .line 179
    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p2

    if-eq v0, p2, :cond_2

    if-ne v0, p3, :cond_0

    goto :goto_1

    .line 185
    :cond_0
    iget-object v1, p0, Lcom/media/common/ui/widget/WordsLimitTextView;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v0}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/media/common/ui/widget/WordsLimitTextView;->getContentWidth(Ljava/lang/String;)F

    move-result v1

    cmpg-float v1, p1, v1

    if-gez v1, :cond_1

    move p3, v0

    goto :goto_0

    :cond_1
    move p2, v0

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method

.method private getContentHeight()F
    .locals 1

    .line 239
    iget-object p0, p0, Lcom/media/common/ui/widget/WordsLimitTextView;->paint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p0

    .line 240
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

    .line 219
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 223
    :cond_0
    iget-object p0, p0, Lcom/media/common/ui/widget/WordsLimitTextView;->paint:Landroid/text/TextPaint;

    invoke-virtual {p0, p1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result p0

    return p0
.end method

.method private initAttr(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 59
    sget-object v0, Lcom/media/common/ui/widget/R$styleable;->WordsLimitTextView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 61
    sget p2, Lcom/media/common/ui/widget/R$styleable;->WordsLimitTextView_words_limit_count:I

    iget v0, p0, Lcom/media/common/ui/widget/WordsLimitTextView;->wordsLimit:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/media/common/ui/widget/WordsLimitTextView;->wordsLimit:I

    .line 62
    sget p2, Lcom/media/common/ui/widget/R$styleable;->WordsLimitTextView_words_limit_ellipsizeStart:I

    iget v0, p0, Lcom/media/common/ui/widget/WordsLimitTextView;->ellipsizeStart:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/media/common/ui/widget/WordsLimitTextView;->ellipsizeStart:I

    .line 63
    sget p2, Lcom/media/common/ui/widget/R$styleable;->WordsLimitTextView_words_limit_ellipsizeStr:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/media/common/ui/widget/WordsLimitTextView;->ellipsizeStr:Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget p2, Lcom/media/common/ui/widget/R$styleable;->WordsLimitTextView_words_limit_ellipsizeStr:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    :goto_0
    iput-object p2, p0, Lcom/media/common/ui/widget/WordsLimitTextView;->ellipsizeStr:Ljava/lang/String;

    .line 64
    sget p2, Lcom/media/common/ui/widget/R$styleable;->WordsLimitTextView_words_limit_textSize:I

    iget v0, p0, Lcom/media/common/ui/widget/WordsLimitTextView;->textSize:F

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/media/common/ui/widget/WordsLimitTextView;->textSize:F

    .line 65
    sget p2, Lcom/media/common/ui/widget/R$styleable;->WordsLimitTextView_words_limit_text:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/media/common/ui/widget/WordsLimitTextView;->content:Ljava/lang/String;

    goto :goto_1

    :cond_1
    sget p2, Lcom/media/common/ui/widget/R$styleable;->WordsLimitTextView_words_limit_text:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    :goto_1
    iput-object p2, p0, Lcom/media/common/ui/widget/WordsLimitTextView;->content:Ljava/lang/String;

    .line 66
    sget p2, Lcom/media/common/ui/widget/R$styleable;->WordsLimitTextView_words_limit_textColor:I

    iget v0, p0, Lcom/media/common/ui/widget/WordsLimitTextView;->textColor:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/media/common/ui/widget/WordsLimitTextView;->textColor:I

    .line 67
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private initPaint()V
    .locals 2

    .line 50
    new-instance v0, Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/media/common/ui/widget/WordsLimitTextView;->paint:Landroid/text/TextPaint;

    .line 51
    iget-object v0, p0, Lcom/media/common/ui/widget/WordsLimitTextView;->paint:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 52
    iget-object v0, p0, Lcom/media/common/ui/widget/WordsLimitTextView;->paint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/media/common/ui/widget/WordsLimitTextView;->textColor:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 53
    iget-object v0, p0, Lcom/media/common/ui/widget/WordsLimitTextView;->paint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/media/common/ui/widget/WordsLimitTextView;->textSize:F

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 54
    iget-object v0, p0, Lcom/media/common/ui/widget/WordsLimitTextView;->paint:Landroid/text/TextPaint;

    iget-boolean p0, p0, Lcom/media/common/ui/widget/WordsLimitTextView;->textStyle_isBold:Z

    invoke-virtual {v0, p0}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 111
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 113
    iget-object v0, p0, Lcom/media/common/ui/widget/WordsLimitTextView;->content:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 116
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v1, p0}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    return-void

    .line 121
    :cond_0
    iget v0, p0, Lcom/media/common/ui/widget/WordsLimitTextView;->width:I

    int-to-float v0, v0

    iget-object v2, p0, Lcom/media/common/ui/widget/WordsLimitTextView;->content:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/media/common/ui/widget/WordsLimitTextView;->getContentWidth(Ljava/lang/String;)F

    move-result v2

    cmpl-float v0, v0, v2

    const/4 v2, 0x0

    const/high16 v3, 0x40000000    # 2.0f

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/media/common/ui/widget/WordsLimitTextView;->content:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget v4, p0, Lcom/media/common/ui/widget/WordsLimitTextView;->wordsLimit:I

    if-gt v0, v4, :cond_1

    .line 124
    iget-object v0, p0, Lcom/media/common/ui/widget/WordsLimitTextView;->content:Ljava/lang/String;

    iget v1, p0, Lcom/media/common/ui/widget/WordsLimitTextView;->height:I

    int-to-float v1, v1

    div-float/2addr v1, v3

    invoke-direct {p0}, Lcom/media/common/ui/widget/WordsLimitTextView;->getContentHeight()F

    move-result v4

    div-float/2addr v4, v3

    add-float/2addr v1, v4

    iget-object p0, p0, Lcom/media/common/ui/widget/WordsLimitTextView;->paint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v2, v1, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 127
    :cond_1
    iget-object v0, p0, Lcom/media/common/ui/widget/WordsLimitTextView;->content:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget v4, p0, Lcom/media/common/ui/widget/WordsLimitTextView;->wordsLimit:I

    if-le v0, v4, :cond_3

    .line 130
    iget v0, p0, Lcom/media/common/ui/widget/WordsLimitTextView;->width:I

    int-to-float v0, v0

    iget-object v4, p0, Lcom/media/common/ui/widget/WordsLimitTextView;->ellipsizeStr:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/media/common/ui/widget/WordsLimitTextView;->getContentWidth(Ljava/lang/String;)F

    move-result v4

    sub-float/2addr v0, v4

    iget-object v4, p0, Lcom/media/common/ui/widget/WordsLimitTextView;->content:Ljava/lang/String;

    iget v5, p0, Lcom/media/common/ui/widget/WordsLimitTextView;->ellipsizeStart:I

    invoke-virtual {v4, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/media/common/ui/widget/WordsLimitTextView;->getContentWidth(Ljava/lang/String;)F

    move-result v4

    sub-float/2addr v0, v4

    iget v4, p0, Lcom/media/common/ui/widget/WordsLimitTextView;->offset:F

    sub-float/2addr v0, v4

    .line 133
    iget-object v4, p0, Lcom/media/common/ui/widget/WordsLimitTextView;->content:Ljava/lang/String;

    iget-object v5, p0, Lcom/media/common/ui/widget/WordsLimitTextView;->content:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/media/common/ui/widget/WordsLimitTextView;->getContentWidth(Ljava/lang/String;)F

    move-result v4

    sub-float v4, v0, v4

    cmpl-float v4, v4, v2

    if-lez v4, :cond_2

    .line 134
    invoke-direct {p0, v0}, Lcom/media/common/ui/widget/WordsLimitTextView;->calculateString(F)I

    move-result v0

    .line 136
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/media/common/ui/widget/WordsLimitTextView;->content:Ljava/lang/String;

    iget v6, p0, Lcom/media/common/ui/widget/WordsLimitTextView;->ellipsizeStart:I

    invoke-virtual {v5, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/media/common/ui/widget/WordsLimitTextView;->ellipsizeStr:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/media/common/ui/widget/WordsLimitTextView;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 138
    iget v1, p0, Lcom/media/common/ui/widget/WordsLimitTextView;->height:I

    int-to-float v1, v1

    div-float/2addr v1, v3

    invoke-direct {p0}, Lcom/media/common/ui/widget/WordsLimitTextView;->getContentHeight()F

    move-result v4

    div-float/2addr v4, v3

    add-float/2addr v1, v4

    iget-object p0, p0, Lcom/media/common/ui/widget/WordsLimitTextView;->paint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v2, v1, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 144
    :cond_2
    iget-object v0, p0, Lcom/media/common/ui/widget/WordsLimitTextView;->content:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 146
    iget v4, p0, Lcom/media/common/ui/widget/WordsLimitTextView;->width:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/media/common/ui/widget/WordsLimitTextView;->ellipsizeStr:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/media/common/ui/widget/WordsLimitTextView;->getContentWidth(Ljava/lang/String;)F

    move-result v5

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/media/common/ui/widget/WordsLimitTextView;->offset:F

    sub-float/2addr v4, v5

    .line 148
    invoke-direct {p0, v4, v1, v0}, Lcom/media/common/ui/widget/WordsLimitTextView;->calculateString(FII)I

    move-result v0

    .line 150
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/media/common/ui/widget/WordsLimitTextView;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1, v0}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/media/common/ui/widget/WordsLimitTextView;->ellipsizeStr:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/media/common/ui/widget/WordsLimitTextView;->height:I

    int-to-float v1, v1

    div-float/2addr v1, v3

    invoke-direct {p0}, Lcom/media/common/ui/widget/WordsLimitTextView;->getContentHeight()F

    move-result v4

    div-float/2addr v4, v3

    add-float/2addr v1, v4

    iget-object p0, p0, Lcom/media/common/ui/widget/WordsLimitTextView;->paint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v2, v1, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 158
    :cond_3
    iget-object v0, p0, Lcom/media/common/ui/widget/WordsLimitTextView;->content:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 160
    iget v4, p0, Lcom/media/common/ui/widget/WordsLimitTextView;->width:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/media/common/ui/widget/WordsLimitTextView;->ellipsizeStr:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/media/common/ui/widget/WordsLimitTextView;->getContentWidth(Ljava/lang/String;)F

    move-result v5

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/media/common/ui/widget/WordsLimitTextView;->offset:F

    sub-float/2addr v4, v5

    .line 162
    invoke-direct {p0, v4, v1, v0}, Lcom/media/common/ui/widget/WordsLimitTextView;->calculateString(FII)I

    move-result v0

    .line 164
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/media/common/ui/widget/WordsLimitTextView;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1, v0}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/media/common/ui/widget/WordsLimitTextView;->ellipsizeStr:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/media/common/ui/widget/WordsLimitTextView;->height:I

    int-to-float v1, v1

    div-float/2addr v1, v3

    invoke-direct {p0}, Lcom/media/common/ui/widget/WordsLimitTextView;->getContentHeight()F

    move-result v4

    div-float/2addr v4, v3

    add-float/2addr v1, v4

    iget-object p0, p0, Lcom/media/common/ui/widget/WordsLimitTextView;->paint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v2, v1, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 72
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 74
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 75
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/16 v1, 0x1f4

    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v3, -0x80000000

    if-eq v0, v3, :cond_1

    if-eq v0, v2, :cond_0

    .line 87
    iput v1, p0, Lcom/media/common/ui/widget/WordsLimitTextView;->width:I

    goto :goto_0

    .line 83
    :cond_0
    iput p1, p0, Lcom/media/common/ui/widget/WordsLimitTextView;->width:I

    goto :goto_0

    .line 80
    :cond_1
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/media/common/ui/widget/WordsLimitTextView;->width:I

    .line 91
    :goto_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    .line 92
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/16 v0, 0x32

    if-eq p1, v3, :cond_3

    if-eq p1, v2, :cond_2

    .line 104
    iput v0, p0, Lcom/media/common/ui/widget/WordsLimitTextView;->height:I

    goto :goto_1

    .line 100
    :cond_2
    iput p2, p0, Lcom/media/common/ui/widget/WordsLimitTextView;->height:I

    goto :goto_1

    .line 97
    :cond_3
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/media/common/ui/widget/WordsLimitTextView;->height:I

    :goto_1
    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    .line 247
    iput-object p1, p0, Lcom/media/common/ui/widget/WordsLimitTextView;->content:Ljava/lang/String;

    .line 249
    invoke-virtual {p0}, Lcom/media/common/ui/widget/WordsLimitTextView;->invalidate()V

    return-void
.end method

.method public setTextColor(I)V
    .locals 0

    if-eqz p1, :cond_0

    .line 257
    iput p1, p0, Lcom/media/common/ui/widget/WordsLimitTextView;->textColor:I

    .line 258
    iget-object p0, p0, Lcom/media/common/ui/widget/WordsLimitTextView;->paint:Landroid/text/TextPaint;

    invoke-virtual {p0, p1}, Landroid/text/TextPaint;->setColor(I)V

    :cond_0
    return-void
.end method
