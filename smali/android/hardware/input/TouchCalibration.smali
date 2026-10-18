.class public Landroid/hardware/input/TouchCalibration;
.super Ljava/lang/Object;
.source "TouchCalibration.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/input/TouchCalibration;",
            ">;"
        }
    .end annotation
.end field

.field public static final IDENTITY:Landroid/hardware/input/TouchCalibration;


# instance fields
.field private final mXOffset:F

.field private final mXScale:F

.field private final mXYMix:F

.field private final mYOffset:F

.field private final mYScale:F

.field private final mYXMix:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    new-instance v0, Landroid/hardware/input/TouchCalibration;

    invoke-direct {v0}, Landroid/hardware/input/TouchCalibration;-><init>()V

    sput-object v0, Landroid/hardware/input/TouchCalibration;->IDENTITY:Landroid/hardware/input/TouchCalibration;

    .line 31
    new-instance v0, Landroid/hardware/input/TouchCalibration$1;

    invoke-direct {v0}, Landroid/hardware/input/TouchCalibration$1;-><init>()V

    sput-object v0, Landroid/hardware/input/TouchCalibration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    move-object v0, p0

    .line 49
    invoke-direct/range {v0 .. v6}, Landroid/hardware/input/TouchCalibration;-><init>(FFFFFF)V

    return-void
.end method

.method public constructor <init>(FFFFFF)V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput p1, p0, Landroid/hardware/input/TouchCalibration;->mXScale:F

    .line 64
    iput p2, p0, Landroid/hardware/input/TouchCalibration;->mXYMix:F

    .line 65
    iput p3, p0, Landroid/hardware/input/TouchCalibration;->mXOffset:F

    .line 66
    iput p4, p0, Landroid/hardware/input/TouchCalibration;->mYXMix:F

    .line 67
    iput p5, p0, Landroid/hardware/input/TouchCalibration;->mYScale:F

    .line 68
    iput p6, p0, Landroid/hardware/input/TouchCalibration;->mYOffset:F

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/hardware/input/TouchCalibration;->mXScale:F

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/hardware/input/TouchCalibration;->mXYMix:F

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/hardware/input/TouchCalibration;->mXOffset:F

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/hardware/input/TouchCalibration;->mYXMix:F

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/hardware/input/TouchCalibration;->mYScale:F

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    iput p1, p0, Landroid/hardware/input/TouchCalibration;->mYOffset:F

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 103
    :cond_0
    instance-of v1, p1, Landroid/hardware/input/TouchCalibration;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 104
    check-cast p1, Landroid/hardware/input/TouchCalibration;

    .line 106
    iget v1, p1, Landroid/hardware/input/TouchCalibration;->mXScale:F

    iget v3, p0, Landroid/hardware/input/TouchCalibration;->mXScale:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_1

    iget v1, p1, Landroid/hardware/input/TouchCalibration;->mXYMix:F

    iget v3, p0, Landroid/hardware/input/TouchCalibration;->mXYMix:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_1

    iget v1, p1, Landroid/hardware/input/TouchCalibration;->mXOffset:F

    iget v3, p0, Landroid/hardware/input/TouchCalibration;->mXOffset:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_1

    iget v1, p1, Landroid/hardware/input/TouchCalibration;->mYXMix:F

    iget v3, p0, Landroid/hardware/input/TouchCalibration;->mYXMix:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_1

    iget v1, p1, Landroid/hardware/input/TouchCalibration;->mYScale:F

    iget v3, p0, Landroid/hardware/input/TouchCalibration;->mYScale:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_1

    iget p1, p1, Landroid/hardware/input/TouchCalibration;->mYOffset:F

    iget p0, p0, Landroid/hardware/input/TouchCalibration;->mYOffset:F

    cmpl-float p0, p1, p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public getAffineTransform()[F
    .locals 3

    const/4 v0, 0x6

    .line 96
    new-array v0, v0, [F

    iget v1, p0, Landroid/hardware/input/TouchCalibration;->mXScale:F

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p0, Landroid/hardware/input/TouchCalibration;->mXYMix:F

    const/4 v2, 0x1

    aput v1, v0, v2

    iget v1, p0, Landroid/hardware/input/TouchCalibration;->mXOffset:F

    const/4 v2, 0x2

    aput v1, v0, v2

    iget v1, p0, Landroid/hardware/input/TouchCalibration;->mYXMix:F

    const/4 v2, 0x3

    aput v1, v0, v2

    iget v1, p0, Landroid/hardware/input/TouchCalibration;->mYScale:F

    const/4 v2, 0x4

    aput v1, v0, v2

    iget p0, p0, Landroid/hardware/input/TouchCalibration;->mYOffset:F

    const/4 v1, 0x5

    aput p0, v0, v1

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 119
    iget v0, p0, Landroid/hardware/input/TouchCalibration;->mXScale:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    iget v1, p0, Landroid/hardware/input/TouchCalibration;->mXYMix:F

    .line 120
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    xor-int/2addr v0, v1

    iget v1, p0, Landroid/hardware/input/TouchCalibration;->mXOffset:F

    .line 121
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    xor-int/2addr v0, v1

    iget v1, p0, Landroid/hardware/input/TouchCalibration;->mYXMix:F

    .line 122
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    xor-int/2addr v0, v1

    iget v1, p0, Landroid/hardware/input/TouchCalibration;->mYScale:F

    .line 123
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    xor-int/2addr v0, v1

    iget p0, p0, Landroid/hardware/input/TouchCalibration;->mYOffset:F

    .line 124
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 82
    iget p2, p0, Landroid/hardware/input/TouchCalibration;->mXScale:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 83
    iget p2, p0, Landroid/hardware/input/TouchCalibration;->mXYMix:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 84
    iget p2, p0, Landroid/hardware/input/TouchCalibration;->mXOffset:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 85
    iget p2, p0, Landroid/hardware/input/TouchCalibration;->mYXMix:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 86
    iget p2, p0, Landroid/hardware/input/TouchCalibration;->mYScale:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 87
    iget p0, p0, Landroid/hardware/input/TouchCalibration;->mYOffset:F

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method
