.class public Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;
.super Ljava/lang/Object;
.source "LayoutChildManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LayoutChildManager"


# instance fields
.field private isAnimationLoading:Z

.field private final mButtonList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yftech/car/widget/media/radio/button/RadioButton;",
            ">;"
        }
    .end annotation
.end field

.field private mCarRadioControlCallback:Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioControlCallback;

.field private final mHandler:Landroid/os/Handler;

.field private mLayout:Landroid/view/ViewGroup;

.field private final mOnClickVisibilityListener:Lcom/yftech/car/widget/media/text/VisibilityTextButton$OnClickVisibilityListener;

.field private mOnRulerViewScrollListener:Lcom/yftech/car/widget/media/radio/view/RulerView$OnRulerViewScrollListener;

.field private final mPlayAnimationList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yftech/car/widget/media/view/PlayAnimation;",
            ">;"
        }
    .end annotation
.end field

.field private final mRadioDataTextList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yftech/car/widget/media/radio/text/RadioDataText;",
            ">;"
        }
    .end annotation
.end field

.field private final mRadioTextList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yftech/car/widget/media/radio/text/RadioText;",
            ">;"
        }
    .end annotation
.end field

.field private final mRecyclerViewList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;",
            ">;"
        }
    .end annotation
.end field

.field private mRulerView:Lcom/yftech/car/widget/media/radio/view/RulerView;

.field private final mSizeCore:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/view/View;",
            "Lcom/yftech/car/widget/media/entity/SizeCore;",
            ">;"
        }
    .end annotation
.end field

.field private final mTextViewList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yftech/car/widget/media/radio/text/RadioTextView;",
            ">;"
        }
    .end annotation
.end field

.field private final mVisibilityTextButtonList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yftech/car/widget/media/text/VisibilityTextButton;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;->mTextViewList:Ljava/util/List;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;->mButtonList:Ljava/util/List;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;->mRecyclerViewList:Ljava/util/List;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;->mPlayAnimationList:Ljava/util/List;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;->mRadioTextList:Ljava/util/List;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;->mVisibilityTextButtonList:Ljava/util/List;

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;->mRadioDataTextList:Ljava/util/List;

    .line 75
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;->mSizeCore:Ljava/util/Map;

    const/4 v0, 0x0

    .line 77
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;->isAnimationLoading:Z

    .line 80
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;->mHandler:Landroid/os/Handler;

    .line 532
    new-instance v0, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager$3;

    invoke-direct {v0, p0}, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager$3;-><init>(Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;)V

    iput-object v0, p0, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;->mOnClickVisibilityListener:Lcom/yftech/car/widget/media/text/VisibilityTextButton$OnClickVisibilityListener;

    return-void
.end method

.method static synthetic access$000(Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;)Landroid/view/ViewGroup;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;->mLayout:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$100(Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;)Ljava/util/List;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;->mButtonList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;)Ljava/util/List;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;->mVisibilityTextButtonList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;)Ljava/util/List;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;->mRecyclerViewList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;)Ljava/util/List;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;->mPlayAnimationList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400(Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;)Ljava/util/List;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;->mTextViewList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$500(Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;)Ljava/util/List;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;->mRadioTextList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$600(Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;)Lcom/yftech/car/widget/media/radio/view/RulerView;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;->mRulerView:Lcom/yftech/car/widget/media/radio/view/RulerView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;)Z
    .locals 0

    .line 52
    iget-boolean p0, p0, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;->isAnimationLoading:Z

    return p0
.end method

.method static synthetic access$702(Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;Z)Z
    .locals 0

    .line 52
    iput-boolean p1, p0, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;->isAnimationLoading:Z

    return p1
.end method

.method static synthetic access$800(Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;Landroid/view/View;II)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2, p3}, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;->visibilityVisible(Landroid/view/View;II)V

    return-void
.end method

.method static synthetic access$900(Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;Landroid/view/View;II)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2, p3}, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;->visibilityGone(Landroid/view/View;II)V

    return-void
.end method

.method private getCarRadioControlCallback()Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioControlCallback;
    .locals 1

    .line 207
    new-instance v0, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager$1;

    invoke-direct {v0, p0}, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager$1;-><init>(Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;)V

    return-object v0
.end method

.method private getOnRulerViewScrollListener()Lcom/yftech/car/widget/media/radio/view/RulerView$OnRulerViewScrollListener;
    .locals 1

    .line 385
    new-instance v0, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager$2;

    invoke-direct {v0, p0}, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager$2;-><init>(Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;)V

    return-object v0
.end method

.method public static synthetic lambda$initView$0(Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;Lcom/yftech/car/widget/media/text/VisibilityTextButton;)V
    .locals 0

    .line 168
    iget-object p0, p0, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {p1, p0}, Lcom/yftech/car/widget/media/text/VisibilityTextButton;->isMediaDataListShow(Landroid/view/View;)Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/yftech/car/widget/media/text/VisibilityTextButton;->setVisibilityShow(Z)V

    return-void
.end method

.method private visibilityGone(Landroid/view/View;II)V
    .locals 10

    packed-switch p2, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    const/4 p0, 0x0

    .line 472
    invoke-static {p1, p3, p0}, Lcom/yftech/car/widget/media/utils/AnimationUtil;->showAlphaAnimation(Landroid/view/View;IZ)V

    goto/16 :goto_1

    .line 431
    :pswitch_1
    iget-object p2, p0, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;->mSizeCore:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/yftech/car/widget/media/entity/SizeCore;

    const/high16 v0, 0x40000000    # 2.0f

    if-eqz p2, :cond_0

    .line 435
    iget v1, p2, Lcom/yftech/car/widget/media/entity/SizeCore;->childAtCoreX:F

    .line 436
    iget p2, p2, Lcom/yftech/car/widget/media/entity/SizeCore;->childAtCoreY:F

    goto :goto_0

    .line 438
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v0

    add-float/2addr v1, p2

    .line 439
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v0

    add-float/2addr p2, v2

    .line 440
    new-instance v2, Lcom/yftech/car/widget/media/entity/SizeCore;

    invoke-direct {v2}, Lcom/yftech/car/widget/media/entity/SizeCore;-><init>()V

    .line 441
    iput v1, v2, Lcom/yftech/car/widget/media/entity/SizeCore;->childAtCoreX:F

    .line 442
    iput p2, v2, Lcom/yftech/car/widget/media/entity/SizeCore;->childAtCoreY:F

    .line 443
    iget-object v3, p0, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;->mSizeCore:Ljava/util/Map;

    invoke-interface {v3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    :goto_0
    iget-object v2, p0, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v0

    .line 447
    iget-object v3, p0, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v0

    cmpg-float v0, v1, v2

    if-gez v0, :cond_1

    sub-float v0, p2, v3

    .line 449
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sub-float v4, v1, v2

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v0, v0, v4

    if-gez v0, :cond_1

    const/4 v6, 0x0

    .line 451
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result p2

    add-float/2addr p0, p2

    neg-float v7, p0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, p1

    move v5, p3

    invoke-static/range {v4 .. v9}, Lcom/yftech/car/widget/media/utils/AnimationUtil;->showTranslateAnimation(Landroid/view/View;IFFFF)V

    goto/16 :goto_1

    :cond_1
    cmpg-float v0, p2, v3

    if-gez v0, :cond_2

    sub-float v0, v2, v1

    .line 453
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sub-float v4, p2, v3

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v0, v0, v4

    if-gez v0, :cond_2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 455
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result p2

    add-float/2addr p0, p2

    neg-float v9, p0

    move-object v4, p1

    move v5, p3

    invoke-static/range {v4 .. v9}, Lcom/yftech/car/widget/media/utils/AnimationUtil;->showTranslateAnimation(Landroid/view/View;IFFFF)V

    goto :goto_1

    :cond_2
    cmpg-float v0, v2, v1

    if-gez v0, :cond_3

    sub-float/2addr v1, v2

    .line 457
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sub-float/2addr p2, v3

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    cmpl-float p2, v0, p2

    if-lez p2, :cond_3

    .line 459
    iget-object p0, p0, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p2, v0

    sub-float/2addr p0, p2

    const/4 v2, 0x0

    .line 461
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p2

    int-to-float p2, p2

    add-float v3, p2, p0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move v1, p3

    invoke-static/range {v0 .. v5}, Lcom/yftech/car/widget/media/utils/AnimationUtil;->showTranslateAnimation(Landroid/view/View;IFFFF)V

    goto :goto_1

    .line 465
    :cond_3
    iget-object p0, p0, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p2, v0

    sub-float/2addr p0, p2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 467
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p2

    int-to-float p2, p2

    add-float v5, p2, p0

    move-object v0, p1

    move v1, p3

    invoke-static/range {v0 .. v5}, Lcom/yftech/car/widget/media/utils/AnimationUtil;->showTranslateAnimation(Landroid/view/View;IFFFF)V

    :goto_1
    const/16 p0, 0x8

    .line 478
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private visibilityVisible(Landroid/view/View;II)V
    .locals 10

    const/4 v0, 0x0

    .line 482
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    packed-switch p2, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    const/4 p0, 0x1

    .line 521
    invoke-static {p1, p3, p0}, Lcom/yftech/car/widget/media/utils/AnimationUtil;->showAlphaAnimation(Landroid/view/View;IZ)V

    goto/16 :goto_1

    .line 486
    :pswitch_1
    iget-object p2, p0, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;->mSizeCore:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/yftech/car/widget/media/entity/SizeCore;

    const/high16 v0, 0x40000000    # 2.0f

    if-eqz p2, :cond_0

    .line 490
    iget v1, p2, Lcom/yftech/car/widget/media/entity/SizeCore;->childAtCoreX:F

    .line 491
    iget p2, p2, Lcom/yftech/car/widget/media/entity/SizeCore;->childAtCoreY:F

    goto :goto_0

    .line 493
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v0

    add-float/2addr v1, p2

    .line 494
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v0

    add-float/2addr p2, v2

    .line 495
    new-instance v2, Lcom/yftech/car/widget/media/entity/SizeCore;

    invoke-direct {v2}, Lcom/yftech/car/widget/media/entity/SizeCore;-><init>()V

    .line 496
    iput v1, v2, Lcom/yftech/car/widget/media/entity/SizeCore;->childAtCoreX:F

    .line 497
    iput p2, v2, Lcom/yftech/car/widget/media/entity/SizeCore;->childAtCoreY:F

    .line 498
    iget-object v3, p0, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;->mSizeCore:Ljava/util/Map;

    invoke-interface {v3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    :goto_0
    iget-object v2, p0, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v0

    .line 502
    iget-object v3, p0, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v0

    cmpg-float v0, v1, v2

    if-gez v0, :cond_1

    sub-float v0, p2, v3

    .line 504
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sub-float v4, v1, v2

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v0, v0, v4

    if-gez v0, :cond_1

    .line 506
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result p2

    add-float/2addr p0, p2

    neg-float v2, p0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move v1, p3

    invoke-static/range {v0 .. v5}, Lcom/yftech/car/widget/media/utils/AnimationUtil;->showTranslateAnimation(Landroid/view/View;IFFFF)V

    goto/16 :goto_1

    :cond_1
    cmpg-float v0, p2, v3

    if-gez v0, :cond_2

    sub-float v0, v2, v1

    .line 508
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sub-float v4, p2, v3

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v0, v0, v4

    if-gez v0, :cond_2

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 510
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result p2

    add-float/2addr p0, p2

    neg-float v8, p0

    const/4 v9, 0x0

    move-object v4, p1

    move v5, p3

    invoke-static/range {v4 .. v9}, Lcom/yftech/car/widget/media/utils/AnimationUtil;->showTranslateAnimation(Landroid/view/View;IFFFF)V

    goto :goto_1

    :cond_2
    cmpg-float v0, v2, v1

    if-gez v0, :cond_3

    sub-float/2addr v1, v2

    .line 512
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sub-float/2addr p2, v3

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    cmpl-float p2, v0, p2

    if-lez p2, :cond_3

    .line 513
    iget-object p0, p0, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p2, v0

    sub-float/2addr p0, p2

    .line 514
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p2

    int-to-float p2, p2

    add-float v2, p2, p0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move v1, p3

    invoke-static/range {v0 .. v5}, Lcom/yftech/car/widget/media/utils/AnimationUtil;->showTranslateAnimation(Landroid/view/View;IFFFF)V

    goto :goto_1

    .line 516
    :cond_3
    iget-object p0, p0, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p2, v0

    sub-float/2addr p0, p2

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 517
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p2

    int-to-float p2, p2

    add-float v4, p2, p0

    const/4 v5, 0x0

    move-object v0, p1

    move v1, p3

    invoke-static/range {v0 .. v5}, Lcom/yftech/car/widget/media/utils/AnimationUtil;->showTranslateAnimation(Landroid/view/View;IFFFF)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public initView(Landroid/view/ViewGroup;)V
    .locals 6

    .line 85
    iput-object p1, p0, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;->mLayout:Landroid/view/ViewGroup;

    .line 86
    iget-object v0, p0, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;->mCarRadioControlCallback:Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioControlCallback;

    if-nez v0, :cond_15

    .line 87
    invoke-direct {p0}, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;->getCarRadioControlCallback()Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioControlCallback;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;->mCarRadioControlCallback:Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioControlCallback;

    .line 88
    iget-object v0, p0, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;->mCarRadioControlCallback:Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioControlCallback;

    iget-object v1, p0, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;->mHandler:Landroid/os/Handler;

    invoke-static {v0, v1}, Lcom/yftech/car/widget/media/manager/RadioManager;->registerRadioControlCallback(Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioControlCallback;Landroid/os/Handler;)V

    .line 90
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 91
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 92
    :cond_0
    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_a

    .line 93
    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 94
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 95
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 96
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_3

    .line 97
    instance-of v3, v2, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    if-eqz v3, :cond_1

    .line 98
    iget-object v3, p0, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;->mRecyclerViewList:Ljava/util/List;

    check-cast v2, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 99
    :cond_1
    instance-of v3, v2, Lcom/yftech/car/widget/media/radio/text/RadioTextView;

    if-eqz v3, :cond_2

    .line 100
    iget-object v3, p0, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;->mTextViewList:Ljava/util/List;

    check-cast v2, Lcom/yftech/car/widget/media/radio/text/RadioTextView;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 102
    :cond_2
    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 105
    :cond_3
    instance-of v3, v2, Lcom/yftech/car/widget/media/radio/button/RadioButton;

    if-eqz v3, :cond_4

    .line 106
    check-cast v2, Lcom/yftech/car/widget/media/radio/button/RadioButton;

    .line 107
    iget-object v3, p0, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;->mButtonList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 108
    :cond_4
    instance-of v3, v2, Lcom/yftech/car/widget/media/radio/view/RulerView;

    if-eqz v3, :cond_5

    .line 109
    iget-object v3, p0, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;->mRulerView:Lcom/yftech/car/widget/media/radio/view/RulerView;

    if-nez v3, :cond_9

    .line 110
    check-cast v2, Lcom/yftech/car/widget/media/radio/view/RulerView;

    iput-object v2, p0, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;->mRulerView:Lcom/yftech/car/widget/media/radio/view/RulerView;

    goto :goto_1

    .line 112
    :cond_5
    instance-of v3, v2, Lcom/yftech/car/widget/media/view/PlayAnimation;

    if-eqz v3, :cond_6

    .line 113
    iget-object v3, p0, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;->mPlayAnimationList:Ljava/util/List;

    check-cast v2, Lcom/yftech/car/widget/media/view/PlayAnimation;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 114
    :cond_6
    instance-of v3, v2, Lcom/yftech/car/widget/media/radio/text/RadioText;

    if-eqz v3, :cond_7

    .line 115
    iget-object v3, p0, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;->mRadioTextList:Ljava/util/List;

    check-cast v2, Lcom/yftech/car/widget/media/radio/text/RadioText;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 116
    :cond_7
    instance-of v3, v2, Lcom/yftech/car/widget/media/text/VisibilityTextButton;

    if-eqz v3, :cond_8

    .line 117
    iget-object v3, p0, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;->mVisibilityTextButtonList:Ljava/util/List;

    check-cast v2, Lcom/yftech/car/widget/media/text/VisibilityTextButton;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 118
    :cond_8
    instance-of v3, v2, Lcom/yftech/car/widget/media/radio/text/RadioDataText;

    if-eqz v3, :cond_9

    .line 119
    iget-object v3, p0, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;->mRadioDataTextList:Ljava/util/List;

    check-cast v2, Lcom/yftech/car/widget/media/radio/text/RadioDataText;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 124
    :cond_a
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager;->getInstance()Lcom/yftech/car/widget/media/manager/RadioManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/car/widget/media/manager/RadioManager;->getFreq()Lcom/yftech/car/media/radio/entity/DataOfRadio;

    move-result-object p1

    .line 126
    iget-object v0, p0, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;->mRulerView:Lcom/yftech/car/widget/media/radio/view/RulerView;

    if-eqz v0, :cond_c

    .line 127
    iget-object v0, p0, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;->mOnRulerViewScrollListener:Lcom/yftech/car/widget/media/radio/view/RulerView$OnRulerViewScrollListener;

    if-nez v0, :cond_b

    .line 128
    invoke-direct {p0}, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;->getOnRulerViewScrollListener()Lcom/yftech/car/widget/media/radio/view/RulerView$OnRulerViewScrollListener;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;->mOnRulerViewScrollListener:Lcom/yftech/car/widget/media/radio/view/RulerView$OnRulerViewScrollListener;

    .line 130
    :cond_b
    iget-object v0, p0, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;->mRulerView:Lcom/yftech/car/widget/media/radio/view/RulerView;

    iget-object v2, p0, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;->mOnRulerViewScrollListener:Lcom/yftech/car/widget/media/radio/view/RulerView$OnRulerViewScrollListener;

    invoke-virtual {v0, v2}, Lcom/yftech/car/widget/media/radio/view/RulerView;->setScrollingListener(Lcom/yftech/car/widget/media/radio/view/RulerView$OnRulerViewScrollListener;)V

    .line 132
    invoke-virtual {p1}, Lcom/yftech/car/media/radio/entity/DataOfRadio;->getType()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_c

    .line 134
    iget-object v0, p0, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;->mRulerView:Lcom/yftech/car/widget/media/radio/view/RulerView;

    invoke-virtual {v0, p1}, Lcom/yftech/car/widget/media/radio/view/RulerView;->setCurrentValue(Lcom/yftech/car/media/radio/entity/DataOfRadio;)V

    .line 138
    :cond_c
    iget-object v0, p0, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;->mRadioTextList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yftech/car/widget/media/radio/text/RadioText;

    .line 139
    invoke-virtual {v2, p1}, Lcom/yftech/car/widget/media/radio/text/RadioText;->setRadioText(Lcom/yftech/car/media/radio/entity/DataOfRadio;)V

    goto :goto_2

    .line 141
    :cond_d
    iget-object v0, p0, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;->mTextViewList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yftech/car/widget/media/radio/text/RadioTextView;

    .line 142
    invoke-virtual {v2, p1}, Lcom/yftech/car/widget/media/radio/text/RadioTextView;->setRadioText(Lcom/yftech/car/media/radio/entity/DataOfRadio;)V

    goto :goto_3

    .line 145
    :cond_e
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager;->getInstance()Lcom/yftech/car/widget/media/manager/RadioManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/manager/RadioManager;->isPlaying()Z

    move-result v0

    .line 147
    invoke-static {}, Lcom/yftech/car/widget/media/radio/RadioDataPlayManager;->getInstance()Lcom/yftech/car/widget/media/radio/RadioDataPlayManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/yftech/car/widget/media/radio/RadioDataPlayManager;->setPlayFreq(Lcom/yftech/car/media/radio/entity/DataOfRadio;)Lcom/yftech/car/widget/media/radio/RadioDataPlayManager;

    .line 148
    invoke-static {}, Lcom/yftech/car/widget/media/radio/RadioDataPlayManager;->getInstance()Lcom/yftech/car/widget/media/radio/RadioDataPlayManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/yftech/car/widget/media/radio/RadioDataPlayManager;->setPlaying(Z)Lcom/yftech/car/widget/media/radio/RadioDataPlayManager;

    .line 150
    iget-object v2, p0, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;->mPlayAnimationList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yftech/car/widget/media/view/PlayAnimation;

    .line 151
    invoke-virtual {v3, v0}, Lcom/yftech/car/widget/media/view/PlayAnimation;->setPlay(Z)V

    goto :goto_4

    .line 154
    :cond_f
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager;->getInstance()Lcom/yftech/car/widget/media/manager/RadioManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yftech/car/widget/media/manager/RadioManager;->getScanStatus()I

    move-result v2

    .line 156
    iget-object v3, p0, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;->mButtonList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_10
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yftech/car/widget/media/radio/button/RadioButton;

    const/4 v5, 0x6

    .line 157
    invoke-virtual {v4, v5}, Lcom/yftech/car/widget/media/radio/button/RadioButton;->isFunction(I)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 158
    invoke-virtual {v4}, Lcom/yftech/car/widget/media/radio/button/RadioButton;->isRadioScanStatusPause()Z

    move-result v5

    if-eqz v5, :cond_11

    if-eqz v2, :cond_11

    .line 159
    invoke-virtual {v4, v1}, Lcom/yftech/car/widget/media/radio/button/RadioButton;->setActivatedStatus(Z)V

    goto :goto_5

    .line 161
    :cond_11
    invoke-virtual {v4, v0}, Lcom/yftech/car/widget/media/radio/button/RadioButton;->setActivatedStatus(Z)V

    goto :goto_5

    .line 166
    :cond_12
    iget-object v0, p0, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;->mVisibilityTextButtonList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/car/widget/media/text/VisibilityTextButton;

    .line 167
    iget-object v2, p0, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;->mOnClickVisibilityListener:Lcom/yftech/car/widget/media/text/VisibilityTextButton$OnClickVisibilityListener;

    invoke-virtual {v1, v2}, Lcom/yftech/car/widget/media/text/VisibilityTextButton;->setOnClickVisibilityListener(Lcom/yftech/car/widget/media/text/VisibilityTextButton$OnClickVisibilityListener;)V

    .line 168
    new-instance v2, Lcom/yftech/car/widget/media/radio/layout/-$$Lambda$LayoutChildManager$qcLsOya6OuhrphzrNULNjWwytSo;

    invoke-direct {v2, p0, v1}, Lcom/yftech/car/widget/media/radio/layout/-$$Lambda$LayoutChildManager$qcLsOya6OuhrphzrNULNjWwytSo;-><init>(Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;Lcom/yftech/car/widget/media/text/VisibilityTextButton;)V

    invoke-virtual {v1, v2}, Lcom/yftech/car/widget/media/text/VisibilityTextButton;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_6

    .line 170
    :cond_13
    iget-object v0, p0, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;->mRecyclerViewList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_14
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    .line 171
    instance-of v2, v1, Lcom/yftech/car/widget/media/radio/list/RadioDataList;

    if-eqz v2, :cond_14

    .line 172
    check-cast v1, Lcom/yftech/car/widget/media/radio/list/RadioDataList;

    .line 173
    iget-object v2, p0, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;->mRadioDataTextList:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/yftech/car/widget/media/radio/list/RadioDataList;->setRadioDataTextList(Ljava/util/List;)V

    .line 174
    invoke-virtual {v1, p1}, Lcom/yftech/car/widget/media/radio/list/RadioDataList;->updateList(Lcom/yftech/car/media/radio/entity/DataOfRadio;)V

    goto :goto_7

    :cond_15
    const-string p1, "LayoutChildManager"

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initView: mTextViewList=="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;->mTextViewList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",mButtonList=="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;->mButtonList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    return-void
.end method

.method public unregister()V
    .locals 2

    .line 190
    iget-object v0, p0, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;->mCarRadioControlCallback:Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioControlCallback;

    if-eqz v0, :cond_1

    .line 191
    iget-object v0, p0, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;->mCarRadioControlCallback:Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioControlCallback;

    invoke-static {v0}, Lcom/yftech/car/widget/media/manager/RadioManager;->unregisterRadioControlCallback(Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioControlCallback;)V

    .line 192
    iget-object v0, p0, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;->mRulerView:Lcom/yftech/car/widget/media/radio/view/RulerView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;->mRulerView:Lcom/yftech/car/widget/media/radio/view/RulerView;

    invoke-virtual {v0, v1}, Lcom/yftech/car/widget/media/radio/view/RulerView;->setScrollingListener(Lcom/yftech/car/widget/media/radio/view/RulerView$OnRulerViewScrollListener;)V

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;->mTextViewList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 196
    iget-object v0, p0, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;->mButtonList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 197
    iget-object v0, p0, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;->mRecyclerViewList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 198
    iget-object v0, p0, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;->mPlayAnimationList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 199
    iget-object v0, p0, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;->mRadioTextList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 200
    iput-object v1, p0, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;->mCarRadioControlCallback:Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioControlCallback;

    .line 201
    iget-object v0, p0, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;->mVisibilityTextButtonList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 202
    iput-object v1, p0, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager;->mLayout:Landroid/view/ViewGroup;

    :cond_1
    return-void
.end method
