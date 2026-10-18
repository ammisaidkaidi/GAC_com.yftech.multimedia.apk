.class public Lcom/yftech/car/widget/media/radio/list/adapter/RadioDataAdapter;
.super Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;
.source "RadioDataAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/car/widget/media/radio/list/adapter/RadioDataAdapter$OnItemRadioListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/yftech/car/widget/media/radio/list/holder/RadioDataHolder;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/view/View$OnLongClickListener;"
    }
.end annotation


# static fields
.field private static final ADD_FAVOR:I = 0x1

.field private static final CLICK_ADD_FAVOR:I = 0x1

.field private static final CLICK_REMOVE_FAVOR:I = 0x4

.field private static final ENDING:I = -0x65

.field private static final HEAD:I = -0x64

.field private static final LONG_CLICK_ADD_FAVOR:I = 0x2

.field private static final LONG_CLICK_REMOVE_FAVOR:I = 0x8

.field private static final REMOVE_FAVOR:I = 0x3

.field private static final REPLACE_FREQ:I = 0x4

.field private static final SET_FREQ:I = 0x2

.field private static final TAG:Ljava/lang/String; = "RadioDataAdapter"


# instance fields
.field private final mCollectListEmptyLayoutId:I

.field private final mEmptyLayoutId:I

.field private final mEndingItemLayoutId:I

.field private final mHeadItemLayoutId:I

.field private final mItemClickFunction:I

.field private final mItemLayoutId:I

.field private final mItemLongClickFunction:I

.field private final mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yftech/car/media/radio/entity/DataOfRadio;",
            ">;"
        }
    .end annotation
.end field

.field public final mOnFavorClickListener:Landroid/view/View$OnClickListener;

.field private mOnItemRadioListener:Lcom/yftech/car/widget/media/radio/list/adapter/RadioDataAdapter$OnItemRadioListener;

.field private mRadioDataReplaceFavorExists:Ljava/lang/String;

.field private mRadioDataReplaceFavorFail:Ljava/lang/String;

.field private mRadioDataReplaceFavorSuccess:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/content/res/TypedArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yftech/car/media/radio/entity/DataOfRadio;",
            ">;",
            "Landroid/content/res/TypedArray;",
            ")V"
        }
    .end annotation

    .line 92
    invoke-direct {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 379
    new-instance v0, Lcom/yftech/car/widget/media/radio/list/adapter/RadioDataAdapter$1;

    invoke-direct {v0, p0}, Lcom/yftech/car/widget/media/radio/list/adapter/RadioDataAdapter$1;-><init>(Lcom/yftech/car/widget/media/radio/list/adapter/RadioDataAdapter;)V

    iput-object v0, p0, Lcom/yftech/car/widget/media/radio/list/adapter/RadioDataAdapter;->mOnFavorClickListener:Landroid/view/View$OnClickListener;

    .line 93
    iput-object p1, p0, Lcom/yftech/car/widget/media/radio/list/adapter/RadioDataAdapter;->mList:Ljava/util/List;

    .line 95
    sget p1, Lcom/yftech/car/widget/media/R$styleable;->RadioDataList_radio_data_head_item_layout_id:I

    const/4 v0, -0x1

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    iput p1, p0, Lcom/yftech/car/widget/media/radio/list/adapter/RadioDataAdapter;->mHeadItemLayoutId:I

    .line 96
    sget p1, Lcom/yftech/car/widget/media/R$styleable;->RadioDataList_radio_data_item_layout_id:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    iput p1, p0, Lcom/yftech/car/widget/media/radio/list/adapter/RadioDataAdapter;->mItemLayoutId:I

    .line 97
    sget p1, Lcom/yftech/car/widget/media/R$styleable;->RadioDataList_radio_data_ending_item_layout_id:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    iput p1, p0, Lcom/yftech/car/widget/media/radio/list/adapter/RadioDataAdapter;->mEndingItemLayoutId:I

    .line 98
    sget p1, Lcom/yftech/car/widget/media/R$styleable;->RadioDataList_radio_data_list_empty_layout_id:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    iput p1, p0, Lcom/yftech/car/widget/media/radio/list/adapter/RadioDataAdapter;->mEmptyLayoutId:I

    .line 99
    sget p1, Lcom/yftech/car/widget/media/R$styleable;->RadioDataList_radio_data_collect_list_empty_layout_id:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    iput p1, p0, Lcom/yftech/car/widget/media/radio/list/adapter/RadioDataAdapter;->mCollectListEmptyLayoutId:I

    .line 101
    sget p1, Lcom/yftech/car/widget/media/R$styleable;->RadioDataList_radio_item_click_function:I

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    iput p1, p0, Lcom/yftech/car/widget/media/radio/list/adapter/RadioDataAdapter;->mItemClickFunction:I

    .line 103
    sget p1, Lcom/yftech/car/widget/media/R$styleable;->RadioDataList_radio_item_long_click_function:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    iput p1, p0, Lcom/yftech/car/widget/media/radio/list/adapter/RadioDataAdapter;->mItemLongClickFunction:I

    .line 105
    sget p1, Lcom/yftech/car/widget/media/R$styleable;->RadioDataList_radio_data_replace_favor_success:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/car/widget/media/radio/list/adapter/RadioDataAdapter;->mRadioDataReplaceFavorSuccess:Ljava/lang/String;

    .line 106
    sget p1, Lcom/yftech/car/widget/media/R$styleable;->RadioDataList_radio_data_replace_favor_fail:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/car/widget/media/radio/list/adapter/RadioDataAdapter;->mRadioDataReplaceFavorFail:Ljava/lang/String;

    .line 107
    sget p1, Lcom/yftech/car/widget/media/R$styleable;->RadioDataList_radio_data_replace_favor_exists:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/car/widget/media/radio/list/adapter/RadioDataAdapter;->mRadioDataReplaceFavorExists:Ljava/lang/String;

    const-string p1, "RadioDataAdapter"

    .line 109
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "RadioDataAdapter: mItemLongClickFunction=="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/yftech/car/widget/media/radio/list/adapter/RadioDataAdapter;->mItemLongClickFunction:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public getDataListSize()I
    .locals 0

    .line 288
    iget-object p0, p0, Lcom/yftech/car/widget/media/radio/list/adapter/RadioDataAdapter;->mList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getItemCount()I
    .locals 4

    .line 255
    iget-object v0, p0, Lcom/yftech/car/widget/media/radio/list/adapter/RadioDataAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_2

    .line 259
    iget-object v0, p0, Lcom/yftech/car/widget/media/radio/list/adapter/RadioDataAdapter;->mOnItemRadioListener:Lcom/yftech/car/widget/media/radio/list/adapter/RadioDataAdapter$OnItemRadioListener;

    if-eqz v0, :cond_1

    .line 261
    iget-object v0, p0, Lcom/yftech/car/widget/media/radio/list/adapter/RadioDataAdapter;->mOnItemRadioListener:Lcom/yftech/car/widget/media/radio/list/adapter/RadioDataAdapter$OnItemRadioListener;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/radio/list/adapter/RadioDataAdapter$OnItemRadioListener;->getListType()I

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v0, v2, :cond_0

    .line 262
    iget p0, p0, Lcom/yftech/car/widget/media/radio/list/adapter/RadioDataAdapter;->mCollectListEmptyLayoutId:I

    if-eq p0, v1, :cond_1

    return v3

    .line 266
    :cond_0
    iget p0, p0, Lcom/yftech/car/widget/media/radio/list/adapter/RadioDataAdapter;->mEmptyLayoutId:I

    if-eq p0, v1, :cond_1

    return v3

    :cond_1
    const/4 p0, 0x0

    return p0

    .line 276
    :cond_2
    iget v2, p0, Lcom/yftech/car/widget/media/radio/list/adapter/RadioDataAdapter;->mHeadItemLayoutId:I

    if-eq v2, v1, :cond_3

    add-int/lit8 v0, v0, 0x1

    .line 280
    :cond_3
    iget p0, p0, Lcom/yftech/car/widget/media/radio/list/adapter/RadioDataAdapter;->mEndingItemLayoutId:I

    if-eq p0, v1, :cond_4

    add-int/lit8 v0, v0, 0x1

    :cond_4
    return v0
.end method

.method public getItemViewType(I)I
    .locals 2

    .line 114
    iget v0, p0, Lcom/yftech/car/widget/media/radio/list/adapter/RadioDataAdapter;->mHeadItemLayoutId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    if-nez p1, :cond_0

    const/16 p0, -0x64

    return p0

    .line 117
    :cond_0
    iget v0, p0, Lcom/yftech/car/widget/media/radio/list/adapter/RadioDataAdapter;->mEndingItemLayoutId:I

    if-eq v0, v1, :cond_1

    iget-object p0, p0, Lcom/yftech/car/widget/media/radio/list/adapter/RadioDataAdapter;->mList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    if-ne p1, p0, :cond_1

    const/16 p0, -0x65

    return p0

    :cond_1
    return p1
.end method

.method public onBindViewHolder(Lcom/yftech/car/widget/media/radio/list/holder/RadioDataHolder;I)V
    .locals 3
    .param p1    # Lcom/yftech/car/widget/media/radio/list/holder/RadioDataHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 228
    iget-object v0, p0, Lcom/yftech/car/widget/media/radio/list/adapter/RadioDataAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 233
    iget v0, p0, Lcom/yftech/car/widget/media/radio/list/adapter/RadioDataAdapter;->mHeadItemLayoutId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-nez p2, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, p2, -0x1

    goto :goto_0

    :cond_1
    move v0, p2

    .line 240
    :goto_0
    iget v2, p0, Lcom/yftech/car/widget/media/radio/list/adapter/RadioDataAdapter;->mEndingItemLayoutId:I

    if-eq v2, v1, :cond_2

    iget-object v1, p0, Lcom/yftech/car/widget/media/radio/list/adapter/RadioDataAdapter;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne p2, v1, :cond_2

    return-void

    .line 244
    :cond_2
    iget-object p0, p0, Lcom/yftech/car/widget/media/radio/list/adapter/RadioDataAdapter;->mList:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yftech/car/media/radio/entity/DataOfRadio;

    invoke-virtual {p1, p0, v0}, Lcom/yftech/car/widget/media/radio/list/holder/RadioDataHolder;->setRadioData(Lcom/yftech/car/media/radio/entity/DataOfRadio;I)V

    :cond_3
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 42
    check-cast p1, Lcom/yftech/car/widget/media/radio/list/holder/RadioDataHolder;

    invoke-virtual {p0, p1, p2}, Lcom/yftech/car/widget/media/radio/list/adapter/RadioDataAdapter;->onBindViewHolder(Lcom/yftech/car/widget/media/radio/list/holder/RadioDataHolder;I)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 302
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/car/media/radio/entity/DataOfRadio;

    .line 303
    invoke-virtual {v0}, Lcom/yftech/car/media/radio/entity/DataOfRadio;->getFreq()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-nez v1, :cond_1

    .line 304
    iget v1, p0, Lcom/yftech/car/widget/media/radio/list/adapter/RadioDataAdapter;->mItemClickFunction:I

    if-ne v1, v3, :cond_0

    .line 305
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager;->getInstance()Lcom/yftech/car/widget/media/manager/RadioManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/manager/RadioManager;->getFreq()Lcom/yftech/car/media/radio/entity/DataOfRadio;

    move-result-object p0

    .line 306
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager;->getInstance()Lcom/yftech/car/widget/media/manager/RadioManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yftech/car/media/radio/entity/DataOfRadio;->getType()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-virtual {v0, v1, p1, p0}, Lcom/yftech/car/widget/media/manager/RadioManager;->updateFavor(IILcom/yftech/car/media/radio/entity/DataOfRadio;)Z

    goto :goto_0

    .line 307
    :cond_0
    iget p0, p0, Lcom/yftech/car/widget/media/radio/list/adapter/RadioDataAdapter;->mItemClickFunction:I

    if-ne p0, v2, :cond_4

    .line 308
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager;->getInstance()Lcom/yftech/car/widget/media/manager/RadioManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/manager/RadioManager;->removeFavor(Lcom/yftech/car/media/radio/entity/DataOfRadio;)Z

    move-result p0

    const-string p1, "RadioDataAdapter"

    .line 309
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onClick: remove isFreqFavored=="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 312
    :cond_1
    iget p1, p0, Lcom/yftech/car/widget/media/radio/list/adapter/RadioDataAdapter;->mItemClickFunction:I

    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 313
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager;->getInstance()Lcom/yftech/car/widget/media/manager/RadioManager;

    move-result-object p0

    invoke-virtual {v0}, Lcom/yftech/car/media/radio/entity/DataOfRadio;->getFreq()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/manager/RadioManager;->setFreq(I)I

    goto :goto_0

    .line 314
    :cond_2
    iget p1, p0, Lcom/yftech/car/widget/media/radio/list/adapter/RadioDataAdapter;->mItemClickFunction:I

    if-ne p1, v3, :cond_3

    .line 315
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager;->getInstance()Lcom/yftech/car/widget/media/manager/RadioManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/manager/RadioManager;->addFavor(Lcom/yftech/car/media/radio/entity/DataOfRadio;)Z

    goto :goto_0

    .line 316
    :cond_3
    iget p0, p0, Lcom/yftech/car/widget/media/radio/list/adapter/RadioDataAdapter;->mItemClickFunction:I

    if-ne p0, v2, :cond_4

    .line 317
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager;->getInstance()Lcom/yftech/car/widget/media/manager/RadioManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/manager/RadioManager;->removeFavor(Lcom/yftech/car/media/radio/entity/DataOfRadio;)Z

    move-result p0

    const-string p1, "RadioDataAdapter"

    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onClick: remove isFreqFavored=="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/yftech/car/widget/media/radio/list/holder/RadioDataHolder;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 148
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/radio/list/adapter/RadioDataAdapter;->getDataListSize()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-nez v0, :cond_2

    const-string p2, "RadioDataAdapter"

    const-string v0, "onCreateViewHolder: list is Empty"

    .line 150
    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object p2, p0, Lcom/yftech/car/widget/media/radio/list/adapter/RadioDataAdapter;->mOnItemRadioListener:Lcom/yftech/car/widget/media/radio/list/adapter/RadioDataAdapter$OnItemRadioListener;

    if-eqz p2, :cond_1

    .line 154
    iget-object p2, p0, Lcom/yftech/car/widget/media/radio/list/adapter/RadioDataAdapter;->mOnItemRadioListener:Lcom/yftech/car/widget/media/radio/list/adapter/RadioDataAdapter$OnItemRadioListener;

    invoke-virtual {p2}, Lcom/yftech/car/widget/media/radio/list/adapter/RadioDataAdapter$OnItemRadioListener;->getListType()I

    move-result p2

    const/4 v0, -0x1

    if-ne p2, v1, :cond_0

    .line 155
    iget p2, p0, Lcom/yftech/car/widget/media/radio/list/adapter/RadioDataAdapter;->mCollectListEmptyLayoutId:I

    if-eq p2, v0, :cond_1

    const-string p2, "RadioDataAdapter"

    const-string v0, "onCreateViewHolder: FAVOR_LIST  COLLECT"

    .line 156
    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iget v0, p0, Lcom/yftech/car/widget/media/radio/list/adapter/RadioDataAdapter;->mCollectListEmptyLayoutId:I

    invoke-virtual {p2, v0, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 160
    :cond_0
    iget p2, p0, Lcom/yftech/car/widget/media/radio/list/adapter/RadioDataAdapter;->mEmptyLayoutId:I

    if-eq p2, v0, :cond_1

    .line 161
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iget v0, p0, Lcom/yftech/car/widget/media/radio/list/adapter/RadioDataAdapter;->mEmptyLayoutId:I

    invoke-virtual {p2, v0, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    if-nez p2, :cond_6

    .line 166
    new-instance p2, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    goto :goto_2

    :cond_2
    packed-switch p2, :pswitch_data_0

    .line 178
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iget v0, p0, Lcom/yftech/car/widget/media/radio/list/adapter/RadioDataAdapter;->mItemLayoutId:I

    invoke-virtual {p2, v0, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 180
    iget p1, p0, Lcom/yftech/car/widget/media/radio/list/adapter/RadioDataAdapter;->mItemClickFunction:I

    const/4 v0, 0x3

    const/4 v2, 0x1

    if-eq p1, v1, :cond_3

    iget p1, p0, Lcom/yftech/car/widget/media/radio/list/adapter/RadioDataAdapter;->mItemClickFunction:I

    if-eq p1, v2, :cond_3

    iget p1, p0, Lcom/yftech/car/widget/media/radio/list/adapter/RadioDataAdapter;->mItemClickFunction:I

    if-ne p1, v0, :cond_4

    goto :goto_1

    .line 172
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iget v0, p0, Lcom/yftech/car/widget/media/radio/list/adapter/RadioDataAdapter;->mHeadItemLayoutId:I

    invoke-virtual {p2, v0, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    goto :goto_2

    .line 175
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iget v0, p0, Lcom/yftech/car/widget/media/radio/list/adapter/RadioDataAdapter;->mEndingItemLayoutId:I

    invoke-virtual {p2, v0, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    goto :goto_2

    .line 181
    :cond_3
    :goto_1
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    :cond_4
    iget p1, p0, Lcom/yftech/car/widget/media/radio/list/adapter/RadioDataAdapter;->mItemLongClickFunction:I

    if-eq p1, v1, :cond_5

    iget p1, p0, Lcom/yftech/car/widget/media/radio/list/adapter/RadioDataAdapter;->mItemLongClickFunction:I

    if-eq p1, v2, :cond_5

    iget p1, p0, Lcom/yftech/car/widget/media/radio/list/adapter/RadioDataAdapter;->mItemLongClickFunction:I

    if-eq p1, v0, :cond_5

    iget p1, p0, Lcom/yftech/car/widget/media/radio/list/adapter/RadioDataAdapter;->mItemLongClickFunction:I

    const/4 v0, 0x4

    if-ne p1, v0, :cond_6

    .line 184
    :cond_5
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 192
    :cond_6
    :goto_2
    new-instance p1, Lcom/yftech/car/widget/media/radio/list/holder/RadioDataHolder;

    invoke-direct {p1, p2, p0}, Lcom/yftech/car/widget/media/radio/list/holder/RadioDataHolder;-><init>(Landroid/view/View;Lcom/yftech/car/widget/media/radio/list/adapter/RadioDataAdapter;)V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch -0x65
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 42
    invoke-virtual {p0, p1, p2}, Lcom/yftech/car/widget/media/radio/list/adapter/RadioDataAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/yftech/car/widget/media/radio/list/holder/RadioDataHolder;

    move-result-object p0

    return-object p0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 6

    .line 331
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/car/media/radio/entity/DataOfRadio;

    .line 332
    invoke-virtual {v0}, Lcom/yftech/car/media/radio/entity/DataOfRadio;->getFreq()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-nez v1, :cond_1

    .line 333
    iget v1, p0, Lcom/yftech/car/widget/media/radio/list/adapter/RadioDataAdapter;->mItemLongClickFunction:I

    if-ne v1, v3, :cond_0

    .line 334
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager;->getInstance()Lcom/yftech/car/widget/media/manager/RadioManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/manager/RadioManager;->getFreq()Lcom/yftech/car/media/radio/entity/DataOfRadio;

    move-result-object p0

    .line 335
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager;->getInstance()Lcom/yftech/car/widget/media/manager/RadioManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yftech/car/media/radio/entity/DataOfRadio;->getType()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-virtual {v0, v1, p1, p0}, Lcom/yftech/car/widget/media/manager/RadioManager;->updateFavor(IILcom/yftech/car/media/radio/entity/DataOfRadio;)Z

    goto/16 :goto_0

    .line 336
    :cond_0
    iget p0, p0, Lcom/yftech/car/widget/media/radio/list/adapter/RadioDataAdapter;->mItemLongClickFunction:I

    if-ne p0, v2, :cond_a

    .line 337
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager;->getInstance()Lcom/yftech/car/widget/media/manager/RadioManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/manager/RadioManager;->removeFavor(Lcom/yftech/car/media/radio/entity/DataOfRadio;)Z

    move-result p0

    const-string p1, "RadioDataAdapter"

    .line 338
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onClick: remove isFreqFavored=="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_1
    const-string v1, "RadioDataAdapter"

    .line 341
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onLongClick: mItemLongClickFunction=="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/yftech/car/widget/media/radio/list/adapter/RadioDataAdapter;->mItemLongClickFunction:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    iget v1, p0, Lcom/yftech/car/widget/media/radio/list/adapter/RadioDataAdapter;->mItemLongClickFunction:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_2

    .line 343
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager;->getInstance()Lcom/yftech/car/widget/media/manager/RadioManager;

    move-result-object p0

    invoke-virtual {v0}, Lcom/yftech/car/media/radio/entity/DataOfRadio;->getFreq()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/manager/RadioManager;->setFreq(I)I

    goto/16 :goto_0

    .line 344
    :cond_2
    iget v1, p0, Lcom/yftech/car/widget/media/radio/list/adapter/RadioDataAdapter;->mItemLongClickFunction:I

    if-ne v1, v3, :cond_3

    .line 345
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager;->getInstance()Lcom/yftech/car/widget/media/manager/RadioManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/manager/RadioManager;->addFavor(Lcom/yftech/car/media/radio/entity/DataOfRadio;)Z

    goto/16 :goto_0

    .line 346
    :cond_3
    iget v1, p0, Lcom/yftech/car/widget/media/radio/list/adapter/RadioDataAdapter;->mItemLongClickFunction:I

    if-ne v1, v2, :cond_4

    .line 347
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager;->getInstance()Lcom/yftech/car/widget/media/manager/RadioManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/manager/RadioManager;->removeFavor(Lcom/yftech/car/media/radio/entity/DataOfRadio;)Z

    move-result p0

    const-string p1, "RadioDataAdapter"

    .line 348
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onClick: remove isFreqFavored=="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 349
    :cond_4
    iget v1, p0, Lcom/yftech/car/widget/media/radio/list/adapter/RadioDataAdapter;->mItemLongClickFunction:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_a

    .line 350
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager;->getInstance()Lcom/yftech/car/widget/media/manager/RadioManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yftech/car/widget/media/manager/RadioManager;->getFreq()Lcom/yftech/car/media/radio/entity/DataOfRadio;

    move-result-object v1

    .line 351
    invoke-virtual {v1}, Lcom/yftech/car/media/radio/entity/DataOfRadio;->getFreq()I

    move-result v2

    invoke-virtual {v0}, Lcom/yftech/car/media/radio/entity/DataOfRadio;->getFreq()I

    move-result v0

    if-ne v2, v0, :cond_5

    const-string p0, "RadioDataAdapter"

    const-string p1, "onLongClick: The playback freq is the same as the click freq"

    .line 352
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 355
    :cond_5
    iget-object v0, p0, Lcom/yftech/car/widget/media/radio/list/adapter/RadioDataAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yftech/car/media/radio/entity/DataOfRadio;

    .line 356
    invoke-virtual {v2}, Lcom/yftech/car/media/radio/entity/DataOfRadio;->getFreq()I

    move-result v2

    invoke-virtual {v1}, Lcom/yftech/car/media/radio/entity/DataOfRadio;->getFreq()I

    move-result v5

    if-ne v2, v5, :cond_6

    .line 357
    iget-object v0, p0, Lcom/yftech/car/widget/media/radio/list/adapter/RadioDataAdapter;->mRadioDataReplaceFavorExists:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 358
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p0, p0, Lcom/yftech/car/widget/media/radio/list/adapter/RadioDataAdapter;->mRadioDataReplaceFavorExists:Ljava/lang/String;

    invoke-static {p1, p0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_7
    return v3

    .line 363
    :cond_8
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager;->getInstance()Lcom/yftech/car/widget/media/manager/RadioManager;

    move-result-object v0

    invoke-virtual {v1}, Lcom/yftech/car/media/radio/entity/DataOfRadio;->getType()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    invoke-virtual {v0, v2, v5, v1}, Lcom/yftech/car/widget/media/manager/RadioManager;->updateFavor(IILcom/yftech/car/media/radio/entity/DataOfRadio;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 365
    iget-object v0, p0, Lcom/yftech/car/widget/media/radio/list/adapter/RadioDataAdapter;->mRadioDataReplaceFavorSuccess:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 366
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p0, p0, Lcom/yftech/car/widget/media/radio/list/adapter/RadioDataAdapter;->mRadioDataReplaceFavorSuccess:Ljava/lang/String;

    invoke-static {p1, p0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 369
    :cond_9
    iget-object v0, p0, Lcom/yftech/car/widget/media/radio/list/adapter/RadioDataAdapter;->mRadioDataReplaceFavorFail:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 370
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p0, p0, Lcom/yftech/car/widget/media/radio/list/adapter/RadioDataAdapter;->mRadioDataReplaceFavorFail:Ljava/lang/String;

    invoke-static {p1, p0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_a
    :goto_0
    return v3
.end method

.method public setOnItemRadioListener(Lcom/yftech/car/widget/media/radio/list/adapter/RadioDataAdapter$OnItemRadioListener;)V
    .locals 0

    .line 292
    iput-object p1, p0, Lcom/yftech/car/widget/media/radio/list/adapter/RadioDataAdapter;->mOnItemRadioListener:Lcom/yftech/car/widget/media/radio/list/adapter/RadioDataAdapter$OnItemRadioListener;

    return-void
.end method
