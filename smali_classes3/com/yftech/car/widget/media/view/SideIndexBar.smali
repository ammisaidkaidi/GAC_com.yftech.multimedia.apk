.class public Lcom/yftech/car/widget/media/view/SideIndexBar;
.super Landroid/view/View;
.source "SideIndexBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/car/widget/media/view/SideIndexBar$OnIndexTouchedChangedListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_INDEX_ITEMS:[Ljava/lang/String;

.field private static final DEFAULT_INDEX_ITEMS_2:[Ljava/lang/String;

.field private static final REPLAY_DEFAULT_INDEX_ITEMS:[Ljava/lang/String;


# instance fields
.field private final CLICK_OFFSET:I

.field private HEIGHT:I

.field private final LOWER_BOUNDARY:I

.field private final MARGINTOP:I

.field private final TAG:Ljava/lang/String;

.field private final UPPER_BOUNDARY:I

.field private isShowLetterTip:Z

.field private final letterHeight:F

.field private final letterSize:F

.field private final letterSizeTip:F

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentIndex:I

.field private mCx:F

.field private mIndexItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mOnIndexChangedListener:Lcom/yftech/car/widget/media/view/SideIndexBar$OnIndexTouchedChangedListener;

.field private mPaint:Landroid/graphics/Paint;

.field private mTipPaint:Landroid/graphics/Paint;

.field private realHeight:F

.field private singleHeight:F

.field private tipCircleR:F

.field private x_down:F

.field private y_down:F


# direct methods
.method static constructor <clinit>()V
    .locals 27

    const-string v0, "A"

    const-string v1, "B"

    const-string v2, "C"

    const-string v3, "D"

    const-string v4, "E"

    const-string v5, "F"

    const-string v6, "G"

    const-string v7, "H"

    const-string v8, "I"

    const-string v9, "J"

    const-string v10, "K"

    const-string v11, "L"

    const-string v12, "M"

    const-string v13, "N"

    const-string v14, "O"

    const-string v15, "P"

    const-string v16, "Q"

    const-string v17, "R"

    const-string v18, "S"

    const-string v19, "T"

    const-string v20, "U"

    const-string v21, "V"

    const-string v22, "W"

    const-string v23, "X"

    const-string v24, "Y"

    const-string v25, "Z"

    const-string v26, "#"

    .line 30
    filled-new-array/range {v0 .. v26}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yftech/car/widget/media/view/SideIndexBar;->DEFAULT_INDEX_ITEMS:[Ljava/lang/String;

    const-string v1, "A"

    const-string v2, "."

    const-string v3, "."

    const-string v4, "."

    const-string v5, "G"

    const-string v6, "."

    const-string v7, "."

    const-string v8, "."

    const-string v9, "M"

    const-string v10, "."

    const-string v11, "."

    const-string v12, "."

    const-string v13, "S"

    const-string v14, "."

    const-string v15, "."

    const-string v16, "."

    const-string v17, "Z"

    const-string v18, "#"

    .line 32
    filled-new-array/range {v1 .. v18}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yftech/car/widget/media/view/SideIndexBar;->DEFAULT_INDEX_ITEMS_2:[Ljava/lang/String;

    const-string v1, "B"

    const-string v2, "C"

    const-string v3, "D"

    const-string v4, "E"

    const-string v5, "F"

    const-string v6, "H"

    const-string v7, "I"

    const-string v8, "J"

    const-string v9, "K"

    const-string v10, "L"

    const-string v11, "N"

    const-string v12, "O"

    const-string v13, "P"

    const-string v14, "Q"

    const-string v15, "R"

    const-string v16, "T"

    const-string v17, "U"

    const-string v18, "V"

    const-string v19, "W"

    const-string v20, "X"

    const-string v21, "Y"

    .line 34
    filled-new-array/range {v1 .. v21}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yftech/car/widget/media/view/SideIndexBar;->REPLAY_DEFAULT_INDEX_ITEMS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 59
    invoke-direct {p0, p1, v0}, Lcom/yftech/car/widget/media/view/SideIndexBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 63
    invoke-direct {p0, p1, p2, v0}, Lcom/yftech/car/widget/media/view/SideIndexBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CustomViewStyleable"
        }
    .end annotation

    .line 68
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/yftech/car/widget/media/view/SideIndexBar;->TAG:Ljava/lang/String;

    .line 36
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/yftech/car/widget/media/view/SideIndexBar;->mIndexItems:Ljava/util/List;

    .line 37
    sget-object p3, Lcom/yftech/car/widget/media/view/SideIndexBar;->REPLAY_DEFAULT_INDEX_ITEMS:[Ljava/lang/String;

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    iput-object p3, p0, Lcom/yftech/car/widget/media/view/SideIndexBar;->list:Ljava/util/List;

    const/4 p3, -0x1

    .line 39
    iput p3, p0, Lcom/yftech/car/widget/media/view/SideIndexBar;->mCurrentIndex:I

    const/4 p3, 0x0

    .line 45
    iput-boolean p3, p0, Lcom/yftech/car/widget/media/view/SideIndexBar;->isShowLetterTip:Z

    const/16 p3, 0x14

    .line 51
    iput p3, p0, Lcom/yftech/car/widget/media/view/SideIndexBar;->MARGINTOP:I

    const/16 v0, 0x10

    .line 53
    iput v0, p0, Lcom/yftech/car/widget/media/view/SideIndexBar;->CLICK_OFFSET:I

    .line 55
    iput p3, p0, Lcom/yftech/car/widget/media/view/SideIndexBar;->UPPER_BOUNDARY:I

    .line 56
    iput p3, p0, Lcom/yftech/car/widget/media/view/SideIndexBar;->LOWER_BOUNDARY:I

    .line 69
    sget-object p3, Lcom/yftech/car/widget/media/R$styleable;->SlideIndexBar:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 71
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->SlideIndexBar_letterHeight:I

    const/high16 p3, 0x41e00000    # 28.0f

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/yftech/car/widget/media/view/SideIndexBar;->letterHeight:F

    .line 72
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->SlideIndexBar_letterSize:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/yftech/car/widget/media/view/SideIndexBar;->letterSize:F

    .line 73
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->SlideIndexBar_letterSizeTip:I

    const/high16 p3, 0x41c80000    # 25.0f

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/yftech/car/widget/media/view/SideIndexBar;->letterSizeTip:F

    .line 76
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 77
    invoke-direct {p0}, Lcom/yftech/car/widget/media/view/SideIndexBar;->init()V

    return-void
.end method

.method private drawWater(Landroid/graphics/Canvas;FF)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move/from16 v8, p3

    .line 320
    iget v1, v0, Lcom/yftech/car/widget/media/view/SideIndexBar;->letterHeight:F

    iput v1, v0, Lcom/yftech/car/widget/media/view/SideIndexBar;->tipCircleR:F

    .line 323
    iget v1, v0, Lcom/yftech/car/widget/media/view/SideIndexBar;->letterHeight:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    const/high16 v2, 0x40c00000    # 6.0f

    add-float v2, p2, v2

    add-float v3, v2, v1

    .line 328
    iput v3, v0, Lcom/yftech/car/widget/media/view/SideIndexBar;->mCx:F

    mul-float v3, v1, v1

    .line 333
    iget v4, v0, Lcom/yftech/car/widget/media/view/SideIndexBar;->tipCircleR:F

    iget v5, v0, Lcom/yftech/car/widget/media/view/SideIndexBar;->tipCircleR:F

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    .line 337
    iget v5, v0, Lcom/yftech/car/widget/media/view/SideIndexBar;->mCx:F

    sub-float/2addr v5, v2

    div-float/2addr v5, v1

    .line 339
    iget v6, v0, Lcom/yftech/car/widget/media/view/SideIndexBar;->tipCircleR:F

    div-float/2addr v6, v1

    float-to-double v9, v6

    invoke-static {v9, v10}, Ljava/lang/Math;->asin(D)D

    move-result-wide v9

    float-to-double v5, v5

    .line 341
    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    mul-double/2addr v11, v5

    .line 342
    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    mul-double/2addr v13, v5

    neg-double v9, v9

    .line 343
    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v15

    mul-double/2addr v15, v5

    .line 344
    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    mul-double/2addr v5, v9

    mul-double/2addr v11, v3

    float-to-double v9, v2

    add-double/2addr v11, v9

    mul-double/2addr v13, v3

    float-to-double v0, v8

    add-double/2addr v13, v0

    mul-double/2addr v15, v3

    add-double/2addr v9, v15

    mul-double/2addr v5, v3

    add-double/2addr v5, v0

    .line 356
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 357
    sget-object v1, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 358
    invoke-virtual {v0, v2, v8}, Landroid/graphics/Path;->moveTo(FF)V

    double-to-float v4, v11

    double-to-float v11, v13

    .line 359
    invoke-virtual {v0, v4, v11}, Landroid/graphics/Path;->lineTo(FF)V

    double-to-float v1, v9

    double-to-float v3, v5

    .line 360
    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 361
    invoke-virtual {v0, v2, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 362
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    move-object/from16 v9, p0

    .line 363
    iget-object v1, v9, Lcom/yftech/car/widget/media/view/SideIndexBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 364
    iget-object v6, v9, Lcom/yftech/car/widget/media/view/SideIndexBar;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move/from16 v3, p3

    move v5, v11

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 365
    iget v0, v9, Lcom/yftech/car/widget/media/view/SideIndexBar;->mCx:F

    iget v1, v9, Lcom/yftech/car/widget/media/view/SideIndexBar;->tipCircleR:F

    iget-object v2, v9, Lcom/yftech/car/widget/media/view/SideIndexBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v0, v8, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawWaterSimple(Landroid/graphics/Canvas;F)V
    .locals 7

    const/high16 v0, 0x41a80000    # 21.0f

    .line 217
    iput v0, p0, Lcom/yftech/car/widget/media/view/SideIndexBar;->tipCircleR:F

    .line 219
    iget v0, p0, Lcom/yftech/car/widget/media/view/SideIndexBar;->tipCircleR:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    .line 222
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/view/SideIndexBar;->getWidth()I

    move-result v2

    add-int/lit8 v2, v2, -0x1a

    int-to-float v2, v2

    add-float/2addr v0, v2

    .line 223
    iput v0, p0, Lcom/yftech/car/widget/media/view/SideIndexBar;->mCx:F

    .line 225
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/view/SideIndexBar;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, -0x28

    int-to-float v0, v0

    const-wide/high16 v3, 0x4008000000000000L    # 3.0

    .line 226
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-float v5, v5

    iget v6, p0, Lcom/yftech/car/widget/media/view/SideIndexBar;->tipCircleR:F

    mul-float/2addr v5, v6

    div-float/2addr v5, v1

    add-float/2addr v5, p2

    .line 227
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v3, v3

    iget v4, p0, Lcom/yftech/car/widget/media/view/SideIndexBar;->tipCircleR:F

    mul-float/2addr v3, v4

    div-float/2addr v3, v1

    sub-float v1, p2, v3

    .line 230
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    .line 231
    sget-object v4, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v3, v4}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 232
    invoke-virtual {v3, v2, p2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 233
    invoke-virtual {v3, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 234
    invoke-virtual {v3, v0, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 235
    invoke-virtual {v3, v2, p2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 236
    invoke-virtual {v3}, Landroid/graphics/Path;->close()V

    .line 237
    iget-object v0, p0, Lcom/yftech/car/widget/media/view/SideIndexBar;->mTipPaint:Landroid/graphics/Paint;

    const-string v1, "#009bff"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 238
    iget-object v0, p0, Lcom/yftech/car/widget/media/view/SideIndexBar;->mTipPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    const/high16 v0, 0x41c80000    # 25.0f

    sub-float/2addr v2, v0

    .line 239
    iget v0, p0, Lcom/yftech/car/widget/media/view/SideIndexBar;->tipCircleR:F

    iget-object p0, p0, Lcom/yftech/car/widget/media/view/SideIndexBar;->mTipPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, p2, v0, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private init()V
    .locals 4

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yftech/car/widget/media/view/SideIndexBar;->mIndexItems:Ljava/util/List;

    .line 82
    iget-object v0, p0, Lcom/yftech/car/widget/media/view/SideIndexBar;->mIndexItems:Ljava/util/List;

    sget-object v1, Lcom/yftech/car/widget/media/view/SideIndexBar;->DEFAULT_INDEX_ITEMS:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 84
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/yftech/car/widget/media/view/SideIndexBar;->mPaint:Landroid/graphics/Paint;

    .line 85
    iget-object v0, p0, Lcom/yftech/car/widget/media/view/SideIndexBar;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/yftech/car/widget/media/view/SideIndexBar;->letterSize:F

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 86
    iget-object v0, p0, Lcom/yftech/car/widget/media/view/SideIndexBar;->mPaint:Landroid/graphics/Paint;

    const/high16 v2, -0x1000000

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 87
    iget-object v0, p0, Lcom/yftech/car/widget/media/view/SideIndexBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 88
    iget-object v0, p0, Lcom/yftech/car/widget/media/view/SideIndexBar;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 89
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/yftech/car/widget/media/view/SideIndexBar;->mTipPaint:Landroid/graphics/Paint;

    .line 90
    iget-object v0, p0, Lcom/yftech/car/widget/media/view/SideIndexBar;->mTipPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/yftech/car/widget/media/view/SideIndexBar;->letterSizeTip:F

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 91
    iget-object v0, p0, Lcom/yftech/car/widget/media/view/SideIndexBar;->mTipPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 92
    iget-object v0, p0, Lcom/yftech/car/widget/media/view/SideIndexBar;->mTipPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 93
    iget-object p0, p0, Lcom/yftech/car/widget/media/view/SideIndexBar;->mTipPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    return-void
.end method


# virtual methods
.method public getCurrentIndex()I
    .locals 0

    .line 124
    iget p0, p0, Lcom/yftech/car/widget/media/view/SideIndexBar;->mCurrentIndex:I

    return p0
.end method

.method public getIndex(Ljava/lang/String;)I
    .locals 0

    .line 104
    sget-object p0, Lcom/yftech/car/widget/media/view/SideIndexBar;->DEFAULT_INDEX_ITEMS:[Ljava/lang/String;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 160
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    const/4 v0, 0x0

    .line 161
    :goto_0
    sget-object v1, Lcom/yftech/car/widget/media/view/SideIndexBar;->DEFAULT_INDEX_ITEMS_2:[Ljava/lang/String;

    array-length v1, v1

    const/4 v2, -0x1

    if-ge v0, v1, :cond_4

    .line 162
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/view/SideIndexBar;->getWidth()I

    move-result v1

    add-int/lit8 v1, v1, -0xc

    int-to-float v1, v1

    const/high16 v3, 0x41a00000    # 20.0f

    const/high16 v4, 0x40000000    # 2.0f

    if-nez v0, :cond_0

    .line 165
    iget v5, p0, Lcom/yftech/car/widget/media/view/SideIndexBar;->singleHeight:F

    div-float/2addr v5, v4

    add-float/2addr v5, v3

    goto :goto_1

    .line 167
    :cond_0
    iget v5, p0, Lcom/yftech/car/widget/media/view/SideIndexBar;->singleHeight:F

    int-to-float v6, v0

    mul-float/2addr v5, v6

    iget v6, p0, Lcom/yftech/car/widget/media/view/SideIndexBar;->singleHeight:F

    div-float/2addr v6, v4

    add-float/2addr v5, v6

    add-float/2addr v5, v3

    .line 168
    :goto_1
    sget-object v3, Lcom/yftech/car/widget/media/view/SideIndexBar;->DEFAULT_INDEX_ITEMS_2:[Ljava/lang/String;

    aget-object v3, v3, v0

    const-string v4, "."

    .line 169
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const/high16 v4, 0x41000000    # 8.0f

    add-float/2addr v5, v4

    :cond_1
    const-string v4, "#"

    .line 171
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/high16 v4, 0x40800000    # 4.0f

    add-float/2addr v5, v4

    .line 178
    :cond_2
    iget-object v4, p0, Lcom/yftech/car/widget/media/view/SideIndexBar;->mPaint:Landroid/graphics/Paint;

    const/high16 v6, 0x41e00000    # 28.0f

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 179
    iget-object v4, p0, Lcom/yftech/car/widget/media/view/SideIndexBar;->mIndexItems:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 180
    iget-object v4, p0, Lcom/yftech/car/widget/media/view/SideIndexBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_2

    .line 182
    :cond_3
    iget-object v2, p0, Lcom/yftech/car/widget/media/view/SideIndexBar;->mPaint:Landroid/graphics/Paint;

    const v4, -0x777778

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 184
    :goto_2
    iget-object v2, p0, Lcom/yftech/car/widget/media/view/SideIndexBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v1, v5, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 203
    :cond_4
    iget v0, p0, Lcom/yftech/car/widget/media/view/SideIndexBar;->mCurrentIndex:I

    if-eq v0, v2, :cond_7

    iget v0, p0, Lcom/yftech/car/widget/media/view/SideIndexBar;->mCurrentIndex:I

    const/16 v1, 0x1b

    if-lt v0, v1, :cond_5

    goto :goto_3

    .line 205
    :cond_5
    iget-boolean v0, p0, Lcom/yftech/car/widget/media/view/SideIndexBar;->isShowLetterTip:Z

    if-eqz v0, :cond_6

    .line 206
    iget v0, p0, Lcom/yftech/car/widget/media/view/SideIndexBar;->y_down:F

    invoke-direct {p0, p1, v0}, Lcom/yftech/car/widget/media/view/SideIndexBar;->drawWaterSimple(Landroid/graphics/Canvas;F)V

    .line 208
    iget-object v0, p0, Lcom/yftech/car/widget/media/view/SideIndexBar;->mTipPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 209
    sget-object v0, Lcom/yftech/car/widget/media/view/SideIndexBar;->DEFAULT_INDEX_ITEMS:[Ljava/lang/String;

    iget v1, p0, Lcom/yftech/car/widget/media/view/SideIndexBar;->mCurrentIndex:I

    aget-object v0, v0, v1

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/view/SideIndexBar;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x424e0000    # 51.5f

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/yftech/car/widget/media/view/SideIndexBar;->y_down:F

    const/high16 v3, 0x41180000    # 9.5f

    add-float/2addr v2, v3

    iget-object p0, p0, Lcom/yftech/car/widget/media/view/SideIndexBar;->mTipPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_6
    return-void

    :cond_7
    :goto_3
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 110
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    if-eqz p1, :cond_0

    .line 112
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/view/SideIndexBar;->getHeight()I

    move-result p1

    add-int/lit8 p1, p1, -0x28

    iput p1, p0, Lcom/yftech/car/widget/media/view/SideIndexBar;->HEIGHT:I

    .line 114
    iget p1, p0, Lcom/yftech/car/widget/media/view/SideIndexBar;->HEIGHT:I

    int-to-float p1, p1

    sget-object p2, Lcom/yftech/car/widget/media/view/SideIndexBar;->DEFAULT_INDEX_ITEMS_2:[Ljava/lang/String;

    array-length p2, p2

    int-to-float p2, p2

    const/high16 p3, 0x3f800000    # 1.0f

    mul-float/2addr p2, p3

    div-float/2addr p1, p2

    iput p1, p0, Lcom/yftech/car/widget/media/view/SideIndexBar;->singleHeight:F

    .line 115
    iget p1, p0, Lcom/yftech/car/widget/media/view/SideIndexBar;->HEIGHT:I

    int-to-float p1, p1

    sget-object p2, Lcom/yftech/car/widget/media/view/SideIndexBar;->DEFAULT_INDEX_ITEMS:[Ljava/lang/String;

    array-length p2, p2

    int-to-float p2, p2

    mul-float/2addr p2, p3

    div-float/2addr p1, p2

    iput p1, p0, Lcom/yftech/car/widget/media/view/SideIndexBar;->realHeight:F

    .line 116
    iget-object p1, p0, Lcom/yftech/car/widget/media/view/SideIndexBar;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "HEIGHT:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/yftech/car/widget/media/view/SideIndexBar;->HEIGHT:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object p1, p0, Lcom/yftech/car/widget/media/view/SideIndexBar;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "singleHeight:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/yftech/car/widget/media/view/SideIndexBar;->singleHeight:F

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object p1, p0, Lcom/yftech/car/widget/media/view/SideIndexBar;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "realHeight:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/yftech/car/widget/media/view/SideIndexBar;->realHeight:F

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object p0, p0, Lcom/yftech/car/widget/media/view/SideIndexBar;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "DEFAULT_INDEX_ITEMS_2.length + 1:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lcom/yftech/car/widget/media/view/SideIndexBar;->DEFAULT_INDEX_ITEMS_2:[Ljava/lang/String;

    array-length p2, p2

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 248
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/view/SideIndexBar;->isEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 251
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    const-string p1, "SideIndexBar"

    const-string v0, "MotionEvent.ACTION_CANCEL"

    .line 288
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    iput-boolean v2, p0, Lcom/yftech/car/widget/media/view/SideIndexBar;->isShowLetterTip:Z

    .line 291
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/view/SideIndexBar;->invalidate()V

    .line 292
    invoke-virtual {p0, v2}, Lcom/yftech/car/widget/media/view/SideIndexBar;->playSoundEffect(I)V

    goto/16 :goto_2

    .line 255
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/yftech/car/widget/media/view/SideIndexBar;->x_down:F

    .line 256
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/yftech/car/widget/media/view/SideIndexBar;->y_down:F

    .line 257
    iget v0, p0, Lcom/yftech/car/widget/media/view/SideIndexBar;->y_down:F

    const/high16 v3, 0x41a00000    # 20.0f

    cmpg-float v0, v0, v3

    if-ltz v0, :cond_5

    iget v0, p0, Lcom/yftech/car/widget/media/view/SideIndexBar;->y_down:F

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/view/SideIndexBar;->getHeight()I

    move-result v3

    add-int/lit8 v3, v3, -0x14

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-lez v0, :cond_1

    goto/16 :goto_1

    .line 261
    :cond_1
    iput-boolean v1, p0, Lcom/yftech/car/widget/media/view/SideIndexBar;->isShowLetterTip:Z

    .line 262
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    const/high16 v0, 0x41800000    # 16.0f

    sub-float/2addr p1, v0

    .line 264
    sget-object v0, Lcom/yftech/car/widget/media/view/SideIndexBar;->DEFAULT_INDEX_ITEMS:[Ljava/lang/String;

    array-length v0, v0

    .line 265
    iget v3, p0, Lcom/yftech/car/widget/media/view/SideIndexBar;->realHeight:F

    div-float/2addr p1, v3

    float-to-int p1, p1

    if-gez p1, :cond_2

    goto :goto_0

    :cond_2
    if-lt p1, v0, :cond_3

    add-int/lit8 v2, v0, -0x1

    goto :goto_0

    :cond_3
    move v2, p1

    :goto_0
    const-string p1, "SideIndexBar"

    .line 273
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "touchedIndex = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", indexSize = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mCurrentIndex="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/yftech/car/widget/media/view/SideIndexBar;->mCurrentIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    iget-object p1, p0, Lcom/yftech/car/widget/media/view/SideIndexBar;->mOnIndexChangedListener:Lcom/yftech/car/widget/media/view/SideIndexBar$OnIndexTouchedChangedListener;

    if-eqz p1, :cond_4

    if-ltz v2, :cond_4

    if-ge v2, v0, :cond_4

    iget p1, p0, Lcom/yftech/car/widget/media/view/SideIndexBar;->mCurrentIndex:I

    if-eq v2, p1, :cond_4

    .line 275
    iput v2, p0, Lcom/yftech/car/widget/media/view/SideIndexBar;->mCurrentIndex:I

    .line 276
    sget-object p1, Lcom/yftech/car/widget/media/view/SideIndexBar;->DEFAULT_INDEX_ITEMS:[Ljava/lang/String;

    aget-object p1, p1, v2

    .line 277
    iget-object v0, p0, Lcom/yftech/car/widget/media/view/SideIndexBar;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "letter: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    iget-object v0, p0, Lcom/yftech/car/widget/media/view/SideIndexBar;->mIndexItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 280
    iget-object v0, p0, Lcom/yftech/car/widget/media/view/SideIndexBar;->mOnIndexChangedListener:Lcom/yftech/car/widget/media/view/SideIndexBar$OnIndexTouchedChangedListener;

    invoke-interface {v0, p1, v2}, Lcom/yftech/car/widget/media/view/SideIndexBar$OnIndexTouchedChangedListener;->onIndexChanged(Ljava/lang/String;I)V

    .line 284
    :cond_4
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/view/SideIndexBar;->invalidate()V

    goto :goto_2

    :cond_5
    :goto_1
    return v1

    :goto_2
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setCurrentIndex(I)V
    .locals 1

    const/4 v0, 0x0

    .line 98
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/view/SideIndexBar;->isShowLetterTip:Z

    .line 99
    iput p1, p0, Lcom/yftech/car/widget/media/view/SideIndexBar;->mCurrentIndex:I

    .line 100
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/view/SideIndexBar;->invalidate()V

    return-void
.end method

.method public setIndexItems(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 128
    iget-object v0, p0, Lcom/yftech/car/widget/media/view/SideIndexBar;->mIndexItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    .line 130
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 131
    iput v0, p0, Lcom/yftech/car/widget/media/view/SideIndexBar;->mCurrentIndex:I

    .line 132
    iget-object v1, p0, Lcom/yftech/car/widget/media/view/SideIndexBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 133
    iget-object v0, p0, Lcom/yftech/car/widget/media/view/SideIndexBar;->mIndexItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 p1, 0x1

    .line 134
    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/view/SideIndexBar;->setEnabled(Z)V

    goto :goto_0

    .line 136
    :cond_0
    iget-object p1, p0, Lcom/yftech/car/widget/media/view/SideIndexBar;->mPaint:Landroid/graphics/Paint;

    const v0, -0x777778

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    const/4 p1, 0x0

    .line 138
    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/view/SideIndexBar;->setEnabled(Z)V

    .line 140
    :goto_0
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/view/SideIndexBar;->invalidate()V

    return-void
.end method

.method public setOnIndexChangedListener(Lcom/yftech/car/widget/media/view/SideIndexBar$OnIndexTouchedChangedListener;)V
    .locals 0

    .line 301
    iput-object p1, p0, Lcom/yftech/car/widget/media/view/SideIndexBar;->mOnIndexChangedListener:Lcom/yftech/car/widget/media/view/SideIndexBar$OnIndexTouchedChangedListener;

    return-void
.end method
