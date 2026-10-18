.class Lcom/yftech/car/widget/media/text/MediaDataListText$MediaListInfoItem;
.super Ljava/lang/Object;
.source "MediaDataListText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/car/widget/media/text/MediaDataListText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaListInfoItem"
.end annotation


# instance fields
.field private mAbsoluteSizeSpan:Landroid/text/style/AbsoluteSizeSpan;

.field private mColorSpan:Landroid/text/style/ForegroundColorSpan;

.field private mEndContent:Ljava/lang/String;

.field private final mInfoType:I

.field private mLineFeed:Z

.field private mStartContent:Ljava/lang/String;

.field private position:I

.field final synthetic this$0:Lcom/yftech/car/widget/media/text/MediaDataListText;


# direct methods
.method private constructor <init>(Lcom/yftech/car/widget/media/text/MediaDataListText;I)V
    .locals 0

    .line 259
    iput-object p1, p0, Lcom/yftech/car/widget/media/text/MediaDataListText$MediaListInfoItem;->this$0:Lcom/yftech/car/widget/media/text/MediaDataListText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 260
    iput p2, p0, Lcom/yftech/car/widget/media/text/MediaDataListText$MediaListInfoItem;->mInfoType:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/yftech/car/widget/media/text/MediaDataListText;ILcom/yftech/car/widget/media/text/MediaDataListText$1;)V
    .locals 0

    .line 247
    invoke-direct {p0, p1, p2}, Lcom/yftech/car/widget/media/text/MediaDataListText$MediaListInfoItem;-><init>(Lcom/yftech/car/widget/media/text/MediaDataListText;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/yftech/car/widget/media/text/MediaDataListText$MediaListInfoItem;)I
    .locals 0

    .line 247
    iget p0, p0, Lcom/yftech/car/widget/media/text/MediaDataListText$MediaListInfoItem;->position:I

    return p0
.end method

.method static synthetic access$102(Lcom/yftech/car/widget/media/text/MediaDataListText$MediaListInfoItem;I)I
    .locals 0

    .line 247
    iput p1, p0, Lcom/yftech/car/widget/media/text/MediaDataListText$MediaListInfoItem;->position:I

    return p1
.end method

.method static synthetic access$200(Lcom/yftech/car/widget/media/text/MediaDataListText$MediaListInfoItem;I)V
    .locals 0

    .line 247
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/text/MediaDataListText$MediaListInfoItem;->setColorSpan(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/yftech/car/widget/media/text/MediaDataListText$MediaListInfoItem;I)V
    .locals 0

    .line 247
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/text/MediaDataListText$MediaListInfoItem;->setAbsoluteSizeSpan(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/yftech/car/widget/media/text/MediaDataListText$MediaListInfoItem;)Z
    .locals 0

    .line 247
    iget-boolean p0, p0, Lcom/yftech/car/widget/media/text/MediaDataListText$MediaListInfoItem;->mLineFeed:Z

    return p0
.end method

.method static synthetic access$402(Lcom/yftech/car/widget/media/text/MediaDataListText$MediaListInfoItem;Z)Z
    .locals 0

    .line 247
    iput-boolean p1, p0, Lcom/yftech/car/widget/media/text/MediaDataListText$MediaListInfoItem;->mLineFeed:Z

    return p1
.end method

.method static synthetic access$500(Lcom/yftech/car/widget/media/text/MediaDataListText$MediaListInfoItem;)Ljava/lang/String;
    .locals 0

    .line 247
    iget-object p0, p0, Lcom/yftech/car/widget/media/text/MediaDataListText$MediaListInfoItem;->mStartContent:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$502(Lcom/yftech/car/widget/media/text/MediaDataListText$MediaListInfoItem;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 247
    iput-object p1, p0, Lcom/yftech/car/widget/media/text/MediaDataListText$MediaListInfoItem;->mStartContent:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/yftech/car/widget/media/text/MediaDataListText$MediaListInfoItem;)Ljava/lang/String;
    .locals 0

    .line 247
    iget-object p0, p0, Lcom/yftech/car/widget/media/text/MediaDataListText$MediaListInfoItem;->mEndContent:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$602(Lcom/yftech/car/widget/media/text/MediaDataListText$MediaListInfoItem;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 247
    iput-object p1, p0, Lcom/yftech/car/widget/media/text/MediaDataListText$MediaListInfoItem;->mEndContent:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/yftech/car/widget/media/text/MediaDataListText$MediaListInfoItem;)I
    .locals 0

    .line 247
    iget p0, p0, Lcom/yftech/car/widget/media/text/MediaDataListText$MediaListInfoItem;->mInfoType:I

    return p0
.end method

.method static synthetic access$800(Lcom/yftech/car/widget/media/text/MediaDataListText$MediaListInfoItem;)Landroid/text/style/ForegroundColorSpan;
    .locals 0

    .line 247
    iget-object p0, p0, Lcom/yftech/car/widget/media/text/MediaDataListText$MediaListInfoItem;->mColorSpan:Landroid/text/style/ForegroundColorSpan;

    return-object p0
.end method

.method static synthetic access$900(Lcom/yftech/car/widget/media/text/MediaDataListText$MediaListInfoItem;)Landroid/text/style/AbsoluteSizeSpan;
    .locals 0

    .line 247
    iget-object p0, p0, Lcom/yftech/car/widget/media/text/MediaDataListText$MediaListInfoItem;->mAbsoluteSizeSpan:Landroid/text/style/AbsoluteSizeSpan;

    return-object p0
.end method

.method private setAbsoluteSizeSpan(I)V
    .locals 1

    .line 279
    new-instance v0, Landroid/text/style/AbsoluteSizeSpan;

    invoke-direct {v0, p1}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    iput-object v0, p0, Lcom/yftech/car/widget/media/text/MediaDataListText$MediaListInfoItem;->mAbsoluteSizeSpan:Landroid/text/style/AbsoluteSizeSpan;

    return-void
.end method

.method private setColorSpan(I)V
    .locals 1

    .line 275
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v0, p1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v0, p0, Lcom/yftech/car/widget/media/text/MediaDataListText$MediaListInfoItem;->mColorSpan:Landroid/text/style/ForegroundColorSpan;

    return-void
.end method
