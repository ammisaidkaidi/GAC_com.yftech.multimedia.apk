.class public Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;
.super Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;
.source "DynamicAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/yftech/car/widget/media/radio/list/holder/DynamicHolder;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/view/View$OnLongClickListener;"
    }
.end annotation


# static fields
.field private static final ADD_FAVOR:I = 0x1

.field public static final BAND:I = 0x2

.field private static final CLICK_ADD_FAVOR:I = 0x1

.field private static final CLICK_REMOVE_FAVOR:I = 0x4

.field public static final FAVOR_STATUS:I = 0x20

.field public static final FREQ:I = 0x1

.field public static final HERTZ:I = 0x4

.field private static final LONG_CLICK_ADD_FAVOR:I = 0x2

.field private static final LONG_CLICK_REMOVE_FAVOR:I = 0x8

.field public static final NUMBER:I = 0x8

.field public static final PLAY_STATUS:I = 0x10

.field private static final REMOVE_FAVOR:I = 0x4

.field private static final SET_FREQ:I = 0x2

.field private static final TAG:Ljava/lang/String; = "DynamicAdapter"


# instance fields
.field private final mDrawable:Landroid/graphics/drawable/Drawable;

.field private final mItemBandTextColor:Landroid/content/res/ColorStateList;

.field private final mItemBandTextSize:I

.field private final mItemClickFunction:I

.field private final mItemFavorClickFunction:I

.field public final mItemFavorDrawable:Landroid/graphics/drawable/Drawable;

.field public final mItemFavorDrawableCollected:Landroid/graphics/drawable/Drawable;

.field private final mItemFavorGravity:I

.field private final mItemFavorHeight:I

.field private final mItemFavorMargin:I

.field private final mItemFavorMarginBottom:I

.field private final mItemFavorMarginEnd:I

.field private final mItemFavorMarginLeft:I

.field private final mItemFavorMarginRight:I

.field private final mItemFavorMarginStart:I

.field private final mItemFavorMarginTop:I

.field private final mItemFavorStatus:Z

.field public final mItemFavorTextCollected:Ljava/lang/String;

.field private final mItemFavorTextColor:Landroid/content/res/ColorStateList;

.field public final mItemFavorTextNo:Ljava/lang/String;

.field private final mItemFavorTextSize:I

.field private final mItemFavorWidth:I

.field private final mItemFreqTextColor:Landroid/content/res/ColorStateList;

.field private final mItemFreqTextSize:I

.field private final mItemGravity:I

.field private mItemHeight:I

.field public mItemHertzAmText:Ljava/lang/String;

.field public mItemHertzFm1Text:Ljava/lang/String;

.field public mItemHertzFmText:Ljava/lang/String;

.field private final mItemHertzTextColor:Landroid/content/res/ColorStateList;

.field private final mItemHertzTextSize:I

.field private final mItemLongClickFunction:I

.field private final mItemMargin:I

.field private final mItemMarginBottom:I

.field private final mItemMarginEnd:I

.field private final mItemMarginLeft:I

.field private final mItemMarginRight:I

.field private final mItemMarginStart:I

.field private final mItemMarginTop:I

.field private final mItemNumberTextColor:Landroid/content/res/ColorStateList;

.field private final mItemNumberTextSize:I

.field private final mItemPlayDrawable:Landroid/graphics/drawable/Drawable;

.field private final mItemPlayGravity:I

.field private final mItemPlayHeight:I

.field private final mItemPlayMargin:I

.field private final mItemPlayMarginBottom:I

.field private final mItemPlayMarginEnd:I

.field private final mItemPlayMarginLeft:I

.field private final mItemPlayMarginRight:I

.field private final mItemPlayMarginStart:I

.field private final mItemPlayMarginTop:I

.field private final mItemPlayWidth:I

.field private final mItemTextBandItemMarginBottom:I

.field private final mItemTextBandItemMarginEnd:I

.field private final mItemTextBandItemMarginStart:I

.field private final mItemTextBandItemMarginTop:I

.field private final mItemTextColor:I

.field private final mItemTextFreqItemMarginBottom:I

.field private final mItemTextFreqItemMarginEnd:I

.field private final mItemTextFreqItemMarginStart:I

.field private final mItemTextFreqItemMarginTop:I

.field private final mItemTextFunction:I

.field private final mItemTextHertzItemMarginBottom:I

.field private final mItemTextHertzItemMarginEnd:I

.field private final mItemTextHertzItemMarginStart:I

.field private final mItemTextHertzItemMarginTop:I

.field private final mItemTextNumberItemMarginBottom:I

.field private final mItemTextNumberItemMarginEnd:I

.field private final mItemTextNumberItemMarginStart:I

.field private final mItemTextNumberItemMarginTop:I

.field private final mItemTextSize:I

.field private mItemWidth:I

.field private final mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yftech/car/media/radio/entity/DataOfRadio;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnFavorClickListener:Landroid/view/View$OnClickListener;

.field private final mOnFavorLongClickListener:Landroid/view/View$OnLongClickListener;


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yftech/car/media/radio/entity/DataOfRadio;",
            ">;",
            "Landroid/content/Context;",
            "Landroid/util/AttributeSet;",
            ")V"
        }
    .end annotation

    .line 182
    invoke-direct {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 705
    new-instance v0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter$1;

    invoke-direct {v0, p0}, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter$1;-><init>(Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;)V

    iput-object v0, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mOnFavorClickListener:Landroid/view/View$OnClickListener;

    .line 725
    new-instance v0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter$2;

    invoke-direct {v0, p0}, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter$2;-><init>(Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;)V

    iput-object v0, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mOnFavorLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 183
    iput-object p1, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mList:Ljava/util/List;

    .line 185
    sget-object p1, Lcom/yftech/car/widget/media/R$styleable;->RadioDynamicList:[I

    invoke-virtual {p2, p3, p1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 187
    sget v0, Lcom/yftech/car/widget/media/R$styleable;->RadioDynamicList_item_favor_width:I

    const/4 v1, -0x2

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v0

    iput v0, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemFavorWidth:I

    .line 189
    sget v0, Lcom/yftech/car/widget/media/R$styleable;->RadioDynamicList_item_favor_height:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v0

    iput v0, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemFavorHeight:I

    .line 191
    sget v0, Lcom/yftech/car/widget/media/R$styleable;->RadioDynamicList_item_favor_status:I

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemFavorStatus:Z

    .line 193
    sget v0, Lcom/yftech/car/widget/media/R$styleable;->RadioDynamicList_item_favor_drawable:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemFavorDrawable:Landroid/graphics/drawable/Drawable;

    .line 195
    sget v0, Lcom/yftech/car/widget/media/R$styleable;->RadioDynamicList_item_favor_drawable_collected:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemFavorDrawableCollected:Landroid/graphics/drawable/Drawable;

    .line 197
    sget v0, Lcom/yftech/car/widget/media/R$styleable;->RadioDynamicList_item_favor_text_no:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemFavorTextNo:Ljava/lang/String;

    .line 199
    sget v0, Lcom/yftech/car/widget/media/R$styleable;->RadioDynamicList_item_favor_text_collected:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemFavorTextCollected:Ljava/lang/String;

    .line 201
    sget v0, Lcom/yftech/car/widget/media/R$styleable;->RadioDynamicList_item_favor_text_color:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemFavorTextColor:Landroid/content/res/ColorStateList;

    .line 203
    sget v0, Lcom/yftech/car/widget/media/R$styleable;->RadioDynamicList_item_favor_text_size:I

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemFavorTextSize:I

    .line 205
    sget v0, Lcom/yftech/car/widget/media/R$styleable;->RadioDynamicList_item_favor_click_function:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemFavorClickFunction:I

    .line 207
    sget v0, Lcom/yftech/car/widget/media/R$styleable;->RadioDynamicList_item_favor_gravity:I

    const/16 v4, 0x11

    invoke-virtual {p1, v0, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemFavorGravity:I

    .line 209
    sget v0, Lcom/yftech/car/widget/media/R$styleable;->RadioDynamicList_item_favor_margin:I

    const/4 v5, 0x0

    invoke-virtual {p1, v0, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemFavorMargin:I

    .line 211
    sget v0, Lcom/yftech/car/widget/media/R$styleable;->RadioDynamicList_item_favor_marginLeft:I

    invoke-virtual {p1, v0, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemFavorMarginLeft:I

    .line 213
    sget v0, Lcom/yftech/car/widget/media/R$styleable;->RadioDynamicList_item_favor_marginTop:I

    invoke-virtual {p1, v0, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemFavorMarginTop:I

    .line 215
    sget v0, Lcom/yftech/car/widget/media/R$styleable;->RadioDynamicList_item_favor_marginRight:I

    invoke-virtual {p1, v0, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemFavorMarginRight:I

    .line 217
    sget v0, Lcom/yftech/car/widget/media/R$styleable;->RadioDynamicList_item_favor_marginBottom:I

    invoke-virtual {p1, v0, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemFavorMarginBottom:I

    .line 219
    sget v0, Lcom/yftech/car/widget/media/R$styleable;->RadioDynamicList_item_favor_marginStart:I

    invoke-virtual {p1, v0, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemFavorMarginStart:I

    .line 221
    sget v0, Lcom/yftech/car/widget/media/R$styleable;->RadioDynamicList_item_favor_marginEnd:I

    invoke-virtual {p1, v0, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemFavorMarginEnd:I

    .line 224
    sget-object p1, Lcom/yftech/car/widget/media/R$styleable;->radio_list:[I

    invoke-virtual {p2, p3, p1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 226
    sget p3, Lcom/yftech/car/widget/media/R$styleable;->radio_list_item_text_function:I

    const/4 v0, 0x1

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemTextFunction:I

    .line 228
    sget p3, Lcom/yftech/car/widget/media/R$styleable;->radio_list_item_band_text_color:I

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    iput-object p3, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemBandTextColor:Landroid/content/res/ColorStateList;

    .line 230
    sget p3, Lcom/yftech/car/widget/media/R$styleable;->radio_list_item_band_text_size:I

    invoke-virtual {p1, p3, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemBandTextSize:I

    .line 232
    sget p3, Lcom/yftech/car/widget/media/R$styleable;->radio_list_item_freq_text_color:I

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    iput-object p3, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemFreqTextColor:Landroid/content/res/ColorStateList;

    .line 234
    sget p3, Lcom/yftech/car/widget/media/R$styleable;->radio_list_item_freq_text_size:I

    invoke-virtual {p1, p3, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemFreqTextSize:I

    .line 236
    sget p3, Lcom/yftech/car/widget/media/R$styleable;->radio_list_item_hertz_text_color:I

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    iput-object p3, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemHertzTextColor:Landroid/content/res/ColorStateList;

    .line 239
    sget p3, Lcom/yftech/car/widget/media/R$styleable;->radio_list_item_hertz_text_size:I

    invoke-virtual {p1, p3, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemHertzTextSize:I

    .line 241
    sget p3, Lcom/yftech/car/widget/media/R$styleable;->radio_list_item_number_text_color:I

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    iput-object p3, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemNumberTextColor:Landroid/content/res/ColorStateList;

    .line 243
    sget p3, Lcom/yftech/car/widget/media/R$styleable;->radio_list_item_number_text_size:I

    invoke-virtual {p1, p3, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemNumberTextSize:I

    .line 246
    sget p3, Lcom/yftech/car/widget/media/R$styleable;->radio_list_item_text_freq_item_marginStart:I

    invoke-virtual {p1, p3, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemTextFreqItemMarginStart:I

    .line 248
    sget p3, Lcom/yftech/car/widget/media/R$styleable;->radio_list_item_text_freq_item_marginTop:I

    invoke-virtual {p1, p3, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemTextFreqItemMarginTop:I

    .line 250
    sget p3, Lcom/yftech/car/widget/media/R$styleable;->radio_list_item_text_freq_item_marginEnd:I

    invoke-virtual {p1, p3, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemTextFreqItemMarginEnd:I

    .line 252
    sget p3, Lcom/yftech/car/widget/media/R$styleable;->radio_list_item_text_freq_item_marginBottom:I

    invoke-virtual {p1, p3, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemTextFreqItemMarginBottom:I

    .line 255
    sget p3, Lcom/yftech/car/widget/media/R$styleable;->radio_list_item_text_band_item_marginStart:I

    invoke-virtual {p1, p3, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemTextBandItemMarginStart:I

    .line 257
    sget p3, Lcom/yftech/car/widget/media/R$styleable;->radio_list_item_text_band_item_marginTop:I

    invoke-virtual {p1, p3, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemTextBandItemMarginTop:I

    .line 259
    sget p3, Lcom/yftech/car/widget/media/R$styleable;->radio_list_item_text_band_item_marginEnd:I

    invoke-virtual {p1, p3, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemTextBandItemMarginEnd:I

    .line 261
    sget p3, Lcom/yftech/car/widget/media/R$styleable;->radio_list_item_text_band_item_marginBottom:I

    invoke-virtual {p1, p3, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemTextBandItemMarginBottom:I

    .line 264
    sget p3, Lcom/yftech/car/widget/media/R$styleable;->radio_list_item_text_hertz_item_marginStart:I

    invoke-virtual {p1, p3, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemTextHertzItemMarginStart:I

    .line 266
    sget p3, Lcom/yftech/car/widget/media/R$styleable;->radio_list_item_text_hertz_item_marginTop:I

    invoke-virtual {p1, p3, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemTextHertzItemMarginTop:I

    .line 268
    sget p3, Lcom/yftech/car/widget/media/R$styleable;->radio_list_item_text_hertz_item_marginEnd:I

    invoke-virtual {p1, p3, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemTextHertzItemMarginEnd:I

    .line 270
    sget p3, Lcom/yftech/car/widget/media/R$styleable;->radio_list_item_text_hertz_item_marginBottom:I

    invoke-virtual {p1, p3, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemTextHertzItemMarginBottom:I

    .line 273
    sget p3, Lcom/yftech/car/widget/media/R$styleable;->radio_list_item_text_number_item_marginStart:I

    invoke-virtual {p1, p3, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemTextNumberItemMarginStart:I

    .line 275
    sget p3, Lcom/yftech/car/widget/media/R$styleable;->radio_list_item_text_number_item_marginTop:I

    invoke-virtual {p1, p3, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemTextNumberItemMarginTop:I

    .line 277
    sget p3, Lcom/yftech/car/widget/media/R$styleable;->radio_list_item_text_number_item_marginEnd:I

    invoke-virtual {p1, p3, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemTextNumberItemMarginEnd:I

    .line 279
    sget p3, Lcom/yftech/car/widget/media/R$styleable;->radio_list_item_text_number_item_marginBottom:I

    invoke-virtual {p1, p3, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemTextNumberItemMarginBottom:I

    .line 281
    sget p3, Lcom/yftech/car/widget/media/R$styleable;->radio_list_item_hertz_fm_text:I

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemHertzFmText:Ljava/lang/String;

    .line 282
    iget-object p3, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemHertzFmText:Ljava/lang/String;

    if-nez p3, :cond_0

    .line 283
    sget p3, Lcom/yftech/car/widget/media/R$string;->hertz_fm:I

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemHertzFmText:Ljava/lang/String;

    .line 286
    :cond_0
    sget p3, Lcom/yftech/car/widget/media/R$styleable;->radio_list_item_hertz_fm1_text:I

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemHertzFm1Text:Ljava/lang/String;

    .line 287
    iget-object p3, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemHertzFm1Text:Ljava/lang/String;

    if-nez p3, :cond_1

    .line 288
    sget p3, Lcom/yftech/car/widget/media/R$string;->hertz_fm1:I

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemHertzFm1Text:Ljava/lang/String;

    .line 291
    :cond_1
    sget p3, Lcom/yftech/car/widget/media/R$styleable;->radio_list_item_hertz_am_text:I

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemHertzAmText:Ljava/lang/String;

    .line 292
    iget-object p3, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemHertzAmText:Ljava/lang/String;

    if-nez p3, :cond_2

    .line 293
    sget p3, Lcom/yftech/car/widget/media/R$string;->hertz_am:I

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemHertzAmText:Ljava/lang/String;

    .line 297
    :cond_2
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->radio_list_item_width:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result p2

    iput p2, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemWidth:I

    .line 299
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->radio_list_item_height:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result p2

    iput p2, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemHeight:I

    .line 302
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->radio_list_item_gravity:I

    invoke-virtual {p1, p2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemGravity:I

    .line 304
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->radio_list_item_text_color:I

    const/4 p3, -0x1

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemTextColor:I

    .line 306
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->radio_list_item_text_size:I

    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemTextSize:I

    .line 308
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->radio_list_item_margin:I

    invoke-virtual {p1, p2, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemMargin:I

    .line 310
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->radio_list_item_marginLeft:I

    invoke-virtual {p1, p2, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemMarginLeft:I

    .line 312
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->radio_list_item_marginTop:I

    invoke-virtual {p1, p2, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemMarginTop:I

    .line 314
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->radio_list_item_marginRight:I

    invoke-virtual {p1, p2, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemMarginRight:I

    .line 316
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->radio_list_item_marginBottom:I

    invoke-virtual {p1, p2, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemMarginBottom:I

    .line 318
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->radio_list_item_marginStart:I

    invoke-virtual {p1, p2, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemMarginStart:I

    .line 320
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->radio_list_item_marginEnd:I

    invoke-virtual {p1, p2, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemMarginEnd:I

    .line 322
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->radio_list_item_click_function:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemClickFunction:I

    .line 324
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->radio_list_item_long_click_function:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemLongClickFunction:I

    .line 326
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->radio_list_item_background:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 328
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->radio_list_item_play_drawable:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemPlayDrawable:Landroid/graphics/drawable/Drawable;

    .line 330
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->radio_list_item_play_width:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result p2

    iput p2, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemPlayWidth:I

    .line 332
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->radio_list_item_play_height:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result p2

    iput p2, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemPlayHeight:I

    .line 334
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->radio_list_item_play_margin:I

    invoke-virtual {p1, p2, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemPlayMargin:I

    .line 336
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->radio_list_item_play_marginLeft:I

    invoke-virtual {p1, p2, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemPlayMarginLeft:I

    .line 338
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->radio_list_item_play_marginTop:I

    invoke-virtual {p1, p2, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemPlayMarginTop:I

    .line 340
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->radio_list_item_play_marginRight:I

    invoke-virtual {p1, p2, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemPlayMarginRight:I

    .line 342
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->radio_list_item_play_marginBottom:I

    invoke-virtual {p1, p2, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemPlayMarginBottom:I

    .line 344
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->radio_list_item_play_marginStart:I

    invoke-virtual {p1, p2, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemPlayMarginStart:I

    .line 346
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->radio_list_item_play_marginEnd:I

    invoke-virtual {p1, p2, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemPlayMarginEnd:I

    .line 348
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->radio_list_item_play_gravity:I

    invoke-virtual {p1, p2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    iput p1, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemPlayGravity:I

    return-void
.end method

.method static synthetic access$000(Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;)I
    .locals 0

    .line 50
    iget p0, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemFavorClickFunction:I

    return p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    .line 643
    iget-object p0, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public onBindViewHolder(Lcom/yftech/car/widget/media/radio/list/holder/DynamicHolder;I)V
    .locals 5
    .param p1    # Lcom/yftech/car/widget/media/radio/list/holder/DynamicHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 626
    iget-object v0, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/car/media/radio/entity/DataOfRadio;

    .line 627
    invoke-virtual {p1, v0, p2}, Lcom/yftech/car/widget/media/radio/list/holder/DynamicHolder;->setRadio(Lcom/yftech/car/media/radio/entity/DataOfRadio;I)V

    .line 628
    iget p2, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemTextFunction:I

    and-int/lit8 p2, p2, 0x10

    if-lez p2, :cond_2

    iget-object p0, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemPlayDrawable:Landroid/graphics/drawable/Drawable;

    instance-of p0, p0, Landroid/graphics/drawable/AnimationDrawable;

    if-nez p0, :cond_2

    .line 630
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager;->getInstance()Lcom/yftech/car/widget/media/manager/RadioManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/manager/RadioManager;->getFreq()Lcom/yftech/car/media/radio/entity/DataOfRadio;

    move-result-object p0

    .line 631
    iget-object p2, p1, Lcom/yftech/car/widget/media/radio/list/holder/DynamicHolder;->itemView:Landroid/view/View;

    iget v1, p0, Lcom/yftech/car/media/radio/entity/DataOfRadio;->Freq:I

    iget v2, v0, Lcom/yftech/car/media/radio/entity/DataOfRadio;->Freq:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {p2, v1}, Landroid/view/View;->setActivated(Z)V

    .line 632
    iget-object p1, p1, Lcom/yftech/car/widget/media/radio/list/holder/DynamicHolder;->itemView:Landroid/view/View;

    iget p0, p0, Lcom/yftech/car/media/radio/entity/DataOfRadio;->Freq:I

    iget p2, v0, Lcom/yftech/car/media/radio/entity/DataOfRadio;->Freq:I

    if-ne p0, p2, :cond_1

    move v3, v4

    :cond_1
    invoke-virtual {p1, v3}, Landroid/view/View;->setSelected(Z)V

    :cond_2
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 50
    check-cast p1, Lcom/yftech/car/widget/media/radio/list/holder/DynamicHolder;

    invoke-virtual {p0, p1, p2}, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->onBindViewHolder(Lcom/yftech/car/widget/media/radio/list/holder/DynamicHolder;I)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 653
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/car/media/radio/entity/DataOfRadio;

    .line 654
    invoke-virtual {v0}, Lcom/yftech/car/media/radio/entity/DataOfRadio;->getFreq()I

    move-result v1

    if-nez v1, :cond_1

    .line 655
    iget v1, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemClickFunction:I

    and-int/lit8 v1, v1, 0x1

    if-lez v1, :cond_0

    .line 656
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager;->getInstance()Lcom/yftech/car/widget/media/manager/RadioManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/manager/RadioManager;->getFreq()Lcom/yftech/car/media/radio/entity/DataOfRadio;

    move-result-object p0

    .line 657
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager;->getInstance()Lcom/yftech/car/widget/media/manager/RadioManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yftech/car/media/radio/entity/DataOfRadio;->getType()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-virtual {v0, v1, p1, p0}, Lcom/yftech/car/widget/media/manager/RadioManager;->updateFavor(IILcom/yftech/car/media/radio/entity/DataOfRadio;)Z

    goto :goto_0

    .line 658
    :cond_0
    iget p0, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemClickFunction:I

    and-int/lit8 p0, p0, 0x4

    if-lez p0, :cond_4

    .line 659
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager;->getInstance()Lcom/yftech/car/widget/media/manager/RadioManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/manager/RadioManager;->removeFavor(Lcom/yftech/car/media/radio/entity/DataOfRadio;)Z

    move-result p0

    const-string p1, "DynamicAdapter"

    .line 660
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onClick: remove isFreqFavored=="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 663
    :cond_1
    iget p1, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemClickFunction:I

    and-int/lit8 p1, p1, 0x2

    if-lez p1, :cond_2

    .line 664
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager;->getInstance()Lcom/yftech/car/widget/media/manager/RadioManager;

    move-result-object p0

    invoke-virtual {v0}, Lcom/yftech/car/media/radio/entity/DataOfRadio;->getFreq()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/manager/RadioManager;->setFreq(I)I

    goto :goto_0

    .line 665
    :cond_2
    iget p1, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemClickFunction:I

    and-int/lit8 p1, p1, 0x1

    if-lez p1, :cond_3

    .line 666
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager;->getInstance()Lcom/yftech/car/widget/media/manager/RadioManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/manager/RadioManager;->addFavor(Lcom/yftech/car/media/radio/entity/DataOfRadio;)Z

    goto :goto_0

    .line 667
    :cond_3
    iget p0, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemClickFunction:I

    and-int/lit8 p0, p0, 0x4

    if-lez p0, :cond_4

    .line 668
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager;->getInstance()Lcom/yftech/car/widget/media/manager/RadioManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/manager/RadioManager;->removeFavor(Lcom/yftech/car/media/radio/entity/DataOfRadio;)Z

    move-result p0

    const-string p1, "DynamicAdapter"

    .line 669
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

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/yftech/car/widget/media/radio/list/holder/DynamicHolder;
    .locals 12
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 377
    new-instance p2, Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 379
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemWidth:I

    iget v2, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemHeight:I

    iget v3, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemGravity:I

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 381
    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 382
    iget v1, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemMarginStart:I

    if-lez v1, :cond_0

    iget v1, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemMarginEnd:I

    if-lez v1, :cond_0

    .line 383
    iget v1, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemMarginStart:I

    iget v2, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemMargin:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemMarginTop:I

    iget v3, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemMargin:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemMarginEnd:I

    iget v4, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemMargin:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemMarginBottom:I

    iget v5, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemMargin:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    .line 385
    :cond_0
    iget v1, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemMarginStart:I

    if-lez v1, :cond_1

    .line 386
    iget v1, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemMarginStart:I

    iget v2, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemMargin:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemMarginTop:I

    iget v3, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemMargin:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemMarginRight:I

    iget v4, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemMargin:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemMarginBottom:I

    iget v5, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemMargin:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    .line 387
    :cond_1
    iget v1, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemMarginEnd:I

    if-lez v1, :cond_2

    .line 388
    iget v1, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemMarginLeft:I

    iget v2, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemMargin:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemMarginTop:I

    iget v3, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemMargin:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemMarginEnd:I

    iget v4, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemMargin:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemMarginBottom:I

    iget v5, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemMargin:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    .line 390
    :cond_2
    iget v1, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemMarginLeft:I

    iget v2, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemMargin:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemMarginTop:I

    iget v3, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemMargin:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemMarginRight:I

    iget v4, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemMargin:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemMarginBottom:I

    iget v5, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemMargin:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 394
    :goto_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 397
    iget v0, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemTextFunction:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-lez v0, :cond_3

    move v0, v1

    goto :goto_1

    :cond_3
    move v0, v2

    .line 401
    :goto_1
    iget v3, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemTextFunction:I

    const/4 v4, 0x2

    and-int/2addr v3, v4

    if-lez v3, :cond_4

    add-int/lit8 v0, v0, 0x1

    .line 405
    :cond_4
    iget v3, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemTextFunction:I

    const/4 v5, 0x4

    and-int/2addr v3, v5

    if-lez v3, :cond_5

    add-int/lit8 v0, v0, 0x1

    .line 408
    :cond_5
    iget v3, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemTextFunction:I

    const/16 v6, 0x8

    and-int/2addr v3, v6

    if-lez v3, :cond_6

    add-int/lit8 v0, v0, 0x1

    :cond_6
    const/4 v3, 0x0

    const/4 v7, -0x2

    if-le v0, v1, :cond_a

    .line 413
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v0, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 414
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 416
    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 418
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 419
    iput v7, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 420
    iput v7, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 421
    iget v8, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemGravity:I

    iput v8, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 425
    iget v2, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemTextFunction:I

    and-int/2addr v2, v6

    if-lez v2, :cond_7

    .line 426
    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v2, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 427
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setId(I)V

    .line 428
    iget-object v8, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemNumberTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 429
    iget v8, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemNumberTextSize:I

    int-to-float v8, v8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 430
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 431
    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 432
    iput v7, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 433
    iput v7, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 434
    iget v8, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemTextNumberItemMarginStart:I

    iget v9, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemTextNumberItemMarginTop:I

    iget v10, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemTextNumberItemMarginEnd:I

    iget v11, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemTextNumberItemMarginBottom:I

    invoke-virtual {v2, v8, v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 437
    :cond_7
    iget v2, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemTextFunction:I

    and-int/2addr v2, v4

    if-lez v2, :cond_8

    .line 438
    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v2, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 439
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setId(I)V

    .line 440
    iget-object v8, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemBandTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 441
    iget v8, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemBandTextSize:I

    int-to-float v8, v8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 442
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 443
    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 444
    iput v7, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 445
    iput v7, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 446
    iget v8, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemTextBandItemMarginStart:I

    iget v9, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemTextBandItemMarginTop:I

    iget v10, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemTextBandItemMarginEnd:I

    iget v11, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemTextBandItemMarginBottom:I

    invoke-virtual {v2, v8, v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 448
    :cond_8
    iget v2, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemTextFunction:I

    and-int/2addr v2, v1

    if-lez v2, :cond_9

    .line 449
    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v2, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 450
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setId(I)V

    .line 451
    iget-object v8, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemFreqTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 452
    iget v8, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemFreqTextSize:I

    int-to-float v8, v8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 453
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 454
    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 455
    iput v7, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 456
    iput v7, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 457
    iget v8, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemTextFreqItemMarginStart:I

    iget v9, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemTextFreqItemMarginTop:I

    iget v10, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemTextFreqItemMarginEnd:I

    iget v11, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemTextFreqItemMarginBottom:I

    invoke-virtual {v2, v8, v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 460
    :cond_9
    iget v2, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemTextFunction:I

    and-int/2addr v2, v5

    if-lez v2, :cond_e

    .line 462
    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v2, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 463
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setId(I)V

    .line 464
    iget-object v8, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemHertzTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 465
    iget v8, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemHertzTextSize:I

    int-to-float v8, v8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 466
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 467
    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 468
    iput v7, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 469
    iput v7, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 470
    iget v2, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemTextHertzItemMarginStart:I

    iget v7, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemTextHertzItemMarginTop:I

    iget v8, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemTextHertzItemMarginEnd:I

    iget v9, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemTextHertzItemMarginBottom:I

    invoke-virtual {v0, v2, v7, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_3

    .line 475
    :cond_a
    iget v0, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemTextFunction:I

    and-int/2addr v0, v1

    if-lez v0, :cond_b

    .line 476
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 477
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    .line 478
    iget-object v2, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemFreqTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 479
    iget v2, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemFreqTextSize:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_2

    :cond_b
    move-object v0, v3

    .line 482
    :goto_2
    iget v2, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemTextFunction:I

    and-int/2addr v2, v4

    if-lez v2, :cond_c

    .line 483
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 484
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setId(I)V

    .line 485
    iget-object v2, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemBandTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 486
    iget v2, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemBandTextSize:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 489
    :cond_c
    iget v2, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemTextFunction:I

    and-int/2addr v2, v5

    if-lez v2, :cond_d

    .line 490
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 491
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setId(I)V

    .line 492
    iget-object v2, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemHertzTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 493
    iget v2, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemHertzTextSize:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    :cond_d
    if-eqz v0, :cond_e

    .line 497
    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 499
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 500
    iput v7, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 501
    iput v7, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 502
    iget v2, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemGravity:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 507
    :cond_e
    :goto_3
    iget v0, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemClickFunction:I

    and-int/2addr v0, v4

    if-gtz v0, :cond_f

    iget v0, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemClickFunction:I

    and-int/2addr v0, v1

    if-gtz v0, :cond_f

    iget v0, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemClickFunction:I

    and-int/2addr v0, v5

    if-lez v0, :cond_10

    .line 508
    :cond_f
    invoke-virtual {p2, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 510
    :cond_10
    iget v0, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemLongClickFunction:I

    and-int/2addr v0, v4

    if-gtz v0, :cond_11

    iget v0, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemLongClickFunction:I

    and-int/2addr v0, v1

    if-gtz v0, :cond_11

    iget v0, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemLongClickFunction:I

    and-int/2addr v0, v5

    if-lez v0, :cond_12

    .line 511
    :cond_11
    invoke-virtual {p2, p0}, Landroid/widget/FrameLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 514
    :cond_12
    iget-boolean v0, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemFavorStatus:Z

    if-eqz v0, :cond_1f

    .line 516
    iget-object v0, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemFavorTextNo:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v2, 0x20

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemFavorTextCollected:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 518
    iget-object v0, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemFavorDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1b

    .line 519
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 520
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setId(I)V

    .line 521
    iget-object v2, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemFavorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 523
    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 525
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 526
    iget v2, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemFavorClickFunction:I

    and-int/2addr v2, v1

    if-gtz v2, :cond_13

    iget v2, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemFavorClickFunction:I

    and-int/2addr v2, v5

    if-lez v2, :cond_14

    .line 527
    :cond_13
    iget-object v2, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mOnFavorClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 529
    :cond_14
    iget v2, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemFavorClickFunction:I

    and-int/2addr v2, v4

    if-gtz v2, :cond_15

    iget v2, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemFavorClickFunction:I

    and-int/2addr v2, v6

    if-lez v2, :cond_1b

    .line 530
    :cond_15
    iget-object v2, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mOnFavorLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_4

    .line 536
    :cond_16
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 537
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setId(I)V

    .line 538
    iget-object v2, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemFavorDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_17

    .line 539
    iget-object v2, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemFavorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 542
    :cond_17
    iget v2, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemFavorTextSize:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 543
    iget-object v2, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemFavorTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 545
    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 547
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 548
    iget v2, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemFavorClickFunction:I

    and-int/2addr v2, v1

    if-gtz v2, :cond_18

    iget v2, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemFavorClickFunction:I

    and-int/2addr v2, v5

    if-lez v2, :cond_19

    .line 549
    :cond_18
    iget-object v2, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mOnFavorClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 551
    :cond_19
    iget v2, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemFavorClickFunction:I

    and-int/2addr v2, v4

    if-gtz v2, :cond_1a

    iget v2, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemFavorClickFunction:I

    and-int/2addr v2, v6

    if-lez v2, :cond_1b

    .line 552
    :cond_1a
    iget-object v2, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mOnFavorLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_1b
    :goto_4
    if-eqz v3, :cond_1f

    .line 557
    iget v0, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemFavorWidth:I

    iput v0, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 558
    iget v0, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemFavorHeight:I

    iput v0, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 559
    iget v0, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemFavorGravity:I

    iput v0, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 560
    iget v0, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemFavorMarginStart:I

    if-lez v0, :cond_1c

    iget v0, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemFavorMarginEnd:I

    if-lez v0, :cond_1c

    .line 561
    iget v0, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemFavorMarginStart:I

    iget v2, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemFavorMargin:I

    add-int/2addr v0, v2

    iget v2, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemFavorMarginTop:I

    iget v4, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemFavorMargin:I

    add-int/2addr v2, v4

    iget v4, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemFavorMarginEnd:I

    iget v5, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemFavorMargin:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemFavorMarginBottom:I

    iget v6, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemFavorMargin:I

    add-int/2addr v5, v6

    invoke-virtual {v3, v0, v2, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_5

    .line 563
    :cond_1c
    iget v0, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemFavorMarginStart:I

    if-lez v0, :cond_1d

    .line 564
    iget v0, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemFavorMarginStart:I

    iget v2, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemFavorMargin:I

    add-int/2addr v0, v2

    iget v2, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemFavorMarginTop:I

    iget v4, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemFavorMargin:I

    add-int/2addr v2, v4

    iget v4, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemFavorMarginRight:I

    iget v5, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemFavorMargin:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemFavorMarginBottom:I

    iget v6, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemFavorMargin:I

    add-int/2addr v5, v6

    invoke-virtual {v3, v0, v2, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_5

    .line 565
    :cond_1d
    iget v0, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemFavorMarginEnd:I

    if-lez v0, :cond_1e

    .line 566
    iget v0, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemFavorMarginLeft:I

    iget v2, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemFavorMargin:I

    add-int/2addr v0, v2

    iget v2, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemFavorMarginTop:I

    iget v4, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemFavorMargin:I

    add-int/2addr v2, v4

    iget v4, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemFavorMarginEnd:I

    iget v5, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemFavorMargin:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemFavorMarginBottom:I

    iget v6, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemFavorMargin:I

    add-int/2addr v5, v6

    invoke-virtual {v3, v0, v2, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_5

    .line 568
    :cond_1e
    iget v0, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemFavorMarginLeft:I

    iget v2, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemFavorMargin:I

    add-int/2addr v0, v2

    iget v2, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemFavorMarginTop:I

    iget v4, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemFavorMargin:I

    add-int/2addr v2, v4

    iget v4, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemFavorMarginRight:I

    iget v5, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemFavorMargin:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemFavorMarginBottom:I

    iget v6, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemFavorMargin:I

    add-int/2addr v5, v6

    invoke-virtual {v3, v0, v2, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 574
    :cond_1f
    :goto_5
    iget v0, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemTextFunction:I

    const/16 v2, 0x10

    and-int/2addr v0, v2

    if-lez v0, :cond_23

    iget-object v0, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemPlayDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_23

    .line 575
    new-instance v0, Lcom/yftech/car/widget/media/view/PlayAnimation;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/yftech/car/widget/media/view/PlayAnimation;-><init>(Landroid/content/Context;)V

    .line 576
    invoke-virtual {v0, v2}, Lcom/yftech/car/widget/media/view/PlayAnimation;->setId(I)V

    .line 577
    iget-object p1, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemPlayDrawable:Landroid/graphics/drawable/Drawable;

    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0, p1}, Lcom/yftech/car/widget/media/view/PlayAnimation;->setAnimationDrawable(Landroid/graphics/drawable/AnimationDrawable;)V

    .line 581
    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 582
    invoke-virtual {v0}, Lcom/yftech/car/widget/media/view/PlayAnimation;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 583
    iget v0, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemPlayWidth:I

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 584
    iget v0, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemPlayHeight:I

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 585
    iget v0, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemPlayGravity:I

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 586
    iget v0, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemPlayMarginStart:I

    if-lez v0, :cond_20

    iget v0, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemPlayMarginEnd:I

    if-lez v0, :cond_20

    .line 587
    iget v0, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemPlayMarginStart:I

    iget v2, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemPlayMargin:I

    add-int/2addr v0, v2

    iget v2, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemPlayMarginTop:I

    iget v3, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemPlayMargin:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemPlayMarginEnd:I

    iget v4, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemPlayMargin:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemPlayMarginBottom:I

    iget v5, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemPlayMargin:I

    add-int/2addr v4, v5

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_6

    .line 589
    :cond_20
    iget v0, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemPlayMarginStart:I

    if-lez v0, :cond_21

    .line 590
    iget v0, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemPlayMarginStart:I

    iget v2, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemPlayMargin:I

    add-int/2addr v0, v2

    iget v2, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemPlayMarginTop:I

    iget v3, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemPlayMargin:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemPlayMarginRight:I

    iget v4, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemPlayMargin:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemPlayMarginBottom:I

    iget v5, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemPlayMargin:I

    add-int/2addr v4, v5

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_6

    .line 591
    :cond_21
    iget v0, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemPlayMarginEnd:I

    if-lez v0, :cond_22

    .line 592
    iget v0, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemPlayMarginLeft:I

    iget v2, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemPlayMargin:I

    add-int/2addr v0, v2

    iget v2, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemPlayMarginTop:I

    iget v3, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemPlayMargin:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemPlayMarginEnd:I

    iget v4, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemPlayMargin:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemPlayMarginBottom:I

    iget v5, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemPlayMargin:I

    add-int/2addr v4, v5

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_6

    .line 594
    :cond_22
    iget v0, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemPlayMarginLeft:I

    iget v2, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemPlayMargin:I

    add-int/2addr v0, v2

    iget v2, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemPlayMarginTop:I

    iget v3, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemPlayMargin:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemPlayMarginRight:I

    iget v4, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemPlayMargin:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemPlayMarginBottom:I

    iget v5, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemPlayMargin:I

    add-int/2addr v4, v5

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 600
    :cond_23
    :goto_6
    invoke-virtual {p2, v1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 601
    new-instance p1, Lcom/yftech/car/widget/media/radio/list/holder/DynamicHolder;

    invoke-direct {p1, p0, p2}, Lcom/yftech/car/widget/media/radio/list/holder/DynamicHolder;-><init>(Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;Landroid/widget/FrameLayout;)V

    return-object p1
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 50
    invoke-virtual {p0, p1, p2}, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/yftech/car/widget/media/radio/list/holder/DynamicHolder;

    move-result-object p0

    return-object p0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 3

    .line 682
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/car/media/radio/entity/DataOfRadio;

    .line 683
    invoke-virtual {v0}, Lcom/yftech/car/media/radio/entity/DataOfRadio;->getFreq()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 684
    iget v1, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemLongClickFunction:I

    and-int/2addr v1, v2

    if-lez v1, :cond_0

    .line 685
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager;->getInstance()Lcom/yftech/car/widget/media/manager/RadioManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/manager/RadioManager;->getFreq()Lcom/yftech/car/media/radio/entity/DataOfRadio;

    move-result-object p0

    .line 686
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager;->getInstance()Lcom/yftech/car/widget/media/manager/RadioManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yftech/car/media/radio/entity/DataOfRadio;->getType()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-virtual {v0, v1, p1, p0}, Lcom/yftech/car/widget/media/manager/RadioManager;->updateFavor(IILcom/yftech/car/media/radio/entity/DataOfRadio;)Z

    goto :goto_0

    .line 687
    :cond_0
    iget p0, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemLongClickFunction:I

    and-int/lit8 p0, p0, 0x4

    if-lez p0, :cond_4

    .line 688
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager;->getInstance()Lcom/yftech/car/widget/media/manager/RadioManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/manager/RadioManager;->removeFavor(Lcom/yftech/car/media/radio/entity/DataOfRadio;)Z

    move-result p0

    const-string p1, "DynamicAdapter"

    .line 689
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onClick: remove isFreqFavored=="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 692
    :cond_1
    iget p1, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemLongClickFunction:I

    and-int/lit8 p1, p1, 0x2

    if-lez p1, :cond_2

    .line 693
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager;->getInstance()Lcom/yftech/car/widget/media/manager/RadioManager;

    move-result-object p0

    invoke-virtual {v0}, Lcom/yftech/car/media/radio/entity/DataOfRadio;->getFreq()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/manager/RadioManager;->setFreq(I)I

    goto :goto_0

    .line 694
    :cond_2
    iget p1, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemLongClickFunction:I

    and-int/2addr p1, v2

    if-lez p1, :cond_3

    .line 695
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager;->getInstance()Lcom/yftech/car/widget/media/manager/RadioManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/manager/RadioManager;->addFavor(Lcom/yftech/car/media/radio/entity/DataOfRadio;)Z

    goto :goto_0

    .line 696
    :cond_3
    iget p0, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->mItemLongClickFunction:I

    and-int/lit8 p0, p0, 0x4

    if-lez p0, :cond_4

    .line 697
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager;->getInstance()Lcom/yftech/car/widget/media/manager/RadioManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/manager/RadioManager;->removeFavor(Lcom/yftech/car/media/radio/entity/DataOfRadio;)Z

    move-result p0

    const-string p1, "DynamicAdapter"

    .line 698
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
    return v2
.end method
