.class public final Landroid/view/InputDevice$MotionRange;
.super Ljava/lang/Object;
.source "InputDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/InputDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MotionRange"
.end annotation


# instance fields
.field private mAxis:I

.field private mFlat:F

.field private mFuzz:F

.field private mMax:F

.field private mMin:F

.field private mResolution:F

.field private mSource:I


# direct methods
.method private constructor <init>(IIFFFFF)V
    .locals 0

    .line 858
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 859
    iput p1, p0, Landroid/view/InputDevice$MotionRange;->mAxis:I

    .line 860
    iput p2, p0, Landroid/view/InputDevice$MotionRange;->mSource:I

    .line 861
    iput p3, p0, Landroid/view/InputDevice$MotionRange;->mMin:F

    .line 862
    iput p4, p0, Landroid/view/InputDevice$MotionRange;->mMax:F

    .line 863
    iput p5, p0, Landroid/view/InputDevice$MotionRange;->mFlat:F

    .line 864
    iput p6, p0, Landroid/view/InputDevice$MotionRange;->mFuzz:F

    .line 865
    iput p7, p0, Landroid/view/InputDevice$MotionRange;->mResolution:F

    return-void
.end method

.method synthetic constructor <init>(IIFFFFFLandroid/view/InputDevice$1;)V
    .locals 0

    .line 848
    invoke-direct/range {p0 .. p7}, Landroid/view/InputDevice$MotionRange;-><init>(IIFFFFF)V

    return-void
.end method

.method static synthetic access$100(Landroid/view/InputDevice$MotionRange;)I
    .locals 0

    .line 848
    iget p0, p0, Landroid/view/InputDevice$MotionRange;->mAxis:I

    return p0
.end method

.method static synthetic access$200(Landroid/view/InputDevice$MotionRange;)I
    .locals 0

    .line 848
    iget p0, p0, Landroid/view/InputDevice$MotionRange;->mSource:I

    return p0
.end method

.method static synthetic access$400(Landroid/view/InputDevice$MotionRange;)F
    .locals 0

    .line 848
    iget p0, p0, Landroid/view/InputDevice$MotionRange;->mMin:F

    return p0
.end method

.method static synthetic access$500(Landroid/view/InputDevice$MotionRange;)F
    .locals 0

    .line 848
    iget p0, p0, Landroid/view/InputDevice$MotionRange;->mMax:F

    return p0
.end method

.method static synthetic access$600(Landroid/view/InputDevice$MotionRange;)F
    .locals 0

    .line 848
    iget p0, p0, Landroid/view/InputDevice$MotionRange;->mFlat:F

    return p0
.end method

.method static synthetic access$700(Landroid/view/InputDevice$MotionRange;)F
    .locals 0

    .line 848
    iget p0, p0, Landroid/view/InputDevice$MotionRange;->mFuzz:F

    return p0
.end method

.method static synthetic access$800(Landroid/view/InputDevice$MotionRange;)F
    .locals 0

    .line 848
    iget p0, p0, Landroid/view/InputDevice$MotionRange;->mResolution:F

    return p0
.end method


# virtual methods
.method public getAxis()I
    .locals 0

    .line 873
    iget p0, p0, Landroid/view/InputDevice$MotionRange;->mAxis:I

    return p0
.end method

.method public getFlat()F
    .locals 0

    .line 930
    iget p0, p0, Landroid/view/InputDevice$MotionRange;->mFlat:F

    return p0
.end method

.method public getFuzz()F
    .locals 0

    .line 942
    iget p0, p0, Landroid/view/InputDevice$MotionRange;->mFuzz:F

    return p0
.end method

.method public getMax()F
    .locals 0

    .line 910
    iget p0, p0, Landroid/view/InputDevice$MotionRange;->mMax:F

    return p0
.end method

.method public getMin()F
    .locals 0

    .line 902
    iget p0, p0, Landroid/view/InputDevice$MotionRange;->mMin:F

    return p0
.end method

.method public getRange()F
    .locals 1

    .line 918
    iget v0, p0, Landroid/view/InputDevice$MotionRange;->mMax:F

    iget p0, p0, Landroid/view/InputDevice$MotionRange;->mMin:F

    sub-float/2addr v0, p0

    return v0
.end method

.method public getResolution()F
    .locals 0

    .line 950
    iget p0, p0, Landroid/view/InputDevice$MotionRange;->mResolution:F

    return p0
.end method

.method public getSource()I
    .locals 0

    .line 881
    iget p0, p0, Landroid/view/InputDevice$MotionRange;->mSource:I

    return p0
.end method

.method public isFromSource(I)Z
    .locals 0

    .line 894
    invoke-virtual {p0}, Landroid/view/InputDevice$MotionRange;->getSource()I

    move-result p0

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
