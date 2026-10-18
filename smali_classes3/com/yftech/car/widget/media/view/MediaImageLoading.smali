.class public Lcom/yftech/car/widget/media/view/MediaImageLoading;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "MediaImageLoading.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MediaImageLoading"


# instance fields
.field private mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mIsHide:Z

.field private mIsLoading:Z

.field private mLoadingFinishDrawable:Landroid/graphics/drawable/Drawable;

.field private mLoadingMediaDataListId:I

.field private mOfFrames:I

.field private mRotateAnimationTime:I

.field private final mRunnable:Ljava/lang/Runnable;

.field private mText:Ljava/lang/String;


# direct methods
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

    const/4 v0, 0x0

    .line 96
    invoke-direct {p0, p1, p2, v0}, Lcom/yftech/car/widget/media/view/MediaImageLoading;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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

    .line 100
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 77
    iput p3, p0, Lcom/yftech/car/widget/media/view/MediaImageLoading;->mOfFrames:I

    .line 82
    iput-boolean p3, p0, Lcom/yftech/car/widget/media/view/MediaImageLoading;->mIsHide:Z

    .line 116
    new-instance v0, Lcom/yftech/car/widget/media/view/MediaImageLoading$1;

    invoke-direct {v0, p0}, Lcom/yftech/car/widget/media/view/MediaImageLoading$1;-><init>(Lcom/yftech/car/widget/media/view/MediaImageLoading;)V

    iput-object v0, p0, Lcom/yftech/car/widget/media/view/MediaImageLoading;->mRunnable:Ljava/lang/Runnable;

    if-eqz p2, :cond_0

    .line 104
    sget-object v0, Lcom/yftech/car/widget/media/R$styleable;->MediaImageLoading:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 106
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->MediaImageLoading_rotate_animation_time:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/yftech/car/widget/media/view/MediaImageLoading;->mRotateAnimationTime:I

    .line 108
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->MediaImageLoading_loading_finish_drawable:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/yftech/car/widget/media/view/MediaImageLoading;->mLoadingFinishDrawable:Landroid/graphics/drawable/Drawable;

    .line 110
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->MediaImageLoading_loading_media_data_list_id:I

    const/4 p3, -0x1

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    iput p1, p0, Lcom/yftech/car/widget/media/view/MediaImageLoading;->mLoadingMediaDataListId:I

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/yftech/car/widget/media/view/MediaImageLoading;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/yftech/car/widget/media/view/MediaImageLoading;->mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    return-object p0
.end method

.method static synthetic access$100(Lcom/yftech/car/widget/media/view/MediaImageLoading;)Ljava/lang/Runnable;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/yftech/car/widget/media/view/MediaImageLoading;->mRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$200(Lcom/yftech/car/widget/media/view/MediaImageLoading;)I
    .locals 0

    .line 67
    iget p0, p0, Lcom/yftech/car/widget/media/view/MediaImageLoading;->mOfFrames:I

    return p0
.end method

.method static synthetic access$202(Lcom/yftech/car/widget/media/view/MediaImageLoading;I)I
    .locals 0

    .line 67
    iput p1, p0, Lcom/yftech/car/widget/media/view/MediaImageLoading;->mOfFrames:I

    return p1
.end method

.method static synthetic access$208(Lcom/yftech/car/widget/media/view/MediaImageLoading;)I
    .locals 2

    .line 67
    iget v0, p0, Lcom/yftech/car/widget/media/view/MediaImageLoading;->mOfFrames:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/yftech/car/widget/media/view/MediaImageLoading;->mOfFrames:I

    return v0
.end method

.method public static synthetic lambda$setHide$0(Lcom/yftech/car/widget/media/view/MediaImageLoading;Lcom/yftech/car/media/data/entity/MediaFile;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 173
    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getType()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 p1, 0x0

    .line 174
    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/view/MediaImageLoading;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public getMediaDataListId()I
    .locals 0

    .line 140
    iget p0, p0, Lcom/yftech/car/widget/media/view/MediaImageLoading;->mLoadingMediaDataListId:I

    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 206
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatTextView;->onAttachedToWindow()V

    .line 208
    iget-boolean v0, p0, Lcom/yftech/car/widget/media/view/MediaImageLoading;->mIsHide:Z

    if-eqz v0, :cond_0

    return-void

    .line 211
    :cond_0
    iget-boolean v0, p0, Lcom/yftech/car/widget/media/view/MediaImageLoading;->mIsLoading:Z

    if-eqz v0, :cond_2

    .line 212
    iget-object v0, p0, Lcom/yftech/car/widget/media/view/MediaImageLoading;->mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_1

    .line 213
    iget-object v0, p0, Lcom/yftech/car/widget/media/view/MediaImageLoading;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/view/MediaImageLoading;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 214
    iget-object v0, p0, Lcom/yftech/car/widget/media/view/MediaImageLoading;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/view/MediaImageLoading;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 216
    :cond_1
    iget-object v0, p0, Lcom/yftech/car/widget/media/view/MediaImageLoading;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/view/MediaImageLoading;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 218
    :goto_0
    iget v0, p0, Lcom/yftech/car/widget/media/view/MediaImageLoading;->mRotateAnimationTime:I

    const/16 v1, 0x63

    if-le v0, v1, :cond_3

    iget-boolean v0, p0, Lcom/yftech/car/widget/media/view/MediaImageLoading;->mIsLoading:Z

    if-eqz v0, :cond_3

    .line 219
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/view/MediaImageLoading;->clearAnimation()V

    .line 220
    iget v0, p0, Lcom/yftech/car/widget/media/view/MediaImageLoading;->mRotateAnimationTime:I

    invoke-static {p0, v0}, Lcom/yftech/car/widget/media/utils/AnimationUtil;->setRotationAnimation(Landroid/view/View;I)V

    goto :goto_1

    .line 223
    :cond_2
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/view/MediaImageLoading;->clearAnimation()V

    .line 224
    iget-object v0, p0, Lcom/yftech/car/widget/media/view/MediaImageLoading;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/view/MediaImageLoading;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 225
    iget-object v0, p0, Lcom/yftech/car/widget/media/view/MediaImageLoading;->mLoadingFinishDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/view/MediaImageLoading;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    :goto_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 231
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatTextView;->onDetachedFromWindow()V

    .line 233
    iget-object v0, p0, Lcom/yftech/car/widget/media/view/MediaImageLoading;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/view/MediaImageLoading;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 234
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/view/MediaImageLoading;->clearAnimation()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 181
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatTextView;->onFinishInflate()V

    .line 182
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/view/MediaImageLoading;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/car/widget/media/view/MediaImageLoading;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 183
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/view/MediaImageLoading;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 185
    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/yftech/car/widget/media/view/MediaImageLoading;->mText:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 187
    iput-object v0, p0, Lcom/yftech/car/widget/media/view/MediaImageLoading;->mText:Ljava/lang/String;

    .line 190
    :goto_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/view/MediaImageLoading;->mBackground:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_1

    .line 191
    iget-object v0, p0, Lcom/yftech/car/widget/media/view/MediaImageLoading;->mBackground:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/yftech/car/widget/media/view/MediaImageLoading;->mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    :cond_1
    return-void
.end method

.method public setHide(Lcom/yftech/car/media/data/entity/MediaFile;)V
    .locals 1

    const/4 v0, 0x1

    .line 169
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/view/MediaImageLoading;->mIsHide:Z

    .line 170
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/view/MediaImageLoading;->clearAnimation()V

    const/4 v0, 0x0

    .line 171
    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/view/MediaImageLoading;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 172
    new-instance v0, Lcom/yftech/car/widget/media/view/-$$Lambda$MediaImageLoading$OKESigXfNYb10Y4JfT85kkMYFeQ;

    invoke-direct {v0, p0, p1}, Lcom/yftech/car/widget/media/view/-$$Lambda$MediaImageLoading$OKESigXfNYb10Y4JfT85kkMYFeQ;-><init>(Lcom/yftech/car/widget/media/view/MediaImageLoading;Lcom/yftech/car/media/data/entity/MediaFile;)V

    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/view/MediaImageLoading;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setLoadingStatus(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 144
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/view/MediaImageLoading;->mIsHide:Z

    .line 145
    iput-boolean p1, p0, Lcom/yftech/car/widget/media/view/MediaImageLoading;->mIsLoading:Z

    .line 146
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/view/MediaImageLoading;->clearAnimation()V

    if-eqz p1, :cond_2

    .line 148
    iget p1, p0, Lcom/yftech/car/widget/media/view/MediaImageLoading;->mRotateAnimationTime:I

    const/16 v0, 0x63

    if-le p1, v0, :cond_0

    .line 149
    iget p1, p0, Lcom/yftech/car/widget/media/view/MediaImageLoading;->mRotateAnimationTime:I

    invoke-static {p0, p1}, Lcom/yftech/car/widget/media/utils/AnimationUtil;->setRotationAnimation(Landroid/view/View;I)V

    .line 152
    :cond_0
    iget-object p1, p0, Lcom/yftech/car/widget/media/view/MediaImageLoading;->mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz p1, :cond_1

    .line 153
    iget-object p1, p0, Lcom/yftech/car/widget/media/view/MediaImageLoading;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/view/MediaImageLoading;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 154
    iget-object p1, p0, Lcom/yftech/car/widget/media/view/MediaImageLoading;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/view/MediaImageLoading;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 156
    :cond_1
    iget-object p1, p0, Lcom/yftech/car/widget/media/view/MediaImageLoading;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/view/MediaImageLoading;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 159
    :goto_0
    iget-object p1, p0, Lcom/yftech/car/widget/media/view/MediaImageLoading;->mText:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/view/MediaImageLoading;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 162
    :cond_2
    iget-object p1, p0, Lcom/yftech/car/widget/media/view/MediaImageLoading;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/view/MediaImageLoading;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 163
    iget-object p1, p0, Lcom/yftech/car/widget/media/view/MediaImageLoading;->mLoadingFinishDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/view/MediaImageLoading;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const-string p1, ""

    .line 164
    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/view/MediaImageLoading;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method
