.class public Landroid/graphics/ColorSpace$Rgb;
.super Landroid/graphics/ColorSpace;
.source "ColorSpace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/ColorSpace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Rgb"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/ColorSpace$Rgb$TransferParameters;
    }
.end annotation


# instance fields
.field private final mClampedEotf:Ljava/util/function/DoubleUnaryOperator;

.field private final mClampedOetf:Ljava/util/function/DoubleUnaryOperator;

.field private final mEotf:Ljava/util/function/DoubleUnaryOperator;

.field private final mInverseTransform:[F

.field private final mIsSrgb:Z

.field private final mIsWideGamut:Z

.field private final mMax:F

.field private final mMin:F

.field private final mOetf:Ljava/util/function/DoubleUnaryOperator;

.field private final mPrimaries:[F

.field private mTransferParameters:Landroid/graphics/ColorSpace$Rgb$TransferParameters;

.field private final mTransform:[F

.field private final mWhitePoint:[F


# direct methods
.method private constructor <init>(Landroid/graphics/ColorSpace$Rgb;[F[F)V
    .locals 4

    .line 2633
    invoke-virtual {p1}, Landroid/graphics/ColorSpace$Rgb;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/graphics/ColorSpace$Model;->RGB:Landroid/graphics/ColorSpace$Model;

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/graphics/ColorSpace;-><init>(Ljava/lang/String;Landroid/graphics/ColorSpace$Model;ILandroid/graphics/ColorSpace$1;)V

    .line 2635
    invoke-static {p3}, Landroid/graphics/ColorSpace$Rgb;->xyWhitePoint([F)[F

    move-result-object p3

    iput-object p3, p0, Landroid/graphics/ColorSpace$Rgb;->mWhitePoint:[F

    .line 2636
    iget-object p3, p1, Landroid/graphics/ColorSpace$Rgb;->mPrimaries:[F

    iput-object p3, p0, Landroid/graphics/ColorSpace$Rgb;->mPrimaries:[F

    .line 2638
    iput-object p2, p0, Landroid/graphics/ColorSpace$Rgb;->mTransform:[F

    .line 2639
    invoke-static {p2}, Landroid/graphics/ColorSpace;->access$1200([F)[F

    move-result-object p2

    iput-object p2, p0, Landroid/graphics/ColorSpace$Rgb;->mInverseTransform:[F

    .line 2641
    iget p2, p1, Landroid/graphics/ColorSpace$Rgb;->mMin:F

    iput p2, p0, Landroid/graphics/ColorSpace$Rgb;->mMin:F

    .line 2642
    iget p2, p1, Landroid/graphics/ColorSpace$Rgb;->mMax:F

    iput p2, p0, Landroid/graphics/ColorSpace$Rgb;->mMax:F

    .line 2644
    iget-object p2, p1, Landroid/graphics/ColorSpace$Rgb;->mOetf:Ljava/util/function/DoubleUnaryOperator;

    iput-object p2, p0, Landroid/graphics/ColorSpace$Rgb;->mOetf:Ljava/util/function/DoubleUnaryOperator;

    .line 2645
    iget-object p2, p1, Landroid/graphics/ColorSpace$Rgb;->mEotf:Ljava/util/function/DoubleUnaryOperator;

    iput-object p2, p0, Landroid/graphics/ColorSpace$Rgb;->mEotf:Ljava/util/function/DoubleUnaryOperator;

    .line 2647
    iget-object p2, p1, Landroid/graphics/ColorSpace$Rgb;->mClampedOetf:Ljava/util/function/DoubleUnaryOperator;

    iput-object p2, p0, Landroid/graphics/ColorSpace$Rgb;->mClampedOetf:Ljava/util/function/DoubleUnaryOperator;

    .line 2648
    iget-object p2, p1, Landroid/graphics/ColorSpace$Rgb;->mClampedEotf:Ljava/util/function/DoubleUnaryOperator;

    iput-object p2, p0, Landroid/graphics/ColorSpace$Rgb;->mClampedEotf:Ljava/util/function/DoubleUnaryOperator;

    .line 2650
    iget-boolean p2, p1, Landroid/graphics/ColorSpace$Rgb;->mIsWideGamut:Z

    iput-boolean p2, p0, Landroid/graphics/ColorSpace$Rgb;->mIsWideGamut:Z

    .line 2651
    iget-boolean p2, p1, Landroid/graphics/ColorSpace$Rgb;->mIsSrgb:Z

    iput-boolean p2, p0, Landroid/graphics/ColorSpace$Rgb;->mIsSrgb:Z

    .line 2653
    iget-object p1, p1, Landroid/graphics/ColorSpace$Rgb;->mTransferParameters:Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    iput-object p1, p0, Landroid/graphics/ColorSpace$Rgb;->mTransferParameters:Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/ColorSpace$Rgb;[F[FLandroid/graphics/ColorSpace$1;)V
    .locals 0

    .line 2021
    invoke-direct {p0, p1, p2, p3}, Landroid/graphics/ColorSpace$Rgb;-><init>(Landroid/graphics/ColorSpace$Rgb;[F[F)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[FD)V
    .locals 9

    .line 2434
    invoke-static {p2}, Landroid/graphics/ColorSpace$Rgb;->computePrimaries([F)[F

    move-result-object v2

    invoke-static {p2}, Landroid/graphics/ColorSpace$Rgb;->computeWhitePoint([F)[F

    move-result-object v3

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, -0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v8}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[FDFFI)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[FLandroid/graphics/ColorSpace$Rgb$TransferParameters;)V
    .locals 6

    .line 2312
    invoke-static {p2}, Landroid/graphics/ColorSpace$Rgb;->computePrimaries([F)[F

    move-result-object v2

    invoke-static {p2}, Landroid/graphics/ColorSpace$Rgb;->computeWhitePoint([F)[F

    move-result-object v3

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[FLandroid/graphics/ColorSpace$Rgb$TransferParameters;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[FLjava/util/function/DoubleUnaryOperator;Ljava/util/function/DoubleUnaryOperator;)V
    .locals 9

    .line 2234
    invoke-static {p2}, Landroid/graphics/ColorSpace$Rgb;->computePrimaries([F)[F

    move-result-object v2

    invoke-static {p2}, Landroid/graphics/ColorSpace$Rgb;->computeWhitePoint([F)[F

    move-result-object v3

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v8}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[FLjava/util/function/DoubleUnaryOperator;Ljava/util/function/DoubleUnaryOperator;FFI)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[F[FD)V
    .locals 9

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    .line 2474
    invoke-direct/range {v0 .. v8}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[FDFFI)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;[F[FDFFI)V
    .locals 20

    move-wide/from16 v9, p4

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, v9, v0

    if-nez v2, :cond_0

    .line 2523
    invoke-static {}, Ljava/util/function/DoubleUnaryOperator;->identity()Ljava/util/function/DoubleUnaryOperator;

    move-result-object v3

    :goto_0
    move-object v15, v3

    goto :goto_1

    .line 2524
    :cond_0
    new-instance v3, Landroid/graphics/-$$Lambda$ColorSpace$Rgb$CqKld6797g7__JnuY0NeFz5q4_E;

    invoke-direct {v3, v9, v10}, Landroid/graphics/-$$Lambda$ColorSpace$Rgb$CqKld6797g7__JnuY0NeFz5q4_E;-><init>(D)V

    goto :goto_0

    :goto_1
    if-nez v2, :cond_1

    .line 2525
    invoke-static {}, Ljava/util/function/DoubleUnaryOperator;->identity()Ljava/util/function/DoubleUnaryOperator;

    move-result-object v3

    :goto_2
    move-object/from16 v16, v3

    goto :goto_3

    .line 2526
    :cond_1
    new-instance v3, Landroid/graphics/-$$Lambda$ColorSpace$Rgb$ZvS77aTfobOSa2o9MTqYMph4Rcg;

    invoke-direct {v3, v9, v10}, Landroid/graphics/-$$Lambda$ColorSpace$Rgb$ZvS77aTfobOSa2o9MTqYMph4Rcg;-><init>(D)V

    goto :goto_2

    :goto_3
    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    move/from16 v17, p6

    move/from16 v18, p7

    move/from16 v19, p8

    .line 2522
    invoke-direct/range {v11 .. v19}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[FLjava/util/function/DoubleUnaryOperator;Ljava/util/function/DoubleUnaryOperator;FFI)V

    if-nez v2, :cond_2

    .line 2529
    new-instance v11, Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {v8}, Ljava/lang/Math;->ulp(F)F

    move-result v8

    float-to-double v12, v8

    add-double/2addr v12, v0

    move-object v0, v11

    move-wide v1, v2

    move-wide v3, v4

    move-wide v5, v6

    move-wide v7, v12

    move-wide/from16 v9, p4

    invoke-direct/range {v0 .. v10}, Landroid/graphics/ColorSpace$Rgb$TransferParameters;-><init>(DDDDD)V

    :goto_4
    move-object/from16 v0, p0

    goto :goto_5

    .line 2530
    :cond_2
    new-instance v11, Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    move-object v0, v11

    move-wide/from16 v9, p4

    invoke-direct/range {v0 .. v10}, Landroid/graphics/ColorSpace$Rgb$TransferParameters;-><init>(DDDDD)V

    goto :goto_4

    :goto_5
    iput-object v11, v0, Landroid/graphics/ColorSpace$Rgb;->mTransferParameters:Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;[F[FDFFILandroid/graphics/ColorSpace$1;)V
    .locals 0

    .line 2021
    invoke-direct/range {p0 .. p8}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[FDFFI)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[F[FLandroid/graphics/ColorSpace$Rgb$TransferParameters;)V
    .locals 6

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 2352
    invoke-direct/range {v0 .. v5}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[FLandroid/graphics/ColorSpace$Rgb$TransferParameters;I)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;[F[FLandroid/graphics/ColorSpace$Rgb$TransferParameters;I)V
    .locals 14

    move-object/from16 v0, p4

    .line 2396
    iget-wide v1, v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->e:D

    const-wide/16 v3, 0x0

    cmpl-double v1, v1, v3

    if-nez v1, :cond_0

    iget-wide v1, v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->f:D

    cmpl-double v1, v1, v3

    if-nez v1, :cond_0

    .line 2397
    new-instance v1, Landroid/graphics/-$$Lambda$ColorSpace$Rgb$bWzafC8vMHNuVmRuTUPEFUMlfuY;

    invoke-direct {v1, v0}, Landroid/graphics/-$$Lambda$ColorSpace$Rgb$bWzafC8vMHNuVmRuTUPEFUMlfuY;-><init>(Landroid/graphics/ColorSpace$Rgb$TransferParameters;)V

    goto :goto_0

    .line 2399
    :cond_0
    new-instance v1, Landroid/graphics/-$$Lambda$ColorSpace$Rgb$V_0lmM2WEpxGBDV_1G1wvvidn7Y;

    invoke-direct {v1, v0}, Landroid/graphics/-$$Lambda$ColorSpace$Rgb$V_0lmM2WEpxGBDV_1G1wvvidn7Y;-><init>(Landroid/graphics/ColorSpace$Rgb$TransferParameters;)V

    :goto_0
    move-object v9, v1

    .line 2401
    iget-wide v1, v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->e:D

    cmpl-double v1, v1, v3

    if-nez v1, :cond_1

    iget-wide v1, v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->f:D

    cmpl-double v1, v1, v3

    if-nez v1, :cond_1

    .line 2402
    new-instance v1, Landroid/graphics/-$$Lambda$ColorSpace$Rgb$b9VGKuNnse0bbguR9jbOM_wK2Ac;

    invoke-direct {v1, v0}, Landroid/graphics/-$$Lambda$ColorSpace$Rgb$b9VGKuNnse0bbguR9jbOM_wK2Ac;-><init>(Landroid/graphics/ColorSpace$Rgb$TransferParameters;)V

    goto :goto_1

    .line 2404
    :cond_1
    new-instance v1, Landroid/graphics/-$$Lambda$ColorSpace$Rgb$iMkODTKa3_8kPZUnZZerD2Lv-yo;

    invoke-direct {v1, v0}, Landroid/graphics/-$$Lambda$ColorSpace$Rgb$iMkODTKa3_8kPZUnZZerD2Lv-yo;-><init>(Landroid/graphics/ColorSpace$Rgb$TransferParameters;)V

    :goto_1
    move-object v10, v1

    const/4 v11, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    move-object v5, p0

    move-object v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move/from16 v13, p5

    .line 2395
    invoke-direct/range {v5 .. v13}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[FLjava/util/function/DoubleUnaryOperator;Ljava/util/function/DoubleUnaryOperator;FFI)V

    move-object v1, p0

    .line 2407
    iput-object v0, v1, Landroid/graphics/ColorSpace$Rgb;->mTransferParameters:Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;[F[FLandroid/graphics/ColorSpace$Rgb$TransferParameters;ILandroid/graphics/ColorSpace$1;)V
    .locals 0

    .line 2021
    invoke-direct/range {p0 .. p5}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[FLandroid/graphics/ColorSpace$Rgb$TransferParameters;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[F[FLjava/util/function/DoubleUnaryOperator;Ljava/util/function/DoubleUnaryOperator;FF)V
    .locals 9

    const/4 v8, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move/from16 v7, p7

    .line 2285
    invoke-direct/range {v0 .. v8}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[FLjava/util/function/DoubleUnaryOperator;Ljava/util/function/DoubleUnaryOperator;FFI)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;[F[FLjava/util/function/DoubleUnaryOperator;Ljava/util/function/DoubleUnaryOperator;FFI)V
    .locals 7

    .line 2581
    sget-object v0, Landroid/graphics/ColorSpace$Model;->RGB:Landroid/graphics/ColorSpace$Model;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p8, v1}, Landroid/graphics/ColorSpace;-><init>(Ljava/lang/String;Landroid/graphics/ColorSpace$Model;ILandroid/graphics/ColorSpace$1;)V

    if-eqz p2, :cond_5

    .line 2583
    array-length p1, p2

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    array-length p1, p2

    const/16 v0, 0x9

    if-ne p1, v0, :cond_5

    :cond_0
    if-eqz p3, :cond_4

    .line 2588
    array-length p1, p3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    array-length p1, p3

    const/4 v0, 0x3

    if-ne p1, v0, :cond_4

    :cond_1
    if-eqz p4, :cond_3

    if-eqz p5, :cond_3

    cmpl-float p1, p6, p7

    if-gez p1, :cond_2

    .line 2603
    invoke-static {p3}, Landroid/graphics/ColorSpace$Rgb;->xyWhitePoint([F)[F

    move-result-object p1

    iput-object p1, p0, Landroid/graphics/ColorSpace$Rgb;->mWhitePoint:[F

    .line 2604
    invoke-static {p2}, Landroid/graphics/ColorSpace$Rgb;->xyPrimaries([F)[F

    move-result-object p1

    iput-object p1, p0, Landroid/graphics/ColorSpace$Rgb;->mPrimaries:[F

    .line 2606
    iget-object p1, p0, Landroid/graphics/ColorSpace$Rgb;->mPrimaries:[F

    iget-object p2, p0, Landroid/graphics/ColorSpace$Rgb;->mWhitePoint:[F

    invoke-static {p1, p2}, Landroid/graphics/ColorSpace$Rgb;->computeXYZMatrix([F[F)[F

    move-result-object p1

    iput-object p1, p0, Landroid/graphics/ColorSpace$Rgb;->mTransform:[F

    .line 2607
    iget-object p1, p0, Landroid/graphics/ColorSpace$Rgb;->mTransform:[F

    invoke-static {p1}, Landroid/graphics/ColorSpace;->access$1200([F)[F

    move-result-object p1

    iput-object p1, p0, Landroid/graphics/ColorSpace$Rgb;->mInverseTransform:[F

    .line 2609
    iput-object p4, p0, Landroid/graphics/ColorSpace$Rgb;->mOetf:Ljava/util/function/DoubleUnaryOperator;

    .line 2610
    iput-object p5, p0, Landroid/graphics/ColorSpace$Rgb;->mEotf:Ljava/util/function/DoubleUnaryOperator;

    .line 2612
    iput p6, p0, Landroid/graphics/ColorSpace$Rgb;->mMin:F

    .line 2613
    iput p7, p0, Landroid/graphics/ColorSpace$Rgb;->mMax:F

    .line 2615
    new-instance p1, Landroid/graphics/-$$Lambda$ColorSpace$Rgb$8EkhO2jIf14tuA3BvrmYJMa7YXM;

    invoke-direct {p1, p0}, Landroid/graphics/-$$Lambda$ColorSpace$Rgb$8EkhO2jIf14tuA3BvrmYJMa7YXM;-><init>(Landroid/graphics/ColorSpace$Rgb;)V

    .line 2616
    invoke-interface {p4, p1}, Ljava/util/function/DoubleUnaryOperator;->andThen(Ljava/util/function/DoubleUnaryOperator;)Ljava/util/function/DoubleUnaryOperator;

    move-result-object p2

    iput-object p2, p0, Landroid/graphics/ColorSpace$Rgb;->mClampedOetf:Ljava/util/function/DoubleUnaryOperator;

    .line 2617
    invoke-interface {p1, p5}, Ljava/util/function/DoubleUnaryOperator;->andThen(Ljava/util/function/DoubleUnaryOperator;)Ljava/util/function/DoubleUnaryOperator;

    move-result-object p1

    iput-object p1, p0, Landroid/graphics/ColorSpace$Rgb;->mClampedEotf:Ljava/util/function/DoubleUnaryOperator;

    .line 2621
    iget-object p1, p0, Landroid/graphics/ColorSpace$Rgb;->mPrimaries:[F

    invoke-static {p1, p6, p7}, Landroid/graphics/ColorSpace$Rgb;->isWideGamut([FFF)Z

    move-result p1

    iput-boolean p1, p0, Landroid/graphics/ColorSpace$Rgb;->mIsWideGamut:Z

    .line 2622
    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mPrimaries:[F

    iget-object v1, p0, Landroid/graphics/ColorSpace$Rgb;->mWhitePoint:[F

    move-object v2, p4

    move-object v3, p5

    move v4, p6

    move v5, p7

    move v6, p8

    invoke-static/range {v0 .. v6}, Landroid/graphics/ColorSpace$Rgb;->isSrgb([F[FLjava/util/function/DoubleUnaryOperator;Ljava/util/function/DoubleUnaryOperator;FFI)Z

    move-result p1

    iput-boolean p1, p0, Landroid/graphics/ColorSpace$Rgb;->mIsSrgb:Z

    return-void

    .line 2599
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Invalid range: min="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, ", max="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, "; min must be strictly < max"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2594
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The transfer functions of a color space cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2589
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The color space\'s white point must be defined as an array of 2 floats in xyY or 3 float in XYZ"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2584
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The color space\'s primaries must be defined as an array of 6 floats in xyY or 9 floats in XYZ"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method synthetic constructor <init>(Ljava/lang/String;[F[FLjava/util/function/DoubleUnaryOperator;Ljava/util/function/DoubleUnaryOperator;FFILandroid/graphics/ColorSpace$1;)V
    .locals 0

    .line 2021
    invoke-direct/range {p0 .. p8}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[FLjava/util/function/DoubleUnaryOperator;Ljava/util/function/DoubleUnaryOperator;FFI)V

    return-void
.end method

.method static synthetic access$000(Landroid/graphics/ColorSpace$Rgb;)[F
    .locals 0

    .line 2021
    iget-object p0, p0, Landroid/graphics/ColorSpace$Rgb;->mWhitePoint:[F

    return-object p0
.end method

.method static synthetic access$100(Landroid/graphics/ColorSpace$Rgb;)[F
    .locals 0

    .line 2021
    iget-object p0, p0, Landroid/graphics/ColorSpace$Rgb;->mTransform:[F

    return-object p0
.end method

.method static synthetic access$2300(Landroid/graphics/ColorSpace$Rgb;)Ljava/util/function/DoubleUnaryOperator;
    .locals 0

    .line 2021
    iget-object p0, p0, Landroid/graphics/ColorSpace$Rgb;->mClampedEotf:Ljava/util/function/DoubleUnaryOperator;

    return-object p0
.end method

.method static synthetic access$2400(Landroid/graphics/ColorSpace$Rgb;)Ljava/util/function/DoubleUnaryOperator;
    .locals 0

    .line 2021
    iget-object p0, p0, Landroid/graphics/ColorSpace$Rgb;->mClampedOetf:Ljava/util/function/DoubleUnaryOperator;

    return-object p0
.end method

.method static synthetic access$2500(Landroid/graphics/ColorSpace$Rgb;)[F
    .locals 0

    .line 2021
    iget-object p0, p0, Landroid/graphics/ColorSpace$Rgb;->mInverseTransform:[F

    return-object p0
.end method

.method static synthetic access$300(Landroid/graphics/ColorSpace$Rgb;)Landroid/graphics/ColorSpace$Rgb$TransferParameters;
    .locals 0

    .line 2021
    iget-object p0, p0, Landroid/graphics/ColorSpace$Rgb;->mTransferParameters:Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    return-object p0
.end method

.method private static area([F)F
    .locals 7

    const/4 v0, 0x0

    .line 3130
    aget v0, p0, v0

    const/4 v1, 0x1

    .line 3131
    aget v1, p0, v1

    const/4 v2, 0x2

    .line 3132
    aget v2, p0, v2

    const/4 v3, 0x3

    .line 3133
    aget v3, p0, v3

    const/4 v4, 0x4

    .line 3134
    aget v4, p0, v4

    const/4 v5, 0x5

    .line 3135
    aget p0, p0, v5

    mul-float v5, v0, v3

    mul-float v6, v1, v4

    add-float/2addr v5, v6

    mul-float v6, v2, p0

    add-float/2addr v5, v6

    mul-float/2addr v3, v4

    sub-float/2addr v5, v3

    mul-float/2addr v1, v2

    sub-float/2addr v5, v1

    mul-float/2addr v0, p0

    sub-float/2addr v5, v0

    const/high16 p0, 0x3f000000    # 0.5f

    mul-float/2addr v5, p0

    const/4 p0, 0x0

    cmpg-float p0, v5, p0

    if-gez p0, :cond_0

    neg-float v5, v5

    :cond_0
    return v5
.end method

.method private clamp(D)D
    .locals 2

    .line 3020
    iget v0, p0, Landroid/graphics/ColorSpace$Rgb;->mMin:F

    float-to-double v0, v0

    cmpg-double v0, p1, v0

    if-gez v0, :cond_0

    iget p0, p0, Landroid/graphics/ColorSpace$Rgb;->mMin:F

    :goto_0
    float-to-double p1, p0

    goto :goto_1

    :cond_0
    iget v0, p0, Landroid/graphics/ColorSpace$Rgb;->mMax:F

    float-to-double v0, v0

    cmpl-double v0, p1, v0

    if-lez v0, :cond_1

    iget p0, p0, Landroid/graphics/ColorSpace$Rgb;->mMax:F

    goto :goto_0

    :cond_1
    :goto_1
    return-wide p1
.end method

.method private static computePrimaries([F)[F
    .locals 11

    const/4 v0, 0x3

    .line 3252
    new-array v1, v0, [F

    fill-array-data v1, :array_0

    invoke-static {p0, v1}, Landroid/graphics/ColorSpace;->access$1300([F[F)[F

    move-result-object v1

    .line 3253
    new-array v2, v0, [F

    fill-array-data v2, :array_1

    invoke-static {p0, v2}, Landroid/graphics/ColorSpace;->access$1300([F[F)[F

    move-result-object v2

    .line 3254
    new-array v3, v0, [F

    fill-array-data v3, :array_2

    invoke-static {p0, v3}, Landroid/graphics/ColorSpace;->access$1300([F[F)[F

    move-result-object p0

    const/4 v3, 0x0

    .line 3256
    aget v4, v1, v3

    const/4 v5, 0x1

    aget v6, v1, v5

    add-float/2addr v4, v6

    const/4 v6, 0x2

    aget v7, v1, v6

    add-float/2addr v4, v7

    .line 3257
    aget v7, v2, v3

    aget v8, v2, v5

    add-float/2addr v7, v8

    aget v8, v2, v6

    add-float/2addr v7, v8

    .line 3258
    aget v8, p0, v3

    aget v9, p0, v5

    add-float/2addr v8, v9

    aget v9, p0, v6

    add-float/2addr v8, v9

    const/4 v9, 0x6

    .line 3260
    new-array v9, v9, [F

    aget v10, v1, v3

    div-float/2addr v10, v4

    aput v10, v9, v3

    aget v1, v1, v5

    div-float/2addr v1, v4

    aput v1, v9, v5

    aget v1, v2, v3

    div-float/2addr v1, v7

    aput v1, v9, v6

    aget v1, v2, v5

    div-float/2addr v1, v7

    aput v1, v9, v0

    aget v0, p0, v3

    div-float/2addr v0, v8

    const/4 v1, 0x4

    aput v0, v9, v1

    aget p0, p0, v5

    div-float/2addr p0, v8

    const/4 v0, 0x5

    aput p0, v9, v0

    return-object v9

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private static computeWhitePoint([F)[F
    .locals 5

    const/4 v0, 0x3

    .line 3279
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {p0, v0}, Landroid/graphics/ColorSpace;->access$1300([F[F)[F

    move-result-object p0

    const/4 v0, 0x0

    .line 3280
    aget v1, p0, v0

    const/4 v2, 0x1

    aget v3, p0, v2

    add-float/2addr v1, v3

    const/4 v3, 0x2

    aget v4, p0, v3

    add-float/2addr v1, v4

    .line 3281
    new-array v3, v3, [F

    aget v4, p0, v0

    div-float/2addr v4, v1

    aput v4, v3, v0

    aget p0, p0, v2

    div-float/2addr p0, v1

    aput p0, v3, v2

    return-object v3

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private static computeXYZMatrix([F[F)[F
    .locals 25

    const/4 v2, 0x0

    .line 3358
    aget v3, p0, v2

    const/4 v4, 0x1

    .line 3359
    aget v5, p0, v4

    const/4 v6, 0x2

    .line 3360
    aget v7, p0, v6

    const/4 v8, 0x3

    .line 3361
    aget v9, p0, v8

    const/4 v10, 0x4

    .line 3362
    aget v11, p0, v10

    const/4 v12, 0x5

    .line 3363
    aget v0, p0, v12

    .line 3364
    aget v13, p1, v2

    .line 3365
    aget v1, p1, v4

    const/high16 v14, 0x3f800000    # 1.0f

    sub-float v15, v14, v3

    div-float v16, v15, v5

    sub-float v17, v14, v7

    div-float v18, v17, v9

    sub-float v19, v14, v11

    div-float v20, v19, v0

    sub-float v21, v14, v13

    div-float v21, v21, v1

    div-float v22, v3, v5

    div-float v23, v7, v9

    div-float v24, v11, v0

    div-float/2addr v13, v1

    sub-float v21, v21, v16

    sub-float v23, v23, v22

    mul-float v21, v21, v23

    sub-float v13, v13, v22

    sub-float v18, v18, v16

    mul-float v1, v13, v18

    sub-float v21, v21, v1

    sub-float v20, v20, v16

    mul-float v20, v20, v23

    sub-float v24, v24, v22

    mul-float v18, v18, v24

    sub-float v20, v20, v18

    div-float v21, v21, v20

    mul-float v24, v24, v21

    sub-float v13, v13, v24

    div-float v13, v13, v23

    sub-float/2addr v14, v13

    sub-float v14, v14, v21

    div-float v1, v14, v5

    div-float v16, v13, v9

    div-float v18, v21, v0

    const/16 v12, 0x9

    .line 3387
    new-array v12, v12, [F

    mul-float/2addr v3, v1

    aput v3, v12, v2

    aput v14, v12, v4

    sub-float/2addr v15, v5

    mul-float/2addr v1, v15

    aput v1, v12, v6

    mul-float v7, v7, v16

    aput v7, v12, v8

    aput v13, v12, v10

    sub-float v17, v17, v9

    mul-float v16, v16, v17

    const/4 v1, 0x5

    aput v16, v12, v1

    mul-float v11, v11, v18

    const/4 v1, 0x6

    aput v11, v12, v1

    const/4 v1, 0x7

    aput v21, v12, v1

    sub-float v19, v19, v0

    mul-float v18, v18, v19

    const/16 v0, 0x8

    aput v18, v12, v0

    return-object v12
.end method

.method private static contains([F[F)Z
    .locals 12

    const/4 v0, 0x6

    .line 3217
    new-array v0, v0, [F

    const/4 v1, 0x0

    aget v2, p0, v1

    aget v3, p1, v1

    sub-float/2addr v2, v3

    aput v2, v0, v1

    const/4 v2, 0x1

    aget v3, p0, v2

    aget v4, p1, v2

    sub-float/2addr v3, v4

    aput v3, v0, v2

    const/4 v3, 0x2

    aget v4, p0, v3

    aget v5, p1, v3

    sub-float/2addr v4, v5

    aput v4, v0, v3

    const/4 v4, 0x3

    aget v5, p0, v4

    aget v6, p1, v4

    sub-float/2addr v5, v6

    aput v5, v0, v4

    const/4 v5, 0x4

    aget v6, p0, v5

    aget v7, p1, v5

    sub-float/2addr v6, v7

    aput v6, v0, v5

    const/4 v6, 0x5

    aget p0, p0, v6

    aget v7, p1, v6

    sub-float/2addr p0, v7

    aput p0, v0, v6

    .line 3223
    aget p0, v0, v1

    aget v7, v0, v2

    aget v8, p1, v1

    aget v9, p1, v5

    sub-float/2addr v8, v9

    aget v9, p1, v2

    aget v10, p1, v6

    sub-float/2addr v9, v10

    invoke-static {p0, v7, v8, v9}, Landroid/graphics/ColorSpace$Rgb;->cross(FFFF)F

    move-result p0

    const/4 v7, 0x0

    cmpg-float p0, p0, v7

    if-ltz p0, :cond_5

    aget p0, p1, v1

    aget v8, p1, v3

    sub-float/2addr p0, v8

    aget v8, p1, v2

    aget v9, p1, v4

    sub-float/2addr v8, v9

    aget v9, v0, v1

    aget v10, v0, v2

    .line 3224
    invoke-static {p0, v8, v9, v10}, Landroid/graphics/ColorSpace$Rgb;->cross(FFFF)F

    move-result p0

    cmpg-float p0, p0, v7

    if-gez p0, :cond_0

    goto :goto_2

    .line 3228
    :cond_0
    aget p0, v0, v3

    aget v8, v0, v4

    aget v9, p1, v3

    aget v10, p1, v1

    sub-float/2addr v9, v10

    aget v10, p1, v4

    aget v11, p1, v2

    sub-float/2addr v10, v11

    invoke-static {p0, v8, v9, v10}, Landroid/graphics/ColorSpace$Rgb;->cross(FFFF)F

    move-result p0

    cmpg-float p0, p0, v7

    if-ltz p0, :cond_4

    aget p0, p1, v3

    aget v8, p1, v5

    sub-float/2addr p0, v8

    aget v8, p1, v4

    aget v9, p1, v6

    sub-float/2addr v8, v9

    aget v9, v0, v3

    aget v10, v0, v4

    .line 3229
    invoke-static {p0, v8, v9, v10}, Landroid/graphics/ColorSpace$Rgb;->cross(FFFF)F

    move-result p0

    cmpg-float p0, p0, v7

    if-gez p0, :cond_1

    goto :goto_1

    .line 3233
    :cond_1
    aget p0, v0, v5

    aget v8, v0, v6

    aget v9, p1, v5

    aget v3, p1, v3

    sub-float/2addr v9, v3

    aget v3, p1, v6

    aget v4, p1, v4

    sub-float/2addr v3, v4

    invoke-static {p0, v8, v9, v3}, Landroid/graphics/ColorSpace$Rgb;->cross(FFFF)F

    move-result p0

    cmpg-float p0, p0, v7

    if-ltz p0, :cond_3

    aget p0, p1, v5

    aget v3, p1, v1

    sub-float/2addr p0, v3

    aget v3, p1, v6

    aget p1, p1, v2

    sub-float/2addr v3, p1

    aget p1, v0, v5

    aget v0, v0, v6

    .line 3234
    invoke-static {p0, v3, p1, v0}, Landroid/graphics/ColorSpace$Rgb;->cross(FFFF)F

    move-result p0

    cmpg-float p0, p0, v7

    if-gez p0, :cond_2

    goto :goto_0

    :cond_2
    return v2

    :cond_3
    :goto_0
    return v1

    :cond_4
    :goto_1
    return v1

    :cond_5
    :goto_2
    return v1
.end method

.method private static cross(FFFF)F
    .locals 0

    mul-float/2addr p0, p3

    mul-float/2addr p1, p2

    sub-float/2addr p0, p1

    return p0
.end method

.method private static isSrgb([F[FLjava/util/function/DoubleUnaryOperator;Ljava/util/function/DoubleUnaryOperator;FFI)Z
    .locals 5

    const/4 v0, 0x1

    if-nez p6, :cond_0

    return v0

    .line 3086
    :cond_0
    invoke-static {}, Landroid/graphics/ColorSpace;->access$1400()[F

    move-result-object p6

    invoke-static {p0, p6}, Landroid/graphics/ColorSpace;->access$1500([F[F)Z

    move-result p0

    const/4 p6, 0x0

    if-nez p0, :cond_1

    return p6

    .line 3089
    :cond_1
    sget-object p0, Landroid/graphics/ColorSpace$Rgb;->ILLUMINANT_D65:[F

    invoke-static {p1, p0}, Landroid/graphics/ColorSpace;->access$1500([F[F)Z

    move-result p0

    if-nez p0, :cond_2

    return p6

    :cond_2
    const-wide/high16 p0, 0x3fe0000000000000L    # 0.5

    .line 3092
    invoke-interface {p2, p0, p1}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v1

    const-wide v3, 0x3fe000d1b71758e2L    # 0.5001

    cmpg-double p2, v1, v3

    if-gez p2, :cond_3

    return p6

    .line 3093
    :cond_3
    invoke-interface {p3, p0, p1}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide p0

    cmpl-double p0, p0, v3

    if-lez p0, :cond_4

    return p6

    :cond_4
    const/4 p0, 0x0

    cmpl-float p0, p4, p0

    if-eqz p0, :cond_5

    return p6

    :cond_5
    const/high16 p0, 0x3f800000    # 1.0f

    cmpl-float p0, p5, p0

    if-eqz p0, :cond_6

    return p6

    :cond_6
    return v0
.end method

.method private static isWideGamut([FFF)Z
    .locals 2

    .line 3116
    invoke-static {p0}, Landroid/graphics/ColorSpace$Rgb;->area([F)F

    move-result v0

    invoke-static {}, Landroid/graphics/ColorSpace;->access$1600()[F

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/ColorSpace$Rgb;->area([F)F

    move-result v1

    div-float/2addr v0, v1

    const v1, 0x3f666666    # 0.9f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 3117
    invoke-static {}, Landroid/graphics/ColorSpace;->access$1400()[F

    move-result-object v0

    invoke-static {p0, v0}, Landroid/graphics/ColorSpace$Rgb;->contains([F[F)Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    const/4 p0, 0x0

    cmpg-float p0, p1, p0

    if-gez p0, :cond_2

    const/high16 p0, 0x3f800000    # 1.0f

    cmpl-float p0, p2, p0

    if-lez p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic lambda$8EkhO2jIf14tuA3BvrmYJMa7YXM(Landroid/graphics/ColorSpace$Rgb;D)D
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/graphics/ColorSpace$Rgb;->clamp(D)D

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic lambda$new$0(Landroid/graphics/ColorSpace$Rgb$TransferParameters;D)D
    .locals 12

    .line 2397
    iget-wide v2, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->a:D

    iget-wide v4, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->b:D

    iget-wide v6, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->c:D

    iget-wide v8, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->d:D

    iget-wide v10, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->g:D

    move-wide v0, p1

    invoke-static/range {v0 .. v11}, Landroid/graphics/ColorSpace;->access$2000(DDDDDD)D

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic lambda$new$1(Landroid/graphics/ColorSpace$Rgb$TransferParameters;D)D
    .locals 16

    move-object/from16 v0, p0

    .line 2399
    iget-wide v2, v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->a:D

    iget-wide v4, v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->b:D

    iget-wide v6, v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->c:D

    iget-wide v8, v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->d:D

    iget-wide v10, v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->e:D

    iget-wide v12, v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->f:D

    iget-wide v14, v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->g:D

    move-wide/from16 v0, p1

    invoke-static/range {v0 .. v15}, Landroid/graphics/ColorSpace;->access$1900(DDDDDDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic lambda$new$2(Landroid/graphics/ColorSpace$Rgb$TransferParameters;D)D
    .locals 12

    .line 2402
    iget-wide v2, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->a:D

    iget-wide v4, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->b:D

    iget-wide v6, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->c:D

    iget-wide v8, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->d:D

    iget-wide v10, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->g:D

    move-wide v0, p1

    invoke-static/range {v0 .. v11}, Landroid/graphics/ColorSpace;->access$1800(DDDDDD)D

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic lambda$new$3(Landroid/graphics/ColorSpace$Rgb$TransferParameters;D)D
    .locals 16

    move-object/from16 v0, p0

    .line 2404
    iget-wide v2, v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->a:D

    iget-wide v4, v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->b:D

    iget-wide v6, v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->c:D

    iget-wide v8, v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->d:D

    iget-wide v10, v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->e:D

    iget-wide v12, v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->f:D

    iget-wide v14, v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->g:D

    move-wide/from16 v0, p1

    invoke-static/range {v0 .. v15}, Landroid/graphics/ColorSpace;->access$1700(DDDDDDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic lambda$new$4(DD)D
    .locals 3

    const-wide/16 v0, 0x0

    cmpg-double v2, p2, v0

    if-gez v2, :cond_0

    move-wide p2, v0

    :cond_0
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    div-double/2addr v0, p0

    .line 2524
    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic lambda$new$5(DD)D
    .locals 3

    const-wide/16 v0, 0x0

    cmpg-double v2, p2, v0

    if-gez v2, :cond_0

    move-wide p2, v0

    .line 2526
    :cond_0
    invoke-static {p2, p3, p0, p1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method private static xyPrimaries([F)[F
    .locals 8

    const/4 v0, 0x6

    .line 3295
    new-array v1, v0, [F

    .line 3298
    array-length v2, p0

    const/4 v3, 0x0

    const/16 v4, 0x9

    if-ne v2, v4, :cond_0

    .line 3301
    aget v2, p0, v3

    const/4 v4, 0x1

    aget v5, p0, v4

    add-float/2addr v2, v5

    const/4 v5, 0x2

    aget v6, p0, v5

    add-float/2addr v2, v6

    .line 3302
    aget v6, p0, v3

    div-float/2addr v6, v2

    aput v6, v1, v3

    .line 3303
    aget v3, p0, v4

    div-float/2addr v3, v2

    aput v3, v1, v4

    const/4 v2, 0x3

    .line 3305
    aget v3, p0, v2

    const/4 v4, 0x4

    aget v6, p0, v4

    add-float/2addr v3, v6

    const/4 v6, 0x5

    aget v7, p0, v6

    add-float/2addr v3, v7

    .line 3306
    aget v7, p0, v2

    div-float/2addr v7, v3

    aput v7, v1, v5

    .line 3307
    aget v5, p0, v4

    div-float/2addr v5, v3

    aput v5, v1, v2

    .line 3309
    aget v2, p0, v0

    const/4 v3, 0x7

    aget v5, p0, v3

    add-float/2addr v2, v5

    const/16 v5, 0x8

    aget v5, p0, v5

    add-float/2addr v2, v5

    .line 3310
    aget v0, p0, v0

    div-float/2addr v0, v2

    aput v0, v1, v4

    .line 3311
    aget p0, p0, v3

    div-float/2addr p0, v2

    aput p0, v1, v6

    goto :goto_0

    .line 3313
    :cond_0
    invoke-static {p0, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    return-object v1
.end method

.method private static xyWhitePoint([F)[F
    .locals 6

    const/4 v0, 0x2

    .line 3330
    new-array v1, v0, [F

    .line 3333
    array-length v2, p0

    const/4 v3, 0x0

    const/4 v4, 0x3

    if-ne v2, v4, :cond_0

    .line 3334
    aget v2, p0, v3

    const/4 v4, 0x1

    aget v5, p0, v4

    add-float/2addr v2, v5

    aget v0, p0, v0

    add-float/2addr v2, v0

    .line 3335
    aget v0, p0, v3

    div-float/2addr v0, v2

    aput v0, v1, v3

    .line 3336
    aget p0, p0, v4

    div-float/2addr p0, v2

    aput p0, v1, v4

    goto :goto_0

    .line 3338
    :cond_0
    invoke-static {p0, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    return-object v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_a

    .line 3026
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 3027
    :cond_1
    invoke-super {p0, p1}, Landroid/graphics/ColorSpace;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 3029
    :cond_2
    check-cast p1, Landroid/graphics/ColorSpace$Rgb;

    .line 3031
    iget v2, p1, Landroid/graphics/ColorSpace$Rgb;->mMin:F

    iget v3, p0, Landroid/graphics/ColorSpace$Rgb;->mMin:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_3

    return v1

    .line 3032
    :cond_3
    iget v2, p1, Landroid/graphics/ColorSpace$Rgb;->mMax:F

    iget v3, p0, Landroid/graphics/ColorSpace$Rgb;->mMax:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_4

    return v1

    .line 3033
    :cond_4
    iget-object v2, p0, Landroid/graphics/ColorSpace$Rgb;->mWhitePoint:[F

    iget-object v3, p1, Landroid/graphics/ColorSpace$Rgb;->mWhitePoint:[F

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    .line 3034
    :cond_5
    iget-object v2, p0, Landroid/graphics/ColorSpace$Rgb;->mPrimaries:[F

    iget-object v3, p1, Landroid/graphics/ColorSpace$Rgb;->mPrimaries:[F

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 3035
    :cond_6
    iget-object v2, p0, Landroid/graphics/ColorSpace$Rgb;->mTransferParameters:Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    if-eqz v2, :cond_7

    .line 3036
    iget-object p0, p0, Landroid/graphics/ColorSpace$Rgb;->mTransferParameters:Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    iget-object p1, p1, Landroid/graphics/ColorSpace$Rgb;->mTransferParameters:Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    invoke-virtual {p0, p1}, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 3037
    :cond_7
    iget-object v2, p1, Landroid/graphics/ColorSpace$Rgb;->mTransferParameters:Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    if-nez v2, :cond_8

    return v0

    .line 3041
    :cond_8
    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mOetf:Ljava/util/function/DoubleUnaryOperator;

    iget-object v2, p1, Landroid/graphics/ColorSpace$Rgb;->mOetf:Ljava/util/function/DoubleUnaryOperator;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    return v1

    .line 3042
    :cond_9
    iget-object p0, p0, Landroid/graphics/ColorSpace$Rgb;->mEotf:Ljava/util/function/DoubleUnaryOperator;

    iget-object p1, p1, Landroid/graphics/ColorSpace$Rgb;->mEotf:Ljava/util/function/DoubleUnaryOperator;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_a
    :goto_0
    return v1
.end method

.method public fromLinear(FFF)[F
    .locals 2

    const/4 v0, 0x3

    .line 2969
    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    const/4 p1, 0x2

    aput p3, v0, p1

    invoke-virtual {p0, v0}, Landroid/graphics/ColorSpace$Rgb;->fromLinear([F)[F

    move-result-object p0

    return-object p0
.end method

.method public fromLinear([F)[F
    .locals 4

    .line 2992
    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mClampedOetf:Ljava/util/function/DoubleUnaryOperator;

    const/4 v1, 0x0

    aget v2, p1, v1

    float-to-double v2, v2

    invoke-interface {v0, v2, v3}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v2

    double-to-float v0, v2

    aput v0, p1, v1

    .line 2993
    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mClampedOetf:Ljava/util/function/DoubleUnaryOperator;

    const/4 v1, 0x1

    aget v2, p1, v1

    float-to-double v2, v2

    invoke-interface {v0, v2, v3}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v2

    double-to-float v0, v2

    aput v0, p1, v1

    .line 2994
    iget-object p0, p0, Landroid/graphics/ColorSpace$Rgb;->mClampedOetf:Ljava/util/function/DoubleUnaryOperator;

    const/4 v0, 0x2

    aget v1, p1, v0

    float-to-double v1, v1

    invoke-interface {p0, v1, v2}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v1

    double-to-float p0, v1

    aput p0, p1, v0

    return-object p1
.end method

.method public fromXyz([F)[F
    .locals 4

    .line 3012
    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mInverseTransform:[F

    invoke-static {v0, p1}, Landroid/graphics/ColorSpace;->access$1300([F[F)[F

    .line 3013
    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mClampedOetf:Ljava/util/function/DoubleUnaryOperator;

    const/4 v1, 0x0

    aget v2, p1, v1

    float-to-double v2, v2

    invoke-interface {v0, v2, v3}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v2

    double-to-float v0, v2

    aput v0, p1, v1

    .line 3014
    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mClampedOetf:Ljava/util/function/DoubleUnaryOperator;

    const/4 v1, 0x1

    aget v2, p1, v1

    float-to-double v2, v2

    invoke-interface {v0, v2, v3}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v2

    double-to-float v0, v2

    aput v0, p1, v1

    .line 3015
    iget-object p0, p0, Landroid/graphics/ColorSpace$Rgb;->mClampedOetf:Ljava/util/function/DoubleUnaryOperator;

    const/4 v0, 0x2

    aget v1, p1, v0

    float-to-double v1, v1

    invoke-interface {p0, v1, v2}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v1

    double-to-float p0, v1

    aput p0, p1, v0

    return-object p1
.end method

.method public getEotf()Ljava/util/function/DoubleUnaryOperator;
    .locals 0

    .line 2859
    iget-object p0, p0, Landroid/graphics/ColorSpace$Rgb;->mClampedEotf:Ljava/util/function/DoubleUnaryOperator;

    return-object p0
.end method

.method public getInverseTransform()[F
    .locals 1

    .line 2810
    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mInverseTransform:[F

    iget-object p0, p0, Landroid/graphics/ColorSpace$Rgb;->mInverseTransform:[F

    array-length p0, p0

    invoke-static {v0, p0}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object p0

    return-object p0
.end method

.method public getInverseTransform([F)[F
    .locals 2

    .line 2790
    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mInverseTransform:[F

    iget-object p0, p0, Landroid/graphics/ColorSpace$Rgb;->mInverseTransform:[F

    array-length p0, p0

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, v1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method

.method public getMaxValue(I)F
    .locals 0

    .line 2897
    iget p0, p0, Landroid/graphics/ColorSpace$Rgb;->mMax:F

    return p0
.end method

.method public getMinValue(I)F
    .locals 0

    .line 2892
    iget p0, p0, Landroid/graphics/ColorSpace$Rgb;->mMin:F

    return p0
.end method

.method public getOetf()Ljava/util/function/DoubleUnaryOperator;
    .locals 0

    .line 2835
    iget-object p0, p0, Landroid/graphics/ColorSpace$Rgb;->mClampedOetf:Ljava/util/function/DoubleUnaryOperator;

    return-object p0
.end method

.method public getPrimaries()[F
    .locals 1

    .line 2726
    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mPrimaries:[F

    iget-object p0, p0, Landroid/graphics/ColorSpace$Rgb;->mPrimaries:[F

    array-length p0, p0

    invoke-static {v0, p0}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object p0

    return-object p0
.end method

.method public getPrimaries([F)[F
    .locals 2

    .line 2709
    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mPrimaries:[F

    iget-object p0, p0, Landroid/graphics/ColorSpace$Rgb;->mPrimaries:[F

    array-length p0, p0

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, v1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method

.method public getTransferParameters()Landroid/graphics/ColorSpace$Rgb$TransferParameters;
    .locals 0

    .line 2877
    iget-object p0, p0, Landroid/graphics/ColorSpace$Rgb;->mTransferParameters:Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    return-object p0
.end method

.method public getTransform()[F
    .locals 1

    .line 2768
    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mTransform:[F

    iget-object p0, p0, Landroid/graphics/ColorSpace$Rgb;->mTransform:[F

    array-length p0, p0

    invoke-static {v0, p0}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object p0

    return-object p0
.end method

.method public getTransform([F)[F
    .locals 2

    .line 2748
    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mTransform:[F

    iget-object p0, p0, Landroid/graphics/ColorSpace$Rgb;->mTransform:[F

    array-length p0, p0

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, v1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method

.method public getWhitePoint()[F
    .locals 1

    .line 2690
    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mWhitePoint:[F

    iget-object p0, p0, Landroid/graphics/ColorSpace$Rgb;->mWhitePoint:[F

    array-length p0, p0

    invoke-static {v0, p0}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object p0

    return-object p0
.end method

.method public getWhitePoint([F)[F
    .locals 2

    .line 2672
    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mWhitePoint:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    aput v0, p1, v1

    .line 2673
    iget-object p0, p0, Landroid/graphics/ColorSpace$Rgb;->mWhitePoint:[F

    const/4 v0, 0x1

    aget p0, p0, v0

    aput p0, p1, v0

    return-object p1
.end method

.method public hashCode()I
    .locals 4

    .line 3047
    invoke-super {p0}, Landroid/graphics/ColorSpace;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 3048
    iget-object v1, p0, Landroid/graphics/ColorSpace$Rgb;->mWhitePoint:[F

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 3049
    iget-object v1, p0, Landroid/graphics/ColorSpace$Rgb;->mPrimaries:[F

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 3050
    iget v1, p0, Landroid/graphics/ColorSpace$Rgb;->mMin:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/graphics/ColorSpace$Rgb;->mMin:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 3051
    iget v1, p0, Landroid/graphics/ColorSpace$Rgb;->mMax:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    iget v1, p0, Landroid/graphics/ColorSpace$Rgb;->mMax:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 3053
    iget-object v1, p0, Landroid/graphics/ColorSpace$Rgb;->mTransferParameters:Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/graphics/ColorSpace$Rgb;->mTransferParameters:Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    invoke-virtual {v1}, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->hashCode()I

    move-result v3

    :cond_2
    add-int/2addr v0, v3

    .line 3054
    iget-object v1, p0, Landroid/graphics/ColorSpace$Rgb;->mTransferParameters:Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    if-nez v1, :cond_3

    mul-int/lit8 v0, v0, 0x1f

    .line 3055
    iget-object v1, p0, Landroid/graphics/ColorSpace$Rgb;->mOetf:Ljava/util/function/DoubleUnaryOperator;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 3056
    iget-object p0, p0, Landroid/graphics/ColorSpace$Rgb;->mEotf:Ljava/util/function/DoubleUnaryOperator;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    :cond_3
    return v0
.end method

.method public isSrgb()Z
    .locals 0

    .line 2882
    iget-boolean p0, p0, Landroid/graphics/ColorSpace$Rgb;->mIsSrgb:Z

    return p0
.end method

.method public isWideGamut()Z
    .locals 0

    .line 2887
    iget-boolean p0, p0, Landroid/graphics/ColorSpace$Rgb;->mIsWideGamut:Z

    return p0
.end method

.method public toLinear(FFF)[F
    .locals 2

    const/4 v0, 0x3

    .line 2920
    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    const/4 p1, 0x2

    aput p3, v0, p1

    invoke-virtual {p0, v0}, Landroid/graphics/ColorSpace$Rgb;->toLinear([F)[F

    move-result-object p0

    return-object p0
.end method

.method public toLinear([F)[F
    .locals 4

    .line 2943
    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mClampedEotf:Ljava/util/function/DoubleUnaryOperator;

    const/4 v1, 0x0

    aget v2, p1, v1

    float-to-double v2, v2

    invoke-interface {v0, v2, v3}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v2

    double-to-float v0, v2

    aput v0, p1, v1

    .line 2944
    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mClampedEotf:Ljava/util/function/DoubleUnaryOperator;

    const/4 v1, 0x1

    aget v2, p1, v1

    float-to-double v2, v2

    invoke-interface {v0, v2, v3}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v2

    double-to-float v0, v2

    aput v0, p1, v1

    .line 2945
    iget-object p0, p0, Landroid/graphics/ColorSpace$Rgb;->mClampedEotf:Ljava/util/function/DoubleUnaryOperator;

    const/4 v0, 0x2

    aget v1, p1, v0

    float-to-double v1, v1

    invoke-interface {p0, v1, v2}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v1

    double-to-float p0, v1

    aput p0, p1, v0

    return-object p1
.end method

.method public toXyz([F)[F
    .locals 4

    .line 3002
    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mClampedEotf:Ljava/util/function/DoubleUnaryOperator;

    const/4 v1, 0x0

    aget v2, p1, v1

    float-to-double v2, v2

    invoke-interface {v0, v2, v3}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v2

    double-to-float v0, v2

    aput v0, p1, v1

    .line 3003
    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mClampedEotf:Ljava/util/function/DoubleUnaryOperator;

    const/4 v1, 0x1

    aget v2, p1, v1

    float-to-double v2, v2

    invoke-interface {v0, v2, v3}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v2

    double-to-float v0, v2

    aput v0, p1, v1

    .line 3004
    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mClampedEotf:Ljava/util/function/DoubleUnaryOperator;

    const/4 v1, 0x2

    aget v2, p1, v1

    float-to-double v2, v2

    invoke-interface {v0, v2, v3}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v2

    double-to-float v0, v2

    aput v0, p1, v1

    .line 3005
    iget-object p0, p0, Landroid/graphics/ColorSpace$Rgb;->mTransform:[F

    invoke-static {p0, p1}, Landroid/graphics/ColorSpace;->access$1300([F[F)[F

    move-result-object p0

    return-object p0
.end method
