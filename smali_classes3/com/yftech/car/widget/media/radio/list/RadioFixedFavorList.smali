.class public Lcom/yftech/car/widget/media/radio/list/RadioFixedFavorList;
.super Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;
.source "RadioFixedFavorList.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RadioFixedFavorList"


# instance fields
.field private mAdapter:Lcom/yftech/car/widget/media/radio/list/adapter/FixedFavorAdapter;

.field private mAmListSize:I

.field private mFmListSize:I

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

.field private final mOnScrollListener:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$OnScrollListener;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 98
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    .line 94
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/yftech/car/widget/media/radio/list/RadioFixedFavorList;->mList:Ljava/util/List;

    .line 211
    new-instance p1, Lcom/yftech/car/widget/media/radio/list/RadioFixedFavorList$1;

    invoke-direct {p1, p0}, Lcom/yftech/car/widget/media/radio/list/RadioFixedFavorList$1;-><init>(Lcom/yftech/car/widget/media/radio/list/RadioFixedFavorList;)V

    iput-object p1, p0, Lcom/yftech/car/widget/media/radio/list/RadioFixedFavorList;->mOnScrollListener:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$OnScrollListener;

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

    .line 102
    sget v0, Lcom/yftech/car/widget/media/R$attr;->recyclerViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/yftech/car/widget/media/radio/list/RadioFixedFavorList;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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

    .line 106
    invoke-direct {p0, p1, p2, p3}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 94
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/yftech/car/widget/media/radio/list/RadioFixedFavorList;->mList:Ljava/util/List;

    .line 211
    new-instance p3, Lcom/yftech/car/widget/media/radio/list/RadioFixedFavorList$1;

    invoke-direct {p3, p0}, Lcom/yftech/car/widget/media/radio/list/RadioFixedFavorList$1;-><init>(Lcom/yftech/car/widget/media/radio/list/RadioFixedFavorList;)V

    iput-object p3, p0, Lcom/yftech/car/widget/media/radio/list/RadioFixedFavorList;->mOnScrollListener:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$OnScrollListener;

    .line 108
    sget-object p3, Lcom/yftech/car/widget/media/R$styleable;->RadioFixedFavorList:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p3

    .line 110
    sget v0, Lcom/yftech/car/widget/media/R$styleable;->RadioFixedFavorList_fm_list_size:I

    const/16 v1, 0xf

    invoke-virtual {p3, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/yftech/car/widget/media/radio/list/RadioFixedFavorList;->mFmListSize:I

    .line 112
    sget v0, Lcom/yftech/car/widget/media/R$styleable;->RadioFixedFavorList_am_list_size:I

    const/16 v1, 0xa

    invoke-virtual {p3, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, p0, Lcom/yftech/car/widget/media/radio/list/RadioFixedFavorList;->mAmListSize:I

    .line 114
    sget-object p3, Lcom/yftech/car/widget/media/R$styleable;->radio_list:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 116
    sget p3, Lcom/yftech/car/widget/media/R$styleable;->radio_list_span_count:I

    const/4 v0, 0x1

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    .line 118
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->radio_list_list_orientation:I

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    if-le p3, v0, :cond_0

    .line 121
    new-instance v0, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;

    invoke-direct {v0, p1, p3}, Lcom/yftech/car/widget/media/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/yftech/car/widget/media/radio/list/RadioFixedFavorList;->mLayoutManager:Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager;

    goto :goto_0

    .line 123
    :cond_0
    new-instance p3, Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager;

    invoke-direct {p3, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/yftech/car/widget/media/radio/list/RadioFixedFavorList;->mLayoutManager:Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager;

    .line 125
    :goto_0
    iget-object p1, p0, Lcom/yftech/car/widget/media/radio/list/RadioFixedFavorList;->mLayoutManager:Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1, v1}, Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 127
    new-instance p1, Lcom/yftech/car/widget/media/radio/list/adapter/FixedFavorAdapter;

    iget-object p3, p0, Lcom/yftech/car/widget/media/radio/list/RadioFixedFavorList;->mList:Ljava/util/List;

    invoke-direct {p1, p3, p2}, Lcom/yftech/car/widget/media/radio/list/adapter/FixedFavorAdapter;-><init>(Ljava/util/List;Landroid/content/res/TypedArray;)V

    iput-object p1, p0, Lcom/yftech/car/widget/media/radio/list/RadioFixedFavorList;->mAdapter:Lcom/yftech/car/widget/media/radio/list/adapter/FixedFavorAdapter;

    return-void
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 0

    .line 207
    invoke-super {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->onDetachedFromWindow()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 135
    invoke-super {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->onFinishInflate()V

    .line 137
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager;->getInstance()Lcom/yftech/car/widget/media/manager/RadioManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/manager/RadioManager;->getFreq()Lcom/yftech/car/media/radio/entity/DataOfRadio;

    move-result-object v0

    .line 138
    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/radio/list/RadioFixedFavorList;->updateFavorsList(Lcom/yftech/car/media/radio/entity/DataOfRadio;)V

    .line 139
    iget-object v0, p0, Lcom/yftech/car/widget/media/radio/list/RadioFixedFavorList;->mLayoutManager:Lcom/yftech/car/widget/media/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/radio/list/RadioFixedFavorList;->setLayoutManager(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 140
    iget-object v0, p0, Lcom/yftech/car/widget/media/radio/list/RadioFixedFavorList;->mAdapter:Lcom/yftech/car/widget/media/radio/list/adapter/FixedFavorAdapter;

    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/radio/list/RadioFixedFavorList;->setAdapter(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;)V

    const/4 v0, 0x1

    .line 141
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/radio/list/RadioFixedFavorList;->mInitAdapter:Z

    return-void
.end method

.method public updateFavorsList(Lcom/yftech/car/media/radio/entity/DataOfRadio;)V
    .locals 7

    if-nez p1, :cond_1

    .line 151
    iget-boolean p1, p0, Lcom/yftech/car/widget/media/radio/list/RadioFixedFavorList;->mInitAdapter:Z

    if-eqz p1, :cond_0

    .line 152
    iget-object p0, p0, Lcom/yftech/car/widget/media/radio/list/RadioFixedFavorList;->mAdapter:Lcom/yftech/car/widget/media/radio/list/adapter/FixedFavorAdapter;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/radio/list/adapter/FixedFavorAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void

    .line 156
    :cond_1
    invoke-virtual {p1}, Lcom/yftech/car/media/radio/entity/DataOfRadio;->getType()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_a

    .line 157
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager;->getInstance()Lcom/yftech/car/widget/media/manager/RadioManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/yftech/car/media/radio/entity/DataOfRadio;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yftech/car/widget/media/manager/RadioManager;->getFavorsList(I)Ljava/util/List;

    move-result-object v0

    const-string v1, "RadioFixedFavorList"

    .line 159
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateFavorsList: favorsList=="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v1, p0, Lcom/yftech/car/widget/media/radio/list/RadioFixedFavorList;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    .line 162
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_7

    .line 164
    invoke-virtual {p1}, Lcom/yftech/car/media/radio/entity/DataOfRadio;->getType()I

    move-result v3

    if-ne v3, v1, :cond_2

    iget v1, p0, Lcom/yftech/car/widget/media/radio/list/RadioFixedFavorList;->mAmListSize:I

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/yftech/car/widget/media/radio/list/RadioFixedFavorList;->mFmListSize:I

    .line 165
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ne v1, v3, :cond_3

    .line 166
    iget-object p1, p0, Lcom/yftech/car/widget/media/radio/list/RadioFixedFavorList;->mList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_5

    :cond_3
    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_6

    .line 170
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 171
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yftech/car/media/radio/entity/DataOfRadio;

    if-eqz v4, :cond_4

    .line 173
    iget-object v5, p0, Lcom/yftech/car/widget/media/radio/list/RadioFixedFavorList;->mList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 175
    :cond_4
    iget-object v4, p0, Lcom/yftech/car/widget/media/radio/list/RadioFixedFavorList;->mList:Ljava/util/List;

    new-instance v5, Lcom/yftech/car/media/radio/entity/DataOfRadio;

    const-string v6, ""

    invoke-direct {v5, v6, v2, v2}, Lcom/yftech/car/media/radio/entity/DataOfRadio;-><init>(Ljava/lang/String;II)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 178
    :cond_5
    iget-object v4, p0, Lcom/yftech/car/widget/media/radio/list/RadioFixedFavorList;->mList:Ljava/util/List;

    new-instance v5, Lcom/yftech/car/media/radio/entity/DataOfRadio;

    const-string v6, ""

    invoke-direct {v5, v6, v2, v2}, Lcom/yftech/car/media/radio/entity/DataOfRadio;-><init>(Ljava/lang/String;II)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 182
    :cond_6
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager;->getInstance()Lcom/yftech/car/widget/media/manager/RadioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/car/widget/media/radio/list/RadioFixedFavorList;->mList:Ljava/util/List;

    invoke-virtual {p1}, Lcom/yftech/car/media/radio/entity/DataOfRadio;->getType()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/yftech/car/widget/media/manager/RadioManager;->updateFavorsList(Ljava/util/List;I)V

    goto :goto_5

    .line 187
    :cond_7
    invoke-virtual {p1}, Lcom/yftech/car/media/radio/entity/DataOfRadio;->getType()I

    move-result v0

    if-ne v0, v1, :cond_8

    iget v0, p0, Lcom/yftech/car/widget/media/radio/list/RadioFixedFavorList;->mAmListSize:I

    goto :goto_3

    :cond_8
    iget v0, p0, Lcom/yftech/car/widget/media/radio/list/RadioFixedFavorList;->mFmListSize:I

    :goto_3
    move v1, v2

    :goto_4
    if-ge v1, v0, :cond_9

    .line 190
    iget-object v3, p0, Lcom/yftech/car/widget/media/radio/list/RadioFixedFavorList;->mList:Ljava/util/List;

    new-instance v4, Lcom/yftech/car/media/radio/entity/DataOfRadio;

    const-string v5, ""

    invoke-direct {v4, v5, v2, v2}, Lcom/yftech/car/media/radio/entity/DataOfRadio;-><init>(Ljava/lang/String;II)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 193
    :cond_9
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager;->getInstance()Lcom/yftech/car/widget/media/manager/RadioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/car/widget/media/radio/list/RadioFixedFavorList;->mList:Ljava/util/List;

    invoke-virtual {p1}, Lcom/yftech/car/media/radio/entity/DataOfRadio;->getType()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/yftech/car/widget/media/manager/RadioManager;->updateFavorsList(Ljava/util/List;I)V

    .line 197
    :goto_5
    iget-boolean p1, p0, Lcom/yftech/car/widget/media/radio/list/RadioFixedFavorList;->mInitAdapter:Z

    if-eqz p1, :cond_b

    .line 198
    iget-object p0, p0, Lcom/yftech/car/widget/media/radio/list/RadioFixedFavorList;->mAdapter:Lcom/yftech/car/widget/media/radio/list/adapter/FixedFavorAdapter;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/radio/list/adapter/FixedFavorAdapter;->notifyDataSetChanged()V

    goto :goto_6

    :cond_a
    const-string p0, "RadioFixedFavorList"

    const-string p1, "onFinishInflate: radio service no connect"

    .line 201
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    :goto_6
    return-void
.end method
