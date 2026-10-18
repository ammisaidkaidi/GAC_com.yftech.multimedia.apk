.class public Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;
.super Ljava/lang/Object;
.source "LongitudinalReportingConfig.java"

# interfaces
.implements Landroid/privacy/DifferentialPrivacyConfig;


# static fields
.field private static final ALGORITHM_NAME:Ljava/lang/String; = "LongitudinalReporting"


# instance fields
.field private final mEncoderId:Ljava/lang/String;

.field private final mIRRConfig:Landroid/privacy/internal/rappor/RapporConfig;

.field private final mProbabilityF:D

.field private final mProbabilityP:D

.field private final mProbabilityQ:D


# direct methods
.method public constructor <init>(Ljava/lang/String;DDD)V
    .locals 15

    move-object v0, p0

    move-wide/from16 v6, p2

    move-wide/from16 v1, p4

    move-wide/from16 v3, p6

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v8, 0x0

    cmpl-double v5, v6, v8

    const/4 v10, 0x0

    const/4 v11, 0x1

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    if-ltz v5, :cond_0

    cmpg-double v5, v6, v12

    if-gtz v5, :cond_0

    move v5, v11

    goto :goto_0

    :cond_0
    move v5, v10

    :goto_0
    const-string/jumbo v14, "probabilityF must be in range [0.0, 1.0]"

    .line 66
    invoke-static {v5, v14}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 68
    iput-wide v6, v0, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;->mProbabilityF:D

    cmpl-double v5, v1, v8

    if-ltz v5, :cond_1

    cmpg-double v5, v1, v12

    if-gtz v5, :cond_1

    move v5, v11

    goto :goto_1

    :cond_1
    move v5, v10

    :goto_1
    const-string/jumbo v14, "probabilityP must be in range [0.0, 1.0]"

    .line 69
    invoke-static {v5, v14}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 71
    iput-wide v1, v0, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;->mProbabilityP:D

    cmpl-double v1, v3, v8

    if-ltz v1, :cond_2

    cmpg-double v1, v3, v12

    if-gtz v1, :cond_2

    move v10, v11

    :cond_2
    const-string/jumbo v1, "probabilityQ must be in range [0.0, 1.0]"

    .line 72
    invoke-static {v10, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 74
    iput-wide v3, v0, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;->mProbabilityQ:D

    .line 75
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/2addr v1, v11

    const-string v2, "encoderId cannot be empty"

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    move-object/from16 v2, p1

    .line 76
    iput-object v2, v0, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;->mEncoderId:Ljava/lang/String;

    .line 77
    new-instance v14, Landroid/privacy/internal/rappor/RapporConfig;

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    sub-double v8, v12, v6

    const/4 v10, 0x1

    const/4 v11, 0x1

    move-object v1, v14

    move-wide/from16 v6, p2

    invoke-direct/range {v1 .. v11}, Landroid/privacy/internal/rappor/RapporConfig;-><init>(Ljava/lang/String;IDDDII)V

    iput-object v14, v0, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;->mIRRConfig:Landroid/privacy/internal/rappor/RapporConfig;

    return-void
.end method


# virtual methods
.method public getAlgorithm()Ljava/lang/String;
    .locals 0

    const-string p0, "LongitudinalReporting"

    return-object p0
.end method

.method getEncoderId()Ljava/lang/String;
    .locals 0

    .line 98
    iget-object p0, p0, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;->mEncoderId:Ljava/lang/String;

    return-object p0
.end method

.method getIRRConfig()Landroid/privacy/internal/rappor/RapporConfig;
    .locals 0

    .line 86
    iget-object p0, p0, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;->mIRRConfig:Landroid/privacy/internal/rappor/RapporConfig;

    return-object p0
.end method

.method getProbabilityP()D
    .locals 2

    .line 90
    iget-wide v0, p0, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;->mProbabilityP:D

    return-wide v0
.end method

.method getProbabilityQ()D
    .locals 2

    .line 94
    iget-wide v0, p0, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;->mProbabilityQ:D

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "EncoderId: %s, ProbabilityF: %.3f, ProbabilityP: %.3f, ProbabilityQ: %.3f"

    const/4 v1, 0x4

    .line 103
    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;->mEncoderId:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-wide v2, p0, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;->mProbabilityF:D

    .line 105
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-wide v2, p0, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;->mProbabilityP:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-wide v2, p0, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;->mProbabilityQ:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    const/4 v2, 0x3

    aput-object p0, v1, v2

    .line 103
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
