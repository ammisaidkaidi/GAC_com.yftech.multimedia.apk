.class public Lcom/yftech/car/widget/media/music/button/MusicButton;
.super Landroidx/appcompat/widget/AppCompatButton;
.source "MusicButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/car/widget/media/music/button/MusicButton$OnClickFunctionListener;
    }
.end annotation


# static fields
.field public static final ALBUM:I = 0x3ec

.field public static final ARTIST:I = 0x3eb

.field public static final COLLECT:I = 0x3e8

.field public static final DIRECTORY:I = 0x3ee

.field private static final FAST_BACK:I = 0x8

.field private static final FAST_FORWARD:I = 0x7

.field public static final FOLDER:I = 0x3e9

.field public static final GENRE:I = 0x3ed

.field private static final NEXT:I = 0x2

.field private static final PAUSE:I = 0x1

.field private static final PLAY:I = 0x0

.field public static final PLAY_DIRECTORY_ALL:I = 0x9

.field public static final PLAY_LIST:I = 0x44c

.field public static final PLAY_PAUSE:I = 0x4

.field private static final PREVIOUS:I = 0x3

.field public static final SWITCH_COLLECT:I = 0x6

.field public static final SWITCH_MODE:I = 0x5

.field public static final SWITCH_USB1:I = 0x64

.field public static final SWITCH_USB2:I = 0x65

.field public static final SWITCH_USB3:I = 0x66

.field public static final SWITCH_USB4:I = 0x67

.field public static final SWITCH_USB5:I = 0x68

.field private static final TAG:Ljava/lang/String; = "MediaButton"

.field public static final TITLE:I = 0x3ea


# instance fields
.field private isActivatedStatus:Z

.field private mClickFunction:I

.field private mClickLongFunction:I

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mDrawableSelected:Landroid/graphics/drawable/Drawable;

.field private final mFastBackRunnable:Ljava/lang/Runnable;

.field private final mFastForwardRunnable:Ljava/lang/Runnable;

.field private mFunctionListener:Lcom/yftech/car/widget/media/music/button/MusicButton$OnClickFunctionListener;

.field private mListLoopDrawable:Landroid/graphics/drawable/Drawable;

.field private mListLoopText:Ljava/lang/String;

.field private mMediaDataListId:I

.field private final mOnClick:Landroid/view/View$OnClickListener;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private final mOnLongClick:Landroid/view/View$OnLongClickListener;

.field private mOnLongClickListener:Landroid/view/View$OnLongClickListener;

.field private final mOnTouchListener:Landroid/view/View$OnTouchListener;

.field private mPressKeyEvent:I

.field private mRandomPlayDrawable:Landroid/graphics/drawable/Drawable;

.field private mRandomPlayText:Ljava/lang/String;

.field private mSelected:Ljava/lang/String;

.field private mSequencePlayDrawable:Landroid/graphics/drawable/Drawable;

.field private mSequencePlayText:Ljava/lang/String;

.field private mSinglePlayDrawable:Landroid/graphics/drawable/Drawable;

.field private mSinglePlayText:Ljava/lang/String;

.field private mSwitchUsbPlay:Z

.field private mText:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 205
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 155
    iput p1, p0, Lcom/yftech/car/widget/media/music/button/MusicButton;->mClickLongFunction:I

    const-string v0, ""

    .line 160
    iput-object v0, p0, Lcom/yftech/car/widget/media/music/button/MusicButton;->mText:Ljava/lang/String;

    const/4 v0, 0x0

    .line 165
    iput-object v0, p0, Lcom/yftech/car/widget/media/music/button/MusicButton;->mSelected:Ljava/lang/String;

    .line 191
    iput p1, p0, Lcom/yftech/car/widget/media/music/button/MusicButton;->mPressKeyEvent:I

    .line 419
    new-instance p1, Lcom/yftech/car/widget/media/music/button/MusicButton$1;

    invoke-direct {p1, p0}, Lcom/yftech/car/widget/media/music/button/MusicButton$1;-><init>(Lcom/yftech/car/widget/media/music/button/MusicButton;)V

    iput-object p1, p0, Lcom/yftech/car/widget/media/music/button/MusicButton;->mOnClick:Landroid/view/View$OnClickListener;

    .line 450
    new-instance p1, Lcom/yftech/car/widget/media/music/button/MusicButton$2;

    invoke-direct {p1, p0}, Lcom/yftech/car/widget/media/music/button/MusicButton$2;-><init>(Lcom/yftech/car/widget/media/music/button/MusicButton;)V

    iput-object p1, p0, Lcom/yftech/car/widget/media/music/button/MusicButton;->mOnLongClick:Landroid/view/View$OnLongClickListener;

    .line 504
    new-instance p1, Lcom/yftech/car/widget/media/music/button/MusicButton$3;

    invoke-direct {p1, p0}, Lcom/yftech/car/widget/media/music/button/MusicButton$3;-><init>(Lcom/yftech/car/widget/media/music/button/MusicButton;)V

    iput-object p1, p0, Lcom/yftech/car/widget/media/music/button/MusicButton;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 560
    new-instance p1, Lcom/yftech/car/widget/media/music/button/MusicButton$4;

    invoke-direct {p1, p0}, Lcom/yftech/car/widget/media/music/button/MusicButton$4;-><init>(Lcom/yftech/car/widget/media/music/button/MusicButton;)V

    iput-object p1, p0, Lcom/yftech/car/widget/media/music/button/MusicButton;->mFastForwardRunnable:Ljava/lang/Runnable;

    .line 567
    new-instance p1, Lcom/yftech/car/widget/media/music/button/MusicButton$5;

    invoke-direct {p1, p0}, Lcom/yftech/car/widget/media/music/button/MusicButton$5;-><init>(Lcom/yftech/car/widget/media/music/button/MusicButton;)V

    iput-object p1, p0, Lcom/yftech/car/widget/media/music/button/MusicButton;->mFastBackRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 225
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    .line 155
    iput v0, p0, Lcom/yftech/car/widget/media/music/button/MusicButton;->mClickLongFunction:I

    const-string v1, ""

    .line 160
    iput-object v1, p0, Lcom/yftech/car/widget/media/music/button/MusicButton;->mText:Ljava/lang/String;

    const/4 v1, 0x0

    .line 165
    iput-object v1, p0, Lcom/yftech/car/widget/media/music/button/MusicButton;->mSelected:Ljava/lang/String;

    .line 191
    iput v0, p0, Lcom/yftech/car/widget/media/music/button/MusicButton;->mPressKeyEvent:I

    .line 419
    new-instance v0, Lcom/yftech/car/widget/media/music/button/MusicButton$1;

    invoke-direct {v0, p0}, Lcom/yftech/car/widget/media/music/button/MusicButton$1;-><init>(Lcom/yftech/car/widget/media/music/button/MusicButton;)V

    iput-object v0, p0, Lcom/yftech/car/widget/media/music/button/MusicButton;->mOnClick:Landroid/view/View$OnClickListener;

    .line 450
    new-instance v0, Lcom/yftech/car/widget/media/music/button/MusicButton$2;

    invoke-direct {v0, p0}, Lcom/yftech/car/widget/media/music/button/MusicButton$2;-><init>(Lcom/yftech/car/widget/media/music/button/MusicButton;)V

    iput-object v0, p0, Lcom/yftech/car/widget/media/music/button/MusicButton;->mOnLongClick:Landroid/view/View$OnLongClickListener;

    .line 504
    new-instance v0, Lcom/yftech/car/widget/media/music/button/MusicButton$3;

    invoke-direct {v0, p0}, Lcom/yftech/car/widget/media/music/button/MusicButton$3;-><init>(Lcom/yftech/car/widget/media/music/button/MusicButton;)V

    iput-object v0, p0, Lcom/yftech/car/widget/media/music/button/MusicButton;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 560
    new-instance v0, Lcom/yftech/car/widget/media/music/button/MusicButton$4;

    invoke-direct {v0, p0}, Lcom/yftech/car/widget/media/music/button/MusicButton$4;-><init>(Lcom/yftech/car/widget/media/music/button/MusicButton;)V

    iput-object v0, p0, Lcom/yftech/car/widget/media/music/button/MusicButton;->mFastForwardRunnable:Ljava/lang/Runnable;

    .line 567
    new-instance v0, Lcom/yftech/car/widget/media/music/button/MusicButton$5;

    invoke-direct {v0, p0}, Lcom/yftech/car/widget/media/music/button/MusicButton$5;-><init>(Lcom/yftech/car/widget/media/music/button/MusicButton;)V

    iput-object v0, p0, Lcom/yftech/car/widget/media/music/button/MusicButton;->mFastBackRunnable:Ljava/lang/Runnable;

    .line 226
    invoke-direct {p0, p1, p2}, Lcom/yftech/car/widget/media/music/button/MusicButton;->initStatus(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 250
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, -0x1

    .line 155
    iput p3, p0, Lcom/yftech/car/widget/media/music/button/MusicButton;->mClickLongFunction:I

    const-string v0, ""

    .line 160
    iput-object v0, p0, Lcom/yftech/car/widget/media/music/button/MusicButton;->mText:Ljava/lang/String;

    const/4 v0, 0x0

    .line 165
    iput-object v0, p0, Lcom/yftech/car/widget/media/music/button/MusicButton;->mSelected:Ljava/lang/String;

    .line 191
    iput p3, p0, Lcom/yftech/car/widget/media/music/button/MusicButton;->mPressKeyEvent:I

    .line 419
    new-instance p3, Lcom/yftech/car/widget/media/music/button/MusicButton$1;

    invoke-direct {p3, p0}, Lcom/yftech/car/widget/media/music/button/MusicButton$1;-><init>(Lcom/yftech/car/widget/media/music/button/MusicButton;)V

    iput-object p3, p0, Lcom/yftech/car/widget/media/music/button/MusicButton;->mOnClick:Landroid/view/View$OnClickListener;

    .line 450
    new-instance p3, Lcom/yftech/car/widget/media/music/button/MusicButton$2;

    invoke-direct {p3, p0}, Lcom/yftech/car/widget/media/music/button/MusicButton$2;-><init>(Lcom/yftech/car/widget/media/music/button/MusicButton;)V

    iput-object p3, p0, Lcom/yftech/car/widget/media/music/button/MusicButton;->mOnLongClick:Landroid/view/View$OnLongClickListener;

    .line 504
    new-instance p3, Lcom/yftech/car/widget/media/music/button/MusicButton$3;

    invoke-direct {p3, p0}, Lcom/yftech/car/widget/media/music/button/MusicButton$3;-><init>(Lcom/yftech/car/widget/media/music/button/MusicButton;)V

    iput-object p3, p0, Lcom/yftech/car/widget/media/music/button/MusicButton;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 560
    new-instance p3, Lcom/yftech/car/widget/media/music/button/MusicButton$4;

    invoke-direct {p3, p0}, Lcom/yftech/car/widget/media/music/button/MusicButton$4;-><init>(Lcom/yftech/car/widget/media/music/button/MusicButton;)V

    iput-object p3, p0, Lcom/yftech/car/widget/media/music/button/MusicButton;->mFastForwardRunnable:Ljava/lang/Runnable;

    .line 567
    new-instance p3, Lcom/yftech/car/widget/media/music/button/MusicButton$5;

    invoke-direct {p3, p0}, Lcom/yftech/car/widget/media/music/button/MusicButton$5;-><init>(Lcom/yftech/car/widget/media/music/button/MusicButton;)V

    iput-object p3, p0, Lcom/yftech/car/widget/media/music/button/MusicButton;->mFastBackRunnable:Ljava/lang/Runnable;

    .line 251
    invoke-direct {p0, p1, p2}, Lcom/yftech/car/widget/media/music/button/MusicButton;->initStatus(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lcom/yftech/car/widget/media/music/button/MusicButton;)I
    .locals 0

    .line 68
    iget p0, p0, Lcom/yftech/car/widget/media/music/button/MusicButton;->mClickFunction:I

    return p0
.end method

.method static synthetic access$100(Lcom/yftech/car/widget/media/music/button/MusicButton;)Z
    .locals 0

    .line 68
    iget-boolean p0, p0, Lcom/yftech/car/widget/media/music/button/MusicButton;->isActivatedStatus:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/yftech/car/widget/media/music/button/MusicButton;)I
    .locals 0

    .line 68
    iget p0, p0, Lcom/yftech/car/widget/media/music/button/MusicButton;->mPressKeyEvent:I

    return p0
.end method

.method static synthetic access$1002(Lcom/yftech/car/widget/media/music/button/MusicButton;I)I
    .locals 0

    .line 68
    iput p1, p0, Lcom/yftech/car/widget/media/music/button/MusicButton;->mPressKeyEvent:I

    return p1
.end method

.method static synthetic access$200(Lcom/yftech/car/widget/media/music/button/MusicButton;I)V
    .locals 0

    .line 68
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/music/button/MusicButton;->setClickFunction(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/yftech/car/widget/media/music/button/MusicButton;)Lcom/yftech/car/widget/media/music/button/MusicButton$OnClickFunctionListener;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/yftech/car/widget/media/music/button/MusicButton;->mFunctionListener:Lcom/yftech/car/widget/media/music/button/MusicButton$OnClickFunctionListener;

    return-object p0
.end method

.method static synthetic access$400(Lcom/yftech/car/widget/media/music/button/MusicButton;)I
    .locals 0

    .line 68
    iget p0, p0, Lcom/yftech/car/widget/media/music/button/MusicButton;->mMediaDataListId:I

    return p0
.end method

.method static synthetic access$500(Lcom/yftech/car/widget/media/music/button/MusicButton;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/yftech/car/widget/media/music/button/MusicButton;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method static synthetic access$600(Lcom/yftech/car/widget/media/music/button/MusicButton;)I
    .locals 0

    .line 68
    iget p0, p0, Lcom/yftech/car/widget/media/music/button/MusicButton;->mClickLongFunction:I

    return p0
.end method

.method static synthetic access$700(Lcom/yftech/car/widget/media/music/button/MusicButton;)Landroid/view/View$OnLongClickListener;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/yftech/car/widget/media/music/button/MusicButton;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    return-object p0
.end method

.method static synthetic access$800(Lcom/yftech/car/widget/media/music/button/MusicButton;)Ljava/lang/Runnable;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/yftech/car/widget/media/music/button/MusicButton;->mFastForwardRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$900(Lcom/yftech/car/widget/media/music/button/MusicButton;)Ljava/lang/Runnable;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/yftech/car/widget/media/music/button/MusicButton;->mFastBackRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method private initStatus(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 255
    sget-object v0, Lcom/yftech/car/widget/media/R$styleable;->MusicButton:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 256
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->MusicButton_music_click_function:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/yftech/car/widget/media/music/button/MusicButton;->mClickFunction:I

    .line 258
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->MusicButton_music_long_click_function:I

    const/4 v0, -0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/yftech/car/widget/media/music/button/MusicButton;->mClickLongFunction:I

    .line 260
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->MusicButton_music_background_activated:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/yftech/car/widget/media/music/button/MusicButton;->mDrawableSelected:Landroid/graphics/drawable/Drawable;

    .line 262
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->MusicButton_music_activated_text:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/yftech/car/widget/media/music/button/MusicButton;->mSelected:Ljava/lang/String;

    .line 264
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->MusicButton_music_list_loop_text:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/yftech/car/widget/media/music/button/MusicButton;->mListLoopText:Ljava/lang/String;

    .line 265
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->MusicButton_music_single_play_text:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/yftech/car/widget/media/music/button/MusicButton;->mSinglePlayText:Ljava/lang/String;

    .line 266
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->MusicButton_music_random_play_text:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/yftech/car/widget/media/music/button/MusicButton;->mRandomPlayText:Ljava/lang/String;

    .line 267
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->MusicButton_music_sequence_play_text:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/yftech/car/widget/media/music/button/MusicButton;->mSequencePlayText:Ljava/lang/String;

    .line 269
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->MusicButton_music_list_loop_drawable:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/yftech/car/widget/media/music/button/MusicButton;->mListLoopDrawable:Landroid/graphics/drawable/Drawable;

    .line 270
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->MusicButton_music_single_play_drawable:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/yftech/car/widget/media/music/button/MusicButton;->mSinglePlayDrawable:Landroid/graphics/drawable/Drawable;

    .line 271
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->MusicButton_music_random_play_drawable:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/yftech/car/widget/media/music/button/MusicButton;->mRandomPlayDrawable:Landroid/graphics/drawable/Drawable;

    .line 272
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->MusicButton_music_sequence_play_drawable:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/yftech/car/widget/media/music/button/MusicButton;->mSequencePlayDrawable:Landroid/graphics/drawable/Drawable;

    .line 274
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->MusicButton_music_media_data_list_id:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/yftech/car/widget/media/music/button/MusicButton;->mMediaDataListId:I

    .line 276
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->MusicButton_music_switch_usb_play:I

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/yftech/car/widget/media/music/button/MusicButton;->mSwitchUsbPlay:Z

    return-void
.end method

.method private setClickFunction(I)V
    .locals 3

    const-string v0, "MediaButton"

    .line 471
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setClickFunction: mClickFunction=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p1, :pswitch_data_0

    add-int/lit8 p1, p1, -0x64

    if-ltz p1, :cond_0

    const/4 v0, 0x4

    if-gt p1, v0, :cond_0

    .line 496
    iget-boolean p0, p0, Lcom/yftech/car/widget/media/music/button/MusicButton;->mSwitchUsbPlay:Z

    if-eqz p0, :cond_0

    .line 497
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MusicManager;->getInstance()Lcom/yftech/car/widget/media/manager/MusicManager;

    move-result-object p0

    int-to-byte p1, p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/yftech/car/widget/media/manager/MusicManager;->setCurrentUSB(BZ)V

    goto :goto_0

    .line 492
    :pswitch_0
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MusicManager;->getInstance()Lcom/yftech/car/widget/media/manager/MusicManager;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/manager/MusicManager;->addCollectItem(Lcom/yftech/car/media/data/entity/MediaFile;)V

    goto :goto_0

    .line 489
    :pswitch_1
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MusicManager;->getInstance()Lcom/yftech/car/widget/media/manager/MusicManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/manager/MusicManager;->switchPlayMode()V

    goto :goto_0

    .line 486
    :pswitch_2
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MusicManager;->getInstance()Lcom/yftech/car/widget/media/manager/MusicManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/manager/MusicManager;->switchPlayPause()V

    goto :goto_0

    .line 483
    :pswitch_3
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MusicManager;->getInstance()Lcom/yftech/car/widget/media/manager/MusicManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/manager/MusicManager;->previous()V

    goto :goto_0

    .line 480
    :pswitch_4
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MusicManager;->getInstance()Lcom/yftech/car/widget/media/manager/MusicManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/manager/MusicManager;->next()V

    goto :goto_0

    .line 477
    :pswitch_5
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MusicManager;->getInstance()Lcom/yftech/car/widget/media/manager/MusicManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/manager/MusicManager;->pause()V

    goto :goto_0

    .line 474
    :pswitch_6
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MusicManager;->getInstance()Lcom/yftech/car/widget/media/manager/MusicManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/manager/MusicManager;->play()V

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public isActivatedStatus()Z
    .locals 0

    .line 378
    iget-boolean p0, p0, Lcom/yftech/car/widget/media/music/button/MusicButton;->isActivatedStatus:Z

    return p0
.end method

.method public isFunction(I)Z
    .locals 1

    .line 369
    iget v0, p0, Lcom/yftech/car/widget/media/music/button/MusicButton;->mClickFunction:I

    if-eq v0, p1, :cond_1

    iget p0, p0, Lcom/yftech/car/widget/media/music/button/MusicButton;->mClickLongFunction:I

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

.method public isUsbFunction()Z
    .locals 2

    .line 373
    iget v0, p0, Lcom/yftech/car/widget/media/music/button/MusicButton;->mClickFunction:I

    add-int/lit8 v0, v0, -0x64

    const/4 v1, 0x4

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/yftech/car/widget/media/music/button/MusicButton;->mClickFunction:I

    add-int/lit8 v0, v0, -0x64

    if-le v0, v1, :cond_1

    :cond_0
    iget v0, p0, Lcom/yftech/car/widget/media/music/button/MusicButton;->mClickLongFunction:I

    add-int/lit8 v0, v0, -0x64

    if-ltz v0, :cond_2

    iget p0, p0, Lcom/yftech/car/widget/media/music/button/MusicButton;->mClickLongFunction:I

    add-int/lit8 p0, p0, -0x64

    if-gt p0, v1, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .line 393
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatButton;->onAttachedToWindow()V

    const-string v0, "MediaButton"

    .line 394
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAttachedToWindow: mClickFunction=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/yftech/car/widget/media/music/button/MusicButton;->mClickFunction:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    iget v0, p0, Lcom/yftech/car/widget/media/music/button/MusicButton;->mClickFunction:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 400
    :pswitch_0
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MusicManager;->getInstance()Lcom/yftech/car/widget/media/manager/MusicManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/manager/MusicManager;->getPlayMusic()Lcom/yftech/car/media/data/entity/MediaFile;

    move-result-object v0

    .line 401
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MusicManager;->getInstance()Lcom/yftech/car/widget/media/manager/MusicManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/yftech/car/widget/media/manager/MusicManager;->isCollectMusic(Lcom/yftech/car/media/data/entity/MediaFile;)Z

    move-result v0

    .line 402
    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/music/button/MusicButton;->setActivatedStatus(Z)V

    goto :goto_0

    .line 405
    :pswitch_1
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MusicManager;->getInstance()Lcom/yftech/car/widget/media/manager/MusicManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/manager/MusicManager;->getPlayMode()I

    move-result v0

    .line 406
    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/music/button/MusicButton;->updatePlayMode(I)V

    goto :goto_0

    .line 397
    :pswitch_2
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MusicManager;->getInstance()Lcom/yftech/car/widget/media/manager/MusicManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/manager/MusicManager;->isPlaying()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/music/button/MusicButton;->setActivatedStatus(Z)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 415
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatButton;->onDetachedFromWindow()V

    const-string p0, "MediaButton"

    const-string v0, "onDetachedFromWindow: "

    .line 416
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .line 283
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatButton;->onFinishInflate()V

    const-string v0, "MediaButton"

    const-string v1, "onFinishInflate: "

    .line 284
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/music/button/MusicButton;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 287
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/car/widget/media/music/button/MusicButton;->mText:Ljava/lang/String;

    .line 289
    :cond_0
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/music/button/MusicButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/car/widget/media/music/button/MusicButton;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 290
    iget-object v0, p0, Lcom/yftech/car/widget/media/music/button/MusicButton;->mOnClick:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/music/button/MusicButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x0

    .line 292
    iget v1, p0, Lcom/yftech/car/widget/media/music/button/MusicButton;->mClickFunction:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 297
    :pswitch_0
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MusicManager;->getInstance()Lcom/yftech/car/widget/media/manager/MusicManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/manager/MusicManager;->getPlayMusic()Lcom/yftech/car/media/data/entity/MediaFile;

    move-result-object v0

    .line 298
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MusicManager;->getInstance()Lcom/yftech/car/widget/media/manager/MusicManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/yftech/car/widget/media/manager/MusicManager;->isCollectMusic(Lcom/yftech/car/media/data/entity/MediaFile;)Z

    move-result v1

    .line 299
    invoke-virtual {p0, v1}, Lcom/yftech/car/widget/media/music/button/MusicButton;->setActivatedStatus(Z)V

    goto :goto_0

    .line 302
    :pswitch_1
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MusicManager;->getInstance()Lcom/yftech/car/widget/media/manager/MusicManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yftech/car/widget/media/manager/MusicManager;->getPlayMode()I

    move-result v1

    .line 303
    invoke-virtual {p0, v1}, Lcom/yftech/car/widget/media/music/button/MusicButton;->updatePlayMode(I)V

    goto :goto_0

    .line 294
    :pswitch_2
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MusicManager;->getInstance()Lcom/yftech/car/widget/media/manager/MusicManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yftech/car/widget/media/manager/MusicManager;->isPlaying()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/yftech/car/widget/media/music/button/MusicButton;->setActivatedStatus(Z)V

    .line 309
    :goto_0
    iget v1, p0, Lcom/yftech/car/widget/media/music/button/MusicButton;->mClickLongFunction:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 310
    iget-object v1, p0, Lcom/yftech/car/widget/media/music/button/MusicButton;->mOnLongClick:Landroid/view/View$OnLongClickListener;

    invoke-virtual {p0, v1}, Lcom/yftech/car/widget/media/music/button/MusicButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 313
    :cond_1
    iget v1, p0, Lcom/yftech/car/widget/media/music/button/MusicButton;->mClickFunction:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_2

    iget v1, p0, Lcom/yftech/car/widget/media/music/button/MusicButton;->mClickFunction:I

    const/16 v3, 0x8

    if-eq v1, v3, :cond_2

    iget v1, p0, Lcom/yftech/car/widget/media/music/button/MusicButton;->mClickLongFunction:I

    if-eq v1, v2, :cond_2

    iget v1, p0, Lcom/yftech/car/widget/media/music/button/MusicButton;->mClickLongFunction:I

    if-ne v1, v3, :cond_3

    .line 314
    :cond_2
    iget-object v1, p0, Lcom/yftech/car/widget/media/music/button/MusicButton;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {p0, v1}, Lcom/yftech/car/widget/media/music/button/MusicButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 317
    :cond_3
    iget v1, p0, Lcom/yftech/car/widget/media/music/button/MusicButton;->mClickFunction:I

    add-int/lit8 v1, v1, -0x64

    if-gez v1, :cond_4

    iget v1, p0, Lcom/yftech/car/widget/media/music/button/MusicButton;->mClickLongFunction:I

    add-int/lit8 v1, v1, -0x64

    const/4 v2, 0x4

    if-lt v1, v2, :cond_6

    :cond_4
    if-nez v0, :cond_5

    .line 319
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MusicManager;->getInstance()Lcom/yftech/car/widget/media/manager/MusicManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/manager/MusicManager;->getPlayMusic()Lcom/yftech/car/media/data/entity/MediaFile;

    move-result-object v0

    .line 321
    :cond_5
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getInstance()Lcom/yftech/car/widget/media/manager/MediaDataManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/yftech/car/media/data/entity/MediaFile;->getData()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getUsbIndex(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/music/button/MusicButton;->setUsbStatus(I)V

    :cond_6
    return-void

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setActivatedStatus(Z)V
    .locals 1

    .line 382
    iput-boolean p1, p0, Lcom/yftech/car/widget/media/music/button/MusicButton;->isActivatedStatus:Z

    .line 383
    iget-object v0, p0, Lcom/yftech/car/widget/media/music/button/MusicButton;->mDrawableSelected:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 384
    iget-object v0, p0, Lcom/yftech/car/widget/media/music/button/MusicButton;->mDrawableSelected:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/music/button/MusicButton;->mDrawable:Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/music/button/MusicButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 386
    :cond_1
    iget-object v0, p0, Lcom/yftech/car/widget/media/music/button/MusicButton;->mSelected:Ljava/lang/String;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    .line 387
    iget-object p1, p0, Lcom/yftech/car/widget/media/music/button/MusicButton;->mSelected:Ljava/lang/String;

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/yftech/car/widget/media/music/button/MusicButton;->mText:Ljava/lang/String;

    :goto_1
    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/music/button/MusicButton;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method

.method public setMusicOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 447
    iput-object p1, p0, Lcom/yftech/car/widget/media/music/button/MusicButton;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setOnClickFunctionListener(Lcom/yftech/car/widget/media/music/button/MusicButton$OnClickFunctionListener;)V
    .locals 0

    .line 326
    iput-object p1, p0, Lcom/yftech/car/widget/media/music/button/MusicButton;->mFunctionListener:Lcom/yftech/car/widget/media/music/button/MusicButton$OnClickFunctionListener;

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1    # Landroid/view/View$OnClickListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 438
    iget-object v0, p0, Lcom/yftech/car/widget/media/music/button/MusicButton;->mOnClick:Landroid/view/View$OnClickListener;

    if-ne p1, v0, :cond_0

    .line 439
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 441
    :cond_0
    iput-object p1, p0, Lcom/yftech/car/widget/media/music/button/MusicButton;->mOnClickListener:Landroid/view/View$OnClickListener;

    :goto_0
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 1
    .param p1    # Landroid/view/View$OnLongClickListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 463
    iget-object v0, p0, Lcom/yftech/car/widget/media/music/button/MusicButton;->mOnLongClick:Landroid/view/View$OnLongClickListener;

    if-ne v0, p1, :cond_0

    .line 464
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_0

    .line 466
    :cond_0
    iput-object p1, p0, Lcom/yftech/car/widget/media/music/button/MusicButton;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    :goto_0
    return-void
.end method

.method public setUsbStatus(I)V
    .locals 1

    .line 331
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/music/button/MusicButton;->isUsbFunction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 332
    iget v0, p0, Lcom/yftech/car/widget/media/music/button/MusicButton;->mClickFunction:I

    add-int/lit8 v0, v0, -0x64

    if-eq v0, p1, :cond_1

    iget v0, p0, Lcom/yftech/car/widget/media/music/button/MusicButton;->mClickLongFunction:I

    add-int/lit8 v0, v0, -0x64

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/music/button/MusicButton;->setActivatedStatus(Z)V

    :cond_2
    return-void
.end method

.method public updatePlayMode(I)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    const-string p0, "MediaButton"

    .line 363
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFinishInflate: playMode=="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 357
    :pswitch_0
    iget-object p1, p0, Lcom/yftech/car/widget/media/music/button/MusicButton;->mSequencePlayText:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/music/button/MusicButton;->setText(Ljava/lang/CharSequence;)V

    .line 358
    iget-object p1, p0, Lcom/yftech/car/widget/media/music/button/MusicButton;->mSequencePlayDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    .line 359
    iget-object p1, p0, Lcom/yftech/car/widget/media/music/button/MusicButton;->mSequencePlayDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/music/button/MusicButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 351
    :pswitch_1
    iget-object p1, p0, Lcom/yftech/car/widget/media/music/button/MusicButton;->mRandomPlayText:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/music/button/MusicButton;->setText(Ljava/lang/CharSequence;)V

    .line 352
    iget-object p1, p0, Lcom/yftech/car/widget/media/music/button/MusicButton;->mRandomPlayDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    .line 353
    iget-object p1, p0, Lcom/yftech/car/widget/media/music/button/MusicButton;->mRandomPlayDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/music/button/MusicButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 345
    :pswitch_2
    iget-object p1, p0, Lcom/yftech/car/widget/media/music/button/MusicButton;->mSinglePlayText:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/music/button/MusicButton;->setText(Ljava/lang/CharSequence;)V

    .line 346
    iget-object p1, p0, Lcom/yftech/car/widget/media/music/button/MusicButton;->mSinglePlayDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    .line 347
    iget-object p1, p0, Lcom/yftech/car/widget/media/music/button/MusicButton;->mSinglePlayDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/music/button/MusicButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 339
    :pswitch_3
    iget-object p1, p0, Lcom/yftech/car/widget/media/music/button/MusicButton;->mListLoopText:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/music/button/MusicButton;->setText(Ljava/lang/CharSequence;)V

    .line 340
    iget-object p1, p0, Lcom/yftech/car/widget/media/music/button/MusicButton;->mListLoopDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    .line 341
    iget-object p1, p0, Lcom/yftech/car/widget/media/music/button/MusicButton;->mListLoopDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/music/button/MusicButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
