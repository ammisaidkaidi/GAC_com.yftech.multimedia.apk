.class public Lcom/media/common/ui/widget/MarqueeView;
.super Landroid/view/View;
.source "MarqueeView.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final NOT_SCROLL:I = -0x1

.field public static final REPET_CONTINUOUS:I = 0x2

.field public static final REPET_INTERVAL:I = 0x1

.field public static final REPET_ONCETIME:I = 0x0

.field private static final TAG:Ljava/lang/String; = "MarqueeView"


# instance fields
.field private final DEFAULT_SIZE:I

.field private black_count:Ljava/lang/String;

.field private content:Ljava/lang/String;

.field private contentWidth:I

.field private isClickStop:Z

.field private isResetLocation:Z

.field private isRightStart:Z

.field private isRoll:Z

.field private keyWords:Ljava/lang/String;

.field private keyWordsColor:I

.field private mIsVisibe:Z

.field private final offSet:I

.field private oneBlack_width:F

.field private paint:Landroid/text/TextPaint;

.field private rect:Landroid/graphics/Rect;

.field private repetCount:I

.field private repetType:I

.field private resetInit:Z

.field private speed:F

.field private startLocationDistance:F

.field private string:Ljava/lang/String;

.field private textColor:I

.field private textDistance1:I

.field private textGravityCenterMode:Z

.field private textHeight:F

.field private textSize:F

.field private textStyle_isBlod:Z

.field private textdistance:I

.field private thread:Ljava/lang/Thread;

.field private width:I

.field private xLocation:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 75
    invoke-direct {p0, p1, v0}, Lcom/media/common/ui/widget/MarqueeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 79
    invoke-direct {p0, p1, p2, v0}, Lcom/media/common/ui/widget/MarqueeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 83
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p3, 0x3f800000    # 1.0f

    .line 27
    iput p3, p0, Lcom/media/common/ui/widget/MarqueeView;->speed:F

    const/high16 v0, -0x1000000

    .line 28
    iput v0, p0, Lcom/media/common/ui/widget/MarqueeView;->textColor:I

    const/high16 v0, -0x10000

    .line 29
    iput v0, p0, Lcom/media/common/ui/widget/MarqueeView;->keyWordsColor:I

    const/high16 v0, 0x41400000    # 12.0f

    .line 30
    iput v0, p0, Lcom/media/common/ui/widget/MarqueeView;->textSize:F

    const/16 v0, 0xa

    .line 32
    iput v0, p0, Lcom/media/common/ui/widget/MarqueeView;->textDistance1:I

    const-string v0, ""

    .line 33
    iput-object v0, p0, Lcom/media/common/ui/widget/MarqueeView;->black_count:Ljava/lang/String;

    const/4 v0, 0x1

    .line 35
    iput v0, p0, Lcom/media/common/ui/widget/MarqueeView;->repetType:I

    .line 41
    iput p3, p0, Lcom/media/common/ui/widget/MarqueeView;->startLocationDistance:F

    const/16 p3, 0x1f4

    .line 43
    iput p3, p0, Lcom/media/common/ui/widget/MarqueeView;->DEFAULT_SIZE:I

    const/4 p3, 0x0

    .line 44
    iput-boolean p3, p0, Lcom/media/common/ui/widget/MarqueeView;->textStyle_isBlod:Z

    .line 46
    iput-boolean p3, p0, Lcom/media/common/ui/widget/MarqueeView;->textGravityCenterMode:Z

    .line 48
    iput-boolean p3, p0, Lcom/media/common/ui/widget/MarqueeView;->isClickStop:Z

    .line 49
    iput-boolean v0, p0, Lcom/media/common/ui/widget/MarqueeView;->isResetLocation:Z

    const/4 v1, 0x0

    .line 50
    iput v1, p0, Lcom/media/common/ui/widget/MarqueeView;->xLocation:F

    .line 53
    iput-boolean p3, p0, Lcom/media/common/ui/widget/MarqueeView;->isRoll:Z

    .line 60
    iput p3, p0, Lcom/media/common/ui/widget/MarqueeView;->repetCount:I

    .line 61
    iput-boolean v0, p0, Lcom/media/common/ui/widget/MarqueeView;->resetInit:Z

    const-string v0, ""

    .line 64
    iput-object v0, p0, Lcom/media/common/ui/widget/MarqueeView;->content:Ljava/lang/String;

    const-string v0, ""

    .line 65
    iput-object v0, p0, Lcom/media/common/ui/widget/MarqueeView;->keyWords:Ljava/lang/String;

    .line 67
    iput-boolean p3, p0, Lcom/media/common/ui/widget/MarqueeView;->mIsVisibe:Z

    const/16 p3, 0xf

    .line 70
    iput p3, p0, Lcom/media/common/ui/widget/MarqueeView;->offSet:I

    .line 84
    invoke-direct {p0, p1, p2}, Lcom/media/common/ui/widget/MarqueeView;->initattrs(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 85
    invoke-direct {p0}, Lcom/media/common/ui/widget/MarqueeView;->initpaint()V

    .line 86
    invoke-direct {p0}, Lcom/media/common/ui/widget/MarqueeView;->initClick()V

    .line 88
    iget-object p1, p0, Lcom/media/common/ui/widget/MarqueeView;->content:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 89
    iget-object p1, p0, Lcom/media/common/ui/widget/MarqueeView;->content:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/media/common/ui/widget/MarqueeView;->setContent(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/media/common/ui/widget/MarqueeView;)Z
    .locals 0

    .line 24
    iget-boolean p0, p0, Lcom/media/common/ui/widget/MarqueeView;->isClickStop:Z

    return p0
.end method

.method static synthetic access$100(Lcom/media/common/ui/widget/MarqueeView;)Z
    .locals 0

    .line 24
    iget-boolean p0, p0, Lcom/media/common/ui/widget/MarqueeView;->isRoll:Z

    return p0
.end method

.method private getBlacktWidth()F
    .locals 2

    const-string v0, "en en"

    const-string v1, "enen"

    .line 439
    invoke-direct {p0, v0}, Lcom/media/common/ui/widget/MarqueeView;->getContentWidth(Ljava/lang/String;)F

    move-result v0

    invoke-direct {p0, v1}, Lcom/media/common/ui/widget/MarqueeView;->getContentWidth(Ljava/lang/String;)F

    move-result p0

    sub-float/2addr v0, p0

    return v0
.end method

.method private getContentHeight()F
    .locals 1

    .line 471
    iget-object p0, p0, Lcom/media/common/ui/widget/MarqueeView;->paint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p0

    .line 472
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
    .locals 4

    if-eqz p1, :cond_2

    const-string v0, ""

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 448
    :cond_0
    iget-object v0, p0, Lcom/media/common/ui/widget/MarqueeView;->rect:Landroid/graphics/Rect;

    if-nez v0, :cond_1

    .line 449
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/media/common/ui/widget/MarqueeView;->rect:Landroid/graphics/Rect;

    .line 451
    :cond_1
    iget-object v0, p0, Lcom/media/common/ui/widget/MarqueeView;->paint:Landroid/text/TextPaint;

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, p0, Lcom/media/common/ui/widget/MarqueeView;->rect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 452
    invoke-direct {p0}, Lcom/media/common/ui/widget/MarqueeView;->getContentHeight()F

    move-result p1

    iput p1, p0, Lcom/media/common/ui/widget/MarqueeView;->textHeight:F

    .line 454
    iget-object p0, p0, Lcom/media/common/ui/widget/MarqueeView;->rect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0

    add-int/lit8 p0, p0, 0xf

    int-to-float p0, p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private getWordWidth(Ljava/lang/String;)F
    .locals 0

    .line 459
    iget-object p0, p0, Lcom/media/common/ui/widget/MarqueeView;->paint:Landroid/text/TextPaint;

    invoke-virtual {p0, p1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result p0

    return p0
.end method

.method private initClick()V
    .locals 1

    .line 93
    new-instance v0, Lcom/media/common/ui/widget/MarqueeView$1;

    invoke-direct {v0, p0}, Lcom/media/common/ui/widget/MarqueeView$1;-><init>(Lcom/media/common/ui/widget/MarqueeView;)V

    invoke-virtual {p0, v0}, Lcom/media/common/ui/widget/MarqueeView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initattrs(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 109
    sget-object v0, Lcom/media/common/ui/widget/R$styleable;->MarqueeView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 111
    sget p2, Lcom/media/common/ui/widget/R$styleable;->MarqueeView_marqueeview_text:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    const-string p2, ""

    goto :goto_0

    :cond_0
    sget p2, Lcom/media/common/ui/widget/R$styleable;->MarqueeView_marqueeview_text:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    :goto_0
    iput-object p2, p0, Lcom/media/common/ui/widget/MarqueeView;->content:Ljava/lang/String;

    .line 112
    sget p2, Lcom/media/common/ui/widget/R$styleable;->MarqueeView_marqueeview_keywords:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1

    const-string p2, ""

    goto :goto_1

    :cond_1
    sget p2, Lcom/media/common/ui/widget/R$styleable;->MarqueeView_marqueeview_keywords:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    :goto_1
    iput-object p2, p0, Lcom/media/common/ui/widget/MarqueeView;->keyWords:Ljava/lang/String;

    .line 113
    sget p2, Lcom/media/common/ui/widget/R$styleable;->MarqueeView_marqueeview_textStyle_isBold:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/media/common/ui/widget/MarqueeView;->textStyle_isBlod:Z

    .line 114
    sget p2, Lcom/media/common/ui/widget/R$styleable;->MarqueeView_marqueeview_text_color:I

    iget v1, p0, Lcom/media/common/ui/widget/MarqueeView;->textColor:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/media/common/ui/widget/MarqueeView;->textColor:I

    .line 115
    sget p2, Lcom/media/common/ui/widget/R$styleable;->MarqueeView_marqueeview_keywords_color:I

    iget v1, p0, Lcom/media/common/ui/widget/MarqueeView;->keyWordsColor:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/media/common/ui/widget/MarqueeView;->keyWordsColor:I

    .line 116
    sget p2, Lcom/media/common/ui/widget/R$styleable;->MarqueeView_marqueeview_isclickalbe_stop:I

    iget-boolean v1, p0, Lcom/media/common/ui/widget/MarqueeView;->isClickStop:Z

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/media/common/ui/widget/MarqueeView;->isClickStop:Z

    .line 117
    sget p2, Lcom/media/common/ui/widget/R$styleable;->MarqueeView_marqueeview_is_resetLocation:I

    iget-boolean v1, p0, Lcom/media/common/ui/widget/MarqueeView;->isResetLocation:Z

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/media/common/ui/widget/MarqueeView;->isResetLocation:Z

    .line 118
    sget p2, Lcom/media/common/ui/widget/R$styleable;->MarqueeView_marqueeview_text_speed:I

    iget v1, p0, Lcom/media/common/ui/widget/MarqueeView;->speed:F

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/media/common/ui/widget/MarqueeView;->speed:F

    .line 119
    sget p2, Lcom/media/common/ui/widget/R$styleable;->MarqueeView_marqueeview_text_size:I

    iget v1, p0, Lcom/media/common/ui/widget/MarqueeView;->textSize:F

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/media/common/ui/widget/MarqueeView;->textSize:F

    .line 120
    sget p2, Lcom/media/common/ui/widget/R$styleable;->MarqueeView_marqueeview_text_distance:I

    iget v1, p0, Lcom/media/common/ui/widget/MarqueeView;->textDistance1:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lcom/media/common/ui/widget/MarqueeView;->textDistance1:I

    .line 121
    sget p2, Lcom/media/common/ui/widget/R$styleable;->MarqueeView_marqueeview_text_startlocationdistance:I

    iget v1, p0, Lcom/media/common/ui/widget/MarqueeView;->startLocationDistance:F

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/media/common/ui/widget/MarqueeView;->startLocationDistance:F

    .line 122
    sget p2, Lcom/media/common/ui/widget/R$styleable;->MarqueeView_marqueeview_repet_type:I

    iget v1, p0, Lcom/media/common/ui/widget/MarqueeView;->repetType:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/media/common/ui/widget/MarqueeView;->repetType:I

    .line 123
    sget p2, Lcom/media/common/ui/widget/R$styleable;->MarqueeView_marqueeview_textGravityCenterMode:I

    iget-boolean v1, p0, Lcom/media/common/ui/widget/MarqueeView;->textGravityCenterMode:Z

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/media/common/ui/widget/MarqueeView;->textGravityCenterMode:Z

    .line 124
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 125
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    .line 126
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p2

    const-string v1, "ar"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "he"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    iput-boolean v0, p0, Lcom/media/common/ui/widget/MarqueeView;->isRightStart:Z

    return-void
.end method

.method private initpaint()V
    .locals 2

    .line 166
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/media/common/ui/widget/MarqueeView;->rect:Landroid/graphics/Rect;

    .line 167
    new-instance v0, Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/media/common/ui/widget/MarqueeView;->paint:Landroid/text/TextPaint;

    .line 168
    iget-object v0, p0, Lcom/media/common/ui/widget/MarqueeView;->paint:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 169
    iget-object v0, p0, Lcom/media/common/ui/widget/MarqueeView;->paint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/media/common/ui/widget/MarqueeView;->textColor:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 170
    iget-object v0, p0, Lcom/media/common/ui/widget/MarqueeView;->paint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/media/common/ui/widget/MarqueeView;->textSize:F

    invoke-virtual {p0, v1}, Lcom/media/common/ui/widget/MarqueeView;->dp2px(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 171
    iget-object v0, p0, Lcom/media/common/ui/widget/MarqueeView;->paint:Landroid/text/TextPaint;

    iget-boolean p0, p0, Lcom/media/common/ui/widget/MarqueeView;->textStyle_isBlod:Z

    invoke-virtual {v0, p0}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    return-void
.end method

.method private setClickStop(Z)V
    .locals 0

    .line 381
    iput-boolean p1, p0, Lcom/media/common/ui/widget/MarqueeView;->isClickStop:Z

    return-void
.end method

.method private setContinueble(I)V
    .locals 0

    .line 391
    iput p1, p0, Lcom/media/common/ui/widget/MarqueeView;->repetType:I

    return-void
.end method

.method private setResetLocation(Z)V
    .locals 0

    .line 613
    iput-boolean p1, p0, Lcom/media/common/ui/widget/MarqueeView;->isResetLocation:Z

    return-void
.end method


# virtual methods
.method public appendContent(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public continueRoll()V
    .locals 1

    .line 349
    iget-boolean v0, p0, Lcom/media/common/ui/widget/MarqueeView;->isRoll:Z

    if-nez v0, :cond_1

    .line 350
    iget-object v0, p0, Lcom/media/common/ui/widget/MarqueeView;->thread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/media/common/ui/widget/MarqueeView;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    const/4 v0, 0x0

    .line 353
    iput-object v0, p0, Lcom/media/common/ui/widget/MarqueeView;->thread:Ljava/lang/Thread;

    :cond_0
    const/4 v0, 0x1

    .line 356
    iput-boolean v0, p0, Lcom/media/common/ui/widget/MarqueeView;->isRoll:Z

    .line 357
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/media/common/ui/widget/MarqueeView;->thread:Ljava/lang/Thread;

    .line 358
    iget-object p0, p0, Lcom/media/common/ui/widget/MarqueeView;->thread:Ljava/lang/Thread;

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    :cond_1
    return-void
.end method

.method public dp2px(F)I
    .locals 0

    .line 175
    invoke-virtual {p0}, Lcom/media/common/ui/widget/MarqueeView;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 181
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 182
    invoke-virtual {p0}, Lcom/media/common/ui/widget/MarqueeView;->stopRoll()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 187
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 201
    iget v0, p0, Lcom/media/common/ui/widget/MarqueeView;->contentWidth:I

    iget v1, p0, Lcom/media/common/ui/widget/MarqueeView;->width:I

    const/4 v2, -0x1

    const/high16 v3, 0x40000000    # 2.0f

    if-lt v0, v1, :cond_2

    iget v0, p0, Lcom/media/common/ui/widget/MarqueeView;->repetType:I

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 211
    :cond_0
    iget-boolean v0, p0, Lcom/media/common/ui/widget/MarqueeView;->mIsVisibe:Z

    if-eqz v0, :cond_1

    .line 212
    invoke-virtual {p0}, Lcom/media/common/ui/widget/MarqueeView;->continueRoll()V

    .line 216
    :cond_1
    iget v0, p0, Lcom/media/common/ui/widget/MarqueeView;->repetType:I

    packed-switch v0, :pswitch_data_0

    .line 245
    iget v0, p0, Lcom/media/common/ui/widget/MarqueeView;->contentWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/media/common/ui/widget/MarqueeView;->xLocation:F

    neg-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4

    .line 248
    invoke-virtual {p0}, Lcom/media/common/ui/widget/MarqueeView;->stopRoll()V

    goto :goto_2

    .line 227
    :pswitch_0
    iget v0, p0, Lcom/media/common/ui/widget/MarqueeView;->xLocation:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4

    .line 228
    iget v0, p0, Lcom/media/common/ui/widget/MarqueeView;->xLocation:F

    neg-float v0, v0

    iget v1, p0, Lcom/media/common/ui/widget/MarqueeView;->contentWidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 232
    iget v1, p0, Lcom/media/common/ui/widget/MarqueeView;->repetCount:I

    if-lt v0, v1, :cond_4

    .line 233
    iget v0, p0, Lcom/media/common/ui/widget/MarqueeView;->repetCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/media/common/ui/widget/MarqueeView;->repetCount:I

    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/media/common/ui/widget/MarqueeView;->string:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/media/common/ui/widget/MarqueeView;->content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/media/common/ui/widget/MarqueeView;->string:Ljava/lang/String;

    goto :goto_2

    .line 218
    :pswitch_1
    iget v0, p0, Lcom/media/common/ui/widget/MarqueeView;->contentWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/media/common/ui/widget/MarqueeView;->xLocation:F

    neg-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_4

    .line 220
    invoke-virtual {p0}, Lcom/media/common/ui/widget/MarqueeView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/media/common/ui/widget/MarqueeView;->xLocation:F

    goto :goto_2

    .line 203
    :cond_2
    :goto_0
    iget-boolean v0, p0, Lcom/media/common/ui/widget/MarqueeView;->textGravityCenterMode:Z

    if-nez v0, :cond_3

    .line 204
    iget v0, p0, Lcom/media/common/ui/widget/MarqueeView;->width:I

    int-to-float v0, v0

    iget v1, p0, Lcom/media/common/ui/widget/MarqueeView;->startLocationDistance:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/media/common/ui/widget/MarqueeView;->xLocation:F

    goto :goto_1

    .line 207
    :cond_3
    iget v0, p0, Lcom/media/common/ui/widget/MarqueeView;->width:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/media/common/ui/widget/MarqueeView;->content:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/media/common/ui/widget/MarqueeView;->getContentWidth(Ljava/lang/String;)F

    move-result v1

    sub-float/2addr v0, v1

    div-float/2addr v0, v3

    iput v0, p0, Lcom/media/common/ui/widget/MarqueeView;->xLocation:F

    .line 209
    :goto_1
    invoke-virtual {p0}, Lcom/media/common/ui/widget/MarqueeView;->stopRoll()V

    .line 256
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/media/common/ui/widget/MarqueeView;->string:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 258
    iget-boolean v0, p0, Lcom/media/common/ui/widget/MarqueeView;->isRightStart:Z

    if-eqz v0, :cond_5

    .line 259
    iget-object v0, p0, Lcom/media/common/ui/widget/MarqueeView;->paint:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/media/common/ui/widget/MarqueeView;->string:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    .line 260
    invoke-virtual {p0}, Lcom/media/common/ui/widget/MarqueeView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v4, v1, v0

    if-lez v4, :cond_5

    sub-float/2addr v1, v0

    .line 262
    iput v1, p0, Lcom/media/common/ui/widget/MarqueeView;->xLocation:F

    .line 266
    :cond_5
    iget-object v0, p0, Lcom/media/common/ui/widget/MarqueeView;->keyWords:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/media/common/ui/widget/MarqueeView;->string:Ljava/lang/String;

    iget-object v1, p0, Lcom/media/common/ui/widget/MarqueeView;->keyWords:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    goto/16 :goto_4

    .line 270
    :cond_6
    iget-object v0, p0, Lcom/media/common/ui/widget/MarqueeView;->string:Ljava/lang/String;

    .line 274
    iget v1, p0, Lcom/media/common/ui/widget/MarqueeView;->xLocation:F

    .line 276
    :cond_7
    :goto_3
    iget-object v4, p0, Lcom/media/common/ui/widget/MarqueeView;->keyWords:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v2, :cond_8

    .line 281
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_b

    .line 284
    iget-object v2, p0, Lcom/media/common/ui/widget/MarqueeView;->paint:Landroid/text/TextPaint;

    iget v4, p0, Lcom/media/common/ui/widget/MarqueeView;->textColor:I

    invoke-virtual {v2, v4}, Landroid/text/TextPaint;->setColor(I)V

    .line 285
    invoke-virtual {p0}, Lcom/media/common/ui/widget/MarqueeView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    iget v4, p0, Lcom/media/common/ui/widget/MarqueeView;->textHeight:F

    div-float/2addr v4, v3

    add-float/2addr v2, v4

    iget-object p0, p0, Lcom/media/common/ui/widget/MarqueeView;->paint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_5

    :cond_8
    if-eqz v4, :cond_9

    .line 293
    iget-object v5, p0, Lcom/media/common/ui/widget/MarqueeView;->paint:Landroid/text/TextPaint;

    iget v6, p0, Lcom/media/common/ui/widget/MarqueeView;->textColor:I

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->setColor(I)V

    const/4 v5, 0x0

    .line 294
    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/media/common/ui/widget/MarqueeView;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v3

    iget v8, p0, Lcom/media/common/ui/widget/MarqueeView;->textHeight:F

    div-float/2addr v8, v3

    add-float/2addr v7, v8

    iget-object v8, p0, Lcom/media/common/ui/widget/MarqueeView;->paint:Landroid/text/TextPaint;

    invoke-virtual {p1, v6, v1, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 296
    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/media/common/ui/widget/MarqueeView;->getWordWidth(Ljava/lang/String;)F

    move-result v5

    add-float/2addr v1, v5

    .line 299
    :cond_9
    iget-object v5, p0, Lcom/media/common/ui/widget/MarqueeView;->paint:Landroid/text/TextPaint;

    iget v6, p0, Lcom/media/common/ui/widget/MarqueeView;->keyWordsColor:I

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->setColor(I)V

    .line 300
    iget-object v5, p0, Lcom/media/common/ui/widget/MarqueeView;->keyWords:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/media/common/ui/widget/MarqueeView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v3

    iget v7, p0, Lcom/media/common/ui/widget/MarqueeView;->textHeight:F

    div-float/2addr v7, v3

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/media/common/ui/widget/MarqueeView;->paint:Landroid/text/TextPaint;

    invoke-virtual {p1, v5, v1, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 301
    iget-object v5, p0, Lcom/media/common/ui/widget/MarqueeView;->keyWords:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/media/common/ui/widget/MarqueeView;->getWordWidth(Ljava/lang/String;)F

    move-result v5

    add-float/2addr v1, v5

    .line 305
    iget-object v5, p0, Lcom/media/common/ui/widget/MarqueeView;->keyWords:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v4

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_7

    .line 306
    iget-object v5, p0, Lcom/media/common/ui/widget/MarqueeView;->keyWords:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    .line 267
    :cond_a
    :goto_4
    iget-object v0, p0, Lcom/media/common/ui/widget/MarqueeView;->string:Ljava/lang/String;

    iget v1, p0, Lcom/media/common/ui/widget/MarqueeView;->xLocation:F

    invoke-virtual {p0}, Lcom/media/common/ui/widget/MarqueeView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    iget v4, p0, Lcom/media/common/ui/widget/MarqueeView;->textHeight:F

    div-float/2addr v4, v3

    add-float/2addr v2, v4

    iget-object p0, p0, Lcom/media/common/ui/widget/MarqueeView;->paint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_b
    :goto_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 131
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 133
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    .line 134
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const-string v0, "MarqueeView"

    .line 135
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WidthMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", WidthSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v0, -0x80000000

    const/16 v1, 0x1f4

    if-eq p2, v0, :cond_1

    const/high16 v0, 0x40000000    # 2.0f

    if-eq p2, v0, :cond_0

    .line 146
    iput v1, p0, Lcom/media/common/ui/widget/MarqueeView;->width:I

    goto :goto_0

    .line 142
    :cond_0
    iput p1, p0, Lcom/media/common/ui/widget/MarqueeView;->width:I

    goto :goto_0

    .line 139
    :cond_1
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/media/common/ui/widget/MarqueeView;->width:I

    .line 150
    :goto_0
    iget p1, p0, Lcom/media/common/ui/widget/MarqueeView;->textDistance1:I

    invoke-virtual {p0, p1}, Lcom/media/common/ui/widget/MarqueeView;->setTextDistance(I)V

    .line 152
    iget p1, p0, Lcom/media/common/ui/widget/MarqueeView;->startLocationDistance:F

    const/4 p2, 0x0

    cmpg-float p1, p1, p2

    if-gez p1, :cond_2

    .line 153
    iput p2, p0, Lcom/media/common/ui/widget/MarqueeView;->startLocationDistance:F

    goto :goto_1

    .line 154
    :cond_2
    iget p1, p0, Lcom/media/common/ui/widget/MarqueeView;->startLocationDistance:F

    const/high16 p2, 0x3f800000    # 1.0f

    cmpl-float p1, p1, p2

    if-lez p1, :cond_3

    .line 155
    iput p2, p0, Lcom/media/common/ui/widget/MarqueeView;->startLocationDistance:F

    .line 157
    :cond_3
    :goto_1
    iget p1, p0, Lcom/media/common/ui/widget/MarqueeView;->width:I

    int-to-float p1, p1

    iget p2, p0, Lcom/media/common/ui/widget/MarqueeView;->startLocationDistance:F

    mul-float/2addr p1, p2

    iput p1, p0, Lcom/media/common/ui/widget/MarqueeView;->xLocation:F

    const/4 p1, 0x0

    .line 158
    iput-boolean p1, p0, Lcom/media/common/ui/widget/MarqueeView;->resetInit:Z

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 316
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    if-nez p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 317
    :goto_0
    iput-boolean p1, p0, Lcom/media/common/ui/widget/MarqueeView;->mIsVisibe:Z

    .line 318
    iget-boolean p1, p0, Lcom/media/common/ui/widget/MarqueeView;->mIsVisibe:Z

    if-nez p1, :cond_1

    .line 319
    invoke-virtual {p0}, Lcom/media/common/ui/widget/MarqueeView;->stopRoll()V

    goto :goto_1

    .line 321
    :cond_1
    invoke-virtual {p0}, Lcom/media/common/ui/widget/MarqueeView;->invalidate()V

    :goto_1
    return-void
.end method

.method public run()V
    .locals 2

    .line 334
    :goto_0
    iget-boolean v0, p0, Lcom/media/common/ui/widget/MarqueeView;->isRoll:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/media/common/ui/widget/MarqueeView;->content:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/media/common/ui/widget/MarqueeView;->mIsVisibe:Z

    if-eqz v0, :cond_0

    const-wide/16 v0, 0xa

    .line 336
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 337
    iget v0, p0, Lcom/media/common/ui/widget/MarqueeView;->xLocation:F

    iget v1, p0, Lcom/media/common/ui/widget/MarqueeView;->speed:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/media/common/ui/widget/MarqueeView;->xLocation:F

    .line 338
    invoke-virtual {p0}, Lcom/media/common/ui/widget/MarqueeView;->postInvalidate()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 340
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 3

    .line 545
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 550
    :cond_0
    iget-object v0, p0, Lcom/media/common/ui/widget/MarqueeView;->thread:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    .line 551
    iget-object v0, p0, Lcom/media/common/ui/widget/MarqueeView;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    const/4 v0, 0x0

    .line 553
    iput-object v0, p0, Lcom/media/common/ui/widget/MarqueeView;->thread:Ljava/lang/Thread;

    .line 556
    :cond_1
    iget-boolean v0, p0, Lcom/media/common/ui/widget/MarqueeView;->isResetLocation:Z

    if-eqz v0, :cond_2

    .line 557
    iget v0, p0, Lcom/media/common/ui/widget/MarqueeView;->width:I

    int-to-float v0, v0

    iget v1, p0, Lcom/media/common/ui/widget/MarqueeView;->startLocationDistance:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/media/common/ui/widget/MarqueeView;->xLocation:F

    .line 560
    :cond_2
    iget-object v0, p0, Lcom/media/common/ui/widget/MarqueeView;->black_count:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 561
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/media/common/ui/widget/MarqueeView;->black_count:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 563
    :cond_3
    iput-object p1, p0, Lcom/media/common/ui/widget/MarqueeView;->content:Ljava/lang/String;

    .line 566
    iget-object v0, p0, Lcom/media/common/ui/widget/MarqueeView;->content:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/media/common/ui/widget/MarqueeView;->getContentWidth(Ljava/lang/String;)F

    move-result v0

    .line 568
    iget v1, p0, Lcom/media/common/ui/widget/MarqueeView;->width:I

    int-to-float v1, v1

    cmpg-float v1, v0, v1

    if-gez v1, :cond_4

    float-to-int v0, v0

    .line 569
    iput v0, p0, Lcom/media/common/ui/widget/MarqueeView;->contentWidth:I

    .line 570
    iput-object p1, p0, Lcom/media/common/ui/widget/MarqueeView;->string:Ljava/lang/String;

    goto :goto_1

    .line 574
    :cond_4
    iget v0, p0, Lcom/media/common/ui/widget/MarqueeView;->repetType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 577
    iget-object p1, p0, Lcom/media/common/ui/widget/MarqueeView;->content:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/media/common/ui/widget/MarqueeView;->getContentWidth(Ljava/lang/String;)F

    move-result p1

    iget v0, p0, Lcom/media/common/ui/widget/MarqueeView;->textdistance:I

    int-to-float v0, v0

    add-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/media/common/ui/widget/MarqueeView;->contentWidth:I

    const/4 p1, 0x0

    .line 579
    iput p1, p0, Lcom/media/common/ui/widget/MarqueeView;->repetCount:I

    .line 580
    iget v0, p0, Lcom/media/common/ui/widget/MarqueeView;->width:I

    iget v2, p0, Lcom/media/common/ui/widget/MarqueeView;->contentWidth:I

    div-int/2addr v0, v2

    add-int/2addr v0, v1

    const-string v1, ""

    .line 581
    iput-object v1, p0, Lcom/media/common/ui/widget/MarqueeView;->string:Ljava/lang/String;

    :goto_0
    if-gt p1, v0, :cond_7

    .line 583
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/media/common/ui/widget/MarqueeView;->string:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/media/common/ui/widget/MarqueeView;->content:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/media/common/ui/widget/MarqueeView;->string:Ljava/lang/String;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 587
    :cond_5
    iget v0, p0, Lcom/media/common/ui/widget/MarqueeView;->xLocation:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_6

    iget v0, p0, Lcom/media/common/ui/widget/MarqueeView;->repetType:I

    if-nez v0, :cond_6

    .line 588
    iget v0, p0, Lcom/media/common/ui/widget/MarqueeView;->xLocation:F

    neg-float v0, v0

    iget v1, p0, Lcom/media/common/ui/widget/MarqueeView;->contentWidth:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_6

    .line 589
    invoke-virtual {p0}, Lcom/media/common/ui/widget/MarqueeView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/media/common/ui/widget/MarqueeView;->startLocationDistance:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/media/common/ui/widget/MarqueeView;->xLocation:F

    .line 592
    :cond_6
    iget-object v0, p0, Lcom/media/common/ui/widget/MarqueeView;->content:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/media/common/ui/widget/MarqueeView;->getContentWidth(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/media/common/ui/widget/MarqueeView;->contentWidth:I

    .line 594
    iput-object p1, p0, Lcom/media/common/ui/widget/MarqueeView;->string:Ljava/lang/String;

    .line 598
    :cond_7
    :goto_1
    invoke-virtual {p0}, Lcom/media/common/ui/widget/MarqueeView;->invalidate()V

    return-void
.end method

.method public setContent(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 524
    iget v0, p0, Lcom/media/common/ui/widget/MarqueeView;->textDistance1:I

    invoke-virtual {p0, v0}, Lcom/media/common/ui/widget/MarqueeView;->setTextDistance(I)V

    const-string v0, ""

    if-eqz p1, :cond_0

    .line 527
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 529
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 531
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/media/common/ui/widget/MarqueeView;->black_count:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 535
    :cond_0
    invoke-virtual {p0, v0}, Lcom/media/common/ui/widget/MarqueeView;->setContent(Ljava/lang/String;)V

    return-void
.end method

.method public setKeyWords(Ljava/lang/String;)V
    .locals 0

    .line 513
    iput-object p1, p0, Lcom/media/common/ui/widget/MarqueeView;->keyWords:Ljava/lang/String;

    .line 515
    invoke-virtual {p0}, Lcom/media/common/ui/widget/MarqueeView;->invalidate()V

    return-void
.end method

.method public setRepetType(I)V
    .locals 0

    .line 326
    iput p1, p0, Lcom/media/common/ui/widget/MarqueeView;->repetType:I

    const/4 p1, 0x1

    .line 327
    iput-boolean p1, p0, Lcom/media/common/ui/widget/MarqueeView;->resetInit:Z

    .line 328
    iget-object p1, p0, Lcom/media/common/ui/widget/MarqueeView;->content:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/media/common/ui/widget/MarqueeView;->setContent(Ljava/lang/String;)V

    return-void
.end method

.method public setTextColor(I)V
    .locals 0

    if-eqz p1, :cond_0

    .line 482
    iput p1, p0, Lcom/media/common/ui/widget/MarqueeView;->textColor:I

    .line 483
    iget-object p0, p0, Lcom/media/common/ui/widget/MarqueeView;->paint:Landroid/text/TextPaint;

    invoke-virtual {p0, p1}, Landroid/text/TextPaint;->setColor(I)V

    :cond_0
    return-void
.end method

.method public setTextDistance(I)V
    .locals 4

    const-string v0, " "

    .line 415
    invoke-direct {p0}, Lcom/media/common/ui/widget/MarqueeView;->getBlacktWidth()F

    move-result v1

    iput v1, p0, Lcom/media/common/ui/widget/MarqueeView;->oneBlack_width:F

    int-to-float p1, p1

    .line 416
    invoke-virtual {p0, p1}, Lcom/media/common/ui/widget/MarqueeView;->dp2px(F)I

    move-result p1

    int-to-float p1, p1

    .line 417
    iget v1, p0, Lcom/media/common/ui/widget/MarqueeView;->oneBlack_width:F

    div-float/2addr p1, v1

    float-to-int p1, p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 423
    :cond_0
    iget v1, p0, Lcom/media/common/ui/widget/MarqueeView;->oneBlack_width:F

    int-to-float v2, p1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/media/common/ui/widget/MarqueeView;->textdistance:I

    const-string v1, ""

    .line 424
    iput-object v1, p0, Lcom/media/common/ui/widget/MarqueeView;->black_count:Ljava/lang/String;

    const/4 v1, 0x0

    :goto_0
    if-gt v1, p1, :cond_1

    .line 426
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/media/common/ui/widget/MarqueeView;->black_count:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/media/common/ui/widget/MarqueeView;->black_count:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 428
    :cond_1
    iget-object p1, p0, Lcom/media/common/ui/widget/MarqueeView;->content:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/media/common/ui/widget/MarqueeView;->setContent(Ljava/lang/String;)V

    return-void
.end method

.method public setTextSize(F)V
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 494
    iput p1, p0, Lcom/media/common/ui/widget/MarqueeView;->textSize:F

    .line 495
    iget-object v0, p0, Lcom/media/common/ui/widget/MarqueeView;->paint:Landroid/text/TextPaint;

    invoke-virtual {p0, p1}, Lcom/media/common/ui/widget/MarqueeView;->dp2px(F)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 496
    iget-object p1, p0, Lcom/media/common/ui/widget/MarqueeView;->content:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/media/common/ui/widget/MarqueeView;->getContentWidth(Ljava/lang/String;)F

    move-result p1

    iget v0, p0, Lcom/media/common/ui/widget/MarqueeView;->textdistance:I

    int-to-float v0, v0

    add-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/media/common/ui/widget/MarqueeView;->contentWidth:I

    :cond_0
    return-void
.end method

.method public setTextSpeed(F)V
    .locals 0

    .line 506
    iput p1, p0, Lcom/media/common/ui/widget/MarqueeView;->speed:F

    return-void
.end method

.method public stopRoll()V
    .locals 1

    const/4 v0, 0x0

    .line 367
    iput-boolean v0, p0, Lcom/media/common/ui/widget/MarqueeView;->isRoll:Z

    .line 368
    iget-object v0, p0, Lcom/media/common/ui/widget/MarqueeView;->thread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/media/common/ui/widget/MarqueeView;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    const/4 v0, 0x0

    .line 370
    iput-object v0, p0, Lcom/media/common/ui/widget/MarqueeView;->thread:Ljava/lang/Thread;

    :cond_0
    return-void
.end method
