.class public Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "FlexboxLayout.java"

# interfaces
.implements Lcom/yftech/car/widget/media/flexbox/FlexItem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/car/widget/media/flexbox/FlexboxLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAlignSelf:I

.field private mFlexBasisPercent:F

.field private mFlexGrow:F

.field private mFlexShrink:F

.field private mMaxHeight:I

.field private mMaxWidth:I

.field private mMinHeight:I

.field private mMinWidth:I

.field private mOrder:I

.field private mWrapBefore:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1868
    new-instance v0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams$1;

    invoke-direct {v0}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams$1;-><init>()V

    sput-object v0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .line 1673
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-direct {p0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x1

    .line 1579
    iput p1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;->mOrder:I

    const/4 p1, 0x0

    .line 1584
    iput p1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;->mFlexGrow:F

    const/high16 p1, 0x3f800000    # 1.0f

    .line 1589
    iput p1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;->mFlexShrink:F

    const/4 p1, -0x1

    .line 1594
    iput p1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;->mAlignSelf:I

    const/high16 p2, -0x40800000    # -1.0f

    .line 1599
    iput p2, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;->mFlexBasisPercent:F

    .line 1604
    iput p1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;->mMinWidth:I

    .line 1609
    iput p1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;->mMinHeight:I

    const p1, 0xffffff

    .line 1614
    iput p1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;->mMaxWidth:I

    .line 1619
    iput p1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;->mMaxHeight:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .line 1627
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    .line 1579
    iput v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;->mOrder:I

    const/4 v1, 0x0

    .line 1584
    iput v1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;->mFlexGrow:F

    const/high16 v2, 0x3f800000    # 1.0f

    .line 1589
    iput v2, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;->mFlexShrink:F

    const/4 v3, -0x1

    .line 1594
    iput v3, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;->mAlignSelf:I

    const/high16 v4, -0x40800000    # -1.0f

    .line 1599
    iput v4, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;->mFlexBasisPercent:F

    .line 1604
    iput v3, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;->mMinWidth:I

    .line 1609
    iput v3, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;->mMinHeight:I

    const v5, 0xffffff

    .line 1614
    iput v5, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;->mMaxWidth:I

    .line 1619
    iput v5, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;->mMaxHeight:I

    .line 1629
    sget-object v6, Lcom/yftech/car/widget/media/R$styleable;->FlexboxLayout_Layout:[I

    .line 1630
    invoke-virtual {p1, p2, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 1631
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->FlexboxLayout_Layout_layout_order:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;->mOrder:I

    .line 1632
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->FlexboxLayout_Layout_layout_flexGrow:I

    .line 1633
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;->mFlexGrow:F

    .line 1634
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->FlexboxLayout_Layout_layout_flexShrink:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;->mFlexShrink:F

    .line 1636
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->FlexboxLayout_Layout_layout_alignSelf:I

    .line 1637
    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;->mAlignSelf:I

    .line 1638
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->FlexboxLayout_Layout_layout_flexBasisPercent:I

    .line 1639
    invoke-virtual {p1, p2, v0, v0, v4}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result p2

    iput p2, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;->mFlexBasisPercent:F

    .line 1641
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->FlexboxLayout_Layout_layout_minWidth:I

    .line 1642
    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;->mMinWidth:I

    .line 1643
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->FlexboxLayout_Layout_layout_minHeight:I

    .line 1644
    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;->mMinHeight:I

    .line 1645
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->FlexboxLayout_Layout_layout_maxWidth:I

    invoke-virtual {p1, p2, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;->mMaxWidth:I

    .line 1647
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->FlexboxLayout_Layout_layout_maxHeight:I

    invoke-virtual {p1, p2, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;->mMaxHeight:I

    .line 1649
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->FlexboxLayout_Layout_layout_wrapBefore:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;->mWrapBefore:Z

    .line 1650
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    const/4 v0, 0x0

    .line 1849
    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    const/4 v1, 0x1

    .line 1579
    iput v1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;->mOrder:I

    const/4 v2, 0x0

    .line 1584
    iput v2, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;->mFlexGrow:F

    const/high16 v2, 0x3f800000    # 1.0f

    .line 1589
    iput v2, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;->mFlexShrink:F

    const/4 v2, -0x1

    .line 1594
    iput v2, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;->mAlignSelf:I

    const/high16 v3, -0x40800000    # -1.0f

    .line 1599
    iput v3, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;->mFlexBasisPercent:F

    .line 1604
    iput v2, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;->mMinWidth:I

    .line 1609
    iput v2, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;->mMinHeight:I

    const v2, 0xffffff

    .line 1614
    iput v2, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;->mMaxWidth:I

    .line 1619
    iput v2, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;->mMaxHeight:I

    .line 1850
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;->mOrder:I

    .line 1851
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;->mFlexGrow:F

    .line 1852
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;->mFlexShrink:F

    .line 1853
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;->mAlignSelf:I

    .line 1854
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;->mFlexBasisPercent:F

    .line 1855
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;->mMinWidth:I

    .line 1856
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;->mMinHeight:I

    .line 1857
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;->mMaxWidth:I

    .line 1858
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;->mMaxHeight:I

    .line 1859
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    :cond_0
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;->mWrapBefore:Z

    .line 1860
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;->bottomMargin:I

    .line 1861
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;->leftMargin:I

    .line 1862
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;->rightMargin:I

    .line 1863
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;->topMargin:I

    .line 1864
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;->height:I

    .line 1865
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;->width:I

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 1669
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x1

    .line 1579
    iput p1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;->mOrder:I

    const/4 p1, 0x0

    .line 1584
    iput p1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;->mFlexGrow:F

    const/high16 p1, 0x3f800000    # 1.0f

    .line 1589
    iput p1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;->mFlexShrink:F

    const/4 p1, -0x1

    .line 1594
    iput p1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;->mAlignSelf:I

    const/high16 v0, -0x40800000    # -1.0f

    .line 1599
    iput v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;->mFlexBasisPercent:F

    .line 1604
    iput p1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;->mMinWidth:I

    .line 1609
    iput p1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;->mMinHeight:I

    const p1, 0xffffff

    .line 1614
    iput p1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;->mMaxWidth:I

    .line 1619
    iput p1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;->mMaxHeight:I

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1

    .line 1677
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    const/4 p1, 0x1

    .line 1579
    iput p1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;->mOrder:I

    const/4 p1, 0x0

    .line 1584
    iput p1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;->mFlexGrow:F

    const/high16 p1, 0x3f800000    # 1.0f

    .line 1589
    iput p1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;->mFlexShrink:F

    const/4 p1, -0x1

    .line 1594
    iput p1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;->mAlignSelf:I

    const/high16 v0, -0x40800000    # -1.0f

    .line 1599
    iput v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;->mFlexBasisPercent:F

    .line 1604
    iput p1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;->mMinWidth:I

    .line 1609
    iput p1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;->mMinHeight:I

    const p1, 0xffffff

    .line 1614
    iput p1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;->mMaxWidth:I

    .line 1619
    iput p1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;->mMaxHeight:I

    return-void
.end method

.method public constructor <init>(Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;)V
    .locals 2

    .line 1654
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    const/4 v0, 0x1

    .line 1579
    iput v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;->mOrder:I

    const/4 v0, 0x0

    .line 1584
    iput v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;->mFlexGrow:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1589
    iput v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;->mFlexShrink:F

    const/4 v0, -0x1

    .line 1594
    iput v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;->mAlignSelf:I

    const/high16 v1, -0x40800000    # -1.0f

    .line 1599
    iput v1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;->mFlexBasisPercent:F

    .line 1604
    iput v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;->mMinWidth:I

    .line 1609
    iput v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;->mMinHeight:I

    const v0, 0xffffff

    .line 1614
    iput v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;->mMaxWidth:I

    .line 1619
    iput v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;->mMaxHeight:I

    .line 1656
    iget v0, p1, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;->mOrder:I

    iput v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;->mOrder:I

    .line 1657
    iget v0, p1, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;->mFlexGrow:F

    iput v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;->mFlexGrow:F

    .line 1658
    iget v0, p1, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;->mFlexShrink:F

    iput v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;->mFlexShrink:F

    .line 1659
    iget v0, p1, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;->mAlignSelf:I

    iput v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;->mAlignSelf:I

    .line 1660
    iget v0, p1, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;->mFlexBasisPercent:F

    iput v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;->mFlexBasisPercent:F

    .line 1661
    iget v0, p1, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;->mMinWidth:I

    iput v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;->mMinWidth:I

    .line 1662
    iget v0, p1, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;->mMinHeight:I

    iput v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;->mMinHeight:I

    .line 1663
    iget v0, p1, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;->mMaxWidth:I

    iput v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;->mMaxWidth:I

    .line 1664
    iget v0, p1, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;->mMaxHeight:I

    iput v0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;->mMaxHeight:I

    .line 1665
    iget-boolean p1, p1, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;->mWrapBefore:Z

    iput-boolean p1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;->mWrapBefore:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getAlignSelf()I
    .locals 0

    .line 1733
    iget p0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;->mAlignSelf:I

    return p0
.end method

.method public getFlexBasisPercent()F
    .locals 0

    .line 1793
    iget p0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;->mFlexBasisPercent:F

    return p0
.end method

.method public getFlexGrow()F
    .locals 0

    .line 1712
    iget p0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;->mFlexGrow:F

    return p0
.end method

.method public getFlexShrink()F
    .locals 0

    .line 1722
    iget p0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;->mFlexShrink:F

    return p0
.end method

.method public getHeight()I
    .locals 0

    .line 1692
    iget p0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;->height:I

    return p0
.end method

.method public getMarginBottom()I
    .locals 0

    .line 1818
    iget p0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;->bottomMargin:I

    return p0
.end method

.method public getMarginLeft()I
    .locals 0

    .line 1803
    iget p0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;->leftMargin:I

    return p0
.end method

.method public getMarginRight()I
    .locals 0

    .line 1813
    iget p0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;->rightMargin:I

    return p0
.end method

.method public getMarginTop()I
    .locals 0

    .line 1808
    iget p0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;->topMargin:I

    return p0
.end method

.method public getMaxHeight()I
    .locals 0

    .line 1773
    iget p0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;->mMaxHeight:I

    return p0
.end method

.method public getMaxWidth()I
    .locals 0

    .line 1763
    iget p0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;->mMaxWidth:I

    return p0
.end method

.method public getMinHeight()I
    .locals 0

    .line 1753
    iget p0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;->mMinHeight:I

    return p0
.end method

.method public getMinWidth()I
    .locals 0

    .line 1743
    iget p0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;->mMinWidth:I

    return p0
.end method

.method public getOrder()I
    .locals 0

    .line 1702
    iget p0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;->mOrder:I

    return p0
.end method

.method public getWidth()I
    .locals 0

    .line 1682
    iget p0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;->width:I

    return p0
.end method

.method public isWrapBefore()Z
    .locals 0

    .line 1783
    iget-boolean p0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;->mWrapBefore:Z

    return p0
.end method

.method public setAlignSelf(I)V
    .locals 0

    .line 1738
    iput p1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;->mAlignSelf:I

    return-void
.end method

.method public setFlexBasisPercent(F)V
    .locals 0

    .line 1798
    iput p1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;->mFlexBasisPercent:F

    return-void
.end method

.method public setFlexGrow(F)V
    .locals 0

    .line 1717
    iput p1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;->mFlexGrow:F

    return-void
.end method

.method public setFlexShrink(F)V
    .locals 0

    .line 1727
    iput p1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;->mFlexShrink:F

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    .line 1697
    iput p1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;->height:I

    return-void
.end method

.method public setMaxHeight(I)V
    .locals 0

    .line 1778
    iput p1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;->mMaxHeight:I

    return-void
.end method

.method public setMaxWidth(I)V
    .locals 0

    .line 1768
    iput p1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;->mMaxWidth:I

    return-void
.end method

.method public setMinHeight(I)V
    .locals 0

    .line 1758
    iput p1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;->mMinHeight:I

    return-void
.end method

.method public setMinWidth(I)V
    .locals 0

    .line 1748
    iput p1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;->mMinWidth:I

    return-void
.end method

.method public setOrder(I)V
    .locals 0

    .line 1707
    iput p1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;->mOrder:I

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    .line 1687
    iput p1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;->width:I

    return-void
.end method

.method public setWrapBefore(Z)V
    .locals 0

    .line 1788
    iput-boolean p1, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;->mWrapBefore:Z

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1828
    iget p2, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;->mOrder:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1829
    iget p2, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;->mFlexGrow:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1830
    iget p2, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;->mFlexShrink:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1831
    iget p2, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;->mAlignSelf:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1832
    iget p2, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;->mFlexBasisPercent:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1833
    iget p2, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;->mMinWidth:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1834
    iget p2, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;->mMinHeight:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1835
    iget p2, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;->mMaxWidth:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1836
    iget p2, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;->mMaxHeight:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1837
    iget-boolean p2, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;->mWrapBefore:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 1838
    iget p2, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1839
    iget p2, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;->leftMargin:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1840
    iget p2, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;->rightMargin:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1841
    iget p2, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;->topMargin:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1842
    iget p2, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;->height:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1843
    iget p0, p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayout$LayoutParams;->width:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
