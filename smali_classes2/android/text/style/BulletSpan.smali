.class public Landroid/text/style/BulletSpan;
.super Ljava/lang/Object;
.source "BulletSpan.java"

# interfaces
.implements Landroid/text/style/LeadingMarginSpan;
.implements Landroid/text/ParcelableSpan;


# static fields
.field private static final STANDARD_BULLET_RADIUS:I = 0x4

.field private static final STANDARD_COLOR:I = 0x0

.field public static final STANDARD_GAP_WIDTH:I = 0x2


# instance fields
.field private mBulletPath:Landroid/graphics/Path;

.field private final mBulletRadius:I

.field private final mColor:I

.field private final mGapWidth:I

.field private final mWantColor:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x4

    .line 85
    invoke-direct {p0, v1, v0, v0, v2}, Landroid/text/style/BulletSpan;-><init>(IIZI)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x4

    .line 94
    invoke-direct {p0, p1, v0, v0, v1}, Landroid/text/style/BulletSpan;-><init>(IIZI)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x4

    .line 105
    invoke-direct {p0, p1, p2, v0, v1}, Landroid/text/style/BulletSpan;-><init>(IIZI)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 1

    const/4 v0, 0x1

    .line 117
    invoke-direct {p0, p1, p2, v0, p3}, Landroid/text/style/BulletSpan;-><init>(IIZI)V

    return-void
.end method

.method private constructor <init>(IIZI)V
    .locals 1

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 76
    iput-object v0, p0, Landroid/text/style/BulletSpan;->mBulletPath:Landroid/graphics/Path;

    .line 122
    iput p1, p0, Landroid/text/style/BulletSpan;->mGapWidth:I

    .line 123
    iput p4, p0, Landroid/text/style/BulletSpan;->mBulletRadius:I

    .line 124
    iput p2, p0, Landroid/text/style/BulletSpan;->mColor:I

    .line 125
    iput-boolean p3, p0, Landroid/text/style/BulletSpan;->mWantColor:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 76
    iput-object v0, p0, Landroid/text/style/BulletSpan;->mBulletPath:Landroid/graphics/Path;

    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/text/style/BulletSpan;->mGapWidth:I

    .line 133
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroid/text/style/BulletSpan;->mWantColor:Z

    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/text/style/BulletSpan;->mColor:I

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/text/style/BulletSpan;->mBulletRadius:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public drawLeadingMargin(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLandroid/text/Layout;)V
    .locals 0

    .line 205
    check-cast p8, Landroid/text/Spanned;

    invoke-interface {p8, p0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result p6

    if-ne p6, p9, :cond_5

    .line 206
    invoke-virtual {p2}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object p6

    const/4 p8, 0x0

    .line 209
    iget-boolean p10, p0, Landroid/text/style/BulletSpan;->mWantColor:Z

    if-eqz p10, :cond_0

    .line 210
    invoke-virtual {p2}, Landroid/graphics/Paint;->getColor()I

    move-result p8

    .line 211
    iget p10, p0, Landroid/text/style/BulletSpan;->mColor:I

    invoke-virtual {p2, p10}, Landroid/graphics/Paint;->setColor(I)V

    .line 214
    :cond_0
    sget-object p10, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, p10}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    if-eqz p12, :cond_1

    .line 220
    invoke-virtual {p12, p9}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result p9

    .line 221
    invoke-virtual {p12, p9}, Landroid/text/Layout;->getLineExtra(I)I

    move-result p9

    sub-int/2addr p7, p9

    :cond_1
    add-int/2addr p5, p7

    int-to-float p5, p5

    const/high16 p7, 0x40000000    # 2.0f

    div-float/2addr p5, p7

    .line 225
    iget p7, p0, Landroid/text/style/BulletSpan;->mBulletRadius:I

    mul-int/2addr p4, p7

    add-int/2addr p3, p4

    int-to-float p3, p3

    .line 227
    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result p4

    if-eqz p4, :cond_3

    .line 228
    iget-object p4, p0, Landroid/text/style/BulletSpan;->mBulletPath:Landroid/graphics/Path;

    if-nez p4, :cond_2

    .line 229
    new-instance p4, Landroid/graphics/Path;

    invoke-direct {p4}, Landroid/graphics/Path;-><init>()V

    iput-object p4, p0, Landroid/text/style/BulletSpan;->mBulletPath:Landroid/graphics/Path;

    .line 230
    iget-object p4, p0, Landroid/text/style/BulletSpan;->mBulletPath:Landroid/graphics/Path;

    iget p7, p0, Landroid/text/style/BulletSpan;->mBulletRadius:I

    int-to-float p7, p7

    sget-object p9, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    const/4 p10, 0x0

    invoke-virtual {p4, p10, p10, p7, p9}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 233
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 234
    invoke-virtual {p1, p3, p5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 235
    iget-object p3, p0, Landroid/text/style/BulletSpan;->mBulletPath:Landroid/graphics/Path;

    invoke-virtual {p1, p3, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 236
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 238
    :cond_3
    iget p4, p0, Landroid/text/style/BulletSpan;->mBulletRadius:I

    int-to-float p4, p4

    invoke-virtual {p1, p3, p5, p4, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 241
    :goto_0
    iget-boolean p0, p0, Landroid/text/style/BulletSpan;->mWantColor:Z

    if-eqz p0, :cond_4

    .line 242
    invoke-virtual {p2, p8}, Landroid/graphics/Paint;->setColor(I)V

    .line 245
    :cond_4
    invoke-virtual {p2, p6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    :cond_5
    return-void
.end method

.method public getBulletRadius()I
    .locals 0

    .line 188
    iget p0, p0, Landroid/text/style/BulletSpan;->mBulletRadius:I

    return p0
.end method

.method public getColor()I
    .locals 0

    .line 197
    iget p0, p0, Landroid/text/style/BulletSpan;->mColor:I

    return p0
.end method

.method public getGapWidth()I
    .locals 0

    .line 179
    iget p0, p0, Landroid/text/style/BulletSpan;->mGapWidth:I

    return p0
.end method

.method public getLeadingMargin(Z)I
    .locals 0

    .line 170
    iget p1, p0, Landroid/text/style/BulletSpan;->mBulletRadius:I

    mul-int/lit8 p1, p1, 0x2

    iget p0, p0, Landroid/text/style/BulletSpan;->mGapWidth:I

    add-int/2addr p1, p0

    return p1
.end method

.method public getSpanTypeId()I
    .locals 0

    .line 140
    invoke-virtual {p0}, Landroid/text/style/BulletSpan;->getSpanTypeIdInternal()I

    move-result p0

    return p0
.end method

.method public getSpanTypeIdInternal()I
    .locals 0

    const/16 p0, 0x8

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 156
    invoke-virtual {p0, p1, p2}, Landroid/text/style/BulletSpan;->writeToParcelInternal(Landroid/os/Parcel;I)V

    return-void
.end method

.method public writeToParcelInternal(Landroid/os/Parcel;I)V
    .locals 0

    .line 162
    iget p2, p0, Landroid/text/style/BulletSpan;->mGapWidth:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 163
    iget-boolean p2, p0, Landroid/text/style/BulletSpan;->mWantColor:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 164
    iget p2, p0, Landroid/text/style/BulletSpan;->mColor:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 165
    iget p0, p0, Landroid/text/style/BulletSpan;->mBulletRadius:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
