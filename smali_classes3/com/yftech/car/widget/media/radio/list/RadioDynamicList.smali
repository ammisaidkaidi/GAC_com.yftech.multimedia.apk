.class public Lcom/yftech/car/widget/media/radio/list/RadioDynamicList;
.super Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;
.source "RadioDynamicList.java"


# static fields
.field public static final FAVOR_LIST:I = 0x2

.field public static final SCAN_SEARCH_LIST:I = 0x1

.field private static final TAG:Ljava/lang/String; = "RadioDynamicList"


# instance fields
.field private mAdapter:Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;

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

.field private mListType:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 122
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 99
    iput p1, p0, Lcom/yftech/car/widget/media/radio/list/RadioDynamicList;->mListType:I

    .line 119
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/yftech/car/widget/media/radio/list/RadioDynamicList;->mList:Ljava/util/List;

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

    .line 126
    sget v0, Lcom/yftech/car/widget/media/R$attr;->recyclerViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/yftech/car/widget/media/radio/list/RadioDynamicList;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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

    .line 130
    invoke-direct {p0, p1, p2, p3}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x1

    .line 99
    iput p3, p0, Lcom/yftech/car/widget/media/radio/list/RadioDynamicList;->mListType:I

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yftech/car/widget/media/radio/list/RadioDynamicList;->mList:Ljava/util/List;

    .line 133
    new-instance v0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;

    iget-object v1, p0, Lcom/yftech/car/widget/media/radio/list/RadioDynamicList;->mList:Ljava/util/List;

    invoke-direct {v0, v1, p1, p2}, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;-><init>(Ljava/util/List;Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/yftech/car/widget/media/radio/list/RadioDynamicList;->mAdapter:Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;

    .line 135
    sget-object v0, Lcom/yftech/car/widget/media/R$styleable;->RadioDynamicList:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 137
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->RadioDynamicList_list_type:I

    invoke-virtual {v0, v1, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/yftech/car/widget/media/radio/list/RadioDynamicList;->mListType:I

    .line 139
    sget-object v0, Lcom/yftech/car/widget/media/R$styleable;->radio_list:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 141
    sget v0, Lcom/yftech/car/widget/media/R$styleable;->radio_list_span_count:I

    invoke-virtual {p2, v0, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 143
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->radio_list_list_orientation:I

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    if-le v0, p3, :cond_0

    .line 147
    new-instance p3, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;

    invoke-direct {p3, p1, v0}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    iput-object p3, p0, Lcom/yftech/car/widget/media/radio/list/RadioDynamicList;->mLayoutManager:Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager;

    goto :goto_0

    .line 149
    :cond_0
    new-instance p3, Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager;

    invoke-direct {p3, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/yftech/car/widget/media/radio/list/RadioDynamicList;->mLayoutManager:Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager;

    .line 151
    :goto_0
    iget-object p0, p0, Lcom/yftech/car/widget/media/radio/list/RadioDynamicList;->mLayoutManager:Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0, p2}, Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    return-void
.end method

.method private updatePosition(Lcom/yftech/car/media/radio/entity/DataOfRadio;)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 202
    :goto_0
    iget-object v2, p0, Lcom/yftech/car/widget/media/radio/list/RadioDynamicList;->mList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 203
    invoke-virtual {p1}, Lcom/yftech/car/media/radio/entity/DataOfRadio;->getFreq()I

    move-result v2

    iget-object v3, p0, Lcom/yftech/car/widget/media/radio/list/RadioDynamicList;->mList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yftech/car/media/radio/entity/DataOfRadio;

    invoke-virtual {v3}, Lcom/yftech/car/media/radio/entity/DataOfRadio;->getFreq()I

    move-result v3

    if-ne v2, v3, :cond_3

    .line 205
    iget-object p1, p0, Lcom/yftech/car/widget/media/radio/list/RadioDynamicList;->mLayoutManager:Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p1

    add-int/lit8 v2, p1, 0x1

    if-lt v1, v2, :cond_0

    .line 206
    iget-object v2, p0, Lcom/yftech/car/widget/media/radio/list/RadioDynamicList;->mLayoutManager:Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v2}, Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-gt v1, v2, :cond_0

    const-string p0, "RadioDynamicList"

    .line 207
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

    .line 210
    iget-object v2, p0, Lcom/yftech/car/widget/media/radio/list/RadioDynamicList;->mLayoutManager:Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v2, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 212
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/radio/list/RadioDynamicList;->getHeight()I

    move-result v0

    .line 213
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    .line 215
    div-int v2, v0, p1

    .line 216
    rem-int/2addr v0, p1

    .line 220
    iget-object p0, p0, Lcom/yftech/car/widget/media/radio/list/RadioDynamicList;->mLayoutManager:Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager;

    add-int/lit8 v2, v2, -0x1

    mul-int/2addr v2, p1

    add-int/2addr v2, v0

    invoke-virtual {p0, v1, v2}, Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    goto :goto_1

    .line 222
    :cond_1
    iget-object p0, p0, Lcom/yftech/car/widget/media/radio/list/RadioDynamicList;->mLayoutManager:Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0, v1, v0}, Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    goto :goto_1

    .line 226
    :cond_2
    iget-object p0, p0, Lcom/yftech/car/widget/media/radio/list/RadioDynamicList;->mLayoutManager:Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager;

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

    .line 171
    iget p0, p0, Lcom/yftech/car/widget/media/radio/list/RadioDynamicList;->mListType:I

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onChildDetachedFromWindow(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 243
    invoke-super {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->onChildDetachedFromWindow(Landroid/view/View;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 237
    invoke-super {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->onDetachedFromWindow()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 156
    invoke-super {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->onFinishInflate()V

    .line 158
    iget-object v0, p0, Lcom/yftech/car/widget/media/radio/list/RadioDynamicList;->mLayoutManager:Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/radio/list/RadioDynamicList;->setLayoutManager(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 159
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager;->getInstance()Lcom/yftech/car/widget/media/manager/RadioManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/manager/RadioManager;->getFreq()Lcom/yftech/car/media/radio/entity/DataOfRadio;

    move-result-object v0

    .line 160
    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/radio/list/RadioDynamicList;->updateList(Lcom/yftech/car/media/radio/entity/DataOfRadio;)V

    .line 161
    iget-object v0, p0, Lcom/yftech/car/widget/media/radio/list/RadioDynamicList;->mAdapter:Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;

    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/radio/list/RadioDynamicList;->setAdapter(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;)V

    const/4 v0, 0x1

    .line 162
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/radio/list/RadioDynamicList;->mInitAdapter:Z

    return-void
.end method

.method public updateList(Lcom/yftech/car/media/radio/entity/DataOfRadio;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 181
    iget-object v0, p0, Lcom/yftech/car/widget/media/radio/list/RadioDynamicList;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 182
    iget v0, p0, Lcom/yftech/car/widget/media/radio/list/RadioDynamicList;->mListType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 183
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager;->getInstance()Lcom/yftech/car/widget/media/manager/RadioManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/yftech/car/media/radio/entity/DataOfRadio;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yftech/car/widget/media/manager/RadioManager;->getSearchList(I)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 185
    :cond_0
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager;->getInstance()Lcom/yftech/car/widget/media/manager/RadioManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/yftech/car/media/radio/entity/DataOfRadio;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yftech/car/widget/media/manager/RadioManager;->getFavorsList(I)Ljava/util/List;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 188
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 189
    iget-object v1, p0, Lcom/yftech/car/widget/media/radio/list/RadioDynamicList;->mList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 192
    :cond_1
    iget-boolean v0, p0, Lcom/yftech/car/widget/media/radio/list/RadioDynamicList;->mInitAdapter:Z

    if-eqz v0, :cond_2

    .line 193
    iget-object v0, p0, Lcom/yftech/car/widget/media/radio/list/RadioDynamicList;->mAdapter:Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->notifyDataSetChanged()V

    :cond_2
    if-eqz p1, :cond_3

    .line 197
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/radio/list/RadioDynamicList;->updatePosition(Lcom/yftech/car/media/radio/entity/DataOfRadio;)V

    :cond_3
    return-void
.end method
