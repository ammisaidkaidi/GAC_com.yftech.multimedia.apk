.class public Landroid/widget/TableLayout$LayoutParams;
.super Landroid/widget/LinearLayout$LayoutParams;
.source "TableLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TableLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, -0x2

    .line 706
    invoke-direct {p0, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    const/4 p1, -0x1

    .line 690
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    return-void
.end method

.method public constructor <init>(IIF)V
    .locals 0

    const/4 p1, -0x1

    .line 697
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 683
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 713
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, -0x1

    .line 714
    iput p1, p0, Landroid/widget/TableLayout$LayoutParams;->width:I

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1

    .line 721
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    const/4 v0, -0x1

    .line 722
    iput v0, p0, Landroid/widget/TableLayout$LayoutParams;->width:I

    .line 723
    instance-of v0, p1, Landroid/widget/TableLayout$LayoutParams;

    if-eqz v0, :cond_0

    .line 724
    check-cast p1, Landroid/widget/TableLayout$LayoutParams;

    iget p1, p1, Landroid/widget/TableLayout$LayoutParams;->weight:F

    iput p1, p0, Landroid/widget/TableLayout$LayoutParams;->weight:F

    :cond_0
    return-void
.end method


# virtual methods
.method protected setBaseAttributes(Landroid/content/res/TypedArray;II)V
    .locals 0

    const/4 p2, -0x1

    .line 742
    iput p2, p0, Landroid/widget/TableLayout$LayoutParams;->width:I

    .line 743
    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "layout_height"

    .line 744
    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getLayoutDimension(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Landroid/widget/TableLayout$LayoutParams;->height:I

    goto :goto_0

    :cond_0
    const/4 p1, -0x2

    .line 746
    iput p1, p0, Landroid/widget/TableLayout$LayoutParams;->height:I

    :goto_0
    return-void
.end method
