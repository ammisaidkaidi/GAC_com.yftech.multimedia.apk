.class public Landroid/widget/LinearLayout;
.super Landroid/view/ViewGroup;
.source "LinearLayout.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/LinearLayout$LayoutParams;,
        Landroid/widget/LinearLayout$DividerMode;,
        Landroid/widget/LinearLayout$OrientationMode;
    }
.end annotation


# static fields
.field public static final HORIZONTAL:I = 0x0

.field private static final INDEX_BOTTOM:I = 0x2

.field private static final INDEX_CENTER_VERTICAL:I = 0x0

.field private static final INDEX_FILL:I = 0x3

.field private static final INDEX_TOP:I = 0x1

.field public static final SHOW_DIVIDER_BEGINNING:I = 0x1

.field public static final SHOW_DIVIDER_END:I = 0x4

.field public static final SHOW_DIVIDER_MIDDLE:I = 0x2

.field public static final SHOW_DIVIDER_NONE:I = 0x0

.field public static final VERTICAL:I = 0x1

.field private static final VERTICAL_GRAVITY_COUNT:I = 0x4

.field private static sCompatibilityDone:Z = false

.field private static sRemeasureWeightedChildren:Z = true


# instance fields
.field private final mAllowInconsistentMeasurement:Z

.field private mBaselineAligned:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private mBaselineAlignedChildIndex:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private mBaselineChildTop:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
    .end annotation
.end field

.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private mDividerHeight:I

.field private mDividerPadding:I

.field private mDividerWidth:I

.field private mGravity:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
        flagMapping = {
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = -0x1
                mask = -0x1
                name = "NONE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x0
                mask = 0x0
                name = "NONE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x30
                mask = 0x30
                name = "TOP"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x50
                mask = 0x50
                name = "BOTTOM"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x3
                mask = 0x3
                name = "LEFT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x5
                mask = 0x5
                name = "RIGHT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x800003
                mask = 0x800003
                name = "START"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x800005
                mask = 0x800005
                name = "END"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x10
                mask = 0x10
                name = "CENTER_VERTICAL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x70
                mask = 0x70
                name = "FILL_VERTICAL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x1
                mask = 0x1
                name = "CENTER_HORIZONTAL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x7
                mask = 0x7
                name = "FILL_HORIZONTAL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x11
                mask = 0x11
                name = "CENTER"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x77
                mask = 0x77
                name = "FILL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x800000
                mask = 0x800000
                name = "RELATIVE"
            .end subannotation
        }
        formatToHexString = true
    .end annotation
.end field

.field private mLayoutDirection:I

.field private mMaxAscent:[I

.field private mMaxDescent:[I

.field private mOrientation:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
    .end annotation
.end field

.field private mShowDividers:I

.field private mTotalLength:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
    .end annotation
.end field

.field private mUseLargestChild:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private mWeightSum:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 232
    invoke-direct {p0, p1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 236
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 240
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 5

    .line 244
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x1

    .line 135
    iput-boolean v0, p0, Landroid/widget/LinearLayout;->mBaselineAligned:Z

    const/4 v1, -0x1

    .line 145
    iput v1, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    const/4 v2, 0x0

    .line 153
    iput v2, p0, Landroid/widget/LinearLayout;->mBaselineChildTop:I

    const v3, 0x800033

    .line 159
    iput v3, p0, Landroid/widget/LinearLayout;->mGravity:I

    .line 218
    iput v1, p0, Landroid/widget/LinearLayout;->mLayoutDirection:I

    .line 246
    sget-boolean v3, Landroid/widget/LinearLayout;->sCompatibilityDone:Z

    if-nez v3, :cond_1

    if-eqz p1, :cond_1

    .line 247
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0x1c

    if-lt v3, v4, :cond_0

    move v3, v0

    goto :goto_0

    :cond_0
    move v3, v2

    .line 250
    :goto_0
    sput-boolean v3, Landroid/widget/LinearLayout;->sRemeasureWeightedChildren:Z

    .line 252
    sput-boolean v0, Landroid/widget/LinearLayout;->sCompatibilityDone:Z

    .line 255
    :cond_1
    sget-object v3, Lcom/android/internal/R$styleable;->LinearLayout:[I

    invoke-virtual {p1, p2, v3, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 258
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    if-ltz p3, :cond_2

    .line 260
    invoke-virtual {p0, p3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 263
    :cond_2
    invoke-virtual {p2, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    if-ltz p3, :cond_3

    .line 265
    invoke-virtual {p0, p3}, Landroid/widget/LinearLayout;->setGravity(I)V

    :cond_3
    const/4 p3, 0x2

    .line 268
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    if-nez p3, :cond_4

    .line 270
    invoke-virtual {p0, p3}, Landroid/widget/LinearLayout;->setBaselineAligned(Z)V

    :cond_4
    const/4 p3, 0x4

    const/high16 p4, -0x40800000    # -1.0f

    .line 273
    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p3

    iput p3, p0, Landroid/widget/LinearLayout;->mWeightSum:F

    const/4 p3, 0x3

    .line 276
    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    const/4 p3, 0x6

    .line 278
    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Landroid/widget/LinearLayout;->mUseLargestChild:Z

    const/4 p3, 0x7

    .line 280
    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, p0, Landroid/widget/LinearLayout;->mShowDividers:I

    const/16 p3, 0x8

    .line 281
    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Landroid/widget/LinearLayout;->mDividerPadding:I

    const/4 p3, 0x5

    .line 282
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p0, p3}, Landroid/widget/LinearLayout;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 284
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 p3, 0x17

    if-gt p1, p3, :cond_5

    goto :goto_1

    :cond_5
    move v0, v2

    .line 285
    :goto_1
    iput-boolean v0, p0, Landroid/widget/LinearLayout;->mAllowInconsistentMeasurement:Z

    .line 287
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private allViewsAreGoneBefore(I)Z
    .locals 3

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    :goto_0
    if-ltz p1, :cond_1

    .line 736
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 737
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private forceUniformHeight(II)V
    .locals 10

    .line 1475
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    .line 1478
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1479
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v4, 0x8

    if-eq v2, v4, :cond_0

    .line 1480
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/LinearLayout$LayoutParams;

    .line 1482
    iget v2, v8, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_0

    .line 1485
    iget v9, v8, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1486
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iput v2, v8, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move v4, p2

    move v6, v0

    .line 1489
    invoke-virtual/range {v2 .. v7}, Landroid/widget/LinearLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 1490
    iput v9, v8, Landroid/widget/LinearLayout$LayoutParams;->width:I

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private forceUniformWidth(II)V
    .locals 10

    .line 1053
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    .line 1056
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1057
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v4, 0x8

    if-eq v2, v4, :cond_0

    .line 1058
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/LinearLayout$LayoutParams;

    .line 1060
    iget v2, v8, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_0

    .line 1063
    iget v9, v8, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1064
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iput v2, v8, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move v4, v0

    move v6, p2

    .line 1067
    invoke-virtual/range {v2 .. v7}, Landroid/widget/LinearLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 1068
    iput v9, v8, Landroid/widget/LinearLayout$LayoutParams;->height:I

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private getLastNonGoneChild()Landroid/view/View;
    .locals 4

    .line 453
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVirtualChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 454
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 455
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private isShowingDividers()Z
    .locals 1

    .line 295
    iget v0, p0, Landroid/widget/LinearLayout;->mShowDividers:I

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/widget/LinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private setChildFrame(Landroid/view/View;IIII)V
    .locals 0

    add-int/2addr p4, p2

    add-int/2addr p5, p3

    .line 1812
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    .line 1932
    instance-of p0, p1, Landroid/widget/LinearLayout$LayoutParams;

    return p0
.end method

.method drawDividersHorizontal(Landroid/graphics/Canvas;)V
    .locals 6

    .line 463
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVirtualChildCount()I

    move-result v0

    .line 464
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isLayoutRtl()Z

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 466
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 467
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_1

    .line 468
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 469
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v1, :cond_0

    .line 472
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    iget v4, v4, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    goto :goto_1

    .line 474
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    iget v4, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/widget/LinearLayout;->mDividerWidth:I

    sub-int/2addr v3, v4

    .line 476
    :goto_1
    invoke-virtual {p0, p1, v3}, Landroid/widget/LinearLayout;->drawVerticalDivider(Landroid/graphics/Canvas;I)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 481
    :cond_2
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 482
    invoke-direct {p0}, Landroid/widget/LinearLayout;->getLastNonGoneChild()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_4

    if-eqz v1, :cond_3

    .line 486
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v0

    goto :goto_2

    .line 488
    :cond_3
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/widget/LinearLayout;->mDividerWidth:I

    sub-int/2addr v0, v1

    goto :goto_2

    .line 491
    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v1, :cond_5

    .line 493
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget v1, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/widget/LinearLayout;->mDividerWidth:I

    sub-int/2addr v0, v1

    goto :goto_2

    .line 495
    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    iget v1, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v0, v1

    .line 498
    :goto_2
    invoke-virtual {p0, p1, v0}, Landroid/widget/LinearLayout;->drawVerticalDivider(Landroid/graphics/Canvas;I)V

    :cond_6
    return-void
.end method

.method drawDividersVertical(Landroid/graphics/Canvas;)V
    .locals 5

    .line 423
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVirtualChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 425
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 426
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    .line 427
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 428
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 429
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget v3, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/widget/LinearLayout;->mDividerHeight:I

    sub-int/2addr v2, v3

    .line 430
    invoke-virtual {p0, p1, v2}, Landroid/widget/LinearLayout;->drawHorizontalDivider(Landroid/graphics/Canvas;I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 435
    :cond_1
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 436
    invoke-direct {p0}, Landroid/widget/LinearLayout;->getLastNonGoneChild()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    .line 439
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/widget/LinearLayout;->mDividerHeight:I

    sub-int/2addr v0, v1

    goto :goto_1

    .line 441
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 442
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v1, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    .line 444
    :goto_1
    invoke-virtual {p0, p1, v0}, Landroid/widget/LinearLayout;->drawHorizontalDivider(Landroid/graphics/Canvas;I)V

    :cond_3
    return-void
.end method

.method drawHorizontalDivider(Landroid/graphics/Canvas;I)V
    .locals 4

    .line 503
    iget-object v0, p0, Landroid/widget/LinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Landroid/widget/LinearLayout;->mDividerPadding:I

    add-int/2addr v1, v2

    .line 504
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/widget/LinearLayout;->mDividerPadding:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/widget/LinearLayout;->mDividerHeight:I

    add-int/2addr v3, p2

    .line 503
    invoke-virtual {v0, v1, p2, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 505
    iget-object p0, p0, Landroid/widget/LinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method drawVerticalDivider(Landroid/graphics/Canvas;I)V
    .locals 5

    .line 509
    iget-object v0, p0, Landroid/widget/LinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v1

    iget v2, p0, Landroid/widget/LinearLayout;->mDividerPadding:I

    add-int/2addr v1, v2

    iget v2, p0, Landroid/widget/LinearLayout;->mDividerWidth:I

    add-int/2addr v2, p2

    .line 510
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/widget/LinearLayout;->mDividerPadding:I

    sub-int/2addr v3, v4

    .line 509
    invoke-virtual {v0, p2, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 511
    iget-object p0, p0, Landroid/widget/LinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .locals 2

    .line 1943
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    const-string v0, "layout:baselineAligned"

    .line 1944
    iget-boolean v1, p0, Landroid/widget/LinearLayout;->mBaselineAligned:Z

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    const-string v0, "layout:baselineAlignedChildIndex"

    .line 1945
    iget v1, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    const-string v0, "measurement:baselineChildTop"

    .line 1946
    iget v1, p0, Landroid/widget/LinearLayout;->mBaselineChildTop:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    const-string v0, "measurement:orientation"

    .line 1947
    iget v1, p0, Landroid/widget/LinearLayout;->mOrientation:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    const-string v0, "measurement:gravity"

    .line 1948
    iget v1, p0, Landroid/widget/LinearLayout;->mGravity:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    const-string v0, "measurement:totalLength"

    .line 1949
    iget v1, p0, Landroid/widget/LinearLayout;->mTotalLength:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    const-string v0, "layout:totalLength"

    .line 1950
    iget v1, p0, Landroid/widget/LinearLayout;->mTotalLength:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    const-string v0, "layout:useLargestChild"

    .line 1951
    iget-boolean p0, p0, Landroid/widget/LinearLayout;->mUseLargestChild:Z

    invoke-virtual {p1, v0, p0}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    return-void
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 87
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method protected generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 2

    .line 1908
    iget v0, p0, Landroid/widget/LinearLayout;->mOrientation:I

    const/4 v1, -0x2

    if-nez v0, :cond_0

    .line 1909
    new-instance p0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    return-object p0

    .line 1910
    :cond_0
    iget p0, p0, Landroid/widget/LinearLayout;->mOrientation:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 1911
    new-instance p0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p0, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 87
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 87
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1

    .line 1895
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 0

    .line 1918
    sget-boolean p0, Landroid/widget/LinearLayout;->sPreserveMarginParamsInLayoutParamConversion:Z

    if-eqz p0, :cond_1

    .line 1919
    instance-of p0, p1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz p0, :cond_0

    .line 1920
    new-instance p0, Landroid/widget/LinearLayout$LayoutParams;

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/widget/LinearLayout$LayoutParams;)V

    return-object p0

    .line 1921
    :cond_0
    instance-of p0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p0, :cond_1

    .line 1922
    new-instance p0, Landroid/widget/LinearLayout$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object p0

    .line 1925
    :cond_1
    new-instance p0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p0
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 0

    .line 1937
    const-class p0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getBaseline()I
    .locals 5

    .line 571
    iget v0, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    if-gez v0, :cond_0

    .line 572
    invoke-super {p0}, Landroid/view/ViewGroup;->getBaseline()I

    move-result p0

    return p0

    .line 575
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    iget v1, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    if-le v0, v1, :cond_6

    .line 580
    iget v0, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 581
    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 584
    iget p0, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    if-nez p0, :cond_1

    return v2

    .line 590
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "mBaselineAlignedChildIndex of LinearLayout points to a View that doesn\'t know how to get its baseline."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 600
    :cond_2
    iget v2, p0, Landroid/widget/LinearLayout;->mBaselineChildTop:I

    .line 602
    iget v3, p0, Landroid/widget/LinearLayout;->mOrientation:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_5

    .line 603
    iget v3, p0, Landroid/widget/LinearLayout;->mGravity:I

    and-int/lit8 v3, v3, 0x70

    const/16 v4, 0x30

    if-eq v3, v4, :cond_5

    const/16 v4, 0x10

    if-eq v3, v4, :cond_4

    const/16 v4, 0x50

    if-eq v3, v4, :cond_3

    goto :goto_0

    .line 607
    :cond_3
    iget v2, p0, Landroid/widget/LinearLayout;->mBottom:I

    iget v3, p0, Landroid/widget/LinearLayout;->mTop:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/widget/LinearLayout;->mPaddingBottom:I

    sub-int/2addr v2, v3

    iget p0, p0, Landroid/widget/LinearLayout;->mTotalLength:I

    sub-int/2addr v2, p0

    goto :goto_0

    .line 611
    :cond_4
    iget v3, p0, Landroid/widget/LinearLayout;->mBottom:I

    iget v4, p0, Landroid/widget/LinearLayout;->mTop:I

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/widget/LinearLayout;->mPaddingTop:I

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/widget/LinearLayout;->mPaddingBottom:I

    sub-int/2addr v3, v4

    iget p0, p0, Landroid/widget/LinearLayout;->mTotalLength:I

    sub-int/2addr v3, p0

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    .line 618
    :cond_5
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout$LayoutParams;

    .line 619
    iget p0, p0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, p0

    add-int/2addr v2, v1

    return v2

    .line 576
    :cond_6
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "mBaselineAlignedChildIndex of LinearLayout set to an index that is out of bounds."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getBaselineAlignedChildIndex()I
    .locals 0

    .line 628
    iget p0, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    return p0
.end method

.method getChildrenSkipCount(Landroid/view/View;I)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getDividerDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 337
    iget-object p0, p0, Landroid/widget/LinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getDividerPadding()I
    .locals 0

    .line 397
    iget p0, p0, Landroid/widget/LinearLayout;->mDividerPadding:I

    return p0
.end method

.method public getDividerWidth()I
    .locals 0

    .line 406
    iget p0, p0, Landroid/widget/LinearLayout;->mDividerWidth:I

    return p0
.end method

.method public getGravity()I
    .locals 0

    .line 1872
    iget p0, p0, Landroid/widget/LinearLayout;->mGravity:I

    return p0
.end method

.method getLocationOffset(Landroid/view/View;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method getNextLocationOffset(Landroid/view/View;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getOrientation()I
    .locals 0

    .line 1836
    iget p0, p0, Landroid/widget/LinearLayout;->mOrientation:I

    return p0
.end method

.method public getShowDividers()I
    .locals 0

    .line 326
    iget p0, p0, Landroid/widget/LinearLayout;->mShowDividers:I

    return p0
.end method

.method getVirtualChildAt(I)Landroid/view/View;
    .locals 0

    .line 657
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method getVirtualChildCount()I
    .locals 0

    .line 670
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p0

    return p0
.end method

.method public getWeightSum()F
    .locals 0

    .line 681
    iget p0, p0, Landroid/widget/LinearLayout;->mWeightSum:F

    return p0
.end method

.method protected hasDividerBeforeChildAt(I)Z
    .locals 3

    .line 718
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVirtualChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_1

    .line 720
    iget p0, p0, Landroid/widget/LinearLayout;->mShowDividers:I

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_0

    move v1, v2

    :cond_0
    return v1

    .line 722
    :cond_1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;->allViewsAreGoneBefore(I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 725
    iget p0, p0, Landroid/widget/LinearLayout;->mShowDividers:I

    and-int/2addr p0, v2

    if-eqz p0, :cond_2

    move v1, v2

    :cond_2
    return v1

    .line 727
    :cond_3
    iget p0, p0, Landroid/widget/LinearLayout;->mShowDividers:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_4

    move v1, v2

    :cond_4
    return v1
.end method

.method public isBaselineAligned()Z
    .locals 0

    .line 521
    iget-boolean p0, p0, Landroid/widget/LinearLayout;->mBaselineAligned:Z

    return p0
.end method

.method public isMeasureWithLargestChildEnabled()Z
    .locals 0

    .line 549
    iget-boolean p0, p0, Landroid/widget/LinearLayout;->mUseLargestChild:Z

    return p0
.end method

.method layoutHorizontal(IIII)V
    .locals 27

    move-object/from16 v6, p0

    .line 1689
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->isLayoutRtl()Z

    move-result v2

    .line 1690
    iget v7, v6, Landroid/widget/LinearLayout;->mPaddingTop:I

    sub-int v3, p4, p2

    .line 1697
    iget v4, v6, Landroid/widget/LinearLayout;->mPaddingBottom:I

    sub-int v8, v3, v4

    sub-int/2addr v3, v7

    .line 1700
    iget v4, v6, Landroid/widget/LinearLayout;->mPaddingBottom:I

    sub-int v9, v3, v4

    .line 1702
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getVirtualChildCount()I

    move-result v10

    .line 1704
    iget v3, v6, Landroid/widget/LinearLayout;->mGravity:I

    const v4, 0x800007

    and-int/2addr v3, v4

    .line 1705
    iget v4, v6, Landroid/widget/LinearLayout;->mGravity:I

    and-int/lit8 v11, v4, 0x70

    .line 1707
    iget-boolean v12, v6, Landroid/widget/LinearLayout;->mBaselineAligned:Z

    .line 1709
    iget-object v13, v6, Landroid/widget/LinearLayout;->mMaxAscent:[I

    .line 1710
    iget-object v14, v6, Landroid/widget/LinearLayout;->mMaxDescent:[I

    .line 1712
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getLayoutDirection()I

    move-result v4

    .line 1713
    invoke-static {v3, v4}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v3

    const/4 v15, 0x2

    const/4 v5, 0x1

    if-eq v3, v5, :cond_1

    const/4 v4, 0x5

    if-eq v3, v4, :cond_0

    .line 1726
    iget v0, v6, Landroid/widget/LinearLayout;->mPaddingLeft:I

    goto :goto_0

    .line 1716
    :cond_0
    iget v3, v6, Landroid/widget/LinearLayout;->mPaddingLeft:I

    add-int v3, v3, p3

    sub-int v3, v3, p1

    iget v0, v6, Landroid/widget/LinearLayout;->mTotalLength:I

    sub-int v0, v3, v0

    goto :goto_0

    .line 1721
    :cond_1
    iget v3, v6, Landroid/widget/LinearLayout;->mPaddingLeft:I

    sub-int v0, p3, p1

    iget v1, v6, Landroid/widget/LinearLayout;->mTotalLength:I

    sub-int/2addr v0, v1

    div-int/2addr v0, v15

    add-int/2addr v0, v3

    :goto_0
    const/4 v1, 0x0

    if-eqz v2, :cond_2

    add-int/lit8 v2, v10, -0x1

    move/from16 v16, v2

    const/16 v17, -0x1

    goto :goto_1

    :cond_2
    move/from16 v16, v1

    move/from16 v17, v5

    :goto_1
    move v3, v1

    :goto_2
    if-ge v3, v10, :cond_e

    mul-int v1, v17, v3

    add-int v2, v16, v1

    .line 1740
    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_3

    .line 1742
    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->measureNullChild(I)I

    move-result v1

    add-int/2addr v0, v1

    move/from16 v18, v5

    move/from16 v26, v7

    move/from16 v23, v10

    move/from16 v24, v11

    :goto_3
    const/16 v20, -0x1

    goto/16 :goto_8

    .line 1743
    :cond_3
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v15, 0x8

    if-eq v5, v15, :cond_d

    .line 1744
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    .line 1745
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 1749
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v20

    move-object/from16 v4, v20

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v12, :cond_4

    move/from16 v22, v3

    .line 1751
    iget v3, v4, Landroid/widget/LinearLayout$LayoutParams;->height:I

    move/from16 v23, v10

    const/4 v10, -0x1

    if-eq v3, v10, :cond_5

    .line 1752
    invoke-virtual {v1}, Landroid/view/View;->getBaseline()I

    move-result v3

    goto :goto_4

    :cond_4
    move/from16 v22, v3

    move/from16 v23, v10

    :cond_5
    const/4 v3, -0x1

    .line 1755
    :goto_4
    iget v10, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    if-gez v10, :cond_6

    move v10, v11

    :cond_6
    and-int/lit8 v10, v10, 0x70

    move/from16 v24, v11

    const/16 v11, 0x10

    if-eq v10, v11, :cond_b

    const/16 v11, 0x30

    if-eq v10, v11, :cond_9

    const/16 v11, 0x50

    if-eq v10, v11, :cond_7

    move v3, v7

    const/4 v11, -0x1

    :goto_5
    const/16 v18, 0x1

    goto :goto_7

    :cond_7
    sub-int v10, v8, v5

    .line 1785
    iget v11, v4, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v10, v11

    const/4 v11, -0x1

    if-eq v3, v11, :cond_8

    .line 1787
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v20

    sub-int v20, v20, v3

    const/4 v3, 0x2

    .line 1788
    aget v21, v14, v3

    sub-int v21, v21, v20

    sub-int v10, v10, v21

    :cond_8
    move v3, v10

    goto :goto_5

    :cond_9
    const/4 v11, -0x1

    .line 1762
    iget v10, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v10, v7

    if-eq v3, v11, :cond_a

    const/16 v18, 0x1

    .line 1764
    aget v20, v13, v18

    sub-int v20, v20, v3

    add-int v10, v10, v20

    goto :goto_6

    :cond_a
    const/16 v18, 0x1

    :goto_6
    move v3, v10

    goto :goto_7

    :cond_b
    const/4 v11, -0x1

    const/16 v18, 0x1

    sub-int v3, v9, v5

    const/4 v10, 0x2

    .line 1780
    div-int/2addr v3, v10

    add-int/2addr v3, v7

    iget v10, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v3, v10

    iget v10, v4, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v3, v10

    .line 1796
    :goto_7
    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 1797
    iget v10, v6, Landroid/widget/LinearLayout;->mDividerWidth:I

    add-int/2addr v0, v10

    .line 1800
    :cond_c
    iget v10, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v10, v0

    .line 1801
    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->getLocationOffset(Landroid/view/View;)I

    move-result v0

    add-int v19, v10, v0

    move-object/from16 v0, p0

    move-object/from16 v25, v1

    move v11, v2

    move/from16 v2, v19

    move/from16 v19, v22

    move/from16 v26, v7

    const/16 v20, -0x1

    move-object v7, v4

    move v4, v15

    invoke-direct/range {v0 .. v5}, Landroid/widget/LinearLayout;->setChildFrame(Landroid/view/View;IIII)V

    .line 1803
    iget v0, v7, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v15, v0

    move-object/from16 v0, v25

    .line 1804
    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v1

    add-int/2addr v15, v1

    add-int/2addr v10, v15

    .line 1806
    invoke-virtual {v6, v0, v11}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v0

    add-int v3, v19, v0

    move v0, v10

    goto :goto_8

    :cond_d
    move/from16 v19, v3

    move/from16 v26, v7

    move/from16 v23, v10

    move/from16 v24, v11

    const/16 v18, 0x1

    goto/16 :goto_3

    :goto_8
    add-int/lit8 v3, v3, 0x1

    move/from16 v5, v18

    move/from16 v10, v23

    move/from16 v11, v24

    move/from16 v7, v26

    const/4 v15, 0x2

    goto/16 :goto_2

    :cond_e
    return-void
.end method

.method layoutVertical(IIII)V
    .locals 17

    move-object/from16 v6, p0

    .line 1584
    iget v7, v6, Landroid/widget/LinearLayout;->mPaddingLeft:I

    sub-int v2, p3, p1

    .line 1591
    iget v3, v6, Landroid/widget/LinearLayout;->mPaddingRight:I

    sub-int v8, v2, v3

    sub-int/2addr v2, v7

    .line 1594
    iget v3, v6, Landroid/widget/LinearLayout;->mPaddingRight:I

    sub-int v9, v2, v3

    .line 1596
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getVirtualChildCount()I

    move-result v10

    .line 1598
    iget v2, v6, Landroid/widget/LinearLayout;->mGravity:I

    and-int/lit8 v2, v2, 0x70

    .line 1599
    iget v3, v6, Landroid/widget/LinearLayout;->mGravity:I

    const v4, 0x800007

    and-int v11, v3, v4

    const/16 v3, 0x10

    if-eq v2, v3, :cond_1

    const/16 v3, 0x50

    if-eq v2, v3, :cond_0

    .line 1614
    iget v0, v6, Landroid/widget/LinearLayout;->mPaddingTop:I

    goto :goto_0

    .line 1604
    :cond_0
    iget v2, v6, Landroid/widget/LinearLayout;->mPaddingTop:I

    add-int v2, v2, p4

    sub-int v2, v2, p2

    iget v0, v6, Landroid/widget/LinearLayout;->mTotalLength:I

    sub-int v0, v2, v0

    goto :goto_0

    .line 1609
    :cond_1
    iget v2, v6, Landroid/widget/LinearLayout;->mPaddingTop:I

    sub-int v0, p4, p2

    iget v1, v6, Landroid/widget/LinearLayout;->mTotalLength:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v2

    :goto_0
    const/4 v1, 0x0

    move v12, v1

    :goto_1
    if-ge v12, v10, :cond_8

    .line 1619
    invoke-virtual {v6, v12}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v13

    const/4 v14, 0x1

    if-nez v13, :cond_3

    .line 1621
    invoke-virtual {v6, v12}, Landroid/widget/LinearLayout;->measureNullChild(I)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    move v1, v14

    goto/16 :goto_4

    .line 1622
    :cond_3
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_2

    .line 1623
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 1624
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    .line 1627
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 1629
    iget v1, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    if-gez v1, :cond_4

    move v1, v11

    .line 1633
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getLayoutDirection()I

    move-result v2

    .line 1634
    invoke-static {v1, v2}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v1

    and-int/lit8 v1, v1, 0x7

    if-eq v1, v14, :cond_6

    const/4 v2, 0x5

    if-eq v1, v2, :cond_5

    .line 1647
    iget v1, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v7

    :goto_2
    move v2, v1

    goto :goto_3

    :cond_5
    sub-int v1, v8, v4

    .line 1642
    iget v2, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v1, v2

    goto :goto_2

    :cond_6
    sub-int v1, v9, v4

    .line 1637
    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v7

    iget v2, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v1, v2

    goto :goto_2

    .line 1651
    :goto_3
    invoke-virtual {v6, v12}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1652
    iget v1, v6, Landroid/widget/LinearLayout;->mDividerHeight:I

    add-int/2addr v0, v1

    .line 1655
    :cond_7
    iget v1, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int v16, v0, v1

    .line 1656
    invoke-virtual {v6, v13}, Landroid/widget/LinearLayout;->getLocationOffset(Landroid/view/View;)I

    move-result v0

    add-int v3, v16, v0

    move-object/from16 v0, p0

    move-object v1, v13

    move-object v14, v5

    move v5, v15

    invoke-direct/range {v0 .. v5}, Landroid/widget/LinearLayout;->setChildFrame(Landroid/view/View;IIII)V

    .line 1658
    iget v0, v14, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v15, v0

    invoke-virtual {v6, v13}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v0

    add-int/2addr v15, v0

    add-int v16, v16, v15

    .line 1660
    invoke-virtual {v6, v13, v12}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v0

    add-int/2addr v12, v0

    move/from16 v0, v16

    const/4 v1, 0x1

    :goto_4
    add-int/2addr v12, v1

    goto/16 :goto_1

    :cond_8
    return-void
.end method

.method measureChildBeforeLayout(Landroid/view/View;IIIII)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    .line 1535
    invoke-virtual/range {v0 .. v5}, Landroid/widget/LinearLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    return-void
.end method

.method measureHorizontal(II)V
    .locals 45

    move-object/from16 v7, p0

    move/from16 v8, p1

    move/from16 v9, p2

    const/4 v10, 0x0

    .line 1086
    iput v10, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1094
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getVirtualChildCount()I

    move-result v11

    .line 1096
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v12

    .line 1097
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v13

    .line 1102
    iget-object v0, v7, Landroid/widget/LinearLayout;->mMaxAscent:[I

    const/4 v14, 0x4

    if-eqz v0, :cond_0

    iget-object v0, v7, Landroid/widget/LinearLayout;->mMaxDescent:[I

    if-nez v0, :cond_1

    .line 1103
    :cond_0
    new-array v0, v14, [I

    iput-object v0, v7, Landroid/widget/LinearLayout;->mMaxAscent:[I

    .line 1104
    new-array v0, v14, [I

    iput-object v0, v7, Landroid/widget/LinearLayout;->mMaxDescent:[I

    .line 1107
    :cond_1
    iget-object v15, v7, Landroid/widget/LinearLayout;->mMaxAscent:[I

    .line 1108
    iget-object v6, v7, Landroid/widget/LinearLayout;->mMaxDescent:[I

    const/16 v16, 0x3

    const/4 v5, -0x1

    .line 1110
    aput v5, v15, v16

    const/16 v17, 0x2

    aput v5, v15, v17

    const/16 v18, 0x1

    aput v5, v15, v18

    aput v5, v15, v10

    .line 1111
    aput v5, v6, v16

    aput v5, v6, v17

    aput v5, v6, v18

    aput v5, v6, v10

    .line 1113
    iget-boolean v4, v7, Landroid/widget/LinearLayout;->mBaselineAligned:Z

    .line 1114
    iget-boolean v3, v7, Landroid/widget/LinearLayout;->mUseLargestChild:Z

    const/high16 v2, 0x40000000    # 2.0f

    if-ne v12, v2, :cond_2

    move/from16 v19, v18

    goto :goto_0

    :cond_2
    move/from16 v19, v10

    :goto_0
    const/16 v20, 0x0

    move v0, v10

    move/from16 v21, v0

    move/from16 v23, v21

    move/from16 v24, v23

    move/from16 v25, v24

    move/from16 v26, v25

    move/from16 v27, v26

    move/from16 v29, v27

    move/from16 v30, v29

    move/from16 v31, v18

    move/from16 v22, v20

    const/high16 v14, -0x80000000

    :goto_1
    move-object/from16 v32, v6

    const/16 v1, 0x8

    if-ge v0, v11, :cond_16

    .line 1125
    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v6

    if-nez v6, :cond_3

    .line 1127
    iget v1, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->measureNullChild(I)I

    move-result v6

    add-int/2addr v1, v6

    iput v1, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    :goto_2
    move/from16 v33, v3

    move/from16 v36, v4

    goto/16 :goto_13

    .line 1131
    :cond_3
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-ne v5, v1, :cond_4

    .line 1132
    invoke-virtual {v7, v6, v0}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_2

    :cond_4
    add-int/lit8 v21, v21, 0x1

    .line 1137
    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1138
    iget v1, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    iget v5, v7, Landroid/widget/LinearLayout;->mDividerWidth:I

    add-int/2addr v1, v5

    iput v1, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1141
    :cond_5
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 1143
    iget v1, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    add-float v22, v22, v1

    .line 1145
    iget v1, v5, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-nez v1, :cond_6

    iget v1, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    cmpl-float v1, v1, v20

    if-lez v1, :cond_6

    move/from16 v35, v18

    goto :goto_3

    :cond_6
    move/from16 v35, v10

    :goto_3
    if-ne v12, v2, :cond_9

    if-eqz v35, :cond_9

    if-eqz v19, :cond_7

    .line 1151
    iget v1, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    iget v2, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget v10, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v2, v10

    add-int/2addr v1, v2

    iput v1, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    goto :goto_4

    .line 1153
    :cond_7
    iget v1, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1154
    iget v2, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v2, v1

    iget v10, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v2, v10

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    :goto_4
    if-eqz v4, :cond_8

    .line 1165
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    const/4 v2, 0x0

    .line 1164
    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v1

    .line 1167
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    .line 1166
    invoke-static {v10, v2}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v10

    .line 1168
    invoke-virtual {v6, v1, v10}, Landroid/view/View;->measure(II)V

    move/from16 v38, v0

    move/from16 v33, v3

    move/from16 v36, v4

    move-object v10, v5

    move-object v3, v6

    :goto_5
    const/high16 v0, 0x40000000    # 2.0f

    const/4 v9, -0x1

    const/16 v34, -0x2

    goto/16 :goto_9

    :cond_8
    move/from16 v38, v0

    move/from16 v33, v3

    move/from16 v36, v4

    move-object v10, v5

    move-object v3, v6

    move/from16 v25, v18

    goto :goto_5

    :cond_9
    if-eqz v35, :cond_a

    const/4 v10, -0x2

    .line 1179
    iput v10, v5, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto :goto_6

    :cond_a
    const/4 v10, -0x2

    :goto_6
    cmpl-float v1, v22, v20

    if-nez v1, :cond_b

    .line 1186
    iget v1, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    move/from16 v34, v1

    goto :goto_7

    :cond_b
    const/16 v34, 0x0

    :goto_7
    const/16 v37, 0x0

    move v2, v0

    move-object/from16 v0, p0

    const/high16 v10, -0x80000000

    move-object v1, v6

    move/from16 v38, v2

    const/high16 v10, 0x40000000    # 2.0f

    move/from16 v33, v3

    move/from16 v3, p1

    move/from16 v36, v4

    move/from16 v4, v34

    move-object v10, v5

    const/4 v9, -0x1

    move/from16 v5, p2

    move-object/from16 v39, v6

    const/16 v34, -0x2

    move/from16 v6, v37

    .line 1187
    invoke-virtual/range {v0 .. v6}, Landroid/widget/LinearLayout;->measureChildBeforeLayout(Landroid/view/View;IIIII)V

    .line 1190
    invoke-virtual/range {v39 .. v39}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    if-eqz v35, :cond_c

    const/4 v1, 0x0

    .line 1195
    iput v1, v10, Landroid/widget/LinearLayout$LayoutParams;->width:I

    add-int v24, v24, v0

    :cond_c
    if-eqz v19, :cond_d

    .line 1200
    iget v1, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    iget v2, v10, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v2, v0

    iget v3, v10, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v2, v3

    move-object/from16 v3, v39

    .line 1201
    invoke-virtual {v7, v3}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v4

    add-int/2addr v2, v4

    add-int/2addr v1, v2

    iput v1, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    goto :goto_8

    :cond_d
    move-object/from16 v3, v39

    .line 1203
    iget v1, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    add-int v2, v1, v0

    .line 1204
    iget v4, v10, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v2, v4

    iget v4, v10, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v2, v4

    .line 1205
    invoke-virtual {v7, v3}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v4

    add-int/2addr v2, v4

    .line 1204
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    :goto_8
    if-eqz v33, :cond_e

    .line 1209
    invoke-static {v0, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    :cond_e
    const/high16 v0, 0x40000000    # 2.0f

    :goto_9
    if-eq v13, v0, :cond_f

    .line 1214
    iget v0, v10, Landroid/widget/LinearLayout$LayoutParams;->height:I

    if-ne v0, v9, :cond_f

    move/from16 v0, v18

    move/from16 v30, v0

    goto :goto_a

    :cond_f
    const/4 v0, 0x0

    .line 1222
    :goto_a
    iget v1, v10, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget v2, v10, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    .line 1223
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, v1

    .line 1224
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredState()I

    move-result v4

    move/from16 v5, v29

    invoke-static {v5, v4}, Landroid/widget/LinearLayout;->combineMeasuredStates(II)I

    move-result v4

    if-eqz v36, :cond_11

    .line 1227
    invoke-virtual {v3}, Landroid/view/View;->getBaseline()I

    move-result v5

    if-eq v5, v9, :cond_11

    .line 1231
    iget v6, v10, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    if-gez v6, :cond_10

    iget v6, v7, Landroid/widget/LinearLayout;->mGravity:I

    goto :goto_b

    :cond_10
    iget v6, v10, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    :goto_b
    and-int/lit8 v6, v6, 0x70

    const/16 v28, 0x4

    shr-int/lit8 v6, v6, 0x4

    and-int/lit8 v6, v6, -0x2

    shr-int/lit8 v6, v6, 0x1

    .line 1236
    aget v9, v15, v6

    invoke-static {v9, v5}, Ljava/lang/Math;->max(II)I

    move-result v9

    aput v9, v15, v6

    .line 1237
    aget v9, v32, v6

    sub-int v5, v2, v5

    invoke-static {v9, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    aput v5, v32, v6

    :cond_11
    move/from16 v6, v23

    .line 1241
    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    move-result v5

    if-eqz v31, :cond_12

    .line 1243
    iget v6, v10, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v9, -0x1

    if-ne v6, v9, :cond_12

    move/from16 v6, v18

    goto :goto_c

    :cond_12
    const/4 v6, 0x0

    .line 1244
    :goto_c
    iget v9, v10, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    cmpl-float v9, v9, v20

    if-lez v9, :cond_14

    if-eqz v0, :cond_13

    :goto_d
    move/from16 v10, v27

    goto :goto_e

    :cond_13
    move v1, v2

    goto :goto_d

    .line 1249
    :goto_e
    invoke-static {v10, v1}, Ljava/lang/Math;->max(II)I

    move-result v27

    :goto_f
    move/from16 v10, v38

    goto :goto_12

    :cond_14
    move/from16 v10, v27

    if-eqz v0, :cond_15

    :goto_10
    move/from16 v0, v26

    goto :goto_11

    :cond_15
    move v1, v2

    goto :goto_10

    .line 1252
    :goto_11
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v26

    move/from16 v27, v10

    goto :goto_f

    .line 1256
    :goto_12
    invoke-virtual {v7, v3, v10}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v0

    add-int/2addr v0, v10

    move/from16 v29, v4

    move/from16 v23, v5

    move/from16 v31, v6

    :goto_13
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v6, v32

    move/from16 v3, v33

    move/from16 v4, v36

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v5, -0x1

    move/from16 v9, p2

    const/4 v10, 0x0

    goto/16 :goto_1

    :cond_16
    move/from16 v33, v3

    move/from16 v36, v4

    move/from16 v6, v23

    move/from16 v0, v26

    move/from16 v10, v27

    move/from16 v5, v29

    const/16 v34, -0x2

    if-lez v21, :cond_17

    .line 1259
    invoke-virtual {v7, v11}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 1260
    iget v2, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    iget v3, v7, Landroid/widget/LinearLayout;->mDividerWidth:I

    add-int/2addr v2, v3

    iput v2, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1265
    :cond_17
    aget v2, v15, v18

    const/4 v3, -0x1

    if-ne v2, v3, :cond_18

    const/4 v2, 0x0

    aget v4, v15, v2

    if-ne v4, v3, :cond_18

    aget v2, v15, v17

    if-ne v2, v3, :cond_18

    aget v2, v15, v16

    if-eq v2, v3, :cond_19

    .line 1269
    :cond_18
    aget v2, v15, v16

    const/4 v3, 0x0

    aget v4, v15, v3

    aget v9, v15, v18

    aget v1, v15, v17

    .line 1271
    invoke-static {v9, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1270
    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1269
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1272
    aget v2, v32, v16

    aget v4, v32, v3

    aget v3, v32, v18

    aget v9, v32, v17

    .line 1274
    invoke-static {v3, v9}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1273
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1272
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/2addr v1, v2

    .line 1275
    invoke-static {v6, v1}, Ljava/lang/Math;->max(II)I

    move-result v23

    move/from16 v6, v23

    :cond_19
    if-eqz v33, :cond_1e

    const/high16 v1, -0x80000000

    if-eq v12, v1, :cond_1a

    if-nez v12, :cond_1e

    :cond_1a
    const/4 v1, 0x0

    .line 1280
    iput v1, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    const/4 v1, 0x0

    :goto_14
    if-ge v1, v11, :cond_1e

    .line 1283
    invoke-virtual {v7, v1}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_1b

    .line 1285
    iget v2, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    invoke-virtual {v7, v1}, Landroid/widget/LinearLayout;->measureNullChild(I)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    goto :goto_15

    .line 1289
    :cond_1b
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_1c

    .line 1290
    invoke-virtual {v7, v2, v1}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v2

    add-int/2addr v1, v2

    :goto_15
    move/from16 v40, v1

    goto :goto_16

    .line 1295
    :cond_1c
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v19, :cond_1d

    .line 1297
    iget v4, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    iget v9, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v9, v14

    iget v3, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v9, v3

    .line 1298
    invoke-virtual {v7, v2}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v2

    add-int/2addr v9, v2

    add-int/2addr v4, v9

    iput v4, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    goto :goto_15

    .line 1300
    :cond_1d
    iget v4, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    add-int v9, v4, v14

    move/from16 v40, v1

    .line 1301
    iget v1, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v9, v1

    iget v1, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v9, v1

    .line 1302
    invoke-virtual {v7, v2}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v1

    add-int/2addr v9, v1

    .line 1301
    invoke-static {v4, v9}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    :goto_16
    add-int/lit8 v1, v40, 0x1

    goto :goto_14

    .line 1308
    :cond_1e
    iget v1, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    iget v2, v7, Landroid/widget/LinearLayout;->mPaddingLeft:I

    iget v3, v7, Landroid/widget/LinearLayout;->mPaddingRight:I

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1310
    iget v1, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1313
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getSuggestedMinimumWidth()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/4 v2, 0x0

    .line 1316
    invoke-static {v1, v8, v2}, Landroid/widget/LinearLayout;->resolveSizeAndState(III)I

    move-result v1

    const v2, 0xffffff

    and-int/2addr v2, v1

    .line 1322
    iget v3, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    sub-int/2addr v2, v3

    .line 1323
    iget-boolean v3, v7, Landroid/widget/LinearLayout;->mAllowInconsistentMeasurement:Z

    if-eqz v3, :cond_1f

    const/16 v24, 0x0

    :cond_1f
    add-int v2, v2, v24

    if-nez v25, :cond_25

    .line 1324
    sget-boolean v4, Landroid/widget/LinearLayout;->sRemeasureWeightedChildren:Z

    if-nez v4, :cond_20

    if-eqz v2, :cond_21

    :cond_20
    cmpl-float v4, v22, v20

    if-lez v4, :cond_21

    goto :goto_19

    .line 1428
    :cond_21
    invoke-static {v0, v10}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-eqz v33, :cond_24

    const/high16 v2, 0x40000000    # 2.0f

    if-eq v12, v2, :cond_24

    const/4 v2, 0x0

    :goto_17
    if-ge v2, v11, :cond_24

    .line 1434
    invoke-virtual {v7, v2}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_23

    .line 1435
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v9

    const/16 v10, 0x8

    if-ne v9, v10, :cond_22

    goto :goto_18

    .line 1440
    :cond_22
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout$LayoutParams;

    .line 1442
    iget v9, v9, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    cmpl-float v9, v9, v20

    if-lez v9, :cond_23

    const/high16 v9, 0x40000000    # 2.0f

    .line 1445
    invoke-static {v14, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 1446
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    invoke-static {v12, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    .line 1444
    invoke-virtual {v4, v10, v12}, Landroid/view/View;->measure(II)V

    :cond_23
    :goto_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :cond_24
    move/from16 v4, p2

    goto/16 :goto_2b

    .line 1326
    :cond_25
    :goto_19
    iget v4, v7, Landroid/widget/LinearLayout;->mWeightSum:F

    cmpl-float v4, v4, v20

    if-lez v4, :cond_26

    iget v4, v7, Landroid/widget/LinearLayout;->mWeightSum:F

    :goto_1a
    const/4 v9, -0x1

    goto :goto_1b

    :cond_26
    move/from16 v4, v22

    goto :goto_1a

    .line 1328
    :goto_1b
    aput v9, v15, v16

    aput v9, v15, v17

    aput v9, v15, v18

    const/4 v6, 0x0

    aput v9, v15, v6

    .line 1329
    aput v9, v32, v16

    aput v9, v32, v17

    aput v9, v32, v18

    aput v9, v32, v6

    .line 1332
    iput v6, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    move v10, v0

    move v6, v5

    move v5, v9

    const/4 v0, 0x0

    :goto_1c
    if-ge v0, v11, :cond_35

    .line 1335
    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_34

    .line 1336
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v3

    move/from16 v41, v14

    const/16 v14, 0x8

    if-ne v3, v14, :cond_27

    move v8, v4

    move/from16 v44, v12

    goto/16 :goto_27

    .line 1340
    :cond_27
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 1341
    iget v14, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    cmpl-float v21, v14, v20

    if-lez v21, :cond_2c

    int-to-float v8, v2

    mul-float/2addr v8, v14

    div-float/2addr v8, v4

    float-to-int v8, v8

    sub-int/2addr v2, v8

    sub-float/2addr v4, v14

    .line 1348
    iget-boolean v14, v7, Landroid/widget/LinearLayout;->mUseLargestChild:Z

    if-eqz v14, :cond_28

    const/high16 v14, 0x40000000    # 2.0f

    if-eq v12, v14, :cond_28

    move/from16 v42, v2

    move/from16 v8, v41

    :goto_1d
    const/4 v2, 0x0

    goto :goto_1f

    .line 1350
    :cond_28
    iget v14, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-nez v14, :cond_2a

    iget-boolean v14, v7, Landroid/widget/LinearLayout;->mAllowInconsistentMeasurement:Z

    if-eqz v14, :cond_29

    const/high16 v14, 0x40000000    # 2.0f

    if-ne v12, v14, :cond_2b

    goto :goto_1e

    :cond_29
    const/high16 v14, 0x40000000    # 2.0f

    goto :goto_1e

    :cond_2a
    const/high16 v14, 0x40000000    # 2.0f

    .line 1358
    :cond_2b
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v21

    add-int v8, v21, v8

    :goto_1e
    move/from16 v42, v2

    goto :goto_1d

    .line 1362
    :goto_1f
    invoke-static {v2, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 1361
    invoke-static {v8, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1363
    iget v8, v7, Landroid/widget/LinearLayout;->mPaddingTop:I

    iget v14, v7, Landroid/widget/LinearLayout;->mPaddingBottom:I

    add-int/2addr v8, v14

    iget v14, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v8, v14

    iget v14, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v8, v14

    iget v14, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    move/from16 v43, v4

    move/from16 v44, v12

    move/from16 v4, p2

    const/4 v12, -0x1

    invoke-static {v4, v8, v14}, Landroid/widget/LinearLayout;->getChildMeasureSpec(III)I

    move-result v8

    .line 1366
    invoke-virtual {v9, v2, v8}, Landroid/view/View;->measure(II)V

    .line 1370
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredState()I

    move-result v2

    const/high16 v8, -0x1000000

    and-int/2addr v2, v8

    .line 1369
    invoke-static {v6, v2}, Landroid/widget/LinearLayout;->combineMeasuredStates(II)I

    move-result v6

    move/from16 v2, v42

    goto :goto_20

    :cond_2c
    move v8, v4

    move/from16 v44, v12

    move/from16 v4, p2

    const/4 v12, -0x1

    move/from16 v43, v8

    :goto_20
    if-eqz v19, :cond_2d

    .line 1374
    iget v8, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    iget v12, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v14, v12

    iget v12, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v14, v12

    .line 1375
    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v12

    add-int/2addr v14, v12

    add-int/2addr v8, v14

    iput v8, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    :goto_21
    const/high16 v8, 0x40000000    # 2.0f

    goto :goto_22

    .line 1377
    :cond_2d
    iget v8, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1378
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    add-int/2addr v12, v8

    iget v14, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v12, v14

    iget v14, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v12, v14

    .line 1379
    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v14

    add-int/2addr v12, v14

    .line 1378
    invoke-static {v8, v12}, Ljava/lang/Math;->max(II)I

    move-result v8

    iput v8, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    goto :goto_21

    :goto_22
    if-eq v13, v8, :cond_2e

    .line 1382
    iget v8, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v12, -0x1

    if-ne v8, v12, :cond_2e

    move/from16 v8, v18

    goto :goto_23

    :cond_2e
    const/4 v8, 0x0

    .line 1385
    :goto_23
    iget v12, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget v14, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v12, v14

    .line 1386
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    add-int/2addr v14, v12

    .line 1387
    invoke-static {v5, v14}, Ljava/lang/Math;->max(II)I

    move-result v5

    if-eqz v8, :cond_2f

    goto :goto_24

    :cond_2f
    move v12, v14

    .line 1388
    :goto_24
    invoke-static {v10, v12}, Ljava/lang/Math;->max(II)I

    move-result v8

    if-eqz v31, :cond_30

    .line 1391
    iget v10, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v12, -0x1

    if-ne v10, v12, :cond_31

    move/from16 v10, v18

    goto :goto_25

    :cond_30
    const/4 v12, -0x1

    :cond_31
    const/4 v10, 0x0

    :goto_25
    if-eqz v36, :cond_33

    .line 1394
    invoke-virtual {v9}, Landroid/view/View;->getBaseline()I

    move-result v9

    if-eq v9, v12, :cond_33

    .line 1397
    iget v12, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    if-gez v12, :cond_32

    iget v3, v7, Landroid/widget/LinearLayout;->mGravity:I

    goto :goto_26

    :cond_32
    iget v3, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    :goto_26
    and-int/lit8 v3, v3, 0x70

    const/4 v12, 0x4

    shr-int/2addr v3, v12

    and-int/lit8 v3, v3, -0x2

    shr-int/lit8 v3, v3, 0x1

    .line 1402
    aget v12, v15, v3

    invoke-static {v12, v9}, Ljava/lang/Math;->max(II)I

    move-result v12

    aput v12, v15, v3

    .line 1403
    aget v12, v32, v3

    sub-int/2addr v14, v9

    invoke-static {v12, v14}, Ljava/lang/Math;->max(II)I

    move-result v9

    aput v9, v32, v3

    :cond_33
    move/from16 v31, v10

    move v10, v8

    goto :goto_28

    :cond_34
    move v8, v4

    move/from16 v44, v12

    move/from16 v41, v14

    :goto_27
    move/from16 v4, p2

    move/from16 v43, v8

    :goto_28
    add-int/lit8 v0, v0, 0x1

    move/from16 v14, v41

    move/from16 v4, v43

    move/from16 v12, v44

    move/from16 v8, p1

    const/4 v9, -0x1

    goto/16 :goto_1c

    :cond_35
    move/from16 v4, p2

    .line 1410
    iget v0, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    iget v2, v7, Landroid/widget/LinearLayout;->mPaddingLeft:I

    iget v3, v7, Landroid/widget/LinearLayout;->mPaddingRight:I

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    iput v0, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1415
    aget v0, v15, v18

    const/4 v2, -0x1

    if-ne v0, v2, :cond_37

    const/4 v0, 0x0

    aget v3, v15, v0

    if-ne v3, v2, :cond_37

    aget v0, v15, v17

    if-ne v0, v2, :cond_37

    aget v0, v15, v16

    if-eq v0, v2, :cond_36

    goto :goto_29

    :cond_36
    move v0, v5

    goto :goto_2a

    .line 1419
    :cond_37
    :goto_29
    aget v0, v15, v16

    const/4 v2, 0x0

    aget v3, v15, v2

    aget v8, v15, v18

    aget v9, v15, v17

    .line 1421
    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 1420
    invoke-static {v3, v8}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1419
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1422
    aget v3, v32, v16

    aget v2, v32, v2

    aget v8, v32, v18

    aget v9, v32, v17

    .line 1424
    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 1423
    invoke-static {v2, v8}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1422
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 1425
    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_2a
    move v5, v6

    move v6, v0

    move v0, v10

    :goto_2b
    if-nez v31, :cond_38

    const/high16 v2, 0x40000000    # 2.0f

    if-eq v13, v2, :cond_38

    goto :goto_2c

    :cond_38
    move v0, v6

    .line 1457
    :goto_2c
    iget v2, v7, Landroid/widget/LinearLayout;->mPaddingTop:I

    iget v3, v7, Landroid/widget/LinearLayout;->mPaddingBottom:I

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    .line 1460
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getSuggestedMinimumHeight()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/high16 v2, -0x1000000

    and-int/2addr v2, v5

    or-int/2addr v1, v2

    shl-int/lit8 v2, v5, 0x10

    .line 1463
    invoke-static {v0, v4, v2}, Landroid/widget/LinearLayout;->resolveSizeAndState(III)I

    move-result v0

    .line 1462
    invoke-virtual {v7, v1, v0}, Landroid/widget/LinearLayout;->setMeasuredDimension(II)V

    if-eqz v30, :cond_39

    move/from16 v0, p1

    .line 1467
    invoke-direct {v7, v11, v0}, Landroid/widget/LinearLayout;->forceUniformHeight(II)V

    :cond_39
    return-void
.end method

.method measureNullChild(I)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method measureVertical(II)V
    .locals 40

    move-object/from16 v7, p0

    move/from16 v8, p1

    move/from16 v9, p2

    const/4 v10, 0x0

    .line 756
    iput v10, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 764
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getVirtualChildCount()I

    move-result v11

    .line 766
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v12

    .line 767
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v13

    .line 772
    iget v14, v7, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    .line 773
    iget-boolean v15, v7, Landroid/widget/LinearLayout;->mUseLargestChild:Z

    const/16 v16, 0x0

    const/16 v17, 0x1

    move v0, v10

    move v2, v0

    move v3, v2

    move v5, v3

    move/from16 v18, v5

    move/from16 v19, v18

    move/from16 v21, v19

    move/from16 v22, v21

    move/from16 v23, v22

    move/from16 v1, v16

    move/from16 v20, v17

    const/high16 v4, -0x80000000

    :goto_0
    const/16 v6, 0x8

    if-ge v5, v11, :cond_12

    move/from16 v24, v4

    .line 782
    invoke-virtual {v7, v5}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_0

    .line 784
    iget v4, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    invoke-virtual {v7, v5}, Landroid/widget/LinearLayout;->measureNullChild(I)I

    move-result v6

    add-int/2addr v4, v6

    iput v4, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    :goto_1
    move/from16 v34, v13

    move/from16 v4, v24

    goto/16 :goto_d

    .line 788
    :cond_0
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-ne v10, v6, :cond_1

    .line 789
    invoke-virtual {v7, v4, v5}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v4

    add-int/2addr v5, v4

    goto :goto_1

    :cond_1
    add-int/lit8 v10, v0, 0x1

    .line 794
    invoke-virtual {v7, v5}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 795
    iget v0, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    iget v6, v7, Landroid/widget/LinearLayout;->mDividerHeight:I

    add-int/2addr v0, v6

    iput v0, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 798
    :cond_2
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 800
    iget v0, v6, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    add-float v25, v1, v0

    .line 802
    iget v0, v6, Landroid/widget/LinearLayout$LayoutParams;->height:I

    if-nez v0, :cond_3

    iget v0, v6, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    cmpl-float v0, v0, v16

    if-lez v0, :cond_3

    move/from16 v26, v17

    const/high16 v0, 0x40000000    # 2.0f

    goto :goto_2

    :cond_3
    const/high16 v0, 0x40000000    # 2.0f

    const/16 v26, 0x0

    :goto_2
    if-ne v13, v0, :cond_4

    if-eqz v26, :cond_4

    .line 807
    iget v0, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 808
    iget v1, v6, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, v0

    move/from16 v27, v2

    iget v2, v6, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    move/from16 v33, v5

    move-object v9, v6

    move/from16 v31, v10

    move/from16 v34, v13

    move/from16 v19, v17

    move/from16 v30, v27

    const/high16 v13, -0x80000000

    move v10, v3

    move-object v3, v4

    move/from16 v4, v24

    goto/16 :goto_4

    :cond_4
    move/from16 v27, v2

    if-eqz v26, :cond_5

    const/4 v0, -0x2

    .line 817
    iput v0, v6, Landroid/widget/LinearLayout$LayoutParams;->height:I

    :cond_5
    cmpl-float v0, v25, v16

    if-nez v0, :cond_6

    .line 824
    iget v0, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    move/from16 v28, v0

    goto :goto_3

    :cond_6
    const/16 v28, 0x0

    :goto_3
    const/16 v29, 0x0

    move-object/from16 v0, p0

    move-object v1, v4

    move/from16 v30, v27

    move v2, v5

    move/from16 v31, v10

    move v10, v3

    move/from16 v3, p1

    move-object/from16 v32, v4

    move/from16 v8, v24

    move/from16 v4, v29

    move/from16 v33, v5

    move/from16 v5, p2

    move-object v9, v6

    move/from16 v34, v13

    const/high16 v13, -0x80000000

    move/from16 v6, v28

    .line 825
    invoke-virtual/range {v0 .. v6}, Landroid/widget/LinearLayout;->measureChildBeforeLayout(Landroid/view/View;IIIII)V

    .line 828
    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    if-eqz v26, :cond_7

    const/4 v1, 0x0

    .line 833
    iput v1, v9, Landroid/widget/LinearLayout$LayoutParams;->height:I

    add-int v18, v18, v0

    .line 837
    :cond_7
    iget v1, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    add-int v2, v1, v0

    .line 838
    iget v3, v9, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v3

    iget v3, v9, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    move-object/from16 v3, v32

    .line 839
    invoke-virtual {v7, v3}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v4

    add-int/2addr v2, v4

    .line 838
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    if-eqz v15, :cond_8

    .line 842
    invoke-static {v0, v8}, Ljava/lang/Math;->max(II)I

    move-result v4

    goto :goto_4

    :cond_8
    move v4, v8

    :goto_4
    if-ltz v14, :cond_9

    move/from16 v0, v33

    add-int/lit8 v5, v0, 0x1

    if-ne v14, v5, :cond_a

    .line 851
    iget v1, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    iput v1, v7, Landroid/widget/LinearLayout;->mBaselineChildTop:I

    goto :goto_5

    :cond_9
    move/from16 v0, v33

    :cond_a
    :goto_5
    if-ge v0, v14, :cond_c

    .line 857
    iget v1, v9, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    cmpl-float v1, v1, v16

    if-gtz v1, :cond_b

    goto :goto_6

    .line 858
    :cond_b
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "A child of LinearLayout with index less than mBaselineAlignedChildIndex has weight > 0, which won\'t work.  Either remove the weight, or don\'t set mBaselineAlignedChildIndex."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    :goto_6
    const/high16 v1, 0x40000000    # 2.0f

    if-eq v12, v1, :cond_d

    .line 865
    iget v1, v9, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_d

    move/from16 v1, v17

    move/from16 v23, v1

    goto :goto_7

    :cond_d
    const/4 v1, 0x0

    .line 874
    :goto_7
    iget v2, v9, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget v5, v9, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v2, v5

    .line 875
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v5, v2

    move/from16 v6, v21

    .line 876
    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 877
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredState()I

    move-result v8

    move/from16 v35, v6

    move/from16 v6, v22

    invoke-static {v6, v8}, Landroid/widget/LinearLayout;->combineMeasuredStates(II)I

    move-result v6

    if-eqz v20, :cond_e

    .line 879
    iget v8, v9, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v13, -0x1

    if-ne v8, v13, :cond_e

    move/from16 v8, v17

    goto :goto_8

    :cond_e
    const/4 v8, 0x0

    .line 880
    :goto_8
    iget v9, v9, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    cmpl-float v9, v9, v16

    if-lez v9, :cond_10

    if-eqz v1, :cond_f

    :goto_9
    move/from16 v9, v30

    goto :goto_a

    :cond_f
    move v2, v5

    goto :goto_9

    .line 885
    :goto_a
    invoke-static {v9, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    move v1, v10

    goto :goto_c

    :cond_10
    move/from16 v9, v30

    if-eqz v1, :cond_11

    goto :goto_b

    :cond_11
    move v2, v5

    .line 888
    :goto_b
    invoke-static {v10, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    move v2, v9

    .line 892
    :goto_c
    invoke-virtual {v7, v3, v0}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v3

    add-int v5, v0, v3

    move v3, v1

    move/from16 v22, v6

    move/from16 v20, v8

    move/from16 v1, v25

    move/from16 v0, v31

    move/from16 v21, v35

    :goto_d
    add-int/lit8 v5, v5, 0x1

    move/from16 v13, v34

    move/from16 v8, p1

    move/from16 v9, p2

    goto/16 :goto_0

    :cond_12
    move v9, v2

    move v10, v3

    move v8, v4

    move v2, v6

    move/from16 v34, v13

    move/from16 v6, v22

    if-lez v0, :cond_13

    .line 895
    invoke-virtual {v7, v11}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 896
    iget v0, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    iget v3, v7, Landroid/widget/LinearLayout;->mDividerHeight:I

    add-int/2addr v0, v3

    iput v0, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    :cond_13
    if-eqz v15, :cond_17

    move/from16 v0, v34

    const/high16 v3, -0x80000000

    if-eq v0, v3, :cond_14

    if-nez v0, :cond_18

    :cond_14
    const/4 v3, 0x0

    .line 901
    iput v3, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    const/4 v3, 0x0

    :goto_e
    if-ge v3, v11, :cond_18

    .line 904
    invoke-virtual {v7, v3}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_15

    .line 906
    iget v4, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    invoke-virtual {v7, v3}, Landroid/widget/LinearLayout;->measureNullChild(I)I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    goto :goto_f

    .line 910
    :cond_15
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-ne v5, v2, :cond_16

    .line 911
    invoke-virtual {v7, v4, v3}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_f

    .line 916
    :cond_16
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 918
    iget v13, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    add-int v14, v13, v8

    .line 919
    iget v2, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v14, v2

    iget v2, v5, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v14, v2

    .line 920
    invoke-virtual {v7, v4}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v2

    add-int/2addr v14, v2

    .line 919
    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    :goto_f
    add-int/lit8 v3, v3, 0x1

    const/16 v2, 0x8

    goto :goto_e

    :cond_17
    move/from16 v0, v34

    .line 925
    :cond_18
    iget v2, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    iget v3, v7, Landroid/widget/LinearLayout;->mPaddingTop:I

    iget v4, v7, Landroid/widget/LinearLayout;->mPaddingBottom:I

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    iput v2, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 927
    iget v2, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 930
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getSuggestedMinimumHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    move/from16 v3, p2

    const/4 v4, 0x0

    .line 933
    invoke-static {v2, v3, v4}, Landroid/widget/LinearLayout;->resolveSizeAndState(III)I

    move-result v2

    const v4, 0xffffff

    and-int/2addr v4, v2

    .line 938
    iget v5, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    sub-int/2addr v4, v5

    .line 939
    iget-boolean v5, v7, Landroid/widget/LinearLayout;->mAllowInconsistentMeasurement:Z

    if-eqz v5, :cond_19

    const/16 v18, 0x0

    :cond_19
    add-int v4, v4, v18

    if-nez v19, :cond_1f

    .line 940
    sget-boolean v5, Landroid/widget/LinearLayout;->sRemeasureWeightedChildren:Z

    if-nez v5, :cond_1a

    if-eqz v4, :cond_1b

    :cond_1a
    cmpl-float v5, v1, v16

    if-lez v5, :cond_1b

    goto :goto_12

    .line 1006
    :cond_1b
    invoke-static {v10, v9}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-eqz v15, :cond_1e

    const/high16 v4, 0x40000000    # 2.0f

    if-eq v0, v4, :cond_1e

    const/4 v0, 0x0

    :goto_10
    if-ge v0, v11, :cond_1e

    .line 1014
    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_1d

    .line 1015
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v9, 0x8

    if-ne v5, v9, :cond_1c

    goto :goto_11

    .line 1020
    :cond_1c
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 1022
    iget v5, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    cmpl-float v5, v5, v16

    if-lez v5, :cond_1d

    .line 1025
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v5, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 1027
    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 1024
    invoke-virtual {v4, v5, v10}, Landroid/view/View;->measure(II)V

    :cond_1d
    :goto_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_1e
    move/from16 v4, v21

    move/from16 v5, p1

    goto/16 :goto_1c

    .line 942
    :cond_1f
    :goto_12
    iget v5, v7, Landroid/widget/LinearLayout;->mWeightSum:F

    cmpl-float v5, v5, v16

    if-lez v5, :cond_20

    iget v1, v7, Landroid/widget/LinearLayout;->mWeightSum:F

    :cond_20
    const/4 v5, 0x0

    .line 944
    iput v5, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    move v9, v1

    move v5, v4

    move/from16 v4, v21

    const/4 v1, 0x0

    :goto_13
    if-ge v1, v11, :cond_2c

    .line 947
    invoke-virtual {v7, v1}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v13

    if-eqz v13, :cond_2b

    .line 948
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v14

    const/16 v15, 0x8

    if-ne v14, v15, :cond_21

    goto/16 :goto_1a

    .line 952
    :cond_21
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout$LayoutParams;

    .line 953
    iget v15, v14, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    cmpl-float v18, v15, v16

    if-lez v18, :cond_26

    move/from16 v36, v8

    int-to-float v8, v5

    mul-float/2addr v8, v15

    div-float/2addr v8, v9

    float-to-int v8, v8

    sub-int/2addr v5, v8

    sub-float/2addr v9, v15

    .line 960
    iget-boolean v15, v7, Landroid/widget/LinearLayout;->mUseLargestChild:Z

    if-eqz v15, :cond_22

    const/high16 v15, 0x40000000    # 2.0f

    if-eq v0, v15, :cond_22

    move/from16 v37, v0

    move/from16 v8, v36

    :goto_14
    const/4 v0, 0x0

    goto :goto_16

    .line 962
    :cond_22
    iget v15, v14, Landroid/widget/LinearLayout$LayoutParams;->height:I

    if-nez v15, :cond_24

    iget-boolean v15, v7, Landroid/widget/LinearLayout;->mAllowInconsistentMeasurement:Z

    if-eqz v15, :cond_23

    const/high16 v15, 0x40000000    # 2.0f

    if-ne v0, v15, :cond_25

    goto :goto_15

    :cond_23
    const/high16 v15, 0x40000000    # 2.0f

    goto :goto_15

    :cond_24
    const/high16 v15, 0x40000000    # 2.0f

    .line 970
    :cond_25
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v18

    add-int v8, v18, v8

    :goto_15
    move/from16 v37, v0

    goto :goto_14

    .line 974
    :goto_16
    invoke-static {v0, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 973
    invoke-static {v8, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 975
    iget v15, v7, Landroid/widget/LinearLayout;->mPaddingLeft:I

    iget v0, v7, Landroid/widget/LinearLayout;->mPaddingRight:I

    add-int/2addr v15, v0

    iget v0, v14, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v15, v0

    iget v0, v14, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v15, v0

    iget v0, v14, Landroid/widget/LinearLayout$LayoutParams;->width:I

    move/from16 v38, v5

    move/from16 v18, v36

    move/from16 v5, p1

    invoke-static {v5, v15, v0}, Landroid/widget/LinearLayout;->getChildMeasureSpec(III)I

    move-result v0

    .line 978
    invoke-virtual {v13, v0, v8}, Landroid/view/View;->measure(II)V

    .line 981
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredState()I

    move-result v0

    and-int/lit16 v0, v0, -0x100

    invoke-static {v6, v0}, Landroid/widget/LinearLayout;->combineMeasuredStates(II)I

    move-result v6

    goto :goto_17

    :cond_26
    move/from16 v37, v0

    move v0, v5

    move/from16 v18, v8

    move/from16 v5, p1

    move/from16 v38, v0

    .line 985
    :goto_17
    iget v0, v14, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget v8, v14, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v0, v8

    .line 986
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v8, v0

    .line 987
    invoke-static {v4, v8}, Ljava/lang/Math;->max(II)I

    move-result v4

    const/high16 v15, 0x40000000    # 2.0f

    if-eq v12, v15, :cond_27

    .line 989
    iget v15, v14, Landroid/widget/LinearLayout$LayoutParams;->width:I

    move/from16 v39, v0

    const/4 v0, -0x1

    if-ne v15, v0, :cond_28

    move/from16 v15, v17

    goto :goto_18

    :cond_27
    move/from16 v39, v0

    const/4 v0, -0x1

    :cond_28
    const/4 v15, 0x0

    :goto_18
    if-eqz v15, :cond_29

    move/from16 v8, v39

    .line 992
    :cond_29
    invoke-static {v10, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    if-eqz v20, :cond_2a

    .line 995
    iget v10, v14, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-ne v10, v0, :cond_2a

    move/from16 v10, v17

    goto :goto_19

    :cond_2a
    const/4 v10, 0x0

    .line 997
    :goto_19
    iget v15, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 998
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v19

    add-int v19, v15, v19

    iget v0, v14, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int v19, v19, v0

    iget v0, v14, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int v19, v19, v0

    .line 999
    invoke-virtual {v7, v13}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v0

    add-int v0, v19, v0

    .line 998
    invoke-static {v15, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    move/from16 v20, v10

    move v10, v8

    goto :goto_1b

    :cond_2b
    :goto_1a
    move/from16 v37, v0

    move v0, v5

    move/from16 v18, v8

    move/from16 v5, p1

    move/from16 v38, v0

    :goto_1b
    add-int/lit8 v1, v1, 0x1

    move/from16 v8, v18

    move/from16 v0, v37

    move/from16 v5, v38

    goto/16 :goto_13

    :cond_2c
    move/from16 v5, p1

    .line 1003
    iget v0, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    iget v1, v7, Landroid/widget/LinearLayout;->mPaddingTop:I

    iget v8, v7, Landroid/widget/LinearLayout;->mPaddingBottom:I

    add-int/2addr v1, v8

    add-int/2addr v0, v1

    iput v0, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    move v1, v10

    :goto_1c
    if-nez v20, :cond_2d

    const/high16 v0, 0x40000000    # 2.0f

    if-eq v12, v0, :cond_2d

    goto :goto_1d

    :cond_2d
    move v1, v4

    .line 1038
    :goto_1d
    iget v0, v7, Landroid/widget/LinearLayout;->mPaddingLeft:I

    iget v4, v7, Landroid/widget/LinearLayout;->mPaddingRight:I

    add-int/2addr v0, v4

    add-int/2addr v1, v0

    .line 1041
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1043
    invoke-static {v0, v5, v6}, Landroid/widget/LinearLayout;->resolveSizeAndState(III)I

    move-result v0

    invoke-virtual {v7, v0, v2}, Landroid/widget/LinearLayout;->setMeasuredDimension(II)V

    if-eqz v23, :cond_2e

    .line 1047
    invoke-direct {v7, v11, v3}, Landroid/widget/LinearLayout;->forceUniformWidth(II)V

    :cond_2e
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 411
    iget-object v0, p0, Landroid/widget/LinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    return-void

    .line 415
    :cond_0
    iget v0, p0, Landroid/widget/LinearLayout;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 416
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->drawDividersVertical(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 418
    :cond_1
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->drawDividersHorizontal(Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .line 1564
    iget p1, p0, Landroid/widget/LinearLayout;->mOrientation:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1565
    invoke-virtual {p0, p2, p3, p4, p5}, Landroid/widget/LinearLayout;->layoutVertical(IIII)V

    goto :goto_0

    .line 1567
    :cond_0
    invoke-virtual {p0, p2, p3, p4, p5}, Landroid/widget/LinearLayout;->layoutHorizontal(IIII)V

    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 703
    iget v0, p0, Landroid/widget/LinearLayout;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 704
    invoke-virtual {p0, p1, p2}, Landroid/widget/LinearLayout;->measureVertical(II)V

    goto :goto_0

    .line 706
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/widget/LinearLayout;->measureHorizontal(II)V

    :goto_0
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 1

    .line 1667
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRtlPropertiesChanged(I)V

    .line 1668
    iget v0, p0, Landroid/widget/LinearLayout;->mLayoutDirection:I

    if-eq p1, v0, :cond_0

    .line 1669
    iput p1, p0, Landroid/widget/LinearLayout;->mLayoutDirection:I

    .line 1670
    iget p1, p0, Landroid/widget/LinearLayout;->mOrientation:I

    if-nez p1, :cond_0

    .line 1671
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setBaselineAligned(Z)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 535
    iput-boolean p1, p0, Landroid/widget/LinearLayout;->mBaselineAligned:Z

    return-void
.end method

.method public setBaselineAlignedChildIndex(I)V
    .locals 2
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    if-ltz p1, :cond_0

    .line 639
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 643
    iput p1, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    return-void

    .line 640
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "base aligned child index out of range (0, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 641
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDividerDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 350
    iget-object v0, p0, Landroid/widget/LinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    return-void

    .line 353
    :cond_0
    iput-object p1, p0, Landroid/widget/LinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    .line 355
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Landroid/widget/LinearLayout;->mDividerWidth:I

    .line 356
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    iput p1, p0, Landroid/widget/LinearLayout;->mDividerHeight:I

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 358
    iput p1, p0, Landroid/widget/LinearLayout;->mDividerWidth:I

    .line 359
    iput p1, p0, Landroid/widget/LinearLayout;->mDividerHeight:I

    .line 362
    :goto_0
    invoke-direct {p0}, Landroid/widget/LinearLayout;->isShowingDividers()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setWillNotDraw(Z)V

    .line 363
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    return-void
.end method

.method public setDividerPadding(I)V
    .locals 1

    .line 378
    iget v0, p0, Landroid/widget/LinearLayout;->mDividerPadding:I

    if-ne p1, v0, :cond_0

    return-void

    .line 381
    :cond_0
    iput p1, p0, Landroid/widget/LinearLayout;->mDividerPadding:I

    .line 383
    invoke-direct {p0}, Landroid/widget/LinearLayout;->isShowingDividers()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 384
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 385
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    :cond_1
    return-void
.end method

.method public setGravity(I)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 1851
    iget v0, p0, Landroid/widget/LinearLayout;->mGravity:I

    if-eq v0, p1, :cond_2

    const v0, 0x800007

    and-int/2addr v0, p1

    if-nez v0, :cond_0

    const v0, 0x800003

    or-int/2addr p1, v0

    :cond_0
    and-int/lit8 v0, p1, 0x70

    if-nez v0, :cond_1

    or-int/lit8 p1, p1, 0x30

    .line 1860
    :cond_1
    iput p1, p0, Landroid/widget/LinearLayout;->mGravity:I

    .line 1861
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    :cond_2
    return-void
.end method

.method public setHorizontalGravity(I)V
    .locals 2
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    const v0, 0x800007

    and-int/2addr p1, v0

    .line 1878
    iget v1, p0, Landroid/widget/LinearLayout;->mGravity:I

    and-int/2addr v0, v1

    if-eq v0, p1, :cond_0

    .line 1879
    iget v0, p0, Landroid/widget/LinearLayout;->mGravity:I

    const v1, -0x800008

    and-int/2addr v0, v1

    or-int/2addr p1, v0

    iput p1, p0, Landroid/widget/LinearLayout;->mGravity:I

    .line 1880
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setMeasureWithLargestChildEnabled(Z)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 566
    iput-boolean p1, p0, Landroid/widget/LinearLayout;->mUseLargestChild:Z

    return-void
.end method

.method public setOrientation(I)V
    .locals 1

    .line 1823
    iget v0, p0, Landroid/widget/LinearLayout;->mOrientation:I

    if-eq v0, p1, :cond_0

    .line 1824
    iput p1, p0, Landroid/widget/LinearLayout;->mOrientation:I

    .line 1825
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setShowDividers(I)V
    .locals 1

    .line 306
    iget v0, p0, Landroid/widget/LinearLayout;->mShowDividers:I

    if-ne p1, v0, :cond_0

    return-void

    .line 309
    :cond_0
    iput p1, p0, Landroid/widget/LinearLayout;->mShowDividers:I

    .line 311
    invoke-direct {p0}, Landroid/widget/LinearLayout;->isShowingDividers()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setWillNotDraw(Z)V

    .line 312
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    return-void
.end method

.method public setVerticalGravity(I)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    and-int/lit8 p1, p1, 0x70

    .line 1887
    iget v0, p0, Landroid/widget/LinearLayout;->mGravity:I

    and-int/lit8 v0, v0, 0x70

    if-eq v0, p1, :cond_0

    .line 1888
    iget v0, p0, Landroid/widget/LinearLayout;->mGravity:I

    and-int/lit8 v0, v0, -0x71

    or-int/2addr p1, v0

    iput p1, p0, Landroid/widget/LinearLayout;->mGravity:I

    .line 1889
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setWeightSum(F)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    const/4 v0, 0x0

    .line 698
    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Landroid/widget/LinearLayout;->mWeightSum:F

    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
