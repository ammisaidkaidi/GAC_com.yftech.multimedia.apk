.class public Lcom/yftech/car/widget/media/radio/button/RadioButton;
.super Landroidx/appcompat/widget/AppCompatButton;
.source "RadioButton.java"


# static fields
.field private static final BAND_AM:I = 0xc

.field private static final BAND_FM:I = 0xd

.field private static final OPEN_FAVOR_LIST:I = 0xe

.field private static final OPEN_SEARCH_LIST:I = 0xf

.field private static final PAUSE:I = 0x1

.field private static final PLAY:I = 0x0

.field public static final PLAY_PAUSE:I = 0x6

.field private static final SCAN_ALL_BY_FREQ:I = 0x9

.field private static final SCAN_SAVE:I = 0x8

.field private static final SEEK_DOWN:I = 0x2

.field private static final SEEK_UP:I = 0x3

.field private static final STEP_DOWN:I = 0x5

.field private static final STEP_UP:I = 0x4

.field private static final STOP:I = 0x7

.field public static final SWITCH_BAND:I = 0xb

.field public static final SWITCH_FAVOR:I = 0xa

.field private static final TAG:Ljava/lang/String; = "RadioButton"


# instance fields
.field private mClickFunction:I

.field private mClickLongFunction:I

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mDrawableSelected:Landroid/graphics/drawable/Drawable;

.field private mFavorClickStopRadioScan:Z

.field private mFavorStatusAddFavorFail:Ljava/lang/String;

.field private mFavorStatusAddFavorSuccess:Ljava/lang/String;

.field private mFavorStatusAmFavorMax:I

.field private mFavorStatusClickFunction:I

.field private mFavorStatusFm1FavorMax:I

.field private mFavorStatusFmFavorMax:I

.field private mFavorStatusIncreasedMaxLimit:Ljava/lang/String;

.field private mFavorStatusMaxUpdateoldData:Z

.field private mFavorStatusRemoveFavorFail:Ljava/lang/String;

.field private mFavorStatusRemoveFavorSuccess:Ljava/lang/String;

.field private final mOnClickListener:Landroid/view/View$OnClickListener;

.field private final mOnLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mRadioScanStatusPause:Z

.field private mSelected:Ljava/lang/String;

.field private mText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 200
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 154
    iput p1, p0, Lcom/yftech/car/widget/media/radio/button/RadioButton;->mClickLongFunction:I

    const-string p1, ""

    .line 162
    iput-object p1, p0, Lcom/yftech/car/widget/media/radio/button/RadioButton;->mText:Ljava/lang/String;

    const/4 p1, 0x0

    .line 167
    iput-object p1, p0, Lcom/yftech/car/widget/media/radio/button/RadioButton;->mSelected:Ljava/lang/String;

    .line 347
    new-instance p1, Lcom/yftech/car/widget/media/radio/button/RadioButton$1;

    invoke-direct {p1, p0}, Lcom/yftech/car/widget/media/radio/button/RadioButton$1;-><init>(Lcom/yftech/car/widget/media/radio/button/RadioButton;)V

    iput-object p1, p0, Lcom/yftech/car/widget/media/radio/button/RadioButton;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 476
    new-instance p1, Lcom/yftech/car/widget/media/radio/button/RadioButton$2;

    invoke-direct {p1, p0}, Lcom/yftech/car/widget/media/radio/button/RadioButton$2;-><init>(Lcom/yftech/car/widget/media/radio/button/RadioButton;)V

    iput-object p1, p0, Lcom/yftech/car/widget/media/radio/button/RadioButton;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 220
    sget v0, Lcom/yftech/car/widget/media/R$attr;->buttonStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/yftech/car/widget/media/radio/button/RadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 244
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, -0x1

    .line 154
    iput p3, p0, Lcom/yftech/car/widget/media/radio/button/RadioButton;->mClickLongFunction:I

    const-string v0, ""

    .line 162
    iput-object v0, p0, Lcom/yftech/car/widget/media/radio/button/RadioButton;->mText:Ljava/lang/String;

    const/4 v0, 0x0

    .line 167
    iput-object v0, p0, Lcom/yftech/car/widget/media/radio/button/RadioButton;->mSelected:Ljava/lang/String;

    .line 347
    new-instance v0, Lcom/yftech/car/widget/media/radio/button/RadioButton$1;

    invoke-direct {v0, p0}, Lcom/yftech/car/widget/media/radio/button/RadioButton$1;-><init>(Lcom/yftech/car/widget/media/radio/button/RadioButton;)V

    iput-object v0, p0, Lcom/yftech/car/widget/media/radio/button/RadioButton;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 476
    new-instance v0, Lcom/yftech/car/widget/media/radio/button/RadioButton$2;

    invoke-direct {v0, p0}, Lcom/yftech/car/widget/media/radio/button/RadioButton$2;-><init>(Lcom/yftech/car/widget/media/radio/button/RadioButton;)V

    iput-object v0, p0, Lcom/yftech/car/widget/media/radio/button/RadioButton;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    if-eqz p2, :cond_3

    .line 247
    sget-object v0, Lcom/yftech/car/widget/media/R$styleable;->RadioButton:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 249
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->RadioButton_button_click_function:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/yftech/car/widget/media/radio/button/RadioButton;->mClickFunction:I

    .line 252
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->RadioButton_button_long_click_function:I

    invoke-virtual {v0, v1, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/yftech/car/widget/media/radio/button/RadioButton;->mClickLongFunction:I

    .line 254
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->RadioButton_button_activated_text:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yftech/car/widget/media/radio/button/RadioButton;->mSelected:Ljava/lang/String;

    .line 256
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->RadioButton_background_activated:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/yftech/car/widget/media/radio/button/RadioButton;->mDrawableSelected:Landroid/graphics/drawable/Drawable;

    .line 258
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->RadioButton_radio_scan_status_pause:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yftech/car/widget/media/radio/button/RadioButton;->mRadioScanStatusPause:Z

    .line 261
    sget-object v0, Lcom/yftech/car/widget/media/R$styleable;->FavorStatus:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 262
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->FavorStatus_favorStatus_fm_favor_max:I

    const/16 v0, 0xa

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/yftech/car/widget/media/radio/button/RadioButton;->mFavorStatusFmFavorMax:I

    .line 263
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->FavorStatus_favorStatus_fm1_favor_max:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/yftech/car/widget/media/radio/button/RadioButton;->mFavorStatusFm1FavorMax:I

    .line 264
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->FavorStatus_favorStatus_fm_favor_max:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/yftech/car/widget/media/radio/button/RadioButton;->mFavorStatusAmFavorMax:I

    .line 266
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->FavorStatus_favorStatus_add_favor_success:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/yftech/car/widget/media/radio/button/RadioButton;->mFavorStatusAddFavorSuccess:Ljava/lang/String;

    .line 267
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->FavorStatus_favorStatus_add_favor_fail:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/yftech/car/widget/media/radio/button/RadioButton;->mFavorStatusAddFavorFail:Ljava/lang/String;

    .line 268
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->FavorStatus_favorStatus_remove_favor_success:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/yftech/car/widget/media/radio/button/RadioButton;->mFavorStatusRemoveFavorSuccess:Ljava/lang/String;

    .line 269
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->FavorStatus_favorStatus_remove_favor_fail:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/yftech/car/widget/media/radio/button/RadioButton;->mFavorStatusRemoveFavorFail:Ljava/lang/String;

    .line 270
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->FavorStatus_favorStatus_increased_max_limit:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/yftech/car/widget/media/radio/button/RadioButton;->mFavorStatusIncreasedMaxLimit:Ljava/lang/String;

    .line 271
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->FavorStatus_favorStatus_max_updateold_data:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/yftech/car/widget/media/radio/button/RadioButton;->mFavorStatusMaxUpdateoldData:Z

    .line 273
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->FavorStatus_favor_click_stop_radio_scan:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/yftech/car/widget/media/radio/button/RadioButton;->mFavorClickStopRadioScan:Z

    .line 275
    iget p1, p0, Lcom/yftech/car/widget/media/radio/button/RadioButton;->mFavorStatusFmFavorMax:I

    if-ne p1, p3, :cond_0

    .line 276
    invoke-static {}, Lcom/yftech/car/widget/media/radio/RadioDataPlayManager;->getInstance()Lcom/yftech/car/widget/media/radio/RadioDataPlayManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/car/widget/media/radio/RadioDataPlayManager;->getFavorStatusFmFavorMax()I

    move-result p1

    iput p1, p0, Lcom/yftech/car/widget/media/radio/button/RadioButton;->mFavorStatusFmFavorMax:I

    .line 278
    :cond_0
    iget p1, p0, Lcom/yftech/car/widget/media/radio/button/RadioButton;->mFavorStatusFm1FavorMax:I

    if-ne p1, p3, :cond_1

    .line 279
    invoke-static {}, Lcom/yftech/car/widget/media/radio/RadioDataPlayManager;->getInstance()Lcom/yftech/car/widget/media/radio/RadioDataPlayManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/car/widget/media/radio/RadioDataPlayManager;->getFavorStatusFm1FavorMax()I

    move-result p1

    iput p1, p0, Lcom/yftech/car/widget/media/radio/button/RadioButton;->mFavorStatusFm1FavorMax:I

    .line 281
    :cond_1
    iget p1, p0, Lcom/yftech/car/widget/media/radio/button/RadioButton;->mFavorStatusAmFavorMax:I

    if-ne p1, p3, :cond_2

    .line 282
    invoke-static {}, Lcom/yftech/car/widget/media/radio/RadioDataPlayManager;->getInstance()Lcom/yftech/car/widget/media/radio/RadioDataPlayManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/car/widget/media/radio/RadioDataPlayManager;->getFavorStatusAmFavorMax()I

    move-result p1

    iput p1, p0, Lcom/yftech/car/widget/media/radio/button/RadioButton;->mFavorStatusAmFavorMax:I

    .line 285
    :cond_2
    iget-boolean p1, p0, Lcom/yftech/car/widget/media/radio/button/RadioButton;->mFavorStatusMaxUpdateoldData:Z

    if-nez p1, :cond_3

    .line 286
    invoke-static {}, Lcom/yftech/car/widget/media/radio/RadioDataPlayManager;->getInstance()Lcom/yftech/car/widget/media/radio/RadioDataPlayManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/car/widget/media/radio/RadioDataPlayManager;->isFavorStatusMaxUpdateoldData()Z

    move-result p1

    iput-boolean p1, p0, Lcom/yftech/car/widget/media/radio/button/RadioButton;->mFavorStatusMaxUpdateoldData:Z

    :cond_3
    return-void
.end method

.method static synthetic access$000(Lcom/yftech/car/widget/media/radio/button/RadioButton;)I
    .locals 0

    .line 57
    iget p0, p0, Lcom/yftech/car/widget/media/radio/button/RadioButton;->mClickFunction:I

    return p0
.end method

.method static synthetic access$100(Lcom/yftech/car/widget/media/radio/button/RadioButton;)Z
    .locals 0

    .line 57
    iget-boolean p0, p0, Lcom/yftech/car/widget/media/radio/button/RadioButton;->mFavorClickStopRadioScan:Z

    return p0
.end method

.method static synthetic access$200(Lcom/yftech/car/widget/media/radio/button/RadioButton;Z)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/radio/button/RadioButton;->showRemoveFavor(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/yftech/car/widget/media/radio/button/RadioButton;)Z
    .locals 0

    .line 57
    iget-boolean p0, p0, Lcom/yftech/car/widget/media/radio/button/RadioButton;->mFavorStatusMaxUpdateoldData:Z

    return p0
.end method

.method static synthetic access$400(Lcom/yftech/car/widget/media/radio/button/RadioButton;Z)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/radio/button/RadioButton;->showAddFavor(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/yftech/car/widget/media/radio/button/RadioButton;)I
    .locals 0

    .line 57
    iget p0, p0, Lcom/yftech/car/widget/media/radio/button/RadioButton;->mClickLongFunction:I

    return p0
.end method

.method private showAddFavor(Z)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 429
    iget-object p1, p0, Lcom/yftech/car/widget/media/radio/button/RadioButton;->mFavorStatusAddFavorSuccess:Ljava/lang/String;

    if-nez p1, :cond_0

    .line 430
    invoke-static {}, Lcom/yftech/car/widget/media/radio/RadioDataPlayManager;->getInstance()Lcom/yftech/car/widget/media/radio/RadioDataPlayManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/car/widget/media/radio/RadioDataPlayManager;->getFavorStatusAddFavorSuccess()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/car/widget/media/radio/button/RadioButton;->mFavorStatusAddFavorSuccess:Ljava/lang/String;

    .line 433
    :cond_0
    iget-object p1, p0, Lcom/yftech/car/widget/media/radio/button/RadioButton;->mFavorStatusAddFavorSuccess:Ljava/lang/String;

    if-eqz p1, :cond_5

    .line 434
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/radio/button/RadioButton;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p0, p0, Lcom/yftech/car/widget/media/radio/button/RadioButton;->mFavorStatusAddFavorSuccess:Ljava/lang/String;

    invoke-static {p1, p0, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 437
    :cond_1
    iget-object p1, p0, Lcom/yftech/car/widget/media/radio/button/RadioButton;->mFavorStatusIncreasedMaxLimit:Ljava/lang/String;

    if-nez p1, :cond_2

    .line 438
    invoke-static {}, Lcom/yftech/car/widget/media/radio/RadioDataPlayManager;->getInstance()Lcom/yftech/car/widget/media/radio/RadioDataPlayManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/car/widget/media/radio/RadioDataPlayManager;->getFavorStatusIncreasedMaxLimit()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/car/widget/media/radio/button/RadioButton;->mFavorStatusIncreasedMaxLimit:Ljava/lang/String;

    .line 440
    :cond_2
    iget-object p1, p0, Lcom/yftech/car/widget/media/radio/button/RadioButton;->mFavorStatusIncreasedMaxLimit:Ljava/lang/String;

    if-eqz p1, :cond_3

    .line 441
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager;->getInstance()Lcom/yftech/car/widget/media/manager/RadioManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/car/widget/media/manager/RadioManager;->getFreq()Lcom/yftech/car/media/radio/entity/DataOfRadio;

    move-result-object p1

    .line 442
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager;->getInstance()Lcom/yftech/car/widget/media/manager/RadioManager;

    move-result-object v1

    invoke-virtual {p1}, Lcom/yftech/car/media/radio/entity/DataOfRadio;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/yftech/car/widget/media/manager/RadioManager;->getFavors(I)[Lcom/yftech/car/media/radio/entity/DataOfRadio;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 443
    array-length v1, v1

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/radio/button/RadioButton;->getFavorMax(Lcom/yftech/car/media/radio/entity/DataOfRadio;)I

    move-result p1

    if-ne v1, p1, :cond_3

    .line 444
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/radio/button/RadioButton;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p0, p0, Lcom/yftech/car/widget/media/radio/button/RadioButton;->mFavorStatusIncreasedMaxLimit:Ljava/lang/String;

    invoke-static {p1, p0, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    .line 449
    :cond_3
    iget-object p1, p0, Lcom/yftech/car/widget/media/radio/button/RadioButton;->mFavorStatusAddFavorFail:Ljava/lang/String;

    if-nez p1, :cond_4

    .line 450
    invoke-static {}, Lcom/yftech/car/widget/media/radio/RadioDataPlayManager;->getInstance()Lcom/yftech/car/widget/media/radio/RadioDataPlayManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/car/widget/media/radio/RadioDataPlayManager;->getFavorStatusAddFavorFail()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/car/widget/media/radio/button/RadioButton;->mFavorStatusAddFavorFail:Ljava/lang/String;

    .line 452
    :cond_4
    iget-object p1, p0, Lcom/yftech/car/widget/media/radio/button/RadioButton;->mFavorStatusAddFavorFail:Ljava/lang/String;

    if-eqz p1, :cond_5

    .line 453
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/radio/button/RadioButton;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p0, p0, Lcom/yftech/car/widget/media/radio/button/RadioButton;->mFavorStatusAddFavorFail:Ljava/lang/String;

    invoke-static {p1, p0, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_5
    :goto_0
    return-void
.end method

.method private showRemoveFavor(Z)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 460
    iget-object p1, p0, Lcom/yftech/car/widget/media/radio/button/RadioButton;->mFavorStatusRemoveFavorSuccess:Ljava/lang/String;

    if-nez p1, :cond_0

    .line 461
    invoke-static {}, Lcom/yftech/car/widget/media/radio/RadioDataPlayManager;->getInstance()Lcom/yftech/car/widget/media/radio/RadioDataPlayManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/car/widget/media/radio/RadioDataPlayManager;->getFavorStatusRemoveFavorSuccess()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/car/widget/media/radio/button/RadioButton;->mFavorStatusRemoveFavorSuccess:Ljava/lang/String;

    .line 463
    :cond_0
    iget-object p1, p0, Lcom/yftech/car/widget/media/radio/button/RadioButton;->mFavorStatusRemoveFavorSuccess:Ljava/lang/String;

    if-eqz p1, :cond_3

    .line 464
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/radio/button/RadioButton;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p0, p0, Lcom/yftech/car/widget/media/radio/button/RadioButton;->mFavorStatusRemoveFavorSuccess:Ljava/lang/String;

    invoke-static {p1, p0, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 467
    :cond_1
    iget-object p1, p0, Lcom/yftech/car/widget/media/radio/button/RadioButton;->mFavorStatusRemoveFavorFail:Ljava/lang/String;

    if-nez p1, :cond_2

    .line 468
    invoke-static {}, Lcom/yftech/car/widget/media/radio/RadioDataPlayManager;->getInstance()Lcom/yftech/car/widget/media/radio/RadioDataPlayManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/car/widget/media/radio/RadioDataPlayManager;->getFavorStatusRemoveFavorFail()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/car/widget/media/radio/button/RadioButton;->mFavorStatusRemoveFavorFail:Ljava/lang/String;

    .line 470
    :cond_2
    iget-object p1, p0, Lcom/yftech/car/widget/media/radio/button/RadioButton;->mFavorStatusRemoveFavorFail:Ljava/lang/String;

    if-eqz p1, :cond_3

    .line 471
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/radio/button/RadioButton;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p0, p0, Lcom/yftech/car/widget/media/radio/button/RadioButton;->mFavorStatusRemoveFavorFail:Ljava/lang/String;

    invoke-static {p1, p0, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public getFavorMax(Lcom/yftech/car/media/radio/entity/DataOfRadio;)I
    .locals 1

    .line 336
    iget p1, p1, Lcom/yftech/car/media/radio/entity/DataOfRadio;->type:I

    if-eqz p1, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 344
    iget p0, p0, Lcom/yftech/car/widget/media/radio/button/RadioButton;->mFavorStatusFm1FavorMax:I

    return p0

    .line 338
    :cond_0
    iget p0, p0, Lcom/yftech/car/widget/media/radio/button/RadioButton;->mFavorStatusAmFavorMax:I

    return p0

    .line 340
    :cond_1
    iget p0, p0, Lcom/yftech/car/widget/media/radio/button/RadioButton;->mFavorStatusFmFavorMax:I

    return p0
.end method

.method public isFunction(I)Z
    .locals 1

    .line 332
    iget v0, p0, Lcom/yftech/car/widget/media/radio/button/RadioButton;->mClickFunction:I

    if-eq v0, p1, :cond_1

    iget p0, p0, Lcom/yftech/car/widget/media/radio/button/RadioButton;->mClickLongFunction:I

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isRadioScanStatusPause()Z
    .locals 0

    .line 328
    iget-boolean p0, p0, Lcom/yftech/car/widget/media/radio/button/RadioButton;->mRadioScanStatusPause:Z

    return p0
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 314
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatButton;->onDetachedFromWindow()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 293
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatButton;->onFinishInflate()V

    .line 294
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/radio/button/RadioButton;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 296
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/car/widget/media/radio/button/RadioButton;->mText:Ljava/lang/String;

    .line 298
    :cond_0
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/radio/button/RadioButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/car/widget/media/radio/button/RadioButton;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 299
    iget-object v0, p0, Lcom/yftech/car/widget/media/radio/button/RadioButton;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/radio/button/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 300
    iget v0, p0, Lcom/yftech/car/widget/media/radio/button/RadioButton;->mClickLongFunction:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 301
    iget-object v0, p0, Lcom/yftech/car/widget/media/radio/button/RadioButton;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/radio/button/RadioButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 304
    :cond_1
    iget v0, p0, Lcom/yftech/car/widget/media/radio/button/RadioButton;->mClickFunction:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    .line 305
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager;->getInstance()Lcom/yftech/car/widget/media/manager/RadioManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/manager/RadioManager;->getFreq()Lcom/yftech/car/media/radio/entity/DataOfRadio;

    move-result-object v0

    .line 306
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager;->getInstance()Lcom/yftech/car/widget/media/manager/RadioManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/yftech/car/widget/media/manager/RadioManager;->isFreqFavored(Lcom/yftech/car/media/radio/entity/DataOfRadio;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/radio/button/RadioButton;->setActivatedStatus(Z)V

    goto :goto_1

    .line 307
    :cond_2
    iget v0, p0, Lcom/yftech/car/widget/media/radio/button/RadioButton;->mClickFunction:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_4

    .line 308
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager;->getInstance()Lcom/yftech/car/widget/media/manager/RadioManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/manager/RadioManager;->getBand()I

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/radio/button/RadioButton;->setActivatedStatus(Z)V

    :cond_4
    :goto_1
    return-void
.end method

.method public setActivatedStatus(Z)V
    .locals 1

    .line 319
    iget-object v0, p0, Lcom/yftech/car/widget/media/radio/button/RadioButton;->mDrawableSelected:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 320
    iget-object v0, p0, Lcom/yftech/car/widget/media/radio/button/RadioButton;->mDrawableSelected:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/radio/button/RadioButton;->mDrawable:Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/radio/button/RadioButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 322
    :cond_1
    iget-object v0, p0, Lcom/yftech/car/widget/media/radio/button/RadioButton;->mSelected:Ljava/lang/String;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    .line 323
    iget-object p1, p0, Lcom/yftech/car/widget/media/radio/button/RadioButton;->mSelected:Ljava/lang/String;

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/yftech/car/widget/media/radio/button/RadioButton;->mText:Ljava/lang/String;

    :goto_1
    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/radio/button/RadioButton;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method
