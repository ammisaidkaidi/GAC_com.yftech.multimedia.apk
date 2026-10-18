.class Landroid/text/Layout$HorizontalMeasurementProvider;
.super Ljava/lang/Object;
.source "Layout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/Layout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HorizontalMeasurementProvider"
.end annotation


# instance fields
.field private mHorizontals:[F

.field private final mLine:I

.field private mLineStartOffset:I

.field private final mPrimary:Z

.field final synthetic this$0:Landroid/text/Layout;


# direct methods
.method constructor <init>(Landroid/text/Layout;IZ)V
    .locals 0

    .line 1572
    iput-object p1, p0, Landroid/text/Layout$HorizontalMeasurementProvider;->this$0:Landroid/text/Layout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1573
    iput p2, p0, Landroid/text/Layout$HorizontalMeasurementProvider;->mLine:I

    .line 1574
    iput-boolean p3, p0, Landroid/text/Layout$HorizontalMeasurementProvider;->mPrimary:Z

    .line 1575
    invoke-direct {p0}, Landroid/text/Layout$HorizontalMeasurementProvider;->init()V

    return-void
.end method

.method private init()V
    .locals 4

    .line 1579
    iget-object v0, p0, Landroid/text/Layout$HorizontalMeasurementProvider;->this$0:Landroid/text/Layout;

    iget v1, p0, Landroid/text/Layout$HorizontalMeasurementProvider;->mLine:I

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v0

    .line 1580
    sget-object v1, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    if-ne v0, v1, :cond_0

    return-void

    .line 1584
    :cond_0
    iget-object v0, p0, Landroid/text/Layout$HorizontalMeasurementProvider;->this$0:Landroid/text/Layout;

    iget v1, p0, Landroid/text/Layout$HorizontalMeasurementProvider;->mLine:I

    const/4 v2, 0x0

    iget-boolean v3, p0, Landroid/text/Layout$HorizontalMeasurementProvider;->mPrimary:Z

    invoke-static {v0, v1, v2, v3}, Landroid/text/Layout;->access$000(Landroid/text/Layout;IZZ)[F

    move-result-object v0

    iput-object v0, p0, Landroid/text/Layout$HorizontalMeasurementProvider;->mHorizontals:[F

    .line 1585
    iget-object v0, p0, Landroid/text/Layout$HorizontalMeasurementProvider;->this$0:Landroid/text/Layout;

    iget v1, p0, Landroid/text/Layout$HorizontalMeasurementProvider;->mLine:I

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v0

    iput v0, p0, Landroid/text/Layout$HorizontalMeasurementProvider;->mLineStartOffset:I

    return-void
.end method


# virtual methods
.method get(I)F
    .locals 2

    .line 1589
    iget-object v0, p0, Landroid/text/Layout$HorizontalMeasurementProvider;->mHorizontals:[F

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/text/Layout$HorizontalMeasurementProvider;->mLineStartOffset:I

    if-lt p1, v0, :cond_1

    iget v0, p0, Landroid/text/Layout$HorizontalMeasurementProvider;->mLineStartOffset:I

    iget-object v1, p0, Landroid/text/Layout$HorizontalMeasurementProvider;->mHorizontals:[F

    array-length v1, v1

    add-int/2addr v0, v1

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 1593
    :cond_0
    iget-object v0, p0, Landroid/text/Layout$HorizontalMeasurementProvider;->mHorizontals:[F

    iget p0, p0, Landroid/text/Layout$HorizontalMeasurementProvider;->mLineStartOffset:I

    sub-int/2addr p1, p0

    aget p0, v0, p1

    return p0

    .line 1591
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/text/Layout$HorizontalMeasurementProvider;->this$0:Landroid/text/Layout;

    iget-boolean p0, p0, Landroid/text/Layout$HorizontalMeasurementProvider;->mPrimary:Z

    invoke-static {v0, p1, p0}, Landroid/text/Layout;->access$100(Landroid/text/Layout;IZ)F

    move-result p0

    return p0
.end method
