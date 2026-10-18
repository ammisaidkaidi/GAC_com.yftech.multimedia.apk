.class public Landroid/widget/ListView;
.super Landroid/widget/AbsListView;
.source "ListView.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ListView$ArrowScrollFocusResult;,
        Landroid/widget/ListView$FocusSelector;,
        Landroid/widget/ListView$FixedViewInfo;
    }
.end annotation


# static fields
.field private static final MAX_SCROLL_FACTOR:F = 0.33f

.field private static final MIN_SCROLL_PREVIEW_PIXELS:I = 0x2

.field static final NO_POSITION:I = -0x1

.field static final TAG:Ljava/lang/String; = "ListView"


# instance fields
.field private mAreAllItemsSelectable:Z

.field private final mArrowScrollFocusResult:Landroid/widget/ListView$ArrowScrollFocusResult;

.field mDivider:Landroid/graphics/drawable/Drawable;

.field mDividerHeight:I

.field private mDividerIsOpaque:Z

.field private mDividerPaint:Landroid/graphics/Paint;

.field private mFocusSelector:Landroid/widget/ListView$FocusSelector;

.field private mFooterDividersEnabled:Z

.field mFooterViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mHeaderDividersEnabled:Z

.field mHeaderViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mIsCacheColorOpaque:Z

.field private mItemsCanFocus:Z

.field mOverScrollFooter:Landroid/graphics/drawable/Drawable;

.field mOverScrollHeader:Landroid/graphics/drawable/Drawable;

.field private final mTempRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 215
    invoke-direct {p0, p1, v0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1010074

    .line 219
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 223
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4

    .line 227
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/AbsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 184
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 185
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 199
    iput-boolean v0, p0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    const/4 v1, 0x0

    .line 201
    iput-boolean v1, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    .line 204
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    .line 209
    new-instance v2, Landroid/widget/ListView$ArrowScrollFocusResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/widget/ListView$ArrowScrollFocusResult;-><init>(Landroid/widget/ListView$1;)V

    iput-object v2, p0, Landroid/widget/ListView;->mArrowScrollFocusResult:Landroid/widget/ListView$ArrowScrollFocusResult;

    .line 229
    sget-object v2, Lcom/android/internal/R$styleable;->ListView:[I

    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 232
    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 234
    new-instance p4, Landroid/widget/ArrayAdapter;

    const v2, 0x1090003

    invoke-direct {p4, p1, v2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p0, p4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 237
    :cond_0
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 241
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    const/4 p1, 0x5

    .line 244
    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 246
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->setOverscrollHeader(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    const/4 p1, 0x6

    .line 249
    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 251
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->setOverscrollFooter(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    const/4 p1, 0x2

    .line 255
    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->hasValueOrEmpty(I)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 256
    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    if-eqz p1, :cond_4

    .line 259
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->setDividerHeight(I)V

    :cond_4
    const/4 p1, 0x3

    .line 263
    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Landroid/widget/ListView;->mHeaderDividersEnabled:Z

    const/4 p1, 0x4

    .line 264
    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Landroid/widget/ListView;->mFooterDividersEnabled:Z

    .line 266
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private addViewAbove(Landroid/view/View;I)Landroid/view/View;
    .locals 8

    add-int/lit8 v2, p2, -0x1

    .line 3315
    iget-object p2, p0, Landroid/widget/ListView;->mIsScrap:[Z

    invoke-virtual {p0, v2, p2}, Landroid/widget/ListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object p2

    .line 3316
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    iget v0, p0, Landroid/widget/ListView;->mDividerHeight:I

    sub-int v3, p1, v0

    .line 3317
    iget-object p1, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, p1, Landroid/graphics/Rect;->left:I

    iget-object p1, p0, Landroid/widget/ListView;->mIsScrap:[Z

    const/4 v0, 0x0

    aget-boolean v7, p1, v0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p2

    invoke-direct/range {v0 .. v7}, Landroid/widget/ListView;->setupChild(Landroid/view/View;IIZIZZ)V

    return-object p2
.end method

.method private addViewBelow(Landroid/view/View;I)Landroid/view/View;
    .locals 8

    add-int/lit8 v2, p2, 0x1

    .line 3324
    iget-object p2, p0, Landroid/widget/ListView;->mIsScrap:[Z

    invoke-virtual {p0, v2, p2}, Landroid/widget/ListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object p2

    .line 3325
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    iget v0, p0, Landroid/widget/ListView;->mDividerHeight:I

    add-int v3, p1, v0

    .line 3326
    iget-object p1, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, p1, Landroid/graphics/Rect;->left:I

    iget-object p1, p0, Landroid/widget/ListView;->mIsScrap:[Z

    const/4 v0, 0x0

    aget-boolean v7, p1, v0

    const/4 v4, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p2

    invoke-direct/range {v0 .. v7}, Landroid/widget/ListView;->setupChild(Landroid/view/View;IIZIZZ)V

    return-object p2
.end method

.method private adjustViewsUpOrDown()V
    .locals 5

    .line 282
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_5

    .line 288
    iget-boolean v1, p0, Landroid/widget/ListView;->mStackFromBottom:Z

    const/4 v2, 0x0

    if-nez v1, :cond_2

    .line 291
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 292
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iget-object v1, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    .line 293
    iget v1, p0, Landroid/widget/ListView;->mFirstPosition:I

    if-eqz v1, :cond_0

    .line 296
    iget v1, p0, Landroid/widget/ListView;->mDividerHeight:I

    sub-int/2addr v0, v1

    :cond_0
    if-gez v0, :cond_1

    goto :goto_0

    :cond_1
    move v2, v0

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v0, -0x1

    .line 304
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 305
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v3

    iget-object v4, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    sub-int/2addr v1, v3

    .line 307
    iget v3, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v3, v0

    iget v0, p0, Landroid/widget/ListView;->mItemCount:I

    if-ge v3, v0, :cond_3

    .line 310
    iget v0, p0, Landroid/widget/ListView;->mDividerHeight:I

    add-int/2addr v1, v0

    :cond_3
    if-lez v1, :cond_4

    goto :goto_0

    :cond_4
    move v2, v1

    :goto_0
    if-eqz v2, :cond_5

    neg-int v0, v2

    .line 319
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->offsetChildrenTopAndBottom(I)V

    :cond_5
    return-void
.end method

.method private amountToScroll(II)I
    .locals 6

    .line 2920
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v0

    iget-object v1, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    .line 2921
    iget-object v1, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 2923
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/16 v5, 0x82

    if-ne p1, v5, :cond_6

    add-int/lit8 p1, v2, -0x1

    if-eq p2, v3, :cond_0

    .line 2928
    iget p1, p0, Landroid/widget/ListView;->mFirstPosition:I

    sub-int p1, p2, p1

    :cond_0
    :goto_0
    if-gt v2, p1, :cond_1

    add-int/lit8 v1, v2, -0x1

    .line 2932
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget v5, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v5, v2

    add-int/lit8 v5, v5, -0x1

    invoke-direct {p0, v1, v5}, Landroid/widget/ListView;->addViewBelow(Landroid/view/View;I)Landroid/view/View;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2935
    :cond_1
    iget v1, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v1, p1

    .line 2936
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 2939
    iget v5, p0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_2

    .line 2940
    invoke-direct {p0}, Landroid/widget/ListView;->getArrowScrollPreviewLength()I

    move-result v1

    sub-int v1, v0, v1

    goto :goto_1

    :cond_2
    move v1, v0

    .line 2943
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v5

    if-gt v5, v1, :cond_3

    return v4

    :cond_3
    if-eq p2, v3, :cond_4

    .line 2949
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p2

    sub-int p2, v1, p2

    invoke-virtual {p0}, Landroid/widget/ListView;->getMaxScrollAmount()I

    move-result v3

    if-lt p2, v3, :cond_4

    return v4

    .line 2954
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    sub-int/2addr p1, v1

    .line 2956
    iget p2, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr p2, v2

    iget v1, p0, Landroid/widget/ListView;->mItemCount:I

    if-ne p2, v1, :cond_5

    add-int/lit8 v2, v2, -0x1

    .line 2958
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result p2

    sub-int/2addr p2, v0

    .line 2959
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 2962
    :cond_5
    invoke-virtual {p0}, Landroid/widget/ListView;->getMaxScrollAmount()I

    move-result p0

    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0

    :cond_6
    if-eq p2, v3, :cond_7

    .line 2966
    iget p1, p0, Landroid/widget/ListView;->mFirstPosition:I

    sub-int p1, p2, p1

    goto :goto_2

    :cond_7
    move p1, v4

    :goto_2
    if-gez p1, :cond_8

    .line 2970
    invoke-virtual {p0, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    iget v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    invoke-direct {p0, p1, v0}, Landroid/widget/ListView;->addViewAbove(Landroid/view/View;I)Landroid/view/View;

    .line 2971
    iget p1, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Landroid/widget/ListView;->mFirstPosition:I

    .line 2972
    iget p1, p0, Landroid/widget/ListView;->mFirstPosition:I

    sub-int p1, p2, p1

    goto :goto_2

    .line 2974
    :cond_8
    iget v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v0, p1

    .line 2975
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-lez v0, :cond_9

    .line 2978
    invoke-direct {p0}, Landroid/widget/ListView;->getArrowScrollPreviewLength()I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_3

    :cond_9
    move v0, v1

    .line 2980
    :goto_3
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    if-lt v2, v0, :cond_a

    return v4

    :cond_a
    if-eq p2, v3, :cond_b

    .line 2986
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p2

    sub-int/2addr p2, v0

    invoke-virtual {p0}, Landroid/widget/ListView;->getMaxScrollAmount()I

    move-result v2

    if-lt p2, v2, :cond_b

    return v4

    .line 2991
    :cond_b
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    sub-int/2addr v0, p1

    .line 2992
    iget p1, p0, Landroid/widget/ListView;->mFirstPosition:I

    if-nez p1, :cond_c

    .line 2994
    invoke-virtual {p0, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    sub-int/2addr v1, p1

    .line 2995
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2997
    :cond_c
    invoke-virtual {p0}, Landroid/widget/ListView;->getMaxScrollAmount()I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method private amountToScrollToNewFocus(ILandroid/view/View;I)I
    .locals 1

    .line 3190
    iget-object v0, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 3191
    iget-object v0, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, v0}, Landroid/widget/ListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    const/16 p2, 0x21

    if-ne p1, p2, :cond_0

    .line 3193
    iget-object p1, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    iget-object p2, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->top:I

    if-ge p1, p2, :cond_1

    .line 3194
    iget-object p1, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    iget-object p2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, p2

    if-lez p3, :cond_2

    .line 3196
    invoke-direct {p0}, Landroid/widget/ListView;->getArrowScrollPreviewLength()I

    move-result p0

    add-int/2addr p1, p0

    goto :goto_0

    .line 3200
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result p1

    iget-object p2, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p1, p2

    .line 3201
    iget-object p2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    if-le p2, p1, :cond_1

    .line 3202
    iget-object p2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    sub-int p1, p2, p1

    .line 3203
    iget p2, p0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 p2, p2, -0x1

    if-ge p3, p2, :cond_2

    .line 3204
    invoke-direct {p0}, Landroid/widget/ListView;->getArrowScrollPreviewLength()I

    move-result p0

    add-int/2addr p1, p0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :cond_2
    :goto_0
    return p1
.end method

.method private arrowScrollFocused(I)Landroid/widget/ListView$ArrowScrollFocusResult;
    .locals 6

    .line 3087
    invoke-virtual {p0}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x82

    if-eqz v0, :cond_0

    .line 3089
    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3090
    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 3091
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v2

    invoke-virtual {v2, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    goto/16 :goto_5

    :cond_0
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p1, v1, :cond_4

    .line 3094
    iget v4, p0, Landroid/widget/ListView;->mFirstPosition:I

    if-lez v4, :cond_1

    goto :goto_0

    :cond_1
    move v2, v3

    .line 3095
    :goto_0
    iget-object v4, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    if-eqz v2, :cond_2

    .line 3096
    invoke-direct {p0}, Landroid/widget/ListView;->getArrowScrollPreviewLength()I

    move-result v2

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    add-int/2addr v4, v2

    if-eqz v0, :cond_3

    .line 3098
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    if-le v2, v4, :cond_3

    .line 3099
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    .line 3101
    :cond_3
    iget-object v0, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v3, v4, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_4

    .line 3103
    :cond_4
    iget v4, p0, Landroid/widget/ListView;->mFirstPosition:I

    .line 3104
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v5

    add-int/2addr v4, v5

    sub-int/2addr v4, v2

    iget v5, p0, Landroid/widget/ListView;->mItemCount:I

    if-ge v4, v5, :cond_5

    goto :goto_2

    :cond_5
    move v2, v3

    .line 3105
    :goto_2
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v4

    iget-object v5, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    if-eqz v2, :cond_6

    .line 3106
    invoke-direct {p0}, Landroid/widget/ListView;->getArrowScrollPreviewLength()I

    move-result v2

    goto :goto_3

    :cond_6
    move v2, v3

    :goto_3
    sub-int/2addr v4, v2

    if-eqz v0, :cond_7

    .line 3108
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v2

    if-ge v2, v4, :cond_7

    .line 3109
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v4

    .line 3111
    :cond_7
    iget-object v0, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v3, v4, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 3113
    :goto_4
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p0, v2, p1}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v0

    :goto_5
    const/4 v2, 0x0

    if-eqz v0, :cond_c

    .line 3117
    invoke-direct {p0, v0}, Landroid/widget/ListView;->positionOfNewFocus(Landroid/view/View;)I

    move-result v3

    .line 3121
    iget v4, p0, Landroid/widget/ListView;->mSelectedPosition:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_a

    iget v4, p0, Landroid/widget/ListView;->mSelectedPosition:I

    if-eq v3, v4, :cond_a

    .line 3122
    invoke-direct {p0, p1}, Landroid/widget/ListView;->lookForSelectablePositionOnScreen(I)I

    move-result v4

    if-eq v4, v5, :cond_a

    if-ne p1, v1, :cond_8

    if-lt v4, v3, :cond_9

    :cond_8
    const/16 v1, 0x21

    if-ne p1, v1, :cond_a

    if-le v4, v3, :cond_a

    :cond_9
    return-object v2

    .line 3130
    :cond_a
    invoke-direct {p0, p1, v0, v3}, Landroid/widget/ListView;->amountToScrollToNewFocus(ILandroid/view/View;I)I

    move-result v1

    .line 3132
    invoke-virtual {p0}, Landroid/widget/ListView;->getMaxScrollAmount()I

    move-result v4

    if-ge v1, v4, :cond_b

    .line 3135
    invoke-virtual {v0, p1}, Landroid/view/View;->requestFocus(I)Z

    .line 3136
    iget-object p1, p0, Landroid/widget/ListView;->mArrowScrollFocusResult:Landroid/widget/ListView$ArrowScrollFocusResult;

    invoke-virtual {p1, v3, v1}, Landroid/widget/ListView$ArrowScrollFocusResult;->populate(II)V

    .line 3137
    iget-object p0, p0, Landroid/widget/ListView;->mArrowScrollFocusResult:Landroid/widget/ListView$ArrowScrollFocusResult;

    return-object p0

    .line 3138
    :cond_b
    invoke-direct {p0, v0}, Landroid/widget/ListView;->distanceToView(Landroid/view/View;)I

    move-result v1

    if-ge v1, v4, :cond_c

    .line 3143
    invoke-virtual {v0, p1}, Landroid/view/View;->requestFocus(I)Z

    .line 3144
    iget-object p1, p0, Landroid/widget/ListView;->mArrowScrollFocusResult:Landroid/widget/ListView$ArrowScrollFocusResult;

    invoke-virtual {p1, v3, v4}, Landroid/widget/ListView$ArrowScrollFocusResult;->populate(II)V

    .line 3145
    iget-object p0, p0, Landroid/widget/ListView;->mArrowScrollFocusResult:Landroid/widget/ListView$ArrowScrollFocusResult;

    return-object p0

    :cond_c
    return-object v2
.end method

.method private arrowScrollImpl(I)Z
    .locals 10

    .line 2701
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return v1

    .line 2705
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 2706
    iget v2, p0, Landroid/widget/ListView;->mSelectedPosition:I

    .line 2708
    invoke-direct {p0, v0, v2, p1}, Landroid/widget/ListView;->nextSelectedPositionForDirection(Landroid/view/View;II)I

    move-result v3

    .line 2709
    invoke-direct {p0, p1, v3}, Landroid/widget/ListView;->amountToScroll(II)I

    move-result v4

    .line 2712
    iget-boolean v5, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    invoke-direct {p0, p1}, Landroid/widget/ListView;->arrowScrollFocused(I)Landroid/widget/ListView$ArrowScrollFocusResult;

    move-result-object v5

    goto :goto_0

    :cond_1
    move-object v5, v6

    :goto_0
    if-eqz v5, :cond_2

    .line 2714
    invoke-virtual {v5}, Landroid/widget/ListView$ArrowScrollFocusResult;->getSelectedPosition()I

    move-result v3

    .line 2715
    invoke-virtual {v5}, Landroid/widget/ListView$ArrowScrollFocusResult;->getAmountToScroll()I

    move-result v4

    :cond_2
    const/4 v7, 0x1

    if-eqz v5, :cond_3

    move v8, v7

    goto :goto_1

    :cond_3
    move v8, v1

    :goto_1
    const/4 v9, -0x1

    if-eq v3, v9, :cond_6

    if-eqz v5, :cond_4

    move v2, v7

    goto :goto_2

    :cond_4
    move v2, v1

    .line 2720
    :goto_2
    invoke-direct {p0, v0, p1, v3, v2}, Landroid/widget/ListView;->handleNewSelectionChange(Landroid/view/View;IIZ)V

    .line 2721
    invoke-virtual {p0, v3}, Landroid/widget/ListView;->setSelectedPositionInt(I)V

    .line 2722
    invoke-virtual {p0, v3}, Landroid/widget/ListView;->setNextSelectedPositionInt(I)V

    .line 2723
    invoke-virtual {p0}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 2725
    iget-boolean v2, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    if-eqz v2, :cond_5

    if-nez v5, :cond_5

    .line 2728
    invoke-virtual {p0}, Landroid/widget/ListView;->getFocusedChild()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 2730
    invoke-virtual {v2}, Landroid/view/View;->clearFocus()V

    .line 2734
    :cond_5
    invoke-virtual {p0}, Landroid/widget/ListView;->checkSelectionChanged()V

    move v2, v3

    move v8, v7

    :cond_6
    if-lez v4, :cond_8

    const/16 v8, 0x21

    if-ne p1, v8, :cond_7

    goto :goto_3

    :cond_7
    neg-int v4, v4

    .line 2738
    :goto_3
    invoke-direct {p0, v4}, Landroid/widget/ListView;->scrollListItemsBy(I)V

    move v8, v7

    .line 2744
    :cond_8
    iget-boolean p1, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    if-eqz p1, :cond_a

    if-nez v5, :cond_a

    if-eqz v0, :cond_a

    .line 2745
    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 2746
    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 2748
    invoke-direct {p0, p1, p0}, Landroid/widget/ListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-direct {p0, p1}, Landroid/widget/ListView;->distanceToView(Landroid/view/View;)I

    move-result v4

    if-lez v4, :cond_a

    .line 2749
    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    :cond_a
    if-ne v3, v9, :cond_b

    if-eqz v0, :cond_b

    .line 2756
    invoke-direct {p0, v0, p0}, Landroid/widget/ListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_b

    .line 2758
    invoke-virtual {p0}, Landroid/widget/ListView;->hideSelector()V

    .line 2762
    iput v9, p0, Landroid/widget/ListView;->mResurrectToPosition:I

    move-object v0, v6

    :cond_b
    if-eqz v8, :cond_e

    if-eqz v0, :cond_c

    .line 2767
    invoke-virtual {p0, v2, v0}, Landroid/widget/ListView;->positionSelectorLikeFocus(ILandroid/view/View;)V

    .line 2768
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result p1

    iput p1, p0, Landroid/widget/ListView;->mSelectedTop:I

    .line 2770
    :cond_c
    invoke-virtual {p0}, Landroid/widget/ListView;->awakenScrollBars()Z

    move-result p1

    if-nez p1, :cond_d

    .line 2771
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    .line 2773
    :cond_d
    invoke-virtual {p0}, Landroid/widget/ListView;->invokeOnItemScrollListener()V

    return v7

    :cond_e
    return v1
.end method

.method private clearRecycledState(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 623
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 626
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView$FixedViewInfo;

    iget-object v3, v3, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    .line 627
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 628
    invoke-virtual {p0, v3}, Landroid/widget/ListView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 629
    check-cast v3, Landroid/widget/AbsListView$LayoutParams;

    iput-boolean v1, v3, Landroid/widget/AbsListView$LayoutParams;->recycledHeaderFooter:Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private commonKey(IILandroid/view/KeyEvent;)Z
    .locals 7

    .line 2360
    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Landroid/widget/ListView;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_5

    .line 2364
    :cond_0
    iget-boolean v0, p0, Landroid/widget/ListView;->mDataChanged:Z

    if-eqz v0, :cond_1

    .line 2365
    invoke-virtual {p0}, Landroid/widget/ListView;->layoutChildren()V

    .line 2369
    :cond_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 2370
    invoke-static {p1}, Landroid/view/KeyEvent;->isConfirmKey(I)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    .line 2371
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eq v0, v3, :cond_2

    .line 2372
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v2

    if-nez v2, :cond_3

    .line 2373
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v4

    if-lez v4, :cond_3

    .line 2374
    invoke-virtual {p0}, Landroid/widget/ListView;->keyPressed()V

    move v2, v3

    goto :goto_0

    :cond_2
    move v2, v1

    :cond_3
    :goto_0
    if-nez v2, :cond_c

    if-eq v0, v3, :cond_c

    const/4 v4, 0x2

    const/16 v5, 0x21

    const/16 v6, 0x82

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_4

    .line 2451
    :sswitch_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 2452
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p0, v6}, Landroid/widget/ListView;->fullScroll(I)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_1

    :cond_4
    move v2, v1

    goto/16 :goto_4

    :cond_5
    :goto_1
    move v2, v3

    goto/16 :goto_4

    .line 2445
    :sswitch_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 2446
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p0, v5}, Landroid/widget/ListView;->fullScroll(I)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_1

    .line 2437
    :sswitch_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 2438
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p0, v6}, Landroid/widget/ListView;->pageScroll(I)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_1

    .line 2439
    :cond_6
    invoke-virtual {p3, v4}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 2440
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p0, v6}, Landroid/widget/ListView;->fullScroll(I)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_1

    .line 2429
    :sswitch_3
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 2430
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p0, v5}, Landroid/widget/ListView;->pageScroll(I)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_1

    .line 2431
    :cond_7
    invoke-virtual {p3, v4}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 2432
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p0, v5}, Landroid/widget/ListView;->fullScroll(I)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_1

    .line 2461
    :sswitch_4
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 2462
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p0, v6}, Landroid/widget/ListView;->arrowScroll(I)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_1

    .line 2463
    :cond_8
    invoke-virtual {p3, v3}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 2464
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p0, v5}, Landroid/widget/ListView;->arrowScroll(I)Z

    move-result v2

    if-eqz v2, :cond_4

    goto/16 :goto_1

    .line 2423
    :sswitch_5
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_c

    const/16 v2, 0x42

    .line 2424
    invoke-direct {p0, v2}, Landroid/widget/ListView;->handleHorizontalFocusWithinListItem(I)Z

    move-result v2

    goto/16 :goto_4

    .line 2417
    :sswitch_6
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_c

    const/16 v2, 0x11

    .line 2418
    invoke-direct {p0, v2}, Landroid/widget/ListView;->handleHorizontalFocusWithinListItem(I)Z

    move-result v2

    goto :goto_4

    .line 2400
    :sswitch_7
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 2401
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v2

    if-nez v2, :cond_c

    :goto_2
    add-int/lit8 v4, p2, -0x1

    if-lez p2, :cond_a

    .line 2404
    invoke-virtual {p0, v6}, Landroid/widget/ListView;->arrowScroll(I)Z

    move-result p2

    if-eqz p2, :cond_a

    move v2, v3

    move p2, v4

    goto :goto_2

    .line 2411
    :cond_9
    invoke-virtual {p3, v4}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 2412
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p0, v6}, Landroid/widget/ListView;->fullScroll(I)Z

    move-result v2

    if-eqz v2, :cond_4

    goto/16 :goto_1

    .line 2383
    :sswitch_8
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 2384
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v2

    if-nez v2, :cond_c

    :goto_3
    add-int/lit8 v4, p2, -0x1

    if-lez p2, :cond_a

    .line 2387
    invoke-virtual {p0, v5}, Landroid/widget/ListView;->arrowScroll(I)Z

    move-result p2

    if-eqz p2, :cond_a

    move v2, v3

    move p2, v4

    goto :goto_3

    :cond_a
    move p2, v4

    goto :goto_4

    .line 2394
    :cond_b
    invoke-virtual {p3, v4}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 2395
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p0, v5}, Landroid/widget/ListView;->fullScroll(I)Z

    move-result v2

    if-eqz v2, :cond_4

    goto/16 :goto_1

    :cond_c
    :goto_4
    if-eqz v2, :cond_d

    return v3

    .line 2474
    :cond_d
    invoke-virtual {p0, p1, p2, p3}, Landroid/widget/ListView;->sendToTextFilter(IILandroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_e

    return v3

    :cond_e
    packed-switch v0, :pswitch_data_0

    return v1

    .line 2486
    :pswitch_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AbsListView;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    .line 2483
    :pswitch_1
    invoke-super {p0, p1, p3}, Landroid/widget/AbsListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    .line 2480
    :pswitch_2
    invoke-super {p0, p1, p3}, Landroid/widget/AbsListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :cond_f
    :goto_5
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_8
        0x14 -> :sswitch_7
        0x15 -> :sswitch_6
        0x16 -> :sswitch_5
        0x3d -> :sswitch_4
        0x5c -> :sswitch_3
        0x5d -> :sswitch_2
        0x7a -> :sswitch_1
        0x7b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private correctTooHigh(I)V
    .locals 3

    .line 1529
    iget v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    .line 1530
    iget v1, p0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_2

    if-lez p1, :cond_2

    add-int/lit8 p1, p1, -0x1

    .line 1533
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 1536
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    .line 1539
    iget v0, p0, Landroid/widget/ListView;->mBottom:I

    iget v1, p0, Landroid/widget/ListView;->mTop:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    sub-int/2addr v0, p1

    const/4 p1, 0x0

    .line 1544
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 1545
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    if-lez v0, :cond_2

    .line 1549
    iget v2, p0, Landroid/widget/ListView;->mFirstPosition:I

    if-gtz v2, :cond_0

    iget-object v2, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    if-ge v1, v2, :cond_2

    .line 1550
    :cond_0
    iget v2, p0, Landroid/widget/ListView;->mFirstPosition:I

    if-nez v2, :cond_1

    .line 1552
    iget-object v2, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1555
    :cond_1
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->offsetChildrenTopAndBottom(I)V

    .line 1556
    iget v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    if-lez v0, :cond_2

    .line 1559
    iget v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    iget v1, p0, Landroid/widget/ListView;->mDividerHeight:I

    sub-int/2addr p1, v1

    invoke-direct {p0, v0, p1}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    .line 1561
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    :cond_2
    return-void
.end method

.method private correctTooLow(I)V
    .locals 5

    .line 1578
    iget v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    if-nez v0, :cond_3

    if-lez p1, :cond_3

    const/4 v0, 0x0

    .line 1581
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1584
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    .line 1587
    iget-object v1, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 1590
    iget v2, p0, Landroid/widget/ListView;->mBottom:I

    iget v3, p0, Landroid/widget/ListView;->mTop:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    sub-int/2addr v0, v1

    add-int/lit8 v1, p1, -0x1

    .line 1595
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1596
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 1597
    iget v4, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v4, p1

    add-int/lit8 v4, v4, -0x1

    if-lez v0, :cond_3

    .line 1602
    iget p1, p0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 p1, p1, -0x1

    if-lt v4, p1, :cond_1

    if-le v3, v2, :cond_0

    goto :goto_0

    .line 1616
    :cond_0
    iget p1, p0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 p1, p1, -0x1

    if-ne v4, p1, :cond_3

    .line 1617
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    goto :goto_1

    .line 1603
    :cond_1
    :goto_0
    iget p1, p0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 p1, p1, -0x1

    if-ne v4, p1, :cond_2

    sub-int/2addr v3, v2

    .line 1605
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_2
    neg-int p1, v0

    .line 1608
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->offsetChildrenTopAndBottom(I)V

    .line 1609
    iget p1, p0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 p1, p1, -0x1

    if-ge v4, p1, :cond_3

    add-int/lit8 v4, v4, 0x1

    .line 1612
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result p1

    iget v0, p0, Landroid/widget/ListView;->mDividerHeight:I

    add-int/2addr p1, v0

    invoke-direct {p0, v4, p1}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    .line 1614
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    :cond_3
    :goto_1
    return-void
.end method

.method private distanceToView(Landroid/view/View;)I
    .locals 2

    .line 3220
    iget-object v0, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 3221
    iget-object v0, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Landroid/widget/ListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 3222
    iget p1, p0, Landroid/widget/ListView;->mBottom:I

    iget v0, p0, Landroid/widget/ListView;->mTop:I

    sub-int/2addr p1, v0

    iget-object v0, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p1, v0

    .line 3223
    iget-object v0, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    if-ge v0, v1, :cond_0

    .line 3224
    iget-object p1, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    iget-object p0, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p1, p0

    goto :goto_0

    .line 3225
    :cond_0
    iget-object v0, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    if-le v0, p1, :cond_1

    .line 3226
    iget-object p0, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->top:I

    sub-int p1, p0, p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private fillAboveAndBelow(Landroid/view/View;I)V
    .locals 3

    .line 894
    iget v0, p0, Landroid/widget/ListView;->mDividerHeight:I

    .line 895
    iget-boolean v1, p0, Landroid/widget/ListView;->mStackFromBottom:Z

    if-nez v1, :cond_0

    add-int/lit8 v1, p2, -0x1

    .line 896
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    .line 897
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    add-int/lit8 p2, p2, 0x1

    .line 898
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    add-int/2addr p1, v0

    invoke-direct {p0, p2, p1}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    goto :goto_0

    :cond_0
    add-int/lit8 v1, p2, 0x1

    .line 900
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v2

    add-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    .line 901
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    add-int/lit8 p2, p2, -0x1

    .line 902
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    sub-int/2addr p1, v0

    invoke-direct {p0, p2, p1}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    :goto_0
    return-void
.end method

.method private fillDown(II)Landroid/view/View;
    .locals 10

    .line 778
    iget v0, p0, Landroid/widget/ListView;->mBottom:I

    iget v1, p0, Landroid/widget/ListView;->mTop:I

    sub-int/2addr v0, v1

    .line 779
    iget v1, p0, Landroid/widget/ListView;->mGroupFlags:I

    const/16 v2, 0x22

    and-int/2addr v1, v2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    .line 780
    iget-object v1, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    :cond_0
    move v6, p2

    :goto_0
    const/4 p2, 0x1

    if-ge v6, v0, :cond_3

    .line 783
    iget v1, p0, Landroid/widget/ListView;->mItemCount:I

    if-ge p1, v1, :cond_3

    .line 785
    iget v1, p0, Landroid/widget/ListView;->mSelectedPosition:I

    if-ne p1, v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :goto_1
    const/4 v7, 0x1

    .line 786
    iget-object v1, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v1, Landroid/graphics/Rect;->left:I

    move-object v4, p0

    move v5, p1

    move v9, p2

    invoke-direct/range {v4 .. v9}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v1

    .line 788
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v2

    iget v4, p0, Landroid/widget/ListView;->mDividerHeight:I

    add-int v6, v2, v4

    if-eqz p2, :cond_2

    move-object v3, v1

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 795
    :cond_3
    iget p1, p0, Landroid/widget/ListView;->mFirstPosition:I

    iget v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    add-int/2addr v0, v1

    sub-int/2addr v0, p2

    invoke-virtual {p0, p1, v0}, Landroid/widget/ListView;->setVisibleRangeHint(II)V

    return-object v3
.end method

.method private fillFromMiddle(II)Landroid/view/View;
    .locals 7

    sub-int/2addr p2, p1

    .line 864
    invoke-virtual {p0}, Landroid/widget/ListView;->reconcileSelectedPosition()I

    move-result v6

    .line 866
    iget-object v0, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    const/4 v3, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    move v1, v6

    move v2, p1

    invoke-direct/range {v0 .. v5}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object p1

    .line 868
    iput v6, p0, Landroid/widget/ListView;->mFirstPosition:I

    .line 870
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    if-gt v0, p2, :cond_0

    sub-int/2addr p2, v0

    .line 872
    div-int/lit8 p2, p2, 0x2

    invoke-virtual {p1, p2}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 875
    :cond_0
    invoke-direct {p0, p1, v6}, Landroid/widget/ListView;->fillAboveAndBelow(Landroid/view/View;I)V

    .line 877
    iget-boolean p2, p0, Landroid/widget/ListView;->mStackFromBottom:Z

    if-nez p2, :cond_1

    .line 878
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result p2

    invoke-direct {p0, p2}, Landroid/widget/ListView;->correctTooHigh(I)V

    goto :goto_0

    .line 880
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result p2

    invoke-direct {p0, p2}, Landroid/widget/ListView;->correctTooLow(I)V

    :goto_0
    return-object p1
.end method

.method private fillFromSelection(III)Landroid/view/View;
    .locals 8

    .line 918
    invoke-virtual {p0}, Landroid/widget/ListView;->getVerticalFadingEdgeLength()I

    move-result v0

    .line 919
    iget v7, p0, Landroid/widget/ListView;->mSelectedPosition:I

    .line 923
    invoke-direct {p0, p2, v0, v7}, Landroid/widget/ListView;->getTopSelectionPixel(III)I

    move-result p2

    .line 925
    invoke-direct {p0, p3, v0, v7}, Landroid/widget/ListView;->getBottomSelectionPixel(III)I

    move-result p3

    .line 928
    iget-object v0, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->left:I

    const/4 v4, 0x1

    const/4 v6, 0x1

    move-object v1, p0

    move v2, v7

    move v3, p1

    invoke-direct/range {v1 .. v6}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object p1

    .line 932
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    if-le v0, p3, :cond_0

    .line 935
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int/2addr v0, p2

    .line 939
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p2

    sub-int/2addr p2, p3

    .line 940
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    neg-int p2, p2

    .line 943
    invoke-virtual {p1, p2}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_0

    .line 944
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    if-ge v0, p2, :cond_1

    .line 947
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int/2addr p2, v0

    .line 951
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    sub-int/2addr p3, v0

    .line 952
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 955
    invoke-virtual {p1, p2}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 959
    :cond_1
    :goto_0
    invoke-direct {p0, p1, v7}, Landroid/widget/ListView;->fillAboveAndBelow(Landroid/view/View;I)V

    .line 961
    iget-boolean p2, p0, Landroid/widget/ListView;->mStackFromBottom:Z

    if-nez p2, :cond_2

    .line 962
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result p2

    invoke-direct {p0, p2}, Landroid/widget/ListView;->correctTooHigh(I)V

    goto :goto_1

    .line 964
    :cond_2
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result p2

    invoke-direct {p0, p2}, Landroid/widget/ListView;->correctTooLow(I)V

    :goto_1
    return-object p1
.end method

.method private fillFromTop(I)Landroid/view/View;
    .locals 2

    .line 842
    iget v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    iget v1, p0, Landroid/widget/ListView;->mSelectedPosition:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    .line 843
    iget v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    iget v1, p0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    .line 844
    iget v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    if-gez v0, :cond_0

    const/4 v0, 0x0

    .line 845
    iput v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    .line 847
    :cond_0
    iget v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    invoke-direct {p0, v0, p1}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private fillSpecific(II)Landroid/view/View;
    .locals 9

    .line 1481
    iget v0, p0, Landroid/widget/ListView;->mSelectedPosition:I

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v5, 0x1

    .line 1482
    iget-object v2, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v2, Landroid/graphics/Rect;->left:I

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v7, v0

    invoke-direct/range {v2 .. v7}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object p2

    .line 1484
    iput p1, p0, Landroid/widget/ListView;->mFirstPosition:I

    .line 1489
    iget v2, p0, Landroid/widget/ListView;->mDividerHeight:I

    .line 1490
    iget-boolean v3, p0, Landroid/widget/ListView;->mStackFromBottom:Z

    if-nez v3, :cond_2

    add-int/lit8 v3, p1, -0x1

    .line 1491
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-direct {p0, v3, v4}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    move-result-object v3

    .line 1493
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    add-int/2addr p1, v1

    .line 1494
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v1

    add-int/2addr v1, v2

    invoke-direct {p0, p1, v1}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    move-result-object p1

    .line 1495
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 1497
    invoke-direct {p0, v1}, Landroid/widget/ListView;->correctTooHigh(I)V

    :cond_1
    move-object v8, v3

    move-object v3, p1

    move-object p1, v8

    goto :goto_1

    :cond_2
    add-int/lit8 v3, p1, 0x1

    .line 1500
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v4

    add-int/2addr v4, v2

    invoke-direct {p0, v3, v4}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    move-result-object v3

    .line 1502
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    sub-int/2addr p1, v1

    .line 1503
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-direct {p0, p1, v1}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    move-result-object p1

    .line 1504
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_3

    .line 1506
    invoke-direct {p0, v1}, Landroid/widget/ListView;->correctTooLow(I)V

    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    return-object p2

    :cond_4
    if-eqz p1, :cond_5

    return-object p1

    :cond_5
    return-object v3
.end method

.method private fillUp(II)Landroid/view/View;
    .locals 10

    .line 813
    iget v0, p0, Landroid/widget/ListView;->mGroupFlags:I

    const/16 v1, 0x22

    and-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    .line 814
    iget-object v0, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v6, p2

    goto :goto_0

    :cond_0
    move v6, p2

    move v0, v2

    :goto_0
    const/4 p2, 0x1

    if-le v6, v0, :cond_3

    if-ltz p1, :cond_3

    .line 819
    iget v1, p0, Landroid/widget/ListView;->mSelectedPosition:I

    if-ne p1, v1, :cond_1

    goto :goto_1

    :cond_1
    move p2, v2

    :goto_1
    const/4 v7, 0x0

    .line 820
    iget-object v1, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v1, Landroid/graphics/Rect;->left:I

    move-object v4, p0

    move v5, p1

    move v9, p2

    invoke-direct/range {v4 .. v9}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v1

    .line 821
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v4

    iget v5, p0, Landroid/widget/ListView;->mDividerHeight:I

    sub-int v6, v4, v5

    if-eqz p2, :cond_2

    move-object v3, v1

    :cond_2
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_3
    add-int/2addr p1, p2

    .line 828
    iput p1, p0, Landroid/widget/ListView;->mFirstPosition:I

    .line 829
    iget p1, p0, Landroid/widget/ListView;->mFirstPosition:I

    iget v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    add-int/2addr v0, v1

    sub-int/2addr v0, p2

    invoke-virtual {p0, p1, v0}, Landroid/widget/ListView;->setVisibleRangeHint(II)V

    return-object v3
.end method

.method private getArrowScrollPreviewLength()I
    .locals 1

    .line 2904
    invoke-virtual {p0}, Landroid/widget/ListView;->getVerticalFadingEdgeLength()I

    move-result p0

    const/4 v0, 0x2

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method private getBottomSelectionPixel(III)I
    .locals 0

    .line 981
    iget p0, p0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 p0, p0, -0x1

    if-eq p3, p0, :cond_0

    sub-int/2addr p1, p2

    :cond_0
    return p1
.end method

.method private getTopSelectionPixel(III)I
    .locals 0

    if-lez p3, :cond_0

    add-int/2addr p1, p2

    :cond_0
    return p1
.end method

.method private handleHorizontalFocusWithinListItem(I)Z
    .locals 3

    const/16 v0, 0x11

    if-eq p1, v0, :cond_1

    const/16 v0, 0x42

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 2591
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "direction must be one of {View.FOCUS_LEFT, View.FOCUS_RIGHT}"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2595
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    .line 2596
    iget-boolean v1, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    if-eqz v1, :cond_4

    if-lez v0, :cond_4

    iget v0, p0, Landroid/widget/ListView;->mSelectedPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    .line 2597
    invoke-virtual {p0}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2598
    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_4

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_4

    .line 2601
    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v1

    .line 2602
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v2

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v2, v0, v1, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2606
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    if-eqz v1, :cond_2

    .line 2608
    invoke-virtual {v1, v2}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 2609
    invoke-virtual {p0, v1, v2}, Landroid/widget/ListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2610
    invoke-virtual {p0, v0, v2}, Landroid/widget/ListView;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 2614
    :goto_1
    invoke-virtual {v0, p1, v2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p0, 0x1

    return p0

    .line 2622
    :cond_3
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    .line 2623
    invoke-virtual {p0}, Landroid/widget/ListView;->getRootView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 2622
    invoke-virtual {v0, v2, v1, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 2625
    invoke-direct {p0, p1, p0}, Landroid/widget/ListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result p0

    return p0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method private handleNewSelectionChange(Landroid/view/View;IIZ)V
    .locals 6

    const/4 v0, -0x1

    if-eq p3, v0, :cond_5

    .line 2807
    iget v0, p0, Landroid/widget/ListView;->mSelectedPosition:I

    iget v1, p0, Landroid/widget/ListView;->mFirstPosition:I

    sub-int/2addr v0, v1

    .line 2808
    iget v1, p0, Landroid/widget/ListView;->mFirstPosition:I

    sub-int/2addr p3, v1

    const/16 v1, 0x21

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p2, v1, :cond_0

    .line 2812
    invoke-virtual {p0, p3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    move v1, v0

    move-object v0, p1

    move-object p1, p2

    move p2, v2

    goto :goto_0

    .line 2819
    :cond_0
    invoke-virtual {p0, p3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    move v1, p3

    move p3, v0

    move-object v0, p2

    move p2, v3

    .line 2822
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v4

    if-eqz p1, :cond_2

    if-nez p4, :cond_1

    if-eqz p2, :cond_1

    move v5, v2

    goto :goto_1

    :cond_1
    move v5, v3

    .line 2826
    :goto_1
    invoke-virtual {p1, v5}, Landroid/view/View;->setSelected(Z)V

    .line 2827
    invoke-direct {p0, p1, p3, v4}, Landroid/widget/ListView;->measureAndAdjustDown(Landroid/view/View;II)V

    :cond_2
    if-eqz v0, :cond_4

    if-nez p4, :cond_3

    if-nez p2, :cond_3

    goto :goto_2

    :cond_3
    move v2, v3

    .line 2832
    :goto_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 2833
    invoke-direct {p0, v0, v1, v4}, Landroid/widget/ListView;->measureAndAdjustDown(Landroid/view/View;II)V

    :cond_4
    return-void

    .line 2796
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "newSelectedPosition needs to be valid"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private isDirectChildHeaderOrFooter(Landroid/view/View;)Z
    .locals 6

    .line 2004
    iget-object v0, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 2005
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v1, :cond_1

    .line 2007
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/ListView$FixedViewInfo;

    iget-object v5, v5, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    if-ne p1, v5, :cond_0

    return v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2012
    :cond_1
    iget-object p0, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    .line 2013
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v1, v2

    :goto_1
    if-ge v1, v0, :cond_3

    .line 2015
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView$FixedViewInfo;

    iget-object v3, v3, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    if-ne p1, v3, :cond_2

    return v4

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return v2
.end method

.method private isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z
    .locals 2

    const/4 v0, 0x1

    if-ne p1, p2, :cond_0

    return v0

    .line 3175
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .line 3176
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    check-cast p1, Landroid/view/View;

    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private lookForSelectablePositionOnScreen(I)I
    .locals 5

    .line 3034
    iget v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    const/4 v1, -0x1

    const/16 v2, 0x82

    if-ne p1, v2, :cond_4

    .line 3036
    iget p1, p0, Landroid/widget/ListView;->mSelectedPosition:I

    if-eq p1, v1, :cond_0

    .line 3037
    iget p1, p0, Landroid/widget/ListView;->mSelectedPosition:I

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    .line 3039
    :goto_0
    iget-object v2, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    if-lt p1, v2, :cond_1

    return v1

    :cond_1
    if-ge p1, v0, :cond_2

    move p1, v0

    .line 3046
    :cond_2
    invoke-virtual {p0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v2

    .line 3047
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    :goto_1
    if-gt p1, v2, :cond_9

    .line 3049
    invoke-interface {v3, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_3

    sub-int v4, p1, v0

    .line 3050
    invoke-virtual {p0, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_3

    return p1

    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 3055
    :cond_4
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result p1

    add-int/2addr p1, v0

    add-int/lit8 p1, p1, -0x1

    .line 3056
    iget v2, p0, Landroid/widget/ListView;->mSelectedPosition:I

    if-eq v2, v1, :cond_5

    .line 3057
    iget v2, p0, Landroid/widget/ListView;->mSelectedPosition:I

    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 3058
    :cond_5
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v2

    add-int/2addr v2, v0

    add-int/lit8 v2, v2, -0x1

    :goto_2
    if-ltz v2, :cond_a

    .line 3059
    iget-object v3, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    if-lt v2, v3, :cond_6

    goto :goto_5

    :cond_6
    if-le v2, p1, :cond_7

    goto :goto_3

    :cond_7
    move p1, v2

    .line 3066
    :goto_3
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    :goto_4
    if-lt p1, v0, :cond_9

    .line 3068
    invoke-interface {v2, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_8

    sub-int v3, p1, v0

    .line 3069
    invoke-virtual {p0, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_8

    return p1

    :cond_8
    add-int/lit8 p1, p1, -0x1

    goto :goto_4

    :cond_9
    return v1

    :cond_a
    :goto_5
    return v1
.end method

.method private makeAndAddView(IIZIZ)Landroid/view/View;
    .locals 9

    .line 2039
    iget-boolean v0, p0, Landroid/widget/ListView;->mDataChanged:Z

    if-nez v0, :cond_0

    .line 2041
    iget-object v0, p0, Landroid/widget/ListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView$RecycleBin;->getActiveView(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v8, 0x1

    move-object v1, p0

    move-object v2, v0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    .line 2045
    invoke-direct/range {v1 .. v8}, Landroid/widget/ListView;->setupChild(Landroid/view/View;IIZIZZ)V

    return-object v0

    .line 2052
    :cond_0
    iget-object v0, p0, Landroid/widget/ListView;->mIsScrap:[Z

    invoke-virtual {p0, p1, v0}, Landroid/widget/ListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v0

    .line 2055
    iget-object v1, p0, Landroid/widget/ListView;->mIsScrap:[Z

    const/4 v2, 0x0

    aget-boolean v8, v1, v2

    move-object v1, p0

    move-object v2, v0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v8}, Landroid/widget/ListView;->setupChild(Landroid/view/View;IIZIZZ)V

    return-object v0
.end method

.method private measureAndAdjustDown(Landroid/view/View;II)V
    .locals 2

    .line 2845
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 2846
    invoke-direct {p0, p1}, Landroid/widget/ListView;->measureItem(Landroid/view/View;)V

    .line 2847
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 2849
    invoke-direct {p0, p1}, Landroid/widget/ListView;->relayoutMeasuredItem(Landroid/view/View;)V

    .line 2852
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    sub-int/2addr p1, v0

    :goto_0
    add-int/lit8 p2, p2, 0x1

    if-ge p2, p3, :cond_0

    .line 2854
    invoke-virtual {p0, p2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private measureItem(Landroid/view/View;)V
    .locals 4

    .line 2865
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2867
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 2872
    :cond_0
    iget v1, p0, Landroid/widget/ListView;->mWidthMeasureSpec:I

    iget-object v2, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v1, v2, v3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 2874
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v0, :cond_1

    const/high16 p0, 0x40000000    # 2.0f

    .line 2877
    invoke-static {v0, p0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    goto :goto_0

    .line 2879
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ListView;->getMeasuredHeight()I

    move-result p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result p0

    .line 2882
    :goto_0
    invoke-virtual {p1, v1, p0}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method private measureScrapChild(Landroid/view/View;III)V
    .locals 2

    .line 1324
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsListView$LayoutParams;

    if-nez v0, :cond_0

    .line 1326
    invoke-virtual {p0}, Landroid/widget/ListView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsListView$LayoutParams;

    .line 1327
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1329
    :cond_0
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p2}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v1

    iput v1, v0, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    .line 1330
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p2}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result p2

    iput-boolean p2, v0, Landroid/widget/AbsListView$LayoutParams;->isEnabled:Z

    const/4 p2, 0x1

    .line 1331
    iput-boolean p2, v0, Landroid/widget/AbsListView$LayoutParams;->forceAdd:Z

    .line 1333
    iget-object p2, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->left:I

    iget-object p0, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->right:I

    add-int/2addr p2, p0

    iget p0, v0, Landroid/widget/AbsListView$LayoutParams;->width:I

    invoke-static {p3, p2, p0}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p0

    .line 1335
    iget p2, v0, Landroid/widget/AbsListView$LayoutParams;->height:I

    if-lez p2, :cond_1

    const/high16 p3, 0x40000000    # 2.0f

    .line 1338
    invoke-static {p2, p3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 1340
    invoke-static {p4, p2}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result p2

    .line 1342
    :goto_0
    invoke-virtual {p1, p0, p2}, Landroid/view/View;->measure(II)V

    .line 1346
    invoke-virtual {p1}, Landroid/view/View;->forceLayout()V

    return-void
.end method

.method private moveSelection(Landroid/view/View;Landroid/view/View;III)Landroid/view/View;
    .locals 9

    .line 1043
    invoke-virtual {p0}, Landroid/widget/ListView;->getVerticalFadingEdgeLength()I

    move-result v0

    .line 1044
    iget v7, p0, Landroid/widget/ListView;->mSelectedPosition:I

    .line 1048
    invoke-direct {p0, p4, v0, v7}, Landroid/widget/ListView;->getTopSelectionPixel(III)I

    move-result v8

    .line 1050
    invoke-direct {p0, p4, v0, v7}, Landroid/widget/ListView;->getBottomSelectionPixel(III)I

    move-result v0

    if-lez p3, :cond_2

    add-int/lit8 v2, v7, -0x1

    .line 1075
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    const/4 v4, 0x1

    iget-object p1, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, p1, Landroid/graphics/Rect;->left:I

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object p1

    .line 1078
    iget p2, p0, Landroid/widget/ListView;->mDividerHeight:I

    .line 1081
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p3

    add-int v3, p3, p2

    iget-object p3, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, p3, Landroid/graphics/Rect;->left:I

    const/4 v6, 0x1

    move v2, v7

    invoke-direct/range {v1 .. v6}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object p3

    .line 1085
    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result v1

    if-le v1, v0, :cond_0

    .line 1088
    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v1, v8

    .line 1091
    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result v2

    sub-int/2addr v2, v0

    sub-int/2addr p5, p4

    .line 1094
    div-int/lit8 p5, p5, 0x2

    .line 1095
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result p4

    .line 1096
    invoke-static {p4, p5}, Ljava/lang/Math;->min(II)I

    move-result p4

    neg-int p4, p4

    .line 1099
    invoke-virtual {p1, p4}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1101
    invoke-virtual {p3, p4}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1105
    :cond_0
    iget-boolean p1, p0, Landroid/widget/ListView;->mStackFromBottom:Z

    if-nez p1, :cond_1

    .line 1106
    iget p1, p0, Landroid/widget/ListView;->mSelectedPosition:I

    add-int/lit8 p1, p1, -0x2

    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result p4

    sub-int/2addr p4, p2

    invoke-direct {p0, p1, p4}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    .line 1107
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 1108
    iget p1, p0, Landroid/widget/ListView;->mSelectedPosition:I

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result p4

    add-int/2addr p4, p2

    invoke-direct {p0, p1, p4}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    goto/16 :goto_2

    .line 1110
    :cond_1
    iget p1, p0, Landroid/widget/ListView;->mSelectedPosition:I

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result p4

    add-int/2addr p4, p2

    invoke-direct {p0, p1, p4}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    .line 1111
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 1112
    iget p1, p0, Landroid/widget/ListView;->mSelectedPosition:I

    add-int/lit8 p1, p1, -0x2

    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result p4

    sub-int/2addr p4, p2

    invoke-direct {p0, p1, p4}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    goto/16 :goto_2

    :cond_2
    if-gez p3, :cond_5

    if-eqz p2, :cond_3

    .line 1137
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v3

    const/4 v4, 0x1

    iget-object p1, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, p1, Landroid/graphics/Rect;->left:I

    const/4 v6, 0x1

    move-object v1, p0

    move v2, v7

    invoke-direct/range {v1 .. v6}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object p1

    :goto_0
    move-object p3, p1

    goto :goto_1

    .line 1142
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    const/4 v4, 0x0

    iget-object p1, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, p1, Landroid/graphics/Rect;->left:I

    const/4 v6, 0x1

    move-object v1, p0

    move v2, v7

    invoke-direct/range {v1 .. v6}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 1147
    :goto_1
    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result p1

    if-ge p1, v8, :cond_4

    .line 1149
    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result p1

    sub-int/2addr v8, p1

    .line 1152
    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result p1

    sub-int/2addr v0, p1

    sub-int/2addr p5, p4

    .line 1155
    div-int/lit8 p5, p5, 0x2

    .line 1156
    invoke-static {v8, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 1157
    invoke-static {p1, p5}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 1160
    invoke-virtual {p3, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1164
    :cond_4
    invoke-direct {p0, p3, v7}, Landroid/widget/ListView;->fillAboveAndBelow(Landroid/view/View;I)V

    goto :goto_2

    .line 1167
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    const/4 v4, 0x1

    .line 1172
    iget-object p2, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, p2, Landroid/graphics/Rect;->left:I

    const/4 v6, 0x1

    move-object v1, p0

    move v2, v7

    move v3, p1

    invoke-direct/range {v1 .. v6}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object p3

    if-ge p1, p4, :cond_6

    .line 1178
    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result p1

    add-int/lit8 p2, p4, 0x14

    if-ge p1, p2, :cond_6

    .line 1181
    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result p1

    sub-int/2addr p4, p1

    invoke-virtual {p3, p4}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1186
    :cond_6
    invoke-direct {p0, p3, v7}, Landroid/widget/ListView;->fillAboveAndBelow(Landroid/view/View;I)V

    :goto_2
    return-object p3
.end method

.method private final nextSelectedPositionForDirection(Landroid/view/View;II)I
    .locals 5

    const/16 v0, 0x82

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne p3, v0, :cond_2

    .line 2667
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v3

    iget-object v4, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    if-eqz p1, :cond_1

    .line 2668
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    if-gt p1, v3, :cond_1

    if-eq p2, v2, :cond_0

    .line 2669
    iget p1, p0, Landroid/widget/ListView;->mFirstPosition:I

    if-lt p2, p1, :cond_0

    add-int/2addr p2, v1

    goto :goto_0

    .line 2671
    :cond_0
    iget p2, p0, Landroid/widget/ListView;->mFirstPosition:I

    goto :goto_0

    :cond_1
    return v2

    .line 2676
    :cond_2
    iget-object v3, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-eqz p1, :cond_7

    .line 2677
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    if-lt p1, v3, :cond_7

    .line 2678
    iget p1, p0, Landroid/widget/ListView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v3

    add-int/2addr p1, v3

    sub-int/2addr p1, v1

    if-eq p2, v2, :cond_3

    if-gt p2, p1, :cond_3

    sub-int/2addr p2, v1

    goto :goto_0

    :cond_3
    move p2, p1

    :goto_0
    if-ltz p2, :cond_6

    .line 2687
    iget-object p1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {p1}, Landroid/widget/ListAdapter;->getCount()I

    move-result p1

    if-lt p2, p1, :cond_4

    goto :goto_2

    :cond_4
    if-ne p3, v0, :cond_5

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    .line 2690
    :goto_1
    invoke-virtual {p0, p2, v1}, Landroid/widget/ListView;->lookForSelectablePosition(IZ)I

    move-result p0

    return p0

    :cond_6
    :goto_2
    return v2

    :cond_7
    return v2
.end method

.method private positionOfNewFocus(Landroid/view/View;)I
    .locals 3

    .line 3156
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 3158
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3159
    invoke-direct {p0, p1, v2}, Landroid/widget/ListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3160
    iget p0, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr p0, v1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3163
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "newFocus is not a child of any of the children of the list!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private relayoutMeasuredItem(Landroid/view/View;)V
    .locals 3

    .line 2891
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 2892
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 2893
    iget-object p0, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, p0

    .line 2895
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    add-int/2addr v1, v2

    .line 2897
    invoke-virtual {p1, p0, v2, v0, v1}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method private removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;)V"
        }
    .end annotation

    .line 414
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_1

    .line 416
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView$FixedViewInfo;

    .line 417
    iget-object v1, v1, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    if-ne v1, p1, :cond_0

    .line 418
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private removeUnusedFixedViews(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1987
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 1988
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView$FixedViewInfo;

    .line 1989
    iget-object v1, v1, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    .line 1990
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/AbsListView$LayoutParams;

    .line 1991
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_1

    if-eqz v2, :cond_1

    iget-boolean v3, v2, Landroid/widget/AbsListView$LayoutParams;->recycledHeaderFooter:Z

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    .line 1992
    invoke-virtual {p0, v1, v3}, Landroid/widget/ListView;->removeDetachedView(Landroid/view/View;Z)V

    .line 1993
    iput-boolean v3, v2, Landroid/widget/AbsListView$LayoutParams;->recycledHeaderFooter:Z

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private scrollListItemsBy(I)V
    .locals 7

    .line 3239
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->offsetChildrenTopAndBottom(I)V

    .line 3241
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v0

    iget-object v1, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    .line 3242
    iget-object v1, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 3243
    iget-object v2, p0, Landroid/widget/ListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    const/4 v3, 0x0

    if-gez p1, :cond_3

    .line 3249
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result p1

    add-int/lit8 v4, p1, -0x1

    .line 3250
    invoke-virtual {p0, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 3251
    :goto_0
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v5

    if-ge v5, v0, :cond_0

    .line 3252
    iget v5, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v5, p1

    add-int/lit8 v5, v5, -0x1

    .line 3253
    iget v6, p0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v6, v6, -0x1

    if-ge v5, v6, :cond_0

    .line 3254
    invoke-direct {p0, v4, v5}, Landroid/widget/ListView;->addViewBelow(Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 3264
    :cond_0
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result p1

    if-ge p1, v0, :cond_1

    .line 3265
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result p1

    sub-int/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->offsetChildrenTopAndBottom(I)V

    .line 3269
    :cond_1
    invoke-virtual {p0, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 3270
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    if-ge v0, v1, :cond_7

    .line 3271
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsListView$LayoutParams;

    .line 3272
    iget v0, v0, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    invoke-virtual {v2, v0}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3273
    iget v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    invoke-virtual {v2, p1, v0}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 3275
    :cond_2
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->detachViewFromParent(Landroid/view/View;)V

    .line 3276
    invoke-virtual {p0, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 3277
    iget v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    goto :goto_1

    .line 3281
    :cond_3
    invoke-virtual {p0, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 3284
    :goto_2
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    if-le v3, v1, :cond_4

    iget v3, p0, Landroid/widget/ListView;->mFirstPosition:I

    if-lez v3, :cond_4

    .line 3285
    iget v3, p0, Landroid/widget/ListView;->mFirstPosition:I

    invoke-direct {p0, p1, v3}, Landroid/widget/ListView;->addViewAbove(Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    .line 3286
    iget v3, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Landroid/widget/ListView;->mFirstPosition:I

    goto :goto_2

    .line 3291
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    if-le v3, v1, :cond_5

    .line 3292
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    sub-int/2addr v1, p1

    invoke-virtual {p0, v1}, Landroid/widget/ListView;->offsetChildrenTopAndBottom(I)V

    .line 3295
    :cond_5
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    .line 3296
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3299
    :goto_3
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    if-le v3, v0, :cond_7

    .line 3300
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/AbsListView$LayoutParams;

    .line 3301
    iget v3, v3, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    invoke-virtual {v2, v3}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 3302
    iget v3, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v3, p1

    invoke-virtual {v2, v1, v3}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 3304
    :cond_6
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->detachViewFromParent(Landroid/view/View;)V

    add-int/lit8 p1, p1, -0x1

    .line 3305
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    goto :goto_3

    .line 3308
    :cond_7
    invoke-virtual {v2}, Landroid/widget/AbsListView$RecycleBin;->fullyDetachScrapViews()V

    .line 3309
    iget-object p1, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Landroid/widget/ListView;->removeUnusedFixedViews(Ljava/util/List;)V

    .line 3310
    iget-object p1, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Landroid/widget/ListView;->removeUnusedFixedViews(Ljava/util/List;)V

    return-void
.end method

.method private setupChild(Landroid/view/View;IIZIZZ)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v4, p5

    const-string/jumbo v6, "setupListItem"

    const-wide/16 v7, 0x8

    .line 2078
    invoke-static {v7, v8, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    const/4 v6, 0x1

    const/4 v9, 0x0

    if-eqz p6, :cond_0

    .line 2080
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->shouldShowSelector()Z

    move-result v10

    if-eqz v10, :cond_0

    move v10, v6

    goto :goto_0

    :cond_0
    move v10, v9

    .line 2081
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isSelected()Z

    move-result v11

    if-eq v10, v11, :cond_1

    move v11, v6

    goto :goto_1

    :cond_1
    move v11, v9

    .line 2082
    :goto_1
    iget v12, v0, Landroid/widget/ListView;->mTouchMode:I

    if-lez v12, :cond_2

    const/4 v13, 0x3

    if-ge v12, v13, :cond_2

    .line 2083
    iget v12, v0, Landroid/widget/ListView;->mMotionPosition:I

    if-ne v12, v2, :cond_2

    move v12, v6

    goto :goto_2

    :cond_2
    move v12, v9

    .line 2085
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isPressed()Z

    move-result v13

    if-eq v12, v13, :cond_3

    move v13, v6

    goto :goto_3

    :cond_3
    move v13, v9

    :goto_3
    if-eqz p7, :cond_5

    if-nez v11, :cond_5

    .line 2087
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v14

    if-eqz v14, :cond_4

    goto :goto_4

    :cond_4
    move v14, v9

    goto :goto_5

    :cond_5
    :goto_4
    move v14, v6

    .line 2091
    :goto_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/widget/AbsListView$LayoutParams;

    if-nez v15, :cond_6

    .line 2093
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/widget/AbsListView$LayoutParams;

    .line 2095
    :cond_6
    iget-object v7, v0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v7, v2}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v7

    iput v7, v15, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    .line 2096
    iget-object v7, v0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v7, v2}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v7

    iput-boolean v7, v15, Landroid/widget/AbsListView$LayoutParams;->isEnabled:Z

    if-eqz v11, :cond_7

    .line 2102
    invoke-virtual {v1, v10}, Landroid/view/View;->setSelected(Z)V

    :cond_7
    if-eqz v13, :cond_8

    .line 2106
    invoke-virtual {v1, v12}, Landroid/view/View;->setPressed(Z)V

    .line 2109
    :cond_8
    iget v7, v0, Landroid/widget/ListView;->mChoiceMode:I

    if-eqz v7, :cond_a

    iget-object v7, v0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v7, :cond_a

    .line 2110
    instance-of v7, v1, Landroid/widget/Checkable;

    if-eqz v7, :cond_9

    .line 2111
    move-object v7, v1

    check-cast v7, Landroid/widget/Checkable;

    iget-object v8, v0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v8, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v8

    invoke-interface {v7, v8}, Landroid/widget/Checkable;->setChecked(Z)V

    goto :goto_6

    .line 2112
    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v8, 0xb

    if-lt v7, v8, :cond_a

    .line 2114
    iget-object v7, v0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v7

    invoke-virtual {v1, v7}, Landroid/view/View;->setActivated(Z)V

    :cond_a
    :goto_6
    const/4 v7, -0x1

    if-eqz p7, :cond_b

    .line 2118
    iget-boolean v8, v15, Landroid/widget/AbsListView$LayoutParams;->forceAdd:Z

    if-eqz v8, :cond_c

    :cond_b
    iget-boolean v8, v15, Landroid/widget/AbsListView$LayoutParams;->recycledHeaderFooter:Z

    const/4 v10, -0x2

    if-eqz v8, :cond_e

    iget v8, v15, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    if-ne v8, v10, :cond_e

    :cond_c
    if-eqz p4, :cond_d

    goto :goto_7

    :cond_d
    move v7, v9

    .line 2120
    :goto_7
    invoke-virtual {v0, v1, v7, v15}, Landroid/widget/ListView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    if-eqz p7, :cond_11

    .line 2125
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/AbsListView$LayoutParams;

    iget v5, v5, Landroid/widget/AbsListView$LayoutParams;->scrappedFromPosition:I

    if-eq v5, v2, :cond_11

    .line 2127
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    goto :goto_9

    .line 2130
    :cond_e
    iput-boolean v9, v15, Landroid/widget/AbsListView$LayoutParams;->forceAdd:Z

    .line 2131
    iget v2, v15, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    if-ne v2, v10, :cond_f

    .line 2132
    iput-boolean v6, v15, Landroid/widget/AbsListView$LayoutParams;->recycledHeaderFooter:Z

    :cond_f
    if-eqz p4, :cond_10

    goto :goto_8

    :cond_10
    move v7, v9

    .line 2134
    :goto_8
    invoke-virtual {v0, v1, v7, v15, v6}, Landroid/widget/ListView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    .line 2136
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->resolveRtlPropertiesIfNeeded()Z

    :cond_11
    :goto_9
    if-eqz v14, :cond_13

    .line 2140
    iget v2, v0, Landroid/widget/ListView;->mWidthMeasureSpec:I

    iget-object v5, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget-object v7, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v7

    iget v7, v15, Landroid/widget/AbsListView$LayoutParams;->width:I

    invoke-static {v2, v5, v7}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v2

    .line 2142
    iget v5, v15, Landroid/widget/AbsListView$LayoutParams;->height:I

    if-lez v5, :cond_12

    const/high16 v7, 0x40000000    # 2.0f

    .line 2145
    invoke-static {v5, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    goto :goto_a

    .line 2147
    :cond_12
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getMeasuredHeight()I

    move-result v5

    invoke-static {v5, v9}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v5

    .line 2150
    :goto_a
    invoke-virtual {v1, v2, v5}, Landroid/view/View;->measure(II)V

    goto :goto_b

    .line 2152
    :cond_13
    invoke-virtual/range {p0 .. p1}, Landroid/widget/ListView;->cleanupLayoutState(Landroid/view/View;)V

    .line 2155
    :goto_b
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 2156
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    if-eqz p4, :cond_14

    move/from16 v3, p3

    goto :goto_c

    :cond_14
    sub-int v3, p3, v5

    :goto_c
    if-eqz v14, :cond_15

    add-int/2addr v2, v4

    add-int/2addr v5, v3

    .line 2162
    invoke-virtual {v1, v4, v3, v2, v5}, Landroid/view/View;->layout(IIII)V

    goto :goto_d

    .line 2164
    :cond_15
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int v2, v4, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 2165
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v3, v2

    invoke-virtual {v1, v3}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 2168
    :goto_d
    iget-boolean v0, v0, Landroid/widget/ListView;->mCachingStarted:Z

    if-eqz v0, :cond_16

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isDrawingCacheEnabled()Z

    move-result v0

    if-nez v0, :cond_16

    .line 2169
    invoke-virtual {v1, v6}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    :cond_16
    const-wide/16 v0, 0x8

    .line 2172
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method private shouldAdjustHeightForDivider(I)Z
    .locals 13

    .line 4013
    iget v0, p0, Landroid/widget/ListView;->mDividerHeight:I

    .line 4014
    iget-object v1, p0, Landroid/widget/ListView;->mOverScrollHeader:Landroid/graphics/drawable/Drawable;

    .line 4015
    iget-object v2, p0, Landroid/widget/ListView;->mOverScrollFooter:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    if-eqz v2, :cond_1

    move v2, v4

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    if-lez v0, :cond_2

    .line 4018
    iget-object v0, p0, Landroid/widget/ListView;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    move v0, v4

    goto :goto_2

    :cond_2
    move v0, v3

    :goto_2
    if-eqz v0, :cond_12

    .line 4021
    invoke-virtual {p0}, Landroid/widget/ListView;->isOpaque()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-super {p0}, Landroid/widget/AbsListView;->isOpaque()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v4

    goto :goto_3

    :cond_3
    move v0, v3

    .line 4022
    :goto_3
    iget v5, p0, Landroid/widget/ListView;->mItemCount:I

    .line 4023
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v6

    .line 4024
    iget-object v7, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int v7, v5, v7

    if-ge p1, v6, :cond_4

    move v8, v4

    goto :goto_4

    :cond_4
    move v8, v3

    :goto_4
    if-lt p1, v7, :cond_5

    move v9, v4

    goto :goto_5

    :cond_5
    move v9, v3

    .line 4027
    :goto_5
    iget-boolean v10, p0, Landroid/widget/ListView;->mHeaderDividersEnabled:Z

    .line 4028
    iget-boolean v11, p0, Landroid/widget/ListView;->mFooterDividersEnabled:Z

    if-nez v10, :cond_6

    if-nez v8, :cond_12

    :cond_6
    if-nez v11, :cond_7

    if-nez v9, :cond_12

    .line 4030
    :cond_7
    iget-object v12, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 4031
    iget-boolean p0, p0, Landroid/widget/ListView;->mStackFromBottom:Z

    if-nez p0, :cond_d

    sub-int/2addr v5, v4

    if-ne p1, v5, :cond_8

    move p0, v4

    goto :goto_6

    :cond_8
    move p0, v3

    :goto_6
    if-eqz v2, :cond_9

    if-nez p0, :cond_12

    :cond_9
    add-int/lit8 v1, p1, 0x1

    .line 4038
    invoke-interface {v12, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_c

    if-nez v10, :cond_a

    if-nez v8, :cond_c

    if-lt v1, v6, :cond_c

    :cond_a
    if-nez p0, :cond_b

    .line 4040
    invoke-interface {v12, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result p0

    if-eqz p0, :cond_c

    if-nez v11, :cond_b

    if-nez v9, :cond_c

    if-ge v1, v7, :cond_c

    :cond_b
    return v4

    :cond_c
    if-eqz v0, :cond_12

    return v4

    :cond_d
    if-ne p1, v1, :cond_e

    move p0, v4

    goto :goto_7

    :cond_e
    move p0, v3

    :goto_7
    if-nez p0, :cond_12

    add-int/lit8 v1, p1, -0x1

    .line 4055
    invoke-interface {v12, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_11

    if-nez v10, :cond_f

    if-nez v8, :cond_11

    if-lt v1, v6, :cond_11

    :cond_f
    if-nez p0, :cond_10

    .line 4057
    invoke-interface {v12, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result p0

    if-eqz p0, :cond_11

    if-nez v11, :cond_10

    if-nez v9, :cond_11

    if-ge v1, v7, :cond_11

    :cond_10
    return v4

    :cond_11
    if-eqz v0, :cond_12

    return v4

    :cond_12
    return v3
.end method

.method private showingBottomFadingEdge()Z
    .locals 5

    .line 647
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    .line 648
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 649
    iget v2, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v2, v0

    const/4 v0, 0x1

    sub-int/2addr v2, v0

    .line 651
    iget v3, p0, Landroid/widget/ListView;->mScrollY:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    .line 653
    iget p0, p0, Landroid/widget/ListView;->mItemCount:I

    sub-int/2addr p0, v0

    if-lt v2, p0, :cond_1

    if-ge v1, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method private showingTopFadingEdge()Z
    .locals 3

    .line 639
    iget v0, p0, Landroid/widget/ListView;->mScrollY:I

    iget-object v1, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    .line 640
    iget v1, p0, Landroid/widget/ListView;->mFirstPosition:I

    const/4 v2, 0x0

    if-gtz v1, :cond_0

    invoke-virtual {p0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result p0

    if-le p0, v0, :cond_1

    :cond_0
    const/4 v2, 0x1

    :cond_1
    return v2
.end method


# virtual methods
.method public addFooterView(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 484
    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    return-void
.end method

.method public addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 2

    .line 441
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_0

    const-string v0, "ListView"

    const/4 v1, 0x5

    .line 442
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ListView"

    const-string v1, "The specified child already has a parent. You must call removeView() on the child\'s parent first."

    .line 443
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    :cond_0
    new-instance v0, Landroid/widget/ListView$FixedViewInfo;

    invoke-direct {v0, p0}, Landroid/widget/ListView$FixedViewInfo;-><init>(Landroid/widget/ListView;)V

    .line 449
    iput-object p1, v0, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    .line 450
    iput-object p2, v0, Landroid/widget/ListView$FixedViewInfo;->data:Ljava/lang/Object;

    .line 451
    iput-boolean p3, v0, Landroid/widget/ListView$FixedViewInfo;->isSelectable:Z

    .line 452
    iget-object p1, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 453
    iget-boolean p1, p0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    and-int/2addr p1, p3

    iput-boolean p1, p0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    .line 456
    iget-object p1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz p1, :cond_2

    .line 457
    iget-object p1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of p1, p1, Landroid/widget/HeaderViewListAdapter;

    if-nez p1, :cond_1

    .line 458
    invoke-virtual {p0}, Landroid/widget/ListView;->wrapHeaderListAdapterInternal()V

    .line 463
    :cond_1
    iget-object p1, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    if-eqz p1, :cond_2

    .line 464
    iget-object p0, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-virtual {p0}, Landroid/widget/AbsListView$AdapterDataSetObserver;->onChanged()V

    :cond_2
    return-void
.end method

.method public addHeaderView(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 383
    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    return-void
.end method

.method public addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 2

    .line 341
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_0

    const-string v0, "ListView"

    const/4 v1, 0x5

    .line 342
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ListView"

    const-string v1, "The specified child already has a parent. You must call removeView() on the child\'s parent first."

    .line 343
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    :cond_0
    new-instance v0, Landroid/widget/ListView$FixedViewInfo;

    invoke-direct {v0, p0}, Landroid/widget/ListView$FixedViewInfo;-><init>(Landroid/widget/ListView;)V

    .line 348
    iput-object p1, v0, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    .line 349
    iput-object p2, v0, Landroid/widget/ListView$FixedViewInfo;->data:Ljava/lang/Object;

    .line 350
    iput-boolean p3, v0, Landroid/widget/ListView$FixedViewInfo;->isSelectable:Z

    .line 351
    iget-object p1, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 352
    iget-boolean p1, p0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    and-int/2addr p1, p3

    iput-boolean p1, p0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    .line 355
    iget-object p1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz p1, :cond_2

    .line 356
    iget-object p1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of p1, p1, Landroid/widget/HeaderViewListAdapter;

    if-nez p1, :cond_1

    .line 357
    invoke-virtual {p0}, Landroid/widget/ListView;->wrapHeaderListAdapterInternal()V

    .line 362
    :cond_1
    iget-object p1, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    if-eqz p1, :cond_2

    .line 363
    iget-object p0, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-virtual {p0}, Landroid/widget/AbsListView$AdapterDataSetObserver;->onChanged()V

    :cond_2
    return-void
.end method

.method public areFooterDividersEnabled()Z
    .locals 0

    .line 3708
    iget-boolean p0, p0, Landroid/widget/ListView;->mFooterDividersEnabled:Z

    return p0
.end method

.method public areHeaderDividersEnabled()Z
    .locals 0

    .line 3685
    iget-boolean p0, p0, Landroid/widget/ListView;->mHeaderDividersEnabled:Z

    return p0
.end method

.method arrowScroll(I)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2641
    :try_start_0
    iput-boolean v0, p0, Landroid/widget/ListView;->mInLayout:Z

    .line 2642
    invoke-direct {p0, p1}, Landroid/widget/ListView;->arrowScrollImpl(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2644
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/ListView;->playSoundEffect(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2648
    :cond_0
    iput-boolean v1, p0, Landroid/widget/ListView;->mInLayout:Z

    return v0

    :catchall_0
    move-exception p1

    iput-boolean v1, p0, Landroid/widget/ListView;->mInLayout:Z

    throw p1
.end method

.method protected canAnimate()Z
    .locals 1

    .line 2177
    invoke-super {p0}, Landroid/widget/AbsListView;->canAnimate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, Landroid/widget/ListView;->mItemCount:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected dispatchDataSetObserverOnChangedInternal()V
    .locals 1

    .line 4151
    iget-object v0, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    if-eqz v0, :cond_0

    .line 4152
    iget-object p0, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-virtual {p0}, Landroid/widget/AbsListView$AdapterDataSetObserver;->onChanged()V

    :cond_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 30

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 3422
    iget-boolean v2, v0, Landroid/widget/ListView;->mCachingStarted:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 3423
    iput-boolean v3, v0, Landroid/widget/ListView;->mCachingActive:Z

    .line 3427
    :cond_0
    iget v2, v0, Landroid/widget/ListView;->mDividerHeight:I

    .line 3428
    iget-object v4, v0, Landroid/widget/ListView;->mOverScrollHeader:Landroid/graphics/drawable/Drawable;

    .line 3429
    iget-object v5, v0, Landroid/widget/ListView;->mOverScrollFooter:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_1

    move v7, v3

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    :goto_0
    if-eqz v5, :cond_2

    move v8, v3

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    :goto_1
    if-lez v2, :cond_3

    .line 3432
    iget-object v9, v0, Landroid/widget/ListView;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v9, :cond_3

    move v9, v3

    goto :goto_2

    :cond_3
    const/4 v9, 0x0

    :goto_2
    if-nez v9, :cond_4

    if-nez v7, :cond_4

    if-eqz v8, :cond_28

    .line 3436
    :cond_4
    iget-object v10, v0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    .line 3437
    iget v11, v0, Landroid/widget/ListView;->mPaddingLeft:I

    iput v11, v10, Landroid/graphics/Rect;->left:I

    .line 3438
    iget v11, v0, Landroid/widget/ListView;->mRight:I

    iget v12, v0, Landroid/widget/ListView;->mLeft:I

    sub-int/2addr v11, v12

    iget v12, v0, Landroid/widget/ListView;->mPaddingRight:I

    sub-int/2addr v11, v12

    iput v11, v10, Landroid/graphics/Rect;->right:I

    .line 3440
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v11

    .line 3441
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v12

    .line 3442
    iget v13, v0, Landroid/widget/ListView;->mItemCount:I

    .line 3443
    iget-object v14, v0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    sub-int v14, v13, v14

    .line 3444
    iget-boolean v15, v0, Landroid/widget/ListView;->mHeaderDividersEnabled:Z

    .line 3445
    iget-boolean v3, v0, Landroid/widget/ListView;->mFooterDividersEnabled:Z

    .line 3446
    iget v6, v0, Landroid/widget/ListView;->mFirstPosition:I

    move-object/from16 v17, v5

    .line 3447
    iget-boolean v5, v0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    .line 3448
    iget-object v5, v0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 3453
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->isOpaque()Z

    move-result v18

    if-eqz v18, :cond_5

    invoke-super/range {p0 .. p0}, Landroid/widget/AbsListView;->isOpaque()Z

    move-result v18

    if-nez v18, :cond_5

    const/16 v18, 0x1

    goto :goto_3

    :cond_5
    const/16 v18, 0x0

    :goto_3
    if-eqz v18, :cond_7

    move/from16 v19, v13

    .line 3455
    iget-object v13, v0, Landroid/widget/ListView;->mDividerPaint:Landroid/graphics/Paint;

    if-nez v13, :cond_6

    iget-boolean v13, v0, Landroid/widget/ListView;->mIsCacheColorOpaque:Z

    if-eqz v13, :cond_6

    .line 3456
    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V

    iput-object v13, v0, Landroid/widget/ListView;->mDividerPaint:Landroid/graphics/Paint;

    .line 3457
    iget-object v13, v0, Landroid/widget/ListView;->mDividerPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getCacheColorHint()I

    move-result v5

    invoke-virtual {v13, v5}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_4

    :cond_6
    move-object/from16 v20, v5

    goto :goto_4

    :cond_7
    move-object/from16 v20, v5

    move/from16 v19, v13

    .line 3459
    :goto_4
    iget-object v5, v0, Landroid/widget/ListView;->mDividerPaint:Landroid/graphics/Paint;

    .line 3463
    iget v13, v0, Landroid/widget/ListView;->mGroupFlags:I

    move-object/from16 v21, v5

    const/16 v5, 0x22

    and-int/2addr v13, v5

    if-ne v13, v5, :cond_8

    .line 3464
    iget-object v5, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    .line 3465
    iget-object v13, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->bottom:I

    move/from16 v22, v5

    goto :goto_5

    :cond_8
    const/4 v13, 0x0

    const/16 v22, 0x0

    .line 3468
    :goto_5
    iget v5, v0, Landroid/widget/ListView;->mBottom:I

    move/from16 v23, v8

    iget v8, v0, Landroid/widget/ListView;->mTop:I

    sub-int/2addr v5, v8

    sub-int/2addr v5, v13

    iget v8, v0, Landroid/widget/ListView;->mScrollY:I

    add-int/2addr v5, v8

    .line 3469
    iget-boolean v8, v0, Landroid/widget/ListView;->mStackFromBottom:Z

    const/4 v13, -0x1

    if-nez v8, :cond_18

    .line 3473
    iget v8, v0, Landroid/widget/ListView;->mScrollY:I

    if-lez v11, :cond_a

    if-gez v8, :cond_a

    if-eqz v7, :cond_9

    const/4 v7, 0x0

    .line 3476
    iput v7, v10, Landroid/graphics/Rect;->bottom:I

    .line 3477
    iput v8, v10, Landroid/graphics/Rect;->top:I

    .line 3478
    invoke-virtual {v0, v1, v4, v10}, Landroid/widget/ListView;->drawOverscrollHeader(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    goto :goto_6

    :cond_9
    const/4 v7, 0x0

    if-eqz v9, :cond_a

    .line 3480
    iput v7, v10, Landroid/graphics/Rect;->bottom:I

    neg-int v4, v2

    .line 3481
    iput v4, v10, Landroid/graphics/Rect;->top:I

    .line 3482
    invoke-virtual {v0, v1, v10, v13}, Landroid/widget/ListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    :cond_a
    :goto_6
    const/4 v4, 0x0

    const/4 v7, 0x0

    :goto_7
    if-ge v4, v11, :cond_17

    add-int v8, v6, v4

    if-ge v8, v12, :cond_b

    const/4 v13, 0x1

    goto :goto_8

    :cond_b
    const/4 v13, 0x0

    :goto_8
    if-lt v8, v14, :cond_c

    const/16 v22, 0x1

    goto :goto_9

    :cond_c
    const/16 v22, 0x0

    :goto_9
    if-nez v15, :cond_d

    if-nez v13, :cond_e

    :cond_d
    if-nez v3, :cond_10

    if-nez v22, :cond_e

    goto :goto_c

    :cond_e
    move/from16 v25, v5

    move/from16 v24, v6

    :goto_a
    move/from16 v26, v9

    move-object/from16 v9, v20

    :cond_f
    :goto_b
    move-object/from16 v5, v21

    goto :goto_e

    .line 3491
    :cond_10
    :goto_c
    invoke-virtual {v0, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 3492
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v7

    move/from16 v24, v6

    add-int/lit8 v6, v11, -0x1

    if-ne v4, v6, :cond_11

    const/4 v6, 0x1

    goto :goto_d

    :cond_11
    const/4 v6, 0x0

    :goto_d
    if-eqz v9, :cond_16

    if-ge v7, v5, :cond_16

    if-eqz v23, :cond_12

    if-nez v6, :cond_16

    :cond_12
    move/from16 v25, v5

    add-int/lit8 v5, v8, 0x1

    move/from16 v26, v9

    move-object/from16 v9, v20

    .line 3501
    invoke-interface {v9, v8}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v8

    if-eqz v8, :cond_15

    if-nez v15, :cond_13

    if-nez v13, :cond_15

    if-lt v5, v12, :cond_15

    :cond_13
    if-nez v6, :cond_14

    .line 3503
    invoke-interface {v9, v5}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_15

    if-nez v3, :cond_14

    if-nez v22, :cond_15

    if-ge v5, v14, :cond_15

    .line 3505
    :cond_14
    iput v7, v10, Landroid/graphics/Rect;->top:I

    add-int v5, v7, v2

    .line 3506
    iput v5, v10, Landroid/graphics/Rect;->bottom:I

    .line 3507
    invoke-virtual {v0, v1, v10, v4}, Landroid/widget/ListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    goto :goto_b

    :cond_15
    if-eqz v18, :cond_f

    .line 3509
    iput v7, v10, Landroid/graphics/Rect;->top:I

    add-int v5, v7, v2

    .line 3510
    iput v5, v10, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v5, v21

    .line 3511
    invoke-virtual {v1, v10, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_e

    :cond_16
    move/from16 v25, v5

    goto :goto_a

    :goto_e
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v21, v5

    move-object/from16 v20, v9

    move/from16 v6, v24

    move/from16 v5, v25

    move/from16 v9, v26

    goto/16 :goto_7

    :cond_17
    move/from16 v24, v6

    .line 3517
    iget v2, v0, Landroid/widget/ListView;->mBottom:I

    iget v3, v0, Landroid/widget/ListView;->mScrollY:I

    add-int/2addr v2, v3

    if-eqz v23, :cond_28

    add-int v6, v24, v11

    move/from16 v3, v19

    if-ne v6, v3, :cond_28

    if-le v2, v7, :cond_28

    .line 3520
    iput v7, v10, Landroid/graphics/Rect;->top:I

    .line 3521
    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v6, v17

    .line 3522
    invoke-virtual {v0, v1, v6, v10}, Landroid/widget/ListView;->drawOverscrollFooter(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    goto/16 :goto_15

    :cond_18
    move/from16 v25, v5

    move/from16 v24, v6

    move/from16 v26, v9

    move-object/from16 v6, v17

    move-object/from16 v9, v20

    move-object/from16 v5, v21

    .line 3527
    iget v8, v0, Landroid/widget/ListView;->mScrollY:I

    if-lez v11, :cond_19

    if-eqz v7, :cond_19

    .line 3530
    iput v8, v10, Landroid/graphics/Rect;->top:I

    const/4 v13, 0x0

    .line 3531
    invoke-virtual {v0, v13}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    move-result v13

    iput v13, v10, Landroid/graphics/Rect;->bottom:I

    .line 3532
    invoke-virtual {v0, v1, v4, v10}, Landroid/widget/ListView;->drawOverscrollHeader(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    :cond_19
    move v4, v7

    :goto_f
    if-ge v4, v11, :cond_26

    add-int v13, v24, v4

    if-ge v13, v12, :cond_1a

    const/16 v16, 0x1

    goto :goto_10

    :cond_1a
    const/16 v16, 0x0

    :goto_10
    if-lt v13, v14, :cond_1b

    const/16 v17, 0x1

    goto :goto_11

    :cond_1b
    const/16 v17, 0x0

    :goto_11
    if-nez v15, :cond_1e

    if-nez v16, :cond_1c

    goto :goto_12

    :cond_1c
    move-object/from16 v27, v6

    :cond_1d
    move/from16 v29, v7

    move/from16 v28, v8

    move/from16 v8, v22

    goto :goto_14

    :cond_1e
    :goto_12
    if-nez v3, :cond_1f

    if-nez v17, :cond_1c

    .line 3541
    :cond_1f
    invoke-virtual {v0, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    move-object/from16 v27, v6

    .line 3542
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getTop()I

    move-result v6

    if-eqz v26, :cond_1d

    move/from16 v28, v8

    move/from16 v8, v22

    if-le v6, v8, :cond_24

    if-ne v4, v7, :cond_20

    const/16 v19, 0x1

    goto :goto_13

    :cond_20
    const/16 v19, 0x0

    :goto_13
    move/from16 v29, v7

    add-int/lit8 v7, v13, -0x1

    .line 3549
    invoke-interface {v9, v13}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v13

    if-eqz v13, :cond_23

    if-nez v15, :cond_21

    if-nez v16, :cond_23

    if-lt v7, v12, :cond_23

    :cond_21
    if-nez v19, :cond_22

    .line 3551
    invoke-interface {v9, v7}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v13

    if-eqz v13, :cond_23

    if-nez v3, :cond_22

    if-nez v17, :cond_23

    if-ge v7, v14, :cond_23

    :cond_22
    sub-int v7, v6, v2

    .line 3553
    iput v7, v10, Landroid/graphics/Rect;->top:I

    .line 3554
    iput v6, v10, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v6, v4, -0x1

    .line 3559
    invoke-virtual {v0, v1, v10, v6}, Landroid/widget/ListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    goto :goto_14

    :cond_23
    if-eqz v18, :cond_25

    sub-int v7, v6, v2

    .line 3561
    iput v7, v10, Landroid/graphics/Rect;->top:I

    .line 3562
    iput v6, v10, Landroid/graphics/Rect;->bottom:I

    .line 3563
    invoke-virtual {v1, v10, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_14

    :cond_24
    move/from16 v29, v7

    :cond_25
    :goto_14
    add-int/lit8 v4, v4, 0x1

    move/from16 v22, v8

    move-object/from16 v6, v27

    move/from16 v8, v28

    move/from16 v7, v29

    goto :goto_f

    :cond_26
    move-object/from16 v27, v6

    move/from16 v28, v8

    if-lez v11, :cond_28

    if-lez v28, :cond_28

    if-eqz v23, :cond_27

    .line 3571
    iget v2, v0, Landroid/widget/ListView;->mBottom:I

    .line 3572
    iput v2, v10, Landroid/graphics/Rect;->top:I

    add-int v2, v2, v28

    .line 3573
    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v2, v27

    .line 3574
    invoke-virtual {v0, v1, v2, v10}, Landroid/widget/ListView;->drawOverscrollFooter(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    goto :goto_15

    :cond_27
    if-eqz v26, :cond_28

    move/from16 v5, v25

    .line 3576
    iput v5, v10, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v2

    .line 3577
    iput v5, v10, Landroid/graphics/Rect;->bottom:I

    const/4 v2, -0x1

    .line 3578
    invoke-virtual {v0, v1, v10, v2}, Landroid/widget/ListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 3585
    :cond_28
    :goto_15
    invoke-super/range {p0 .. p1}, Landroid/widget/AbsListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 2331
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2334
    invoke-virtual {p0}, Landroid/widget/ListView;->getFocusedChild()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2335
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 2338
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/widget/ListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :cond_0
    return v0
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 0

    .line 3590
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AbsListView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    .line 3591
    iget-boolean p3, p0, Landroid/widget/ListView;->mCachingActive:Z

    if-eqz p3, :cond_0

    iget-boolean p2, p2, Landroid/view/View;->mCachingFailed:Z

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    .line 3592
    iput-boolean p2, p0, Landroid/widget/ListView;->mCachingActive:Z

    :cond_0
    return p1
.end method

.method drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V
    .locals 0

    .line 3608
    iget-object p0, p0, Landroid/widget/ListView;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 3610
    invoke-virtual {p0, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3611
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method drawOverscrollFooter(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V
    .locals 2

    .line 3404
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result p0

    .line 3406
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 3407
    invoke-virtual {p1, p3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 3409
    iget v0, p3, Landroid/graphics/Rect;->bottom:I

    iget v1, p3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    if-ge v0, p0, :cond_0

    .line 3411
    iget v0, p3, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, p0

    iput v0, p3, Landroid/graphics/Rect;->bottom:I

    .line 3414
    :cond_0
    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3415
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3417
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method drawOverscrollHeader(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V
    .locals 2

    .line 3387
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result p0

    .line 3389
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 3390
    invoke-virtual {p1, p3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 3392
    iget v0, p3, Landroid/graphics/Rect;->bottom:I

    iget v1, p3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    if-ge v0, p0, :cond_0

    .line 3394
    iget v0, p3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, p0

    iput v0, p3, Landroid/graphics/Rect;->top:I

    .line 3397
    :cond_0
    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3398
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3400
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .locals 1

    .line 4131
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    const-string/jumbo v0, "recycleOnMeasure"

    .line 4133
    invoke-virtual {p0}, Landroid/widget/ListView;->recycleOnMeasure()Z

    move-result p0

    invoke-virtual {p1, v0, p0}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    return-void
.end method

.method fillGap(Z)V
    .locals 3

    .line 742
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x22

    if-eqz p1, :cond_2

    .line 745
    iget p1, p0, Landroid/widget/ListView;->mGroupFlags:I

    and-int/2addr p1, v2

    if-ne p1, v2, :cond_0

    .line 746
    invoke-virtual {p0}, Landroid/widget/ListView;->getListPaddingTop()I

    move-result v1

    :cond_0
    if-lez v0, :cond_1

    add-int/lit8 p1, v0, -0x1

    .line 748
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    iget v1, p0, Landroid/widget/ListView;->mDividerHeight:I

    add-int/2addr v1, p1

    .line 750
    :cond_1
    iget p1, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr p1, v0

    invoke-direct {p0, p1, v1}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    .line 751
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result p1

    invoke-direct {p0, p1}, Landroid/widget/ListView;->correctTooHigh(I)V

    goto :goto_2

    .line 754
    :cond_2
    iget p1, p0, Landroid/widget/ListView;->mGroupFlags:I

    and-int/2addr p1, v2

    if-ne p1, v2, :cond_3

    .line 755
    invoke-virtual {p0}, Landroid/widget/ListView;->getListPaddingBottom()I

    move-result p1

    goto :goto_0

    :cond_3
    move p1, v1

    :goto_0
    if-lez v0, :cond_4

    .line 757
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    iget v0, p0, Landroid/widget/ListView;->mDividerHeight:I

    sub-int/2addr p1, v0

    goto :goto_1

    .line 758
    :cond_4
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v0

    sub-int p1, v0, p1

    .line 759
    :goto_1
    iget v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0, p1}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    .line 760
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result p1

    invoke-direct {p0, p1}, Landroid/widget/ListView;->correctTooLow(I)V

    :goto_2
    return-void
.end method

.method findMotionRow(I)I
    .locals 3

    .line 1448
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 1450
    iget-boolean v1, p0, Landroid/widget/ListView;->mStackFromBottom:Z

    if-nez v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 1452
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1453
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    if-gt p1, v2, :cond_0

    .line 1454
    iget p0, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr p0, v1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_3

    .line 1459
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1460
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    if-lt p1, v1, :cond_2

    .line 1461
    iget p0, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr p0, v0

    return p0

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_3
    const/4 p0, -0x1

    return p0
.end method

.method findViewByPredicateInHeadersOrFooters(Ljava/util/ArrayList;Ljava/util/function/Predicate;Landroid/view/View;)Landroid/view/View;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;",
            "Ljava/util/function/Predicate<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 3940
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_1

    .line 3944
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView$FixedViewInfo;

    iget-object v1, v1, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    if-eq v1, p3, :cond_0

    .line 3946
    invoke-virtual {v1}, Landroid/view/View;->isRootNamespace()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3947
    invoke-virtual {v1, p2}, Landroid/view/View;->findViewByPredicate(Ljava/util/function/Predicate;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method protected findViewByPredicateTraversal(Ljava/util/function/Predicate;Landroid/view/View;)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Ljava/util/function/Predicate<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")TT;"
        }
    .end annotation

    .line 3918
    invoke-super {p0, p1, p2}, Landroid/widget/AbsListView;->findViewByPredicateTraversal(Ljava/util/function/Predicate;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    .line 3920
    iget-object v0, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, p1, p2}, Landroid/widget/ListView;->findViewByPredicateInHeadersOrFooters(Ljava/util/ArrayList;Ljava/util/function/Predicate;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 3925
    :cond_0
    iget-object v0, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, p1, p2}, Landroid/widget/ListView;->findViewByPredicateInHeadersOrFooters(Ljava/util/ArrayList;Ljava/util/function/Predicate;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    return-object v0
.end method

.method findViewInHeadersOrFooters(Ljava/util/ArrayList;I)Landroid/view/View;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;I)",
            "Landroid/view/View;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 3845
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_1

    .line 3849
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView$FixedViewInfo;

    iget-object v1, v1, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    .line 3851
    invoke-virtual {v1}, Landroid/view/View;->isRootNamespace()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3852
    invoke-virtual {v1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method protected findViewTraversal(I)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 3828
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->findViewTraversal(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    .line 3830
    iget-object v0, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, p1}, Landroid/widget/ListView;->findViewInHeadersOrFooters(Ljava/util/ArrayList;I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 3834
    :cond_0
    iget-object v0, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, p1}, Landroid/widget/ListView;->findViewInHeadersOrFooters(Ljava/util/ArrayList;I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    return-object v0
.end method

.method findViewWithTagInHeadersOrFooters(Ljava/util/ArrayList;Ljava/lang/Object;)Landroid/view/View;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;",
            "Ljava/lang/Object;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 3890
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_1

    .line 3894
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView$FixedViewInfo;

    iget-object v1, v1, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    .line 3896
    invoke-virtual {v1}, Landroid/view/View;->isRootNamespace()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3897
    invoke-virtual {v1, p2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method protected findViewWithTagTraversal(Ljava/lang/Object;)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 3871
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->findViewWithTagTraversal(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    .line 3873
    iget-object v0, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, p1}, Landroid/widget/ListView;->findViewWithTagInHeadersOrFooters(Ljava/util/ArrayList;Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 3878
    :cond_0
    iget-object v0, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, p1}, Landroid/widget/ListView;->findViewWithTagInHeadersOrFooters(Ljava/util/ArrayList;Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    return-object v0
.end method

.method fullScroll(I)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x21

    if-ne p1, v2, :cond_0

    .line 2551
    iget p1, p0, Landroid/widget/ListView;->mSelectedPosition:I

    if-eqz p1, :cond_1

    .line 2552
    iget p1, p0, Landroid/widget/ListView;->mSelectedPosition:I

    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/ListView;->lookForSelectablePositionAfter(IIZ)I

    move-result p1

    if-ltz p1, :cond_2

    .line 2554
    iput v1, p0, Landroid/widget/ListView;->mLayoutMode:I

    .line 2555
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->setSelectionInt(I)V

    .line 2556
    invoke-virtual {p0}, Landroid/widget/ListView;->invokeOnItemScrollListener()V

    goto :goto_0

    :cond_0
    const/16 v2, 0x82

    if-ne p1, v2, :cond_1

    .line 2561
    iget p1, p0, Landroid/widget/ListView;->mItemCount:I

    sub-int/2addr p1, v1

    .line 2562
    iget v2, p0, Landroid/widget/ListView;->mSelectedPosition:I

    if-ge v2, p1, :cond_1

    .line 2563
    iget v2, p0, Landroid/widget/ListView;->mSelectedPosition:I

    invoke-virtual {p0, v2, p1, v0}, Landroid/widget/ListView;->lookForSelectablePositionAfter(IIZ)I

    move-result p1

    if-ltz p1, :cond_2

    const/4 v0, 0x3

    .line 2566
    iput v0, p0, Landroid/widget/ListView;->mLayoutMode:I

    .line 2567
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->setSelectionInt(I)V

    .line 2568
    invoke-virtual {p0}, Landroid/widget/ListView;->invokeOnItemScrollListener()V

    goto :goto_0

    :cond_1
    move v1, v0

    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    .line 2574
    invoke-virtual {p0}, Landroid/widget/ListView;->awakenScrollBars()Z

    move-result p1

    if-nez p1, :cond_3

    .line 2575
    invoke-virtual {p0}, Landroid/widget/ListView;->awakenScrollBars()Z

    .line 2576
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    :cond_3
    return v1
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 0

    .line 4073
    const-class p0, Landroid/widget/ListView;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 0

    .line 149
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p0

    return-object p0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 0

    .line 525
    iget-object p0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    return-object p0
.end method

.method public getCheckItemIds()[J
    .locals 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3970
    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3971
    invoke-virtual {p0}, Landroid/widget/ListView;->getCheckedItemIds()[J

    move-result-object p0

    return-object p0

    .line 3976
    :cond_0
    iget v0, p0, Landroid/widget/ListView;->mChoiceMode:I

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_4

    .line 3977
    iget-object v0, p0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 3978
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    .line 3979
    new-array v3, v2, [J

    .line 3980
    iget-object p0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    move v4, v1

    move v5, v4

    :goto_0
    if-ge v4, v2, :cond_2

    .line 3984
    invoke-virtual {v0, v4}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v6

    if-eqz v6, :cond_1

    add-int/lit8 v6, v5, 0x1

    .line 3985
    invoke-virtual {v0, v4}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v7

    invoke-interface {p0, v7}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v7

    aput-wide v7, v3, v5

    move v5, v6

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    if-ne v5, v2, :cond_3

    return-object v3

    .line 3994
    :cond_3
    new-array p0, v5, [J

    .line 3995
    invoke-static {v3, v1, p0, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0

    .line 4000
    :cond_4
    new-array p0, v1, [J

    return-object p0
.end method

.method public getDivider()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 3622
    iget-object p0, p0, Landroid/widget/ListView;->mDivider:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getDividerHeight()I
    .locals 0

    .line 3650
    iget p0, p0, Landroid/widget/ListView;->mDividerHeight:I

    return p0
.end method

.method public getFooterViewsCount()I
    .locals 0

    .line 489
    iget-object p0, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public getHeaderViewsCount()I
    .locals 0

    .line 388
    iget-object p0, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method getHeightForPosition(I)I
    .locals 1

    .line 4005
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->getHeightForPosition(I)I

    move-result v0

    .line 4006
    invoke-direct {p0, p1}, Landroid/widget/ListView;->shouldAdjustHeightForDivider(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4007
    iget p0, p0, Landroid/widget/ListView;->mDividerHeight:I

    add-int/2addr v0, p0

    return v0

    :cond_0
    return v0
.end method

.method public getItemsCanFocus()Z
    .locals 0

    .line 3349
    iget-boolean p0, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    return p0
.end method

.method public getMaxScrollAmount()I
    .locals 1

    .line 274
    iget v0, p0, Landroid/widget/ListView;->mBottom:I

    iget p0, p0, Landroid/widget/ListView;->mTop:I

    sub-int/2addr v0, p0

    int-to-float p0, v0

    const v0, 0x3ea8f5c3    # 0.33f

    mul-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method public getOverscrollFooter()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 3747
    iget-object p0, p0, Landroid/widget/ListView;->mOverScrollFooter:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getOverscrollHeader()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 3728
    iget-object p0, p0, Landroid/widget/ListView;->mOverScrollHeader:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public isOpaque()Z
    .locals 5

    .line 3354
    iget-boolean v0, p0, Landroid/widget/ListView;->mCachingActive:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/ListView;->mIsCacheColorOpaque:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/ListView;->mDividerIsOpaque:Z

    if-eqz v0, :cond_0

    .line 3355
    invoke-virtual {p0}, Landroid/widget/ListView;->hasOpaqueScrollbars()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0}, Landroid/widget/AbsListView;->isOpaque()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    if-eqz v0, :cond_8

    .line 3358
    iget-object v3, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    goto :goto_1

    :cond_3
    iget v3, p0, Landroid/widget/ListView;->mPaddingTop:I

    .line 3359
    :goto_1
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 3360
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    if-le v4, v3, :cond_4

    goto :goto_3

    .line 3363
    :cond_4
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v3

    .line 3364
    iget-object v4, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    if-eqz v4, :cond_5

    iget-object v4, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    goto :goto_2

    :cond_5
    iget v4, p0, Landroid/widget/ListView;->mPaddingBottom:I

    :goto_2
    sub-int/2addr v3, v4

    .line 3365
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-virtual {p0, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_6

    .line 3366
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result p0

    if-ge p0, v3, :cond_8

    :cond_6
    return v2

    :cond_7
    :goto_3
    return v2

    :cond_8
    return v0
.end method

.method protected layoutChildren()V
    .locals 23

    move-object/from16 v7, p0

    .line 1625
    iget-boolean v8, v7, Landroid/widget/ListView;->mBlockLayoutRequests:Z

    if-eqz v8, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 1630
    iput-boolean v0, v7, Landroid/widget/ListView;->mBlockLayoutRequests:Z

    const/4 v9, 0x0

    .line 1633
    :try_start_0
    invoke-super/range {p0 .. p0}, Landroid/widget/AbsListView;->layoutChildren()V

    .line 1635
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->invalidate()V

    .line 1637
    iget-object v1, v7, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v1, :cond_3

    .line 1638
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->resetList()V

    .line 1639
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->invokeOnItemScrollListener()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1960
    iget-object v0, v7, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    if-eqz v0, :cond_1

    .line 1961
    iget-object v0, v7, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    invoke-virtual {v0}, Landroid/widget/ListView$FocusSelector;->onLayoutComplete()V

    :cond_1
    if-nez v8, :cond_2

    .line 1964
    iput-boolean v9, v7, Landroid/widget/ListView;->mBlockLayoutRequests:Z

    :cond_2
    return-void

    .line 1643
    :cond_3
    :try_start_1
    iget-object v1, v7, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v1, Landroid/graphics/Rect;->top:I

    .line 1644
    iget v1, v7, Landroid/widget/ListView;->mBottom:I

    iget v2, v7, Landroid/widget/ListView;->mTop:I

    sub-int/2addr v1, v2

    iget-object v2, v7, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v6, v1, v2

    .line 1645
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    .line 1656
    iget v2, v7, Landroid/widget/ListView;->mLayoutMode:I

    packed-switch v2, :pswitch_data_0

    .line 1671
    iget v2, v7, Landroid/widget/ListView;->mSelectedPosition:I

    goto :goto_1

    .line 1658
    :pswitch_0
    iget v2, v7, Landroid/widget/ListView;->mNextSelectedPosition:I

    iget v3, v7, Landroid/widget/ListView;->mFirstPosition:I

    sub-int/2addr v2, v3

    if-ltz v2, :cond_4

    if-ge v2, v1, :cond_4

    .line 1660
    invoke-virtual {v7, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    move-object v3, v2

    move v4, v9

    const/4 v2, 0x0

    goto :goto_0

    :cond_4
    :pswitch_1
    move v4, v9

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v11, 0x0

    goto :goto_4

    .line 1671
    :goto_1
    iget v3, v7, Landroid/widget/ListView;->mFirstPosition:I

    sub-int/2addr v2, v3

    if-ltz v2, :cond_5

    if-ge v2, v1, :cond_5

    .line 1673
    invoke-virtual {v7, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    .line 1677
    :goto_2
    invoke-virtual {v7, v9}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1679
    iget v11, v7, Landroid/widget/ListView;->mNextSelectedPosition:I

    if-ltz v11, :cond_6

    .line 1680
    iget v11, v7, Landroid/widget/ListView;->mNextSelectedPosition:I

    iget v12, v7, Landroid/widget/ListView;->mSelectedPosition:I

    sub-int/2addr v11, v12

    goto :goto_3

    :cond_6
    move v11, v9

    :goto_3
    add-int/2addr v2, v11

    .line 1684
    invoke-virtual {v7, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v21, v3

    move-object v3, v2

    move-object/from16 v2, v21

    move/from16 v22, v11

    move-object v11, v4

    move/from16 v4, v22

    .line 1688
    :goto_4
    iget-boolean v12, v7, Landroid/widget/ListView;->mDataChanged:Z

    if-eqz v12, :cond_7

    .line 1690
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->handleDataChanged()V

    .line 1695
    :cond_7
    iget v13, v7, Landroid/widget/ListView;->mItemCount:I

    if-nez v13, :cond_a

    .line 1696
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->resetList()V

    .line 1697
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->invokeOnItemScrollListener()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1960
    iget-object v0, v7, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    if-eqz v0, :cond_8

    .line 1961
    iget-object v0, v7, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    invoke-virtual {v0}, Landroid/widget/ListView$FocusSelector;->onLayoutComplete()V

    :cond_8
    if-nez v8, :cond_9

    .line 1964
    iput-boolean v9, v7, Landroid/widget/ListView;->mBlockLayoutRequests:Z

    :cond_9
    return-void

    .line 1699
    :cond_a
    :try_start_2
    iget v13, v7, Landroid/widget/ListView;->mItemCount:I

    iget-object v14, v7, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v14}, Landroid/widget/ListAdapter;->getCount()I

    move-result v14

    if-ne v13, v14, :cond_31

    .line 1708
    iget v13, v7, Landroid/widget/ListView;->mNextSelectedPosition:I

    invoke-virtual {v7, v13}, Landroid/widget/ListView;->setSelectedPositionInt(I)V

    .line 1717
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v13

    if-eqz v13, :cond_d

    .line 1719
    invoke-virtual {v13}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedHost()Landroid/view/View;

    move-result-object v15

    if-eqz v15, :cond_d

    .line 1721
    invoke-virtual {v7, v15}, Landroid/widget/ListView;->getAccessibilityFocusedChild(Landroid/view/View;)Landroid/view/View;

    move-result-object v10

    if-eqz v10, :cond_d

    if-eqz v12, :cond_c

    .line 1723
    invoke-direct {v7, v10}, Landroid/widget/ListView;->isDirectChildHeaderOrFooter(Landroid/view/View;)Z

    move-result v16

    if-nez v16, :cond_c

    .line 1724
    invoke-virtual {v10}, Landroid/view/View;->hasTransientState()Z

    move-result v16

    if-eqz v16, :cond_b

    iget-boolean v14, v7, Landroid/widget/ListView;->mAdapterHasStableIds:Z

    if-eqz v14, :cond_b

    goto :goto_5

    :cond_b
    const/4 v14, 0x0

    const/4 v15, 0x0

    goto :goto_6

    .line 1729
    :cond_c
    :goto_5
    invoke-virtual {v13}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedVirtualView()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v14

    .line 1734
    :goto_6
    invoke-virtual {v7, v10}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I

    move-result v10

    goto :goto_7

    :cond_d
    const/4 v10, -0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 1745
    :goto_7
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getFocusedChild()Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_11

    if-eqz v12, :cond_f

    .line 1752
    invoke-direct {v7, v9}, Landroid/widget/ListView;->isDirectChildHeaderOrFooter(Landroid/view/View;)Z

    move-result v16

    if-nez v16, :cond_f

    .line 1753
    invoke-virtual {v9}, Landroid/view/View;->hasTransientState()Z

    move-result v16

    if-nez v16, :cond_f

    iget-boolean v0, v7, Landroid/widget/ListView;->mAdapterHasStableIds:Z

    if-eqz v0, :cond_e

    goto :goto_8

    :cond_e
    const/4 v0, 0x0

    const/4 v9, 0x0

    goto :goto_9

    .line 1756
    :cond_f
    :goto_8
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->findFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 1759
    invoke-virtual {v0}, Landroid/view/View;->dispatchStartTemporaryDetach()V

    .line 1762
    :cond_10
    :goto_9
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->requestFocus()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move/from16 v17, v8

    goto :goto_a

    :cond_11
    move/from16 v17, v8

    const/4 v0, 0x0

    const/4 v9, 0x0

    .line 1767
    :goto_a
    :try_start_3
    iget v8, v7, Landroid/widget/ListView;->mFirstPosition:I

    move/from16 v18, v10

    .line 1768
    iget-object v10, v7, Landroid/widget/ListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    if-eqz v12, :cond_13

    const/4 v12, 0x0

    :goto_b
    if-ge v12, v1, :cond_12

    move-object/from16 v19, v14

    .line 1771
    invoke-virtual {v7, v12}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    move-object/from16 v20, v15

    add-int v15, v8, v12

    invoke-virtual {v10, v14, v15}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v14, v19

    move-object/from16 v15, v20

    goto :goto_b

    :cond_12
    move-object/from16 v19, v14

    move-object/from16 v20, v15

    goto :goto_c

    :cond_13
    move-object/from16 v19, v14

    move-object/from16 v20, v15

    .line 1774
    invoke-virtual {v10, v1, v8}, Landroid/widget/AbsListView$RecycleBin;->fillActiveViews(II)V

    .line 1778
    :goto_c
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->detachAllViewsFromParent()V

    .line 1779
    invoke-virtual {v10}, Landroid/widget/AbsListView$RecycleBin;->removeSkippedScrap()V

    .line 1781
    iget v8, v7, Landroid/widget/ListView;->mLayoutMode:I

    packed-switch v8, :pswitch_data_1

    if-nez v1, :cond_17

    .line 1823
    iget-boolean v1, v7, Landroid/widget/ListView;->mStackFromBottom:Z

    goto :goto_e

    :pswitch_2
    move-object/from16 v1, p0

    .line 1819
    invoke-direct/range {v1 .. v6}, Landroid/widget/ListView;->moveSelection(Landroid/view/View;Landroid/view/View;III)Landroid/view/View;

    move-result-object v1

    goto/16 :goto_11

    .line 1790
    :pswitch_3
    iget v1, v7, Landroid/widget/ListView;->mSyncPosition:I

    iget v2, v7, Landroid/widget/ListView;->mSpecificTop:I

    invoke-direct {v7, v1, v2}, Landroid/widget/ListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v1

    goto/16 :goto_11

    .line 1802
    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->reconcileSelectedPosition()I

    move-result v1

    .line 1803
    iget v2, v7, Landroid/widget/ListView;->mSpecificTop:I

    invoke-direct {v7, v1, v2}, Landroid/widget/ListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_14

    .line 1810
    iget-object v3, v7, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    if-eqz v3, :cond_14

    .line 1811
    iget-object v3, v7, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    .line 1812
    invoke-virtual {v3, v1}, Landroid/widget/ListView$FocusSelector;->setupFocusIfValid(I)Ljava/lang/Runnable;

    move-result-object v1

    if-eqz v1, :cond_14

    .line 1814
    invoke-virtual {v7, v1}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    :cond_14
    :goto_d
    move-object v1, v2

    goto/16 :goto_11

    .line 1793
    :pswitch_5
    iget v1, v7, Landroid/widget/ListView;->mItemCount:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-direct {v7, v1, v6}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    move-result-object v1

    .line 1794
    invoke-direct/range {p0 .. p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    goto/16 :goto_11

    :pswitch_6
    if-eqz v3, :cond_15

    .line 1784
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-direct {v7, v1, v5, v6}, Landroid/widget/ListView;->fillFromSelection(III)Landroid/view/View;

    move-result-object v1

    goto/16 :goto_11

    .line 1786
    :cond_15
    invoke-direct {v7, v5, v6}, Landroid/widget/ListView;->fillFromMiddle(II)Landroid/view/View;

    move-result-object v1

    goto :goto_11

    :pswitch_7
    const/4 v1, 0x0

    .line 1797
    iput v1, v7, Landroid/widget/ListView;->mFirstPosition:I

    .line 1798
    invoke-direct {v7, v5}, Landroid/widget/ListView;->fillFromTop(I)Landroid/view/View;

    move-result-object v1

    .line 1799
    invoke-direct/range {p0 .. p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    goto :goto_11

    :goto_e
    if-nez v1, :cond_16

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1824
    invoke-virtual {v7, v1, v2}, Landroid/widget/ListView;->lookForSelectablePosition(IZ)I

    move-result v3

    .line 1825
    invoke-virtual {v7, v3}, Landroid/widget/ListView;->setSelectedPositionInt(I)V

    .line 1826
    invoke-direct {v7, v5}, Landroid/widget/ListView;->fillFromTop(I)Landroid/view/View;

    move-result-object v1

    goto :goto_11

    .line 1828
    :cond_16
    iget v1, v7, Landroid/widget/ListView;->mItemCount:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    invoke-virtual {v7, v1, v3}, Landroid/widget/ListView;->lookForSelectablePosition(IZ)I

    move-result v1

    .line 1829
    invoke-virtual {v7, v1}, Landroid/widget/ListView;->setSelectedPositionInt(I)V

    .line 1830
    iget v1, v7, Landroid/widget/ListView;->mItemCount:I

    sub-int/2addr v1, v2

    invoke-direct {v7, v1, v6}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    move-result-object v1

    goto :goto_11

    .line 1833
    :cond_17
    iget v1, v7, Landroid/widget/ListView;->mSelectedPosition:I

    if-ltz v1, :cond_19

    iget v1, v7, Landroid/widget/ListView;->mSelectedPosition:I

    iget v3, v7, Landroid/widget/ListView;->mItemCount:I

    if-ge v1, v3, :cond_19

    .line 1834
    iget v1, v7, Landroid/widget/ListView;->mSelectedPosition:I

    if-nez v2, :cond_18

    goto :goto_f

    .line 1835
    :cond_18
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v5

    .line 1834
    :goto_f
    invoke-direct {v7, v1, v5}, Landroid/widget/ListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v1

    goto :goto_11

    .line 1836
    :cond_19
    iget v1, v7, Landroid/widget/ListView;->mFirstPosition:I

    iget v2, v7, Landroid/widget/ListView;->mItemCount:I

    if-ge v1, v2, :cond_1b

    .line 1837
    iget v1, v7, Landroid/widget/ListView;->mFirstPosition:I

    if-nez v11, :cond_1a

    goto :goto_10

    .line 1838
    :cond_1a
    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v5

    .line 1837
    :goto_10
    invoke-direct {v7, v1, v5}, Landroid/widget/ListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v1

    goto :goto_11

    :cond_1b
    const/4 v1, 0x0

    .line 1840
    invoke-direct {v7, v1, v5}, Landroid/widget/ListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v2

    goto/16 :goto_d

    .line 1847
    :goto_11
    invoke-virtual {v10}, Landroid/widget/AbsListView$RecycleBin;->scrapActiveViews()V

    .line 1850
    iget-object v2, v7, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {v7, v2}, Landroid/widget/ListView;->removeUnusedFixedViews(Ljava/util/List;)V

    .line 1851
    iget-object v2, v7, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {v7, v2}, Landroid/widget/ListView;->removeUnusedFixedViews(Ljava/util/List;)V

    if-eqz v1, :cond_22

    .line 1856
    iget-boolean v2, v7, Landroid/widget/ListView;->mItemsCanFocus:Z

    if-eqz v2, :cond_21

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-virtual {v1}, Landroid/view/View;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_21

    if-ne v1, v9, :cond_1c

    if-eqz v0, :cond_1c

    .line 1859
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    move-result v2

    if-nez v2, :cond_1d

    :cond_1c
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    move-result v2

    if-eqz v2, :cond_1e

    :cond_1d
    const/4 v2, 0x1

    goto :goto_12

    :cond_1e
    const/4 v2, 0x0

    :goto_12
    if-nez v2, :cond_20

    .line 1864
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getFocusedChild()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1f

    .line 1866
    invoke-virtual {v2}, Landroid/view/View;->clearFocus()V

    :cond_1f
    const/4 v2, -0x1

    .line 1868
    invoke-virtual {v7, v2, v1}, Landroid/widget/ListView;->positionSelector(ILandroid/view/View;)V

    goto :goto_13

    :cond_20
    const/4 v2, 0x0

    .line 1870
    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 1871
    iget-object v2, v7, Landroid/widget/ListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_13

    :cond_21
    const/4 v2, -0x1

    .line 1874
    invoke-virtual {v7, v2, v1}, Landroid/widget/ListView;->positionSelector(ILandroid/view/View;)V

    .line 1876
    :goto_13
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    iput v1, v7, Landroid/widget/ListView;->mSelectedTop:I

    goto :goto_17

    .line 1878
    :cond_22
    iget v1, v7, Landroid/widget/ListView;->mTouchMode:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_24

    iget v1, v7, Landroid/widget/ListView;->mTouchMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_23

    goto :goto_14

    :cond_23
    const/4 v1, 0x0

    goto :goto_15

    :cond_24
    :goto_14
    const/4 v1, 0x1

    :goto_15
    if-eqz v1, :cond_25

    .line 1882
    iget v1, v7, Landroid/widget/ListView;->mMotionPosition:I

    iget v2, v7, Landroid/widget/ListView;->mFirstPosition:I

    sub-int/2addr v1, v2

    invoke-virtual {v7, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_27

    .line 1884
    iget v2, v7, Landroid/widget/ListView;->mMotionPosition:I

    invoke-virtual {v7, v2, v1}, Landroid/widget/ListView;->positionSelector(ILandroid/view/View;)V

    goto :goto_16

    .line 1886
    :cond_25
    iget v1, v7, Landroid/widget/ListView;->mSelectorPosition:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_26

    .line 1890
    iget v1, v7, Landroid/widget/ListView;->mSelectorPosition:I

    iget v2, v7, Landroid/widget/ListView;->mFirstPosition:I

    sub-int/2addr v1, v2

    invoke-virtual {v7, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_27

    .line 1892
    iget v2, v7, Landroid/widget/ListView;->mSelectorPosition:I

    invoke-virtual {v7, v2, v1}, Landroid/widget/ListView;->positionSelector(ILandroid/view/View;)V

    goto :goto_16

    :cond_26
    const/4 v1, 0x0

    .line 1896
    iput v1, v7, Landroid/widget/ListView;->mSelectedTop:I

    .line 1897
    iget-object v1, v7, Landroid/widget/ListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 1902
    :cond_27
    :goto_16
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_28

    if-eqz v0, :cond_28

    .line 1903
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_28
    :goto_17
    if-eqz v13, :cond_2b

    .line 1909
    invoke-virtual {v13}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedHost()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_2b

    if-eqz v20, :cond_2a

    .line 1912
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 1914
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v1

    if-eqz v19, :cond_29

    if-eqz v1, :cond_29

    .line 1917
    invoke-virtual/range {v19 .. v19}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    move-result-wide v2

    .line 1916
    invoke-static {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v2

    const/16 v3, 0x40

    const/4 v4, 0x0

    .line 1918
    invoke-virtual {v1, v2, v3, v4}, Landroid/view/accessibility/AccessibilityNodeProvider;->performAction(IILandroid/os/Bundle;)Z

    goto :goto_18

    .line 1921
    :cond_29
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->requestAccessibilityFocus()Z

    goto :goto_18

    :cond_2a
    move/from16 v10, v18

    const/4 v1, -0x1

    if-eq v10, v1, :cond_2b

    .line 1925
    iget v1, v7, Landroid/widget/ListView;->mFirstPosition:I

    sub-int/2addr v10, v1

    .line 1927
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    .line 1925
    invoke-static {v10, v2, v1}, Landroid/util/MathUtils;->constrain(III)I

    move-result v1

    .line 1928
    invoke-virtual {v7, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2b

    .line 1930
    invoke-virtual {v1}, Landroid/view/View;->requestAccessibilityFocus()Z

    :cond_2b
    :goto_18
    if-eqz v0, :cond_2c

    .line 1939
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_2c

    .line 1940
    invoke-virtual {v0}, Landroid/view/View;->dispatchFinishTemporaryDetach()V

    :cond_2c
    const/4 v1, 0x0

    .line 1943
    iput v1, v7, Landroid/widget/ListView;->mLayoutMode:I

    .line 1944
    iput-boolean v1, v7, Landroid/widget/ListView;->mDataChanged:Z

    .line 1945
    iget-object v0, v7, Landroid/widget/ListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    if-eqz v0, :cond_2d

    .line 1946
    iget-object v0, v7, Landroid/widget/ListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    invoke-virtual {v7, v0}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    .line 1947
    iput-object v0, v7, Landroid/widget/ListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    :cond_2d
    const/4 v1, 0x0

    .line 1949
    iput-boolean v1, v7, Landroid/widget/ListView;->mNeedSync:Z

    .line 1950
    iget v0, v7, Landroid/widget/ListView;->mSelectedPosition:I

    invoke-virtual {v7, v0}, Landroid/widget/ListView;->setNextSelectedPositionInt(I)V

    .line 1952
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->updateScrollIndicators()V

    .line 1954
    iget v0, v7, Landroid/widget/ListView;->mItemCount:I

    if-lez v0, :cond_2e

    .line 1955
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->checkSelectionChanged()V

    .line 1958
    :cond_2e
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->invokeOnItemScrollListener()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1960
    iget-object v0, v7, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    if-eqz v0, :cond_2f

    .line 1961
    iget-object v0, v7, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    invoke-virtual {v0}, Landroid/widget/ListView$FocusSelector;->onLayoutComplete()V

    :cond_2f
    if-nez v17, :cond_30

    const/4 v1, 0x0

    .line 1964
    iput-boolean v1, v7, Landroid/widget/ListView;->mBlockLayoutRequests:Z

    :cond_30
    return-void

    :cond_31
    move/from16 v17, v8

    .line 1700
    :try_start_4
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The content of the adapter has changed but ListView did not receive a notification. Make sure the content of your adapter is not modified from a background thread, but only from the UI thread. Make sure your adapter calls notifyDataSetChanged() when its content changes. [in ListView("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1704
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ") with Adapter("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v7, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 1705
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v0

    goto :goto_19

    :catchall_1
    move-exception v0

    move/from16 v17, v8

    .line 1960
    :goto_19
    iget-object v1, v7, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    if-eqz v1, :cond_32

    .line 1961
    iget-object v1, v7, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    invoke-virtual {v1}, Landroid/widget/ListView$FocusSelector;->onLayoutComplete()V

    :cond_32
    if-nez v17, :cond_33

    const/4 v1, 0x0

    .line 1964
    iput-boolean v1, v7, Landroid/widget/ListView;->mBlockLayoutRequests:Z

    :cond_33
    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method lookForSelectablePosition(IZ)I
    .locals 3

    .line 2233
    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v1, -0x1

    if-eqz v0, :cond_5

    .line 2234
    invoke-virtual {p0}, Landroid/widget/ListView;->isInTouchMode()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_3

    .line 2238
    :cond_0
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    .line 2239
    iget-boolean p0, p0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    if-nez p0, :cond_2

    if-eqz p2, :cond_1

    const/4 p0, 0x0

    .line 2241
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    move p1, p0

    :goto_0
    if-ge p1, v2, :cond_2

    .line 2242
    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result p0

    if-nez p0, :cond_2

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 p0, v2, -0x1

    .line 2246
    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    move p1, p0

    :goto_1
    if-ltz p1, :cond_2

    .line 2247
    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result p0

    if-nez p0, :cond_2

    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_2
    if-ltz p1, :cond_4

    if-lt p1, v2, :cond_3

    goto :goto_2

    :cond_3
    return p1

    :cond_4
    :goto_2
    return v1

    :cond_5
    :goto_3
    return v1
.end method

.method lookForSelectablePositionAfter(IIZ)I
    .locals 3

    .line 2273
    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v1, -0x1

    if-eqz v0, :cond_6

    .line 2274
    invoke-virtual {p0}, Landroid/widget/ListView;->isInTouchMode()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_2

    .line 2279
    :cond_0
    invoke-virtual {p0, p2, p3}, Landroid/widget/ListView;->lookForSelectablePosition(IZ)I

    move-result p0

    if-eq p0, v1, :cond_1

    return p0

    .line 2285
    :cond_1
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    .line 2286
    invoke-static {p1, v1, p0}, Landroid/util/MathUtils;->constrain(III)I

    move-result p1

    if-eqz p3, :cond_3

    add-int/lit8 p2, p2, -0x1

    .line 2288
    invoke-static {p2, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    :goto_0
    if-le p0, p1, :cond_2

    .line 2289
    invoke-interface {v0, p0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result p2

    if-nez p2, :cond_2

    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    :cond_2
    if-gt p0, p1, :cond_5

    return v1

    :cond_3
    const/4 p0, 0x0

    add-int/lit8 p2, p2, 0x1

    .line 2296
    invoke-static {p0, p2}, Ljava/lang/Math;->max(II)I

    move-result p0

    :goto_1
    if-ge p0, p1, :cond_4

    .line 2297
    invoke-interface {v0, p0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result p2

    if-nez p2, :cond_4

    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_4
    if-lt p0, p1, :cond_5

    return v1

    :cond_5
    return p0

    :cond_6
    :goto_2
    return v1
.end method

.method final measureHeightOfChildren(IIIII)I
    .locals 9

    .line 1387
    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_0

    .line 1389
    iget-object p1, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    iget-object p0, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p1, p0

    return p1

    .line 1393
    :cond_0
    iget-object v1, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v2

    .line 1394
    iget v2, p0, Landroid/widget/ListView;->mDividerHeight:I

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-ne p3, v4, :cond_1

    .line 1402
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    .line 1403
    :cond_1
    iget-object v0, p0, Landroid/widget/ListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    .line 1404
    invoke-virtual {p0}, Landroid/widget/ListView;->recycleOnMeasure()Z

    move-result v5

    .line 1405
    iget-object v6, p0, Landroid/widget/ListView;->mIsScrap:[Z

    :goto_0
    if-gt p2, p3, :cond_7

    .line 1408
    invoke-virtual {p0, p2, v6}, Landroid/widget/ListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v7

    .line 1410
    invoke-direct {p0, v7, p2, p1, p4}, Landroid/widget/ListView;->measureScrapChild(Landroid/view/View;III)V

    if-lez p2, :cond_2

    add-int/2addr v1, v2

    :cond_2
    if-eqz v5, :cond_3

    .line 1419
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/AbsListView$LayoutParams;

    iget v8, v8, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    .line 1418
    invoke-virtual {v0, v8}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1420
    invoke-virtual {v0, v7, v4}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 1423
    :cond_3
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v1, v7

    if-lt v1, p4, :cond_5

    if-ltz p5, :cond_4

    if-le p2, p5, :cond_4

    if-lez v3, :cond_4

    if-eq v1, p4, :cond_4

    move p4, v3

    :cond_4
    return p4

    :cond_5
    if-ltz p5, :cond_6

    if-lt p2, p5, :cond_6

    move v3, v1

    :cond_6
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_7
    return v1
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1243
    iget-object v0, p0, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    if-eqz v0, :cond_0

    .line 1244
    iget-object v0, p0, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    .line 1245
    iput-object v0, p0, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    .line 1247
    :cond_0
    invoke-super {p0}, Landroid/widget/AbsListView;->onDetachedFromWindow()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .line 3809
    invoke-super {p0}, Landroid/widget/AbsListView;->onFinishInflate()V

    .line 3811
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 3814
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3816
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ListView;->removeAllViews()V

    :cond_1
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 9

    .line 3752
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AbsListView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 3754
    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    if-eqz p3, :cond_4

    .line 3758
    iget p1, p0, Landroid/widget/ListView;->mScrollX:I

    iget v3, p0, Landroid/widget/ListView;->mScrollY:I

    invoke-virtual {p3, p1, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 3762
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v3

    iget v4, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v3, v4

    if-ge p1, v3, :cond_0

    .line 3763
    iput v1, p0, Landroid/widget/ListView;->mLayoutMode:I

    .line 3764
    invoke-virtual {p0}, Landroid/widget/ListView;->layoutChildren()V

    .line 3769
    :cond_0
    iget-object p1, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    const v3, 0x7fffffff

    .line 3771
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v4

    .line 3772
    iget v5, p0, Landroid/widget/ListView;->mFirstPosition:I

    move v6, v3

    move v3, v1

    :goto_0
    if-ge v1, v4, :cond_3

    add-int v7, v5, v1

    .line 3776
    invoke-interface {v0, v7}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v7

    if-nez v7, :cond_1

    goto :goto_1

    .line 3780
    :cond_1
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 3781
    invoke-virtual {v7, p1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 3782
    invoke-virtual {p0, v7, p1}, Landroid/widget/ListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 3783
    invoke-static {p3, p1, p2}, Landroid/widget/ListView;->getDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I

    move-result v8

    if-ge v8, v6, :cond_2

    .line 3788
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v3

    move v2, v1

    move v6, v8

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    move v1, v3

    :cond_4
    if-ltz v2, :cond_5

    .line 3794
    iget p1, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v2, p1

    invoke-virtual {p0, v2, v1}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    goto :goto_2

    .line 3796
    :cond_5
    invoke-virtual {p0}, Landroid/widget/ListView;->requestLayout()V

    :goto_2
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;ILandroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 6

    .line 4118
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AbsListView;->onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;ILandroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 4120
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/AbsListView$LayoutParams;

    if-eqz p1, :cond_0

    .line 4121
    iget p1, p1, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    const/4 v0, -0x2

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    move v4, p1

    .line 4122
    invoke-virtual {p0, p2}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v5

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    move v0, p2

    .line 4123
    invoke-static/range {v0 .. v5}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->obtain(IIIIZZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    move-result-object p0

    .line 4125
    invoke-virtual {p3, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionItemInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3

    .line 4079
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 4081
    invoke-virtual {p0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    .line 4082
    invoke-virtual {p0}, Landroid/widget/ListView;->getSelectionModeForAccessibility()I

    move-result p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 4083
    invoke-static {v0, v1, v2, p0}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZI)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object p0

    .line 4085
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V

    if-lez v0, :cond_0

    .line 4088
    sget-object p0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_TO_POSITION:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x1

    .line 2346
    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ListView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 0

    .line 2351
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x1

    .line 2356
    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ListView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method protected onMeasure(II)V
    .locals 10

    .line 1271
    invoke-super {p0, p1, p2}, Landroid/widget/AbsListView;->onMeasure(II)V

    .line 1273
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 1274
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 1275
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 1276
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 1282
    iget-object v3, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v4, 0x0

    if-nez v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    iget-object v3, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    :goto_0
    iput v3, p0, Landroid/widget/ListView;->mItemCount:I

    .line 1283
    iget v3, p0, Landroid/widget/ListView;->mItemCount:I

    if-lez v3, :cond_3

    if-eqz v0, :cond_1

    if-nez v1, :cond_3

    .line 1285
    :cond_1
    iget-object v3, p0, Landroid/widget/ListView;->mIsScrap:[Z

    invoke-virtual {p0, v4, v3}, Landroid/widget/ListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v3

    .line 1289
    invoke-direct {p0, v3, v4, p1, p2}, Landroid/widget/ListView;->measureScrapChild(Landroid/view/View;III)V

    .line 1291
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 1292
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    .line 1293
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredState()I

    move-result v7

    invoke-static {v4, v7}, Landroid/widget/ListView;->combineMeasuredStates(II)I

    move-result v7

    .line 1295
    invoke-virtual {p0}, Landroid/widget/ListView;->recycleOnMeasure()Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Landroid/widget/ListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    .line 1296
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/AbsListView$LayoutParams;

    iget v9, v9, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    .line 1295
    invoke-virtual {v8, v9}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1297
    iget-object v8, p0, Landroid/widget/ListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v8, v3, v4}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    :cond_2
    move v4, v5

    goto :goto_1

    :cond_3
    move v6, v4

    move v7, v6

    :goto_1
    if-nez v0, :cond_4

    .line 1302
    iget-object v0, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v2

    add-int/2addr v0, v4

    .line 1303
    invoke-virtual {p0}, Landroid/widget/ListView;->getVerticalScrollbarWidth()I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_2

    :cond_4
    const/high16 v0, -0x1000000

    and-int/2addr v0, v7

    or-int/2addr v0, v2

    :goto_2
    if-nez v1, :cond_5

    .line 1309
    iget-object p2, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p2, v2

    add-int/2addr p2, v6

    .line 1310
    invoke-virtual {p0}, Landroid/widget/ListView;->getVerticalFadingEdgeLength()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr p2, v2

    :cond_5
    move v6, p2

    const/high16 p2, -0x80000000

    if-ne v1, p2, :cond_6

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v7, -0x1

    move-object v2, p0

    move v3, p1

    .line 1315
    invoke-virtual/range {v2 .. v7}, Landroid/widget/ListView;->measureHeightOfChildren(IIIII)I

    move-result v6

    .line 1318
    :cond_6
    invoke-virtual {p0, v0, v6}, Landroid/widget/ListView;->setMeasuredDimension(II)V

    .line 1320
    iput p1, p0, Landroid/widget/ListView;->mWidthMeasureSpec:I

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 5

    .line 1252
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 1253
    invoke-virtual {p0}, Landroid/widget/ListView;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1255
    iget v1, p0, Landroid/widget/ListView;->mFirstPosition:I

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->indexOfChild(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    .line 1256
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v2

    const/4 v3, 0x0

    .line 1257
    iget v4, p0, Landroid/widget/ListView;->mPaddingTop:I

    sub-int v4, p2, v4

    sub-int/2addr v2, v4

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1258
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int/2addr v0, v2

    .line 1259
    iget-object v2, p0, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    if-nez v2, :cond_0

    .line 1260
    new-instance v2, Landroid/widget/ListView$FocusSelector;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Landroid/widget/ListView$FocusSelector;-><init>(Landroid/widget/ListView;Landroid/widget/ListView$1;)V

    iput-object v2, p0, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    .line 1262
    :cond_0
    iget-object v2, p0, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    invoke-virtual {v2, v1, v0}, Landroid/widget/ListView$FocusSelector;->setupForSetSelection(II)Landroid/widget/ListView$FocusSelector;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    .line 1265
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AbsListView;->onSizeChanged(IIII)V

    return-void
.end method

.method pageScroll(I)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x21

    if-ne p1, v2, :cond_0

    .line 2504
    iget p1, p0, Landroid/widget/ListView;->mSelectedPosition:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v2

    sub-int/2addr p1, v2

    sub-int/2addr p1, v1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    move v2, v0

    goto :goto_0

    :cond_0
    const/16 v2, 0x82

    if-ne p1, v2, :cond_5

    .line 2507
    iget p1, p0, Landroid/widget/ListView;->mItemCount:I

    sub-int/2addr p1, v1

    iget v2, p0, Landroid/widget/ListView;->mSelectedPosition:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v3

    add-int/2addr v2, v3

    sub-int/2addr v2, v1

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    move v2, v1

    :goto_0
    if-ltz p1, :cond_4

    .line 2514
    iget v3, p0, Landroid/widget/ListView;->mSelectedPosition:I

    invoke-virtual {p0, v3, p1, v2}, Landroid/widget/ListView;->lookForSelectablePositionAfter(IIZ)I

    move-result p1

    if-ltz p1, :cond_4

    const/4 v0, 0x4

    .line 2516
    iput v0, p0, Landroid/widget/ListView;->mLayoutMode:I

    .line 2517
    iget v0, p0, Landroid/widget/ListView;->mPaddingTop:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getVerticalFadingEdgeLength()I

    move-result v3

    add-int/2addr v0, v3

    iput v0, p0, Landroid/widget/ListView;->mSpecificTop:I

    if-eqz v2, :cond_1

    .line 2519
    iget v0, p0, Landroid/widget/ListView;->mItemCount:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v3

    sub-int/2addr v0, v3

    if-le p1, v0, :cond_1

    const/4 v0, 0x3

    .line 2520
    iput v0, p0, Landroid/widget/ListView;->mLayoutMode:I

    :cond_1
    if-nez v2, :cond_2

    .line 2523
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 2524
    iput v1, p0, Landroid/widget/ListView;->mLayoutMode:I

    .line 2527
    :cond_2
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->setSelectionInt(I)V

    .line 2528
    invoke-virtual {p0}, Landroid/widget/ListView;->invokeOnItemScrollListener()V

    .line 2529
    invoke-virtual {p0}, Landroid/widget/ListView;->awakenScrollBars()Z

    move-result p1

    if-nez p1, :cond_3

    .line 2530
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    :cond_3
    return v1

    :cond_4
    return v0

    :cond_5
    return v0
.end method

.method public performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .locals 2

    .line 4095
    invoke-super {p0, p1, p2}, Landroid/widget/AbsListView;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const v0, 0x1020037

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, "android.view.accessibility.action.ARGUMENT_ROW_INT"

    const/4 v0, -0x1

    .line 4101
    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 4102
    invoke-virtual {p0}, Landroid/widget/ListView;->getCount()I

    move-result p2

    sub-int/2addr p2, v1

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    if-ltz p1, :cond_2

    .line 4106
    invoke-virtual {p0, p2}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    return v1

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method protected recycleOnMeasure()Z
    .locals 0
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation

    const/4 p0, 0x1

    return p0
.end method

.method public removeFooterView(Landroid/view/View;)Z
    .locals 2

    .line 500
    iget-object v0, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_2

    .line 502
    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v0, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/HeaderViewListAdapter;->removeFooter(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 503
    iget-object v0, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    if-eqz v0, :cond_0

    .line 504
    iget-object v0, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-virtual {v0}, Landroid/widget/AbsListView$AdapterDataSetObserver;->onChanged()V

    :cond_0
    const/4 v1, 0x1

    .line 508
    :cond_1
    iget-object v0, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v0}, Landroid/widget/ListView;->removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V

    return v1

    :cond_2
    return v1
.end method

.method public removeHeaderView(Landroid/view/View;)Z
    .locals 2

    .line 399
    iget-object v0, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_2

    .line 401
    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v0, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/HeaderViewListAdapter;->removeHeader(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 402
    iget-object v0, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    if-eqz v0, :cond_0

    .line 403
    iget-object v0, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-virtual {v0}, Landroid/widget/AbsListView$AdapterDataSetObserver;->onChanged()V

    :cond_0
    const/4 v1, 0x1

    .line 407
    :cond_1
    iget-object v0, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v0}, Landroid/widget/ListView;->removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V

    return v1

    :cond_2
    return v1
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 7

    .line 661
    iget p3, p2, Landroid/graphics/Rect;->top:I

    .line 664
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 665
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v0

    neg-int v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 667
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v0

    .line 668
    invoke-virtual {p0}, Landroid/widget/ListView;->getScrollY()I

    move-result v1

    add-int v2, v1, v0

    .line 670
    invoke-virtual {p0}, Landroid/widget/ListView;->getVerticalFadingEdgeLength()I

    move-result v3

    .line 672
    invoke-direct {p0}, Landroid/widget/ListView;->showingTopFadingEdge()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 674
    iget v4, p0, Landroid/widget/ListView;->mSelectedPosition:I

    if-gtz v4, :cond_0

    if-le p3, v3, :cond_1

    :cond_0
    add-int/2addr v1, v3

    .line 679
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result p3

    const/4 v4, 0x1

    sub-int/2addr p3, v4

    .line 680
    invoke-virtual {p0, p3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result p3

    .line 682
    invoke-direct {p0}, Landroid/widget/ListView;->showingBottomFadingEdge()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 684
    iget v5, p0, Landroid/widget/ListView;->mSelectedPosition:I

    iget v6, p0, Landroid/widget/ListView;->mItemCount:I

    sub-int/2addr v6, v4

    if-lt v5, v6, :cond_2

    iget v5, p2, Landroid/graphics/Rect;->bottom:I

    sub-int v6, p3, v3

    if-ge v5, v6, :cond_3

    :cond_2
    sub-int/2addr v2, v3

    .line 692
    :cond_3
    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    const/4 v5, 0x0

    if-le v3, v2, :cond_5

    iget v3, p2, Landroid/graphics/Rect;->top:I

    if-le v3, v1, :cond_5

    .line 697
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-le v3, v0, :cond_4

    .line 699
    iget p2, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr p2, v1

    add-int/2addr p2, v5

    goto :goto_0

    .line 702
    :cond_4
    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p2, v2

    add-int/2addr p2, v5

    :goto_0
    sub-int/2addr p3, v2

    .line 707
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto :goto_2

    .line 708
    :cond_5
    iget p3, p2, Landroid/graphics/Rect;->top:I

    if-ge p3, v1, :cond_7

    iget p3, p2, Landroid/graphics/Rect;->bottom:I

    if-ge p3, v2, :cond_7

    .line 713
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p3

    if-le p3, v0, :cond_6

    .line 715
    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, p2

    rsub-int/lit8 p2, v2, 0x0

    goto :goto_1

    .line 718
    :cond_6
    iget p2, p2, Landroid/graphics/Rect;->top:I

    sub-int p2, v1, p2

    rsub-int/lit8 p2, p2, 0x0

    .line 722
    :goto_1
    invoke-virtual {p0, v5}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result p3

    sub-int/2addr p3, v1

    .line 724
    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result p2

    goto :goto_2

    :cond_7
    move p2, v5

    :goto_2
    if-eqz p2, :cond_8

    goto :goto_3

    :cond_8
    move v4, v5

    :goto_3
    if-eqz v4, :cond_9

    neg-int p2, p2

    .line 729
    invoke-direct {p0, p2}, Landroid/widget/ListView;->scrollListItemsBy(I)V

    const/4 p2, -0x1

    .line 730
    invoke-virtual {p0, p2, p1}, Landroid/widget/ListView;->positionSelector(ILandroid/view/View;)V

    .line 731
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    iput p1, p0, Landroid/widget/ListView;->mSelectedTop:I

    .line 732
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    :cond_9
    return v4
.end method

.method resetList()V
    .locals 1

    .line 613
    iget-object v0, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Landroid/widget/ListView;->clearRecycledState(Ljava/util/ArrayList;)V

    .line 614
    iget-object v0, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Landroid/widget/ListView;->clearRecycledState(Ljava/util/ArrayList;)V

    .line 616
    invoke-super {p0}, Landroid/widget/AbsListView;->resetList()V

    const/4 v0, 0x0

    .line 618
    iput v0, p0, Landroid/widget/ListView;->mLayoutMode:I

    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .line 149
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2

    .line 553
    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    if-eqz v0, :cond_0

    .line 554
    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 557
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ListView;->resetList()V

    .line 558
    iget-object v0, p0, Landroid/widget/ListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v0}, Landroid/widget/AbsListView$RecycleBin;->clear()V

    .line 560
    iget-object v0, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_2

    iget-object v0, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    goto :goto_0

    .line 563
    :cond_1
    iput-object p1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    goto :goto_1

    .line 561
    :cond_2
    :goto_0
    iget-object v0, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, v1, p1}, Landroid/widget/ListView;->wrapHeaderListAdapterInternal(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)Landroid/widget/HeaderViewListAdapter;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    :goto_1
    const/4 v0, -0x1

    .line 566
    iput v0, p0, Landroid/widget/ListView;->mOldSelectedPosition:I

    const-wide/high16 v0, -0x8000000000000000L

    .line 567
    iput-wide v0, p0, Landroid/widget/ListView;->mOldSelectedRowId:J

    .line 570
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 572
    iget-object p1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v0, 0x1

    if-eqz p1, :cond_4

    .line 573
    iget-object p1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {p1}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result p1

    iput-boolean p1, p0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    .line 574
    iget p1, p0, Landroid/widget/ListView;->mItemCount:I

    iput p1, p0, Landroid/widget/ListView;->mOldItemCount:I

    .line 575
    iget-object p1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {p1}, Landroid/widget/ListAdapter;->getCount()I

    move-result p1

    iput p1, p0, Landroid/widget/ListView;->mItemCount:I

    .line 576
    invoke-virtual {p0}, Landroid/widget/ListView;->checkFocus()V

    .line 578
    new-instance p1, Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-direct {p1, p0}, Landroid/widget/AbsListView$AdapterDataSetObserver;-><init>(Landroid/widget/AbsListView;)V

    iput-object p1, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    .line 579
    iget-object p1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-interface {p1, v1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 581
    iget-object p1, p0, Landroid/widget/ListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/AbsListView$RecycleBin;->setViewTypeCount(I)V

    .line 584
    iget-boolean p1, p0, Landroid/widget/ListView;->mStackFromBottom:Z

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 585
    iget p1, p0, Landroid/widget/ListView;->mItemCount:I

    sub-int/2addr p1, v0

    invoke-virtual {p0, p1, v1}, Landroid/widget/ListView;->lookForSelectablePosition(IZ)I

    move-result p1

    goto :goto_2

    .line 587
    :cond_3
    invoke-virtual {p0, v1, v0}, Landroid/widget/ListView;->lookForSelectablePosition(IZ)I

    move-result p1

    .line 589
    :goto_2
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->setSelectedPositionInt(I)V

    .line 590
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->setNextSelectedPositionInt(I)V

    .line 592
    iget p1, p0, Landroid/widget/ListView;->mItemCount:I

    if-nez p1, :cond_5

    .line 594
    invoke-virtual {p0}, Landroid/widget/ListView;->checkSelectionChanged()V

    goto :goto_3

    .line 597
    :cond_4
    iput-boolean v0, p0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    .line 598
    invoke-virtual {p0}, Landroid/widget/ListView;->checkFocus()V

    .line 600
    invoke-virtual {p0}, Landroid/widget/ListView;->checkSelectionChanged()V

    .line 603
    :cond_5
    :goto_3
    invoke-virtual {p0}, Landroid/widget/ListView;->requestLayout()V

    return-void
.end method

.method public setCacheColorHint(I)V
    .locals 2

    ushr-int/lit8 v0, p1, 0x18

    const/16 v1, 0xff

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3376
    :goto_0
    iput-boolean v0, p0, Landroid/widget/ListView;->mIsCacheColorOpaque:Z

    if-eqz v0, :cond_2

    .line 3378
    iget-object v0, p0, Landroid/widget/ListView;->mDividerPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_1

    .line 3379
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/widget/ListView;->mDividerPaint:Landroid/graphics/Paint;

    .line 3381
    :cond_1
    iget-object v0, p0, Landroid/widget/ListView;->mDividerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3383
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->setCacheColorHint(I)V

    return-void
.end method

.method public setDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 3636
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Landroid/widget/ListView;->mDividerHeight:I

    goto :goto_0

    .line 3638
    :cond_0
    iput v0, p0, Landroid/widget/ListView;->mDividerHeight:I

    .line 3640
    :goto_0
    iput-object p1, p0, Landroid/widget/ListView;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    .line 3641
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result p1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    iput-boolean v0, p0, Landroid/widget/ListView;->mDividerIsOpaque:Z

    .line 3642
    invoke-virtual {p0}, Landroid/widget/ListView;->requestLayout()V

    .line 3643
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    return-void
.end method

.method public setDividerHeight(I)V
    .locals 0

    .line 3660
    iput p1, p0, Landroid/widget/ListView;->mDividerHeight:I

    .line 3661
    invoke-virtual {p0}, Landroid/widget/ListView;->requestLayout()V

    .line 3662
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    return-void
.end method

.method public setFooterDividersEnabled(Z)V
    .locals 0

    .line 3698
    iput-boolean p1, p0, Landroid/widget/ListView;->mFooterDividersEnabled:Z

    .line 3699
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    return-void
.end method

.method public setHeaderDividersEnabled(Z)V
    .locals 0

    .line 3675
    iput-boolean p1, p0, Landroid/widget/ListView;->mHeaderDividersEnabled:Z

    .line 3676
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    return-void
.end method

.method public setItemsCanFocus(Z)V
    .locals 0

    .line 3338
    iput-boolean p1, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    if-nez p1, :cond_0

    const/high16 p1, 0x60000

    .line 3340
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->setDescendantFocusability(I)V

    :cond_0
    return-void
.end method

.method public setOverscrollFooter(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 3739
    iput-object p1, p0, Landroid/widget/ListView;->mOverScrollFooter:Landroid/graphics/drawable/Drawable;

    .line 3740
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    return-void
.end method

.method public setOverscrollHeader(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 3718
    iput-object p1, p0, Landroid/widget/ListView;->mOverScrollHeader:Landroid/graphics/drawable/Drawable;

    .line 3719
    iget p1, p0, Landroid/widget/ListView;->mScrollY:I

    if-gez p1, :cond_0

    .line 3720
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setRemoteViewsAdapter(Landroid/content/Intent;)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
        asyncImpl = "setRemoteViewsAdapterAsync"
    .end annotation

    .line 535
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->setRemoteViewsAdapter(Landroid/content/Intent;)V

    return-void
.end method

.method public setSelection(I)V
    .locals 1

    const/4 v0, 0x0

    .line 2189
    invoke-virtual {p0, p1, v0}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    return-void
.end method

.method public setSelectionAfterHeaderView()V
    .locals 2

    .line 2313
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 2315
    iput v0, p0, Landroid/widget/ListView;->mNextSelectedPosition:I

    return-void

    .line 2319
    :cond_0
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    .line 2320
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0

    .line 2322
    :cond_1
    iput v0, p0, Landroid/widget/ListView;->mNextSelectedPosition:I

    const/4 v0, 0x2

    .line 2323
    iput v0, p0, Landroid/widget/ListView;->mLayoutMode:I

    :goto_0
    return-void
.end method

.method setSelectionInt(I)V
    .locals 3

    .line 2199
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->setNextSelectedPositionInt(I)V

    .line 2202
    iget v0, p0, Landroid/widget/ListView;->mSelectedPosition:I

    const/4 v1, 0x1

    if-ltz v0, :cond_1

    add-int/lit8 v2, v0, -0x1

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    add-int/2addr v0, v1

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 2212
    :goto_0
    iget-object p1, p0, Landroid/widget/ListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz p1, :cond_2

    .line 2213
    iget-object p1, p0, Landroid/widget/ListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {p1}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 2216
    :cond_2
    invoke-virtual {p0}, Landroid/widget/ListView;->layoutChildren()V

    if-eqz v1, :cond_3

    .line 2219
    invoke-virtual {p0}, Landroid/widget/ListView;->awakenScrollBars()Z

    :cond_3
    return-void
.end method

.method public smoothScrollByOffset(I)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 1021
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->smoothScrollByOffset(I)V

    return-void
.end method

.method public smoothScrollToPosition(I)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 1011
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->smoothScrollToPosition(I)V

    return-void
.end method

.method trackMotionScroll(II)Z
    .locals 0

    .line 1971
    invoke-super {p0, p1, p2}, Landroid/widget/AbsListView;->trackMotionScroll(II)Z

    move-result p1

    .line 1972
    iget-object p2, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, p2}, Landroid/widget/ListView;->removeUnusedFixedViews(Ljava/util/List;)V

    .line 1973
    iget-object p2, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, p2}, Landroid/widget/ListView;->removeUnusedFixedViews(Ljava/util/List;)V

    return p1
.end method

.method protected wrapHeaderListAdapterInternal(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)Landroid/widget/HeaderViewListAdapter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;",
            "Landroid/widget/ListAdapter;",
            ")",
            "Landroid/widget/HeaderViewListAdapter;"
        }
    .end annotation

    .line 4141
    new-instance p0, Landroid/widget/HeaderViewListAdapter;

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HeaderViewListAdapter;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V

    return-object p0
.end method

.method protected wrapHeaderListAdapterInternal()V
    .locals 3

    .line 4146
    iget-object v0, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/ListView;->wrapHeaderListAdapterInternal(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)Landroid/widget/HeaderViewListAdapter;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    return-void
.end method
