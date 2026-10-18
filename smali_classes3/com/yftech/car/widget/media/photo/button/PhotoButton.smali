.class public Lcom/yftech/car/widget/media/photo/button/PhotoButton;
.super Landroidx/appcompat/widget/AppCompatButton;
.source "PhotoButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/car/widget/media/photo/button/PhotoButton$OnClickFunctionListener;
    }
.end annotation


# static fields
.field public static final ALBUM:I = 0x3ec

.field public static final ARTIST:I = 0x3eb

.field public static final COLLECT:I = 0x3e8

.field public static final DIRECTORY:I = 0x3ee

.field public static final FOLDER:I = 0x3e9

.field public static final GENRE:I = 0x3ed

.field public static final PLAY_LIST:I = 0x44c

.field public static final SWITCH_USB1:I = 0x64

.field public static final SWITCH_USB2:I = 0x65

.field public static final SWITCH_USB3:I = 0x66

.field public static final SWITCH_USB4:I = 0x67

.field public static final SWITCH_USB5:I = 0x68

.field public static final TITLE:I = 0x3ea


# instance fields
.field private mClickFunction:I

.field private mClickLongFunction:I

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mDrawableSelected:Landroid/graphics/drawable/Drawable;

.field private mFunctionListener:Lcom/yftech/car/widget/media/photo/button/PhotoButton$OnClickFunctionListener;

.field private mMediaDataListId:I

.field private final mOnClick:Landroid/view/View$OnClickListener;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private final mOnLongClick:Landroid/view/View$OnLongClickListener;

.field private mOnLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mSelected:Ljava/lang/String;

.field private mText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 77
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 48
    iput p1, p0, Lcom/yftech/car/widget/media/photo/button/PhotoButton;->mClickLongFunction:I

    const-string p1, ""

    .line 53
    iput-object p1, p0, Lcom/yftech/car/widget/media/photo/button/PhotoButton;->mText:Ljava/lang/String;

    const/4 p1, 0x0

    .line 58
    iput-object p1, p0, Lcom/yftech/car/widget/media/photo/button/PhotoButton;->mSelected:Ljava/lang/String;

    .line 147
    new-instance p1, Lcom/yftech/car/widget/media/photo/button/PhotoButton$1;

    invoke-direct {p1, p0}, Lcom/yftech/car/widget/media/photo/button/PhotoButton$1;-><init>(Lcom/yftech/car/widget/media/photo/button/PhotoButton;)V

    iput-object p1, p0, Lcom/yftech/car/widget/media/photo/button/PhotoButton;->mOnClick:Landroid/view/View$OnClickListener;

    .line 160
    new-instance p1, Lcom/yftech/car/widget/media/photo/button/PhotoButton$2;

    invoke-direct {p1, p0}, Lcom/yftech/car/widget/media/photo/button/PhotoButton$2;-><init>(Lcom/yftech/car/widget/media/photo/button/PhotoButton;)V

    iput-object p1, p0, Lcom/yftech/car/widget/media/photo/button/PhotoButton;->mOnLongClick:Landroid/view/View$OnLongClickListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 81
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    .line 48
    iput v0, p0, Lcom/yftech/car/widget/media/photo/button/PhotoButton;->mClickLongFunction:I

    const-string v0, ""

    .line 53
    iput-object v0, p0, Lcom/yftech/car/widget/media/photo/button/PhotoButton;->mText:Ljava/lang/String;

    const/4 v0, 0x0

    .line 58
    iput-object v0, p0, Lcom/yftech/car/widget/media/photo/button/PhotoButton;->mSelected:Ljava/lang/String;

    .line 147
    new-instance v0, Lcom/yftech/car/widget/media/photo/button/PhotoButton$1;

    invoke-direct {v0, p0}, Lcom/yftech/car/widget/media/photo/button/PhotoButton$1;-><init>(Lcom/yftech/car/widget/media/photo/button/PhotoButton;)V

    iput-object v0, p0, Lcom/yftech/car/widget/media/photo/button/PhotoButton;->mOnClick:Landroid/view/View$OnClickListener;

    .line 160
    new-instance v0, Lcom/yftech/car/widget/media/photo/button/PhotoButton$2;

    invoke-direct {v0, p0}, Lcom/yftech/car/widget/media/photo/button/PhotoButton$2;-><init>(Lcom/yftech/car/widget/media/photo/button/PhotoButton;)V

    iput-object v0, p0, Lcom/yftech/car/widget/media/photo/button/PhotoButton;->mOnLongClick:Landroid/view/View$OnLongClickListener;

    .line 82
    invoke-direct {p0, p1, p2}, Lcom/yftech/car/widget/media/photo/button/PhotoButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 86
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, -0x1

    .line 48
    iput p3, p0, Lcom/yftech/car/widget/media/photo/button/PhotoButton;->mClickLongFunction:I

    const-string p3, ""

    .line 53
    iput-object p3, p0, Lcom/yftech/car/widget/media/photo/button/PhotoButton;->mText:Ljava/lang/String;

    const/4 p3, 0x0

    .line 58
    iput-object p3, p0, Lcom/yftech/car/widget/media/photo/button/PhotoButton;->mSelected:Ljava/lang/String;

    .line 147
    new-instance p3, Lcom/yftech/car/widget/media/photo/button/PhotoButton$1;

    invoke-direct {p3, p0}, Lcom/yftech/car/widget/media/photo/button/PhotoButton$1;-><init>(Lcom/yftech/car/widget/media/photo/button/PhotoButton;)V

    iput-object p3, p0, Lcom/yftech/car/widget/media/photo/button/PhotoButton;->mOnClick:Landroid/view/View$OnClickListener;

    .line 160
    new-instance p3, Lcom/yftech/car/widget/media/photo/button/PhotoButton$2;

    invoke-direct {p3, p0}, Lcom/yftech/car/widget/media/photo/button/PhotoButton$2;-><init>(Lcom/yftech/car/widget/media/photo/button/PhotoButton;)V

    iput-object p3, p0, Lcom/yftech/car/widget/media/photo/button/PhotoButton;->mOnLongClick:Landroid/view/View$OnLongClickListener;

    .line 87
    invoke-direct {p0, p1, p2}, Lcom/yftech/car/widget/media/photo/button/PhotoButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lcom/yftech/car/widget/media/photo/button/PhotoButton;)Lcom/yftech/car/widget/media/photo/button/PhotoButton$OnClickFunctionListener;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/yftech/car/widget/media/photo/button/PhotoButton;->mFunctionListener:Lcom/yftech/car/widget/media/photo/button/PhotoButton$OnClickFunctionListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/yftech/car/widget/media/photo/button/PhotoButton;)I
    .locals 0

    .line 15
    iget p0, p0, Lcom/yftech/car/widget/media/photo/button/PhotoButton;->mMediaDataListId:I

    return p0
.end method

.method static synthetic access$200(Lcom/yftech/car/widget/media/photo/button/PhotoButton;)I
    .locals 0

    .line 15
    iget p0, p0, Lcom/yftech/car/widget/media/photo/button/PhotoButton;->mClickFunction:I

    return p0
.end method

.method static synthetic access$300(Lcom/yftech/car/widget/media/photo/button/PhotoButton;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/yftech/car/widget/media/photo/button/PhotoButton;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method static synthetic access$400(Lcom/yftech/car/widget/media/photo/button/PhotoButton;)I
    .locals 0

    .line 15
    iget p0, p0, Lcom/yftech/car/widget/media/photo/button/PhotoButton;->mClickLongFunction:I

    return p0
.end method

.method static synthetic access$500(Lcom/yftech/car/widget/media/photo/button/PhotoButton;)Landroid/view/View$OnLongClickListener;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/yftech/car/widget/media/photo/button/PhotoButton;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    return-object p0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 91
    sget-object v0, Lcom/yftech/car/widget/media/R$styleable;->PhotoButton:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 93
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->PhotoButton_photo_click_function:I

    const/16 v0, 0x3ea

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/yftech/car/widget/media/photo/button/PhotoButton;->mClickFunction:I

    .line 95
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->PhotoButton_photo_long_click_function:I

    const/4 v0, -0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/yftech/car/widget/media/photo/button/PhotoButton;->mClickLongFunction:I

    .line 97
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->PhotoButton_photo_media_data_list_id:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/yftech/car/widget/media/photo/button/PhotoButton;->mMediaDataListId:I

    .line 99
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->PhotoButton_photo_background_activated:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/yftech/car/widget/media/photo/button/PhotoButton;->mDrawableSelected:Landroid/graphics/drawable/Drawable;

    .line 101
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->PhotoButton_photo_activated_text:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/car/widget/media/photo/button/PhotoButton;->mSelected:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public isFunction(I)Z
    .locals 1

    .line 144
    iget v0, p0, Lcom/yftech/car/widget/media/photo/button/PhotoButton;->mClickFunction:I

    if-eq v0, p1, :cond_1

    iget p0, p0, Lcom/yftech/car/widget/media/photo/button/PhotoButton;->mClickLongFunction:I

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

.method protected onFinishInflate()V
    .locals 2

    .line 107
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatButton;->onFinishInflate()V

    .line 108
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/photo/button/PhotoButton;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 110
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/car/widget/media/photo/button/PhotoButton;->mText:Ljava/lang/String;

    .line 112
    :cond_0
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/photo/button/PhotoButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/car/widget/media/photo/button/PhotoButton;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 114
    iget-object v0, p0, Lcom/yftech/car/widget/media/photo/button/PhotoButton;->mOnClick:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/photo/button/PhotoButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    iget v0, p0, Lcom/yftech/car/widget/media/photo/button/PhotoButton;->mClickLongFunction:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 117
    iget-object v0, p0, Lcom/yftech/car/widget/media/photo/button/PhotoButton;->mOnLongClick:Landroid/view/View$OnLongClickListener;

    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/photo/button/PhotoButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_1
    return-void
.end method

.method public setFunctionListener(Lcom/yftech/car/widget/media/photo/button/PhotoButton$OnClickFunctionListener;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/yftech/car/widget/media/photo/button/PhotoButton;->mFunctionListener:Lcom/yftech/car/widget/media/photo/button/PhotoButton$OnClickFunctionListener;

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1    # Landroid/view/View$OnClickListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 123
    iget-object v0, p0, Lcom/yftech/car/widget/media/photo/button/PhotoButton;->mOnClick:Landroid/view/View$OnClickListener;

    if-ne p1, v0, :cond_0

    .line 124
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 126
    :cond_0
    iput-object p1, p0, Lcom/yftech/car/widget/media/photo/button/PhotoButton;->mOnClickListener:Landroid/view/View$OnClickListener;

    :goto_0
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 1
    .param p1    # Landroid/view/View$OnLongClickListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 132
    iget-object v0, p0, Lcom/yftech/car/widget/media/photo/button/PhotoButton;->mOnLongClick:Landroid/view/View$OnLongClickListener;

    if-ne v0, p1, :cond_0

    .line 133
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_0

    .line 135
    :cond_0
    iput-object p1, p0, Lcom/yftech/car/widget/media/photo/button/PhotoButton;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    :goto_0
    return-void
.end method
