.class public Lcom/yftech/car/widget/media/radio/list/RadioDataList;
.super Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;
.source "RadioDataList.java"


# static fields
.field public static final FAVOR_LIST:I = 0x2

.field public static final SCAN_SEARCH_LIST:I = 0x1

.field private static final TAG:Ljava/lang/String; = "RadioDataList"


# instance fields
.field private mAdapter:Lcom/yftech/car/widget/media/radio/list/adapter/RadioDataAdapter;

.field private mCollectListEmptyAdapter:Lcom/yftech/car/widget/media/list/adapter/ListOneLayoutAdapter;

.field private mInitAdapter:Z

.field private mLayoutManager:Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager;

.field private final mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yftech/car/media/radio/entity/DataOfRadio;",
            ">;"
        }
    .end annotation
.end field

.field private mListEmptyAdapter:Lcom/yftech/car/widget/media/list/adapter/ListOneLayoutAdapter;

.field private mListType:I

.field private mRadioDataTextList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yftech/car/widget/media/radio/text/RadioDataText;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 85
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 63
    iput p1, p0, Lcom/yftech/car/widget/media/radio/list/RadioDataList;->mListType:I

    .line 68
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/yftech/car/widget/media/radio/list/RadioDataList;->mList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 89
    sget v0, Lcom/yftech/car/widget/media/R$attr;->recyclerViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/yftech/car/widget/media/radio/list/RadioDataList;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 93
    invoke-direct {p0, p1, p2, p3}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x1

    .line 63
    iput p3, p0, Lcom/yftech/car/widget/media/radio/list/RadioDataList;->mListType:I

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yftech/car/widget/media/radio/list/RadioDataList;->mList:Ljava/util/List;

    .line 95
    sget-object v0, Lcom/yftech/car/widget/media/R$styleable;->RadioDataList:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 97
    sget v0, Lcom/yftech/car/widget/media/R$styleable;->RadioDataList_radio_data_span_count:I

    invoke-virtual {p2, v0, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 99
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->RadioDataList_radio_data_orientation:I

    invoke-virtual {p2, v1, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 101
    sget v2, Lcom/yftech/car/widget/media/R$styleable;->RadioDataList_radio_data_list_type:I

    invoke-virtual {p2, v2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/yftech/car/widget/media/radio/list/RadioDataList;->mListType:I

    if-le v0, p3, :cond_0

    .line 104
    new-instance p3, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;

    invoke-direct {p3, p1, v0}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    iput-object p3, p0, Lcom/yftech/car/widget/media/radio/list/RadioDataList;->mLayoutManager:Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager;

    goto :goto_0

    .line 106
    :cond_0
    new-instance p3, Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager;

    invoke-direct {p3, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/yftech/car/widget/media/radio/list/RadioDataList;->mLayoutManager:Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager;

    .line 108
    :goto_0
    iget-object p1, p0, Lcom/yftech/car/widget/media/radio/list/RadioDataList;->mLayoutManager:Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1, v1}, Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 110
    sget p1, Lcom/yftech/car/widget/media/R$styleable;->RadioDataList_radio_data_list_empty_layout_id:I

    const/4 p3, -0x1

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    if-eq p1, p3, :cond_1

    .line 112
    new-instance v0, Lcom/yftech/car/widget/media/list/adapter/ListOneLayoutAdapter;

    invoke-direct {v0, p1}, Lcom/yftech/car/widget/media/list/adapter/ListOneLayoutAdapter;-><init>(I)V

    iput-object v0, p0, Lcom/yftech/car/widget/media/radio/list/RadioDataList;->mListEmptyAdapter:Lcom/yftech/car/widget/media/list/adapter/ListOneLayoutAdapter;

    .line 115
    :cond_1
    sget p1, Lcom/yftech/car/widget/media/R$styleable;->RadioDataList_radio_data_collect_list_empty_layout_id:I

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    if-eq p1, p3, :cond_2

    .line 117
    new-instance p3, Lcom/yftech/car/widget/media/list/adapter/ListOneLayoutAdapter;

    invoke-direct {p3, p1}, Lcom/yftech/car/widget/media/list/adapter/ListOneLayoutAdapter;-><init>(I)V

    iput-object p3, p0, Lcom/yftech/car/widget/media/radio/list/RadioDataList;->mCollectListEmptyAdapter:Lcom/yftech/car/widget/media/list/adapter/ListOneLayoutAdapter;

    .line 120
    :cond_2
    new-instance p1, Lcom/yftech/car/widget/media/radio/list/adapter/RadioDataAdapter;

    iget-object p3, p0, Lcom/yftech/car/widget/media/radio/list/RadioDataList;->mList:Ljava/util/List;

    invoke-direct {p1, p3, p2}, Lcom/yftech/car/widget/media/radio/list/adapter/RadioDataAdapter;-><init>(Ljava/util/List;Landroid/content/res/TypedArray;)V

    iput-object p1, p0, Lcom/yftech/car/widget/media/radio/list/RadioDataList;->mAdapter:Lcom/yftech/car/widget/media/radio/list/adapter/RadioDataAdapter;

    .line 121
    iget-object p1, p0, Lcom/yftech/car/widget/media/radio/list/RadioDataList;->mAdapter:Lcom/yftech/car/widget/media/radio/list/adapter/RadioDataAdapter;

    new-instance p2, Lcom/yftech/car/widget/media/radio/list/RadioDataList$1;

    invoke-direct {p2, p0}, Lcom/yftech/car/widget/media/radio/list/RadioDataList$1;-><init>(Lcom/yftech/car/widget/media/radio/list/RadioDataList;)V

    invoke-virtual {p1, p2}, Lcom/yftech/car/widget/media/radio/list/adapter/RadioDataAdapter;->setOnItemRadioListener(Lcom/yftech/car/widget/media/radio/list/adapter/RadioDataAdapter$OnItemRadioListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/yftech/car/widget/media/radio/list/RadioDataList;)I
    .locals 0

    .line 44
    iget p0, p0, Lcom/yftech/car/widget/media/radio/list/RadioDataList;->mListType:I

    return p0
.end method

.method private updatePosition(Lcom/yftech/car/media/radio/entity/DataOfRadio;)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 214
    :goto_0
    iget-object v2, p0, Lcom/yftech/car/widget/media/radio/list/RadioDataList;->mList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 215
    invoke-virtual {p1}, Lcom/yftech/car/media/radio/entity/DataOfRadio;->getFreq()I

    move-result v2

    iget-object v3, p0, Lcom/yftech/car/widget/media/radio/list/RadioDataList;->mList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yftech/car/media/radio/entity/DataOfRadio;

    invoke-virtual {v3}, Lcom/yftech/car/media/radio/entity/DataOfRadio;->getFreq()I

    move-result v3

    if-ne v2, v3, :cond_3

    .line 217
    iget-object p1, p0, Lcom/yftech/car/widget/media/radio/list/RadioDataList;->mLayoutManager:Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p1

    add-int/lit8 v2, p1, 0x1

    if-lt v1, v2, :cond_0

    .line 218
    iget-object v2, p0, Lcom/yftech/car/widget/media/radio/list/RadioDataList;->mLayoutManager:Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v2}, Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-gt v1, v2, :cond_0

    const-string p0, "RadioDataList"

    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "no update adapter firstItemPosition =="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    if-le v1, p1, :cond_2

    .line 222
    iget-object v2, p0, Lcom/yftech/car/widget/media/radio/list/RadioDataList;->mLayoutManager:Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v2, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 224
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/radio/list/RadioDataList;->getHeight()I

    move-result v0

    .line 225
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    .line 227
    div-int v2, v0, p1

    .line 228
    rem-int/2addr v0, p1

    .line 232
    iget-object p0, p0, Lcom/yftech/car/widget/media/radio/list/RadioDataList;->mLayoutManager:Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager;

    add-int/lit8 v2, v2, -0x1

    mul-int/2addr v2, p1

    add-int/2addr v2, v0

    invoke-virtual {p0, v1, v2}, Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    goto :goto_1

    .line 234
    :cond_1
    iget-object p0, p0, Lcom/yftech/car/widget/media/radio/list/RadioDataList;->mLayoutManager:Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0, v1, v0}, Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    goto :goto_1

    .line 238
    :cond_2
    iget-object p0, p0, Lcom/yftech/car/widget/media/radio/list/RadioDataList;->mLayoutManager:Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0, v1, v0}, Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public isType(I)Z
    .locals 0

    .line 145
    iget p0, p0, Lcom/yftech/car/widget/media/radio/list/RadioDataList;->mListType:I

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public notifydatasetchangedList(Lcom/yftech/car/media/radio/entity/DataOfRadio;)V
    .locals 2

    const-string v0, "RadioDataList"

    const-string v1, "notifydatasetchangedScanSearchList: "

    .line 149
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget v0, p0, Lcom/yftech/car/widget/media/radio/list/RadioDataList;->mListType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 151
    iget-object p0, p0, Lcom/yftech/car/widget/media/radio/list/RadioDataList;->mAdapter:Lcom/yftech/car/widget/media/radio/list/adapter/RadioDataAdapter;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/radio/list/adapter/RadioDataAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 153
    :cond_0
    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/radio/list/RadioDataList;->updateList(Lcom/yftech/car/media/radio/entity/DataOfRadio;)V

    :goto_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 131
    invoke-super {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->onFinishInflate()V

    .line 132
    iget-object v0, p0, Lcom/yftech/car/widget/media/radio/list/RadioDataList;->mLayoutManager:Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/radio/list/RadioDataList;->setLayoutManager(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 135
    iget-object v0, p0, Lcom/yftech/car/widget/media/radio/list/RadioDataList;->mAdapter:Lcom/yftech/car/widget/media/radio/list/adapter/RadioDataAdapter;

    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/radio/list/RadioDataList;->setAdapter(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;)V

    const/4 v0, 0x1

    .line 136
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/radio/list/RadioDataList;->mInitAdapter:Z

    return-void
.end method

.method public setRadioDataTextList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yftech/car/widget/media/radio/text/RadioDataText;",
            ">;)V"
        }
    .end annotation

    .line 248
    iput-object p1, p0, Lcom/yftech/car/widget/media/radio/list/RadioDataList;->mRadioDataTextList:Ljava/util/List;

    return-void
.end method

.method public updateList(Lcom/yftech/car/media/radio/entity/DataOfRadio;)V
    .locals 4

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 164
    iget-object v1, p0, Lcom/yftech/car/widget/media/radio/list/RadioDataList;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 165
    iget v1, p0, Lcom/yftech/car/widget/media/radio/list/RadioDataList;->mListType:I

    if-ne v1, v0, :cond_0

    .line 166
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager;->getInstance()Lcom/yftech/car/widget/media/manager/RadioManager;

    move-result-object v1

    invoke-virtual {p1}, Lcom/yftech/car/media/radio/entity/DataOfRadio;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/yftech/car/widget/media/manager/RadioManager;->getSearchList(I)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    .line 170
    :cond_0
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager;->getInstance()Lcom/yftech/car/widget/media/manager/RadioManager;

    move-result-object v1

    invoke-virtual {p1}, Lcom/yftech/car/media/radio/entity/DataOfRadio;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/yftech/car/widget/media/manager/RadioManager;->getFavorsList(I)Ljava/util/List;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_1

    .line 177
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 178
    iget-object v2, p0, Lcom/yftech/car/widget/media/radio/list/RadioDataList;->mList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    const-string v1, "RadioDataList"

    .line 181
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateList: mList=="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/yftech/car/widget/media/radio/list/RadioDataList;->mList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget-object v1, p0, Lcom/yftech/car/widget/media/radio/list/RadioDataList;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 183
    iget v1, p0, Lcom/yftech/car/widget/media/radio/list/RadioDataList;->mListType:I

    if-ne v1, v0, :cond_2

    .line 184
    iget-object v0, p0, Lcom/yftech/car/widget/media/radio/list/RadioDataList;->mListEmptyAdapter:Lcom/yftech/car/widget/media/list/adapter/ListOneLayoutAdapter;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/yftech/car/widget/media/radio/list/RadioDataList;->mListEmptyAdapter:Lcom/yftech/car/widget/media/list/adapter/ListOneLayoutAdapter;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/radio/list/RadioDataList;->getAdapter()Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    if-eq v0, v1, :cond_5

    .line 185
    iget-object v0, p0, Lcom/yftech/car/widget/media/radio/list/RadioDataList;->mListEmptyAdapter:Lcom/yftech/car/widget/media/list/adapter/ListOneLayoutAdapter;

    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/radio/list/RadioDataList;->setAdapter(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_1

    .line 188
    :cond_2
    iget-object v0, p0, Lcom/yftech/car/widget/media/radio/list/RadioDataList;->mCollectListEmptyAdapter:Lcom/yftech/car/widget/media/list/adapter/ListOneLayoutAdapter;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/yftech/car/widget/media/radio/list/RadioDataList;->mCollectListEmptyAdapter:Lcom/yftech/car/widget/media/list/adapter/ListOneLayoutAdapter;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/radio/list/RadioDataList;->getAdapter()Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    if-eq v0, v1, :cond_5

    .line 189
    iget-object v0, p0, Lcom/yftech/car/widget/media/radio/list/RadioDataList;->mCollectListEmptyAdapter:Lcom/yftech/car/widget/media/list/adapter/ListOneLayoutAdapter;

    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/radio/list/RadioDataList;->setAdapter(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_1

    .line 193
    :cond_3
    iget-object v0, p0, Lcom/yftech/car/widget/media/radio/list/RadioDataList;->mAdapter:Lcom/yftech/car/widget/media/radio/list/adapter/RadioDataAdapter;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/radio/list/RadioDataList;->getAdapter()Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    if-eq v0, v1, :cond_4

    .line 194
    iget-object v0, p0, Lcom/yftech/car/widget/media/radio/list/RadioDataList;->mAdapter:Lcom/yftech/car/widget/media/radio/list/adapter/RadioDataAdapter;

    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/radio/list/RadioDataList;->setAdapter(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;)V

    .line 196
    :cond_4
    iget-boolean v0, p0, Lcom/yftech/car/widget/media/radio/list/RadioDataList;->mInitAdapter:Z

    if-eqz v0, :cond_5

    .line 197
    iget-object v0, p0, Lcom/yftech/car/widget/media/radio/list/RadioDataList;->mAdapter:Lcom/yftech/car/widget/media/radio/list/adapter/RadioDataAdapter;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/radio/list/adapter/RadioDataAdapter;->notifyDataSetChanged()V

    :cond_5
    :goto_1
    if-eqz p1, :cond_6

    .line 201
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/radio/list/RadioDataList;->updatePosition(Lcom/yftech/car/media/radio/entity/DataOfRadio;)V

    .line 204
    :cond_6
    iget-object p1, p0, Lcom/yftech/car/widget/media/radio/list/RadioDataList;->mRadioDataTextList:Ljava/util/List;

    if-eqz p1, :cond_8

    .line 205
    iget-object p1, p0, Lcom/yftech/car/widget/media/radio/list/RadioDataList;->mRadioDataTextList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_7
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/car/widget/media/radio/text/RadioDataText;

    .line 206
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/radio/list/RadioDataList;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yftech/car/widget/media/radio/text/RadioDataText;->isRadioDataListId(I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 207
    iget-object v1, p0, Lcom/yftech/car/widget/media/radio/list/RadioDataList;->mAdapter:Lcom/yftech/car/widget/media/radio/list/adapter/RadioDataAdapter;

    invoke-virtual {v1}, Lcom/yftech/car/widget/media/radio/list/adapter/RadioDataAdapter;->getDataListSize()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yftech/car/widget/media/radio/text/RadioDataText;->setListSize(I)V

    goto :goto_2

    :cond_8
    return-void
.end method
