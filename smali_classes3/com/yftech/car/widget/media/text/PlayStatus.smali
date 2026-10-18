.class public Lcom/yftech/car/widget/media/text/PlayStatus;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "PlayStatus.java"


# static fields
.field public static final MUSIC_ITEM:I = 0x2

.field public static final PAUSE:I = 0x2

.field public static final PLAY:I = 0x1

.field public static final RADIO_ITEM:I = 0x1


# instance fields
.field private mPlayStatusClickFunction:I

.field private final mPlayStatusDrawable:[Landroid/graphics/drawable/Drawable;

.field private final mPlayStatusText:[Ljava/lang/String;

.field private mType:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 48
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 40
    iput p1, p0, Lcom/yftech/car/widget/media/text/PlayStatus;->mType:I

    const/4 p1, 0x2

    .line 42
    new-array v0, p1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/yftech/car/widget/media/text/PlayStatus;->mPlayStatusText:[Ljava/lang/String;

    .line 43
    new-array p1, p1, [Landroid/graphics/drawable/Drawable;

    iput-object p1, p0, Lcom/yftech/car/widget/media/text/PlayStatus;->mPlayStatusDrawable:[Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 52
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    .line 40
    iput v0, p0, Lcom/yftech/car/widget/media/text/PlayStatus;->mType:I

    const/4 v0, 0x2

    .line 42
    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/yftech/car/widget/media/text/PlayStatus;->mPlayStatusText:[Ljava/lang/String;

    .line 43
    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/yftech/car/widget/media/text/PlayStatus;->mPlayStatusDrawable:[Landroid/graphics/drawable/Drawable;

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/yftech/car/widget/media/text/PlayStatus;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 57
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x1

    .line 40
    iput p3, p0, Lcom/yftech/car/widget/media/text/PlayStatus;->mType:I

    const/4 p3, 0x2

    .line 42
    new-array v0, p3, [Ljava/lang/String;

    iput-object v0, p0, Lcom/yftech/car/widget/media/text/PlayStatus;->mPlayStatusText:[Ljava/lang/String;

    .line 43
    new-array p3, p3, [Landroid/graphics/drawable/Drawable;

    iput-object p3, p0, Lcom/yftech/car/widget/media/text/PlayStatus;->mPlayStatusDrawable:[Landroid/graphics/drawable/Drawable;

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/yftech/car/widget/media/text/PlayStatus;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 63
    sget-object v0, Lcom/yftech/car/widget/media/R$styleable;->PlayStatus:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 64
    iget-object p2, p0, Lcom/yftech/car/widget/media/text/PlayStatus;->mPlayStatusText:[Ljava/lang/String;

    sget v0, Lcom/yftech/car/widget/media/R$styleable;->PlayStatus_playStatus_pause_text:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p2, v1

    .line 65
    iget-object p2, p0, Lcom/yftech/car/widget/media/text/PlayStatus;->mPlayStatusText:[Ljava/lang/String;

    sget v0, Lcom/yftech/car/widget/media/R$styleable;->PlayStatus_playStatus_play_text:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, p2, v2

    .line 67
    iget-object p2, p0, Lcom/yftech/car/widget/media/text/PlayStatus;->mPlayStatusDrawable:[Landroid/graphics/drawable/Drawable;

    sget v0, Lcom/yftech/car/widget/media/R$styleable;->PlayStatus_playStatus_pause_drawable:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aput-object v0, p2, v1

    .line 68
    iget-object p2, p0, Lcom/yftech/car/widget/media/text/PlayStatus;->mPlayStatusDrawable:[Landroid/graphics/drawable/Drawable;

    sget v0, Lcom/yftech/car/widget/media/R$styleable;->PlayStatus_playStatus_play_drawable:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aput-object v0, p2, v2

    .line 70
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->PlayStatus_playStatus_click_function:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    iput p1, p0, Lcom/yftech/car/widget/media/text/PlayStatus;->mPlayStatusClickFunction:I

    return-void
.end method


# virtual methods
.method public getClickFunction()I
    .locals 0

    .line 79
    iget p0, p0, Lcom/yftech/car/widget/media/text/PlayStatus;->mPlayStatusClickFunction:I

    return p0
.end method

.method public isClickFunction(I)Z
    .locals 0

    .line 83
    iget p0, p0, Lcom/yftech/car/widget/media/text/PlayStatus;->mPlayStatusClickFunction:I

    and-int/2addr p0, p1

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 105
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatTextView;->onAttachedToWindow()V

    .line 106
    iget v0, p0, Lcom/yftech/car/widget/media/text/PlayStatus;->mType:I

    const/4 v1, 0x2

    if-eq v1, v0, :cond_1

    const/4 v0, 0x1

    iget v1, p0, Lcom/yftech/car/widget/media/text/PlayStatus;->mType:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    .line 109
    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/text/PlayStatus;->setVisibility(I)V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 107
    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/text/PlayStatus;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 115
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatTextView;->onDetachedFromWindow()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 75
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatTextView;->onFinishInflate()V

    return-void
.end method

.method public setPlayStatus(Z)V
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/yftech/car/widget/media/text/PlayStatus;->mPlayStatusText:[Ljava/lang/String;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/text/PlayStatus;->setText(Ljava/lang/CharSequence;)V

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/text/PlayStatus;->mPlayStatusDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object p1, v0, p1

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/text/PlayStatus;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setType(I)V
    .locals 1

    .line 95
    iput p1, p0, Lcom/yftech/car/widget/media/text/PlayStatus;->mType:I

    .line 96
    iget p1, p0, Lcom/yftech/car/widget/media/text/PlayStatus;->mType:I

    const/4 v0, 0x2

    if-eq v0, p1, :cond_1

    const/4 p1, 0x1

    iget v0, p0, Lcom/yftech/car/widget/media/text/PlayStatus;->mType:I

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 99
    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/text/PlayStatus;->setVisibility(I)V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 97
    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/text/PlayStatus;->setVisibility(I)V

    :goto_1
    return-void
.end method
