.class public Landroid/content/res/CompatibilityInfo;
.super Ljava/lang/Object;
.source "CompatibilityInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/CompatibilityInfo$Translator;
    }
.end annotation


# static fields
.field private static final ALWAYS_NEEDS_COMPAT:I = 0x2

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/res/CompatibilityInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

.field public static final DEFAULT_NORMAL_SHORT_DIMENSION:I = 0x140

.field public static final MAXIMUM_ASPECT_RATIO:F = 1.7791667f

.field private static final NEEDS_COMPAT_RES:I = 0x10

.field private static final NEEDS_SCREEN_COMPAT:I = 0x8

.field private static final NEVER_NEEDS_COMPAT:I = 0x4

.field private static final SCALING_REQUIRED:I = 0x1


# instance fields
.field public final applicationDensity:I

.field public final applicationInvertedScale:F

.field public final applicationScale:F

.field private final mCompatibilityFlags:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    new-instance v0, Landroid/content/res/CompatibilityInfo$1;

    invoke-direct {v0}, Landroid/content/res/CompatibilityInfo$1;-><init>()V

    sput-object v0, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    .line 596
    new-instance v0, Landroid/content/res/CompatibilityInfo$2;

    invoke-direct {v0}, Landroid/content/res/CompatibilityInfo$2;-><init>()V

    sput-object v0, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 263
    sget v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x4

    invoke-direct {p0, v2, v0, v1, v1}, Landroid/content/res/CompatibilityInfo;-><init>(IIFF)V

    return-void
.end method

.method private constructor <init>(IIFF)V
    .locals 0

    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 256
    iput p1, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    .line 257
    iput p2, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    .line 258
    iput p3, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 259
    iput p4, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    return-void
.end method

.method public constructor <init>(Landroid/content/pm/ApplicationInfo;IIZ)V
    .locals 7

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/4 v1, 0x0

    const/16 v2, 0x1a

    if-ge v0, v2, :cond_0

    const/16 v0, 0x10

    goto :goto_0

    :cond_0
    move v0, v1

    .line 109
    :goto_0
    iget v2, p1, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    const/high16 v3, 0x3f800000    # 1.0f

    if-nez v2, :cond_f

    iget v2, p1, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    if-nez v2, :cond_f

    iget v2, p1, Landroid/content/pm/ApplicationInfo;->largestWidthLimitDp:I

    if-eqz v2, :cond_1

    goto/16 :goto_4

    .line 178
    :cond_1
    iget p3, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 p3, p3, 0x800

    const/4 v2, 0x1

    const/16 v4, 0x8

    if-eqz p3, :cond_3

    if-nez p4, :cond_2

    const/16 v1, 0x2a

    move p3, v2

    goto :goto_1

    :cond_2
    move p3, v2

    move v1, v4

    goto :goto_1

    :cond_3
    move p3, v1

    .line 188
    :goto_1
    iget v5, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v6, 0x80000

    and-int/2addr v5, v6

    if-eqz v5, :cond_5

    if-nez p4, :cond_4

    or-int/lit8 v1, v1, 0x22

    :cond_4
    move p3, v2

    .line 194
    :cond_5
    iget v5, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v5, v5, 0x1000

    if-eqz v5, :cond_6

    or-int/lit8 v1, v1, 0x2

    move p3, v2

    :cond_6
    if-eqz p4, :cond_7

    and-int/lit8 v1, v1, -0x3

    :cond_7
    or-int/lit8 p4, v0, 0x8

    and-int/lit8 v0, p2, 0xf

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    and-int/lit8 v0, v1, 0x20

    if-eqz v0, :cond_8

    and-int/lit8 p4, p4, -0x9

    .line 213
    :cond_8
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v0, v6

    if-eqz v0, :cond_a

    or-int/lit8 p4, p4, 0x4

    goto :goto_2

    :pswitch_1
    and-int/lit8 v0, v1, 0x8

    if-eqz v0, :cond_9

    and-int/lit8 p4, p4, -0x9

    .line 221
    :cond_9
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_a

    or-int/lit8 p4, p4, 0x4

    :cond_a
    :goto_2
    const/high16 v0, 0x10000000

    and-int/2addr p2, v0

    if-eqz p2, :cond_c

    and-int/lit8 p2, v1, 0x2

    if-eqz p2, :cond_b

    and-int/lit8 p4, p4, -0x9

    goto :goto_3

    :cond_b
    if-nez p3, :cond_d

    or-int/lit8 p4, p4, 0x2

    goto :goto_3

    :cond_c
    and-int/lit8 p2, p4, -0x9

    or-int/lit8 p4, p2, 0x4

    .line 238
    :cond_d
    :goto_3
    iget p1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 p1, p1, 0x2000

    if-eqz p1, :cond_e

    .line 239
    sget p1, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    iput p1, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    .line 240
    iput v3, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 241
    iput v3, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    goto :goto_9

    :cond_e
    const/16 p1, 0xa0

    .line 243
    iput p1, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    .line 244
    sget p1, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    int-to-float p1, p1

    const/high16 p2, 0x43200000    # 160.0f

    div-float/2addr p1, p2

    iput p1, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 246
    iget p1, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    div-float/2addr v3, p1

    iput v3, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    or-int/lit8 p4, p4, 0x1

    goto :goto_9

    .line 112
    :cond_f
    :goto_4
    iget p2, p1, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    if-eqz p2, :cond_10

    .line 113
    iget p2, p1, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    goto :goto_5

    .line 114
    :cond_10
    iget p2, p1, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    :goto_5
    if-nez p2, :cond_11

    .line 116
    iget p2, p1, Landroid/content/pm/ApplicationInfo;->largestWidthLimitDp:I

    .line 118
    :cond_11
    iget v1, p1, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    if-eqz v1, :cond_12

    .line 119
    iget v1, p1, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    goto :goto_6

    :cond_12
    move v1, p2

    :goto_6
    if-ge v1, p2, :cond_13

    move v1, p2

    .line 123
    :cond_13
    iget p1, p1, Landroid/content/pm/ApplicationInfo;->largestWidthLimitDp:I

    const/16 v2, 0x140

    if-le p2, v2, :cond_15

    or-int/lit8 v0, v0, 0x4

    :cond_14
    :goto_7
    move p4, v0

    goto :goto_8

    :cond_15
    if-eqz p1, :cond_16

    if-le p3, p1, :cond_16

    or-int/lit8 v0, v0, 0xa

    goto :goto_7

    :cond_16
    if-lt v1, p3, :cond_17

    or-int/lit8 v0, v0, 0x4

    goto :goto_7

    :cond_17
    if-eqz p4, :cond_14

    or-int/lit8 v0, v0, 0x8

    goto :goto_7

    .line 149
    :goto_8
    sget p1, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    iput p1, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    .line 150
    iput v3, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 151
    iput v3, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    .line 251
    :goto_9
    iput p4, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    return-void

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method synthetic constructor <init>(Landroid/content/res/CompatibilityInfo$1;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Landroid/content/res/CompatibilityInfo;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 609
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 610
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    .line 611
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    .line 612
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 613
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    iput p1, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/content/res/CompatibilityInfo$1;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Landroid/content/res/CompatibilityInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static computeCompatibleScaling(Landroid/util/DisplayMetrics;Landroid/util/DisplayMetrics;)F
    .locals 7

    .line 492
    iget v0, p0, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    .line 493
    iget v1, p0, Landroid/util/DisplayMetrics;->noncompatHeightPixels:I

    if-ge v0, v1, :cond_0

    move v3, v0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    move v3, v1

    :goto_0
    const/high16 v4, 0x43a00000    # 320.0f

    .line 502
    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p0, v4

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr p0, v4

    float-to-int p0, p0

    int-to-float v2, v2

    int-to-float v3, v3

    div-float/2addr v2, v3

    const v3, 0x3fe3bbbc

    cmpl-float v5, v2, v3

    if-lez v5, :cond_1

    move v2, v3

    :cond_1
    int-to-float v3, p0

    mul-float/2addr v3, v2

    add-float/2addr v3, v4

    float-to-int v2, v3

    if-ge v0, v1, :cond_2

    goto :goto_1

    :cond_2
    move v6, v2

    move v2, p0

    move p0, v6

    :goto_1
    int-to-float v0, v0

    int-to-float v3, p0

    div-float/2addr v0, v3

    int-to-float v1, v1

    int-to-float v3, v2

    div-float/2addr v1, v3

    cmpg-float v3, v0, v1

    if-gez v3, :cond_3

    goto :goto_2

    :cond_3
    move v0, v1

    :goto_2
    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v3, v0, v1

    if-gez v3, :cond_4

    move v0, v1

    :cond_4
    if-eqz p1, :cond_5

    .line 525
    iput p0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 526
    iput v2, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    :cond_5
    return v0
.end method


# virtual methods
.method public alwaysSupportsScreen()Z
    .locals 0

    .line 284
    iget p0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public applyToConfiguration(ILandroid/content/res/Configuration;)V
    .locals 1

    .line 466
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 470
    iget v0, p2, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, -0x10

    or-int/lit8 v0, v0, 0x2

    iput v0, p2, Landroid/content/res/Configuration;->screenLayout:I

    .line 473
    iget v0, p2, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    iput v0, p2, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 474
    iget v0, p2, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    iput v0, p2, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 475
    iget v0, p2, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    iput v0, p2, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 477
    :cond_0
    iput p1, p2, Landroid/content/res/Configuration;->densityDpi:I

    .line 478
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->isScalingRequired()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 479
    iget p0, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    .line 480
    iget p1, p2, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float p1, p1

    mul-float/2addr p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    iput p0, p2, Landroid/content/res/Configuration;->densityDpi:I

    :cond_1
    return-void
.end method

.method public applyToDisplayMetrics(Landroid/util/DisplayMetrics;)V
    .locals 2

    .line 444
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 447
    invoke-static {p1, p1}, Landroid/content/res/CompatibilityInfo;->computeCompatibleScaling(Landroid/util/DisplayMetrics;Landroid/util/DisplayMetrics;)F

    goto :goto_0

    .line 449
    :cond_0
    iget v0, p1, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    iput v0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 450
    iget v0, p1, Landroid/util/DisplayMetrics;->noncompatHeightPixels:I

    iput v0, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 453
    :goto_0
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->isScalingRequired()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 454
    iget p0, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    .line 455
    iget v0, p1, Landroid/util/DisplayMetrics;->noncompatDensity:F

    mul-float/2addr v0, p0

    iput v0, p1, Landroid/util/DisplayMetrics;->density:F

    .line 456
    iget v0, p1, Landroid/util/DisplayMetrics;->noncompatDensityDpi:I

    int-to-float v0, v0

    mul-float/2addr v0, p0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 457
    iget v0, p1, Landroid/util/DisplayMetrics;->noncompatScaledDensity:F

    mul-float/2addr v0, p0

    iput v0, p1, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 458
    iget v0, p1, Landroid/util/DisplayMetrics;->noncompatXdpi:F

    mul-float/2addr v0, p0

    iput v0, p1, Landroid/util/DisplayMetrics;->xdpi:F

    .line 459
    iget v0, p1, Landroid/util/DisplayMetrics;->noncompatYdpi:F

    mul-float/2addr v0, p0

    iput v0, p1, Landroid/util/DisplayMetrics;->ydpi:F

    .line 460
    iget v0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    mul-float/2addr v0, p0

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 461
    iget v0, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    mul-float/2addr v0, p0

    add-float/2addr v0, v1

    float-to-int p0, v0

    iput p0, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    :cond_1
    return-void
.end method

.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    .line 538
    :try_start_0
    check-cast p1, Landroid/content/res/CompatibilityInfo;

    .line 539
    iget v2, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    iget v3, p1, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    if-eq v2, v3, :cond_1

    return v1

    .line 540
    :cond_1
    iget v2, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    iget v3, p1, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    if-eq v2, v3, :cond_2

    return v1

    .line 541
    :cond_2
    iget v2, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    iget v3, p1, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_3

    return v1

    .line 542
    :cond_3
    iget p0, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    iget p1, p1, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    cmpl-float p0, p0, p1

    if-eqz p0, :cond_4

    return v1

    :cond_4
    return v0

    :catch_0
    return v1
.end method

.method public getTranslator()Landroid/content/res/CompatibilityInfo$Translator;
    .locals 1

    .line 296
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->isScalingRequired()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/res/CompatibilityInfo$Translator;

    invoke-direct {v0, p0}, Landroid/content/res/CompatibilityInfo$Translator;-><init>(Landroid/content/res/CompatibilityInfo;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 576
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 577
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 578
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 579
    iget p0, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p0

    add-int/2addr v1, p0

    return v1
.end method

.method public isScalingRequired()Z
    .locals 1

    .line 272
    iget p0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public needsCompatResources()Z
    .locals 0

    .line 288
    iget p0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public neverSupportsScreen()Z
    .locals 0

    .line 280
    iget p0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public supportsScreen()Z
    .locals 0

    .line 276
    iget p0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    and-int/lit8 p0, p0, 0x8

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 551
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v1, "{"

    .line 552
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 553
    iget v1, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "dpi"

    .line 554
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 555
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->isScalingRequired()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, " "

    .line 556
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 557
    iget v1, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "x"

    .line 558
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 560
    :cond_0
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, " resizing"

    .line 561
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 563
    :cond_1
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->neverSupportsScreen()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, " never-compat"

    .line 564
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 566
    :cond_2
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->alwaysSupportsScreen()Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, " always-compat"

    .line 567
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const-string/jumbo p0, "}"

    .line 569
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 570
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 590
    iget p2, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 591
    iget p2, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 592
    iget p2, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 593
    iget p0, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method
