.class Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;
.super Ljava/lang/Object;
.source "MediaFileTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/car/widget/media/text/MediaFileTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaFileInfoItem"
.end annotation


# instance fields
.field private mAbsoluteSizeSelectedSpan:Landroid/text/style/AbsoluteSizeSpan;

.field private mAbsoluteSizeSpan:Landroid/text/style/AbsoluteSizeSpan;

.field private mColorSelectedSpan:Landroid/text/style/ForegroundColorSpan;

.field private mColorSpan:Landroid/text/style/ForegroundColorSpan;

.field private mEndContent:Ljava/lang/String;

.field private final mInfoType:I

.field private mLastModifiedDateToday:Ljava/lang/String;

.field private mLastModifiedDateYesterday:Ljava/lang/String;

.field private mLastModifiedDateYesterdayBefore:Ljava/lang/String;

.field private mLastModifiedPatternMode:I

.field private mLineFeed:Z

.field private mPattern:Ljava/lang/String;

.field private mStartContent:Ljava/lang/String;

.field private mUnknown:Ljava/lang/String;

.field private position:I

.field final synthetic this$0:Lcom/yftech/car/widget/media/text/MediaFileTextView;


# direct methods
.method private constructor <init>(Lcom/yftech/car/widget/media/text/MediaFileTextView;I)V
    .locals 0

    .line 832
    iput-object p1, p0, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->this$0:Lcom/yftech/car/widget/media/text/MediaFileTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 833
    iput p2, p0, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->mInfoType:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/yftech/car/widget/media/text/MediaFileTextView;ILcom/yftech/car/widget/media/text/MediaFileTextView$1;)V
    .locals 0

    .line 813
    invoke-direct {p0, p1, p2}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;-><init>(Lcom/yftech/car/widget/media/text/MediaFileTextView;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;)I
    .locals 0

    .line 813
    iget p0, p0, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->position:I

    return p0
.end method

.method static synthetic access$1000(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;)I
    .locals 0

    .line 813
    iget p0, p0, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->mLastModifiedPatternMode:I

    return p0
.end method

.method static synthetic access$1002(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;I)I
    .locals 0

    .line 813
    iput p1, p0, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->mLastModifiedPatternMode:I

    return p1
.end method

.method static synthetic access$102(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;I)I
    .locals 0

    .line 813
    iput p1, p0, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->position:I

    return p1
.end method

.method static synthetic access$1100(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;)Ljava/lang/String;
    .locals 0

    .line 813
    iget-object p0, p0, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->mLastModifiedDateToday:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1102(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 813
    iput-object p1, p0, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->mLastModifiedDateToday:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;)Ljava/lang/String;
    .locals 0

    .line 813
    iget-object p0, p0, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->mLastModifiedDateYesterday:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1202(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 813
    iput-object p1, p0, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->mLastModifiedDateYesterday:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;)Ljava/lang/String;
    .locals 0

    .line 813
    iget-object p0, p0, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->mLastModifiedDateYesterdayBefore:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1302(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 813
    iput-object p1, p0, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->mLastModifiedDateYesterdayBefore:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;)I
    .locals 0

    .line 813
    iget p0, p0, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->mInfoType:I

    return p0
.end method

.method static synthetic access$1500(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;)Ljava/lang/String;
    .locals 0

    .line 813
    iget-object p0, p0, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->mUnknown:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;)Landroid/text/style/ForegroundColorSpan;
    .locals 0

    .line 813
    iget-object p0, p0, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->mColorSelectedSpan:Landroid/text/style/ForegroundColorSpan;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;)Landroid/text/style/ForegroundColorSpan;
    .locals 0

    .line 813
    iget-object p0, p0, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->mColorSpan:Landroid/text/style/ForegroundColorSpan;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;)Landroid/text/style/AbsoluteSizeSpan;
    .locals 0

    .line 813
    iget-object p0, p0, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->mAbsoluteSizeSelectedSpan:Landroid/text/style/AbsoluteSizeSpan;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;)Landroid/text/style/AbsoluteSizeSpan;
    .locals 0

    .line 813
    iget-object p0, p0, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->mAbsoluteSizeSpan:Landroid/text/style/AbsoluteSizeSpan;

    return-object p0
.end method

.method static synthetic access$200(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;I)V
    .locals 0

    .line 813
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->setColorSpan(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;I)V
    .locals 0

    .line 813
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->setAbsoluteSizeSpan(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;I)V
    .locals 0

    .line 813
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->setColorSelectedSpan(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;I)V
    .locals 0

    .line 813
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->setAbsoluteSizeSelectedSpan(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;)Z
    .locals 0

    .line 813
    iget-boolean p0, p0, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->mLineFeed:Z

    return p0
.end method

.method static synthetic access$602(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;Z)Z
    .locals 0

    .line 813
    iput-boolean p1, p0, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->mLineFeed:Z

    return p1
.end method

.method static synthetic access$700(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;)Ljava/lang/String;
    .locals 0

    .line 813
    iget-object p0, p0, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->mStartContent:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$702(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 813
    iput-object p1, p0, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->mStartContent:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;)Ljava/lang/String;
    .locals 0

    .line 813
    iget-object p0, p0, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->mEndContent:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$802(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 813
    iput-object p1, p0, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->mEndContent:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;)Ljava/lang/String;
    .locals 0

    .line 813
    iget-object p0, p0, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->mPattern:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$902(Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 813
    iput-object p1, p0, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->mPattern:Ljava/lang/String;

    return-object p1
.end method

.method private setAbsoluteSizeSelectedSpan(I)V
    .locals 1

    if-lez p1, :cond_0

    .line 872
    new-instance v0, Landroid/text/style/AbsoluteSizeSpan;

    invoke-direct {v0, p1}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    iput-object v0, p0, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->mAbsoluteSizeSelectedSpan:Landroid/text/style/AbsoluteSizeSpan;

    :cond_0
    return-void
.end method

.method private setAbsoluteSizeSpan(I)V
    .locals 1

    .line 861
    new-instance v0, Landroid/text/style/AbsoluteSizeSpan;

    invoke-direct {v0, p1}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    iput-object v0, p0, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->mAbsoluteSizeSpan:Landroid/text/style/AbsoluteSizeSpan;

    return-void
.end method

.method private setColorSelectedSpan(I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 866
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v0, p1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v0, p0, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->mColorSelectedSpan:Landroid/text/style/ForegroundColorSpan;

    :cond_0
    return-void
.end method

.method private setColorSpan(I)V
    .locals 1

    .line 857
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v0, p1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v0, p0, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->mColorSpan:Landroid/text/style/ForegroundColorSpan;

    return-void
.end method


# virtual methods
.method public setUnknown(Ljava/lang/String;)V
    .locals 0

    .line 877
    iput-object p1, p0, Lcom/yftech/car/widget/media/text/MediaFileTextView$MediaFileInfoItem;->mUnknown:Ljava/lang/String;

    return-void
.end method
