.class public Lcom/yftech/car/widget/media/list/SearchHistoryList;
.super Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;
.source "SearchHistoryList.java"


# static fields
.field private static final SEARCH_LIST:Ljava/lang/String; = "search_list"

.field private static final TAG:Ljava/lang/String; = "SearchHistoryList"


# instance fields
.field private DialogWidthHeight:Landroid/util/Size;

.field private mAdapter:Lcom/yftech/car/widget/media/list/adapter/SearchHistoryAdapter;

.field private mConfirmDialog:Lcom/yftech/car/widget/media/dialog/ConfirmDialog;

.field private mDialogCancelable:Z

.field private mDialogFlags:I

.field private mEmptyAdapter:Lcom/yftech/car/widget/media/list/adapter/ListOneLayoutAdapter;

.field private mEmptyLayoutManager:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

.field private mItemDecoration:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemDecoration;

.field private mLayoutManager:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

.field private final mOnClearSearchListClickListener:Landroid/view/View$OnClickListener;

.field private final mOnConfirmDialogListener:Lcom/yftech/car/widget/media/dialog/ConfirmDialog$OnConfirmDialogListener;

.field private mSearchClearHistoryDialogLayoutId:I

.field private mSearchClearHistoryDialogThemeResId:I

.field private mSearchEditButton:Lcom/yftech/car/widget/media/text/SearchEditButton;

.field private mSearchEditTextId:I

.field private final mSearchList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSearchListItemMax:I

.field private mSearchSpList:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    .line 57
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/yftech/car/widget/media/list/SearchHistoryList;->mSearchList:Ljava/util/List;

    .line 351
    new-instance p1, Lcom/yftech/car/widget/media/list/SearchHistoryList$3;

    invoke-direct {p1, p0}, Lcom/yftech/car/widget/media/list/SearchHistoryList$3;-><init>(Lcom/yftech/car/widget/media/list/SearchHistoryList;)V

    iput-object p1, p0, Lcom/yftech/car/widget/media/list/SearchHistoryList;->mOnClearSearchListClickListener:Landroid/view/View$OnClickListener;

    .line 368
    new-instance p1, Lcom/yftech/car/widget/media/list/SearchHistoryList$4;

    invoke-direct {p1, p0}, Lcom/yftech/car/widget/media/list/SearchHistoryList$4;-><init>(Lcom/yftech/car/widget/media/list/SearchHistoryList;)V

    iput-object p1, p0, Lcom/yftech/car/widget/media/list/SearchHistoryList;->mOnConfirmDialogListener:Lcom/yftech/car/widget/media/dialog/ConfirmDialog$OnConfirmDialogListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 73
    invoke-direct {p0, p1, p2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yftech/car/widget/media/list/SearchHistoryList;->mSearchList:Ljava/util/List;

    .line 351
    new-instance v0, Lcom/yftech/car/widget/media/list/SearchHistoryList$3;

    invoke-direct {v0, p0}, Lcom/yftech/car/widget/media/list/SearchHistoryList$3;-><init>(Lcom/yftech/car/widget/media/list/SearchHistoryList;)V

    iput-object v0, p0, Lcom/yftech/car/widget/media/list/SearchHistoryList;->mOnClearSearchListClickListener:Landroid/view/View$OnClickListener;

    .line 368
    new-instance v0, Lcom/yftech/car/widget/media/list/SearchHistoryList$4;

    invoke-direct {v0, p0}, Lcom/yftech/car/widget/media/list/SearchHistoryList$4;-><init>(Lcom/yftech/car/widget/media/list/SearchHistoryList;)V

    iput-object v0, p0, Lcom/yftech/car/widget/media/list/SearchHistoryList;->mOnConfirmDialogListener:Lcom/yftech/car/widget/media/dialog/ConfirmDialog$OnConfirmDialogListener;

    .line 74
    invoke-direct {p0, p1, p2}, Lcom/yftech/car/widget/media/list/SearchHistoryList;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 78
    invoke-direct {p0, p1, p2, p3}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/yftech/car/widget/media/list/SearchHistoryList;->mSearchList:Ljava/util/List;

    .line 351
    new-instance p3, Lcom/yftech/car/widget/media/list/SearchHistoryList$3;

    invoke-direct {p3, p0}, Lcom/yftech/car/widget/media/list/SearchHistoryList$3;-><init>(Lcom/yftech/car/widget/media/list/SearchHistoryList;)V

    iput-object p3, p0, Lcom/yftech/car/widget/media/list/SearchHistoryList;->mOnClearSearchListClickListener:Landroid/view/View$OnClickListener;

    .line 368
    new-instance p3, Lcom/yftech/car/widget/media/list/SearchHistoryList$4;

    invoke-direct {p3, p0}, Lcom/yftech/car/widget/media/list/SearchHistoryList$4;-><init>(Lcom/yftech/car/widget/media/list/SearchHistoryList;)V

    iput-object p3, p0, Lcom/yftech/car/widget/media/list/SearchHistoryList;->mOnConfirmDialogListener:Lcom/yftech/car/widget/media/dialog/ConfirmDialog$OnConfirmDialogListener;

    .line 79
    invoke-direct {p0, p1, p2}, Lcom/yftech/car/widget/media/list/SearchHistoryList;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lcom/yftech/car/widget/media/list/SearchHistoryList;)I
    .locals 0

    .line 32
    iget p0, p0, Lcom/yftech/car/widget/media/list/SearchHistoryList;->mSearchClearHistoryDialogLayoutId:I

    return p0
.end method

.method static synthetic access$100(Lcom/yftech/car/widget/media/list/SearchHistoryList;)Lcom/yftech/car/widget/media/dialog/ConfirmDialog;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/yftech/car/widget/media/list/SearchHistoryList;->mConfirmDialog:Lcom/yftech/car/widget/media/dialog/ConfirmDialog;

    return-object p0
.end method

.method static synthetic access$102(Lcom/yftech/car/widget/media/list/SearchHistoryList;Lcom/yftech/car/widget/media/dialog/ConfirmDialog;)Lcom/yftech/car/widget/media/dialog/ConfirmDialog;
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/yftech/car/widget/media/list/SearchHistoryList;->mConfirmDialog:Lcom/yftech/car/widget/media/dialog/ConfirmDialog;

    return-object p1
.end method

.method static synthetic access$200(Lcom/yftech/car/widget/media/list/SearchHistoryList;)I
    .locals 0

    .line 32
    iget p0, p0, Lcom/yftech/car/widget/media/list/SearchHistoryList;->mSearchClearHistoryDialogThemeResId:I

    return p0
.end method

.method static synthetic access$300(Lcom/yftech/car/widget/media/list/SearchHistoryList;)Lcom/yftech/car/widget/media/dialog/ConfirmDialog$OnConfirmDialogListener;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/yftech/car/widget/media/list/SearchHistoryList;->mOnConfirmDialogListener:Lcom/yftech/car/widget/media/dialog/ConfirmDialog$OnConfirmDialogListener;

    return-object p0
.end method

.method static synthetic access$400(Lcom/yftech/car/widget/media/list/SearchHistoryList;)I
    .locals 0

    .line 32
    iget p0, p0, Lcom/yftech/car/widget/media/list/SearchHistoryList;->mDialogFlags:I

    return p0
.end method

.method static synthetic access$500(Lcom/yftech/car/widget/media/list/SearchHistoryList;)Landroid/util/Size;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/yftech/car/widget/media/list/SearchHistoryList;->DialogWidthHeight:Landroid/util/Size;

    return-object p0
.end method

.method static synthetic access$600(Lcom/yftech/car/widget/media/list/SearchHistoryList;)Z
    .locals 0

    .line 32
    iget-boolean p0, p0, Lcom/yftech/car/widget/media/list/SearchHistoryList;->mDialogCancelable:Z

    return p0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 13

    .line 85
    sget-object v0, Lcom/yftech/car/widget/media/R$styleable;->SearchHistoryList:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 87
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->SearchHistoryList_search_list_orientation:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 89
    sget v3, Lcom/yftech/car/widget/media/R$styleable;->SearchHistoryList_search_list_span_count:I

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 91
    sget v4, Lcom/yftech/car/widget/media/R$styleable;->SearchHistoryList_search_list_item_max:I

    const/16 v5, 0xa

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lcom/yftech/car/widget/media/list/SearchHistoryList;->mSearchListItemMax:I

    .line 93
    sget v4, Lcom/yftech/car/widget/media/R$styleable;->SearchHistoryList_search_delete_show:I

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    .line 95
    sget v5, Lcom/yftech/car/widget/media/R$styleable;->SearchHistoryList_search_EditText_id:I

    const/4 v6, -0x1

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Lcom/yftech/car/widget/media/list/SearchHistoryList;->mSearchEditTextId:I

    .line 97
    sget v5, Lcom/yftech/car/widget/media/R$styleable;->SearchHistoryList_search_list_item_layout_id:I

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    if-eq v5, v6, :cond_4

    .line 105
    new-instance v7, Lcom/yftech/car/widget/media/list/adapter/SearchHistoryAdapter;

    iget-object v8, p0, Lcom/yftech/car/widget/media/list/SearchHistoryList;->mSearchList:Ljava/util/List;

    invoke-direct {v7, p0, v8, v5, v4}, Lcom/yftech/car/widget/media/list/adapter/SearchHistoryAdapter;-><init>(Lcom/yftech/car/widget/media/list/SearchHistoryList;Ljava/util/List;IZ)V

    iput-object v7, p0, Lcom/yftech/car/widget/media/list/SearchHistoryList;->mAdapter:Lcom/yftech/car/widget/media/list/adapter/SearchHistoryAdapter;

    .line 108
    sget v4, Lcom/yftech/car/widget/media/R$styleable;->SearchHistoryList_search_list_empty_layout_id:I

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    if-eq v4, v6, :cond_0

    .line 111
    new-instance v5, Lcom/yftech/car/widget/media/list/adapter/ListOneLayoutAdapter;

    invoke-direct {v5, v4}, Lcom/yftech/car/widget/media/list/adapter/ListOneLayoutAdapter;-><init>(I)V

    iput-object v5, p0, Lcom/yftech/car/widget/media/list/SearchHistoryList;->mEmptyAdapter:Lcom/yftech/car/widget/media/list/adapter/ListOneLayoutAdapter;

    :cond_0
    const/4 v4, 0x0

    if-lez v3, :cond_2

    if-ne v3, v2, :cond_1

    .line 116
    new-instance v3, Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v3, p1, v1, v4}, Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iput-object v3, p0, Lcom/yftech/car/widget/media/list/SearchHistoryList;->mLayoutManager:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    goto :goto_0

    .line 118
    :cond_1
    new-instance v5, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;

    invoke-direct {v5, p1, v3, v1, v4}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    iput-object v5, p0, Lcom/yftech/car/widget/media/list/SearchHistoryList;->mLayoutManager:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    goto :goto_0

    .line 122
    :cond_2
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->SearchHistoryList_search_auto_item_left:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v9

    .line 123
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->SearchHistoryList_search_auto_item_top:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v10

    .line 124
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->SearchHistoryList_search_auto_item_right:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v11

    .line 125
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->SearchHistoryList_search_auto_item_bottom:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v12

    .line 127
    new-instance v1, Lcom/yftech/car/widget/media/list/SearchHistoryList$1;

    move-object v7, v1

    move-object v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/yftech/car/widget/media/list/SearchHistoryList$1;-><init>(Lcom/yftech/car/widget/media/list/SearchHistoryList;FFFF)V

    iput-object v1, p0, Lcom/yftech/car/widget/media/list/SearchHistoryList;->mItemDecoration:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemDecoration;

    .line 140
    new-instance v1, Lcom/yftech/car/widget/media/list/SearchHistoryList$2;

    invoke-direct {v1, p0, p1, v4, v2}, Lcom/yftech/car/widget/media/list/SearchHistoryList$2;-><init>(Lcom/yftech/car/widget/media/list/SearchHistoryList;Landroid/content/Context;II)V

    iput-object v1, p0, Lcom/yftech/car/widget/media/list/SearchHistoryList;->mLayoutManager:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    .line 149
    :goto_0
    new-instance v1, Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p1, v2, v4}, Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iput-object v1, p0, Lcom/yftech/car/widget/media/list/SearchHistoryList;->mEmptyLayoutManager:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    .line 151
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->SearchHistoryList_search_save_key:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 153
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v0, "search_list"

    .line 157
    :cond_3
    invoke-virtual {p1, v0, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/car/widget/media/list/SearchHistoryList;->mSearchSpList:Landroid/content/SharedPreferences;

    .line 160
    sget-object v0, Lcom/yftech/car/widget/media/R$styleable;->Dialog:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 162
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->Dialog_dialog_flags:I

    invoke-virtual {p1, p2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/yftech/car/widget/media/list/SearchHistoryList;->mDialogFlags:I

    .line 163
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->Dialog_dialog_layout_id:I

    invoke-virtual {p1, p2, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/yftech/car/widget/media/list/SearchHistoryList;->mSearchClearHistoryDialogLayoutId:I

    .line 164
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->Dialog_dialog_themeResId:I

    invoke-virtual {p1, p2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/yftech/car/widget/media/list/SearchHistoryList;->mSearchClearHistoryDialogThemeResId:I

    .line 165
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->Dialog_dialog_cancelable:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/yftech/car/widget/media/list/SearchHistoryList;->mDialogCancelable:Z

    .line 166
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->Dialog_dialog_width:I

    const/high16 v0, -0x40000000    # -2.0f

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    .line 167
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->Dialog_dialog_height:I

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    float-to-int p1, p1

    .line 168
    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, p2, p1}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Lcom/yftech/car/widget/media/list/SearchHistoryList;->DialogWidthHeight:Landroid/util/Size;

    return-void

    .line 102
    :cond_4
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "SearchHistoryList: search_list_item_layout_id \u6ca1\u6709\u8bbe\u7f6e\u5e03\u5c40\uff0c\u65e0\u6cd5\u52a0\u8f7d\u9002\u914d\u5668item\u5b50\u7c7b\u754c\u9762,\u8bf7\u8bbe\u7f6eitem\u5e03\u5c40\u518d\u8bd5"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private initDataList()V
    .locals 4

    const/4 v0, 0x0

    .line 192
    :goto_0
    iget v1, p0, Lcom/yftech/car/widget/media/list/SearchHistoryList;->mSearchListItemMax:I

    if-ge v0, v1, :cond_1

    .line 193
    iget-object v1, p0, Lcom/yftech/car/widget/media/list/SearchHistoryList;->mSearchSpList:Landroid/content/SharedPreferences;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "search"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 194
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 195
    iget-object v2, p0, Lcom/yftech/car/widget/media/list/SearchHistoryList;->mSearchList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static synthetic lambda$setSearchEditButton$0(Lcom/yftech/car/widget/media/list/SearchHistoryList;Lcom/yftech/car/widget/media/text/SearchEditButton;)V
    .locals 0

    .line 209
    iget-object p0, p0, Lcom/yftech/car/widget/media/list/SearchHistoryList;->mSearchList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x0

    .line 210
    invoke-virtual {p1, p0}, Lcom/yftech/car/widget/media/text/SearchEditButton;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x4

    .line 212
    invoke-virtual {p1, p0}, Lcom/yftech/car/widget/media/text/SearchEditButton;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private declared-synchronized saveSearchData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 345
    :try_start_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/SearchHistoryList;->mSearchSpList:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 346
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 347
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 348
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 349
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 344
    monitor-exit p0

    throw p1
.end method

.method private setAddItemDecoration()V
    .locals 4

    .line 266
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/SearchHistoryList;->mItemDecoration:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemDecoration;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    move v1, v0

    .line 268
    :goto_0
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/list/SearchHistoryList;->getItemDecorationCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 269
    invoke-virtual {p0, v1}, Lcom/yftech/car/widget/media/list/SearchHistoryList;->getItemDecorationAt(I)Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemDecoration;

    move-result-object v2

    iget-object v3, p0, Lcom/yftech/car/widget/media/list/SearchHistoryList;->mItemDecoration:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemDecoration;

    if-ne v2, v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    .line 275
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/SearchHistoryList;->mItemDecoration:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemDecoration;

    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/list/SearchHistoryList;->addItemDecoration(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemDecoration;)V

    :cond_2
    return-void
.end method

.method private updateSearchList()V
    .locals 4

    const/4 v0, 0x0

    .line 338
    :goto_0
    iget v1, p0, Lcom/yftech/car/widget/media/list/SearchHistoryList;->mSearchListItemMax:I

    if-ge v0, v1, :cond_1

    .line 339
    iget-object v1, p0, Lcom/yftech/car/widget/media/list/SearchHistoryList;->mSearchList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v0, :cond_0

    iget-object v1, p0, Lcom/yftech/car/widget/media/list/SearchHistoryList;->mSearchList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_1

    :cond_0
    const-string v1, ""

    .line 340
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "search"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/yftech/car/widget/media/list/SearchHistoryList;->saveSearchData(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public addSearchData(Ljava/lang/String;)V
    .locals 3

    .line 233
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x0

    move v1, v0

    .line 234
    :goto_0
    iget-object v2, p0, Lcom/yftech/car/widget/media/list/SearchHistoryList;->mSearchList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 235
    iget-object v2, p0, Lcom/yftech/car/widget/media/list/SearchHistoryList;->mSearchList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 236
    iget-object v2, p0, Lcom/yftech/car/widget/media/list/SearchHistoryList;->mSearchList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 237
    iget-object v1, p0, Lcom/yftech/car/widget/media/list/SearchHistoryList;->mSearchList:Ljava/util/List;

    invoke-interface {v1, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 238
    iget-object p1, p0, Lcom/yftech/car/widget/media/list/SearchHistoryList;->mAdapter:Lcom/yftech/car/widget/media/list/adapter/SearchHistoryAdapter;

    invoke-virtual {p1}, Lcom/yftech/car/widget/media/list/adapter/SearchHistoryAdapter;->notifyDataSetChanged()V

    .line 239
    invoke-direct {p0}, Lcom/yftech/car/widget/media/list/SearchHistoryList;->updateSearchList()V

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 243
    :cond_1
    iget-object v1, p0, Lcom/yftech/car/widget/media/list/SearchHistoryList;->mSearchList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lcom/yftech/car/widget/media/list/SearchHistoryList;->mSearchListItemMax:I

    add-int/lit8 v2, v2, -0x1

    if-le v1, v2, :cond_2

    .line 244
    iget-object v1, p0, Lcom/yftech/car/widget/media/list/SearchHistoryList;->mSearchList:Ljava/util/List;

    iget-object v2, p0, Lcom/yftech/car/widget/media/list/SearchHistoryList;->mSearchList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 246
    :cond_2
    iget-object v1, p0, Lcom/yftech/car/widget/media/list/SearchHistoryList;->mSearchList:Ljava/util/List;

    invoke-interface {v1, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 248
    iget-object p1, p0, Lcom/yftech/car/widget/media/list/SearchHistoryList;->mLayoutManager:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/list/SearchHistoryList;->getLayoutManager()Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    if-eq p1, v1, :cond_3

    .line 249
    invoke-direct {p0}, Lcom/yftech/car/widget/media/list/SearchHistoryList;->setAddItemDecoration()V

    .line 250
    iget-object p1, p0, Lcom/yftech/car/widget/media/list/SearchHistoryList;->mLayoutManager:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/list/SearchHistoryList;->setLayoutManager(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 251
    iget-object p1, p0, Lcom/yftech/car/widget/media/list/SearchHistoryList;->mAdapter:Lcom/yftech/car/widget/media/list/adapter/SearchHistoryAdapter;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/list/SearchHistoryList;->setAdapter(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_1

    .line 253
    :cond_3
    iget-object p1, p0, Lcom/yftech/car/widget/media/list/SearchHistoryList;->mAdapter:Lcom/yftech/car/widget/media/list/adapter/SearchHistoryAdapter;

    invoke-virtual {p1}, Lcom/yftech/car/widget/media/list/adapter/SearchHistoryAdapter;->notifyDataSetChanged()V

    .line 255
    :goto_1
    iget-object p1, p0, Lcom/yftech/car/widget/media/list/SearchHistoryList;->mAdapter:Lcom/yftech/car/widget/media/list/adapter/SearchHistoryAdapter;

    invoke-virtual {p1, v0}, Lcom/yftech/car/widget/media/list/adapter/SearchHistoryAdapter;->setDeleteShow(Z)V

    .line 256
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/list/SearchHistoryList;->getVisibility()I

    move-result p1

    if-nez p1, :cond_4

    .line 257
    iget-object p1, p0, Lcom/yftech/car/widget/media/list/SearchHistoryList;->mSearchEditButton:Lcom/yftech/car/widget/media/text/SearchEditButton;

    invoke-virtual {p1, v0}, Lcom/yftech/car/widget/media/text/SearchEditButton;->setVisibility(I)V

    .line 259
    :cond_4
    invoke-direct {p0}, Lcom/yftech/car/widget/media/list/SearchHistoryList;->updateSearchList()V

    goto :goto_2

    :cond_5
    const-string p0, "SearchHistoryList"

    const-string p1, "addSearchData: search == null"

    .line 261
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method public clearSearchList()V
    .locals 2

    .line 323
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/SearchHistoryList;->mSearchList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 324
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/SearchHistoryList;->mEmptyAdapter:Lcom/yftech/car/widget/media/list/adapter/ListOneLayoutAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yftech/car/widget/media/list/SearchHistoryList;->mEmptyLayoutManager:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/list/SearchHistoryList;->getLayoutManager()Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 325
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/SearchHistoryList;->mItemDecoration:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemDecoration;

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/SearchHistoryList;->mItemDecoration:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemDecoration;

    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/list/SearchHistoryList;->removeItemDecoration(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 328
    :cond_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/SearchHistoryList;->mEmptyLayoutManager:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/list/SearchHistoryList;->setLayoutManager(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 329
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/SearchHistoryList;->mEmptyAdapter:Lcom/yftech/car/widget/media/list/adapter/ListOneLayoutAdapter;

    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/list/SearchHistoryList;->setAdapter(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;)V

    .line 330
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/list/SearchHistoryList;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 331
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/SearchHistoryList;->mSearchEditButton:Lcom/yftech/car/widget/media/text/SearchEditButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/yftech/car/widget/media/text/SearchEditButton;->setVisibility(I)V

    .line 334
    :cond_1
    invoke-direct {p0}, Lcom/yftech/car/widget/media/list/SearchHistoryList;->updateSearchList()V

    return-void
.end method

.method public deleteSearch(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 299
    :goto_0
    iget-object v1, p0, Lcom/yftech/car/widget/media/list/SearchHistoryList;->mSearchList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 300
    iget-object v1, p0, Lcom/yftech/car/widget/media/list/SearchHistoryList;->mSearchList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 301
    iget-object p1, p0, Lcom/yftech/car/widget/media/list/SearchHistoryList;->mSearchList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 305
    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/yftech/car/widget/media/list/SearchHistoryList;->mSearchList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 306
    iget-object p1, p0, Lcom/yftech/car/widget/media/list/SearchHistoryList;->mEmptyAdapter:Lcom/yftech/car/widget/media/list/adapter/ListOneLayoutAdapter;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/yftech/car/widget/media/list/SearchHistoryList;->mEmptyLayoutManager:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/list/SearchHistoryList;->getLayoutManager()Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eq p1, v0, :cond_3

    .line 307
    iget-object p1, p0, Lcom/yftech/car/widget/media/list/SearchHistoryList;->mItemDecoration:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemDecoration;

    if-eqz p1, :cond_2

    .line 308
    iget-object p1, p0, Lcom/yftech/car/widget/media/list/SearchHistoryList;->mItemDecoration:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemDecoration;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/list/SearchHistoryList;->removeItemDecoration(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 310
    :cond_2
    iget-object p1, p0, Lcom/yftech/car/widget/media/list/SearchHistoryList;->mEmptyLayoutManager:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/list/SearchHistoryList;->setLayoutManager(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 311
    iget-object p1, p0, Lcom/yftech/car/widget/media/list/SearchHistoryList;->mEmptyAdapter:Lcom/yftech/car/widget/media/list/adapter/ListOneLayoutAdapter;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/list/SearchHistoryList;->setAdapter(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;)V

    .line 313
    :cond_3
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/list/SearchHistoryList;->getVisibility()I

    move-result p1

    if-nez p1, :cond_5

    .line 314
    iget-object p1, p0, Lcom/yftech/car/widget/media/list/SearchHistoryList;->mSearchEditButton:Lcom/yftech/car/widget/media/text/SearchEditButton;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/yftech/car/widget/media/text/SearchEditButton;->setVisibility(I)V

    goto :goto_2

    .line 317
    :cond_4
    iget-object p1, p0, Lcom/yftech/car/widget/media/list/SearchHistoryList;->mAdapter:Lcom/yftech/car/widget/media/list/adapter/SearchHistoryAdapter;

    invoke-virtual {p1}, Lcom/yftech/car/widget/media/list/adapter/SearchHistoryAdapter;->notifyDataSetChanged()V

    .line 319
    :cond_5
    :goto_2
    invoke-direct {p0}, Lcom/yftech/car/widget/media/list/SearchHistoryList;->updateSearchList()V

    return-void
.end method

.method public getSearchEditTextId()I
    .locals 0

    .line 201
    iget p0, p0, Lcom/yftech/car/widget/media/list/SearchHistoryList;->mSearchEditTextId:I

    return p0
.end method

.method public isDeleteShow()Z
    .locals 0

    .line 229
    iget-object p0, p0, Lcom/yftech/car/widget/media/list/SearchHistoryList;->mAdapter:Lcom/yftech/car/widget/media/list/adapter/SearchHistoryAdapter;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/list/adapter/SearchHistoryAdapter;->isDeleteShow()Z

    move-result p0

    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 281
    invoke-super {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->onAttachedToWindow()V

    .line 282
    invoke-direct {p0}, Lcom/yftech/car/widget/media/list/SearchHistoryList;->setAddItemDecoration()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .line 287
    invoke-super {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->onDetachedFromWindow()V

    .line 288
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/SearchHistoryList;->mItemDecoration:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemDecoration;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 289
    :goto_0
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/list/SearchHistoryList;->getItemDecorationCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 290
    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/list/SearchHistoryList;->getItemDecorationAt(I)Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemDecoration;

    move-result-object v1

    iget-object v2, p0, Lcom/yftech/car/widget/media/list/SearchHistoryList;->mItemDecoration:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemDecoration;

    if-ne v1, v2, :cond_0

    .line 291
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/SearchHistoryList;->mItemDecoration:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemDecoration;

    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/list/SearchHistoryList;->removeItemDecoration(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemDecoration;)V

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 177
    invoke-super {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->onFinishInflate()V

    .line 178
    invoke-direct {p0}, Lcom/yftech/car/widget/media/list/SearchHistoryList;->initDataList()V

    .line 179
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/SearchHistoryList;->mSearchList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/SearchHistoryList;->mLayoutManager:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/list/SearchHistoryList;->setLayoutManager(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 181
    invoke-direct {p0}, Lcom/yftech/car/widget/media/list/SearchHistoryList;->setAddItemDecoration()V

    .line 182
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/SearchHistoryList;->mAdapter:Lcom/yftech/car/widget/media/list/adapter/SearchHistoryAdapter;

    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/list/SearchHistoryList;->setAdapter(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_0

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/SearchHistoryList;->mEmptyAdapter:Lcom/yftech/car/widget/media/list/adapter/ListOneLayoutAdapter;

    if-eqz v0, :cond_1

    .line 185
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/SearchHistoryList;->mEmptyLayoutManager:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/list/SearchHistoryList;->setLayoutManager(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 186
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/SearchHistoryList;->mEmptyAdapter:Lcom/yftech/car/widget/media/list/adapter/ListOneLayoutAdapter;

    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/list/SearchHistoryList;->setAdapter(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setOnSearchHistoryItemClickListener(Lcom/yftech/car/widget/media/list/adapter/SearchHistoryAdapter$OnSearchHistoryItemClickListener;)V
    .locals 0

    .line 172
    iget-object p0, p0, Lcom/yftech/car/widget/media/list/SearchHistoryList;->mAdapter:Lcom/yftech/car/widget/media/list/adapter/SearchHistoryAdapter;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/list/adapter/SearchHistoryAdapter;->setOnSearchHistoryItemClickListener(Lcom/yftech/car/widget/media/list/adapter/SearchHistoryAdapter$OnSearchHistoryItemClickListener;)V

    return-void
.end method

.method public setSearchEditButton(Lcom/yftech/car/widget/media/text/SearchEditButton;)Z
    .locals 2

    const/4 v0, 0x3

    .line 205
    invoke-virtual {p1, v0}, Lcom/yftech/car/widget/media/text/SearchEditButton;->isSearchType(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/yftech/car/widget/media/text/SearchEditButton;->getMediaSearchHistoryListId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    :cond_0
    invoke-virtual {p1}, Lcom/yftech/car/widget/media/text/SearchEditButton;->getMediaSearchHistoryListId()I

    move-result v0

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/list/SearchHistoryList;->getId()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 206
    :cond_1
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/SearchHistoryList;->mOnClearSearchListClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Lcom/yftech/car/widget/media/text/SearchEditButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    iput-object p1, p0, Lcom/yftech/car/widget/media/list/SearchHistoryList;->mSearchEditButton:Lcom/yftech/car/widget/media/text/SearchEditButton;

    .line 208
    new-instance v0, Lcom/yftech/car/widget/media/list/-$$Lambda$SearchHistoryList$5eIisvura9rIXkD-Bic9fZRaaX8;

    invoke-direct {v0, p0, p1}, Lcom/yftech/car/widget/media/list/-$$Lambda$SearchHistoryList$5eIisvura9rIXkD-Bic9fZRaaX8;-><init>(Lcom/yftech/car/widget/media/list/SearchHistoryList;Lcom/yftech/car/widget/media/text/SearchEditButton;)V

    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/list/SearchHistoryList;->post(Ljava/lang/Runnable;)Z

    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public setSearchEditButtonVisibility(I)V
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/SearchHistoryList;->mSearchEditButton:Lcom/yftech/car/widget/media/text/SearchEditButton;

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 222
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/SearchHistoryList;->mSearchList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 223
    iget-object p0, p0, Lcom/yftech/car/widget/media/list/SearchHistoryList;->mSearchEditButton:Lcom/yftech/car/widget/media/text/SearchEditButton;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/text/SearchEditButton;->setVisibility(I)V

    :cond_0
    return-void
.end method
