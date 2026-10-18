.class public final Landroid/hardware/camera2/params/RggbChannelVector;
.super Ljava/lang/Object;
.source "RggbChannelVector.java"


# static fields
.field public static final BLUE:I = 0x3

.field public static final COUNT:I = 0x4

.field public static final GREEN_EVEN:I = 0x1

.field public static final GREEN_ODD:I = 0x2

.field public static final RED:I


# instance fields
.field private final mBlue:F

.field private final mGreenEven:F

.field private final mGreenOdd:F

.field private final mRed:F


# direct methods
.method public constructor <init>(FFFF)V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "red"

    .line 60
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentFinite(FLjava/lang/String;)F

    move-result p1

    iput p1, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mRed:F

    const-string p1, "greenEven"

    .line 61
    invoke-static {p2, p1}, Lcom/android/internal/util/Preconditions;->checkArgumentFinite(FLjava/lang/String;)F

    move-result p1

    iput p1, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mGreenEven:F

    const-string p1, "greenOdd"

    .line 62
    invoke-static {p3, p1}, Lcom/android/internal/util/Preconditions;->checkArgumentFinite(FLjava/lang/String;)F

    move-result p1

    iput p1, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mGreenOdd:F

    const-string p1, "blue"

    .line 63
    invoke-static {p4, p1}, Lcom/android/internal/util/Preconditions;->checkArgumentFinite(FLjava/lang/String;)F

    move-result p1

    iput p1, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mBlue:F

    return-void
.end method

.method private toShortString()Ljava/lang/String;
    .locals 4

    const-string/jumbo v0, "{R:%f, G_even:%f, G_odd:%f, B:%f}"

    const/4 v1, 0x4

    .line 215
    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mRed:F

    .line 216
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mGreenEven:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget v2, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mGreenOdd:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget p0, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mBlue:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    const/4 v2, 0x3

    aput-object p0, v1, v2

    .line 215
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public copyTo([FI)V
    .locals 2

    const-string v0, "destination must not be null"

    .line 148
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    array-length v0, p1

    sub-int/2addr v0, p2

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    add-int/lit8 v0, p2, 0x0

    .line 153
    iget v1, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mRed:F

    aput v1, p1, v0

    add-int/lit8 v0, p2, 0x1

    .line 154
    iget v1, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mGreenEven:F

    aput v1, p1, v0

    add-int/lit8 v0, p2, 0x2

    .line 155
    iget v1, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mGreenOdd:F

    aput v1, p1, v0

    add-int/lit8 p2, p2, 0x3

    .line 156
    iget p0, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mBlue:F

    aput p0, p1, p2

    return-void

    .line 150
    :cond_0
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p1, "destination too small to fit elements"

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    return v1

    .line 172
    :cond_1
    instance-of v2, p1, Landroid/hardware/camera2/params/RggbChannelVector;

    if-eqz v2, :cond_3

    .line 173
    check-cast p1, Landroid/hardware/camera2/params/RggbChannelVector;

    .line 174
    iget v2, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mRed:F

    iget v3, p1, Landroid/hardware/camera2/params/RggbChannelVector;->mRed:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    iget v2, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mGreenEven:F

    iget v3, p1, Landroid/hardware/camera2/params/RggbChannelVector;->mGreenEven:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    iget v2, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mGreenOdd:F

    iget v3, p1, Landroid/hardware/camera2/params/RggbChannelVector;->mGreenOdd:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    iget p0, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mBlue:F

    iget p1, p1, Landroid/hardware/camera2/params/RggbChannelVector;->mBlue:F

    cmpl-float p0, p0, p1

    if-nez p0, :cond_2

    move v0, v1

    :cond_2
    return v0

    :cond_3
    return v0
.end method

.method public getBlue()F
    .locals 0

    .line 99
    iget p0, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mBlue:F

    return p0
.end method

.method public getComponent(I)F
    .locals 2

    if-ltz p1, :cond_0

    const/4 v0, 0x4

    if-ge p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 128
    new-instance p0, Ljava/lang/AssertionError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unhandled case "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    .line 126
    :pswitch_0
    iget p0, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mBlue:F

    return p0

    .line 124
    :pswitch_1
    iget p0, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mGreenOdd:F

    return p0

    .line 122
    :pswitch_2
    iget p0, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mGreenEven:F

    return p0

    .line 120
    :pswitch_3
    iget p0, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mRed:F

    return p0

    .line 115
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Color channel out of range"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getGreenEven()F
    .locals 0

    .line 81
    iget p0, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mGreenEven:F

    return p0
.end method

.method public getGreenOdd()F
    .locals 0

    .line 90
    iget p0, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mGreenOdd:F

    return p0
.end method

.method public final getRed()F
    .locals 0

    .line 72
    iget p0, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mRed:F

    return p0
.end method

.method public hashCode()I
    .locals 2

    .line 187
    iget v0, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mRed:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    iget v1, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mGreenEven:F

    .line 188
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    xor-int/2addr v0, v1

    iget v1, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mGreenOdd:F

    .line 189
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    xor-int/2addr v0, v1

    iget p0, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mBlue:F

    .line 190
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "RggbChannelVector%s"

    const/4 v1, 0x1

    .line 203
    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0}, Landroid/hardware/camera2/params/RggbChannelVector;->toShortString()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
