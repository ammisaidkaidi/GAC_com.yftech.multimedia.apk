.class Lcom/yftech/car/widget/media/text/MediaPlayTime$MediaTimeItem;
.super Ljava/lang/Object;
.source "MediaPlayTime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/car/widget/media/text/MediaPlayTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaTimeItem"
.end annotation


# instance fields
.field private mAbsoluteSizeSpan:Landroid/text/style/AbsoluteSizeSpan;

.field private mColorSpan:Landroid/text/style/ForegroundColorSpan;

.field private final mDate:Ljava/util/Date;

.field private mEndContent:Ljava/lang/String;

.field private mLineFeed:Z

.field private mStartContent:Ljava/lang/String;

.field private final mTimeType:I

.field private position:I

.field final synthetic this$0:Lcom/yftech/car/widget/media/text/MediaPlayTime;


# direct methods
.method private constructor <init>(Lcom/yftech/car/widget/media/text/MediaPlayTime;I)V
    .locals 0

    .line 491
    iput-object p1, p0, Lcom/yftech/car/widget/media/text/MediaPlayTime$MediaTimeItem;->this$0:Lcom/yftech/car/widget/media/text/MediaPlayTime;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 489
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    iput-object p1, p0, Lcom/yftech/car/widget/media/text/MediaPlayTime$MediaTimeItem;->mDate:Ljava/util/Date;

    .line 492
    iput p2, p0, Lcom/yftech/car/widget/media/text/MediaPlayTime$MediaTimeItem;->mTimeType:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/yftech/car/widget/media/text/MediaPlayTime;ILcom/yftech/car/widget/media/text/MediaPlayTime$1;)V
    .locals 0

    .line 477
    invoke-direct {p0, p1, p2}, Lcom/yftech/car/widget/media/text/MediaPlayTime$MediaTimeItem;-><init>(Lcom/yftech/car/widget/media/text/MediaPlayTime;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/yftech/car/widget/media/text/MediaPlayTime$MediaTimeItem;)I
    .locals 0

    .line 477
    iget p0, p0, Lcom/yftech/car/widget/media/text/MediaPlayTime$MediaTimeItem;->position:I

    return p0
.end method

.method static synthetic access$1000(Lcom/yftech/car/widget/media/text/MediaPlayTime$MediaTimeItem;)Ljava/util/Date;
    .locals 0

    .line 477
    iget-object p0, p0, Lcom/yftech/car/widget/media/text/MediaPlayTime$MediaTimeItem;->mDate:Ljava/util/Date;

    return-object p0
.end method

.method static synthetic access$102(Lcom/yftech/car/widget/media/text/MediaPlayTime$MediaTimeItem;I)I
    .locals 0

    .line 477
    iput p1, p0, Lcom/yftech/car/widget/media/text/MediaPlayTime$MediaTimeItem;->position:I

    return p1
.end method

.method static synthetic access$200(Lcom/yftech/car/widget/media/text/MediaPlayTime$MediaTimeItem;I)V
    .locals 0

    .line 477
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/text/MediaPlayTime$MediaTimeItem;->setColorSpan(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/yftech/car/widget/media/text/MediaPlayTime$MediaTimeItem;I)V
    .locals 0

    .line 477
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/text/MediaPlayTime$MediaTimeItem;->setAbsoluteSizeSpan(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/yftech/car/widget/media/text/MediaPlayTime$MediaTimeItem;)Z
    .locals 0

    .line 477
    iget-boolean p0, p0, Lcom/yftech/car/widget/media/text/MediaPlayTime$MediaTimeItem;->mLineFeed:Z

    return p0
.end method

.method static synthetic access$402(Lcom/yftech/car/widget/media/text/MediaPlayTime$MediaTimeItem;Z)Z
    .locals 0

    .line 477
    iput-boolean p1, p0, Lcom/yftech/car/widget/media/text/MediaPlayTime$MediaTimeItem;->mLineFeed:Z

    return p1
.end method

.method static synthetic access$500(Lcom/yftech/car/widget/media/text/MediaPlayTime$MediaTimeItem;)Ljava/lang/String;
    .locals 0

    .line 477
    iget-object p0, p0, Lcom/yftech/car/widget/media/text/MediaPlayTime$MediaTimeItem;->mStartContent:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$502(Lcom/yftech/car/widget/media/text/MediaPlayTime$MediaTimeItem;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 477
    iput-object p1, p0, Lcom/yftech/car/widget/media/text/MediaPlayTime$MediaTimeItem;->mStartContent:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/yftech/car/widget/media/text/MediaPlayTime$MediaTimeItem;)Ljava/lang/String;
    .locals 0

    .line 477
    iget-object p0, p0, Lcom/yftech/car/widget/media/text/MediaPlayTime$MediaTimeItem;->mEndContent:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$602(Lcom/yftech/car/widget/media/text/MediaPlayTime$MediaTimeItem;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 477
    iput-object p1, p0, Lcom/yftech/car/widget/media/text/MediaPlayTime$MediaTimeItem;->mEndContent:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/yftech/car/widget/media/text/MediaPlayTime$MediaTimeItem;)I
    .locals 0

    .line 477
    iget p0, p0, Lcom/yftech/car/widget/media/text/MediaPlayTime$MediaTimeItem;->mTimeType:I

    return p0
.end method

.method static synthetic access$800(Lcom/yftech/car/widget/media/text/MediaPlayTime$MediaTimeItem;)Landroid/text/style/ForegroundColorSpan;
    .locals 0

    .line 477
    iget-object p0, p0, Lcom/yftech/car/widget/media/text/MediaPlayTime$MediaTimeItem;->mColorSpan:Landroid/text/style/ForegroundColorSpan;

    return-object p0
.end method

.method static synthetic access$900(Lcom/yftech/car/widget/media/text/MediaPlayTime$MediaTimeItem;)Landroid/text/style/AbsoluteSizeSpan;
    .locals 0

    .line 477
    iget-object p0, p0, Lcom/yftech/car/widget/media/text/MediaPlayTime$MediaTimeItem;->mAbsoluteSizeSpan:Landroid/text/style/AbsoluteSizeSpan;

    return-object p0
.end method

.method private setAbsoluteSizeSpan(I)V
    .locals 1

    .line 510
    new-instance v0, Landroid/text/style/AbsoluteSizeSpan;

    invoke-direct {v0, p1}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    iput-object v0, p0, Lcom/yftech/car/widget/media/text/MediaPlayTime$MediaTimeItem;->mAbsoluteSizeSpan:Landroid/text/style/AbsoluteSizeSpan;

    return-void
.end method

.method private setColorSpan(I)V
    .locals 1

    .line 506
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v0, p1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v0, p0, Lcom/yftech/car/widget/media/text/MediaPlayTime$MediaTimeItem;->mColorSpan:Landroid/text/style/ForegroundColorSpan;

    return-void
.end method
