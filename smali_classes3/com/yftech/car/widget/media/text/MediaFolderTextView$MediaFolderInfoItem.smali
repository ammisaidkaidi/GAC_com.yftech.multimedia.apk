.class Lcom/yftech/car/widget/media/text/MediaFolderTextView$MediaFolderInfoItem;
.super Ljava/lang/Object;
.source "MediaFolderTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/car/widget/media/text/MediaFolderTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaFolderInfoItem"
.end annotation


# instance fields
.field private mAbsoluteSizeSpan:Landroid/text/style/AbsoluteSizeSpan;

.field private mColorSpan:Landroid/text/style/ForegroundColorSpan;

.field private mEndContent:Ljava/lang/String;

.field private final mInfoType:I

.field private mLineFeed:Z

.field private mPattern:Ljava/lang/String;

.field private mStartContent:Ljava/lang/String;

.field private position:I

.field final synthetic this$0:Lcom/yftech/car/widget/media/text/MediaFolderTextView;


# direct methods
.method private constructor <init>(Lcom/yftech/car/widget/media/text/MediaFolderTextView;I)V
    .locals 0

    .line 275
    iput-object p1, p0, Lcom/yftech/car/widget/media/text/MediaFolderTextView$MediaFolderInfoItem;->this$0:Lcom/yftech/car/widget/media/text/MediaFolderTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 276
    iput p2, p0, Lcom/yftech/car/widget/media/text/MediaFolderTextView$MediaFolderInfoItem;->mInfoType:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/yftech/car/widget/media/text/MediaFolderTextView;ILcom/yftech/car/widget/media/text/MediaFolderTextView$1;)V
    .locals 0

    .line 251
    invoke-direct {p0, p1, p2}, Lcom/yftech/car/widget/media/text/MediaFolderTextView$MediaFolderInfoItem;-><init>(Lcom/yftech/car/widget/media/text/MediaFolderTextView;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/yftech/car/widget/media/text/MediaFolderTextView$MediaFolderInfoItem;)I
    .locals 0

    .line 251
    iget p0, p0, Lcom/yftech/car/widget/media/text/MediaFolderTextView$MediaFolderInfoItem;->position:I

    return p0
.end method

.method static synthetic access$102(Lcom/yftech/car/widget/media/text/MediaFolderTextView$MediaFolderInfoItem;I)I
    .locals 0

    .line 251
    iput p1, p0, Lcom/yftech/car/widget/media/text/MediaFolderTextView$MediaFolderInfoItem;->position:I

    return p1
.end method

.method static synthetic access$200(Lcom/yftech/car/widget/media/text/MediaFolderTextView$MediaFolderInfoItem;I)V
    .locals 0

    .line 251
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/text/MediaFolderTextView$MediaFolderInfoItem;->setColorSpan(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/yftech/car/widget/media/text/MediaFolderTextView$MediaFolderInfoItem;I)V
    .locals 0

    .line 251
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/text/MediaFolderTextView$MediaFolderInfoItem;->setAbsoluteSizeSpan(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/yftech/car/widget/media/text/MediaFolderTextView$MediaFolderInfoItem;)Z
    .locals 0

    .line 251
    iget-boolean p0, p0, Lcom/yftech/car/widget/media/text/MediaFolderTextView$MediaFolderInfoItem;->mLineFeed:Z

    return p0
.end method

.method static synthetic access$402(Lcom/yftech/car/widget/media/text/MediaFolderTextView$MediaFolderInfoItem;Z)Z
    .locals 0

    .line 251
    iput-boolean p1, p0, Lcom/yftech/car/widget/media/text/MediaFolderTextView$MediaFolderInfoItem;->mLineFeed:Z

    return p1
.end method

.method static synthetic access$500(Lcom/yftech/car/widget/media/text/MediaFolderTextView$MediaFolderInfoItem;)Ljava/lang/String;
    .locals 0

    .line 251
    iget-object p0, p0, Lcom/yftech/car/widget/media/text/MediaFolderTextView$MediaFolderInfoItem;->mStartContent:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$502(Lcom/yftech/car/widget/media/text/MediaFolderTextView$MediaFolderInfoItem;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 251
    iput-object p1, p0, Lcom/yftech/car/widget/media/text/MediaFolderTextView$MediaFolderInfoItem;->mStartContent:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/yftech/car/widget/media/text/MediaFolderTextView$MediaFolderInfoItem;)Ljava/lang/String;
    .locals 0

    .line 251
    iget-object p0, p0, Lcom/yftech/car/widget/media/text/MediaFolderTextView$MediaFolderInfoItem;->mEndContent:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$602(Lcom/yftech/car/widget/media/text/MediaFolderTextView$MediaFolderInfoItem;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 251
    iput-object p1, p0, Lcom/yftech/car/widget/media/text/MediaFolderTextView$MediaFolderInfoItem;->mEndContent:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/yftech/car/widget/media/text/MediaFolderTextView$MediaFolderInfoItem;)I
    .locals 0

    .line 251
    iget p0, p0, Lcom/yftech/car/widget/media/text/MediaFolderTextView$MediaFolderInfoItem;->mInfoType:I

    return p0
.end method

.method static synthetic access$800(Lcom/yftech/car/widget/media/text/MediaFolderTextView$MediaFolderInfoItem;)Landroid/text/style/ForegroundColorSpan;
    .locals 0

    .line 251
    iget-object p0, p0, Lcom/yftech/car/widget/media/text/MediaFolderTextView$MediaFolderInfoItem;->mColorSpan:Landroid/text/style/ForegroundColorSpan;

    return-object p0
.end method

.method static synthetic access$900(Lcom/yftech/car/widget/media/text/MediaFolderTextView$MediaFolderInfoItem;)Landroid/text/style/AbsoluteSizeSpan;
    .locals 0

    .line 251
    iget-object p0, p0, Lcom/yftech/car/widget/media/text/MediaFolderTextView$MediaFolderInfoItem;->mAbsoluteSizeSpan:Landroid/text/style/AbsoluteSizeSpan;

    return-object p0
.end method

.method private setAbsoluteSizeSpan(I)V
    .locals 1

    .line 284
    new-instance v0, Landroid/text/style/AbsoluteSizeSpan;

    invoke-direct {v0, p1}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    iput-object v0, p0, Lcom/yftech/car/widget/media/text/MediaFolderTextView$MediaFolderInfoItem;->mAbsoluteSizeSpan:Landroid/text/style/AbsoluteSizeSpan;

    return-void
.end method

.method private setColorSpan(I)V
    .locals 1

    .line 280
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v0, p1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v0, p0, Lcom/yftech/car/widget/media/text/MediaFolderTextView$MediaFolderInfoItem;->mColorSpan:Landroid/text/style/ForegroundColorSpan;

    return-void
.end method
