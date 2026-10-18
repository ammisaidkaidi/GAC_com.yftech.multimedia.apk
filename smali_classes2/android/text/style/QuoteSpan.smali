.class public Landroid/text/style/QuoteSpan;
.super Ljava/lang/Object;
.source "QuoteSpan.java"

# interfaces
.implements Landroid/text/style/LeadingMarginSpan;
.implements Landroid/text/ParcelableSpan;


# static fields
.field public static final STANDARD_COLOR:I = -0xffff01

.field public static final STANDARD_GAP_WIDTH_PX:I = 0x2

.field public static final STANDARD_STRIPE_WIDTH_PX:I = 0x2


# instance fields
.field private final mColor:I

.field private final mGapWidth:I

.field private final mStripeWidth:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x2

    const v1, -0xffff01

    .line 88
    invoke-direct {p0, v1, v0, v0}, Landroid/text/style/QuoteSpan;-><init>(III)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x2

    .line 97
    invoke-direct {p0, p1, v0, v0}, Landroid/text/style/QuoteSpan;-><init>(III)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput p1, p0, Landroid/text/style/QuoteSpan;->mColor:I

    .line 111
    iput p2, p0, Landroid/text/style/QuoteSpan;->mStripeWidth:I

    .line 112
    iput p3, p0, Landroid/text/style/QuoteSpan;->mGapWidth:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/text/style/QuoteSpan;->mColor:I

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/text/style/QuoteSpan;->mStripeWidth:I

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/text/style/QuoteSpan;->mGapWidth:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public drawLeadingMargin(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLandroid/text/Layout;)V
    .locals 7

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    .line 195
    invoke-virtual {p2}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v3

    .line 196
    invoke-virtual {p2}, Landroid/graphics/Paint;->getColor()I

    move-result v4

    .line 198
    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 199
    iget v5, v0, Landroid/text/style/QuoteSpan;->mColor:I

    invoke-virtual {p2, v5}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v5, v2

    move v6, p5

    int-to-float v6, v6

    .line 201
    iget v0, v0, Landroid/text/style/QuoteSpan;->mStripeWidth:I

    mul-int/2addr v0, p4

    add-int/2addr v0, v2

    int-to-float v0, v0

    move v2, p7

    int-to-float v2, v2

    move-object p3, p1

    move p4, v5

    move p5, v6

    move p6, v0

    move p7, v2

    move-object p8, p2

    invoke-virtual/range {p3 .. p8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 203
    invoke-virtual {p2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 204
    invoke-virtual {p2, v4}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public getColor()I
    .locals 0

    .line 164
    iget p0, p0, Landroid/text/style/QuoteSpan;->mColor:I

    return p0
.end method

.method public getGapWidth()I
    .locals 0

    .line 182
    iget p0, p0, Landroid/text/style/QuoteSpan;->mGapWidth:I

    return p0
.end method

.method public getLeadingMargin(Z)I
    .locals 0

    .line 187
    iget p1, p0, Landroid/text/style/QuoteSpan;->mStripeWidth:I

    iget p0, p0, Landroid/text/style/QuoteSpan;->mGapWidth:I

    add-int/2addr p1, p0

    return p1
.end method

.method public getSpanTypeId()I
    .locals 0

    .line 126
    invoke-virtual {p0}, Landroid/text/style/QuoteSpan;->getSpanTypeIdInternal()I

    move-result p0

    return p0
.end method

.method public getSpanTypeIdInternal()I
    .locals 0

    const/16 p0, 0x9

    return p0
.end method

.method public getStripeWidth()I
    .locals 0

    .line 173
    iget p0, p0, Landroid/text/style/QuoteSpan;->mStripeWidth:I

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 144
    invoke-virtual {p0, p1, p2}, Landroid/text/style/QuoteSpan;->writeToParcelInternal(Landroid/os/Parcel;I)V

    return-void
.end method

.method public writeToParcelInternal(Landroid/os/Parcel;I)V
    .locals 0

    .line 152
    iget p2, p0, Landroid/text/style/QuoteSpan;->mColor:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 153
    iget p2, p0, Landroid/text/style/QuoteSpan;->mStripeWidth:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 154
    iget p0, p0, Landroid/text/style/QuoteSpan;->mGapWidth:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
