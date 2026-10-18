.class public Lcom/yftech/libmusic/widget/SongTextView;
.super Landroid/view/View;
.source "SongTextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/libmusic/widget/SongTextView$OnTextItemClickListener;
    }
.end annotation


# instance fields
.field private builder:Ljava/lang/StringBuilder;

.field private delta:I

.field private ellipsizeStr:Ljava/lang/String;

.field private final interval:I

.field private isThePlayingLyric:Z

.field private lyricObject:Lcom/yftech/libmusic/bean/LyricObject;

.field private mHandler:Landroid/os/Handler;

.field private mPaint:Landroid/graphics/Paint;

.field private mText:Ljava/lang/String;

.field private mTextHeight:F

.field private mTextWidth:F

.field private onTextItemClickListener:Lcom/yftech/libmusic/widget/SongTextView$OnTextItemClickListener;

.field private postIndex:F

.field private rectF:Landroid/graphics/RectF;

.field private textColor:I

.field private textSize:F

.field private timeSum:I

.field private xformode:Landroid/graphics/PorterDuffXfermode;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, p1, v0}, Lcom/yftech/libmusic/widget/SongTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 59
    invoke-direct {p0, p1, p2, v0}, Lcom/yftech/libmusic/widget/SongTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 63
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p1, 0xf

    .line 33
    iput p1, p0, Lcom/yftech/libmusic/widget/SongTextView;->delta:I

    const-string p1, "\u68a6 \u91cc \u9762 \u770b \u6211 \u4e03 \u5341 \u4e8c \u53d8"

    .line 36
    iput-object p1, p0, Lcom/yftech/libmusic/widget/SongTextView;->mText:Ljava/lang/String;

    .line 39
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/yftech/libmusic/widget/SongTextView;->rectF:Landroid/graphics/RectF;

    const/4 p1, 0x0

    .line 40
    iput-boolean p1, p0, Lcom/yftech/libmusic/widget/SongTextView;->isThePlayingLyric:Z

    const/high16 p2, 0x42600000    # 56.0f

    .line 41
    iput p2, p0, Lcom/yftech/libmusic/widget/SongTextView;->textSize:F

    .line 42
    sget p2, Lcom/yftech/libmusic/R$color;->colorFFFFFF:I

    iput p2, p0, Lcom/yftech/libmusic/widget/SongTextView;->textColor:I

    const-string p2, "..."

    .line 43
    iput-object p2, p0, Lcom/yftech/libmusic/widget/SongTextView;->ellipsizeStr:Ljava/lang/String;

    .line 45
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p2, p0, Lcom/yftech/libmusic/widget/SongTextView;->builder:Ljava/lang/StringBuilder;

    .line 49
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/yftech/libmusic/widget/SongTextView;->mHandler:Landroid/os/Handler;

    const/16 p2, 0x64

    .line 51
    iput p2, p0, Lcom/yftech/libmusic/widget/SongTextView;->interval:I

    .line 52
    iput p1, p0, Lcom/yftech/libmusic/widget/SongTextView;->timeSum:I

    .line 64
    invoke-virtual {p0}, Lcom/yftech/libmusic/widget/SongTextView;->init()V

    return-void
.end method

.method private calculateString(FII)I
    .locals 4

    .line 202
    iget-object v0, p0, Lcom/yftech/libmusic/widget/SongTextView;->builder:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yftech/libmusic/widget/SongTextView;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/libmusic/widget/SongTextView;->mText:Ljava/lang/String;

    invoke-virtual {v1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    iget-object p2, p0, Lcom/yftech/libmusic/widget/SongTextView;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    move p3, p2

    move p2, v2

    :goto_0
    sub-int v0, p3, p2

    .line 207
    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p2

    if-eq v0, p2, :cond_2

    if-ne v0, p3, :cond_0

    goto :goto_1

    .line 213
    :cond_0
    iget-object v1, p0, Lcom/yftech/libmusic/widget/SongTextView;->mPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/yftech/libmusic/widget/SongTextView;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2, v0}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

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


# virtual methods
.method public init()V
    .locals 3

    .line 79
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/yftech/libmusic/widget/SongTextView;->mPaint:Landroid/graphics/Paint;

    .line 80
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/yftech/libmusic/widget/SongTextView;->xformode:Landroid/graphics/PorterDuffXfermode;

    .line 81
    iget-object v0, p0, Lcom/yftech/libmusic/widget/SongTextView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/yftech/libmusic/widget/SongTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/yftech/libmusic/widget/SongTextView;->textColor:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 82
    iget-object v0, p0, Lcom/yftech/libmusic/widget/SongTextView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/yftech/libmusic/widget/SongTextView;->textSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 83
    iget-object v0, p0, Lcom/yftech/libmusic/widget/SongTextView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 84
    iget-object v0, p0, Lcom/yftech/libmusic/widget/SongTextView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 85
    iget-object v0, p0, Lcom/yftech/libmusic/widget/SongTextView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 87
    iget-object v0, p0, Lcom/yftech/libmusic/widget/SongTextView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 88
    iget v1, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v2, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    sub-float/2addr v1, v2

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v1, v0

    iput v1, p0, Lcom/yftech/libmusic/widget/SongTextView;->mTextHeight:F

    .line 89
    iget-object v0, p0, Lcom/yftech/libmusic/widget/SongTextView;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/yftech/libmusic/widget/SongTextView;->mText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/yftech/libmusic/widget/SongTextView;->mTextWidth:F

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DrawAllocation"
        }
    .end annotation

    .line 134
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 136
    iget-object v0, p0, Lcom/yftech/libmusic/widget/SongTextView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextAlign()Landroid/graphics/Paint$Align;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/yftech/libmusic/widget/SongTextView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextAlign()Landroid/graphics/Paint$Align;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    if-ne v0, v1, :cond_1

    .line 139
    invoke-virtual {p0}, Lcom/yftech/libmusic/widget/SongTextView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    goto :goto_0

    .line 141
    :cond_1
    invoke-virtual {p0}, Lcom/yftech/libmusic/widget/SongTextView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 144
    :goto_0
    iget-boolean v1, p0, Lcom/yftech/libmusic/widget/SongTextView;->isThePlayingLyric:Z

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    .line 145
    invoke-virtual {p0}, Lcom/yftech/libmusic/widget/SongTextView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/yftech/libmusic/widget/SongTextView;->getMeasuredHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 146
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 148
    invoke-virtual {p0}, Lcom/yftech/libmusic/widget/SongTextView;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/yftech/libmusic/widget/SongTextView;->mPaint:Landroid/graphics/Paint;

    iget-object v7, p0, Lcom/yftech/libmusic/widget/SongTextView;->mText:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_2

    .line 149
    iget-object v3, p0, Lcom/yftech/libmusic/widget/SongTextView;->mText:Ljava/lang/String;

    iget v5, p0, Lcom/yftech/libmusic/widget/SongTextView;->mTextHeight:F

    iget-object v6, p0, Lcom/yftech/libmusic/widget/SongTextView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v3, v0, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 152
    :cond_2
    invoke-virtual {p0}, Lcom/yftech/libmusic/widget/SongTextView;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/yftech/libmusic/widget/SongTextView;->mPaint:Landroid/graphics/Paint;

    iget-object v7, p0, Lcom/yftech/libmusic/widget/SongTextView;->ellipsizeStr:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    sub-float/2addr v5, v6

    .line 153
    iget-object v6, p0, Lcom/yftech/libmusic/widget/SongTextView;->mText:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-direct {p0, v5, v3, v6}, Lcom/yftech/libmusic/widget/SongTextView;->calculateString(FII)I

    move-result v5

    .line 155
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/yftech/libmusic/widget/SongTextView;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3, v5}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/yftech/libmusic/widget/SongTextView;->ellipsizeStr:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget v5, p0, Lcom/yftech/libmusic/widget/SongTextView;->mTextHeight:F

    iget-object v6, p0, Lcom/yftech/libmusic/widget/SongTextView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v3, v0, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 157
    :goto_1
    iget-object v3, p0, Lcom/yftech/libmusic/widget/SongTextView;->mPaint:Landroid/graphics/Paint;

    iget-object v5, p0, Lcom/yftech/libmusic/widget/SongTextView;->xformode:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 159
    iget-object v3, p0, Lcom/yftech/libmusic/widget/SongTextView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/yftech/libmusic/widget/SongTextView;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lcom/yftech/libmusic/R$color;->colorEEB230D:I

    invoke-static {v5, v6}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 163
    iget-object v3, p0, Lcom/yftech/libmusic/widget/SongTextView;->mPaint:Landroid/graphics/Paint;

    iget-object v5, p0, Lcom/yftech/libmusic/widget/SongTextView;->mText:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    sub-float/2addr v0, v3

    .line 164
    iget-object v3, p0, Lcom/yftech/libmusic/widget/SongTextView;->rectF:Landroid/graphics/RectF;

    iget v5, p0, Lcom/yftech/libmusic/widget/SongTextView;->postIndex:F

    add-float/2addr v5, v0

    invoke-virtual {p0}, Lcom/yftech/libmusic/widget/SongTextView;->getMeasuredHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v3, v0, v2, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 165
    iget-object v0, p0, Lcom/yftech/libmusic/widget/SongTextView;->rectF:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/yftech/libmusic/widget/SongTextView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v0, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    const/4 v0, 0x0

    .line 166
    invoke-virtual {p1, v1, v2, v2, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 167
    invoke-virtual {p0}, Lcom/yftech/libmusic/widget/SongTextView;->init()V

    goto :goto_2

    .line 182
    :cond_3
    invoke-virtual {p0}, Lcom/yftech/libmusic/widget/SongTextView;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/yftech/libmusic/widget/SongTextView;->mPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/yftech/libmusic/widget/SongTextView;->mText:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4

    .line 183
    iget-object v1, p0, Lcom/yftech/libmusic/widget/SongTextView;->mText:Ljava/lang/String;

    iget v2, p0, Lcom/yftech/libmusic/widget/SongTextView;->mTextHeight:F

    iget-object p0, p0, Lcom/yftech/libmusic/widget/SongTextView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v2, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 186
    :cond_4
    invoke-virtual {p0}, Lcom/yftech/libmusic/widget/SongTextView;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/yftech/libmusic/widget/SongTextView;->mPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/yftech/libmusic/widget/SongTextView;->ellipsizeStr:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    sub-float/2addr v1, v2

    .line 187
    iget-object v2, p0, Lcom/yftech/libmusic/widget/SongTextView;->mText:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {p0, v1, v3, v2}, Lcom/yftech/libmusic/widget/SongTextView;->calculateString(FII)I

    move-result v1

    .line 189
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/yftech/libmusic/widget/SongTextView;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3, v1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yftech/libmusic/widget/SongTextView;->ellipsizeStr:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/yftech/libmusic/widget/SongTextView;->mTextHeight:F

    iget-object p0, p0, Lcom/yftech/libmusic/widget/SongTextView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v2, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    .line 102
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 103
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v1, -0x80000000

    const/high16 v2, 0x40000000    # 2.0f

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 108
    :cond_0
    invoke-virtual {p0}, Lcom/yftech/libmusic/widget/SongTextView;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/yftech/libmusic/widget/SongTextView;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/yftech/libmusic/widget/SongTextView;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v3, v4

    if-ne v0, v1, :cond_1

    .line 110
    invoke-static {v3, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0

    :cond_1
    move p1, v3

    .line 117
    :goto_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 118
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    if-ne v0, v2, :cond_2

    goto :goto_1

    .line 122
    :cond_2
    invoke-virtual {p0}, Lcom/yftech/libmusic/widget/SongTextView;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/yftech/libmusic/widget/SongTextView;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/yftech/libmusic/widget/SongTextView;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v2, v3

    if-ne v0, v1, :cond_3

    .line 124
    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto :goto_1

    :cond_3
    move p2, v2

    .line 128
    :goto_1
    invoke-virtual {p0, p1, p2}, Lcom/yftech/libmusic/widget/SongTextView;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTouchEvent:action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/yftech/libmusic/widget/SongTextView;->onTextItemClickListener:Lcom/yftech/libmusic/widget/SongTextView$OnTextItemClickListener;

    if-eqz p1, :cond_0

    .line 73
    iget-object p1, p0, Lcom/yftech/libmusic/widget/SongTextView;->onTextItemClickListener:Lcom/yftech/libmusic/widget/SongTextView$OnTextItemClickListener;

    iget-object p0, p0, Lcom/yftech/libmusic/widget/SongTextView;->lyricObject:Lcom/yftech/libmusic/bean/LyricObject;

    invoke-interface {p1, p0}, Lcom/yftech/libmusic/widget/SongTextView$OnTextItemClickListener;->onTextItemClick(Lcom/yftech/libmusic/bean/LyricObject;)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public run()V
    .locals 3

    .line 306
    iget-object v0, p0, Lcom/yftech/libmusic/widget/SongTextView;->lyricObject:Lcom/yftech/libmusic/bean/LyricObject;

    if-eqz v0, :cond_1

    .line 308
    iget v0, p0, Lcom/yftech/libmusic/widget/SongTextView;->timeSum:I

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    iget-object v2, p0, Lcom/yftech/libmusic/widget/SongTextView;->lyricObject:Lcom/yftech/libmusic/bean/LyricObject;

    iget v2, v2, Lcom/yftech/libmusic/bean/LyricObject;->timeline:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    .line 311
    iget v2, p0, Lcom/yftech/libmusic/widget/SongTextView;->mTextWidth:F

    mul-float/2addr v2, v0

    iput v2, p0, Lcom/yftech/libmusic/widget/SongTextView;->postIndex:F

    .line 312
    iget v2, p0, Lcom/yftech/libmusic/widget/SongTextView;->timeSum:I

    add-int/lit8 v2, v2, 0x64

    iput v2, p0, Lcom/yftech/libmusic/widget/SongTextView;->timeSum:I

    .line 314
    invoke-virtual {p0}, Lcom/yftech/libmusic/widget/SongTextView;->invalidate()V

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/yftech/libmusic/widget/SongTextView;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 319
    :cond_0
    iget-object v0, p0, Lcom/yftech/libmusic/widget/SongTextView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 323
    :goto_0
    iget-boolean v0, p0, Lcom/yftech/libmusic/widget/SongTextView;->isThePlayingLyric:Z

    if-nez v0, :cond_1

    .line 324
    iget-object v0, p0, Lcom/yftech/libmusic/widget/SongTextView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public setLyricObject(Lcom/yftech/libmusic/bean/LyricObject;)V
    .locals 1

    .line 226
    iput-object p1, p0, Lcom/yftech/libmusic/widget/SongTextView;->lyricObject:Lcom/yftech/libmusic/bean/LyricObject;

    .line 227
    iget-object p1, p1, Lcom/yftech/libmusic/bean/LyricObject;->lrc:Ljava/lang/String;

    iput-object p1, p0, Lcom/yftech/libmusic/widget/SongTextView;->mText:Ljava/lang/String;

    .line 228
    iget-object p1, p0, Lcom/yftech/libmusic/widget/SongTextView;->mPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/yftech/libmusic/widget/SongTextView;->mText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lcom/yftech/libmusic/widget/SongTextView;->mTextWidth:F

    return-void
.end method

.method public setMusicPlaying(Z)V
    .locals 1

    .line 294
    iget-object v0, p0, Lcom/yftech/libmusic/widget/SongTextView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    if-eqz p1, :cond_0

    .line 297
    iget-object p1, p0, Lcom/yftech/libmusic/widget/SongTextView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public setOnTextItemClickListener(Lcom/yftech/libmusic/widget/SongTextView$OnTextItemClickListener;)V
    .locals 0

    .line 286
    iput-object p1, p0, Lcom/yftech/libmusic/widget/SongTextView;->onTextItemClickListener:Lcom/yftech/libmusic/widget/SongTextView$OnTextItemClickListener;

    return-void
.end method

.method public setTextColor(IZ)V
    .locals 0

    .line 275
    iput p1, p0, Lcom/yftech/libmusic/widget/SongTextView;->textColor:I

    .line 276
    iget-object p1, p0, Lcom/yftech/libmusic/widget/SongTextView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/yftech/libmusic/widget/SongTextView;->getContext()Landroid/content/Context;

    move-result-object p2

    iget p0, p0, Lcom/yftech/libmusic/widget/SongTextView;->textColor:I

    invoke-static {p2, p0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setTextSize(FZ)V
    .locals 0

    .line 264
    iput p1, p0, Lcom/yftech/libmusic/widget/SongTextView;->textSize:F

    .line 265
    iget-object p0, p0, Lcom/yftech/libmusic/widget/SongTextView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    return-void
.end method

.method public setThePlayingLyric(Z)V
    .locals 2

    .line 235
    iput-boolean p1, p0, Lcom/yftech/libmusic/widget/SongTextView;->isThePlayingLyric:Z

    .line 239
    iget-boolean p1, p0, Lcom/yftech/libmusic/widget/SongTextView;->isThePlayingLyric:Z

    if-eqz p1, :cond_2

    .line 240
    iget-object p1, p0, Lcom/yftech/libmusic/widget/SongTextView;->lyricObject:Lcom/yftech/libmusic/bean/LyricObject;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/yftech/libmusic/widget/SongTextView;->lyricObject:Lcom/yftech/libmusic/bean/LyricObject;

    iget p1, p1, Lcom/yftech/libmusic/bean/LyricObject;->timeline:I

    if-nez p1, :cond_0

    goto :goto_0

    .line 245
    :cond_0
    invoke-static {}, Lcom/yftech/car/media/music/CarMusicManager;->getInstance()Lcom/yftech/car/media/music/CarMusicManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/car/media/music/CarMusicManager;->getCurrentPlayProgress()I

    move-result p1

    iget-object v0, p0, Lcom/yftech/libmusic/widget/SongTextView;->lyricObject:Lcom/yftech/libmusic/bean/LyricObject;

    iget v0, v0, Lcom/yftech/libmusic/bean/LyricObject;->begintime:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/yftech/libmusic/widget/SongTextView;->timeSum:I

    .line 246
    iget p1, p0, Lcom/yftech/libmusic/widget/SongTextView;->timeSum:I

    int-to-float p1, p1

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float/2addr p1, v0

    iget-object v0, p0, Lcom/yftech/libmusic/widget/SongTextView;->lyricObject:Lcom/yftech/libmusic/bean/LyricObject;

    iget v0, v0, Lcom/yftech/libmusic/bean/LyricObject;->timeline:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    .line 247
    iget v0, p0, Lcom/yftech/libmusic/widget/SongTextView;->mTextWidth:F

    mul-float/2addr p1, v0

    iput p1, p0, Lcom/yftech/libmusic/widget/SongTextView;->postIndex:F

    .line 249
    iget-object p1, p0, Lcom/yftech/libmusic/widget/SongTextView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 250
    invoke-static {}, Lcom/yftech/car/media/music/CarMusicManager;->getInstance()Lcom/yftech/car/media/music/CarMusicManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/car/media/music/CarMusicManager;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 251
    iget-object p1, p0, Lcom/yftech/libmusic/widget/SongTextView;->mHandler:Landroid/os/Handler;

    const-wide/16 v0, 0x64

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 242
    iput-boolean p1, p0, Lcom/yftech/libmusic/widget/SongTextView;->isThePlayingLyric:Z

    goto :goto_1

    .line 255
    :cond_2
    iget-object p1, p0, Lcom/yftech/libmusic/widget/SongTextView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 257
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/yftech/libmusic/widget/SongTextView;->invalidate()V

    return-void
.end method
