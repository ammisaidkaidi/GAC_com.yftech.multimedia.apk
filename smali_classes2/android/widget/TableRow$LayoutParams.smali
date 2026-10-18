.class public Landroid/widget/TableRow$LayoutParams;
.super Landroid/widget/LinearLayout$LayoutParams;
.source "TableRow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TableRow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# static fields
.field private static final LOCATION:I = 0x0

.field private static final LOCATION_NEXT:I = 0x1


# instance fields
.field public column:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private mOffset:[I

.field public span:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, -0x2

    .line 464
    invoke-direct {p0, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x2

    .line 412
    new-array v1, v1, [I

    iput-object v1, p0, Landroid/widget/TableRow$LayoutParams;->mOffset:[I

    .line 465
    iput v0, p0, Landroid/widget/TableRow$LayoutParams;->column:I

    const/4 v0, 0x1

    .line 466
    iput v0, p0, Landroid/widget/TableRow$LayoutParams;->span:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 479
    invoke-direct {p0}, Landroid/widget/TableRow$LayoutParams;-><init>()V

    .line 480
    iput p1, p0, Landroid/widget/TableRow$LayoutParams;->column:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 440
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 p1, 0x2

    .line 412
    new-array p1, p1, [I

    iput-object p1, p0, Landroid/widget/TableRow$LayoutParams;->mOffset:[I

    const/4 p1, -0x1

    .line 441
    iput p1, p0, Landroid/widget/TableRow$LayoutParams;->column:I

    const/4 p1, 0x1

    .line 442
    iput p1, p0, Landroid/widget/TableRow$LayoutParams;->span:I

    return-void
.end method

.method public constructor <init>(IIF)V
    .locals 0

    .line 453
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/4 p1, 0x2

    .line 412
    new-array p1, p1, [I

    iput-object p1, p0, Landroid/widget/TableRow$LayoutParams;->mOffset:[I

    const/4 p1, -0x1

    .line 454
    iput p1, p0, Landroid/widget/TableRow$LayoutParams;->column:I

    const/4 p1, 0x1

    .line 455
    iput p1, p0, Landroid/widget/TableRow$LayoutParams;->span:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 418
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x2

    .line 412
    new-array v0, v0, [I

    iput-object v0, p0, Landroid/widget/TableRow$LayoutParams;->mOffset:[I

    .line 420
    sget-object v0, Lcom/android/internal/R$styleable;->TableRow_Cell:[I

    .line 421
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v0, -0x1

    .line 424
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Landroid/widget/TableRow$LayoutParams;->column:I

    const/4 p2, 0x1

    .line 425
    invoke-virtual {p1, p2, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Landroid/widget/TableRow$LayoutParams;->span:I

    .line 426
    iget v0, p0, Landroid/widget/TableRow$LayoutParams;->span:I

    if-gt v0, p2, :cond_0

    .line 427
    iput p2, p0, Landroid/widget/TableRow$LayoutParams;->span:I

    .line 430
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 487
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x2

    .line 412
    new-array p1, p1, [I

    iput-object p1, p0, Landroid/widget/TableRow$LayoutParams;->mOffset:[I

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 0

    .line 494
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    const/4 p1, 0x2

    .line 412
    new-array p1, p1, [I

    iput-object p1, p0, Landroid/widget/TableRow$LayoutParams;->mOffset:[I

    return-void
.end method

.method static synthetic access$200(Landroid/widget/TableRow$LayoutParams;)[I
    .locals 0

    .line 396
    iget-object p0, p0, Landroid/widget/TableRow$LayoutParams;->mOffset:[I

    return-object p0
.end method


# virtual methods
.method protected encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .locals 2

    .line 517
    invoke-super {p0, p1}, Landroid/widget/LinearLayout$LayoutParams;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    const-string v0, "layout:column"

    .line 518
    iget v1, p0, Landroid/widget/TableRow$LayoutParams;->column:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    const-string v0, "layout:span"

    .line 519
    iget p0, p0, Landroid/widget/TableRow$LayoutParams;->span:I

    invoke-virtual {p1, v0, p0}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    return-void
.end method

.method protected setBaseAttributes(Landroid/content/res/TypedArray;II)V
    .locals 1

    .line 500
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "layout_width"

    .line 501
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getLayoutDimension(ILjava/lang/String;)I

    move-result p2

    iput p2, p0, Landroid/widget/TableRow$LayoutParams;->width:I

    goto :goto_0

    :cond_0
    const/4 p2, -0x1

    .line 503
    iput p2, p0, Landroid/widget/TableRow$LayoutParams;->width:I

    .line 507
    :goto_0
    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "layout_height"

    .line 508
    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getLayoutDimension(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Landroid/widget/TableRow$LayoutParams;->height:I

    goto :goto_1

    :cond_1
    const/4 p1, -0x2

    .line 510
    iput p1, p0, Landroid/widget/TableRow$LayoutParams;->height:I

    :goto_1
    return-void
.end method
