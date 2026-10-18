.class public final Landroid/view/textclassifier/GenerateLinksLogger;
.super Ljava/lang/Object;
.source "GenerateLinksLogger.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
    visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/textclassifier/GenerateLinksLogger$LinkifyStats;
    }
.end annotation


# static fields
.field private static final DEBUG_LOG_ENABLED:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "GenerateLinksLogger"

.field private static final ZERO:Ljava/lang/String; = "0"


# instance fields
.field private final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private final mRng:Ljava/util/Random;

.field private final mSampleRate:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput p1, p0, Landroid/view/textclassifier/GenerateLinksLogger;->mSampleRate:I

    .line 56
    new-instance p1, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Ljava/util/Random;-><init>(J)V

    iput-object p1, p0, Landroid/view/textclassifier/GenerateLinksLogger;->mRng:Ljava/util/Random;

    .line 57
    new-instance p1, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {p1}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object p1, p0, Landroid/view/textclassifier/GenerateLinksLogger;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    return-void
.end method

.method public constructor <init>(ILcom/android/internal/logging/MetricsLogger;)V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput p1, p0, Landroid/view/textclassifier/GenerateLinksLogger;->mSampleRate:I

    .line 63
    new-instance p1, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Ljava/util/Random;-><init>(J)V

    iput-object p1, p0, Landroid/view/textclassifier/GenerateLinksLogger;->mRng:Ljava/util/Random;

    .line 64
    iput-object p2, p0, Landroid/view/textclassifier/GenerateLinksLogger;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    return-void
.end method

.method private static debugLog(Landroid/metrics/LogMaker;)V
    .locals 0

    return-void
.end method

.method static synthetic lambda$logGenerateLinks$0(Ljava/lang/String;)Landroid/view/textclassifier/GenerateLinksLogger$LinkifyStats;
    .locals 1

    .line 89
    new-instance p0, Landroid/view/textclassifier/GenerateLinksLogger$LinkifyStats;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/view/textclassifier/GenerateLinksLogger$LinkifyStats;-><init>(Landroid/view/textclassifier/GenerateLinksLogger$1;)V

    return-object p0
.end method

.method private shouldLog()Z
    .locals 2

    .line 106
    iget v0, p0, Landroid/view/textclassifier/GenerateLinksLogger;->mSampleRate:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    return v1

    .line 109
    :cond_0
    iget-object v0, p0, Landroid/view/textclassifier/GenerateLinksLogger;->mRng:Ljava/util/Random;

    iget p0, p0, Landroid/view/textclassifier/GenerateLinksLogger;->mSampleRate:I

    invoke-virtual {v0, p0}, Ljava/util/Random;->nextInt(I)I

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private writeStats(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/textclassifier/GenerateLinksLogger$LinkifyStats;Ljava/lang/CharSequence;J)V
    .locals 2

    .line 116
    new-instance v0, Landroid/metrics/LogMaker;

    const/16 v1, 0x521

    invoke-direct {v0, v1}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 117
    invoke-virtual {v0, p2}, Landroid/metrics/LogMaker;->setPackageName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object p2

    const/16 v0, 0x527

    .line 118
    invoke-virtual {p2, v0, p1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object p1

    iget p2, p4, Landroid/view/textclassifier/GenerateLinksLogger$LinkifyStats;->mNumLinks:I

    .line 119
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/16 v0, 0x524

    invoke-virtual {p1, v0, p2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object p1

    iget p2, p4, Landroid/view/textclassifier/GenerateLinksLogger$LinkifyStats;->mNumLinksTextLength:I

    .line 120
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/16 p4, 0x525

    invoke-virtual {p1, p4, p2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object p1

    .line 121
    invoke-interface {p5}, Ljava/lang/CharSequence;->length()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/16 p4, 0x523

    invoke-virtual {p1, p4, p2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object p1

    .line 122
    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const/16 p4, 0x522

    invoke-virtual {p1, p4, p2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object p1

    if-eqz p3, :cond_0

    const/16 p2, 0x526

    .line 124
    invoke-virtual {p1, p2, p3}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 126
    :cond_0
    iget-object p0, p0, Landroid/view/textclassifier/GenerateLinksLogger;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {p0, p1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 127
    invoke-static {p1}, Landroid/view/textclassifier/GenerateLinksLogger;->debugLog(Landroid/metrics/LogMaker;)V

    return-void
.end method


# virtual methods
.method public logGenerateLinks(Ljava/lang/CharSequence;Landroid/view/textclassifier/TextLinks;Ljava/lang/String;J)V
    .locals 15

    .line 70
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    invoke-direct {p0}, Landroid/view/textclassifier/GenerateLinksLogger;->shouldLog()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 78
    :cond_0
    new-instance v5, Landroid/view/textclassifier/GenerateLinksLogger$LinkifyStats;

    const/4 v0, 0x0

    invoke-direct {v5, v0}, Landroid/view/textclassifier/GenerateLinksLogger$LinkifyStats;-><init>(Landroid/view/textclassifier/GenerateLinksLogger$1;)V

    .line 79
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 80
    invoke-virtual/range {p2 .. p2}, Landroid/view/textclassifier/TextLinks;->getLinks()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/textclassifier/TextLinks$TextLink;

    .line 81
    invoke-virtual {v2}, Landroid/view/textclassifier/TextLinks$TextLink;->getEntityCount()I

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    .line 82
    invoke-virtual {v2, v3}, Landroid/view/textclassifier/TextLinks$TextLink;->getEntity(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string v4, "other"

    .line 84
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, ""

    .line 85
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_0

    .line 88
    :cond_3
    invoke-virtual {v5, v2}, Landroid/view/textclassifier/GenerateLinksLogger$LinkifyStats;->countLink(Landroid/view/textclassifier/TextLinks$TextLink;)V

    .line 89
    sget-object v4, Landroid/view/textclassifier/-$$Lambda$GenerateLinksLogger$vmbT_h7MLlbrIm0lJJwA-eHQhXk;->INSTANCE:Landroid/view/textclassifier/-$$Lambda$GenerateLinksLogger$vmbT_h7MLlbrIm0lJJwA-eHQhXk;

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/textclassifier/GenerateLinksLogger$LinkifyStats;

    invoke-virtual {v3, v2}, Landroid/view/textclassifier/GenerateLinksLogger$LinkifyStats;->countLink(Landroid/view/textclassifier/TextLinks$TextLink;)V

    goto :goto_0

    .line 92
    :cond_4
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, v14

    move-object/from16 v3, p3

    move-object/from16 v6, p1

    move-wide/from16 v7, p4

    .line 93
    invoke-direct/range {v1 .. v8}, Landroid/view/textclassifier/GenerateLinksLogger;->writeStats(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/textclassifier/GenerateLinksLogger$LinkifyStats;Ljava/lang/CharSequence;J)V

    .line 94
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 95
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/view/textclassifier/GenerateLinksLogger$LinkifyStats;

    move-object v6, p0

    move-object v7, v14

    move-object/from16 v8, p3

    move-object/from16 v11, p1

    move-wide/from16 v12, p4

    invoke-direct/range {v6 .. v13}, Landroid/view/textclassifier/GenerateLinksLogger;->writeStats(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/textclassifier/GenerateLinksLogger$LinkifyStats;Ljava/lang/CharSequence;J)V

    goto :goto_1

    :cond_5
    return-void
.end method
