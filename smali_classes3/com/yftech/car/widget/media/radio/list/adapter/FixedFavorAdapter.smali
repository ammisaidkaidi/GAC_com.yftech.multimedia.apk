.class public Lcom/yftech/car/widget/media/radio/list/adapter/FixedFavorAdapter;
.super Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;
.source "FixedFavorAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/yftech/car/widget/media/radio/list/holder/FixedFavorHolder;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/view/View$OnLongClickListener;"
    }
.end annotation


# static fields
.field private static final FAVOR:I = 0x1

.field private static final SET_FREQ:I = 0x2

.field private static final TAG:Ljava/lang/String; = "FixedFavorAdapter"


# instance fields
.field private final mDrawable:Landroid/graphics/drawable/Drawable;

.field private final mItemClickFunction:I

.field private final mItemGravity:I

.field private final mItemHeight:I

.field private final mItemLongClickFunction:I

.field private final mItemMargin:I

.field private final mItemMarginBottom:I

.field private final mItemMarginEnd:I

.field private final mItemMarginLeft:I

.field private final mItemMarginRight:I

.field private final mItemMarginStart:I

.field private final mItemMarginTop:I

.field private mItemNull:Ljava/lang/String;

.field private final mItemTextColor:I

.field private final mItemTextSize:I

.field private final mItemWidth:I

.field private final mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yftech/car/media/radio/entity/DataOfRadio;",
            ">;"
        }
    .end annotation
.end field


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

    .line 72
    invoke-direct {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/yftech/car/widget/media/radio/list/adapter/FixedFavorAdapter;->mList:Ljava/util/List;

    .line 75
    sget p1, Lcom/yftech/car/widget/media/R$styleable;->radio_list_item_width:I

    const/4 v0, -0x2

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result p1

    iput p1, p0, Lcom/yftech/car/widget/media/radio/list/adapter/FixedFavorAdapter;->mItemWidth:I

    .line 77
    sget p1, Lcom/yftech/car/widget/media/R$styleable;->radio_list_item_height:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result p1

    iput p1, p0, Lcom/yftech/car/widget/media/radio/list/adapter/FixedFavorAdapter;->mItemHeight:I

    .line 79
    sget p1, Lcom/yftech/car/widget/media/R$styleable;->radio_list_item_gravity:I

    const/16 v0, 0x11

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    iput p1, p0, Lcom/yftech/car/widget/media/radio/list/adapter/FixedFavorAdapter;->mItemGravity:I

    .line 81
    sget p1, Lcom/yftech/car/widget/media/R$styleable;->radio_list_item_text_color:I

    const/4 v0, -0x1

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    iput p1, p0, Lcom/yftech/car/widget/media/radio/list/adapter/FixedFavorAdapter;->mItemTextColor:I

    .line 83
    sget p1, Lcom/yftech/car/widget/media/R$styleable;->radio_list_item_text_size:I

    const/high16 v0, 0x41a00000    # 20.0f

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/yftech/car/widget/media/radio/list/adapter/FixedFavorAdapter;->mItemTextSize:I

    .line 85
    sget p1, Lcom/yftech/car/widget/media/R$styleable;->radio_list_item_margin:I

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/yftech/car/widget/media/radio/list/adapter/FixedFavorAdapter;->mItemMargin:I

    .line 87
    sget p1, Lcom/yftech/car/widget/media/R$styleable;->radio_list_item_marginLeft:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/yftech/car/widget/media/radio/list/adapter/FixedFavorAdapter;->mItemMarginLeft:I

    .line 89
    sget p1, Lcom/yftech/car/widget/media/R$styleable;->radio_list_item_marginTop:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/yftech/car/widget/media/radio/list/adapter/FixedFavorAdapter;->mItemMarginTop:I

    .line 91
    sget p1, Lcom/yftech/car/widget/media/R$styleable;->radio_list_item_marginRight:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/yftech/car/widget/media/radio/list/adapter/FixedFavorAdapter;->mItemMarginRight:I

    .line 93
    sget p1, Lcom/yftech/car/widget/media/R$styleable;->radio_list_item_marginBottom:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/yftech/car/widget/media/radio/list/adapter/FixedFavorAdapter;->mItemMarginBottom:I

    .line 95
    sget p1, Lcom/yftech/car/widget/media/R$styleable;->radio_list_item_marginStart:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/yftech/car/widget/media/radio/list/adapter/FixedFavorAdapter;->mItemMarginStart:I

    .line 97
    sget p1, Lcom/yftech/car/widget/media/R$styleable;->radio_list_item_marginEnd:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/yftech/car/widget/media/radio/list/adapter/FixedFavorAdapter;->mItemMarginEnd:I

    .line 99
    sget p1, Lcom/yftech/car/widget/media/R$styleable;->radio_list_item_click_function:I

    const/4 v0, 0x2

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    iput p1, p0, Lcom/yftech/car/widget/media/radio/list/adapter/FixedFavorAdapter;->mItemClickFunction:I

    .line 101
    sget p1, Lcom/yftech/car/widget/media/R$styleable;->radio_list_item_long_click_function:I

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    iput p1, p0, Lcom/yftech/car/widget/media/radio/list/adapter/FixedFavorAdapter;->mItemLongClickFunction:I

    .line 103
    sget p1, Lcom/yftech/car/widget/media/R$styleable;->radio_list_item_background:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/car/widget/media/radio/list/adapter/FixedFavorAdapter;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 105
    sget p1, Lcom/yftech/car/widget/media/R$styleable;->radio_list_item_text_null:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/car/widget/media/radio/list/adapter/FixedFavorAdapter;->mItemNull:Ljava/lang/String;

    .line 106
    iget-object p1, p0, Lcom/yftech/car/widget/media/radio/list/adapter/FixedFavorAdapter;->mItemNull:Ljava/lang/String;

    if-nez p1, :cond_0

    const-string p1, "+"

    .line 107
    iput-object p1, p0, Lcom/yftech/car/widget/media/radio/list/adapter/FixedFavorAdapter;->mItemNull:Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    .line 210
    iget-object p0, p0, Lcom/yftech/car/widget/media/radio/list/adapter/FixedFavorAdapter;->mList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getItemViewType(I)I
    .locals 0

    .line 113
    iget-object p0, p0, Lcom/yftech/car/widget/media/radio/list/adapter/FixedFavorAdapter;->mList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yftech/car/media/radio/entity/DataOfRadio;

    invoke-virtual {p0}, Lcom/yftech/car/media/radio/entity/DataOfRadio;->getType()I

    move-result p0

    return p0
.end method

.method public onBindViewHolder(Lcom/yftech/car/widget/media/radio/list/holder/FixedFavorHolder;I)V
    .locals 1
    .param p1    # Lcom/yftech/car/widget/media/radio/list/holder/FixedFavorHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 198
    iget-object v0, p1, Lcom/yftech/car/widget/media/radio/list/holder/FixedFavorHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setId(I)V

    .line 199
    iget-object v0, p0, Lcom/yftech/car/widget/media/radio/list/adapter/FixedFavorAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/yftech/car/media/radio/entity/DataOfRadio;

    .line 200
    iget-object p0, p0, Lcom/yftech/car/widget/media/radio/list/adapter/FixedFavorAdapter;->mItemNull:Ljava/lang/String;

    invoke-virtual {p1, p2, p0}, Lcom/yftech/car/widget/media/radio/list/holder/FixedFavorHolder;->setRadioData(Lcom/yftech/car/media/radio/entity/DataOfRadio;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 42
    check-cast p1, Lcom/yftech/car/widget/media/radio/list/holder/FixedFavorHolder;

    invoke-virtual {p0, p1, p2}, Lcom/yftech/car/widget/media/radio/list/adapter/FixedFavorAdapter;->onBindViewHolder(Lcom/yftech/car/widget/media/radio/list/holder/FixedFavorHolder;I)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 220
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/car/media/radio/entity/DataOfRadio;

    .line 221
    invoke-virtual {v0}, Lcom/yftech/car/media/radio/entity/DataOfRadio;->getFreq()I

    move-result v1

    if-nez v1, :cond_0

    .line 222
    iget p0, p0, Lcom/yftech/car/widget/media/radio/list/adapter/FixedFavorAdapter;->mItemClickFunction:I

    and-int/lit8 p0, p0, 0x1

    if-lez p0, :cond_2

    .line 223
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager;->getInstance()Lcom/yftech/car/widget/media/manager/RadioManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/manager/RadioManager;->getFreq()Lcom/yftech/car/media/radio/entity/DataOfRadio;

    move-result-object p0

    .line 224
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager;->getInstance()Lcom/yftech/car/widget/media/manager/RadioManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yftech/car/media/radio/entity/DataOfRadio;->getType()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-virtual {v0, v1, p1, p0}, Lcom/yftech/car/widget/media/manager/RadioManager;->updateFavor(IILcom/yftech/car/media/radio/entity/DataOfRadio;)Z

    goto :goto_0

    .line 227
    :cond_0
    iget v1, p0, Lcom/yftech/car/widget/media/radio/list/adapter/FixedFavorAdapter;->mItemClickFunction:I

    and-int/lit8 v1, v1, 0x2

    if-lez v1, :cond_1

    .line 228
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager;->getInstance()Lcom/yftech/car/widget/media/manager/RadioManager;

    move-result-object p0

    invoke-virtual {v0}, Lcom/yftech/car/media/radio/entity/DataOfRadio;->getFreq()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/manager/RadioManager;->setFreq(I)I

    goto :goto_0

    .line 229
    :cond_1
    iget p0, p0, Lcom/yftech/car/widget/media/radio/list/adapter/FixedFavorAdapter;->mItemClickFunction:I

    and-int/lit8 p0, p0, 0x1

    if-lez p0, :cond_2

    .line 230
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager;->getInstance()Lcom/yftech/car/widget/media/manager/RadioManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/manager/RadioManager;->getFreq()Lcom/yftech/car/media/radio/entity/DataOfRadio;

    move-result-object p0

    .line 231
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager;->getInstance()Lcom/yftech/car/widget/media/manager/RadioManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yftech/car/media/radio/entity/DataOfRadio;->getType()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-virtual {v0, v1, p1, p0}, Lcom/yftech/car/widget/media/manager/RadioManager;->updateFavor(IILcom/yftech/car/media/radio/entity/DataOfRadio;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/yftech/car/widget/media/radio/list/holder/FixedFavorHolder;
    .locals 6
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 140
    new-instance p2, Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 142
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/yftech/car/widget/media/radio/list/adapter/FixedFavorAdapter;->mItemWidth:I

    iget v2, p0, Lcom/yftech/car/widget/media/radio/list/adapter/FixedFavorAdapter;->mItemHeight:I

    iget v3, p0, Lcom/yftech/car/widget/media/radio/list/adapter/FixedFavorAdapter;->mItemGravity:I

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 144
    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 145
    iget v1, p0, Lcom/yftech/car/widget/media/radio/list/adapter/FixedFavorAdapter;->mItemMarginStart:I

    if-lez v1, :cond_0

    iget v1, p0, Lcom/yftech/car/widget/media/radio/list/adapter/FixedFavorAdapter;->mItemMarginEnd:I

    if-lez v1, :cond_0

    .line 146
    iget v1, p0, Lcom/yftech/car/widget/media/radio/list/adapter/FixedFavorAdapter;->mItemMarginStart:I

    iget v2, p0, Lcom/yftech/car/widget/media/radio/list/adapter/FixedFavorAdapter;->mItemMargin:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/yftech/car/widget/media/radio/list/adapter/FixedFavorAdapter;->mItemMarginTop:I

    iget v3, p0, Lcom/yftech/car/widget/media/radio/list/adapter/FixedFavorAdapter;->mItemMargin:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/yftech/car/widget/media/radio/list/adapter/FixedFavorAdapter;->mItemMarginEnd:I

    iget v4, p0, Lcom/yftech/car/widget/media/radio/list/adapter/FixedFavorAdapter;->mItemMargin:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/yftech/car/widget/media/radio/list/adapter/FixedFavorAdapter;->mItemMarginBottom:I

    iget v5, p0, Lcom/yftech/car/widget/media/radio/list/adapter/FixedFavorAdapter;->mItemMargin:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    .line 148
    :cond_0
    iget v1, p0, Lcom/yftech/car/widget/media/radio/list/adapter/FixedFavorAdapter;->mItemMarginStart:I

    if-lez v1, :cond_1

    .line 149
    iget v1, p0, Lcom/yftech/car/widget/media/radio/list/adapter/FixedFavorAdapter;->mItemMarginStart:I

    iget v2, p0, Lcom/yftech/car/widget/media/radio/list/adapter/FixedFavorAdapter;->mItemMargin:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/yftech/car/widget/media/radio/list/adapter/FixedFavorAdapter;->mItemMarginTop:I

    iget v3, p0, Lcom/yftech/car/widget/media/radio/list/adapter/FixedFavorAdapter;->mItemMargin:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/yftech/car/widget/media/radio/list/adapter/FixedFavorAdapter;->mItemMarginRight:I

    iget v4, p0, Lcom/yftech/car/widget/media/radio/list/adapter/FixedFavorAdapter;->mItemMargin:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/yftech/car/widget/media/radio/list/adapter/FixedFavorAdapter;->mItemMarginBottom:I

    iget v5, p0, Lcom/yftech/car/widget/media/radio/list/adapter/FixedFavorAdapter;->mItemMargin:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    .line 150
    :cond_1
    iget v1, p0, Lcom/yftech/car/widget/media/radio/list/adapter/FixedFavorAdapter;->mItemMarginEnd:I

    if-lez v1, :cond_2

    .line 151
    iget v1, p0, Lcom/yftech/car/widget/media/radio/list/adapter/FixedFavorAdapter;->mItemMarginLeft:I

    iget v2, p0, Lcom/yftech/car/widget/media/radio/list/adapter/FixedFavorAdapter;->mItemMargin:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/yftech/car/widget/media/radio/list/adapter/FixedFavorAdapter;->mItemMarginTop:I

    iget v3, p0, Lcom/yftech/car/widget/media/radio/list/adapter/FixedFavorAdapter;->mItemMargin:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/yftech/car/widget/media/radio/list/adapter/FixedFavorAdapter;->mItemMarginEnd:I

    iget v4, p0, Lcom/yftech/car/widget/media/radio/list/adapter/FixedFavorAdapter;->mItemMargin:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/yftech/car/widget/media/radio/list/adapter/FixedFavorAdapter;->mItemMarginBottom:I

    iget v5, p0, Lcom/yftech/car/widget/media/radio/list/adapter/FixedFavorAdapter;->mItemMargin:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    .line 153
    :cond_2
    iget v1, p0, Lcom/yftech/car/widget/media/radio/list/adapter/FixedFavorAdapter;->mItemMarginLeft:I

    iget v2, p0, Lcom/yftech/car/widget/media/radio/list/adapter/FixedFavorAdapter;->mItemMargin:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/yftech/car/widget/media/radio/list/adapter/FixedFavorAdapter;->mItemMarginTop:I

    iget v3, p0, Lcom/yftech/car/widget/media/radio/list/adapter/FixedFavorAdapter;->mItemMargin:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/yftech/car/widget/media/radio/list/adapter/FixedFavorAdapter;->mItemMarginRight:I

    iget v4, p0, Lcom/yftech/car/widget/media/radio/list/adapter/FixedFavorAdapter;->mItemMargin:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/yftech/car/widget/media/radio/list/adapter/FixedFavorAdapter;->mItemMarginBottom:I

    iget v5, p0, Lcom/yftech/car/widget/media/radio/list/adapter/FixedFavorAdapter;->mItemMargin:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 157
    :goto_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/radio/list/adapter/FixedFavorAdapter;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 159
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 161
    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 163
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    .line 164
    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 165
    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 166
    iget v1, p0, Lcom/yftech/car/widget/media/radio/list/adapter/FixedFavorAdapter;->mItemGravity:I

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 168
    iget p1, p0, Lcom/yftech/car/widget/media/radio/list/adapter/FixedFavorAdapter;->mItemTextColor:I

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 169
    iget p1, p0, Lcom/yftech/car/widget/media/radio/list/adapter/FixedFavorAdapter;->mItemTextSize:I

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 171
    invoke-virtual {p2, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    invoke-virtual {p2, p0}, Landroid/widget/FrameLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 173
    new-instance p0, Lcom/yftech/car/widget/media/radio/list/holder/FixedFavorHolder;

    invoke-direct {p0, p2}, Lcom/yftech/car/widget/media/radio/list/holder/FixedFavorHolder;-><init>(Landroid/widget/FrameLayout;)V

    return-object p0
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
    invoke-virtual {p0, p1, p2}, Lcom/yftech/car/widget/media/radio/list/adapter/FixedFavorAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/yftech/car/widget/media/radio/list/holder/FixedFavorHolder;

    move-result-object p0

    return-object p0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 4

    .line 245
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/car/media/radio/entity/DataOfRadio;

    .line 247
    invoke-virtual {v0}, Lcom/yftech/car/media/radio/entity/DataOfRadio;->getFreq()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    const-string v0, "FixedFavorAdapter"

    .line 248
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onLongClick: mItemClickFunction=="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/yftech/car/widget/media/radio/list/adapter/FixedFavorAdapter;->mItemClickFunction:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iget p0, p0, Lcom/yftech/car/widget/media/radio/list/adapter/FixedFavorAdapter;->mItemLongClickFunction:I

    and-int/2addr p0, v2

    if-lez p0, :cond_2

    .line 250
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager;->getInstance()Lcom/yftech/car/widget/media/manager/RadioManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/manager/RadioManager;->getFreq()Lcom/yftech/car/media/radio/entity/DataOfRadio;

    move-result-object p0

    .line 251
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager;->getInstance()Lcom/yftech/car/widget/media/manager/RadioManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yftech/car/media/radio/entity/DataOfRadio;->getType()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-virtual {v0, v1, p1, p0}, Lcom/yftech/car/widget/media/manager/RadioManager;->updateFavor(IILcom/yftech/car/media/radio/entity/DataOfRadio;)Z

    goto :goto_0

    .line 254
    :cond_0
    iget v1, p0, Lcom/yftech/car/widget/media/radio/list/adapter/FixedFavorAdapter;->mItemLongClickFunction:I

    and-int/2addr v1, v2

    if-lez v1, :cond_1

    .line 255
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager;->getInstance()Lcom/yftech/car/widget/media/manager/RadioManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/manager/RadioManager;->getFreq()Lcom/yftech/car/media/radio/entity/DataOfRadio;

    move-result-object p0

    .line 256
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager;->getInstance()Lcom/yftech/car/widget/media/manager/RadioManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yftech/car/media/radio/entity/DataOfRadio;->getType()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-virtual {v0, v1, p1, p0}, Lcom/yftech/car/widget/media/manager/RadioManager;->updateFavor(IILcom/yftech/car/media/radio/entity/DataOfRadio;)Z

    goto :goto_0

    .line 257
    :cond_1
    iget p0, p0, Lcom/yftech/car/widget/media/radio/list/adapter/FixedFavorAdapter;->mItemLongClickFunction:I

    and-int/lit8 p0, p0, 0x2

    if-lez p0, :cond_2

    .line 258
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager;->getInstance()Lcom/yftech/car/widget/media/manager/RadioManager;

    move-result-object p0

    invoke-virtual {v0}, Lcom/yftech/car/media/radio/entity/DataOfRadio;->getFreq()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/manager/RadioManager;->setFreq(I)I

    :cond_2
    :goto_0
    return v2
.end method
