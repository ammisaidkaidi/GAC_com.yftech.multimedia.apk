.class public Lcom/yftech/car/widget/media/view/PlayAnimation;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "PlayAnimation.java"


# static fields
.field public static final RADIO:I = 0x5

.field private static final TAG:Ljava/lang/String; = "PlayAnimation"


# instance fields
.field private isPlay:Z

.field private isSelectedPlay:Z

.field private mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

.field private mMediaType:I

.field private mNoPlayDrawable:Landroid/graphics/drawable/Drawable;

.field private mNoPlayIsNumber:Z

.field private mOfFrames:I

.field private final mRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 84
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 63
    iput-boolean p1, p0, Lcom/yftech/car/widget/media/view/PlayAnimation;->isSelectedPlay:Z

    .line 73
    iput p1, p0, Lcom/yftech/car/widget/media/view/PlayAnimation;->mOfFrames:I

    const/4 p1, -0x1

    .line 75
    iput p1, p0, Lcom/yftech/car/widget/media/view/PlayAnimation;->mMediaType:I

    .line 205
    new-instance p1, Lcom/yftech/car/widget/media/view/PlayAnimation$1;

    invoke-direct {p1, p0}, Lcom/yftech/car/widget/media/view/PlayAnimation$1;-><init>(Lcom/yftech/car/widget/media/view/PlayAnimation;)V

    iput-object p1, p0, Lcom/yftech/car/widget/media/view/PlayAnimation;->mRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 104
    invoke-direct {p0, p1, p2, v0}, Lcom/yftech/car/widget/media/view/PlayAnimation;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 125
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 63
    iput-boolean p3, p0, Lcom/yftech/car/widget/media/view/PlayAnimation;->isSelectedPlay:Z

    .line 73
    iput p3, p0, Lcom/yftech/car/widget/media/view/PlayAnimation;->mOfFrames:I

    const/4 v0, -0x1

    .line 75
    iput v0, p0, Lcom/yftech/car/widget/media/view/PlayAnimation;->mMediaType:I

    .line 205
    new-instance v0, Lcom/yftech/car/widget/media/view/PlayAnimation$1;

    invoke-direct {v0, p0}, Lcom/yftech/car/widget/media/view/PlayAnimation$1;-><init>(Lcom/yftech/car/widget/media/view/PlayAnimation;)V

    iput-object v0, p0, Lcom/yftech/car/widget/media/view/PlayAnimation;->mRunnable:Ljava/lang/Runnable;

    .line 126
    sget-object v0, Lcom/yftech/car/widget/media/R$styleable;->PlayAnimation:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 128
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->PlayAnimation_play_drawable:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 130
    sget v0, Lcom/yftech/car/widget/media/R$styleable;->PlayAnimation_no_play_drawable:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/car/widget/media/view/PlayAnimation;->mNoPlayDrawable:Landroid/graphics/drawable/Drawable;

    .line 131
    sget v0, Lcom/yftech/car/widget/media/R$styleable;->PlayAnimation_no_play_is_number:I

    invoke-virtual {p1, v0, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/yftech/car/widget/media/view/PlayAnimation;->mNoPlayIsNumber:Z

    .line 132
    instance-of p1, p2, Landroid/graphics/drawable/AnimationDrawable;

    const/4 p3, 0x0

    if-eqz p1, :cond_0

    .line 133
    check-cast p2, Landroid/graphics/drawable/AnimationDrawable;

    iput-object p2, p0, Lcom/yftech/car/widget/media/view/PlayAnimation;->mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    .line 135
    iget-object p1, p0, Lcom/yftech/car/widget/media/view/PlayAnimation;->mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    iget p2, p0, Lcom/yftech/car/widget/media/view/PlayAnimation;->mOfFrames:I

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1, p3, p3, p3}, Lcom/yftech/car/widget/media/view/PlayAnimation;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 138
    :cond_0
    invoke-virtual {p0, p2, p3, p3, p3}, Lcom/yftech/car/widget/media/view/PlayAnimation;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/yftech/car/widget/media/view/PlayAnimation;)Z
    .locals 0

    .line 46
    iget-boolean p0, p0, Lcom/yftech/car/widget/media/view/PlayAnimation;->isPlay:Z

    return p0
.end method

.method static synthetic access$100(Lcom/yftech/car/widget/media/view/PlayAnimation;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/yftech/car/widget/media/view/PlayAnimation;->mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    return-object p0
.end method

.method static synthetic access$200(Lcom/yftech/car/widget/media/view/PlayAnimation;)Ljava/lang/Runnable;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/yftech/car/widget/media/view/PlayAnimation;->mRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$300(Lcom/yftech/car/widget/media/view/PlayAnimation;)I
    .locals 0

    .line 46
    iget p0, p0, Lcom/yftech/car/widget/media/view/PlayAnimation;->mOfFrames:I

    return p0
.end method

.method static synthetic access$302(Lcom/yftech/car/widget/media/view/PlayAnimation;I)I
    .locals 0

    .line 46
    iput p1, p0, Lcom/yftech/car/widget/media/view/PlayAnimation;->mOfFrames:I

    return p1
.end method

.method static synthetic access$308(Lcom/yftech/car/widget/media/view/PlayAnimation;)I
    .locals 2

    .line 46
    iget v0, p0, Lcom/yftech/car/widget/media/view/PlayAnimation;->mOfFrames:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/yftech/car/widget/media/view/PlayAnimation;->mOfFrames:I

    return v0
.end method

.method private setNoPlayDrawable()V
    .locals 2

    const/4 v0, 0x0

    .line 189
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/view/PlayAnimation;->isPlay:Z

    .line 190
    iget-object v0, p0, Lcom/yftech/car/widget/media/view/PlayAnimation;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/view/PlayAnimation;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 192
    iget-object v0, p0, Lcom/yftech/car/widget/media/view/PlayAnimation;->mNoPlayDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1, v1}, Lcom/yftech/car/widget/media/view/PlayAnimation;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    .line 229
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatTextView;->onAttachedToWindow()V

    .line 231
    iget v0, p0, Lcom/yftech/car/widget/media/view/PlayAnimation;->mMediaType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/yftech/car/widget/media/view/PlayAnimation;->isSelectedPlay:Z

    if-eqz v0, :cond_2

    .line 232
    iget v0, p0, Lcom/yftech/car/widget/media/view/PlayAnimation;->mMediaType:I

    if-nez v0, :cond_0

    .line 233
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MusicManager;->getInstance()Lcom/yftech/car/widget/media/manager/MusicManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/manager/MusicManager;->isPlaying()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/view/PlayAnimation;->setPlay(Z)V

    goto :goto_0

    .line 234
    :cond_0
    iget v0, p0, Lcom/yftech/car/widget/media/view/PlayAnimation;->mMediaType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 235
    invoke-static {}, Lcom/yftech/car/widget/media/video/VideoDataPlayManager;->getInstance()Lcom/yftech/car/widget/media/video/VideoDataPlayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/video/VideoDataPlayManager;->isPlaying()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/view/PlayAnimation;->setPlay(Z)V

    goto :goto_0

    .line 236
    :cond_1
    iget v0, p0, Lcom/yftech/car/widget/media/view/PlayAnimation;->mMediaType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 237
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager;->getInstance()Lcom/yftech/car/widget/media/manager/RadioManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/manager/RadioManager;->isPlaying()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/view/PlayAnimation;->setPlay(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 244
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatTextView;->onDetachedFromWindow()V

    .line 245
    iget-object v0, p0, Lcom/yftech/car/widget/media/view/PlayAnimation;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/view/PlayAnimation;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 198
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatTextView;->onFinishInflate()V

    return-void
.end method

.method public setAnimationDrawable(Landroid/graphics/drawable/AnimationDrawable;)V
    .locals 2

    .line 144
    iput-object p1, p0, Lcom/yftech/car/widget/media/view/PlayAnimation;->mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    .line 145
    iget-object p1, p0, Lcom/yftech/car/widget/media/view/PlayAnimation;->mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 146
    iput p1, p0, Lcom/yftech/car/widget/media/view/PlayAnimation;->mOfFrames:I

    .line 148
    iget-object p1, p0, Lcom/yftech/car/widget/media/view/PlayAnimation;->mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    iget v1, p0, Lcom/yftech/car/widget/media/view/PlayAnimation;->mOfFrames:I

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1, v0, v0, v0}, Lcom/yftech/car/widget/media/view/PlayAnimation;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 151
    :cond_0
    invoke-virtual {p0, v0, v0, v0, v0}, Lcom/yftech/car/widget/media/view/PlayAnimation;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public setMediaType(I)V
    .locals 0

    .line 166
    iput p1, p0, Lcom/yftech/car/widget/media/view/PlayAnimation;->mMediaType:I

    return-void
.end method

.method public setNumberText(Ljava/lang/String;)V
    .locals 1

    .line 183
    iget-boolean v0, p0, Lcom/yftech/car/widget/media/view/PlayAnimation;->mNoPlayIsNumber:Z

    if-eqz v0, :cond_0

    .line 184
    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/view/PlayAnimation;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setPlay(Z)V
    .locals 1

    .line 170
    iput-boolean p1, p0, Lcom/yftech/car/widget/media/view/PlayAnimation;->isPlay:Z

    if-eqz p1, :cond_0

    .line 172
    iget-object p1, p0, Lcom/yftech/car/widget/media/view/PlayAnimation;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/view/PlayAnimation;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 173
    iget-object p1, p0, Lcom/yftech/car/widget/media/view/PlayAnimation;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/view/PlayAnimation;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 175
    :cond_0
    iget-object p1, p0, Lcom/yftech/car/widget/media/view/PlayAnimation;->mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/yftech/car/widget/media/view/PlayAnimation;->mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result p1

    iget v0, p0, Lcom/yftech/car/widget/media/view/PlayAnimation;->mOfFrames:I

    if-le p1, v0, :cond_1

    .line 177
    iget-object p1, p0, Lcom/yftech/car/widget/media/view/PlayAnimation;->mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    iget v0, p0, Lcom/yftech/car/widget/media/view/PlayAnimation;->mOfFrames:I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0, v0}, Lcom/yftech/car/widget/media/view/PlayAnimation;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setSelectedPlay(Z)V
    .locals 0

    .line 156
    iput-boolean p1, p0, Lcom/yftech/car/widget/media/view/PlayAnimation;->isSelectedPlay:Z

    .line 158
    iget-boolean p1, p0, Lcom/yftech/car/widget/media/view/PlayAnimation;->isSelectedPlay:Z

    if-eqz p1, :cond_0

    .line 159
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MusicManager;->getInstance()Lcom/yftech/car/widget/media/manager/MusicManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/car/widget/media/manager/MusicManager;->isPlaying()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/view/PlayAnimation;->setPlay(Z)V

    goto :goto_0

    .line 161
    :cond_0
    invoke-direct {p0}, Lcom/yftech/car/widget/media/view/PlayAnimation;->setNoPlayDrawable()V

    :goto_0
    return-void
.end method
