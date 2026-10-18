.class public Lcom/yftech/car/widget/media/text/SearchEditButton;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "SearchEditButton.java"


# static fields
.field public static final CLEAR:I = 0x2

.field public static final CLEAR_HISTORY:I = 0x3

.field public static final DELETE:I = 0x1

.field public static final SEARCH:I = 0x0

.field public static final SEARCH_EDIT_EMPTY:I = 0x8

.field public static final SEARCH_FINISH:I = 0x2

.field public static final SEARCH_INIT:I = 0x4

.field public static final SEARCH_START:I = 0x1


# instance fields
.field private mMediaSearchEditTextId:I

.field private mMediaSearchHistoryListId:I

.field private mSearchFindFlag:I

.field private mSearchType:I

.field private mSearchVisibilityShow:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/yftech/car/widget/media/text/SearchEditButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/yftech/car/widget/media/text/SearchEditButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 55
    sget-object v0, Lcom/yftech/car/widget/media/R$styleable;->SearchEditButton:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 57
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->SearchEditButton_search_edit_type:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/yftech/car/widget/media/text/SearchEditButton;->mSearchType:I

    .line 59
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->SearchEditButton_media_search_edit_text_id:I

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/yftech/car/widget/media/text/SearchEditButton;->mMediaSearchEditTextId:I

    .line 60
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->SearchEditButton_media_search_history_list_id:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/yftech/car/widget/media/text/SearchEditButton;->mMediaSearchHistoryListId:I

    .line 62
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->SearchEditButton_search_visibility_show:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/yftech/car/widget/media/text/SearchEditButton;->mSearchVisibilityShow:I

    .line 64
    sget-object v0, Lcom/yftech/car/widget/media/R$styleable;->MediaSearchEditText:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 66
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->MediaSearchEditText_search_find_flag:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    iput p1, p0, Lcom/yftech/car/widget/media/text/SearchEditButton;->mSearchFindFlag:I

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 72
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 74
    sput-boolean v0, Lcom/yftech/car/widget/media/utils/TouchEventUtil;->mDispatchTouchEvent:Z

    .line 77
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public getMediaSearchEditTextId()I
    .locals 0

    .line 89
    iget p0, p0, Lcom/yftech/car/widget/media/text/SearchEditButton;->mMediaSearchEditTextId:I

    return p0
.end method

.method public getMediaSearchHistoryListId()I
    .locals 0

    .line 93
    iget p0, p0, Lcom/yftech/car/widget/media/text/SearchEditButton;->mMediaSearchHistoryListId:I

    return p0
.end method

.method public getSearchFindFlag()I
    .locals 0

    .line 97
    iget p0, p0, Lcom/yftech/car/widget/media/text/SearchEditButton;->mSearchFindFlag:I

    return p0
.end method

.method public getSearchType()I
    .locals 0

    .line 85
    iget p0, p0, Lcom/yftech/car/widget/media/text/SearchEditButton;->mSearchType:I

    return p0
.end method

.method public getSearchVisibilityShow()I
    .locals 0

    .line 101
    iget p0, p0, Lcom/yftech/car/widget/media/text/SearchEditButton;->mSearchVisibilityShow:I

    return p0
.end method

.method public isSearchType(I)Z
    .locals 0

    .line 81
    iget p0, p0, Lcom/yftech/car/widget/media/text/SearchEditButton;->mSearchType:I

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSearchVisibilityShow(I)Z
    .locals 0

    .line 105
    iget p0, p0, Lcom/yftech/car/widget/media/text/SearchEditButton;->mSearchVisibilityShow:I

    and-int/2addr p0, p1

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
