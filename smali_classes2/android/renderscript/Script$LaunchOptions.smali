.class public final Landroid/renderscript/Script$LaunchOptions;
.super Ljava/lang/Object;
.source "Script.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/Script;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LaunchOptions"
.end annotation


# instance fields
.field private strategy:I

.field private xend:I

.field private xstart:I

.field private yend:I

.field private ystart:I

.field private zend:I

.field private zstart:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 547
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 548
    iput v0, p0, Landroid/renderscript/Script$LaunchOptions;->xstart:I

    .line 549
    iput v0, p0, Landroid/renderscript/Script$LaunchOptions;->ystart:I

    .line 550
    iput v0, p0, Landroid/renderscript/Script$LaunchOptions;->xend:I

    .line 551
    iput v0, p0, Landroid/renderscript/Script$LaunchOptions;->yend:I

    .line 552
    iput v0, p0, Landroid/renderscript/Script$LaunchOptions;->zstart:I

    .line 553
    iput v0, p0, Landroid/renderscript/Script$LaunchOptions;->zend:I

    return-void
.end method

.method static synthetic access$000(Landroid/renderscript/Script$LaunchOptions;)I
    .locals 0

    .line 547
    iget p0, p0, Landroid/renderscript/Script$LaunchOptions;->xstart:I

    return p0
.end method

.method static synthetic access$100(Landroid/renderscript/Script$LaunchOptions;)I
    .locals 0

    .line 547
    iget p0, p0, Landroid/renderscript/Script$LaunchOptions;->xend:I

    return p0
.end method

.method static synthetic access$200(Landroid/renderscript/Script$LaunchOptions;)I
    .locals 0

    .line 547
    iget p0, p0, Landroid/renderscript/Script$LaunchOptions;->ystart:I

    return p0
.end method

.method static synthetic access$300(Landroid/renderscript/Script$LaunchOptions;)I
    .locals 0

    .line 547
    iget p0, p0, Landroid/renderscript/Script$LaunchOptions;->yend:I

    return p0
.end method

.method static synthetic access$400(Landroid/renderscript/Script$LaunchOptions;)I
    .locals 0

    .line 547
    iget p0, p0, Landroid/renderscript/Script$LaunchOptions;->zstart:I

    return p0
.end method

.method static synthetic access$500(Landroid/renderscript/Script$LaunchOptions;)I
    .locals 0

    .line 547
    iget p0, p0, Landroid/renderscript/Script$LaunchOptions;->zend:I

    return p0
.end method


# virtual methods
.method public getXEnd()I
    .locals 0

    .line 625
    iget p0, p0, Landroid/renderscript/Script$LaunchOptions;->xend:I

    return p0
.end method

.method public getXStart()I
    .locals 0

    .line 617
    iget p0, p0, Landroid/renderscript/Script$LaunchOptions;->xstart:I

    return p0
.end method

.method public getYEnd()I
    .locals 0

    .line 641
    iget p0, p0, Landroid/renderscript/Script$LaunchOptions;->yend:I

    return p0
.end method

.method public getYStart()I
    .locals 0

    .line 633
    iget p0, p0, Landroid/renderscript/Script$LaunchOptions;->ystart:I

    return p0
.end method

.method public getZEnd()I
    .locals 0

    .line 657
    iget p0, p0, Landroid/renderscript/Script$LaunchOptions;->zend:I

    return p0
.end method

.method public getZStart()I
    .locals 0

    .line 649
    iget p0, p0, Landroid/renderscript/Script$LaunchOptions;->zstart:I

    return p0
.end method

.method public setX(II)Landroid/renderscript/Script$LaunchOptions;
    .locals 0

    if-ltz p1, :cond_0

    if-le p2, p1, :cond_0

    .line 569
    iput p1, p0, Landroid/renderscript/Script$LaunchOptions;->xstart:I

    .line 570
    iput p2, p0, Landroid/renderscript/Script$LaunchOptions;->xend:I

    return-object p0

    .line 567
    :cond_0
    new-instance p0, Landroid/renderscript/RSIllegalArgumentException;

    const-string p1, "Invalid dimensions"

    invoke-direct {p0, p1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setY(II)Landroid/renderscript/Script$LaunchOptions;
    .locals 0

    if-ltz p1, :cond_0

    if-le p2, p1, :cond_0

    .line 587
    iput p1, p0, Landroid/renderscript/Script$LaunchOptions;->ystart:I

    .line 588
    iput p2, p0, Landroid/renderscript/Script$LaunchOptions;->yend:I

    return-object p0

    .line 585
    :cond_0
    new-instance p0, Landroid/renderscript/RSIllegalArgumentException;

    const-string p1, "Invalid dimensions"

    invoke-direct {p0, p1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setZ(II)Landroid/renderscript/Script$LaunchOptions;
    .locals 0

    if-ltz p1, :cond_0

    if-le p2, p1, :cond_0

    .line 605
    iput p1, p0, Landroid/renderscript/Script$LaunchOptions;->zstart:I

    .line 606
    iput p2, p0, Landroid/renderscript/Script$LaunchOptions;->zend:I

    return-object p0

    .line 603
    :cond_0
    new-instance p0, Landroid/renderscript/RSIllegalArgumentException;

    const-string p1, "Invalid dimensions"

    invoke-direct {p0, p1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
