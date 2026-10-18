.class public Lcom/yftech/car/widget/media/radio/view/RulerView;
.super Landroid/view/View;
.source "RulerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/car/widget/media/radio/view/RulerView$OnRulerViewScrollListener;
    }
.end annotation


# static fields
.field public static final BAND_AM:I = 0x2

.field public static final BAND_FM:I = 0x0

.field public static final MOD_TYPE_SCALE:I = 0x5

.field private static final TAG:Ljava/lang/String; = "RulerView"


# instance fields
.field private isDisallowIntercept:Z

.field public isScaleGradient:Z

.field private isScrollingPerformed:Z

.field public isShowScaleValue:Z

.field public mBand:I

.field public mCurrentValue:I

.field private mDownFocusX:F

.field private mDownFocusY:F

.field public mMaxScaleColor:I

.field private mMaxScaleHeight:I

.field public mMaxScaleHeightRatio:F

.field public mMaxScaleWidth:F

.field public mMaxValue:I

.field public mMidScaleColor:I

.field private mMidScaleHeight:I

.field public mMidScaleWidth:F

.field private mMiddleImg:Landroid/graphics/Bitmap;

.field private mMiddleImgPaint:Landroid/graphics/Paint;

.field public mMinScaleColor:I

.field private mMinScaleHeight:I

.field public mMinScaleHeightRatio:F

.field public mMinScaleWidth:F

.field public mMinValue:I

.field public mScaleBase:I

.field private mScalePaint:Landroid/graphics/Paint;

.field private mScaleSpace:I

.field public mScaleValueColor:I

.field private mScaleValuePaint:Landroid/text/TextPaint;

.field public mScaleValueSize:F

.field private mTpDesiredWidth:F

.field private onWheelListener:Lcom/yftech/car/widget/media/radio/view/RulerView$OnRulerViewScrollListener;

.field private scroller:Lcom/yftech/car/widget/media/radio/view/RulerViewScroller;

.field private final scrollingListener:Lcom/yftech/car/widget/media/radio/view/RulerViewScroller$ScrollingListener;

.field private scrollingOffset:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 101
    invoke-direct {p0, p1, v0}, Lcom/yftech/car/widget/media/radio/view/RulerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 105
    invoke-direct {p0, p1, p2, v0}, Lcom/yftech/car/widget/media/radio/view/RulerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .line 109
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x1

    .line 35
    iput p3, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->mScaleBase:I

    const/16 v0, 0x14

    .line 86
    iput v0, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->mScaleSpace:I

    const/4 v1, 0x0

    .line 98
    iput v1, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->mBand:I

    .line 529
    new-instance v2, Lcom/yftech/car/widget/media/radio/view/RulerView$1;

    invoke-direct {v2, p0}, Lcom/yftech/car/widget/media/radio/view/RulerView$1;-><init>(Lcom/yftech/car/widget/media/radio/view/RulerView;)V

    iput-object v2, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->scrollingListener:Lcom/yftech/car/widget/media/radio/view/RulerViewScroller$ScrollingListener;

    .line 110
    sget-object v2, Lcom/yftech/car/widget/media/R$styleable;->RulerView:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 112
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/radio/view/RulerView;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 113
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/radio/view/RulerView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x106000b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->mMaxScaleColor:I

    .line 114
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/radio/view/RulerView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->mMidScaleColor:I

    .line 115
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/radio/view/RulerView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->mMinScaleColor:I

    .line 116
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/radio/view/RulerView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->mScaleValueColor:I

    .line 118
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/radio/view/RulerView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/yftech/car/widget/media/R$mipmap;->ic_cursor_normal:I

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->mMiddleImg:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 120
    :cond_0
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/radio/view/RulerView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1060018

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->mMaxScaleColor:I

    .line 121
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/radio/view/RulerView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->mMidScaleColor:I

    .line 122
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/radio/view/RulerView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->mMinScaleColor:I

    .line 123
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/radio/view/RulerView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->mScaleValueColor:I

    .line 126
    :goto_0
    sget v2, Lcom/yftech/car/widget/media/R$styleable;->RulerView_mMaxScaleWidth:I

    const/16 v3, 0xf

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->mMaxScaleWidth:F

    .line 127
    sget v2, Lcom/yftech/car/widget/media/R$styleable;->RulerView_mMidScaleWidth:I

    const/16 v3, 0xc

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->mMidScaleWidth:F

    .line 128
    sget v2, Lcom/yftech/car/widget/media/R$styleable;->RulerView_mMinScaleWidth:I

    const/16 v4, 0xa

    invoke-virtual {p2, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->mMinScaleWidth:F

    .line 129
    sget v2, Lcom/yftech/car/widget/media/R$styleable;->RulerView_mScaleValueSize:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->mScaleValueSize:F

    .line 130
    sget v2, Lcom/yftech/car/widget/media/R$styleable;->RulerView_mScaleSpace:I

    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->mScaleSpace:I

    .line 132
    sget v0, Lcom/yftech/car/widget/media/R$styleable;->RulerView_mMaxScaleHeightRatio:I

    const v2, 0x3e99999a    # 0.3f

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->mMaxScaleHeightRatio:F

    .line 133
    sget v0, Lcom/yftech/car/widget/media/R$styleable;->RulerView_mMinScaleHeightRatio:I

    const v2, 0x3dcccccd    # 0.1f

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->mMinScaleHeightRatio:F

    .line 135
    sget v0, Lcom/yftech/car/widget/media/R$styleable;->RulerView_isShowScaleValue:I

    invoke-virtual {p2, v0, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->isShowScaleValue:Z

    .line 136
    sget v0, Lcom/yftech/car/widget/media/R$styleable;->RulerView_isScaleGradient:I

    invoke-virtual {p2, v0, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->isScaleGradient:Z

    .line 138
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager;->getInstance()Lcom/yftech/car/widget/media/manager/RadioManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/yftech/car/widget/media/manager/RadioManager;->getMax(I)I

    move-result v0

    .line 139
    sget v2, Lcom/yftech/car/widget/media/R$styleable;->RulerView_mMaxValue:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    goto :goto_1

    :cond_1
    const v0, 0x1a5e0

    :goto_1
    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->mMaxValue:I

    .line 141
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager;->getInstance()Lcom/yftech/car/widget/media/manager/RadioManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/yftech/car/widget/media/manager/RadioManager;->getMin(I)I

    move-result v0

    .line 142
    sget v2, Lcom/yftech/car/widget/media/R$styleable;->RulerView_mMinValue:I

    if-eq v0, v3, :cond_2

    goto :goto_2

    :cond_2
    const v0, 0x155cc

    :goto_2
    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->mMinValue:I

    .line 144
    sget v0, Lcom/yftech/car/widget/media/R$styleable;->RulerView_mScaleBase:I

    invoke-virtual {p2, v0, p3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->mScaleBase:I

    .line 145
    sget v0, Lcom/yftech/car/widget/media/R$styleable;->RulerView_mCurrentValue:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->mCurrentValue:I

    .line 146
    iget v0, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->mCurrentValue:I

    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/radio/view/RulerView;->setCurrentValue(I)V

    .line 148
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/radio/view/RulerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/yftech/car/widget/media/R$styleable;->RulerView_mMiddleImg:I

    sget v2, Lcom/yftech/car/widget/media/R$mipmap;->ic_cursor_normal:I

    .line 149
    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 148
    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->mMiddleImg:Landroid/graphics/Bitmap;

    .line 150
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 152
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->mScalePaint:Landroid/graphics/Paint;

    .line 153
    iget-object p2, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->mScalePaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 154
    iget-object p2, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->mScalePaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 156
    new-instance p2, Landroid/text/TextPaint;

    invoke-direct {p2, p3}, Landroid/text/TextPaint;-><init>(I)V

    iput-object p2, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->mScaleValuePaint:Landroid/text/TextPaint;

    .line 157
    iget-object p2, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->mScaleValuePaint:Landroid/text/TextPaint;

    iget v0, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->mScaleValueColor:I

    invoke-virtual {p2, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 158
    iget-object p2, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->mScaleValuePaint:Landroid/text/TextPaint;

    iget v0, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->mScaleValueSize:F

    invoke-virtual {p2, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 159
    iget-object p2, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->mScaleValuePaint:Landroid/text/TextPaint;

    sget-object v0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p2, v0}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    const-string p2, "0"

    .line 160
    iget-object v0, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->mScaleValuePaint:Landroid/text/TextPaint;

    invoke-static {p2, v0}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result p2

    iput p2, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->mTpDesiredWidth:F

    .line 162
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->mMiddleImgPaint:Landroid/graphics/Paint;

    .line 163
    iget-object p2, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->mMiddleImgPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 164
    iget-object p2, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->mMiddleImgPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 166
    new-instance p2, Lcom/yftech/car/widget/media/radio/view/RulerViewScroller;

    iget-object p3, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->scrollingListener:Lcom/yftech/car/widget/media/radio/view/RulerViewScroller$ScrollingListener;

    invoke-direct {p2, p1, p3}, Lcom/yftech/car/widget/media/radio/view/RulerViewScroller;-><init>(Landroid/content/Context;Lcom/yftech/car/widget/media/radio/view/RulerViewScroller$ScrollingListener;)V

    iput-object p2, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->scroller:Lcom/yftech/car/widget/media/radio/view/RulerViewScroller;

    return-void
.end method

.method static synthetic access$000(Lcom/yftech/car/widget/media/radio/view/RulerView;)Z
    .locals 0

    .line 30
    iget-boolean p0, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->isScrollingPerformed:Z

    return p0
.end method

.method static synthetic access$002(Lcom/yftech/car/widget/media/radio/view/RulerView;Z)Z
    .locals 0

    .line 30
    iput-boolean p1, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->isScrollingPerformed:Z

    return p1
.end method

.method static synthetic access$100(Lcom/yftech/car/widget/media/radio/view/RulerView;)Lcom/yftech/car/widget/media/radio/view/RulerView$OnRulerViewScrollListener;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->onWheelListener:Lcom/yftech/car/widget/media/radio/view/RulerView$OnRulerViewScrollListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/yftech/car/widget/media/radio/view/RulerView;I)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/radio/view/RulerView;->doScroll(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/yftech/car/widget/media/radio/view/RulerView;)Z
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/yftech/car/widget/media/radio/view/RulerView;->outOfRange()Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/yftech/car/widget/media/radio/view/RulerView;)I
    .locals 0

    .line 30
    iget p0, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->scrollingOffset:I

    return p0
.end method

.method static synthetic access$402(Lcom/yftech/car/widget/media/radio/view/RulerView;I)I
    .locals 0

    .line 30
    iput p1, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->scrollingOffset:I

    return p1
.end method

.method static synthetic access$500(Lcom/yftech/car/widget/media/radio/view/RulerView;)I
    .locals 0

    .line 30
    iget p0, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->mScaleSpace:I

    return p0
.end method

.method static synthetic access$600(Lcom/yftech/car/widget/media/radio/view/RulerView;)Lcom/yftech/car/widget/media/radio/view/RulerViewScroller;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->scroller:Lcom/yftech/car/widget/media/radio/view/RulerViewScroller;

    return-object p0
.end method

.method private doScroll(I)V
    .locals 5

    .line 620
    iget v0, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->scrollingOffset:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->scrollingOffset:I

    .line 621
    iget p1, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->scrollingOffset:I

    iget v0, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->mScaleSpace:I

    div-int/2addr p1, v0

    if-eqz p1, :cond_4

    .line 624
    iget v0, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->mMinValue:I

    iget v1, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->mCurrentValue:I

    iget v2, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->mScaleBase:I

    mul-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->mMaxValue:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 625
    iget v1, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->mCurrentValue:I

    sub-int/2addr v1, p1

    iput v1, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->mCurrentValue:I

    .line 626
    iget v1, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->scrollingOffset:I

    iget v2, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->mScaleSpace:I

    mul-int/2addr p1, v2

    sub-int/2addr v1, p1

    iput v1, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->scrollingOffset:I

    .line 627
    iget p1, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->mBand:I

    if-nez p1, :cond_0

    iget p1, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->mCurrentValue:I

    iget v1, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->mMaxValue:I

    iget v2, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->mScaleBase:I

    div-int/2addr v1, v2

    if-le p1, v1, :cond_0

    .line 628
    iget p1, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->mMinValue:I

    iget v1, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->mScaleBase:I

    div-int/2addr p1, v1

    iget v1, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->mCurrentValue:I

    iget v2, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->mMaxValue:I

    iget v3, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->mScaleBase:I

    div-int/2addr v2, v3

    sub-int/2addr v1, v2

    add-int/2addr p1, v1

    iput p1, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->mCurrentValue:I

    .line 629
    :cond_0
    iget p1, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->mBand:I

    if-nez p1, :cond_1

    iget p1, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->mCurrentValue:I

    iget v1, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->mMinValue:I

    iget v2, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->mScaleBase:I

    div-int/2addr v1, v2

    if-ge p1, v1, :cond_1

    .line 630
    iget p1, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->mMaxValue:I

    iget v1, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->mScaleBase:I

    div-int/2addr p1, v1

    iget v1, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->mMinValue:I

    iget v2, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->mScaleBase:I

    div-int/2addr v1, v2

    iget v2, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->mCurrentValue:I

    sub-int/2addr v1, v2

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->mCurrentValue:I

    .line 631
    :cond_1
    iget p1, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->mBand:I

    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    iget p1, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->mCurrentValue:I

    iget v2, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->mMaxValue:I

    iget v3, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->mScaleBase:I

    div-int/2addr v2, v3

    if-le p1, v2, :cond_2

    .line 632
    iget p1, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->mMinValue:I

    iget v2, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->mScaleBase:I

    div-int/2addr p1, v2

    iget v2, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->mCurrentValue:I

    iget v3, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->mMaxValue:I

    iget v4, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->mScaleBase:I

    div-int/2addr v3, v4

    sub-int/2addr v2, v3

    add-int/2addr p1, v2

    iput p1, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->mCurrentValue:I

    .line 633
    :cond_2
    iget p1, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->mBand:I

    if-ne p1, v1, :cond_3

    iget p1, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->mCurrentValue:I

    iget v1, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->mMinValue:I

    iget v2, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->mScaleBase:I

    div-int/2addr v1, v2

    if-ge p1, v1, :cond_3

    .line 634
    iget p1, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->mMaxValue:I

    iget v1, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->mScaleBase:I

    div-int/2addr p1, v1

    iget v1, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->mMinValue:I

    iget v2, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->mScaleBase:I

    div-int/2addr v1, v2

    iget v2, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->mCurrentValue:I

    sub-int/2addr v1, v2

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->mCurrentValue:I

    :cond_3
    const-string p1, "RulerView"

    .line 635
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mScaleBase:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->mScaleBase:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "RulerView"

    .line 636
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCurrentValue:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->mCurrentValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/yftech/car/utils/Loger;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "RulerView"

    .line 637
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "scrollingOffset:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->scrollingOffset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    iget-object p1, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->onWheelListener:Lcom/yftech/car/widget/media/radio/view/RulerView$OnRulerViewScrollListener;

    if-eqz p1, :cond_4

    .line 640
    iget p1, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->mMinValue:I

    iget v1, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->mCurrentValue:I

    iget v2, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->mScaleBase:I

    mul-int/2addr v1, v2

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget v1, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->mMaxValue:I

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 641
    iget-object v1, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->onWheelListener:Lcom/yftech/car/widget/media/radio/view/RulerView$OnRulerViewScrollListener;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p0, v0, p1}, Lcom/yftech/car/widget/media/radio/view/RulerView$OnRulerViewScrollListener;->onChanged(Lcom/yftech/car/widget/media/radio/view/RulerView;Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    :cond_4
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/radio/view/RulerView;->invalidate()V

    return-void
.end method

.method private drawMiddleImg(Landroid/graphics/Canvas;II)V
    .locals 1

    .line 243
    iget-object p3, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->mMiddleImg:Landroid/graphics/Bitmap;

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    sub-int/2addr p2, p3

    div-int/lit8 p2, p2, 0x2

    .line 244
    iget-object p3, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->mScaleValuePaint:Landroid/text/TextPaint;

    invoke-virtual {p3}, Landroid/text/TextPaint;->getTextSize()F

    move-result p3

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p3, v0

    float-to-int p3, p3

    .line 245
    iget-object v0, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->mMiddleImg:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr p3, v0

    .line 246
    iget-object v0, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->mMiddleImg:Landroid/graphics/Bitmap;

    int-to-float p2, p2

    int-to-float p3, p3

    iget-object p0, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->mMiddleImgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p2, p3, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawScaleLine(Landroid/graphics/Canvas;FIIFFFF)V
    .locals 6

    .line 377
    iget-object v0, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->mScalePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 378
    iget-object p2, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->mScalePaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 379
    iget-object p2, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->mScalePaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 380
    iget-object v5, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->mScalePaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v1, p5

    move v2, p6

    move v3, p7

    move v4, p8

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    sub-float/2addr p8, p6

    .line 383
    invoke-static {p8}, Ljava/lang/Math;->abs(F)F

    move-result p2

    float-to-int p2, p2

    const/high16 p3, 0x41a00000    # 20.0f

    add-float v2, p6, p3

    .line 385
    iget-object p3, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->mScalePaint:Landroid/graphics/Paint;

    const/16 p4, 0x7e

    invoke-static {p4, p4, p4}, Landroid/graphics/Color;->rgb(III)I

    move-result p4

    invoke-virtual {p3, p4}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float p2, p2

    add-float v4, v2, p2

    .line 386
    iget-object v5, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->mScalePaint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawScaleLine(Landroid/graphics/Canvas;II)V
    .locals 8

    int-to-float v0, p2

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 257
    iget v1, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->mScaleSpace:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    add-int/lit8 v3, v0, 0x2

    .line 258
    iget v4, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->scrollingOffset:I

    .line 259
    iget v5, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->mCurrentValue:I

    move-object v1, p0

    move-object v2, p1

    move v6, p2

    move v7, p3

    .line 260
    invoke-direct/range {v1 .. v7}, Lcom/yftech/car/widget/media/radio/view/RulerView;->drawScaleLine(Landroid/graphics/Canvas;IIIII)V

    return-void
.end method

.method private drawScaleLine(Landroid/graphics/Canvas;IIIII)V
    .locals 16

    move-object/from16 v8, p0

    move/from16 v9, p6

    int-to-float v0, v9

    .line 274
    iget v1, v8, Lcom/yftech/car/widget/media/radio/view/RulerView;->mTpDesiredWidth:F

    sub-float/2addr v0, v1

    iget-object v1, v8, Lcom/yftech/car/widget/media/radio/view/RulerView;->mScaleValuePaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->getTextSize()F

    move-result v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual/range {p0 .. p0}, Lcom/yftech/car/widget/media/radio/view/RulerView;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v10, v0, -0xa

    const/4 v0, 0x0

    move/from16 v11, p2

    move v12, v0

    :goto_0
    if-ge v12, v11, :cond_6

    move/from16 v13, p5

    int-to-float v0, v13

    const/high16 v1, 0x40000000    # 2.0f

    div-float v14, v0, v1

    .line 281
    iget v1, v8, Lcom/yftech/car/widget/media/radio/view/RulerView;->mScaleSpace:I

    mul-int/2addr v1, v12

    int-to-float v1, v1

    add-float/2addr v1, v14

    move/from16 v7, p3

    int-to-float v6, v7

    add-float v3, v1, v6

    add-int v1, p4, v12

    .line 283
    iget v2, v8, Lcom/yftech/car/widget/media/radio/view/RulerView;->mBand:I

    if-nez v2, :cond_0

    iget v2, v8, Lcom/yftech/car/widget/media/radio/view/RulerView;->mMaxValue:I

    iget v4, v8, Lcom/yftech/car/widget/media/radio/view/RulerView;->mScaleBase:I

    div-int/2addr v2, v4

    if-le v1, v2, :cond_0

    .line 284
    iget v2, v8, Lcom/yftech/car/widget/media/radio/view/RulerView;->mMinValue:I

    iget v4, v8, Lcom/yftech/car/widget/media/radio/view/RulerView;->mScaleBase:I

    div-int/2addr v2, v4

    iget v4, v8, Lcom/yftech/car/widget/media/radio/view/RulerView;->mMaxValue:I

    iget v5, v8, Lcom/yftech/car/widget/media/radio/view/RulerView;->mScaleBase:I

    div-int/2addr v4, v5

    sub-int/2addr v1, v4

    add-int/2addr v2, v1

    add-int/lit8 v1, v2, -0x1

    .line 285
    :cond_0
    iget v2, v8, Lcom/yftech/car/widget/media/radio/view/RulerView;->mBand:I

    const/4 v5, 0x2

    if-ne v2, v5, :cond_1

    iget v2, v8, Lcom/yftech/car/widget/media/radio/view/RulerView;->mMaxValue:I

    iget v4, v8, Lcom/yftech/car/widget/media/radio/view/RulerView;->mScaleBase:I

    div-int/2addr v2, v4

    if-le v1, v2, :cond_1

    .line 286
    iget v2, v8, Lcom/yftech/car/widget/media/radio/view/RulerView;->mMinValue:I

    iget v4, v8, Lcom/yftech/car/widget/media/radio/view/RulerView;->mScaleBase:I

    div-int/2addr v2, v4

    iget v4, v8, Lcom/yftech/car/widget/media/radio/view/RulerView;->mMaxValue:I

    iget v5, v8, Lcom/yftech/car/widget/media/radio/view/RulerView;->mScaleBase:I

    div-int/2addr v4, v5

    sub-int/2addr v1, v4

    add-int/2addr v2, v1

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    cmpg-float v0, v3, v0

    if-gtz v0, :cond_2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v4, v10

    const/4 v9, 0x2

    move/from16 v5, p2

    move v15, v6

    move v6, v12

    move/from16 v7, p6

    .line 288
    invoke-virtual/range {v0 .. v7}, Lcom/yftech/car/widget/media/radio/view/RulerView;->drawScaleLine(Landroid/graphics/Canvas;IFIIII)V

    goto :goto_2

    :cond_2
    move v15, v6

    const/4 v9, 0x2

    .line 291
    :goto_2
    iget v0, v8, Lcom/yftech/car/widget/media/radio/view/RulerView;->mScaleSpace:I

    mul-int/2addr v0, v12

    int-to-float v0, v0

    sub-float/2addr v14, v0

    add-float v3, v14, v15

    sub-int v0, p4, v12

    .line 293
    iget v1, v8, Lcom/yftech/car/widget/media/radio/view/RulerView;->mBand:I

    if-nez v1, :cond_3

    iget v1, v8, Lcom/yftech/car/widget/media/radio/view/RulerView;->mMinValue:I

    iget v2, v8, Lcom/yftech/car/widget/media/radio/view/RulerView;->mScaleBase:I

    div-int/2addr v1, v2

    if-ge v0, v1, :cond_3

    .line 294
    iget v1, v8, Lcom/yftech/car/widget/media/radio/view/RulerView;->mMaxValue:I

    iget v2, v8, Lcom/yftech/car/widget/media/radio/view/RulerView;->mScaleBase:I

    div-int/2addr v1, v2

    iget v2, v8, Lcom/yftech/car/widget/media/radio/view/RulerView;->mMinValue:I

    iget v4, v8, Lcom/yftech/car/widget/media/radio/view/RulerView;->mScaleBase:I

    div-int/2addr v2, v4

    sub-int/2addr v2, v0

    sub-int/2addr v1, v2

    add-int/lit8 v0, v1, 0x1

    .line 295
    :cond_3
    iget v1, v8, Lcom/yftech/car/widget/media/radio/view/RulerView;->mBand:I

    if-ne v1, v9, :cond_4

    iget v1, v8, Lcom/yftech/car/widget/media/radio/view/RulerView;->mMinValue:I

    iget v2, v8, Lcom/yftech/car/widget/media/radio/view/RulerView;->mScaleBase:I

    div-int/2addr v1, v2

    if-ge v0, v1, :cond_4

    .line 296
    iget v1, v8, Lcom/yftech/car/widget/media/radio/view/RulerView;->mMaxValue:I

    iget v2, v8, Lcom/yftech/car/widget/media/radio/view/RulerView;->mScaleBase:I

    div-int/2addr v1, v2

    iget v2, v8, Lcom/yftech/car/widget/media/radio/view/RulerView;->mMinValue:I

    iget v4, v8, Lcom/yftech/car/widget/media/radio/view/RulerView;->mScaleBase:I

    div-int/2addr v2, v4

    sub-int/2addr v2, v0

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    move v2, v1

    goto :goto_3

    :cond_4
    move v2, v0

    .line 297
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/yftech/car/widget/media/radio/view/RulerView;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, v3, v0

    if-lez v0, :cond_5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v4, v10

    move/from16 v5, p2

    move v6, v12

    move/from16 v7, p6

    .line 298
    invoke-virtual/range {v0 .. v7}, Lcom/yftech/car/widget/media/radio/view/RulerView;->drawScaleLine(Landroid/graphics/Canvas;IFIIII)V

    :cond_5
    add-int/lit8 v12, v12, 0x1

    move/from16 v9, p6

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method private getAlpha(II)I
    .locals 1

    .line 397
    iget-boolean p0, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->isScaleGradient:Z

    const/16 v0, 0xff

    if-eqz p0, :cond_0

    .line 399
    div-int/2addr v0, p1

    sub-int/2addr p1, p2

    mul-int/2addr v0, p1

    return v0

    :cond_0
    return v0
.end method

.method private measureHeightSize(I)I
    .locals 3

    .line 176
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 177
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 181
    :cond_0
    iget-object v1, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->mMiddleImg:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/radio/view/RulerView;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/radio/view/RulerView;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    iget-object p0, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->mScaleValuePaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Landroid/text/TextPaint;->getTextSize()F

    move-result p0

    mul-float/2addr p0, v2

    add-float/2addr v1, p0

    float-to-int p0, v1

    add-int/lit8 p0, p0, 0x5

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_1

    .line 183
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0

    :cond_1
    move p1, p0

    :goto_0
    return p1
.end method

.method private measureWidthSize(I)I
    .locals 2

    .line 191
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p0

    .line 192
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x190

    const/high16 v1, -0x80000000

    if-ne p0, v1, :cond_1

    .line 198
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0

    :cond_1
    move p1, v0

    :goto_0
    return p1
.end method

.method private outOfRange()Z
    .locals 4

    .line 601
    iget v0, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->mCurrentValue:I

    iget v1, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->mMinValue:I

    iget v2, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->mScaleBase:I

    div-int/2addr v1, v2

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    .line 602
    iget v0, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->mCurrentValue:I

    iget v1, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->mMinValue:I

    iget v3, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->mScaleBase:I

    div-int/2addr v1, v3

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->mScaleSpace:I

    mul-int/2addr v0, v1

    goto :goto_0

    .line 603
    :cond_0
    iget v0, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->mCurrentValue:I

    iget v1, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->mMaxValue:I

    iget v3, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->mScaleBase:I

    div-int/2addr v1, v3

    if-le v0, v1, :cond_1

    .line 604
    iget v0, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->mCurrentValue:I

    iget v1, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->mMaxValue:I

    iget v3, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->mScaleBase:I

    div-int/2addr v1, v3

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->mScaleSpace:I

    mul-int/2addr v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    if-eqz v0, :cond_2

    .line 607
    iput v2, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->scrollingOffset:I

    .line 608
    iget-object p0, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->scroller:Lcom/yftech/car/widget/media/radio/view/RulerViewScroller;

    neg-int v0, v0

    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1}, Lcom/yftech/car/widget/media/radio/view/RulerViewScroller;->scroll(II)V

    const/4 p0, 0x1

    return p0

    :cond_2
    return v2
.end method

.method private setBand(I)V
    .locals 2

    .line 498
    iget v0, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->mBand:I

    if-ne p1, v0, :cond_0

    const-string p0, "RulerView"

    const-string/jumbo p1, "setBand: band == mBand"

    .line 499
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 502
    :cond_0
    iput p1, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->mBand:I

    const/4 v0, 0x2

    const/4 v1, -0x1

    if-ne p1, v0, :cond_4

    .line 504
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager;->getInstance()Lcom/yftech/car/widget/media/manager/RadioManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/yftech/car/widget/media/manager/RadioManager;->getMax(I)I

    move-result p1

    if-eq p1, v1, :cond_1

    goto :goto_0

    :cond_1
    const/16 p1, 0x654

    .line 505
    :goto_0
    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/radio/view/RulerView;->setMaxValue(I)V

    .line 506
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager;->getInstance()Lcom/yftech/car/widget/media/manager/RadioManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/yftech/car/widget/media/manager/RadioManager;->getMin(I)I

    move-result p1

    if-eq p1, v1, :cond_2

    goto :goto_1

    :cond_2
    const/16 p1, 0x20a

    .line 507
    :goto_1
    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/radio/view/RulerView;->setMinValue(I)V

    .line 508
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager;->getInstance()Lcom/yftech/car/widget/media/manager/RadioManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/yftech/car/widget/media/manager/RadioManager;->getStep(I)I

    move-result p1

    if-eq p1, v1, :cond_3

    goto :goto_2

    :cond_3
    const/16 p1, 0x9

    .line 509
    :goto_2
    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/radio/view/RulerView;->setStep(I)V

    goto :goto_6

    .line 511
    :cond_4
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager;->getInstance()Lcom/yftech/car/widget/media/manager/RadioManager;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/yftech/car/widget/media/manager/RadioManager;->getMax(I)I

    move-result p1

    if-eq p1, v1, :cond_5

    goto :goto_3

    :cond_5
    const p1, 0x1a5e0

    .line 512
    :goto_3
    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/radio/view/RulerView;->setMaxValue(I)V

    .line 513
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager;->getInstance()Lcom/yftech/car/widget/media/manager/RadioManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/yftech/car/widget/media/manager/RadioManager;->getMin(I)I

    move-result p1

    if-eq p1, v1, :cond_6

    goto :goto_4

    :cond_6
    const p1, 0x155cc

    .line 514
    :goto_4
    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/radio/view/RulerView;->setMinValue(I)V

    .line 515
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager;->getInstance()Lcom/yftech/car/widget/media/manager/RadioManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/yftech/car/widget/media/manager/RadioManager;->getStep(I)I

    move-result p1

    if-eq p1, v1, :cond_7

    goto :goto_5

    :cond_7
    const/16 p1, 0x64

    .line 516
    :goto_5
    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/radio/view/RulerView;->setStep(I)V

    .line 519
    :goto_6
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/radio/view/RulerView;->invalidate()V

    return-void
.end method


# virtual methods
.method public drawScaleLine(Landroid/graphics/Canvas;IFIIII)V
    .locals 15

    move-object v9, p0

    move-object/from16 v10, p1

    move/from16 v11, p3

    move/from16 v12, p4

    move/from16 v13, p5

    move/from16 v14, p6

    .line 316
    rem-int/lit8 v0, p2, 0x5

    if-nez v0, :cond_7

    .line 317
    rem-int/lit8 v0, p2, 0xa

    if-nez v0, :cond_6

    .line 318
    iget v2, v9, Lcom/yftech/car/widget/media/radio/view/RulerView;->mMaxScaleWidth:F

    iget v3, v9, Lcom/yftech/car/widget/media/radio/view/RulerView;->mMaxScaleColor:I

    invoke-direct {p0, v13, v14}, Lcom/yftech/car/widget/media/radio/view/RulerView;->getAlpha(II)I

    move-result v4

    int-to-float v6, v12

    iget v0, v9, Lcom/yftech/car/widget/media/radio/view/RulerView;->mMaxScaleHeight:I

    sub-int v0, v12, v0

    int-to-float v8, v0

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v5, p3

    move/from16 v7, p3

    invoke-direct/range {v0 .. v8}, Lcom/yftech/car/widget/media/radio/view/RulerView;->drawScaleLine(Landroid/graphics/Canvas;FIIFFFF)V

    .line 320
    iget-boolean v0, v9, Lcom/yftech/car/widget/media/radio/view/RulerView;->isShowScaleValue:Z

    if-eqz v0, :cond_8

    .line 321
    iget-object v0, v9, Lcom/yftech/car/widget/media/radio/view/RulerView;->mScaleValuePaint:Landroid/text/TextPaint;

    invoke-direct {p0, v13, v14}, Lcom/yftech/car/widget/media/radio/view/RulerView;->getAlpha(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 324
    iget v0, v9, Lcom/yftech/car/widget/media/radio/view/RulerView;->mBand:I

    if-nez v0, :cond_3

    .line 325
    iget v0, v9, Lcom/yftech/car/widget/media/radio/view/RulerView;->mScaleBase:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    .line 326
    iget v0, v9, Lcom/yftech/car/widget/media/radio/view/RulerView;->mScaleBase:I

    mul-int v0, v0, p2

    div-int/lit16 v0, v0, 0x3e8

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 327
    iget v1, v9, Lcom/yftech/car/widget/media/radio/view/RulerView;->mMaxScaleHeight:I

    sub-int v1, v12, v1

    add-int/lit8 v1, v1, -0xa

    int-to-float v1, v1

    iget-object v2, v9, Lcom/yftech/car/widget/media/radio/view/RulerView;->mScaleValuePaint:Landroid/text/TextPaint;

    invoke-virtual {v10, v0, v11, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 329
    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%.2f"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, v9, Lcom/yftech/car/widget/media/radio/view/RulerView;->mScaleBase:I

    mul-int v4, v4, p2

    int-to-float v4, v4

    const/high16 v5, 0x447a0000    # 1000.0f

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "RulerView"

    .line 331
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "drawScaleLine tx:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "87.50"

    .line 332
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/high16 v1, 0x41b00000    # 22.0f

    add-float/2addr v1, v11

    .line 333
    iget v2, v9, Lcom/yftech/car/widget/media/radio/view/RulerView;->mMaxScaleHeight:I

    sub-int v2, v12, v2

    add-int/lit8 v2, v2, -0xa

    int-to-float v2, v2

    iget-object v3, v9, Lcom/yftech/car/widget/media/radio/view/RulerView;->mScaleValuePaint:Landroid/text/TextPaint;

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    :cond_1
    const-string v1, "108.00"

    .line 334
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/high16 v1, 0x41d00000    # 26.0f

    sub-float v1, v11, v1

    .line 335
    iget v2, v9, Lcom/yftech/car/widget/media/radio/view/RulerView;->mMaxScaleHeight:I

    sub-int v2, v12, v2

    add-int/lit8 v2, v2, -0xa

    int-to-float v2, v2

    iget-object v3, v9, Lcom/yftech/car/widget/media/radio/view/RulerView;->mScaleValuePaint:Landroid/text/TextPaint;

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 337
    :cond_2
    iget v1, v9, Lcom/yftech/car/widget/media/radio/view/RulerView;->mMaxScaleHeight:I

    sub-int v1, v12, v1

    add-int/lit8 v1, v1, -0xa

    int-to-float v1, v1

    iget-object v2, v9, Lcom/yftech/car/widget/media/radio/view/RulerView;->mScaleValuePaint:Landroid/text/TextPaint;

    invoke-virtual {v10, v0, v11, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 340
    :cond_3
    iget v0, v9, Lcom/yftech/car/widget/media/radio/view/RulerView;->mScaleBase:I

    mul-int v0, v0, p2

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 341
    iget v1, v9, Lcom/yftech/car/widget/media/radio/view/RulerView;->mMinValue:I

    const/16 v2, 0x20a

    if-ne v1, v2, :cond_4

    const-string v1, "540"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/high16 v1, 0x41400000    # 12.0f

    add-float/2addr v1, v11

    .line 342
    iget v2, v9, Lcom/yftech/car/widget/media/radio/view/RulerView;->mMaxScaleHeight:I

    sub-int v2, v12, v2

    add-int/lit8 v2, v2, -0xa

    int-to-float v2, v2

    iget-object v3, v9, Lcom/yftech/car/widget/media/radio/view/RulerView;->mScaleValuePaint:Landroid/text/TextPaint;

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 343
    :cond_4
    iget v1, v9, Lcom/yftech/car/widget/media/radio/view/RulerView;->mMinValue:I

    if-ne v1, v2, :cond_5

    const-string v1, "1620"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/high16 v1, 0x41900000    # 18.0f

    sub-float v1, v11, v1

    .line 344
    iget v2, v9, Lcom/yftech/car/widget/media/radio/view/RulerView;->mMaxScaleHeight:I

    sub-int v2, v12, v2

    add-int/lit8 v2, v2, -0xa

    int-to-float v2, v2

    iget-object v3, v9, Lcom/yftech/car/widget/media/radio/view/RulerView;->mScaleValuePaint:Landroid/text/TextPaint;

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 346
    :cond_5
    iget v1, v9, Lcom/yftech/car/widget/media/radio/view/RulerView;->mMaxScaleHeight:I

    sub-int v1, v12, v1

    add-int/lit8 v1, v1, -0xa

    int-to-float v1, v1

    iget-object v2, v9, Lcom/yftech/car/widget/media/radio/view/RulerView;->mScaleValuePaint:Landroid/text/TextPaint;

    invoke-virtual {v10, v0, v11, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 354
    :cond_6
    iget v2, v9, Lcom/yftech/car/widget/media/radio/view/RulerView;->mMinScaleWidth:F

    iget v3, v9, Lcom/yftech/car/widget/media/radio/view/RulerView;->mMinScaleColor:I

    invoke-direct {p0, v13, v14}, Lcom/yftech/car/widget/media/radio/view/RulerView;->getAlpha(II)I

    move-result v4

    int-to-float v6, v12

    iget v0, v9, Lcom/yftech/car/widget/media/radio/view/RulerView;->mMinScaleHeight:I

    sub-int v0, v12, v0

    int-to-float v8, v0

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v5, p3

    move/from16 v7, p3

    invoke-direct/range {v0 .. v8}, Lcom/yftech/car/widget/media/radio/view/RulerView;->drawScaleLine(Landroid/graphics/Canvas;FIIFFFF)V

    goto :goto_0

    .line 358
    :cond_7
    iget v2, v9, Lcom/yftech/car/widget/media/radio/view/RulerView;->mMinScaleWidth:F

    iget v3, v9, Lcom/yftech/car/widget/media/radio/view/RulerView;->mMinScaleColor:I

    invoke-direct {p0, v13, v14}, Lcom/yftech/car/widget/media/radio/view/RulerView;->getAlpha(II)I

    move-result v4

    int-to-float v6, v12

    iget v0, v9, Lcom/yftech/car/widget/media/radio/view/RulerView;->mMinScaleHeight:I

    sub-int v0, v12, v0

    int-to-float v8, v0

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v5, p3

    move/from16 v7, p3

    invoke-direct/range {v0 .. v8}, Lcom/yftech/car/widget/media/radio/view/RulerView;->drawScaleLine(Landroid/graphics/Canvas;FIIFFFF)V

    :cond_8
    :goto_0
    return-void
.end method

.method public getCurrentValue()I
    .locals 2

    .line 449
    iget v0, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->mCurrentValue:I

    iget v1, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->mScaleBase:I

    mul-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget p0, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->mMaxValue:I

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public getMaxValue()I
    .locals 0

    .line 440
    iget p0, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->mMaxValue:I

    return p0
.end method

.method public getMinValue()I
    .locals 0

    .line 422
    iget p0, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->mMinValue:I

    return p0
.end method

.method public getStep()I
    .locals 0

    .line 494
    iget p0, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->mScaleBase:I

    return p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 226
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 227
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/radio/view/RulerView;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/radio/view/RulerView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/radio/view/RulerView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 228
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/radio/view/RulerView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/radio/view/RulerView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/radio/view/RulerView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    .line 230
    invoke-direct {p0, p1, v0, v1}, Lcom/yftech/car/widget/media/radio/view/RulerView;->drawScaleLine(Landroid/graphics/Canvas;II)V

    .line 232
    invoke-direct {p0, p1, v0, v1}, Lcom/yftech/car/widget/media/radio/view/RulerView;->drawMiddleImg(Landroid/graphics/Canvas;II)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 171
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/radio/view/RulerView;->measureWidthSize(I)I

    move-result p1

    invoke-direct {p0, p2}, Lcom/yftech/car/widget/media/radio/view/RulerView;->measureHeightSize(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/yftech/car/widget/media/radio/view/RulerView;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 206
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 212
    :cond_0
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/radio/view/RulerView;->getPaddingTop()I

    move-result p1

    sub-int/2addr p2, p1

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/radio/view/RulerView;->getPaddingBottom()I

    move-result p1

    sub-int/2addr p2, p1

    int-to-float p1, p2

    .line 213
    iget p2, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->mMaxScaleHeightRatio:F

    mul-float/2addr p2, p1

    float-to-int p2, p2

    iput p2, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->mMaxScaleHeight:I

    .line 215
    iget p2, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->mMinScaleHeightRatio:F

    mul-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->mMinScaleHeight:I

    .line 216
    iget p1, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->mMinScaleHeight:I

    mul-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->mMidScaleHeight:I

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 653
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/radio/view/RulerView;->isEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 656
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 662
    :pswitch_0
    iget-boolean v0, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->isDisallowIntercept:Z

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v2, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->mDownFocusY:F

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v3, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->mDownFocusX:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_2

    .line 663
    iput-boolean v1, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->isDisallowIntercept:Z

    .line 664
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/radio/view/RulerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 665
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/radio/view/RulerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 671
    :pswitch_1
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/radio/view/RulerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 672
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/radio/view/RulerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 674
    :cond_1
    iput-boolean v1, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->isDisallowIntercept:Z

    goto :goto_0

    .line 658
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->mDownFocusX:F

    .line 659
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->mDownFocusY:F

    .line 679
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->scroller:Lcom/yftech/car/widget/media/radio/view/RulerViewScroller;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/radio/view/RulerViewScroller;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setCurrentValue(I)V
    .locals 3

    const-string v0, "RulerView"

    .line 463
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setCurrentValue:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 467
    :cond_0
    iget v0, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->mMinValue:I

    if-gt p1, v0, :cond_1

    .line 468
    iget p1, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->mMinValue:I

    .line 470
    :cond_1
    iget v0, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->mMaxValue:I

    if-lt p1, v0, :cond_2

    .line 471
    iget p1, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->mMaxValue:I

    .line 473
    :cond_2
    iget v0, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->mScaleBase:I

    div-int/2addr p1, v0

    iput p1, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->mCurrentValue:I

    .line 474
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/radio/view/RulerView;->invalidate()V

    return-void
.end method

.method public setCurrentValue(Lcom/yftech/car/media/radio/entity/DataOfRadio;)V
    .locals 1

    .line 453
    invoke-virtual {p1}, Lcom/yftech/car/media/radio/entity/DataOfRadio;->getType()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/yftech/car/widget/media/radio/view/RulerView;->setBand(I)V

    .line 454
    invoke-virtual {p1}, Lcom/yftech/car/media/radio/entity/DataOfRadio;->getFreq()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/radio/view/RulerView;->setCurrentValue(I)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 721
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    if-eqz p1, :cond_0

    .line 723
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/radio/view/RulerView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x106000b

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->mMaxScaleColor:I

    .line 724
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/radio/view/RulerView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->mMidScaleColor:I

    .line 725
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/radio/view/RulerView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->mMinScaleColor:I

    .line 726
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/radio/view/RulerView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->mScaleValueColor:I

    .line 727
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/radio/view/RulerView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/yftech/car/widget/media/R$mipmap;->ic_cursor_normal:I

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->mMiddleImg:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 729
    :cond_0
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/radio/view/RulerView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x1060018

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->mMaxScaleColor:I

    .line 730
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/radio/view/RulerView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->mMidScaleColor:I

    .line 731
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/radio/view/RulerView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->mMinScaleColor:I

    .line 732
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/radio/view/RulerView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->mScaleValueColor:I

    .line 735
    :goto_0
    iget-object p1, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->mScaleValuePaint:Landroid/text/TextPaint;

    iget v0, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->mScaleValueColor:I

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 736
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/radio/view/RulerView;->invalidate()V

    return-void
.end method

.method public setMaxValue(I)V
    .locals 3

    const-string v0, "RulerView"

    .line 431
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMaxValue:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-lez p1, :cond_0

    .line 433
    iput p1, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->mMaxValue:I

    .line 434
    iget p1, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->mCurrentValue:I

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/radio/view/RulerView;->setCurrentValue(I)V

    .line 436
    :cond_0
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/radio/view/RulerView;->invalidate()V

    return-void
.end method

.method public setMinValue(I)V
    .locals 3

    const-string v0, "RulerView"

    .line 412
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMinValue:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    iget v0, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->mScaleBase:I

    div-int v0, p1, v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    const/4 p1, 0x0

    .line 416
    :cond_0
    iput p1, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->mMinValue:I

    .line 417
    iget p1, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->mCurrentValue:I

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/radio/view/RulerView;->setCurrentValue(I)V

    .line 418
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/radio/view/RulerView;->invalidate()V

    return-void
.end method

.method public setScrollingListener(Lcom/yftech/car/widget/media/radio/view/RulerView$OnRulerViewScrollListener;)V
    .locals 0

    .line 690
    iput-object p1, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->onWheelListener:Lcom/yftech/car/widget/media/radio/view/RulerView$OnRulerViewScrollListener;

    return-void
.end method

.method public setStep(I)V
    .locals 3

    const-string v0, "RulerView"

    .line 483
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setStep:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    iput p1, p0, Lcom/yftech/car/widget/media/radio/view/RulerView;->mScaleBase:I

    .line 485
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/radio/view/RulerView;->invalidate()V

    return-void
.end method
