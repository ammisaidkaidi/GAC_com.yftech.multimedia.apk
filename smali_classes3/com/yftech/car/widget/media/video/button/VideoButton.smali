.class public Lcom/yftech/car/widget/media/video/button/VideoButton;
.super Landroidx/appcompat/widget/AppCompatButton;
.source "VideoButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/car/widget/media/video/button/VideoButton$OnClickFunctionListener;
    }
.end annotation


# static fields
.field public static final ALBUM:I = 0x3ec

.field public static final ARTIST:I = 0x3eb

.field public static final DIRECTORY:I = 0x3ee

.field public static final FOLDER:I = 0x3e9

.field public static final GENRE:I = 0x3ed

.field public static final NEXT:I = 0x2

.field public static final PAUSE:I = 0x1

.field public static final PLAY:I = 0x0

.field public static final PLAY_LIST:I = 0x44c

.field public static final PLAY_PAUSE:I = 0x4

.field public static final PREVIOUS:I = 0x3

.field public static final SWITCH_MODE:I = 0x5

.field public static final SWITCH_SCALE:I = 0x6

.field public static final SWITCH_USB1:I = 0x64

.field public static final SWITCH_USB2:I = 0x65

.field public static final SWITCH_USB3:I = 0x66

.field public static final SWITCH_USB4:I = 0x67

.field public static final SWITCH_USB5:I = 0x68

.field private static final TAG:Ljava/lang/String; = "MediaButton"

.field public static final TITLE:I = 0x3ea


# instance fields
.field private mAdaptationDrawable:Landroid/graphics/drawable/Drawable;

.field private mAdaptationText:Ljava/lang/String;

.field private mClickFunction:I

.field private mClickLongFunction:I

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mDrawableSelected:Landroid/graphics/drawable/Drawable;

.field private mFullScreenDrawable:Landroid/graphics/drawable/Drawable;

.field private mFullScreenText:Ljava/lang/String;

.field private mFunctionListener:Lcom/yftech/car/widget/media/video/button/VideoButton$OnClickFunctionListener;

.field private mListLoopDrawable:Landroid/graphics/drawable/Drawable;

.field private mListLoopText:Ljava/lang/String;

.field private mMediaDataListId:I

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mOneToOneDrawable:Landroid/graphics/drawable/Drawable;

.field private mOneToOneText:Ljava/lang/String;

.field private mRandomPlayDrawable:Landroid/graphics/drawable/Drawable;

.field private mRandomPlayText:Ljava/lang/String;

.field private mSelected:Ljava/lang/String;

.field private mSequencePlayDrawable:Landroid/graphics/drawable/Drawable;

.field private mSequencePlayText:Ljava/lang/String;

.field private mSinglePlayDrawable:Landroid/graphics/drawable/Drawable;

.field private mSinglePlayText:Ljava/lang/String;

.field private mText:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 191
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 130
    iput p1, p0, Lcom/yftech/car/widget/media/video/button/VideoButton;->mClickLongFunction:I

    const-string p1, ""

    .line 135
    iput-object p1, p0, Lcom/yftech/car/widget/media/video/button/VideoButton;->mText:Ljava/lang/String;

    const/4 p1, 0x0

    .line 140
    iput-object p1, p0, Lcom/yftech/car/widget/media/video/button/VideoButton;->mSelected:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 211
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    .line 130
    iput v0, p0, Lcom/yftech/car/widget/media/video/button/VideoButton;->mClickLongFunction:I

    const-string v0, ""

    .line 135
    iput-object v0, p0, Lcom/yftech/car/widget/media/video/button/VideoButton;->mText:Ljava/lang/String;

    const/4 v0, 0x0

    .line 140
    iput-object v0, p0, Lcom/yftech/car/widget/media/video/button/VideoButton;->mSelected:Ljava/lang/String;

    .line 212
    invoke-direct {p0, p1, p2}, Lcom/yftech/car/widget/media/video/button/VideoButton;->initStatus(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 236
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, -0x1

    .line 130
    iput p3, p0, Lcom/yftech/car/widget/media/video/button/VideoButton;->mClickLongFunction:I

    const-string p3, ""

    .line 135
    iput-object p3, p0, Lcom/yftech/car/widget/media/video/button/VideoButton;->mText:Ljava/lang/String;

    const/4 p3, 0x0

    .line 140
    iput-object p3, p0, Lcom/yftech/car/widget/media/video/button/VideoButton;->mSelected:Ljava/lang/String;

    .line 237
    invoke-direct {p0, p1, p2}, Lcom/yftech/car/widget/media/video/button/VideoButton;->initStatus(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private initStatus(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 241
    sget-object v0, Lcom/yftech/car/widget/media/R$styleable;->VideoButton:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 242
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->VideoButton_video_click_function:I

    const/4 v0, -0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/yftech/car/widget/media/video/button/VideoButton;->mClickFunction:I

    .line 244
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->VideoButton_video_long_click_function:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/yftech/car/widget/media/video/button/VideoButton;->mClickLongFunction:I

    .line 246
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->VideoButton_video_background_activated:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/yftech/car/widget/media/video/button/VideoButton;->mDrawableSelected:Landroid/graphics/drawable/Drawable;

    .line 248
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->VideoButton_video_activated_text:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/yftech/car/widget/media/video/button/VideoButton;->mSelected:Ljava/lang/String;

    .line 250
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->VideoButton_video_list_loop_text:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/yftech/car/widget/media/video/button/VideoButton;->mListLoopText:Ljava/lang/String;

    .line 251
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->VideoButton_video_single_play_text:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/yftech/car/widget/media/video/button/VideoButton;->mSinglePlayText:Ljava/lang/String;

    .line 252
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->VideoButton_video_random_play_text:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/yftech/car/widget/media/video/button/VideoButton;->mRandomPlayText:Ljava/lang/String;

    .line 253
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->VideoButton_video_sequence_play_text:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/yftech/car/widget/media/video/button/VideoButton;->mSequencePlayText:Ljava/lang/String;

    .line 255
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->VideoButton_video_list_loop_drawable:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/yftech/car/widget/media/video/button/VideoButton;->mListLoopDrawable:Landroid/graphics/drawable/Drawable;

    .line 256
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->VideoButton_video_single_play_drawable:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/yftech/car/widget/media/video/button/VideoButton;->mSinglePlayDrawable:Landroid/graphics/drawable/Drawable;

    .line 257
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->VideoButton_video_random_play_drawable:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/yftech/car/widget/media/video/button/VideoButton;->mRandomPlayDrawable:Landroid/graphics/drawable/Drawable;

    .line 258
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->VideoButton_video_sequence_play_drawable:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/yftech/car/widget/media/video/button/VideoButton;->mSequencePlayDrawable:Landroid/graphics/drawable/Drawable;

    .line 260
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->VideoButton_video_adaptation_text:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/yftech/car/widget/media/video/button/VideoButton;->mAdaptationText:Ljava/lang/String;

    .line 261
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->VideoButton_video_full_screen_text:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/yftech/car/widget/media/video/button/VideoButton;->mFullScreenText:Ljava/lang/String;

    .line 262
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->VideoButton_video_one_to_one_text:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/yftech/car/widget/media/video/button/VideoButton;->mOneToOneText:Ljava/lang/String;

    .line 264
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->VideoButton_video_adaptation_drawable:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/yftech/car/widget/media/video/button/VideoButton;->mAdaptationDrawable:Landroid/graphics/drawable/Drawable;

    .line 265
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->VideoButton_video_full_screen_drawable:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/yftech/car/widget/media/video/button/VideoButton;->mFullScreenDrawable:Landroid/graphics/drawable/Drawable;

    .line 266
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->VideoButton_video_one_to_one_drawable:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/yftech/car/widget/media/video/button/VideoButton;->mOneToOneDrawable:Landroid/graphics/drawable/Drawable;

    .line 268
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->VideoButton_video_media_data_list_id:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    iput p1, p0, Lcom/yftech/car/widget/media/video/button/VideoButton;->mMediaDataListId:I

    return-void
.end method


# virtual methods
.method public isFunction(I)Z
    .locals 1

    .line 394
    iget v0, p0, Lcom/yftech/car/widget/media/video/button/VideoButton;->mClickFunction:I

    if-eq v0, p1, :cond_1

    iget p0, p0, Lcom/yftech/car/widget/media/video/button/VideoButton;->mClickLongFunction:I

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

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 419
    iget v0, p0, Lcom/yftech/car/widget/media/video/button/VideoButton;->mClickFunction:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 420
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/button/VideoButton;->mFunctionListener:Lcom/yftech/car/widget/media/video/button/VideoButton$OnClickFunctionListener;

    if-eqz v0, :cond_0

    .line 421
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/button/VideoButton;->mFunctionListener:Lcom/yftech/car/widget/media/video/button/VideoButton$OnClickFunctionListener;

    iget v1, p0, Lcom/yftech/car/widget/media/video/button/VideoButton;->mMediaDataListId:I

    iget v2, p0, Lcom/yftech/car/widget/media/video/button/VideoButton;->mClickFunction:I

    invoke-interface {v0, v1, v2}, Lcom/yftech/car/widget/media/video/button/VideoButton$OnClickFunctionListener;->onClickFunction(II)V

    .line 425
    :cond_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/button/VideoButton;->mOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_1

    .line 426
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/button/VideoButton;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {p0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 408
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatButton;->onDetachedFromWindow()V

    const-string p0, "MediaButton"

    const-string v0, "onDetachedFromWindow: "

    .line 409
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 275
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatButton;->onFinishInflate()V

    const-string v0, "MediaButton"

    const-string v1, "onFinishInflate: "

    .line 276
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/video/button/VideoButton;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 279
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/car/widget/media/video/button/VideoButton;->mText:Ljava/lang/String;

    .line 281
    :cond_0
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/video/button/VideoButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/car/widget/media/video/button/VideoButton;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 282
    invoke-virtual {p0, p0}, Lcom/yftech/car/widget/media/video/button/VideoButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    .line 442
    iget p1, p0, Lcom/yftech/car/widget/media/video/button/VideoButton;->mClickLongFunction:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 443
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/button/VideoButton;->mFunctionListener:Lcom/yftech/car/widget/media/video/button/VideoButton$OnClickFunctionListener;

    if-eqz p1, :cond_0

    .line 444
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/button/VideoButton;->mFunctionListener:Lcom/yftech/car/widget/media/video/button/VideoButton$OnClickFunctionListener;

    iget v0, p0, Lcom/yftech/car/widget/media/video/button/VideoButton;->mMediaDataListId:I

    iget p0, p0, Lcom/yftech/car/widget/media/video/button/VideoButton;->mClickLongFunction:I

    invoke-interface {p1, v0, p0}, Lcom/yftech/car/widget/media/video/button/VideoButton$OnClickFunctionListener;->onClickFunction(II)V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public setActivatedStatus(Z)V
    .locals 1

    .line 398
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/button/VideoButton;->mDrawableSelected:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 399
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/button/VideoButton;->mDrawableSelected:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/button/VideoButton;->mDrawable:Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/video/button/VideoButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 401
    :cond_1
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/button/VideoButton;->mSelected:Ljava/lang/String;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    .line 402
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/button/VideoButton;->mSelected:Ljava/lang/String;

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/button/VideoButton;->mText:Ljava/lang/String;

    :goto_1
    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/video/button/VideoButton;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method

.method public setOnClickFunctionListener(Lcom/yftech/car/widget/media/video/button/VideoButton$OnClickFunctionListener;)V
    .locals 0

    .line 287
    iput-object p1, p0, Lcom/yftech/car/widget/media/video/button/VideoButton;->mFunctionListener:Lcom/yftech/car/widget/media/video/button/VideoButton$OnClickFunctionListener;

    return-void
.end method

.method public setUsbStatus(I)V
    .locals 0

    return-void
.end method

.method public setVideoOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 431
    iput-object p1, p0, Lcom/yftech/car/widget/media/video/button/VideoButton;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setVideoPlayer(Lcom/yftech/car/widget/media/video/BaseVideo;)V
    .locals 2

    .line 303
    iget v0, p0, Lcom/yftech/car/widget/media/video/button/VideoButton;->mClickFunction:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 p1, 0x6

    goto :goto_0

    .line 305
    :cond_0
    invoke-virtual {p1}, Lcom/yftech/car/widget/media/video/BaseVideo;->isPlaying()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/video/button/VideoButton;->setActivatedStatus(Z)V

    .line 318
    :goto_0
    iget p1, p0, Lcom/yftech/car/widget/media/video/button/VideoButton;->mClickLongFunction:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    .line 319
    invoke-virtual {p0, p0}, Lcom/yftech/car/widget/media/video/button/VideoButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_1
    return-void
.end method

.method public updatePlayMode(I)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    const-string p0, "MediaButton"

    .line 361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updatePlayMode: playMode=="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 355
    :pswitch_0
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/button/VideoButton;->mSequencePlayText:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/video/button/VideoButton;->setText(Ljava/lang/CharSequence;)V

    .line 356
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/button/VideoButton;->mSequencePlayDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    .line 357
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/button/VideoButton;->mSequencePlayDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/video/button/VideoButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 349
    :pswitch_1
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/button/VideoButton;->mRandomPlayText:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/video/button/VideoButton;->setText(Ljava/lang/CharSequence;)V

    .line 350
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/button/VideoButton;->mRandomPlayDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    .line 351
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/button/VideoButton;->mRandomPlayDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/video/button/VideoButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 343
    :pswitch_2
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/button/VideoButton;->mSinglePlayText:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/video/button/VideoButton;->setText(Ljava/lang/CharSequence;)V

    .line 344
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/button/VideoButton;->mSinglePlayDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    .line 345
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/button/VideoButton;->mSinglePlayDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/video/button/VideoButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 337
    :pswitch_3
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/button/VideoButton;->mListLoopText:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/video/button/VideoButton;->setText(Ljava/lang/CharSequence;)V

    .line 338
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/button/VideoButton;->mListLoopDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    .line 339
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/button/VideoButton;->mListLoopDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/video/button/VideoButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public updatePlayScale(I)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    const-string p0, "MediaButton"

    .line 388
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updatePlayScale: playScale=="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 382
    :pswitch_0
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/button/VideoButton;->mOneToOneText:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/video/button/VideoButton;->setText(Ljava/lang/CharSequence;)V

    .line 383
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/button/VideoButton;->mOneToOneDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    .line 384
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/button/VideoButton;->mOneToOneDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/video/button/VideoButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 376
    :pswitch_1
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/button/VideoButton;->mFullScreenText:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/video/button/VideoButton;->setText(Ljava/lang/CharSequence;)V

    .line 377
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/button/VideoButton;->mFullScreenDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    .line 378
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/button/VideoButton;->mFullScreenDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/video/button/VideoButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 370
    :pswitch_2
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/button/VideoButton;->mAdaptationText:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/video/button/VideoButton;->setText(Ljava/lang/CharSequence;)V

    .line 371
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/button/VideoButton;->mAdaptationDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    .line 372
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/button/VideoButton;->mAdaptationDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/video/button/VideoButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
