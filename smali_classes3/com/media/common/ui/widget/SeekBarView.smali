.class public Lcom/media/common/ui/widget/SeekBarView;
.super Landroid/view/View;
.source "SeekBarView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/media/common/ui/widget/SeekBarView$OnSeekBarCallbackListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_TOUCH_TARGET_SIZE:I = 0x28


# instance fields
.field private final DEFAULT_TEXT_PADDING:I

.field private final DEFAULT_THUMB_COLOR:I

.field private isTouchLegal:Z

.field private mAnimator:Landroid/animation/ObjectAnimator;

.field private mBackRectF:Landroid/graphics/RectF;

.field private mIsCenterState:Z

.field private mLastTime:J

.field private mProgressLinearGradient:Landroid/graphics/LinearGradient;

.field private final mProgressPaint:Landroid/graphics/Paint;

.field private mProgressRectF:Landroid/graphics/RectF;

.field private mTextBackColor:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private mTextBackRadius:F

.field private mTextColor:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private mTextLocation:F

.field private mTextRectF:Landroid/graphics/RectF;

.field private mTextSize:F

.field private mThumbColor:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private mThumbDrawColor:I

.field private mThumbNormalRadius:F

.field private mThumbPressedRadius:F

.field private mThumbRadius:F

.field private mWidth:F

.field private maxProgress:I

.field private minProgress:I

.field private onSeekBarCallbackListener:Lcom/media/common/ui/widget/SeekBarView$OnSeekBarCallbackListener;

.field private onlyChangeProgressByThumb:Z

.field private final paint:Landroid/graphics/Paint;

.field private progress:I

.field private progressBackColor:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private progressBackHeight:F

.field private progressColor:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private progressFrameColor:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private progressFrameHeight:F

.field private progressHeight:F

.field private progressMinusColor:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private progressPosition:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 139
    invoke-direct {p0, p1, v0}, Lcom/media/common/ui/widget/SeekBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 143
    invoke-direct {p0, p1, p2, v0}, Lcom/media/common/ui/widget/SeekBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 24
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 147
    invoke-direct/range {p0 .. p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 v2, 0xa

    .line 35
    iput v2, v0, Lcom/media/common/ui/widget/SeekBarView;->DEFAULT_TEXT_PADDING:I

    const v2, -0x777778

    .line 36
    iput v2, v0, Lcom/media/common/ui/widget/SeekBarView;->DEFAULT_THUMB_COLOR:I

    const/high16 v3, 0x44480000    # 800.0f

    .line 42
    iput v3, v0, Lcom/media/common/ui/widget/SeekBarView;->mWidth:F

    const/4 v4, 0x0

    .line 46
    iput v4, v0, Lcom/media/common/ui/widget/SeekBarView;->minProgress:I

    const/16 v5, 0x64

    .line 50
    iput v5, v0, Lcom/media/common/ui/widget/SeekBarView;->maxProgress:I

    const/high16 v6, -0x1000000

    .line 54
    iput v6, v0, Lcom/media/common/ui/widget/SeekBarView;->progressBackColor:I

    const/high16 v7, 0x41200000    # 10.0f

    .line 59
    iput v7, v0, Lcom/media/common/ui/widget/SeekBarView;->progressBackHeight:F

    const/4 v8, -0x1

    .line 63
    iput v8, v0, Lcom/media/common/ui/widget/SeekBarView;->progressFrameColor:I

    const/high16 v9, 0x40400000    # 3.0f

    .line 68
    iput v9, v0, Lcom/media/common/ui/widget/SeekBarView;->progressFrameHeight:F

    const v10, -0xff0100

    .line 72
    iput v10, v0, Lcom/media/common/ui/widget/SeekBarView;->progressColor:I

    const/high16 v10, 0x41a00000    # 20.0f

    .line 77
    iput v10, v0, Lcom/media/common/ui/widget/SeekBarView;->progressHeight:F

    const/high16 v10, -0x10000

    .line 81
    iput v10, v0, Lcom/media/common/ui/widget/SeekBarView;->progressMinusColor:I

    const/16 v11, 0x32

    .line 86
    iput v11, v0, Lcom/media/common/ui/widget/SeekBarView;->progress:I

    const/high16 v12, 0x41600000    # 14.0f

    .line 90
    iput v12, v0, Lcom/media/common/ui/widget/SeekBarView;->mThumbNormalRadius:F

    const/high16 v13, 0x41c00000    # 24.0f

    .line 94
    iput v13, v0, Lcom/media/common/ui/widget/SeekBarView;->mThumbPressedRadius:F

    .line 98
    iput v2, v0, Lcom/media/common/ui/widget/SeekBarView;->mThumbColor:I

    const/high16 v14, 0x3f800000    # 1.0f

    .line 100
    iput v14, v0, Lcom/media/common/ui/widget/SeekBarView;->mTextLocation:F

    const/high16 v14, 0x42200000    # 40.0f

    .line 104
    iput v14, v0, Lcom/media/common/ui/widget/SeekBarView;->mTextSize:F

    .line 108
    iput v8, v0, Lcom/media/common/ui/widget/SeekBarView;->mTextColor:I

    const v15, 0x7dd2d3d4

    .line 113
    iput v15, v0, Lcom/media/common/ui/widget/SeekBarView;->mTextBackColor:I

    .line 118
    iput v7, v0, Lcom/media/common/ui/widget/SeekBarView;->mTextBackRadius:F

    .line 122
    iput-boolean v4, v0, Lcom/media/common/ui/widget/SeekBarView;->mIsCenterState:Z

    const/4 v15, 0x1

    .line 126
    iput-boolean v15, v0, Lcom/media/common/ui/widget/SeekBarView;->onlyChangeProgressByThumb:Z

    .line 127
    iget v14, v0, Lcom/media/common/ui/widget/SeekBarView;->mThumbNormalRadius:F

    iput v14, v0, Lcom/media/common/ui/widget/SeekBarView;->mThumbRadius:F

    .line 129
    iput-boolean v4, v0, Lcom/media/common/ui/widget/SeekBarView;->isTouchLegal:Z

    .line 132
    iput v2, v0, Lcom/media/common/ui/widget/SeekBarView;->mThumbDrawColor:I

    .line 148
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, v0, Lcom/media/common/ui/widget/SeekBarView;->paint:Landroid/graphics/Paint;

    .line 149
    iget-object v2, v0, Lcom/media/common/ui/widget/SeekBarView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2, v15}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    if-eqz v1, :cond_0

    .line 152
    invoke-virtual/range {p0 .. p0}, Lcom/media/common/ui/widget/SeekBarView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v14, Lcom/media/common/ui/widget/R$styleable;->CenterSeekBar:[I

    invoke-virtual {v2, v1, v14}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 153
    sget v2, Lcom/media/common/ui/widget/R$styleable;->CenterSeekBar_maxProgress:I

    invoke-virtual {v1, v2, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, v0, Lcom/media/common/ui/widget/SeekBarView;->maxProgress:I

    .line 154
    sget v2, Lcom/media/common/ui/widget/R$styleable;->CenterSeekBar_minProgress:I

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, v0, Lcom/media/common/ui/widget/SeekBarView;->minProgress:I

    .line 155
    sget v2, Lcom/media/common/ui/widget/R$styleable;->CenterSeekBar_width:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, v0, Lcom/media/common/ui/widget/SeekBarView;->mWidth:F

    .line 156
    sget v2, Lcom/media/common/ui/widget/R$styleable;->CenterSeekBar_centerState:I

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, v0, Lcom/media/common/ui/widget/SeekBarView;->mIsCenterState:Z

    .line 157
    sget v2, Lcom/media/common/ui/widget/R$styleable;->CenterSeekBar_backColor:I

    invoke-virtual {v1, v2, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, v0, Lcom/media/common/ui/widget/SeekBarView;->progressBackColor:I

    .line 158
    sget v2, Lcom/media/common/ui/widget/R$styleable;->CenterSeekBar_backHeight:I

    invoke-virtual {v1, v2, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, v0, Lcom/media/common/ui/widget/SeekBarView;->progressBackHeight:F

    .line 159
    sget v2, Lcom/media/common/ui/widget/R$styleable;->CenterSeekBar_backFrameColor:I

    invoke-virtual {v1, v2, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, v0, Lcom/media/common/ui/widget/SeekBarView;->progressFrameColor:I

    .line 160
    sget v2, Lcom/media/common/ui/widget/R$styleable;->CenterSeekBar_backFrameSize:I

    invoke-virtual {v1, v2, v9}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, v0, Lcom/media/common/ui/widget/SeekBarView;->progressFrameHeight:F

    .line 162
    sget v2, Lcom/media/common/ui/widget/R$styleable;->CenterSeekBar_progressHeight:I

    iget v3, v0, Lcom/media/common/ui/widget/SeekBarView;->progressBackHeight:F

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, v0, Lcom/media/common/ui/widget/SeekBarView;->progressHeight:F

    .line 163
    sget v2, Lcom/media/common/ui/widget/R$styleable;->CenterSeekBar_progressMinusColor:I

    invoke-virtual {v1, v2, v10}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, v0, Lcom/media/common/ui/widget/SeekBarView;->progressMinusColor:I

    .line 164
    sget v2, Lcom/media/common/ui/widget/R$styleable;->CenterSeekBar_progress:I

    invoke-virtual {v1, v2, v11}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, v0, Lcom/media/common/ui/widget/SeekBarView;->progress:I

    .line 165
    sget v2, Lcom/media/common/ui/widget/R$styleable;->CenterSeekBar_thumbNormalRadius:I

    invoke-virtual {v1, v2, v12}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, v0, Lcom/media/common/ui/widget/SeekBarView;->mThumbNormalRadius:F

    .line 166
    sget v2, Lcom/media/common/ui/widget/R$styleable;->CenterSeekBar_thumbPressRadius:I

    invoke-virtual {v1, v2, v13}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, v0, Lcom/media/common/ui/widget/SeekBarView;->mThumbPressedRadius:F

    .line 167
    sget v2, Lcom/media/common/ui/widget/R$styleable;->CenterSeekBar_thumbColor:I

    const v3, -0xffff01

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, v0, Lcom/media/common/ui/widget/SeekBarView;->mThumbColor:I

    .line 168
    sget v2, Lcom/media/common/ui/widget/R$styleable;->CenterSeekBar_progressColor:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, v0, Lcom/media/common/ui/widget/SeekBarView;->progressColor:I

    .line 169
    sget v2, Lcom/media/common/ui/widget/R$styleable;->CenterSeekBar_progressHeightColor:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v21

    .line 171
    new-instance v2, Landroid/graphics/LinearGradient;

    const/high16 v17, 0x42700000    # 60.0f

    const/16 v18, 0x0

    const/high16 v19, 0x42be0000    # 95.0f

    const/high16 v20, 0x42c80000    # 100.0f

    iget v3, v0, Lcom/media/common/ui/widget/SeekBarView;->progressColor:I

    sget-object v23, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    move-object/from16 v16, v2

    move/from16 v22, v3

    invoke-direct/range {v16 .. v23}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v2, v0, Lcom/media/common/ui/widget/SeekBarView;->mProgressLinearGradient:Landroid/graphics/LinearGradient;

    .line 174
    sget v2, Lcom/media/common/ui/widget/R$styleable;->CenterSeekBar_textLocation:I

    invoke-virtual {v1, v2, v15}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    int-to-float v2, v2

    iput v2, v0, Lcom/media/common/ui/widget/SeekBarView;->mTextLocation:F

    .line 175
    sget v2, Lcom/media/common/ui/widget/R$styleable;->CenterSeekBar_textColor:I

    invoke-virtual {v1, v2, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, v0, Lcom/media/common/ui/widget/SeekBarView;->mTextColor:I

    .line 176
    sget v2, Lcom/media/common/ui/widget/R$styleable;->CenterSeekBar_textSize:I

    const/high16 v3, 0x42200000    # 40.0f

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, v0, Lcom/media/common/ui/widget/SeekBarView;->mTextSize:F

    .line 177
    sget v2, Lcom/media/common/ui/widget/R$styleable;->CenterSeekBar_textBackColor:I

    const v3, 0x7dd2d3d4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, v0, Lcom/media/common/ui/widget/SeekBarView;->mTextBackColor:I

    .line 178
    sget v2, Lcom/media/common/ui/widget/R$styleable;->CenterSeekBar_textBackRadius:I

    invoke-virtual {v1, v2, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, v0, Lcom/media/common/ui/widget/SeekBarView;->mTextBackRadius:F

    .line 179
    sget v2, Lcom/media/common/ui/widget/R$styleable;->CenterSeekBar_onlyChangedProgressByThumb:I

    invoke-virtual {v1, v2, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, v0, Lcom/media/common/ui/widget/SeekBarView;->onlyChangeProgressByThumb:Z

    .line 180
    iget v2, v0, Lcom/media/common/ui/widget/SeekBarView;->mThumbNormalRadius:F

    iput v2, v0, Lcom/media/common/ui/widget/SeekBarView;->mThumbRadius:F

    .line 181
    iget v2, v0, Lcom/media/common/ui/widget/SeekBarView;->mThumbColor:I

    iput v2, v0, Lcom/media/common/ui/widget/SeekBarView;->mThumbDrawColor:I

    .line 182
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 185
    :cond_0
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, v0, Lcom/media/common/ui/widget/SeekBarView;->mProgressPaint:Landroid/graphics/Paint;

    .line 186
    iget-object v1, v0, Lcom/media/common/ui/widget/SeekBarView;->mProgressPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v15}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 187
    iget-object v1, v0, Lcom/media/common/ui/widget/SeekBarView;->mProgressPaint:Landroid/graphics/Paint;

    iget-object v2, v0, Lcom/media/common/ui/widget/SeekBarView;->mProgressLinearGradient:Landroid/graphics/LinearGradient;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 188
    invoke-direct {v0, v4}, Lcom/media/common/ui/widget/SeekBarView;->getTargetAnimator(Z)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, v0, Lcom/media/common/ui/widget/SeekBarView;->mAnimator:Landroid/animation/ObjectAnimator;

    .line 189
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, v0, Lcom/media/common/ui/widget/SeekBarView;->mTextRectF:Landroid/graphics/RectF;

    .line 190
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, v0, Lcom/media/common/ui/widget/SeekBarView;->mBackRectF:Landroid/graphics/RectF;

    .line 191
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, v0, Lcom/media/common/ui/widget/SeekBarView;->mProgressRectF:Landroid/graphics/RectF;

    return-void
.end method

.method private checkTouchingTarget(Landroid/view/MotionEvent;)V
    .locals 0

    .line 477
    invoke-direct {p0, p1}, Lcom/media/common/ui/widget/SeekBarView;->isTouchingTarget(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 478
    iget-object p1, p0, Lcom/media/common/ui/widget/SeekBarView;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->cancel()V

    const/4 p1, 0x1

    .line 479
    invoke-direct {p0, p1}, Lcom/media/common/ui/widget/SeekBarView;->getTargetAnimator(Z)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/media/common/ui/widget/SeekBarView;->mAnimator:Landroid/animation/ObjectAnimator;

    .line 480
    iget-object p0, p0, Lcom/media/common/ui/widget/SeekBarView;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_0
    return-void
.end method

.method private clamp(I)F
    .locals 5

    .line 551
    iget-boolean v0, p0, Lcom/media/common/ui/widget/SeekBarView;->mIsCenterState:Z

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz v0, :cond_4

    .line 552
    invoke-virtual {p0}, Lcom/media/common/ui/widget/SeekBarView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v2, v0

    .line 553
    iget v3, p0, Lcom/media/common/ui/widget/SeekBarView;->mWidth:F

    div-float/2addr v3, v1

    sub-float v3, v2, v3

    .line 554
    iget v4, p0, Lcom/media/common/ui/widget/SeekBarView;->mWidth:F

    div-float/2addr v4, v1

    add-float/2addr v2, v4

    if-le p1, v0, :cond_1

    int-to-float v3, p1

    cmpl-float v2, v3, v2

    if-ltz v2, :cond_0

    .line 557
    iget p0, p0, Lcom/media/common/ui/widget/SeekBarView;->maxProgress:I

    int-to-float p0, p0

    return p0

    .line 559
    :cond_0
    iget v2, p0, Lcom/media/common/ui/widget/SeekBarView;->maxProgress:I

    iget v3, p0, Lcom/media/common/ui/widget/SeekBarView;->minProgress:I

    sub-int/2addr v2, v3

    sub-int/2addr p1, v0

    mul-int/2addr v2, p1

    int-to-float p1, v2

    iget p0, p0, Lcom/media/common/ui/widget/SeekBarView;->mWidth:F

    div-float/2addr p0, v1

    div-float/2addr p1, p0

    float-to-int p0, p1

    int-to-float p0, p0

    return p0

    :cond_1
    if-ge p1, v0, :cond_3

    int-to-float v2, p1

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_2

    .line 563
    iget p0, p0, Lcom/media/common/ui/widget/SeekBarView;->maxProgress:I

    neg-int p0, p0

    int-to-float p0, p0

    return p0

    .line 565
    :cond_2
    iget v2, p0, Lcom/media/common/ui/widget/SeekBarView;->maxProgress:I

    iget v3, p0, Lcom/media/common/ui/widget/SeekBarView;->minProgress:I

    sub-int/2addr v2, v3

    sub-int/2addr p1, v0

    mul-int/2addr v2, p1

    int-to-float p1, v2

    iget p0, p0, Lcom/media/common/ui/widget/SeekBarView;->mWidth:F

    div-float/2addr p0, v1

    div-float/2addr p1, p0

    float-to-int p0, p1

    int-to-float p0, p0

    return p0

    .line 568
    :cond_3
    iget p0, p0, Lcom/media/common/ui/widget/SeekBarView;->minProgress:I

    int-to-float p0, p0

    return p0

    .line 571
    :cond_4
    invoke-virtual {p0}, Lcom/media/common/ui/widget/SeekBarView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    .line 572
    iget v2, p0, Lcom/media/common/ui/widget/SeekBarView;->mWidth:F

    div-float/2addr v2, v1

    sub-float v2, v0, v2

    .line 573
    iget v3, p0, Lcom/media/common/ui/widget/SeekBarView;->mWidth:F

    div-float/2addr v3, v1

    add-float/2addr v0, v3

    int-to-float p1, p1

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_5

    .line 575
    iget p0, p0, Lcom/media/common/ui/widget/SeekBarView;->maxProgress:I

    int-to-float p0, p0

    return p0

    :cond_5
    cmpg-float v0, p1, v2

    if-gtz v0, :cond_6

    .line 577
    iget p0, p0, Lcom/media/common/ui/widget/SeekBarView;->minProgress:I

    int-to-float p0, p0

    return p0

    .line 579
    :cond_6
    iget v0, p0, Lcom/media/common/ui/widget/SeekBarView;->maxProgress:I

    iget v1, p0, Lcom/media/common/ui/widget/SeekBarView;->minProgress:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    sub-float/2addr p1, v2

    mul-float/2addr v0, p1

    iget p0, p0, Lcom/media/common/ui/widget/SeekBarView;->mWidth:F

    div-float/2addr v0, p0

    return v0
.end method

.method private getTargetAnimator(Z)Landroid/animation/ObjectAnimator;
    .locals 4

    const-string v0, "mThumbRadius"

    const/4 v1, 0x2

    .line 515
    new-array v1, v1, [F

    iget v2, p0, Lcom/media/common/ui/widget/SeekBarView;->mThumbRadius:F

    const/4 v3, 0x0

    aput v2, v1, v3

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/media/common/ui/widget/SeekBarView;->mThumbPressedRadius:F

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/media/common/ui/widget/SeekBarView;->mThumbNormalRadius:F

    :goto_0
    const/4 v2, 0x1

    aput p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 519
    new-instance v0, Lcom/media/common/ui/widget/SeekBarView$1;

    invoke-direct {v0, p0}, Lcom/media/common/ui/widget/SeekBarView$1;-><init>(Lcom/media/common/ui/widget/SeekBarView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 526
    new-instance v0, Lcom/media/common/ui/widget/SeekBarView$2;

    invoke-direct {v0, p0, p1}, Lcom/media/common/ui/widget/SeekBarView$2;-><init>(Lcom/media/common/ui/widget/SeekBarView;Landroid/animation/ObjectAnimator;)V

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 533
    new-instance p0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {p0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {p1, p0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object p1
.end method

.method private isTouchingTarget(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 493
    iget-boolean v0, p0, Lcom/media/common/ui/widget/SeekBarView;->onlyChangeProgressByThumb:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 494
    iput-boolean v1, p0, Lcom/media/common/ui/widget/SeekBarView;->isTouchLegal:Z

    return v1

    .line 498
    :cond_0
    iget v0, p0, Lcom/media/common/ui/widget/SeekBarView;->progressPosition:F

    .line 499
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    const/high16 v3, 0x42200000    # 40.0f

    sub-float v4, v0, v3

    cmpl-float v2, v2, v4

    if-lez v2, :cond_1

    .line 500
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    add-float/2addr v3, v0

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/media/common/ui/widget/SeekBarView;->isTouchLegal:Z

    .line 501
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "slack:\nisTouchLegal "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/media/common/ui/widget/SeekBarView;->isTouchLegal:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 501
    invoke-static {p1}, Lcom/media/common/util/DebugLog;->i(Ljava/lang/String;)V

    .line 503
    iget-boolean p0, p0, Lcom/media/common/ui/widget/SeekBarView;->isTouchLegal:Z

    return p0
.end method


# virtual methods
.method public getMaxProgress()I
    .locals 0

    .line 236
    iget p0, p0, Lcom/media/common/ui/widget/SeekBarView;->maxProgress:I

    return p0
.end method

.method public getProgress()I
    .locals 0

    .line 274
    iget p0, p0, Lcom/media/common/ui/widget/SeekBarView;->progress:I

    return p0
.end method

.method public getmWidth()F
    .locals 0

    .line 232
    iget p0, p0, Lcom/media/common/ui/widget/SeekBarView;->mWidth:F

    return p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 298
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 300
    invoke-virtual {p0}, Lcom/media/common/ui/widget/SeekBarView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 301
    invoke-virtual {p0}, Lcom/media/common/ui/widget/SeekBarView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v0, v0

    .line 302
    iget v2, p0, Lcom/media/common/ui/widget/SeekBarView;->mWidth:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float v2, v0, v2

    .line 305
    iget-object v4, p0, Lcom/media/common/ui/widget/SeekBarView;->paint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/media/common/ui/widget/SeekBarView;->progressBackColor:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 306
    iget-object v4, p0, Lcom/media/common/ui/widget/SeekBarView;->paint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/media/common/ui/widget/SeekBarView;->progressBackHeight:F

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 307
    iget-object v4, p0, Lcom/media/common/ui/widget/SeekBarView;->paint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 308
    iget-object v4, p0, Lcom/media/common/ui/widget/SeekBarView;->mBackRectF:Landroid/graphics/RectF;

    iput v2, v4, Landroid/graphics/RectF;->left:F

    .line 309
    iget-object v4, p0, Lcom/media/common/ui/widget/SeekBarView;->mBackRectF:Landroid/graphics/RectF;

    int-to-float v1, v1

    iget v5, p0, Lcom/media/common/ui/widget/SeekBarView;->progressBackHeight:F

    sub-float v5, v1, v5

    iput v5, v4, Landroid/graphics/RectF;->top:F

    .line 310
    iget-object v4, p0, Lcom/media/common/ui/widget/SeekBarView;->mBackRectF:Landroid/graphics/RectF;

    iget v5, p0, Lcom/media/common/ui/widget/SeekBarView;->mWidth:F

    add-float/2addr v5, v2

    iput v5, v4, Landroid/graphics/RectF;->right:F

    .line 311
    iget-object v4, p0, Lcom/media/common/ui/widget/SeekBarView;->mBackRectF:Landroid/graphics/RectF;

    iput v1, v4, Landroid/graphics/RectF;->bottom:F

    .line 312
    iget-object v4, p0, Lcom/media/common/ui/widget/SeekBarView;->mBackRectF:Landroid/graphics/RectF;

    iget v5, p0, Lcom/media/common/ui/widget/SeekBarView;->mTextBackRadius:F

    iget v6, p0, Lcom/media/common/ui/widget/SeekBarView;->mTextBackRadius:F

    iget-object v7, p0, Lcom/media/common/ui/widget/SeekBarView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 314
    iget v4, p0, Lcom/media/common/ui/widget/SeekBarView;->progressFrameHeight:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    .line 315
    iget-object v4, p0, Lcom/media/common/ui/widget/SeekBarView;->paint:Landroid/graphics/Paint;

    iget v6, p0, Lcom/media/common/ui/widget/SeekBarView;->progressFrameColor:I

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 316
    iget-object v4, p0, Lcom/media/common/ui/widget/SeekBarView;->paint:Landroid/graphics/Paint;

    iget v6, p0, Lcom/media/common/ui/widget/SeekBarView;->progressFrameHeight:F

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 317
    iget-object v4, p0, Lcom/media/common/ui/widget/SeekBarView;->paint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 318
    iget-object v4, p0, Lcom/media/common/ui/widget/SeekBarView;->mBackRectF:Landroid/graphics/RectF;

    iget v6, p0, Lcom/media/common/ui/widget/SeekBarView;->mTextBackRadius:F

    iget v7, p0, Lcom/media/common/ui/widget/SeekBarView;->mTextBackRadius:F

    iget-object v8, p0, Lcom/media/common/ui/widget/SeekBarView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v6, v7, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 323
    :cond_0
    iget-object v4, p0, Lcom/media/common/ui/widget/SeekBarView;->paint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 324
    iget-object v4, p0, Lcom/media/common/ui/widget/SeekBarView;->mProgressPaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 328
    iget-object v4, p0, Lcom/media/common/ui/widget/SeekBarView;->paint:Landroid/graphics/Paint;

    iget v6, p0, Lcom/media/common/ui/widget/SeekBarView;->progressHeight:F

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 329
    iget-object v4, p0, Lcom/media/common/ui/widget/SeekBarView;->mProgressPaint:Landroid/graphics/Paint;

    iget v6, p0, Lcom/media/common/ui/widget/SeekBarView;->progressHeight:F

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 332
    iget-boolean v4, p0, Lcom/media/common/ui/widget/SeekBarView;->mIsCenterState:Z

    if-eqz v4, :cond_1

    .line 337
    iget v2, p0, Lcom/media/common/ui/widget/SeekBarView;->progress:I

    int-to-float v2, v2

    iget v4, p0, Lcom/media/common/ui/widget/SeekBarView;->mWidth:F

    div-float/2addr v4, v3

    mul-float/2addr v2, v4

    iget v4, p0, Lcom/media/common/ui/widget/SeekBarView;->maxProgress:I

    iget v6, p0, Lcom/media/common/ui/widget/SeekBarView;->minProgress:I

    sub-int/2addr v4, v6

    int-to-float v4, v4

    div-float/2addr v2, v4

    float-to-int v2, v2

    int-to-float v2, v2

    add-float/2addr v2, v0

    iput v2, p0, Lcom/media/common/ui/widget/SeekBarView;->progressPosition:F

    goto :goto_0

    .line 339
    :cond_1
    iget v0, p0, Lcom/media/common/ui/widget/SeekBarView;->progress:I

    int-to-float v0, v0

    iget v4, p0, Lcom/media/common/ui/widget/SeekBarView;->mWidth:F

    mul-float/2addr v0, v4

    iget v4, p0, Lcom/media/common/ui/widget/SeekBarView;->maxProgress:I

    iget v6, p0, Lcom/media/common/ui/widget/SeekBarView;->minProgress:I

    sub-int/2addr v4, v6

    int-to-float v4, v4

    div-float/2addr v0, v4

    add-float/2addr v0, v2

    iput v0, p0, Lcom/media/common/ui/widget/SeekBarView;->progressPosition:F

    move v0, v2

    .line 341
    :goto_0
    iget-object v2, p0, Lcom/media/common/ui/widget/SeekBarView;->mProgressRectF:Landroid/graphics/RectF;

    iget v4, p0, Lcom/media/common/ui/widget/SeekBarView;->progressBackHeight:F

    sub-float v4, v1, v4

    iput v4, v2, Landroid/graphics/RectF;->top:F

    .line 342
    iget-object v2, p0, Lcom/media/common/ui/widget/SeekBarView;->mProgressRectF:Landroid/graphics/RectF;

    iput v1, v2, Landroid/graphics/RectF;->bottom:F

    .line 343
    iget v2, p0, Lcom/media/common/ui/widget/SeekBarView;->progress:I

    if-lez v2, :cond_2

    .line 344
    iget-object v2, p0, Lcom/media/common/ui/widget/SeekBarView;->mProgressRectF:Landroid/graphics/RectF;

    iput v0, v2, Landroid/graphics/RectF;->left:F

    .line 345
    iget-object v0, p0, Lcom/media/common/ui/widget/SeekBarView;->mProgressRectF:Landroid/graphics/RectF;

    iget v2, p0, Lcom/media/common/ui/widget/SeekBarView;->progressPosition:F

    iput v2, v0, Landroid/graphics/RectF;->right:F

    goto :goto_1

    .line 347
    :cond_2
    iget-object v2, p0, Lcom/media/common/ui/widget/SeekBarView;->mProgressRectF:Landroid/graphics/RectF;

    iget v4, p0, Lcom/media/common/ui/widget/SeekBarView;->progressPosition:F

    iput v4, v2, Landroid/graphics/RectF;->left:F

    .line 348
    iget-object v2, p0, Lcom/media/common/ui/widget/SeekBarView;->mProgressRectF:Landroid/graphics/RectF;

    iput v0, v2, Landroid/graphics/RectF;->right:F

    .line 351
    :goto_1
    iget-boolean v0, p0, Lcom/media/common/ui/widget/SeekBarView;->mIsCenterState:Z

    if-nez v0, :cond_3

    .line 352
    iget-object v0, p0, Lcom/media/common/ui/widget/SeekBarView;->mProgressRectF:Landroid/graphics/RectF;

    iget v2, p0, Lcom/media/common/ui/widget/SeekBarView;->mTextBackRadius:F

    iget v4, p0, Lcom/media/common/ui/widget/SeekBarView;->mTextBackRadius:F

    iget-object v5, p0, Lcom/media/common/ui/widget/SeekBarView;->mProgressPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v4, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 354
    :cond_3
    iget-object v0, p0, Lcom/media/common/ui/widget/SeekBarView;->mProgressRectF:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/media/common/ui/widget/SeekBarView;->mProgressPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v5, v5, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 359
    :goto_2
    iget-object v0, p0, Lcom/media/common/ui/widget/SeekBarView;->paint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/media/common/ui/widget/SeekBarView;->mThumbDrawColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 360
    iget v0, p0, Lcom/media/common/ui/widget/SeekBarView;->progressPosition:F

    iget v2, p0, Lcom/media/common/ui/widget/SeekBarView;->progressBackHeight:F

    div-float/2addr v2, v3

    sub-float v2, v1, v2

    iget v4, p0, Lcom/media/common/ui/widget/SeekBarView;->mThumbRadius:F

    iget-object v5, p0, Lcom/media/common/ui/widget/SeekBarView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    const/high16 v0, 0x437f0000    # 255.0f

    .line 367
    iget v2, p0, Lcom/media/common/ui/widget/SeekBarView;->mThumbRadius:F

    iget v4, p0, Lcom/media/common/ui/widget/SeekBarView;->mThumbNormalRadius:F

    sub-float/2addr v2, v4

    mul-float/2addr v2, v0

    iget v0, p0, Lcom/media/common/ui/widget/SeekBarView;->mThumbPressedRadius:F

    iget v4, p0, Lcom/media/common/ui/widget/SeekBarView;->mThumbNormalRadius:F

    sub-float/2addr v0, v4

    div-float/2addr v2, v0

    float-to-int v0, v2

    .line 371
    iget v2, p0, Lcom/media/common/ui/widget/SeekBarView;->mTextLocation:F

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v4

    if-nez v2, :cond_4

    .line 372
    iget-object v2, p0, Lcom/media/common/ui/widget/SeekBarView;->paint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/media/common/ui/widget/SeekBarView;->mTextBackColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 373
    iget-object v2, p0, Lcom/media/common/ui/widget/SeekBarView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 374
    iget-object v2, p0, Lcom/media/common/ui/widget/SeekBarView;->mTextRectF:Landroid/graphics/RectF;

    iget v3, p0, Lcom/media/common/ui/widget/SeekBarView;->mThumbPressedRadius:F

    sub-float/2addr v1, v3

    const/high16 v3, 0x41200000    # 10.0f

    sub-float/2addr v1, v3

    iput v1, v2, Landroid/graphics/RectF;->bottom:F

    .line 375
    iget-object v1, p0, Lcom/media/common/ui/widget/SeekBarView;->mTextRectF:Landroid/graphics/RectF;

    iget v2, p0, Lcom/media/common/ui/widget/SeekBarView;->progressPosition:F

    iget v4, p0, Lcom/media/common/ui/widget/SeekBarView;->mTextSize:F

    add-float/2addr v2, v4

    add-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/RectF;->right:F

    .line 376
    iget-object v1, p0, Lcom/media/common/ui/widget/SeekBarView;->mTextRectF:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/media/common/ui/widget/SeekBarView;->mTextRectF:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    iget v4, p0, Lcom/media/common/ui/widget/SeekBarView;->mTextSize:F

    sub-float/2addr v2, v4

    const/high16 v4, 0x41f00000    # 30.0f

    sub-float/2addr v2, v4

    iput v2, v1, Landroid/graphics/RectF;->top:F

    .line 377
    iget-object v1, p0, Lcom/media/common/ui/widget/SeekBarView;->mTextRectF:Landroid/graphics/RectF;

    iget v2, p0, Lcom/media/common/ui/widget/SeekBarView;->progressPosition:F

    iget v4, p0, Lcom/media/common/ui/widget/SeekBarView;->mTextSize:F

    sub-float/2addr v2, v4

    sub-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/RectF;->left:F

    .line 378
    iget-object v1, p0, Lcom/media/common/ui/widget/SeekBarView;->mTextRectF:Landroid/graphics/RectF;

    iget v2, p0, Lcom/media/common/ui/widget/SeekBarView;->mTextBackRadius:F

    iget v3, p0, Lcom/media/common/ui/widget/SeekBarView;->mTextBackRadius:F

    iget-object v4, p0, Lcom/media/common/ui/widget/SeekBarView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 379
    iget-object v1, p0, Lcom/media/common/ui/widget/SeekBarView;->paint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/media/common/ui/widget/SeekBarView;->mTextSize:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 380
    iget-object v1, p0, Lcom/media/common/ui/widget/SeekBarView;->paint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/media/common/ui/widget/SeekBarView;->mTextColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 381
    iget-object v1, p0, Lcom/media/common/ui/widget/SeekBarView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 383
    iget-object v0, p0, Lcom/media/common/ui/widget/SeekBarView;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 384
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/media/common/ui/widget/SeekBarView;->progress:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/media/common/ui/widget/SeekBarView;->progressPosition:F

    iget-object v2, p0, Lcom/media/common/ui/widget/SeekBarView;->mTextRectF:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    const/high16 v3, 0x41a00000    # 20.0f

    sub-float/2addr v2, v3

    iget-object p0, p0, Lcom/media/common/ui/widget/SeekBarView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_3

    .line 385
    :cond_4
    iget v2, p0, Lcom/media/common/ui/widget/SeekBarView;->mTextLocation:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_5

    .line 387
    iget-object v2, p0, Lcom/media/common/ui/widget/SeekBarView;->paint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/media/common/ui/widget/SeekBarView;->mTextSize:F

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 388
    iget-object v2, p0, Lcom/media/common/ui/widget/SeekBarView;->paint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/media/common/ui/widget/SeekBarView;->mTextColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 389
    iget-object v2, p0, Lcom/media/common/ui/widget/SeekBarView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 390
    iget-object v0, p0, Lcom/media/common/ui/widget/SeekBarView;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 391
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/media/common/ui/widget/SeekBarView;->progress:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "%"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Lcom/media/common/ui/widget/SeekBarView;->progressPosition:F

    iget-object p0, p0, Lcom/media/common/ui/widget/SeekBarView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_5
    :goto_3
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 402
    invoke-virtual {p0}, Lcom/media/common/ui/widget/SeekBarView;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 405
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "seekBar action="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ,isTouchLegal="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/media/common/ui/widget/SeekBarView;->isTouchLegal:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 407
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    .line 452
    iget-boolean v0, p0, Lcom/media/common/ui/widget/SeekBarView;->isTouchLegal:Z

    if-eqz v0, :cond_4

    .line 454
    invoke-virtual {p0}, Lcom/media/common/ui/widget/SeekBarView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 455
    iget-object v0, p0, Lcom/media/common/ui/widget/SeekBarView;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 456
    invoke-direct {p0, v1}, Lcom/media/common/ui/widget/SeekBarView;->getTargetAnimator(Z)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/media/common/ui/widget/SeekBarView;->mAnimator:Landroid/animation/ObjectAnimator;

    .line 457
    iget-object v0, p0, Lcom/media/common/ui/widget/SeekBarView;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 463
    iget-object v0, p0, Lcom/media/common/ui/widget/SeekBarView;->onSeekBarCallbackListener:Lcom/media/common/ui/widget/SeekBarView$OnSeekBarCallbackListener;

    if-eqz v0, :cond_4

    .line 464
    iget-object v0, p0, Lcom/media/common/ui/widget/SeekBarView;->onSeekBarCallbackListener:Lcom/media/common/ui/widget/SeekBarView$OnSeekBarCallbackListener;

    iget v1, p0, Lcom/media/common/ui/widget/SeekBarView;->progress:I

    invoke-virtual {v0, v1}, Lcom/media/common/ui/widget/SeekBarView$OnSeekBarCallbackListener;->onFinished(I)V

    goto :goto_0

    .line 421
    :cond_1
    iget-boolean v0, p0, Lcom/media/common/ui/widget/SeekBarView;->isTouchLegal:Z

    if-eqz v0, :cond_4

    .line 423
    invoke-virtual {p0}, Lcom/media/common/ui/widget/SeekBarView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 424
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/media/common/ui/widget/SeekBarView;->clamp(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/media/common/ui/widget/SeekBarView;->progress:I

    .line 439
    invoke-virtual {p0}, Lcom/media/common/ui/widget/SeekBarView;->invalidate()V

    .line 445
    iget-object v0, p0, Lcom/media/common/ui/widget/SeekBarView;->onSeekBarCallbackListener:Lcom/media/common/ui/widget/SeekBarView$OnSeekBarCallbackListener;

    if-eqz v0, :cond_4

    .line 446
    iget-object v0, p0, Lcom/media/common/ui/widget/SeekBarView;->onSeekBarCallbackListener:Lcom/media/common/ui/widget/SeekBarView$OnSeekBarCallbackListener;

    iget v1, p0, Lcom/media/common/ui/widget/SeekBarView;->progress:I

    invoke-virtual {v0, v1}, Lcom/media/common/ui/widget/SeekBarView$OnSeekBarCallbackListener;->onProgress(I)V

    goto :goto_0

    .line 409
    :cond_2
    invoke-direct {p0, p1}, Lcom/media/common/ui/widget/SeekBarView;->checkTouchingTarget(Landroid/view/MotionEvent;)V

    .line 411
    iget-object v0, p0, Lcom/media/common/ui/widget/SeekBarView;->onSeekBarCallbackListener:Lcom/media/common/ui/widget/SeekBarView$OnSeekBarCallbackListener;

    if-eqz v0, :cond_3

    .line 412
    iget-object v0, p0, Lcom/media/common/ui/widget/SeekBarView;->onSeekBarCallbackListener:Lcom/media/common/ui/widget/SeekBarView$OnSeekBarCallbackListener;

    invoke-virtual {v0}, Lcom/media/common/ui/widget/SeekBarView$OnSeekBarCallbackListener;->onStarted()V

    .line 414
    :cond_3
    iget-boolean v0, p0, Lcom/media/common/ui/widget/SeekBarView;->onlyChangeProgressByThumb:Z

    if-nez v0, :cond_4

    .line 416
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/media/common/ui/widget/SeekBarView;->clamp(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/media/common/ui/widget/SeekBarView;->progress:I

    .line 417
    invoke-virtual {p0}, Lcom/media/common/ui/widget/SeekBarView;->invalidate()V

    .line 469
    :cond_4
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "seekBar action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " ,progress="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/media/common/ui/widget/SeekBarView;->progress:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    return v2
.end method

.method public setCenterModeEnable(Z)Lcom/media/common/ui/widget/SeekBarView;
    .locals 1

    .line 201
    iget-boolean v0, p0, Lcom/media/common/ui/widget/SeekBarView;->mIsCenterState:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 203
    iget v0, p0, Lcom/media/common/ui/widget/SeekBarView;->progress:I

    if-gez v0, :cond_0

    .line 204
    iget v0, p0, Lcom/media/common/ui/widget/SeekBarView;->progress:I

    neg-int v0, v0

    iput v0, p0, Lcom/media/common/ui/widget/SeekBarView;->progress:I

    .line 208
    :cond_0
    iput-boolean p1, p0, Lcom/media/common/ui/widget/SeekBarView;->mIsCenterState:Z

    .line 209
    invoke-virtual {p0}, Lcom/media/common/ui/widget/SeekBarView;->invalidate()V

    return-object p0
.end method

.method public setMThumbRadius(F)V
    .locals 0

    .line 539
    iput p1, p0, Lcom/media/common/ui/widget/SeekBarView;->mThumbRadius:F

    return-void
.end method

.method public setMaxProgress(I)Lcom/media/common/ui/widget/SeekBarView;
    .locals 0

    .line 241
    iput p1, p0, Lcom/media/common/ui/widget/SeekBarView;->maxProgress:I

    .line 243
    invoke-virtual {p0}, Lcom/media/common/ui/widget/SeekBarView;->invalidate()V

    return-object p0
.end method

.method public setMinProgress(I)Lcom/media/common/ui/widget/SeekBarView;
    .locals 0

    .line 250
    iput p1, p0, Lcom/media/common/ui/widget/SeekBarView;->minProgress:I

    .line 252
    invoke-virtual {p0}, Lcom/media/common/ui/widget/SeekBarView;->invalidate()V

    return-object p0
.end method

.method public setOnSeekBarCallbackListener(Lcom/media/common/ui/widget/SeekBarView$OnSeekBarCallbackListener;)V
    .locals 0

    .line 293
    iput-object p1, p0, Lcom/media/common/ui/widget/SeekBarView;->onSeekBarCallbackListener:Lcom/media/common/ui/widget/SeekBarView$OnSeekBarCallbackListener;

    return-void
.end method

.method public setProgress(I)Lcom/media/common/ui/widget/SeekBarView;
    .locals 2

    .line 214
    iget-boolean v0, p0, Lcom/media/common/ui/widget/SeekBarView;->mIsCenterState:Z

    if-eqz v0, :cond_1

    .line 215
    iget v0, p0, Lcom/media/common/ui/widget/SeekBarView;->maxProgress:I

    if-gt p1, v0, :cond_0

    iget v0, p0, Lcom/media/common/ui/widget/SeekBarView;->minProgress:I

    iget v1, p0, Lcom/media/common/ui/widget/SeekBarView;->maxProgress:I

    sub-int/2addr v0, v1

    if-lt p1, v0, :cond_0

    .line 216
    iput p1, p0, Lcom/media/common/ui/widget/SeekBarView;->progress:I

    goto :goto_0

    .line 218
    :cond_0
    iget p1, p0, Lcom/media/common/ui/widget/SeekBarView;->minProgress:I

    iput p1, p0, Lcom/media/common/ui/widget/SeekBarView;->progress:I

    goto :goto_0

    .line 221
    :cond_1
    iget v0, p0, Lcom/media/common/ui/widget/SeekBarView;->maxProgress:I

    if-gt p1, v0, :cond_2

    iget v0, p0, Lcom/media/common/ui/widget/SeekBarView;->minProgress:I

    if-lt p1, v0, :cond_2

    .line 222
    iput p1, p0, Lcom/media/common/ui/widget/SeekBarView;->progress:I

    goto :goto_0

    .line 224
    :cond_2
    iget p1, p0, Lcom/media/common/ui/widget/SeekBarView;->minProgress:I

    iput p1, p0, Lcom/media/common/ui/widget/SeekBarView;->progress:I

    .line 227
    :goto_0
    invoke-virtual {p0}, Lcom/media/common/ui/widget/SeekBarView;->invalidate()V

    return-object p0
.end method

.method public setProgressEnable(Z)Lcom/media/common/ui/widget/SeekBarView;
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 262
    invoke-virtual {p0, p1}, Lcom/media/common/ui/widget/SeekBarView;->setEnabled(Z)V

    .line 263
    iget p1, p0, Lcom/media/common/ui/widget/SeekBarView;->mThumbColor:I

    iput p1, p0, Lcom/media/common/ui/widget/SeekBarView;->mThumbDrawColor:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 265
    invoke-virtual {p0, p1}, Lcom/media/common/ui/widget/SeekBarView;->setEnabled(Z)V

    .line 266
    iput p1, p0, Lcom/media/common/ui/widget/SeekBarView;->progress:I

    const p1, -0x777778

    .line 267
    iput p1, p0, Lcom/media/common/ui/widget/SeekBarView;->mThumbDrawColor:I

    .line 269
    :goto_0
    invoke-virtual {p0}, Lcom/media/common/ui/widget/SeekBarView;->invalidate()V

    return-object p0
.end method
