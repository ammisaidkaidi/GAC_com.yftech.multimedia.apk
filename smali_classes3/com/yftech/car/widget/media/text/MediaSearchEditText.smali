.class public Lcom/yftech/car/widget/media/text/MediaSearchEditText;
.super Landroidx/appcompat/widget/AppCompatEditText;
.source "MediaSearchEditText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/car/widget/media/text/MediaSearchEditText$OnStartSearchTextListener;,
        Lcom/yftech/car/widget/media/text/MediaSearchEditText$OnSearchTextListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MediaSearchEditText"


# instance fields
.field private mDefaultInputStatus:I

.field private mMediaDataList:Lcom/yftech/car/widget/media/list/MediaDataList;

.field private final mOnClickListener:Landroid/view/View$OnClickListener;

.field private final mOnEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

.field private mOnSearchTextListener:Lcom/yftech/car/widget/media/text/MediaSearchEditText$OnSearchTextListener;

.field private mOnStartSearchTextListener:Lcom/yftech/car/widget/media/text/MediaSearchEditText$OnStartSearchTextListener;

.field private mSearchDataListId:I

.field private final mSearchEditButtonList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yftech/car/widget/media/text/SearchEditButton;",
            ">;"
        }
    .end annotation
.end field

.field private mSearchEmptyBackList:Z

.field private mSearchErrorContentEmpty:Ljava/lang/String;

.field private mSearchFindFlag:I

.field private mSearchHistoryList:Lcom/yftech/car/widget/media/list/SearchHistoryList;

.field private mSearchIndex:I

.field private final mStartSearchViewGoneId:[I

.field private final mStartSearchViewVisibleId:[I

.field private final mTextWatcher:Landroid/text/TextWatcher;

.field private mTypedArray:Landroid/content/res/TypedArray;

.field private mVisibilityVisibleInputStatus:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 59
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatEditText;-><init>(Landroid/content/Context;)V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->mSearchEditButtonList:Ljava/util/List;

    const/4 v0, 0x5

    .line 53
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->mStartSearchViewVisibleId:[I

    .line 54
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->mStartSearchViewGoneId:[I

    .line 142
    new-instance v0, Lcom/yftech/car/widget/media/text/MediaSearchEditText$2;

    invoke-direct {v0, p0}, Lcom/yftech/car/widget/media/text/MediaSearchEditText$2;-><init>(Lcom/yftech/car/widget/media/text/MediaSearchEditText;)V

    iput-object v0, p0, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->mTextWatcher:Landroid/text/TextWatcher;

    .line 203
    new-instance v0, Lcom/yftech/car/widget/media/text/MediaSearchEditText$3;

    invoke-direct {v0, p0}, Lcom/yftech/car/widget/media/text/MediaSearchEditText$3;-><init>(Lcom/yftech/car/widget/media/text/MediaSearchEditText;)V

    iput-object v0, p0, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 255
    new-instance v0, Lcom/yftech/car/widget/media/text/MediaSearchEditText$4;

    invoke-direct {v0, p0}, Lcom/yftech/car/widget/media/text/MediaSearchEditText$4;-><init>(Lcom/yftech/car/widget/media/text/MediaSearchEditText;)V

    iput-object v0, p0, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->mOnEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    const/4 v0, 0x0

    .line 60
    invoke-direct {p0, p1, v0}, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 64
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->mSearchEditButtonList:Ljava/util/List;

    const/4 v0, 0x5

    .line 53
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->mStartSearchViewVisibleId:[I

    .line 54
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->mStartSearchViewGoneId:[I

    .line 142
    new-instance v0, Lcom/yftech/car/widget/media/text/MediaSearchEditText$2;

    invoke-direct {v0, p0}, Lcom/yftech/car/widget/media/text/MediaSearchEditText$2;-><init>(Lcom/yftech/car/widget/media/text/MediaSearchEditText;)V

    iput-object v0, p0, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->mTextWatcher:Landroid/text/TextWatcher;

    .line 203
    new-instance v0, Lcom/yftech/car/widget/media/text/MediaSearchEditText$3;

    invoke-direct {v0, p0}, Lcom/yftech/car/widget/media/text/MediaSearchEditText$3;-><init>(Lcom/yftech/car/widget/media/text/MediaSearchEditText;)V

    iput-object v0, p0, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 255
    new-instance v0, Lcom/yftech/car/widget/media/text/MediaSearchEditText$4;

    invoke-direct {v0, p0}, Lcom/yftech/car/widget/media/text/MediaSearchEditText$4;-><init>(Lcom/yftech/car/widget/media/text/MediaSearchEditText;)V

    iput-object v0, p0, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->mOnEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    .line 65
    invoke-direct {p0, p1, p2}, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 69
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->mSearchEditButtonList:Ljava/util/List;

    const/4 p3, 0x5

    .line 53
    new-array v0, p3, [I

    iput-object v0, p0, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->mStartSearchViewVisibleId:[I

    .line 54
    new-array p3, p3, [I

    iput-object p3, p0, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->mStartSearchViewGoneId:[I

    .line 142
    new-instance p3, Lcom/yftech/car/widget/media/text/MediaSearchEditText$2;

    invoke-direct {p3, p0}, Lcom/yftech/car/widget/media/text/MediaSearchEditText$2;-><init>(Lcom/yftech/car/widget/media/text/MediaSearchEditText;)V

    iput-object p3, p0, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->mTextWatcher:Landroid/text/TextWatcher;

    .line 203
    new-instance p3, Lcom/yftech/car/widget/media/text/MediaSearchEditText$3;

    invoke-direct {p3, p0}, Lcom/yftech/car/widget/media/text/MediaSearchEditText$3;-><init>(Lcom/yftech/car/widget/media/text/MediaSearchEditText;)V

    iput-object p3, p0, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 255
    new-instance p3, Lcom/yftech/car/widget/media/text/MediaSearchEditText$4;

    invoke-direct {p3, p0}, Lcom/yftech/car/widget/media/text/MediaSearchEditText$4;-><init>(Lcom/yftech/car/widget/media/text/MediaSearchEditText;)V

    iput-object p3, p0, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->mOnEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    .line 70
    invoke-direct {p0, p1, p2}, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lcom/yftech/car/widget/media/text/MediaSearchEditText;)Ljava/util/List;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->mSearchEditButtonList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/yftech/car/widget/media/text/MediaSearchEditText;)Lcom/yftech/car/widget/media/list/SearchHistoryList;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->mSearchHistoryList:Lcom/yftech/car/widget/media/list/SearchHistoryList;

    return-object p0
.end method

.method static synthetic access$200(Lcom/yftech/car/widget/media/text/MediaSearchEditText;)Lcom/yftech/car/widget/media/text/MediaSearchEditText$OnSearchTextListener;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->mOnSearchTextListener:Lcom/yftech/car/widget/media/text/MediaSearchEditText$OnSearchTextListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/yftech/car/widget/media/text/MediaSearchEditText;)Lcom/yftech/car/widget/media/list/MediaDataList;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->mMediaDataList:Lcom/yftech/car/widget/media/list/MediaDataList;

    return-object p0
.end method

.method static synthetic access$400(Lcom/yftech/car/widget/media/text/MediaSearchEditText;)Ljava/lang/String;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->mSearchErrorContentEmpty:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/yftech/car/widget/media/text/MediaSearchEditText;)I
    .locals 0

    .line 28
    iget p0, p0, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->mSearchFindFlag:I

    return p0
.end method

.method static synthetic access$502(Lcom/yftech/car/widget/media/text/MediaSearchEditText;I)I
    .locals 0

    .line 28
    iput p1, p0, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->mSearchFindFlag:I

    return p1
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .line 74
    sget-object v0, Lcom/yftech/car/widget/media/R$styleable;->MediaSearchEditText:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->mTypedArray:Landroid/content/res/TypedArray;

    .line 76
    iget-object p1, p0, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->mTypedArray:Landroid/content/res/TypedArray;

    sget p2, Lcom/yftech/car/widget/media/R$styleable;->MediaSearchEditText_search_find_flag:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    iput p1, p0, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->mSearchFindFlag:I

    .line 78
    iget-object p1, p0, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->mTypedArray:Landroid/content/res/TypedArray;

    sget p2, Lcom/yftech/car/widget/media/R$styleable;->MediaSearchEditText_search_index:I

    const/4 v1, -0x1

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    iput p1, p0, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->mSearchIndex:I

    .line 80
    iget-object p1, p0, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->mTypedArray:Landroid/content/res/TypedArray;

    sget p2, Lcom/yftech/car/widget/media/R$styleable;->MediaSearchEditText_to_window_default_input_status:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    iput p1, p0, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->mDefaultInputStatus:I

    .line 82
    iget-object p1, p0, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->mTypedArray:Landroid/content/res/TypedArray;

    sget p2, Lcom/yftech/car/widget/media/R$styleable;->MediaSearchEditText_Visibility_visible_input_status:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    iput p1, p0, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->mVisibilityVisibleInputStatus:I

    .line 84
    iget-object p1, p0, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->mTypedArray:Landroid/content/res/TypedArray;

    sget p2, Lcom/yftech/car/widget/media/R$styleable;->MediaSearchEditText_search_data_list_id:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    iput p1, p0, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->mSearchDataListId:I

    .line 86
    iget-object p1, p0, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->mTypedArray:Landroid/content/res/TypedArray;

    sget p2, Lcom/yftech/car/widget/media/R$styleable;->MediaSearchEditText_search_error_content_empty:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->mSearchErrorContentEmpty:Ljava/lang/String;

    .line 88
    iget-object p1, p0, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->mTypedArray:Landroid/content/res/TypedArray;

    sget p2, Lcom/yftech/car/widget/media/R$styleable;->MediaSearchEditText_search_empty_back_list:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->mSearchEmptyBackList:Z

    .line 91
    iget-object p1, p0, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->mStartSearchViewVisibleId:[I

    iget-object p2, p0, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->mTypedArray:Landroid/content/res/TypedArray;

    sget v2, Lcom/yftech/car/widget/media/R$styleable;->MediaSearchEditText_start_search_view_visible1_id:I

    invoke-virtual {p2, v2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    aput p2, p1, v0

    .line 92
    iget-object p1, p0, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->mStartSearchViewVisibleId:[I

    iget-object p2, p0, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->mTypedArray:Landroid/content/res/TypedArray;

    sget v2, Lcom/yftech/car/widget/media/R$styleable;->MediaSearchEditText_start_search_view_visible2_id:I

    invoke-virtual {p2, v2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    const/4 v2, 0x1

    aput p2, p1, v2

    .line 93
    iget-object p1, p0, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->mStartSearchViewVisibleId:[I

    iget-object p2, p0, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->mTypedArray:Landroid/content/res/TypedArray;

    sget v3, Lcom/yftech/car/widget/media/R$styleable;->MediaSearchEditText_start_search_view_visible3_id:I

    invoke-virtual {p2, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    const/4 v3, 0x2

    aput p2, p1, v3

    .line 94
    iget-object p1, p0, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->mStartSearchViewVisibleId:[I

    iget-object p2, p0, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->mTypedArray:Landroid/content/res/TypedArray;

    sget v4, Lcom/yftech/car/widget/media/R$styleable;->MediaSearchEditText_start_search_view_visible4_id:I

    invoke-virtual {p2, v4, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    const/4 v4, 0x3

    aput p2, p1, v4

    .line 95
    iget-object p1, p0, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->mStartSearchViewVisibleId:[I

    iget-object p2, p0, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->mTypedArray:Landroid/content/res/TypedArray;

    sget v5, Lcom/yftech/car/widget/media/R$styleable;->MediaSearchEditText_start_search_view_visible5_id:I

    invoke-virtual {p2, v5, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    const/4 v5, 0x4

    aput p2, p1, v5

    .line 97
    iget-object p1, p0, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->mStartSearchViewGoneId:[I

    iget-object p2, p0, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->mTypedArray:Landroid/content/res/TypedArray;

    sget v6, Lcom/yftech/car/widget/media/R$styleable;->MediaSearchEditText_start_search_view_gone1_id:I

    invoke-virtual {p2, v6, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    aput p2, p1, v0

    .line 98
    iget-object p1, p0, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->mStartSearchViewGoneId:[I

    iget-object p2, p0, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->mTypedArray:Landroid/content/res/TypedArray;

    sget v0, Lcom/yftech/car/widget/media/R$styleable;->MediaSearchEditText_start_search_view_gone2_id:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    aput p2, p1, v2

    .line 99
    iget-object p1, p0, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->mStartSearchViewGoneId:[I

    iget-object p2, p0, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->mTypedArray:Landroid/content/res/TypedArray;

    sget v0, Lcom/yftech/car/widget/media/R$styleable;->MediaSearchEditText_start_search_view_gone3_id:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    aput p2, p1, v3

    .line 100
    iget-object p1, p0, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->mStartSearchViewGoneId:[I

    iget-object p2, p0, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->mTypedArray:Landroid/content/res/TypedArray;

    sget v0, Lcom/yftech/car/widget/media/R$styleable;->MediaSearchEditText_start_search_view_gone4_id:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    aput p2, p1, v4

    .line 101
    iget-object p1, p0, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->mStartSearchViewGoneId:[I

    iget-object p2, p0, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->mTypedArray:Landroid/content/res/TypedArray;

    sget v0, Lcom/yftech/car/widget/media/R$styleable;->MediaSearchEditText_start_search_view_gone5_id:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    aput p2, p1, v5

    .line 107
    iget-object p1, p0, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 108
    iget-object p1, p0, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->mOnEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 109
    new-instance p1, Lcom/yftech/car/widget/media/text/MediaSearchEditText$1;

    invoke-direct {p1, p0}, Lcom/yftech/car/widget/media/text/MediaSearchEditText$1;-><init>(Lcom/yftech/car/widget/media/text/MediaSearchEditText;)V

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method

.method public static synthetic lambda$onAttachedToWindow$1(Lcom/yftech/car/widget/media/text/MediaSearchEditText;)V
    .locals 2

    .line 434
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 435
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->requestFocus()Z

    .line 436
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x1

    .line 437
    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_0
    return-void
.end method

.method public static synthetic lambda$setVisibility$0(Lcom/yftech/car/widget/media/text/MediaSearchEditText;)V
    .locals 3

    .line 409
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 410
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->requestFocus()Z

    .line 411
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 412
    iget v1, p0, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->mVisibilityVisibleInputStatus:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 413
    invoke-virtual {v0, p0, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_0

    .line 414
    :cond_0
    iget v1, p0, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->mVisibilityVisibleInputStatus:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 415
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public addSearchEditButton(Lcom/yftech/car/widget/media/text/SearchEditButton;)V
    .locals 4

    const/4 v0, 0x0

    .line 327
    invoke-virtual {p1, v0}, Lcom/yftech/car/widget/media/text/SearchEditButton;->isSearchType(I)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 328
    invoke-virtual {p1, v2}, Lcom/yftech/car/widget/media/text/SearchEditButton;->isSearchType(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x2

    .line 329
    invoke-virtual {p1, v1}, Lcom/yftech/car/widget/media/text/SearchEditButton;->isSearchType(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {p1}, Lcom/yftech/car/widget/media/text/SearchEditButton;->getMediaSearchEditTextId()I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_2

    :cond_1
    invoke-virtual {p1}, Lcom/yftech/car/widget/media/text/SearchEditButton;->getMediaSearchEditTextId()I

    move-result v1

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->getId()I

    move-result v3

    if-ne v1, v3, :cond_4

    .line 330
    :cond_2
    iget-object v1, p0, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->mSearchEditButtonList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 331
    iget-object v1, p0, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v1}, Lcom/yftech/car/widget/media/text/SearchEditButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 332
    invoke-virtual {p1, v0}, Lcom/yftech/car/widget/media/text/SearchEditButton;->isSearchType(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 333
    invoke-virtual {p1}, Lcom/yftech/car/widget/media/text/SearchEditButton;->getSearchFindFlag()I

    move-result v1

    iget p0, p0, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->mSearchFindFlag:I

    if-ne v1, p0, :cond_3

    move v0, v2

    :cond_3
    invoke-virtual {p1, v0}, Lcom/yftech/car/widget/media/text/SearchEditButton;->setSelected(Z)V

    :cond_4
    return-void
.end method

.method public getSearchDataListId()I
    .locals 0

    .line 369
    iget p0, p0, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->mSearchDataListId:I

    return p0
.end method

.method public getSearchFindFlag()I
    .locals 0

    .line 315
    iget p0, p0, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->mSearchFindFlag:I

    return p0
.end method

.method public getSearchIndex()I
    .locals 0

    .line 323
    iget p0, p0, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->mSearchIndex:I

    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .line 428
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatEditText;->onAttachedToWindow()V

    const-string v0, "MediaSearchEditText"

    const-string v1, "onAttachedToWindow: "

    .line 430
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    iget v0, p0, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->mDefaultInputStatus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 433
    new-instance v0, Lcom/yftech/car/widget/media/text/-$$Lambda$MediaSearchEditText$BwRks3Zq30WU4jwqcmoE1IWzmfM;

    invoke-direct {v0, p0}, Lcom/yftech/car/widget/media/text/-$$Lambda$MediaSearchEditText$BwRks3Zq30WU4jwqcmoE1IWzmfM;-><init>(Lcom/yftech/car/widget/media/text/MediaSearchEditText;)V

    const-wide/16 v1, 0x64

    invoke-virtual {p0, v0, v1, v2}, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 134
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatEditText;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 136
    iget-object p1, p0, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->mTypedArray:Landroid/content/res/TypedArray;

    sget v0, Lcom/yftech/car/widget/media/R$styleable;->MediaSearchEditText_search_error_content_empty:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->mSearchErrorContentEmpty:Ljava/lang/String;

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 445
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatEditText;->onDetachedFromWindow()V

    const-string p0, "MediaSearchEditText"

    const-string v0, "onDetachedFromWindow: "

    .line 446
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 195
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 197
    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->setCursorVisible(Z)V

    .line 198
    sput-boolean v0, Lcom/yftech/car/widget/media/utils/TouchEventUtil;->mDispatchTouchEvent:Z

    .line 200
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatEditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public release()V
    .locals 1

    .line 373
    iget-object v0, p0, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->mSearchEditButtonList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 374
    iget-object v0, p0, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 375
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->getText()Landroid/text/Editable;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 376
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 377
    invoke-interface {p0}, Landroid/text/Editable;->clear()V

    :cond_0
    return-void
.end method

.method public setMediaDataList(Lcom/yftech/car/widget/media/list/MediaDataList;)V
    .locals 0

    .line 311
    iput-object p1, p0, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->mMediaDataList:Lcom/yftech/car/widget/media/list/MediaDataList;

    return-void
.end method

.method public setOnSearchTextListener(Lcom/yftech/car/widget/media/text/MediaSearchEditText$OnSearchTextListener;)V
    .locals 0

    .line 342
    iput-object p1, p0, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->mOnSearchTextListener:Lcom/yftech/car/widget/media/text/MediaSearchEditText$OnSearchTextListener;

    return-void
.end method

.method public setOnStartSearchTextListener(Lcom/yftech/car/widget/media/text/MediaSearchEditText$OnStartSearchTextListener;)V
    .locals 0

    .line 350
    iput-object p1, p0, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->mOnStartSearchTextListener:Lcom/yftech/car/widget/media/text/MediaSearchEditText$OnStartSearchTextListener;

    return-void
.end method

.method public setSearchErrorContentEmpty()V
    .locals 1

    .line 297
    iget-object v0, p0, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->mSearchErrorContentEmpty:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->mSearchErrorContentEmpty:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->setError(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setSearchHistoryList(Lcom/yftech/car/widget/media/list/SearchHistoryList;)Z
    .locals 2

    .line 303
    invoke-virtual {p1}, Lcom/yftech/car/widget/media/list/SearchHistoryList;->getSearchEditTextId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/yftech/car/widget/media/list/SearchHistoryList;->getSearchEditTextId()I

    move-result v0

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 304
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->mSearchHistoryList:Lcom/yftech/car/widget/media/list/SearchHistoryList;

    const/4 p0, 0x1

    return p0
.end method

.method public setSearchIndex(I)V
    .locals 0

    .line 319
    iput p1, p0, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->mSearchIndex:I

    return-void
.end method

.method public setStartSearchText(Ljava/lang/String;)V
    .locals 1

    .line 357
    iget-object v0, p0, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->mOnStartSearchTextListener:Lcom/yftech/car/widget/media/text/MediaSearchEditText$OnStartSearchTextListener;

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->mOnStartSearchTextListener:Lcom/yftech/car/widget/media/text/MediaSearchEditText$OnStartSearchTextListener;

    invoke-interface {v0, p1}, Lcom/yftech/car/widget/media/text/MediaSearchEditText$OnStartSearchTextListener;->onSearchText(Ljava/lang/String;)V

    .line 361
    :cond_0
    iget-boolean v0, p0, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->mSearchEmptyBackList:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    .line 362
    iget-object p1, p0, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->mOnSearchTextListener:Lcom/yftech/car/widget/media/text/MediaSearchEditText$OnSearchTextListener;

    if-eqz p1, :cond_1

    .line 363
    iget-object p1, p0, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->mOnSearchTextListener:Lcom/yftech/car/widget/media/text/MediaSearchEditText$OnSearchTextListener;

    iget-object p0, p0, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->mMediaDataList:Lcom/yftech/car/widget/media/list/MediaDataList;

    invoke-interface {p1, p0}, Lcom/yftech/car/widget/media/text/MediaSearchEditText$OnSearchTextListener;->onSearchEmptyBackList(Lcom/yftech/car/widget/media/list/MediaDataList;)V

    :cond_1
    return-void
.end method

.method public setStartSearchView(Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 382
    :goto_0
    iget-object v2, p0, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->mStartSearchViewVisibleId:[I

    array-length v2, v2

    const/4 v3, -0x1

    if-ge v1, v2, :cond_1

    .line 383
    iget-object v2, p0, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->mStartSearchViewVisibleId:[I

    aget v2, v2, v1

    if-eq v2, v3, :cond_0

    .line 385
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 387
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 392
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->mStartSearchViewGoneId:[I

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 393
    iget-object v1, p0, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->mStartSearchViewGoneId:[I

    aget v1, v1, v0

    if-eq v1, v3, :cond_2

    .line 395
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    const/16 v2, 0x8

    .line 397
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public setVisibility(I)V
    .locals 2

    .line 405
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatEditText;->setVisibility(I)V

    if-nez p1, :cond_1

    .line 407
    iget p1, p0, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->mVisibilityVisibleInputStatus:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    iget p1, p0, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->mVisibilityVisibleInputStatus:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 408
    :cond_0
    new-instance p1, Lcom/yftech/car/widget/media/text/-$$Lambda$MediaSearchEditText$1BweVA4tFFjlK_UmKr-C9XghLHM;

    invoke-direct {p1, p0}, Lcom/yftech/car/widget/media/text/-$$Lambda$MediaSearchEditText$1BweVA4tFFjlK_UmKr-C9XghLHM;-><init>(Lcom/yftech/car/widget/media/text/MediaSearchEditText;)V

    const-wide/16 v0, 0x64

    invoke-virtual {p0, p1, v0, v1}, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    .line 421
    :cond_2
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 422
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_3
    :goto_0
    return-void
.end method
