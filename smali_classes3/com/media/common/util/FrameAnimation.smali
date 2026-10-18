.class public Lcom/media/common/util/FrameAnimation;
.super Ljava/lang/Object;
.source "FrameAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/media/common/util/FrameAnimation$AnimationListener;
    }
.end annotation


# static fields
.field private static final SELECTED_A:I = 0x1

.field private static final SELECTED_B:I = 0x2

.field private static final SELECTED_C:I = 0x3

.field private static final SELECTED_D:I = 0x4


# instance fields
.field private mAnimationListener:Lcom/media/common/util/FrameAnimation$AnimationListener;

.field private mCurrentFrame:I

.field private mCurrentSelect:I

.field private mDelay:I

.field private mDuration:I

.field private mDurations:[I

.field private mFrameRess:[I

.field private mImageView:Landroid/widget/ImageView;

.field private mIsRepeat:Z

.field private mLastFrame:I

.field private mNext:Z

.field private mPause:Z


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;[III)V
    .locals 0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lcom/media/common/util/FrameAnimation;->mImageView:Landroid/widget/ImageView;

    .line 89
    iput-object p2, p0, Lcom/media/common/util/FrameAnimation;->mFrameRess:[I

    .line 90
    iput p3, p0, Lcom/media/common/util/FrameAnimation;->mDuration:I

    .line 91
    iput p4, p0, Lcom/media/common/util/FrameAnimation;->mDelay:I

    .line 92
    array-length p1, p2

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/media/common/util/FrameAnimation;->mLastFrame:I

    const/4 p1, 0x0

    .line 93
    invoke-direct {p0, p1}, Lcom/media/common/util/FrameAnimation;->playAndDelay(I)V

    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;[IIZ)V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/media/common/util/FrameAnimation;->mImageView:Landroid/widget/ImageView;

    .line 57
    iput-object p2, p0, Lcom/media/common/util/FrameAnimation;->mFrameRess:[I

    .line 58
    iput p3, p0, Lcom/media/common/util/FrameAnimation;->mDuration:I

    .line 59
    array-length p1, p2

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/media/common/util/FrameAnimation;->mLastFrame:I

    .line 60
    iput-boolean p4, p0, Lcom/media/common/util/FrameAnimation;->mIsRepeat:Z

    const/4 p1, 0x0

    .line 61
    invoke-direct {p0, p1}, Lcom/media/common/util/FrameAnimation;->play(I)V

    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;[I[II)V
    .locals 0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-object p1, p0, Lcom/media/common/util/FrameAnimation;->mImageView:Landroid/widget/ImageView;

    .line 106
    iput-object p2, p0, Lcom/media/common/util/FrameAnimation;->mFrameRess:[I

    .line 107
    iput-object p3, p0, Lcom/media/common/util/FrameAnimation;->mDurations:[I

    .line 108
    iput p4, p0, Lcom/media/common/util/FrameAnimation;->mDelay:I

    .line 109
    array-length p1, p2

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/media/common/util/FrameAnimation;->mLastFrame:I

    const/4 p1, 0x0

    .line 110
    invoke-direct {p0, p1}, Lcom/media/common/util/FrameAnimation;->playByDurationsAndDelay(I)V

    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;[I[IZ)V
    .locals 0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/media/common/util/FrameAnimation;->mImageView:Landroid/widget/ImageView;

    .line 72
    iput-object p2, p0, Lcom/media/common/util/FrameAnimation;->mFrameRess:[I

    .line 73
    iput-object p3, p0, Lcom/media/common/util/FrameAnimation;->mDurations:[I

    .line 74
    array-length p1, p2

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/media/common/util/FrameAnimation;->mLastFrame:I

    .line 75
    iput-boolean p4, p0, Lcom/media/common/util/FrameAnimation;->mIsRepeat:Z

    const/4 p1, 0x0

    .line 76
    invoke-direct {p0, p1}, Lcom/media/common/util/FrameAnimation;->playByDurations(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/media/common/util/FrameAnimation;)Z
    .locals 0

    .line 5
    iget-boolean p0, p0, Lcom/media/common/util/FrameAnimation;->mPause:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/media/common/util/FrameAnimation;)Z
    .locals 0

    .line 5
    iget-boolean p0, p0, Lcom/media/common/util/FrameAnimation;->mIsRepeat:Z

    return p0
.end method

.method static synthetic access$102(Lcom/media/common/util/FrameAnimation;I)I
    .locals 0

    .line 5
    iput p1, p0, Lcom/media/common/util/FrameAnimation;->mCurrentSelect:I

    return p1
.end method

.method static synthetic access$1100(Lcom/media/common/util/FrameAnimation;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lcom/media/common/util/FrameAnimation;->playByDurations(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/media/common/util/FrameAnimation;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lcom/media/common/util/FrameAnimation;->play(I)V

    return-void
.end method

.method static synthetic access$202(Lcom/media/common/util/FrameAnimation;I)I
    .locals 0

    .line 5
    iput p1, p0, Lcom/media/common/util/FrameAnimation;->mCurrentFrame:I

    return p1
.end method

.method static synthetic access$300(Lcom/media/common/util/FrameAnimation;)Lcom/media/common/util/FrameAnimation$AnimationListener;
    .locals 0

    .line 5
    iget-object p0, p0, Lcom/media/common/util/FrameAnimation;->mAnimationListener:Lcom/media/common/util/FrameAnimation$AnimationListener;

    return-object p0
.end method

.method static synthetic access$400(Lcom/media/common/util/FrameAnimation;)[I
    .locals 0

    .line 5
    iget-object p0, p0, Lcom/media/common/util/FrameAnimation;->mFrameRess:[I

    return-object p0
.end method

.method static synthetic access$500(Lcom/media/common/util/FrameAnimation;)Landroid/widget/ImageView;
    .locals 0

    .line 5
    iget-object p0, p0, Lcom/media/common/util/FrameAnimation;->mImageView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/media/common/util/FrameAnimation;)I
    .locals 0

    .line 5
    iget p0, p0, Lcom/media/common/util/FrameAnimation;->mLastFrame:I

    return p0
.end method

.method static synthetic access$702(Lcom/media/common/util/FrameAnimation;Z)Z
    .locals 0

    .line 5
    iput-boolean p1, p0, Lcom/media/common/util/FrameAnimation;->mNext:Z

    return p1
.end method

.method static synthetic access$800(Lcom/media/common/util/FrameAnimation;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lcom/media/common/util/FrameAnimation;->playByDurationsAndDelay(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/media/common/util/FrameAnimation;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lcom/media/common/util/FrameAnimation;->playAndDelay(I)V

    return-void
.end method

.method private play(I)V
    .locals 2

    .line 217
    iget-object v0, p0, Lcom/media/common/util/FrameAnimation;->mImageView:Landroid/widget/ImageView;

    new-instance v1, Lcom/media/common/util/FrameAnimation$4;

    invoke-direct {v1, p0, p1}, Lcom/media/common/util/FrameAnimation$4;-><init>(Lcom/media/common/util/FrameAnimation;I)V

    iget p0, p0, Lcom/media/common/util/FrameAnimation;->mDuration:I

    int-to-long p0, p0

    invoke-virtual {v0, v1, p0, p1}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private playAndDelay(I)V
    .locals 2

    .line 144
    iget-object v0, p0, Lcom/media/common/util/FrameAnimation;->mImageView:Landroid/widget/ImageView;

    new-instance v1, Lcom/media/common/util/FrameAnimation$2;

    invoke-direct {v1, p0, p1}, Lcom/media/common/util/FrameAnimation$2;-><init>(Lcom/media/common/util/FrameAnimation;I)V

    iget-boolean p1, p0, Lcom/media/common/util/FrameAnimation;->mNext:Z

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/media/common/util/FrameAnimation;->mDelay:I

    if-lez p1, :cond_0

    iget p0, p0, Lcom/media/common/util/FrameAnimation;->mDelay:I

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/media/common/util/FrameAnimation;->mDuration:I

    :goto_0
    int-to-long p0, p0

    invoke-virtual {v0, v1, p0, p1}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private playByDurations(I)V
    .locals 2

    .line 178
    iget-object v0, p0, Lcom/media/common/util/FrameAnimation;->mImageView:Landroid/widget/ImageView;

    new-instance v1, Lcom/media/common/util/FrameAnimation$3;

    invoke-direct {v1, p0, p1}, Lcom/media/common/util/FrameAnimation$3;-><init>(Lcom/media/common/util/FrameAnimation;I)V

    iget-object p0, p0, Lcom/media/common/util/FrameAnimation;->mDurations:[I

    aget p0, p0, p1

    int-to-long p0, p0

    invoke-virtual {v0, v1, p0, p1}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private playByDurationsAndDelay(I)V
    .locals 3

    .line 114
    iget-object v0, p0, Lcom/media/common/util/FrameAnimation;->mImageView:Landroid/widget/ImageView;

    new-instance v1, Lcom/media/common/util/FrameAnimation$1;

    invoke-direct {v1, p0, p1}, Lcom/media/common/util/FrameAnimation$1;-><init>(Lcom/media/common/util/FrameAnimation;I)V

    iget-boolean v2, p0, Lcom/media/common/util/FrameAnimation;->mNext:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/media/common/util/FrameAnimation;->mDelay:I

    if-lez v2, :cond_0

    iget p0, p0, Lcom/media/common/util/FrameAnimation;->mDelay:I

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/media/common/util/FrameAnimation;->mDurations:[I

    aget p0, p0, p1

    :goto_0
    int-to-long p0, p0

    invoke-virtual {v0, v1, p0, p1}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public isPause()Z
    .locals 0

    .line 295
    iget-boolean p0, p0, Lcom/media/common/util/FrameAnimation;->mPause:Z

    return p0
.end method

.method public pauseAnimation()V
    .locals 1

    const/4 v0, 0x1

    .line 291
    iput-boolean v0, p0, Lcom/media/common/util/FrameAnimation;->mPause:Z

    return-void
.end method

.method public release()V
    .locals 0

    .line 287
    invoke-virtual {p0}, Lcom/media/common/util/FrameAnimation;->pauseAnimation()V

    return-void
.end method

.method public restartAnimation()V
    .locals 1

    .line 299
    iget-boolean v0, p0, Lcom/media/common/util/FrameAnimation;->mPause:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 300
    iput-boolean v0, p0, Lcom/media/common/util/FrameAnimation;->mPause:Z

    .line 301
    iget v0, p0, Lcom/media/common/util/FrameAnimation;->mCurrentSelect:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 312
    :pswitch_0
    iget v0, p0, Lcom/media/common/util/FrameAnimation;->mCurrentFrame:I

    invoke-direct {p0, v0}, Lcom/media/common/util/FrameAnimation;->play(I)V

    goto :goto_0

    .line 309
    :pswitch_1
    iget v0, p0, Lcom/media/common/util/FrameAnimation;->mCurrentFrame:I

    invoke-direct {p0, v0}, Lcom/media/common/util/FrameAnimation;->playByDurations(I)V

    goto :goto_0

    .line 306
    :pswitch_2
    iget v0, p0, Lcom/media/common/util/FrameAnimation;->mCurrentFrame:I

    invoke-direct {p0, v0}, Lcom/media/common/util/FrameAnimation;->playAndDelay(I)V

    goto :goto_0

    .line 303
    :pswitch_3
    iget v0, p0, Lcom/media/common/util/FrameAnimation;->mCurrentFrame:I

    invoke-direct {p0, v0}, Lcom/media/common/util/FrameAnimation;->playByDurationsAndDelay(I)V

    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setAnimationListener(Lcom/media/common/util/FrameAnimation$AnimationListener;)V
    .locals 0

    .line 283
    iput-object p1, p0, Lcom/media/common/util/FrameAnimation;->mAnimationListener:Lcom/media/common/util/FrameAnimation$AnimationListener;

    return-void
.end method
