.class public Lcom/yftech/car/widget/media/music/lyrics/LyricView;
.super Landroid/view/View;
.source "LyricView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/car/widget/media/music/lyrics/LyricView$OnLyricLoadingListener;,
        Lcom/yftech/car/widget/media/music/lyrics/LyricView$LoadLyricRunnable;
    }
.end annotation


# static fields
.field private static final AUTO_SCROLLER:I = 0x4

.field private static final TAG:Ljava/lang/String; = "LyricView"

.field private static final TEXT_ALIGN_CENTER:I = 0x1

.field private static final TEXT_ALIGN_LEFT:I = 0x0

.field private static final TEXT_ALIGN_RIGHT:I = 0x2

.field private static final UPDATE_TIME:I = 0x3


# instance fields
.field private isFling:Z

.field private isPlay:Z

.field private isPressing:Z

.field private isRightStart:Z

.field private mAddKrc:Z

.field private mAnimatorSpeed:I

.field private final mAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mCarMusicControlCallback:Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicControlCallback;

.field private mClickItemPlay:Z

.field private mCurrentLineIndex:I

.field private mDownX:F

.field private mDownY:F

.field private final mEmptyTextPaint:Landroid/text/TextPaint;

.field private final mHandler:Landroid/os/Handler;

.field private mHighlightOffset:F

.field private final mHighlightPaint:Landroid/text/TextPaint;

.field private final mHighlightPlayPaint:Landroid/text/TextPaint;

.field private mIsClick:Z

.field private mLastMotionY:F

.field private mLineSpace:I

.field private mLinearMax:I

.field private final mLoadLyricRunnable:Lcom/yftech/car/widget/media/music/lyrics/LyricView$LoadLyricRunnable;

.field private mLyric:Lcom/yftech/car/widget/media/music/lyrics/Lyric;

.field private mLyricForm:Lcom/yftech/car/widget/media/music/lyrics/LyricForm;

.field private mLyricLoading:Ljava/lang/String;

.field private final mLyricMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/text/DynamicLayout;",
            ">;"
        }
    .end annotation
.end field

.field private mLyricMessage:Ljava/lang/String;

.field private final mLyricPlayMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/text/DynamicLayout;",
            ">;"
        }
    .end annotation
.end field

.field private mLyricTextAlignment:Landroid/text/Layout$Alignment;

.field private final mMaxFlingVelocity:I

.field private final mMinFlingVelocity:I

.field private mNeedRevert:Z

.field private mNoLyric:Ljava/lang/String;

.field private mNoPlay:Ljava/lang/String;

.field private mOffsetY:F

.field private mOnLyricLoadingListener:Lcom/yftech/car/widget/media/music/lyrics/LyricView$OnLyricLoadingListener;

.field private final mOverScroller:Landroid/widget/OverScroller;

.field private mPlayTimeMillis:J

.field private mRect:Landroid/graphics/Rect;

.field private final mScaledTouchSlop:I

.field private mScrollToTouch:Z

.field private final mStaticLayoutHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/text/DynamicLayout;",
            ">;"
        }
    .end annotation
.end field

.field private final mTextPaint:Landroid/text/TextPaint;

.field private mTimeLineMapper:Lcom/yftech/car/widget/media/music/lyrics/Lyric$TimeLineMapper;

.field private mUpdateFrequencyTime:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mVerbatimPlay:Z

.field private mVerbatimScrollStartOffset:I

.field private mVerbatimScrollTopOffset:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 331
    invoke-direct {p0, p1, v0}, Lcom/yftech/car/widget/media/music/lyrics/LyricView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 335
    invoke-direct {p0, p1, p2, v0}, Lcom/yftech/car/widget/media/music/lyrics/LyricView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 339
    invoke-direct/range {p0 .. p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 v2, 0x28

    .line 120
    iput v2, v0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mUpdateFrequencyTime:I

    .line 136
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mLyricMap:Ljava/util/HashMap;

    .line 137
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mLyricPlayMap:Ljava/util/HashMap;

    .line 138
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mStaticLayoutHashMap:Ljava/util/HashMap;

    .line 143
    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    iput-object v3, v0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mLyricTextAlignment:Landroid/text/Layout$Alignment;

    const/high16 v3, 0x3f000000    # 0.5f

    .line 183
    iput v3, v0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mHighlightOffset:F

    const/4 v4, 0x0

    .line 202
    iput-boolean v4, v0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mIsClick:Z

    const/4 v5, 0x0

    .line 239
    iput-object v5, v0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mLyricMessage:Ljava/lang/String;

    .line 244
    iput-object v5, v0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mNoPlay:Ljava/lang/String;

    .line 249
    iput-object v5, v0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mNoLyric:Ljava/lang/String;

    .line 254
    iput-object v5, v0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mLyricLoading:Ljava/lang/String;

    const/4 v6, -0x1

    .line 264
    iput v6, v0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mLinearMax:I

    const/16 v7, 0x12c

    .line 269
    iput v7, v0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mAnimatorSpeed:I

    const/4 v8, 0x1

    .line 289
    iput-boolean v8, v0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mScrollToTouch:Z

    .line 294
    iput-boolean v4, v0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mNeedRevert:Z

    .line 316
    new-instance v9, Lcom/yftech/car/widget/media/music/lyrics/LyricView$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v10

    invoke-direct {v9, v0, v10}, Lcom/yftech/car/widget/media/music/lyrics/LyricView$1;-><init>(Lcom/yftech/car/widget/media/music/lyrics/LyricView;Landroid/os/Looper;)V

    iput-object v9, v0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mHandler:Landroid/os/Handler;

    .line 941
    new-instance v9, Lcom/yftech/car/widget/media/music/lyrics/LyricView$2;

    invoke-direct {v9, v0}, Lcom/yftech/car/widget/media/music/lyrics/LyricView$2;-><init>(Lcom/yftech/car/widget/media/music/lyrics/LyricView;)V

    iput-object v9, v0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 1224
    new-instance v9, Lcom/yftech/car/widget/media/music/lyrics/LyricView$LoadLyricRunnable;

    invoke-direct {v9, v0, v5}, Lcom/yftech/car/widget/media/music/lyrics/LyricView$LoadLyricRunnable;-><init>(Lcom/yftech/car/widget/media/music/lyrics/LyricView;Lcom/yftech/car/widget/media/music/lyrics/LyricView$1;)V

    iput-object v9, v0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mLoadLyricRunnable:Lcom/yftech/car/widget/media/music/lyrics/LyricView$LoadLyricRunnable;

    .line 340
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x106000b

    .line 345
    invoke-virtual {v9, v10, v5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v10

    const v11, 0x1060017

    .line 347
    invoke-virtual {v9, v11, v5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v11

    const v12, 0x1060019

    .line 349
    invoke-virtual {v9, v12, v5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v12

    const v13, 0x1060018

    .line 351
    invoke-virtual {v9, v13, v5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v5

    .line 353
    sget-object v9, Lcom/yftech/car/widget/media/R$styleable;->LyricView:[I

    move-object/from16 v13, p2

    invoke-virtual {v1, v13, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v9

    const/16 v13, 0x18

    const/16 v14, 0x14

    if-eqz v9, :cond_5

    .line 355
    sget v5, Lcom/yftech/car/widget/media/R$styleable;->LyricView_lyric_view_text_size:I

    invoke-virtual {v9, v5, v14}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    .line 357
    sget v13, Lcom/yftech/car/widget/media/R$styleable;->LyricView_lyric_view_highlight_text_size:I

    invoke-virtual {v9, v13, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v13

    .line 359
    sget v15, Lcom/yftech/car/widget/media/R$styleable;->LyricView_lyric_view_toast_text_size:I

    invoke-virtual {v9, v15, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v15

    .line 361
    sget v8, Lcom/yftech/car/widget/media/R$styleable;->LyricView_lyric_view_line_spacing:I

    invoke-virtual {v9, v8, v14}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    iput v8, v0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mLineSpace:I

    .line 363
    sget v8, Lcom/yftech/car/widget/media/R$styleable;->LyricView_lyric_view_text_color:I

    invoke-virtual {v9, v8, v10}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v10

    .line 365
    sget v8, Lcom/yftech/car/widget/media/R$styleable;->LyricView_lyric_view_highlight_text_color:I

    invoke-virtual {v9, v8, v11}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v11

    .line 367
    sget v8, Lcom/yftech/car/widget/media/R$styleable;->LyricView_lyric_view_highlight_play_text_color:I

    invoke-virtual {v9, v8, v12}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v12

    .line 369
    sget v8, Lcom/yftech/car/widget/media/R$styleable;->LyricView_lyric_view_toast_text_color:I

    invoke-virtual {v9, v8, v12}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v8

    .line 371
    sget v14, Lcom/yftech/car/widget/media/R$styleable;->LyricView_lyric_view_text_align:I

    invoke-virtual {v9, v14, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v14

    .line 373
    sget v4, Lcom/yftech/car/widget/media/R$styleable;->LyricView_lyric_view_linear_max:I

    invoke-virtual {v9, v4, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, v0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mLinearMax:I

    .line 375
    sget v4, Lcom/yftech/car/widget/media/R$styleable;->LyricView_lyric_view_update_frequency_time:I

    invoke-virtual {v9, v4, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mUpdateFrequencyTime:I

    .line 377
    sget v2, Lcom/yftech/car/widget/media/R$styleable;->LyricView_lyric_view_animator_scroll_duration:I

    invoke-virtual {v9, v2, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mAnimatorSpeed:I

    .line 379
    sget v2, Lcom/yftech/car/widget/media/R$styleable;->LyricView_lyric_view_highlight_offset:I

    invoke-virtual {v9, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, v0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mHighlightOffset:F

    .line 381
    sget v2, Lcom/yftech/car/widget/media/R$styleable;->LyricView_lyric_view_verbatim_scroll_top_offset:I

    const/4 v3, 0x0

    invoke-virtual {v9, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mVerbatimScrollTopOffset:I

    .line 383
    sget v2, Lcom/yftech/car/widget/media/R$styleable;->LyricView_lyric_view_verbatim_scroll_start_offset:I

    invoke-virtual {v9, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mVerbatimScrollStartOffset:I

    .line 385
    sget v2, Lcom/yftech/car/widget/media/R$styleable;->LyricView_lyric_view_no_play_music:I

    invoke-virtual {v9, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mNoPlay:Ljava/lang/String;

    .line 387
    sget v2, Lcom/yftech/car/widget/media/R$styleable;->LyricView_lyric_view_no_lyric:I

    invoke-virtual {v9, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mNoLyric:Ljava/lang/String;

    .line 389
    sget v2, Lcom/yftech/car/widget/media/R$styleable;->LyricView_lyric_view_lyric_loading:I

    invoke-virtual {v9, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mLyricLoading:Ljava/lang/String;

    .line 391
    sget v2, Lcom/yftech/car/widget/media/R$styleable;->LyricView_lyric_view_highlight_verbatim_play:I

    const/4 v3, 0x0

    invoke-virtual {v9, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, v0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mVerbatimPlay:Z

    .line 393
    sget v2, Lcom/yftech/car/widget/media/R$styleable;->LyricView_lyric_view_add_krc:I

    invoke-virtual {v9, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, v0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mAddKrc:Z

    .line 395
    sget v2, Lcom/yftech/car/widget/media/R$styleable;->LyricView_lyric_view_click_item_play:I

    invoke-virtual {v9, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, v0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mClickItemPlay:Z

    .line 397
    sget v2, Lcom/yftech/car/widget/media/R$styleable;->LyricView_lyric_view_touch:I

    const/4 v4, 0x1

    invoke-virtual {v9, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, v0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mScrollToTouch:Z

    .line 399
    sget v2, Lcom/yftech/car/widget/media/R$styleable;->LyricView_lyric_view_need_revert:I

    invoke-virtual {v9, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, v0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mNeedRevert:Z

    .line 401
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    .line 402
    iget-boolean v4, v0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mNeedRevert:Z

    if-eqz v4, :cond_2

    .line 403
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    const-string v6, "ar"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const-string v4, "he"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v3, 0x1

    :cond_1
    iput-boolean v3, v0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->isRightStart:Z

    :cond_2
    packed-switch v14, :pswitch_data_0

    .line 414
    iget-boolean v2, v0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->isRightStart:Z

    if-eqz v2, :cond_4

    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_1

    .line 410
    :pswitch_0
    iget-boolean v2, v0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->isRightStart:Z

    if-eqz v2, :cond_3

    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_0

    :cond_3
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    :goto_0
    iput-object v2, v0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mLyricTextAlignment:Landroid/text/Layout$Alignment;

    goto :goto_2

    .line 407
    :pswitch_1
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    iput-object v2, v0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mLyricTextAlignment:Landroid/text/Layout$Alignment;

    goto :goto_2

    .line 414
    :cond_4
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    :goto_1
    iput-object v2, v0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mLyricTextAlignment:Landroid/text/Layout$Alignment;

    .line 417
    :goto_2
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    move v14, v5

    move v5, v8

    goto :goto_3

    :cond_5
    const-string v2, "LyricView"

    const-string v3, "LyricView: typedArray is null."

    .line 419
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v15, v13

    .line 422
    :goto_3
    iget v2, v0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mHighlightOffset:F

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gez v2, :cond_6

    .line 423
    iput v3, v0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mHighlightOffset:F

    .line 426
    :cond_6
    iget v2, v0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mHighlightOffset:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_7

    .line 427
    iput v3, v0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mHighlightOffset:F

    .line 430
    :cond_7
    iget-object v2, v0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mNoPlay:Ljava/lang/String;

    if-nez v2, :cond_8

    .line 431
    sget v2, Lcom/yftech/car/widget/media/R$string;->no_play:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mNoPlay:Ljava/lang/String;

    .line 434
    :cond_8
    iget-object v2, v0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mNoLyric:Ljava/lang/String;

    if-nez v2, :cond_9

    .line 435
    sget v2, Lcom/yftech/car/widget/media/R$string;->no_lyric:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mNoLyric:Ljava/lang/String;

    .line 438
    :cond_9
    iget-object v2, v0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mLyricLoading:Ljava/lang/String;

    if-nez v2, :cond_a

    .line 439
    sget v2, Lcom/yftech/car/widget/media/R$string;->lyric_loading:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mLyricLoading:Ljava/lang/String;

    .line 442
    :cond_a
    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2}, Landroid/text/TextPaint;-><init>()V

    iput-object v2, v0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mTextPaint:Landroid/text/TextPaint;

    .line 443
    iget-object v2, v0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mTextPaint:Landroid/text/TextPaint;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 444
    iget-object v2, v0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mTextPaint:Landroid/text/TextPaint;

    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 445
    iget-object v2, v0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v10}, Landroid/text/TextPaint;->setColor(I)V

    .line 446
    iget-object v2, v0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mTextPaint:Landroid/text/TextPaint;

    int-to-float v3, v14

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 448
    new-instance v2, Landroid/text/TextPaint;

    iget-object v3, v0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mTextPaint:Landroid/text/TextPaint;

    invoke-direct {v2, v3}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    iput-object v2, v0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mHighlightPaint:Landroid/text/TextPaint;

    .line 449
    iget-object v2, v0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mHighlightPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v11}, Landroid/text/TextPaint;->setColor(I)V

    .line 451
    iget-object v2, v0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mHighlightPaint:Landroid/text/TextPaint;

    int-to-float v3, v13

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 453
    new-instance v2, Landroid/text/TextPaint;

    iget-object v4, v0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mTextPaint:Landroid/text/TextPaint;

    invoke-direct {v2, v4}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    iput-object v2, v0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mHighlightPlayPaint:Landroid/text/TextPaint;

    .line 454
    iget-object v2, v0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mHighlightPlayPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v12}, Landroid/text/TextPaint;->setColor(I)V

    .line 455
    iget-object v2, v0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mHighlightPlayPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 456
    iget-object v2, v0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mHighlightPlayPaint:Landroid/text/TextPaint;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 458
    new-instance v2, Landroid/text/TextPaint;

    iget-object v3, v0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mTextPaint:Landroid/text/TextPaint;

    invoke-direct {v2, v3}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    iput-object v2, v0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mEmptyTextPaint:Landroid/text/TextPaint;

    .line 459
    iget-object v2, v0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mEmptyTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v5}, Landroid/text/TextPaint;->setColor(I)V

    .line 460
    iget-object v2, v0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mEmptyTextPaint:Landroid/text/TextPaint;

    int-to-float v3, v15

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 462
    new-instance v2, Landroid/widget/OverScroller;

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-direct {v2, v1, v3}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v2, v0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mOverScroller:Landroid/widget/OverScroller;

    .line 463
    iget-object v2, v0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mOverScroller:Landroid/widget/OverScroller;

    const v3, 0x3dcccccd    # 0.1f

    invoke-virtual {v2, v3}, Landroid/widget/OverScroller;->setFriction(F)V

    .line 464
    invoke-static/range {p1 .. p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 465
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, v0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mScaledTouchSlop:I

    .line 466
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v2

    iput v2, v0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mMaxFlingVelocity:I

    .line 467
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, v0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mMinFlingVelocity:I

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/yftech/car/widget/media/music/lyrics/LyricView;)Z
    .locals 0

    .line 93
    iget-boolean p0, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mVerbatimPlay:Z

    return p0
.end method

.method static synthetic access$100(Lcom/yftech/car/widget/media/music/lyrics/LyricView;)I
    .locals 0

    .line 93
    iget p0, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mLinearMax:I

    return p0
.end method

.method static synthetic access$1002(Lcom/yftech/car/widget/media/music/lyrics/LyricView;Lcom/yftech/car/widget/media/music/lyrics/Lyric$TimeLineMapper;)Lcom/yftech/car/widget/media/music/lyrics/Lyric$TimeLineMapper;
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mTimeLineMapper:Lcom/yftech/car/widget/media/music/lyrics/Lyric$TimeLineMapper;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/yftech/car/widget/media/music/lyrics/LyricView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mLyricMessage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/yftech/car/widget/media/music/lyrics/LyricView;)Ljava/lang/String;
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mNoPlay:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/yftech/car/widget/media/music/lyrics/LyricView;)Lcom/yftech/car/widget/media/music/lyrics/LyricView$OnLyricLoadingListener;
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mOnLyricLoadingListener:Lcom/yftech/car/widget/media/music/lyrics/LyricView$OnLyricLoadingListener;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/yftech/car/widget/media/music/lyrics/LyricView;)Ljava/lang/String;
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mLyricLoading:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/yftech/car/widget/media/music/lyrics/LyricView;)Lcom/yftech/car/widget/media/music/lyrics/LyricForm;
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mLyricForm:Lcom/yftech/car/widget/media/music/lyrics/LyricForm;

    return-object p0
.end method

.method static synthetic access$1502(Lcom/yftech/car/widget/media/music/lyrics/LyricView;Lcom/yftech/car/widget/media/music/lyrics/LyricForm;)Lcom/yftech/car/widget/media/music/lyrics/LyricForm;
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mLyricForm:Lcom/yftech/car/widget/media/music/lyrics/LyricForm;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/yftech/car/widget/media/music/lyrics/LyricView;)V
    .locals 0

    .line 93
    invoke-direct {p0}, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->reset()V

    return-void
.end method

.method static synthetic access$1700(Lcom/yftech/car/widget/media/music/lyrics/LyricView;)Lcom/yftech/car/widget/media/music/lyrics/LyricView$LoadLyricRunnable;
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mLoadLyricRunnable:Lcom/yftech/car/widget/media/music/lyrics/LyricView$LoadLyricRunnable;

    return-object p0
.end method

.method static synthetic access$200(Lcom/yftech/car/widget/media/music/lyrics/LyricView;)I
    .locals 0

    .line 93
    iget p0, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mUpdateFrequencyTime:I

    return p0
.end method

.method static synthetic access$2000(Lcom/yftech/car/widget/media/music/lyrics/LyricView;)Z
    .locals 0

    .line 93
    iget-boolean p0, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mAddKrc:Z

    return p0
.end method

.method static synthetic access$300(Lcom/yftech/car/widget/media/music/lyrics/LyricView;)Landroid/os/Handler;
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$400(Lcom/yftech/car/widget/media/music/lyrics/LyricView;)Z
    .locals 0

    .line 93
    iget-boolean p0, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->isPlay:Z

    return p0
.end method

.method static synthetic access$402(Lcom/yftech/car/widget/media/music/lyrics/LyricView;Z)Z
    .locals 0

    .line 93
    iput-boolean p1, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->isPlay:Z

    return p1
.end method

.method static synthetic access$500(Lcom/yftech/car/widget/media/music/lyrics/LyricView;)I
    .locals 0

    .line 93
    iget p0, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mCurrentLineIndex:I

    return p0
.end method

.method static synthetic access$600(Lcom/yftech/car/widget/media/music/lyrics/LyricView;I)V
    .locals 0

    .line 93
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->scrollToPosition(I)V

    return-void
.end method

.method static synthetic access$702(Lcom/yftech/car/widget/media/music/lyrics/LyricView;F)F
    .locals 0

    .line 93
    iput p1, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mOffsetY:F

    return p1
.end method

.method static synthetic access$800(Lcom/yftech/car/widget/media/music/lyrics/LyricView;)V
    .locals 0

    .line 93
    invoke-direct {p0}, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->refresh()V

    return-void
.end method

.method static synthetic access$902(Lcom/yftech/car/widget/media/music/lyrics/LyricView;Lcom/yftech/car/widget/media/music/lyrics/Lyric;)Lcom/yftech/car/widget/media/music/lyrics/Lyric;
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mLyric:Lcom/yftech/car/widget/media/music/lyrics/Lyric;

    return-object p1
.end method

.method private drawEmptyText(Landroid/graphics/Canvas;)V
    .locals 9

    .line 849
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 850
    invoke-direct {p0}, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->getAvailableWidth()I

    move-result v3

    .line 851
    iget-object v0, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mLyricMessage:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 852
    iget-object v0, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mNoLyric:Ljava/lang/String;

    iput-object v0, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mLyricMessage:Ljava/lang/String;

    .line 855
    :cond_0
    sget-object v0, Lcom/yftech/car/widget/media/music/lyrics/LyricView$4;->$SwitchMap$android$text$Layout$Alignment:[I

    iget-object v1, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mLyricTextAlignment:Landroid/text/Layout$Alignment;

    invoke-virtual {v1}, Landroid/text/Layout$Alignment;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 864
    iget-boolean v0, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->isRightStart:Z

    if-eqz v0, :cond_2

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_0

    .line 860
    :pswitch_0
    iget-boolean v0, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->isRightStart:Z

    if-eqz v0, :cond_1

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_0

    :cond_1
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_0

    .line 857
    :pswitch_1
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    :goto_0
    move-object v4, v0

    goto :goto_1

    .line 864
    :cond_2
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_0

    .line 868
    :goto_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_3

    .line 869
    iget-object v0, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mLyricMessage:Ljava/lang/String;

    iget-object v1, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mEmptyTextPaint:Landroid/text/TextPaint;

    invoke-static {v0, v1, v3}, Landroid/text/DynamicLayout$Builder;->obtain(Ljava/lang/CharSequence;Landroid/text/TextPaint;I)Landroid/text/DynamicLayout$Builder;

    move-result-object v0

    .line 871
    invoke-virtual {v0, v4}, Landroid/text/DynamicLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/DynamicLayout$Builder;

    move-result-object v0

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 872
    invoke-virtual {v0, v1, v2}, Landroid/text/DynamicLayout$Builder;->setLineSpacing(FF)Landroid/text/DynamicLayout$Builder;

    move-result-object v0

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 873
    invoke-virtual {v0, v1}, Landroid/text/DynamicLayout$Builder;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)Landroid/text/DynamicLayout$Builder;

    move-result-object v0

    .line 874
    invoke-virtual {v0, v3}, Landroid/text/DynamicLayout$Builder;->setEllipsizedWidth(I)Landroid/text/DynamicLayout$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 875
    invoke-virtual {v0, v1}, Landroid/text/DynamicLayout$Builder;->setIncludePad(Z)Landroid/text/DynamicLayout$Builder;

    move-result-object v0

    .line 876
    invoke-virtual {v0}, Landroid/text/DynamicLayout$Builder;->build()Landroid/text/DynamicLayout;

    move-result-object v0

    goto :goto_2

    .line 879
    :cond_3
    new-instance v8, Landroid/text/DynamicLayout;

    iget-object v1, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mLyricMessage:Ljava/lang/String;

    iget-object v2, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mEmptyTextPaint:Landroid/text/TextPaint;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Landroid/text/DynamicLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 884
    :goto_2
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->getPaddingStart()I

    move-result v1

    int-to-float v1, v1

    .line 886
    invoke-direct {p0}, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->getAvailableHeight()I

    move-result p0

    invoke-virtual {v0}, Landroid/text/DynamicLayout;->getHeight()I

    move-result v2

    sub-int/2addr p0, v2

    int-to-float p0, p0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr p0, v2

    invoke-virtual {p1, v1, p0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 887
    invoke-virtual {v0, p1}, Landroid/text/DynamicLayout;->draw(Landroid/graphics/Canvas;)V

    .line 888
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private drawLyricLine(Landroid/graphics/Canvas;FFI)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    .line 586
    iget-object v3, v0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mLyric:Lcom/yftech/car/widget/media/music/lyrics/Lyric;

    if-nez v3, :cond_0

    const-string v0, "LyricView"

    const-string v1, "drawLyricLine: mLyric is null"

    .line 587
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 590
    :cond_0
    iget-object v3, v0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mLyric:Lcom/yftech/car/widget/media/music/lyrics/Lyric;

    invoke-virtual {v3, v2}, Lcom/yftech/car/widget/media/music/lyrics/Lyric;->getLineText(I)Ljava/lang/String;

    move-result-object v3

    .line 591
    iget-object v4, v0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mLyricMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/text/DynamicLayout;

    .line 593
    invoke-direct/range {p0 .. p0}, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->getAvailableWidth()I

    move-result v13

    .line 595
    iget v5, v0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mCurrentLineIndex:I

    const/16 v6, 0x1c

    const/4 v15, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v11, 0x1

    const/4 v10, 0x0

    if-ne v2, v5, :cond_19

    .line 597
    iget-object v2, v0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mLyricPlayMap:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/text/DynamicLayout;

    if-nez v2, :cond_6

    .line 600
    iget v2, v0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mLinearMax:I

    if-ne v2, v11, :cond_3

    const-string v2, "\n"

    .line 601
    invoke-virtual {v3, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 602
    array-length v4, v2

    if-le v4, v11, :cond_1

    .line 603
    aget-object v2, v2, v10

    goto :goto_0

    :cond_1
    move-object v2, v3

    .line 608
    :goto_0
    iget-object v4, v0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mHighlightPaint:Landroid/text/TextPaint;

    invoke-virtual {v4, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v4

    int-to-float v5, v13

    cmpl-float v7, v4, v5

    if-lez v7, :cond_4

    :goto_1
    cmpl-float v4, v4, v5

    if-lez v4, :cond_2

    .line 612
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v11

    invoke-virtual {v2, v10, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 613
    iget-object v4, v0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mHighlightPaint:Landroid/text/TextPaint;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "..."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v4

    goto :goto_1

    .line 616
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "..."

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_3
    move-object v2, v3

    .line 623
    :cond_4
    :goto_2
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v6, :cond_5

    .line 624
    iget-object v4, v0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mHighlightPaint:Landroid/text/TextPaint;

    invoke-static {v2, v4, v13}, Landroid/text/DynamicLayout$Builder;->obtain(Ljava/lang/CharSequence;Landroid/text/TextPaint;I)Landroid/text/DynamicLayout$Builder;

    move-result-object v4

    iget-object v5, v0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mLyricTextAlignment:Landroid/text/Layout$Alignment;

    .line 626
    invoke-virtual {v4, v5}, Landroid/text/DynamicLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/DynamicLayout$Builder;

    move-result-object v4

    .line 627
    invoke-virtual {v4, v15, v12}, Landroid/text/DynamicLayout$Builder;->setLineSpacing(FF)Landroid/text/DynamicLayout$Builder;

    move-result-object v4

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 628
    invoke-virtual {v4, v5}, Landroid/text/DynamicLayout$Builder;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)Landroid/text/DynamicLayout$Builder;

    move-result-object v4

    .line 629
    invoke-virtual {v4, v13}, Landroid/text/DynamicLayout$Builder;->setEllipsizedWidth(I)Landroid/text/DynamicLayout$Builder;

    move-result-object v4

    .line 630
    invoke-virtual {v4, v10}, Landroid/text/DynamicLayout$Builder;->setIncludePad(Z)Landroid/text/DynamicLayout$Builder;

    move-result-object v4

    .line 631
    invoke-virtual {v4}, Landroid/text/DynamicLayout$Builder;->build()Landroid/text/DynamicLayout;

    move-result-object v4

    move v14, v10

    move v15, v11

    goto :goto_3

    .line 634
    :cond_5
    new-instance v4, Landroid/text/DynamicLayout;

    iget-object v7, v0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mHighlightPaint:Landroid/text/TextPaint;

    iget-object v9, v0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mLyricTextAlignment:Landroid/text/Layout$Alignment;

    const/high16 v16, 0x3f800000    # 1.0f

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v5, v4

    move-object v6, v2

    move v8, v13

    move v14, v10

    move/from16 v10, v16

    move v15, v11

    move/from16 v11, v17

    move/from16 v12, v18

    invoke-direct/range {v5 .. v12}, Landroid/text/DynamicLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 637
    :goto_3
    iget-object v5, v0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mLyricPlayMap:Ljava/util/HashMap;

    invoke-virtual {v5, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_6
    move v14, v10

    move v15, v11

    .line 639
    invoke-virtual {v2}, Landroid/text/DynamicLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v2, v3

    .line 643
    :goto_4
    iget-boolean v3, v0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mVerbatimPlay:Z

    if-eqz v3, :cond_1f

    iget v3, v0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mLinearMax:I

    if-ne v3, v15, :cond_1f

    .line 644
    iget-object v3, v0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mLyric:Lcom/yftech/car/widget/media/music/lyrics/Lyric;

    iget v5, v0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mCurrentLineIndex:I

    invoke-virtual {v3, v5}, Lcom/yftech/car/widget/media/music/lyrics/Lyric;->getLineStartTime(I)J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-lez v3, :cond_1f

    .line 646
    iget-wide v9, v0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mPlayTimeMillis:J

    cmp-long v3, v9, v5

    if-lez v3, :cond_1f

    .line 648
    iget-object v3, v0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mLyric:Lcom/yftech/car/widget/media/music/lyrics/Lyric;

    iget v9, v0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mCurrentLineIndex:I

    invoke-virtual {v3, v9}, Lcom/yftech/car/widget/media/music/lyrics/Lyric;->getKrcPlayEntity(I)Ljava/util/List;

    move-result-object v3

    .line 649
    iget-wide v9, v0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mPlayTimeMillis:J

    sub-long/2addr v9, v5

    long-to-int v9, v9

    if-eqz v3, :cond_13

    move v5, v14

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 658
    :goto_5
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    if-ge v5, v8, :cond_a

    .line 659
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/yftech/car/widget/media/music/lyrics/KrcPlayEntity;

    .line 662
    invoke-virtual {v8}, Lcom/yftech/car/widget/media/music/lyrics/KrcPlayEntity;->getPlayTime()[I

    move-result-object v11

    array-length v12, v11

    move v10, v14

    :goto_6
    if-ge v10, v12, :cond_7

    aget v16, v11, v10

    add-int v14, v14, v16

    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    :cond_7
    if-ge v14, v9, :cond_9

    .line 667
    iget-object v10, v0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mHighlightPlayPaint:Landroid/text/TextPaint;

    invoke-virtual {v8}, Lcom/yftech/car/widget/media/music/lyrics/KrcPlayEntity;->getLyrics()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v10

    add-float/2addr v6, v10

    .line 668
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    sub-int/2addr v10, v15

    if-lt v5, v10, :cond_8

    move-object v7, v8

    :cond_8
    add-int/lit8 v5, v5, 0x1

    const/4 v14, 0x0

    goto :goto_5

    :cond_9
    move-object v7, v8

    :cond_a
    if-eqz v7, :cond_1f

    .line 681
    iget-object v3, v0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mHighlightPlayPaint:Landroid/text/TextPaint;

    invoke-virtual {v7}, Lcom/yftech/car/widget/media/music/lyrics/KrcPlayEntity;->getLyrics()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v3

    .line 683
    invoke-virtual {v7}, Lcom/yftech/car/widget/media/music/lyrics/KrcPlayEntity;->getPlayTime()[I

    move-result-object v5

    .line 685
    aget v7, v5, v15

    const/4 v8, 0x0

    .line 687
    aget v5, v5, v8

    sub-int/2addr v9, v5

    int-to-float v12, v9

    const/high16 v5, 0x3f800000    # 1.0f

    cmpg-float v8, v12, v5

    if-gez v8, :cond_b

    move v12, v5

    :cond_b
    int-to-float v7, v7

    div-float/2addr v12, v7

    mul-float/2addr v12, v3

    cmpg-float v7, v12, v5

    if-gez v7, :cond_c

    move v12, v5

    :cond_c
    cmpl-float v7, v12, v3

    if-lez v7, :cond_d

    move v12, v3

    :cond_d
    add-float/2addr v12, v6

    cmpg-float v3, v12, v5

    if-gez v3, :cond_e

    move v12, v5

    :cond_e
    int-to-float v3, v13

    cmpl-float v5, v12, v3

    if-lez v5, :cond_f

    move v12, v3

    .line 716
    :cond_f
    sget-object v5, Lcom/yftech/car/widget/media/music/lyrics/LyricView$4;->$SwitchMap$android$text$Layout$Alignment:[I

    iget-object v6, v0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mLyricTextAlignment:Landroid/text/Layout$Alignment;

    invoke-virtual {v6}, Landroid/text/Layout$Alignment;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    const/4 v10, 0x0

    goto :goto_7

    .line 721
    :pswitch_0
    iget-object v5, v0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mHighlightPlayPaint:Landroid/text/TextPaint;

    invoke-virtual {v5, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v5

    sub-float/2addr v3, v5

    float-to-int v10, v3

    goto :goto_7

    .line 718
    :pswitch_1
    iget-object v5, v0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mHighlightPlayPaint:Landroid/text/TextPaint;

    invoke-virtual {v5, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v5

    sub-float/2addr v3, v5

    float-to-int v3, v3

    div-int/lit8 v10, v3, 0x2

    :goto_7
    if-gez v10, :cond_10

    const/16 v19, 0x0

    goto :goto_8

    :cond_10
    move/from16 v19, v10

    :goto_8
    float-to-int v3, v12

    add-int v3, v3, v19

    .line 730
    invoke-virtual {v4}, Landroid/text/DynamicLayout;->getHeight()I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 731
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v14}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 733
    invoke-virtual {v4}, Landroid/text/DynamicLayout;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v4}, Landroid/text/DynamicLayout;->getHeight()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x40c00000    # 6.0f

    div-float/2addr v6, v7

    sub-float/2addr v5, v6

    float-to-int v5, v5

    .line 736
    iget v6, v0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mVerbatimScrollTopOffset:I

    if-eqz v6, :cond_11

    .line 737
    iget v6, v0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mVerbatimScrollTopOffset:I

    add-int/2addr v5, v6

    .line 740
    :cond_11
    iget v6, v0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mVerbatimScrollStartOffset:I

    if-eqz v6, :cond_12

    .line 741
    iget v6, v0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mVerbatimScrollStartOffset:I

    add-int v19, v19, v6

    :cond_12
    move/from16 v6, v19

    int-to-float v6, v6

    int-to-float v5, v5

    .line 744
    iget-object v7, v0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mHighlightPlayPaint:Landroid/text/TextPaint;

    invoke-virtual {v3, v2, v6, v5, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_f

    .line 748
    :cond_13
    iget-object v3, v0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mLyric:Lcom/yftech/car/widget/media/music/lyrics/Lyric;

    iget v10, v0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mCurrentLineIndex:I

    add-int/2addr v10, v15

    invoke-virtual {v3, v10}, Lcom/yftech/car/widget/media/music/lyrics/Lyric;->getLineStartTime(I)J

    move-result-wide v10

    sub-long/2addr v10, v5

    cmp-long v3, v10, v7

    if-gtz v3, :cond_14

    const-wide/16 v10, 0x3e8

    .line 754
    :cond_14
    iget-object v3, v0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mHighlightPlayPaint:Landroid/text/TextPaint;

    invoke-virtual {v3, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v3

    int-to-float v5, v9

    long-to-float v6, v10

    div-float/2addr v5, v6

    mul-float/2addr v5, v3

    float-to-int v11, v5

    if-gtz v11, :cond_15

    move v11, v15

    .line 764
    :cond_15
    sget-object v5, Lcom/yftech/car/widget/media/music/lyrics/LyricView$4;->$SwitchMap$android$text$Layout$Alignment:[I

    iget-object v6, v0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mLyricTextAlignment:Landroid/text/Layout$Alignment;

    invoke-virtual {v6}, Landroid/text/Layout$Alignment;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_1

    const/4 v10, 0x0

    goto :goto_9

    :pswitch_2
    int-to-float v5, v13

    sub-float/2addr v5, v3

    float-to-int v10, v5

    goto :goto_9

    :pswitch_3
    int-to-float v5, v13

    sub-float/2addr v5, v3

    float-to-int v3, v5

    .line 766
    div-int/lit8 v10, v3, 0x2

    :goto_9
    if-gez v10, :cond_16

    const/16 v19, 0x0

    goto :goto_a

    :cond_16
    move/from16 v19, v10

    :goto_a
    add-int v11, v11, v19

    .line 778
    invoke-virtual {v4}, Landroid/text/DynamicLayout;->getHeight()I

    move-result v3

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v11, v3, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 779
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 780
    invoke-virtual {v4}, Landroid/text/DynamicLayout;->getHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v4}, Landroid/text/DynamicLayout;->getHeight()I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x40c00000    # 6.0f

    div-float/2addr v7, v8

    sub-float/2addr v6, v7

    float-to-int v6, v6

    .line 781
    iget v7, v0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mVerbatimScrollTopOffset:I

    if-eqz v7, :cond_17

    .line 782
    iget v7, v0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mVerbatimScrollTopOffset:I

    add-int/2addr v6, v7

    .line 785
    :cond_17
    iget v7, v0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mVerbatimScrollStartOffset:I

    if-eqz v7, :cond_18

    .line 786
    iget v7, v0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mVerbatimScrollStartOffset:I

    add-int v19, v19, v7

    :cond_18
    move/from16 v7, v19

    int-to-float v7, v7

    int-to-float v6, v6

    .line 788
    iget-object v8, v0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mHighlightPlayPaint:Landroid/text/TextPaint;

    invoke-virtual {v5, v2, v7, v6, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    move-object v14, v3

    goto/16 :goto_f

    :cond_19
    move v15, v11

    move v5, v12

    if-nez v4, :cond_1f

    .line 797
    iget v2, v0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mLinearMax:I

    if-ne v2, v15, :cond_1c

    const-string v2, "\n"

    .line 798
    invoke-virtual {v3, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 799
    array-length v4, v2

    if-le v4, v15, :cond_1a

    const/4 v4, 0x0

    .line 800
    aget-object v2, v2, v4

    goto :goto_b

    :cond_1a
    move-object v2, v3

    .line 805
    :goto_b
    iget-object v4, v0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v4, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v4

    int-to-float v7, v13

    cmpl-float v8, v4, v7

    if-lez v8, :cond_1d

    :goto_c
    cmpl-float v4, v4, v7

    if-lez v4, :cond_1b

    .line 809
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v15

    const/4 v8, 0x0

    invoke-virtual {v2, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 810
    iget-object v4, v0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mTextPaint:Landroid/text/TextPaint;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "..."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v4

    goto :goto_c

    .line 813
    :cond_1b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "..."

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_d

    :cond_1c
    move-object v2, v3

    .line 820
    :cond_1d
    :goto_d
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v6, :cond_1e

    .line 821
    iget-object v4, v0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mTextPaint:Landroid/text/TextPaint;

    invoke-static {v2, v4, v13}, Landroid/text/DynamicLayout$Builder;->obtain(Ljava/lang/CharSequence;Landroid/text/TextPaint;I)Landroid/text/DynamicLayout$Builder;

    move-result-object v2

    iget-object v4, v0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mLyricTextAlignment:Landroid/text/Layout$Alignment;

    .line 823
    invoke-virtual {v2, v4}, Landroid/text/DynamicLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/DynamicLayout$Builder;

    move-result-object v2

    const/4 v4, 0x0

    .line 824
    invoke-virtual {v2, v4, v5}, Landroid/text/DynamicLayout$Builder;->setLineSpacing(FF)Landroid/text/DynamicLayout$Builder;

    move-result-object v2

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 825
    invoke-virtual {v2, v4}, Landroid/text/DynamicLayout$Builder;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)Landroid/text/DynamicLayout$Builder;

    move-result-object v2

    .line 826
    invoke-virtual {v2, v13}, Landroid/text/DynamicLayout$Builder;->setEllipsizedWidth(I)Landroid/text/DynamicLayout$Builder;

    move-result-object v2

    const/4 v4, 0x0

    .line 827
    invoke-virtual {v2, v4}, Landroid/text/DynamicLayout$Builder;->setIncludePad(Z)Landroid/text/DynamicLayout$Builder;

    move-result-object v2

    .line 828
    invoke-virtual {v2}, Landroid/text/DynamicLayout$Builder;->build()Landroid/text/DynamicLayout;

    move-result-object v2

    move-object v4, v2

    goto :goto_e

    .line 830
    :cond_1e
    new-instance v4, Landroid/text/DynamicLayout;

    iget-object v7, v0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mTextPaint:Landroid/text/TextPaint;

    iget-object v9, v0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mLyricTextAlignment:Landroid/text/Layout$Alignment;

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v5, v4

    move-object v6, v2

    move v8, v13

    invoke-direct/range {v5 .. v12}, Landroid/text/DynamicLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 834
    :goto_e
    iget-object v2, v0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mLyricMap:Ljava/util/HashMap;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1f
    const/4 v14, 0x0

    .line 837
    :goto_f
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 838
    invoke-virtual {v4}, Landroid/text/DynamicLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float v2, p3, v2

    iget v0, v0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mOffsetY:F

    sub-float/2addr v2, v0

    move/from16 v0, p2

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 839
    invoke-virtual {v4, v1}, Landroid/text/DynamicLayout;->draw(Landroid/graphics/Canvas;)V

    if-eqz v14, :cond_20

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 842
    invoke-virtual {v1, v14, v0, v0, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 845
    :cond_20
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private getAvailableHeight()I
    .locals 2

    .line 475
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->getPaddingBottom()I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method private getAvailableWidth()I
    .locals 2

    .line 471
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->getPaddingStart()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->getPaddingEnd()I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method private getCarMusicControlCallback()Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicControlCallback;
    .locals 1

    .line 1178
    new-instance v0, Lcom/yftech/car/widget/media/music/lyrics/LyricView$3;

    invoke-direct {v0, p0}, Lcom/yftech/car/widget/media/music/lyrics/LyricView$3;-><init>(Lcom/yftech/car/widget/media/music/lyrics/LyricView;)V

    return-object v0
.end method

.method private getLineCount()I
    .locals 1

    .line 483
    iget-object v0, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mLyric:Lcom/yftech/car/widget/media/music/lyrics/Lyric;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mLyric:Lcom/yftech/car/widget/media/music/lyrics/Lyric;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/music/lyrics/Lyric;->getLineCount()I

    move-result p0

    :goto_0
    return p0
.end method

.method private getLineHeight(I)F
    .locals 10

    .line 958
    iget-object v0, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mLyric:Lcom/yftech/car/widget/media/music/lyrics/Lyric;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 962
    :cond_0
    invoke-direct {p0}, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->getAvailableWidth()I

    move-result v0

    .line 965
    iget-object v1, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mLyric:Lcom/yftech/car/widget/media/music/lyrics/Lyric;

    invoke-virtual {v1, p1}, Lcom/yftech/car/widget/media/music/lyrics/Lyric;->getLineText(I)Ljava/lang/String;

    move-result-object v1

    .line 966
    iget v2, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mLinearMax:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    const-string v2, "\n"

    .line 967
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 968
    array-length v4, v2

    const/4 v5, 0x0

    if-le v4, v3, :cond_1

    .line 969
    aget-object v2, v2, v5

    goto :goto_0

    :cond_1
    move-object v2, v1

    .line 974
    :goto_0
    iget-object v4, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mHighlightPaint:Landroid/text/TextPaint;

    invoke-virtual {v4, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v4

    int-to-float v0, v0

    cmpl-float v0, v4, v0

    if-lez v0, :cond_2

    .line 977
    invoke-virtual {v2, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 989
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "..."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, v2

    :goto_1
    move-object v3, v0

    goto :goto_2

    :cond_3
    move-object v3, v1

    .line 996
    :goto_2
    iget-object v0, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mStaticLayoutHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/DynamicLayout;

    .line 997
    iget v2, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mCurrentLineIndex:I

    if-ne p1, v2, :cond_4

    .line 998
    new-instance p1, Landroid/text/DynamicLayout;

    iget-object v4, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mHighlightPaint:Landroid/text/TextPaint;

    .line 999
    invoke-direct {p0}, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->getAvailableWidth()I

    move-result v5

    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, p1

    invoke-direct/range {v2 .. v9}, Landroid/text/DynamicLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    goto :goto_3

    :cond_4
    if-nez v0, :cond_5

    .line 1001
    new-instance p1, Landroid/text/DynamicLayout;

    iget-object v4, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mTextPaint:Landroid/text/TextPaint;

    .line 1002
    invoke-direct {p0}, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->getAvailableWidth()I

    move-result v5

    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, p1

    invoke-direct/range {v2 .. v9}, Landroid/text/DynamicLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 1003
    iget-object p0, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mStaticLayoutHashMap:Ljava/util/HashMap;

    invoke-virtual {p0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_5
    move-object p1, v0

    .line 1005
    :goto_3
    invoke-virtual {p1}, Landroid/text/DynamicLayout;->getHeight()I

    move-result p0

    int-to-float p0, p0

    return p0
.end method

.method private getLineIndexByTime(J)I
    .locals 1

    .line 929
    iget-object v0, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mTimeLineMapper:Lcom/yftech/car/widget/media/music/lyrics/Lyric$TimeLineMapper;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mTimeLineMapper:Lcom/yftech/car/widget/media/music/lyrics/Lyric$TimeLineMapper;

    invoke-virtual {p0, p1, p2}, Lcom/yftech/car/widget/media/music/lyrics/Lyric$TimeLineMapper;->map(J)I

    move-result p0

    :goto_0
    return p0
.end method

.method private declared-synchronized getOffsetY(I)F
    .locals 4

    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    :goto_0
    if-gt v1, p1, :cond_0

    add-int/lit8 v2, v1, -0x1

    .line 952
    :try_start_0
    invoke-direct {p0, v2}, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->getLineHeight(I)F

    move-result v2

    invoke-direct {p0, v1}, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->getLineHeight(I)F

    move-result v3

    add-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget v3, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mLineSpace:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-float v3, v3

    add-float/2addr v2, v3

    add-float/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 949
    monitor-exit p0

    throw p1

    .line 954
    :cond_0
    monitor-exit p0

    return v0
.end method

.method private getTextHeight(Ljava/lang/String;Landroid/graphics/Paint;)I
    .locals 3

    .line 892
    iget-object v0, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mRect:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 893
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mRect:Landroid/graphics/Rect;

    :cond_0
    const/4 v0, 0x0

    .line 895
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p2, p1, v0, v1, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 896
    iget-object p0, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    return p0
.end method

.method private handleActionUp()V
    .locals 14

    .line 1104
    invoke-direct {p0}, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->isOverScrolled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mOffsetY:F

    const/4 v2, 0x0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    .line 1105
    invoke-direct {p0, v1}, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->scrollToPosition(I)V

    .line 1106
    invoke-direct {p0}, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->postScrollToCurrentLine()V

    return-void

    .line 1109
    :cond_0
    invoke-direct {p0}, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->isOverScrolled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mOffsetY:F

    invoke-direct {p0}, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->getLineCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-direct {p0, v2}, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->getOffsetY(I)F

    move-result v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    .line 1110
    invoke-direct {p0}, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->getLineCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->scrollToPosition(I)V

    .line 1111
    invoke-direct {p0}, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->postScrollToCurrentLine()V

    return-void

    .line 1114
    :cond_1
    iget-object v0, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v2, 0x3e8

    iget v3, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mMaxFlingVelocity:I

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1115
    iget-object v0, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    .line 1116
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 1117
    iget v3, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mMinFlingVelocity:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    .line 1118
    iget-object v3, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mOverScroller:Landroid/widget/OverScroller;

    const/4 v4, 0x0

    iget v2, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mOffsetY:F

    float-to-int v5, v2

    const/4 v6, 0x0

    neg-float v0, v0

    float-to-int v7, v0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 1119
    invoke-direct {p0}, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->getLineCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->getOffsetY(I)F

    move-result v0

    float-to-int v11, v0

    const/4 v12, 0x0

    .line 1120
    invoke-direct {p0, v1}, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->getLineHeight(I)F

    move-result v0

    float-to-int v13, v0

    .line 1118
    invoke-virtual/range {v3 .. v13}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 1121
    invoke-direct {p0}, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->refresh()V

    .line 1123
    :cond_2
    invoke-direct {p0}, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->releaseVelocityTracker()V

    .line 1124
    invoke-direct {p0}, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->postScrollToCurrentLine()V

    return-void
.end method

.method private isEmpty()Z
    .locals 1

    .line 479
    iget-object v0, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mLyric:Lcom/yftech/car/widget/media/music/lyrics/Lyric;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mLyric:Lcom/yftech/car/widget/media/music/lyrics/Lyric;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/music/lyrics/Lyric;->getLineCount()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private isOverScrolled()Z
    .locals 3

    .line 1009
    iget v0, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mOffsetY:F

    invoke-direct {p0}, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->getLineCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-direct {p0, v1}, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->getOffsetY(I)F

    move-result v1

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_1

    iget p0, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mOffsetY:F

    const/4 v0, 0x0

    cmpg-float p0, p0, v0

    if-gez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    return v2
.end method

.method private postScrollToCurrentLine()V
    .locals 3

    .line 1129
    iget-object p0, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x4

    const-wide/16 v1, 0x9c4

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private refresh()V
    .locals 2

    .line 1170
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 1171
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->invalidate()V

    goto :goto_0

    .line 1173
    :cond_0
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->postInvalidate()V

    :goto_0
    return-void
.end method

.method private releaseVelocityTracker()V
    .locals 1

    .line 1142
    iget-object v0, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    return-void

    .line 1145
    :cond_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 1146
    iget-object v0, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    .line 1147
    iput-object v0, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mVelocityTracker:Landroid/view/VelocityTracker;

    return-void
.end method

.method private reset()V
    .locals 2

    const/4 v0, 0x0

    .line 1151
    iput-object v0, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mLyric:Lcom/yftech/car/widget/media/music/lyrics/Lyric;

    .line 1152
    iput-object v0, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mTimeLineMapper:Lcom/yftech/car/widget/media/music/lyrics/Lyric$TimeLineMapper;

    .line 1153
    iget-object v0, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mLyricMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1154
    iget-object v0, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mLyricPlayMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1155
    iget-object v0, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mStaticLayoutHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x0

    .line 1156
    iput v0, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mCurrentLineIndex:I

    const/4 v1, 0x0

    .line 1157
    iput v1, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mOffsetY:F

    .line 1158
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->isPressing:Z

    .line 1159
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->isFling:Z

    .line 1160
    iget-object v0, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1161
    invoke-direct {p0}, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->refresh()V

    return-void
.end method

.method private scrollToPosition(I)V
    .locals 3

    .line 933
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->getOffsetY(I)F

    move-result p1

    const/4 v0, 0x2

    .line 934
    new-array v0, v0, [F

    iget v1, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mOffsetY:F

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    aput p1, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 936
    iget-object v0, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 937
    iget p0, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mAnimatorSpeed:I

    int-to-long v0, p0

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 938
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method


# virtual methods
.method public computeScroll()V
    .locals 1

    .line 1134
    invoke-super {p0}, Landroid/view/View;->computeScroll()V

    .line 1135
    iget-object v0, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mOverScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1136
    iget-object v0, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mOverScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mOffsetY:F

    .line 1137
    invoke-direct {p0}, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->refresh()V

    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 547
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    const-string v0, "LyricView"

    const-string v1, "onAttachedToWindow: "

    .line 548
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    iget-object v0, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mCarMusicControlCallback:Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicControlCallback;

    if-nez v0, :cond_0

    .line 550
    invoke-direct {p0}, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->getCarMusicControlCallback()Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicControlCallback;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mCarMusicControlCallback:Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicControlCallback;

    .line 551
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MusicManager;->getInstance()Lcom/yftech/car/widget/media/manager/MusicManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mCarMusicControlCallback:Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicControlCallback;

    invoke-virtual {v0, v1}, Lcom/yftech/car/widget/media/manager/MusicManager;->registerMusicControlCallback(Lcom/yftech/car/widget/media/manager/MusicManager$OnMusicControlListener;)V

    .line 552
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MusicManager;->getInstance()Lcom/yftech/car/widget/media/manager/MusicManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/manager/MusicManager;->isPlaying()Z

    move-result v0

    iput-boolean v0, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->isPlay:Z

    .line 553
    iget-object v0, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 554
    iget-object p0, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mCarMusicControlCallback:Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicControlCallback;

    invoke-static {}, Lcom/yftech/car/widget/media/manager/MusicManager;->getInstance()Lcom/yftech/car/widget/media/manager/MusicManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/manager/MusicManager;->getPlayMusic()Lcom/yftech/car/media/data/entity/MediaFile;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicControlCallback;->onChangePlayMusic(Lcom/yftech/car/media/data/entity/MediaFile;)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 560
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    const-string v0, "LyricView"

    const-string v1, "onDetachedFromWindow: "

    .line 561
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    iget-object v0, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 563
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MusicManager;->getInstance()Lcom/yftech/car/widget/media/manager/MusicManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mCarMusicControlCallback:Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicControlCallback;

    invoke-virtual {v0, v1}, Lcom/yftech/car/widget/media/manager/MusicManager;->unregisterMusicControlCallback(Lcom/yftech/car/widget/media/manager/MusicManager$OnMusicControlListener;)V

    const/4 v0, 0x0

    .line 564
    iput-object v0, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mCarMusicControlCallback:Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicControlCallback;

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 569
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 570
    invoke-direct {p0}, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 571
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->drawEmptyText(Landroid/graphics/Canvas;)V

    return-void

    .line 574
    :cond_0
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->getPaddingStart()I

    move-result v0

    int-to-float v0, v0

    .line 575
    invoke-direct {p0}, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->getAvailableHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mHighlightOffset:F

    mul-float/2addr v1, v2

    const/4 v2, 0x0

    .line 576
    invoke-direct {p0}, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->getLineCount()I

    move-result v3

    :goto_0
    if-ge v2, v3, :cond_2

    if-lez v2, :cond_1

    add-int/lit8 v4, v2, -0x1

    .line 578
    invoke-direct {p0, v4}, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->getLineHeight(I)F

    move-result v4

    invoke-direct {p0, v2}, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->getLineHeight(I)F

    move-result v5

    add-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    iget v5, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mLineSpace:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    add-float/2addr v1, v4

    .line 580
    :cond_1
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->drawLyricLine(Landroid/graphics/Canvas;FFI)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 533
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    const-string v0, "LyricView"

    const-string v1, "onFinishInflate: "

    .line 534
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    iget v0, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mLinearMax:I

    invoke-static {v0}, Lcom/yftech/car/widget/media/music/lyrics/LrcParser;->setLinearMax(I)V

    .line 536
    iget-object v0, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mCarMusicControlCallback:Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicControlCallback;

    if-nez v0, :cond_0

    .line 537
    invoke-direct {p0}, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->getCarMusicControlCallback()Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicControlCallback;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mCarMusicControlCallback:Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicControlCallback;

    .line 538
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MusicManager;->getInstance()Lcom/yftech/car/widget/media/manager/MusicManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mCarMusicControlCallback:Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicControlCallback;

    invoke-virtual {v0, v1}, Lcom/yftech/car/widget/media/manager/MusicManager;->registerMusicControlCallback(Lcom/yftech/car/widget/media/manager/MusicManager$OnMusicControlListener;)V

    .line 539
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MusicManager;->getInstance()Lcom/yftech/car/widget/media/manager/MusicManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/manager/MusicManager;->isPlaying()Z

    move-result v0

    iput-boolean v0, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->isPlay:Z

    .line 540
    iget-object v0, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 541
    iget-object p0, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mCarMusicControlCallback:Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicControlCallback;

    invoke-static {}, Lcom/yftech/car/widget/media/manager/MusicManager;->getInstance()Lcom/yftech/car/widget/media/manager/MusicManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/manager/MusicManager;->getPlayMusic()Lcom/yftech/car/media/data/entity/MediaFile;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicControlCallback;->onChangePlayMusic(Lcom/yftech/car/media/data/entity/MediaFile;)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1014
    invoke-direct {p0}, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    iget-boolean v0, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mScrollToTouch:Z

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 1017
    :cond_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_1

    .line 1018
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1020
    :cond_1
    iget-object v0, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1021
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    .line 1037
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v4, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mLastMotionY:F

    sub-float/2addr v0, v4

    .line 1038
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mScaledTouchSlop:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_2

    .line 1039
    iput-boolean v3, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->isFling:Z

    .line 1040
    iput-boolean v2, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mIsClick:Z

    .line 1042
    :cond_2
    iget-boolean v4, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->isFling:Z

    if-eqz v4, :cond_5

    .line 1043
    invoke-direct {p0}, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->getLineCount()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-direct {p0, v2}, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->getOffsetY(I)F

    move-result v2

    .line 1044
    iget v4, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mOffsetY:F

    cmpg-float v1, v4, v1

    if-ltz v1, :cond_3

    iget v1, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mOffsetY:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4

    :cond_3
    const/high16 v1, 0x40600000    # 3.5f

    div-float/2addr v0, v1

    .line 1047
    :cond_4
    iget v1, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mOffsetY:F

    sub-float/2addr v1, v0

    iput v1, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mOffsetY:F

    .line 1048
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mLastMotionY:F

    .line 1049
    invoke-direct {p0}, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->refresh()V

    goto/16 :goto_1

    .line 1052
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mDownX:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 1053
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v1, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mDownY:F

    sub-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    .line 1054
    iget v1, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mScaledTouchSlop:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_6

    iget v0, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mScaledTouchSlop:I

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_c

    .line 1055
    :cond_6
    iput-boolean v2, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mIsClick:Z

    goto/16 :goto_1

    .line 1062
    :pswitch_1
    iget-boolean v0, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->isFling:Z

    if-nez v0, :cond_7

    .line 1063
    invoke-direct {p0}, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->refresh()V

    .line 1064
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->performClick()Z

    .line 1066
    :cond_7
    invoke-direct {p0}, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->handleActionUp()V

    .line 1067
    iput-boolean v2, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->isPressing:Z

    .line 1069
    iget-boolean v0, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mIsClick:Z

    if-eqz v0, :cond_c

    .line 1070
    iput-boolean v2, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mIsClick:Z

    .line 1072
    iget-boolean v0, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mClickItemPlay:Z

    if-eqz v0, :cond_c

    .line 1073
    invoke-direct {p0}, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->getAvailableHeight()I

    move-result v0

    int-to-float v0, v0

    .line 1074
    iget v4, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mHighlightOffset:F

    mul-float/2addr v0, v4

    .line 1076
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    sub-float/2addr p1, v0

    .line 1082
    :goto_0
    iget v0, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mOffsetY:F

    invoke-direct {p0, v2}, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->getLineHeight(I)F

    move-result v4

    sub-float v4, p1, v4

    add-float/2addr v0, v4

    cmpg-float v0, v1, v0

    if-gez v0, :cond_8

    add-int/lit8 v2, v2, 0x1

    .line 1084
    invoke-direct {p0, v2}, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->getLineHeight(I)F

    move-result v0

    iget v4, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mLineSpace:I

    int-to-float v4, v4

    add-float/2addr v0, v4

    add-float/2addr v1, v0

    goto :goto_0

    .line 1088
    :cond_8
    iget p1, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mCurrentLineIndex:I

    if-ne p1, v2, :cond_9

    if-nez v2, :cond_a

    .line 1089
    :cond_9
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MusicManager;->getInstance()Lcom/yftech/car/widget/media/manager/MusicManager;

    move-result-object p1

    iget-object v0, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mLyric:Lcom/yftech/car/widget/media/music/lyrics/Lyric;

    invoke-virtual {v0, v2}, Lcom/yftech/car/widget/media/music/lyrics/Lyric;->getLineStartTime(I)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {p1, v0}, Lcom/yftech/car/widget/media/manager/MusicManager;->setPlayProgress(I)V

    .line 1092
    :cond_a
    iget-object p0, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mLyric:Lcom/yftech/car/widget/media/music/lyrics/Lyric;

    invoke-virtual {p0, v2}, Lcom/yftech/car/widget/media/music/lyrics/Lyric;->getLineText(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "LyricView"

    .line 1094
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTouchEvent: click text=="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1024
    :pswitch_2
    iget-object v0, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1025
    iget-object v0, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mOverScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_b

    .line 1026
    iget-object v0, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mOverScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 1029
    :cond_b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mDownX:F

    .line 1030
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mDownY:F

    .line 1031
    iget p1, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mDownY:F

    iput p1, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mLastMotionY:F

    .line 1032
    iput-boolean v3, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->isPressing:Z

    .line 1033
    iput-boolean v2, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->isFling:Z

    .line 1034
    iput-boolean v3, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mIsClick:Z

    :cond_c
    :goto_1
    return v3

    .line 1015
    :cond_d
    :goto_2
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

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

.method public performClick()Z
    .locals 0

    .line 1166
    invoke-super {p0}, Landroid/view/View;->performClick()Z

    move-result p0

    return p0
.end method

.method public setLyric(Lcom/yftech/car/widget/media/music/lyrics/Lyric;)V
    .locals 2

    .line 503
    invoke-direct {p0}, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->reset()V

    const/4 v0, 0x2

    if-nez p1, :cond_0

    const/4 v1, 0x0

    .line 505
    iput-object v1, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mLyric:Lcom/yftech/car/widget/media/music/lyrics/Lyric;

    .line 506
    iput-object v1, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mTimeLineMapper:Lcom/yftech/car/widget/media/music/lyrics/Lyric$TimeLineMapper;

    .line 507
    iget-object v1, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mOnLyricLoadingListener:Lcom/yftech/car/widget/media/music/lyrics/LyricView$OnLyricLoadingListener;

    if-eqz v1, :cond_1

    .line 508
    iget-object v1, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mOnLyricLoadingListener:Lcom/yftech/car/widget/media/music/lyrics/LyricView$OnLyricLoadingListener;

    invoke-interface {v1, v0}, Lcom/yftech/car/widget/media/music/lyrics/LyricView$OnLyricLoadingListener;->onLoadLyric(I)V

    goto :goto_0

    .line 512
    :cond_0
    invoke-virtual {p1}, Lcom/yftech/car/widget/media/music/lyrics/Lyric;->removeBlankLines()Lcom/yftech/car/widget/media/music/lyrics/Lyric;

    move-result-object v1

    iput-object v1, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mLyric:Lcom/yftech/car/widget/media/music/lyrics/Lyric;

    .line 513
    iget-object v1, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mLyric:Lcom/yftech/car/widget/media/music/lyrics/Lyric;

    invoke-virtual {v1}, Lcom/yftech/car/widget/media/music/lyrics/Lyric;->newTimeLineMapper()Lcom/yftech/car/widget/media/music/lyrics/Lyric$TimeLineMapper;

    move-result-object v1

    iput-object v1, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mTimeLineMapper:Lcom/yftech/car/widget/media/music/lyrics/Lyric$TimeLineMapper;

    :cond_1
    :goto_0
    if-eqz p1, :cond_3

    .line 516
    sget-object v1, Lcom/yftech/car/widget/media/music/lyrics/Lyric;->EMPTY:Lcom/yftech/car/widget/media/music/lyrics/Lyric;

    if-ne v1, p1, :cond_2

    goto :goto_1

    .line 521
    :cond_2
    iget-object p1, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mOnLyricLoadingListener:Lcom/yftech/car/widget/media/music/lyrics/LyricView$OnLyricLoadingListener;

    if-eqz p1, :cond_4

    .line 522
    iget-object p1, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mOnLyricLoadingListener:Lcom/yftech/car/widget/media/music/lyrics/LyricView$OnLyricLoadingListener;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/yftech/car/widget/media/music/lyrics/LyricView$OnLyricLoadingListener;->onLoadLyric(I)V

    goto :goto_2

    .line 517
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mOnLyricLoadingListener:Lcom/yftech/car/widget/media/music/lyrics/LyricView$OnLyricLoadingListener;

    if-eqz p1, :cond_4

    .line 518
    iget-object p1, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mOnLyricLoadingListener:Lcom/yftech/car/widget/media/music/lyrics/LyricView$OnLyricLoadingListener;

    invoke-interface {p1, v0}, Lcom/yftech/car/widget/media/music/lyrics/LyricView$OnLyricLoadingListener;->onLoadLyric(I)V

    .line 525
    :cond_4
    :goto_2
    invoke-direct {p0}, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->refresh()V

    .line 526
    iget-boolean p1, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->isPlay:Z

    if-nez p1, :cond_5

    .line 527
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MusicManager;->getInstance()Lcom/yftech/car/widget/media/manager/MusicManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/car/widget/media/manager/MusicManager;->getCurrentPlayProgress()I

    move-result p1

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->updateTimeMills(J)V

    :cond_5
    return-void
.end method

.method setLyricMessageNoLyric()V
    .locals 1

    .line 487
    iget-object v0, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mNoLyric:Ljava/lang/String;

    iput-object v0, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mLyricMessage:Ljava/lang/String;

    return-void
.end method

.method public setOnLyricLoadingListener(Lcom/yftech/car/widget/media/music/lyrics/LyricView$OnLyricLoadingListener;)V
    .locals 0

    .line 495
    iput-object p1, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mOnLyricLoadingListener:Lcom/yftech/car/widget/media/music/lyrics/LyricView$OnLyricLoadingListener;

    return-void
.end method

.method public updateTimeMills(J)V
    .locals 1

    .line 905
    invoke-direct {p0}, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 909
    :cond_0
    iput-wide p1, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mPlayTimeMillis:J

    .line 910
    iget-object v0, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mTimeLineMapper:Lcom/yftech/car/widget/media/music/lyrics/Lyric$TimeLineMapper;

    monitor-enter v0

    .line 911
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->getLineIndexByTime(J)I

    move-result p1

    .line 912
    iget p2, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mCurrentLineIndex:I

    if-eq p2, p1, :cond_3

    .line 913
    iput p1, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mCurrentLineIndex:I

    .line 914
    iget-boolean p1, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->isPressing:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mHandler:Landroid/os/Handler;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 919
    :cond_1
    iget-object p0, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 915
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->refresh()V

    .line 916
    monitor-exit v0

    return-void

    .line 921
    :cond_3
    iget-boolean p1, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mVerbatimPlay:Z

    if-eqz p1, :cond_4

    iget p1, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->mLinearMax:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_4

    .line 922
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->invalidate()V

    .line 925
    :cond_4
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
