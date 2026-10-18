.class public final Landroid/view/textclassifier/TextClassifierImpl;
.super Ljava/lang/Object;
.source "TextClassifierImpl.java"

# interfaces
.implements Landroid/view/textclassifier/TextClassifier;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/textclassifier/TextClassifierImpl$IntentFactory;,
        Landroid/view/textclassifier/TextClassifierImpl$LabeledIntent;,
        Landroid/view/textclassifier/TextClassifierImpl$ModelFile;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "androidtc"

.field private static final MODEL_DIR:Ljava/lang/String; = "/etc/textclassifier/"

.field private static final MODEL_FILE_REGEX:Ljava/lang/String; = "textclassifier\\.(.*)\\.model"

.field private static final UPDATED_MODEL_FILE_PATH:Ljava/lang/String; = "/data/misc/textclassifier/textclassifier.model"


# instance fields
.field private mAllModelFiles:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/textclassifier/TextClassifierImpl$ModelFile;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mFallback:Landroid/view/textclassifier/TextClassifier;

.field private final mGenerateLinksLogger:Landroid/view/textclassifier/GenerateLinksLogger;

.field private final mLock:Ljava/lang/Object;

.field private final mLoggerLock:Ljava/lang/Object;

.field private mModel:Landroid/view/textclassifier/TextClassifierImpl$ModelFile;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mNative:Landroid/view/textclassifier/TextClassifierImplNative;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mSessionLogger:Landroid/view/textclassifier/SelectionSessionLogger;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLoggerLock"
    .end annotation
.end field

.field private final mSettings:Landroid/view/textclassifier/TextClassificationConstants;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/textclassifier/TextClassificationConstants;)V
    .locals 1

    .line 111
    sget-object v0, Landroid/view/textclassifier/TextClassifier;->NO_OP:Landroid/view/textclassifier/TextClassifier;

    invoke-direct {p0, p1, p2, v0}, Landroid/view/textclassifier/TextClassifierImpl;-><init>(Landroid/content/Context;Landroid/view/textclassifier/TextClassificationConstants;Landroid/view/textclassifier/TextClassifier;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/textclassifier/TextClassificationConstants;Landroid/view/textclassifier/TextClassifier;)V
    .locals 1

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/textclassifier/TextClassifierImpl;->mLock:Ljava/lang/Object;

    .line 96
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/textclassifier/TextClassifierImpl;->mLoggerLock:Ljava/lang/Object;

    .line 104
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Landroid/view/textclassifier/TextClassifierImpl;->mContext:Landroid/content/Context;

    .line 105
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/textclassifier/TextClassifier;

    iput-object p1, p0, Landroid/view/textclassifier/TextClassifierImpl;->mFallback:Landroid/view/textclassifier/TextClassifier;

    .line 106
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/textclassifier/TextClassificationConstants;

    iput-object p1, p0, Landroid/view/textclassifier/TextClassifierImpl;->mSettings:Landroid/view/textclassifier/TextClassificationConstants;

    .line 107
    new-instance p1, Landroid/view/textclassifier/GenerateLinksLogger;

    iget-object p2, p0, Landroid/view/textclassifier/TextClassifierImpl;->mSettings:Landroid/view/textclassifier/TextClassificationConstants;

    invoke-virtual {p2}, Landroid/view/textclassifier/TextClassificationConstants;->getGenerateLinksLogSampleRate()I

    move-result p2

    invoke-direct {p1, p2}, Landroid/view/textclassifier/GenerateLinksLogger;-><init>(I)V

    iput-object p1, p0, Landroid/view/textclassifier/TextClassifierImpl;->mGenerateLinksLogger:Landroid/view/textclassifier/GenerateLinksLogger;

    return-void
.end method

.method static synthetic access$000(Landroid/os/ParcelFileDescriptor;)V
    .locals 0

    .line 76
    invoke-static {p0}, Landroid/view/textclassifier/TextClassifierImpl;->closeAndLogError(Landroid/os/ParcelFileDescriptor;)V

    return-void
.end method

.method private static closeAndLogError(Landroid/os/ParcelFileDescriptor;)V
    .locals 2

    .line 447
    :try_start_0
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "androidtc"

    const-string v1, "Error closing file."

    .line 449
    invoke-static {v0, v1, p0}, Landroid/view/textclassifier/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private static concatenateLocales(Landroid/os/LocaleList;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const-string p0, ""

    goto :goto_0

    .line 336
    :cond_0
    invoke-virtual {p0}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private createClassificationResult([Landroid/view/textclassifier/TextClassifierImplNative$ClassificationResult;Ljava/lang/String;IILjava/time/Instant;)Landroid/view/textclassifier/TextClassification;
    .locals 10

    .line 402
    invoke-virtual {p2, p3, p4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 403
    new-instance v1, Landroid/view/textclassifier/TextClassification$Builder;

    invoke-direct {v1}, Landroid/view/textclassifier/TextClassification$Builder;-><init>()V

    .line 404
    invoke-virtual {v1, v0}, Landroid/view/textclassifier/TextClassification$Builder;->setText(Ljava/lang/String;)Landroid/view/textclassifier/TextClassification$Builder;

    move-result-object v1

    .line 406
    array-length v2, p1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v6, v4

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    .line 410
    aget-object v7, p1, v4

    invoke-virtual {v7}, Landroid/view/textclassifier/TextClassifierImplNative$ClassificationResult;->getCollection()Ljava/lang/String;

    move-result-object v7

    aget-object v8, p1, v4

    .line 411
    invoke-virtual {v8}, Landroid/view/textclassifier/TextClassifierImplNative$ClassificationResult;->getScore()F

    move-result v8

    .line 410
    invoke-virtual {v1, v7, v8}, Landroid/view/textclassifier/TextClassification$Builder;->setEntityType(Ljava/lang/String;F)Landroid/view/textclassifier/TextClassification$Builder;

    .line 412
    aget-object v7, p1, v4

    invoke-virtual {v7}, Landroid/view/textclassifier/TextClassifierImplNative$ClassificationResult;->getScore()F

    move-result v7

    cmpl-float v7, v7, v5

    if-lez v7, :cond_0

    .line 413
    aget-object v5, p1, v4

    .line 414
    aget-object v6, p1, v4

    invoke-virtual {v6}, Landroid/view/textclassifier/TextClassifierImplNative$ClassificationResult;->getScore()F

    move-result v6

    move v9, v6

    move-object v6, v5

    move v5, v9

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 419
    :cond_1
    iget-object p1, p0, Landroid/view/textclassifier/TextClassifierImpl;->mContext:Landroid/content/Context;

    invoke-static {p1, p5, v6, v0}, Landroid/view/textclassifier/TextClassifierImpl$IntentFactory;->create(Landroid/content/Context;Ljava/time/Instant;Landroid/view/textclassifier/TextClassifierImplNative$ClassificationResult;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p5, 0x1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/textclassifier/TextClassifierImpl$LabeledIntent;

    .line 421
    iget-object v2, p0, Landroid/view/textclassifier/TextClassifierImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/view/textclassifier/TextClassifierImpl$LabeledIntent;->asRemoteAction(Landroid/content/Context;)Landroid/app/RemoteAction;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    if-eqz p5, :cond_3

    .line 428
    invoke-virtual {v2}, Landroid/app/RemoteAction;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object p5

    iget-object v4, p0, Landroid/view/textclassifier/TextClassifierImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p5, v4}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p5

    invoke-virtual {v1, p5}, Landroid/view/textclassifier/TextClassification$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/textclassifier/TextClassification$Builder;

    .line 429
    invoke-virtual {v2}, Landroid/app/RemoteAction;->getTitle()Ljava/lang/CharSequence;

    move-result-object p5

    invoke-interface {p5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v1, p5}, Landroid/view/textclassifier/TextClassification$Builder;->setLabel(Ljava/lang/String;)Landroid/view/textclassifier/TextClassification$Builder;

    .line 430
    invoke-virtual {v0}, Landroid/view/textclassifier/TextClassifierImpl$LabeledIntent;->getIntent()Landroid/content/Intent;

    move-result-object p5

    invoke-virtual {v1, p5}, Landroid/view/textclassifier/TextClassification$Builder;->setIntent(Landroid/content/Intent;)Landroid/view/textclassifier/TextClassification$Builder;

    .line 431
    iget-object p5, p0, Landroid/view/textclassifier/TextClassifierImpl;->mContext:Landroid/content/Context;

    .line 433
    invoke-virtual {v0}, Landroid/view/textclassifier/TextClassifierImpl$LabeledIntent;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v0}, Landroid/view/textclassifier/TextClassifierImpl$LabeledIntent;->getRequestCode()I

    move-result v0

    .line 432
    invoke-static {p5, v4, v0}, Landroid/view/textclassifier/TextClassification;->createPendingIntent(Landroid/content/Context;Landroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p5

    .line 431
    invoke-static {p5}, Landroid/view/textclassifier/TextClassification;->createIntentOnClickListener(Landroid/app/PendingIntent;)Landroid/view/View$OnClickListener;

    move-result-object p5

    invoke-virtual {v1, p5}, Landroid/view/textclassifier/TextClassification$Builder;->setOnClickListener(Landroid/view/View$OnClickListener;)Landroid/view/textclassifier/TextClassification$Builder;

    move p5, v3

    .line 436
    :cond_3
    invoke-virtual {v1, v2}, Landroid/view/textclassifier/TextClassification$Builder;->addAction(Landroid/app/RemoteAction;)Landroid/view/textclassifier/TextClassification$Builder;

    goto :goto_1

    .line 439
    :cond_4
    invoke-direct {p0, p2, p3, p4}, Landroid/view/textclassifier/TextClassifierImpl;->createId(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/view/textclassifier/TextClassification$Builder;->setId(Ljava/lang/String;)Landroid/view/textclassifier/TextClassification$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassification$Builder;->build()Landroid/view/textclassifier/TextClassification;

    move-result-object p0

    return-object p0
.end method

.method private createId(Ljava/lang/String;II)Ljava/lang/String;
    .locals 7

    .line 321
    iget-object v0, p0, Landroid/view/textclassifier/TextClassifierImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 322
    :try_start_0
    iget-object v4, p0, Landroid/view/textclassifier/TextClassifierImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/view/textclassifier/TextClassifierImpl;->mModel:Landroid/view/textclassifier/TextClassifierImpl$ModelFile;

    invoke-virtual {v1}, Landroid/view/textclassifier/TextClassifierImpl$ModelFile;->getVersion()I

    move-result v5

    iget-object p0, p0, Landroid/view/textclassifier/TextClassifierImpl;->mModel:Landroid/view/textclassifier/TextClassifierImpl$ModelFile;

    .line 323
    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassifierImpl$ModelFile;->getSupportedLocales()Ljava/util/List;

    move-result-object v6

    move-object v1, p1

    move v2, p2

    move v3, p3

    .line 322
    invoke-static/range {v1 .. v6}, Landroid/view/textclassifier/SelectionSessionLogger;->createId(Ljava/lang/String;IILandroid/content/Context;ILjava/util/List;)Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 324
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private destroyNativeIfExistsLocked()V
    .locals 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .line 329
    iget-object v0, p0, Landroid/view/textclassifier/TextClassifierImpl;->mNative:Landroid/view/textclassifier/TextClassifierImplNative;

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Landroid/view/textclassifier/TextClassifierImpl;->mNative:Landroid/view/textclassifier/TextClassifierImplNative;

    invoke-virtual {v0}, Landroid/view/textclassifier/TextClassifierImplNative;->close()V

    const/4 v0, 0x0

    .line 331
    iput-object v0, p0, Landroid/view/textclassifier/TextClassifierImpl;->mNative:Landroid/view/textclassifier/TextClassifierImplNative;

    :cond_0
    return-void
.end method

.method private findBestModelLocked(Landroid/os/LocaleList;)Landroid/view/textclassifier/TextClassifierImpl$ModelFile;
    .locals 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .line 351
    invoke-virtual {p1}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 352
    invoke-static {}, Landroid/os/LocaleList;->getDefault()Landroid/os/LocaleList;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 353
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/LocaleList;->getDefault()Landroid/os/LocaleList;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 354
    :goto_0
    invoke-static {p1}, Ljava/util/Locale$LanguageRange;->parse(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    .line 357
    invoke-direct {p0}, Landroid/view/textclassifier/TextClassifierImpl;->listAllModelsLocked()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/textclassifier/TextClassifierImpl$ModelFile;

    .line 358
    invoke-virtual {v1, p1}, Landroid/view/textclassifier/TextClassifierImpl$ModelFile;->isAnyLanguageSupported(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 359
    invoke-virtual {v1, v0}, Landroid/view/textclassifier/TextClassifierImpl$ModelFile;->isPreferredTo(Landroid/view/textclassifier/TextClassifierImpl$ModelFile;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v0, v1

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method private getEntitiesForHints(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "android.text_is_editable"

    .line 274
    invoke-interface {p1, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "android.text_is_not_editable"

    .line 275
    invoke-interface {p1, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 280
    iget-object p0, p0, Landroid/view/textclassifier/TextClassifierImpl;->mSettings:Landroid/view/textclassifier/TextClassificationConstants;

    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassificationConstants;->getEntityListDefault()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_1
    if-eqz v0, :cond_2

    .line 282
    iget-object p0, p0, Landroid/view/textclassifier/TextClassifierImpl;->mSettings:Landroid/view/textclassifier/TextClassificationConstants;

    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassificationConstants;->getEntityListEditable()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 284
    :cond_2
    iget-object p0, p0, Landroid/view/textclassifier/TextClassifierImpl;->mSettings:Landroid/view/textclassifier/TextClassificationConstants;

    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassificationConstants;->getEntityListNotEditable()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private getNative(Landroid/os/LocaleList;)Landroid/view/textclassifier/TextClassifierImplNative;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 301
    iget-object v0, p0, Landroid/view/textclassifier/TextClassifierImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    if-nez p1, :cond_0

    .line 302
    :try_start_0
    invoke-static {}, Landroid/os/LocaleList;->getEmptyLocaleList()Landroid/os/LocaleList;

    move-result-object p1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 303
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Landroid/view/textclassifier/TextClassifierImpl;->findBestModelLocked(Landroid/os/LocaleList;)Landroid/view/textclassifier/TextClassifierImpl$ModelFile;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 307
    iget-object p1, p0, Landroid/view/textclassifier/TextClassifierImpl;->mNative:Landroid/view/textclassifier/TextClassifierImplNative;

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroid/view/textclassifier/TextClassifierImpl;->mModel:Landroid/view/textclassifier/TextClassifierImpl$ModelFile;

    invoke-static {p1, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    :cond_1
    const-string p1, "androidtc"

    .line 308
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Loading "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/view/textclassifier/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    invoke-direct {p0}, Landroid/view/textclassifier/TextClassifierImpl;->destroyNativeIfExistsLocked()V

    .line 310
    new-instance p1, Ljava/io/File;

    .line 311
    invoke-virtual {v1}, Landroid/view/textclassifier/TextClassifierImpl$ModelFile;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x10000000

    .line 310
    invoke-static {p1, v2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    .line 312
    new-instance v2, Landroid/view/textclassifier/TextClassifierImplNative;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/view/textclassifier/TextClassifierImplNative;-><init>(I)V

    iput-object v2, p0, Landroid/view/textclassifier/TextClassifierImpl;->mNative:Landroid/view/textclassifier/TextClassifierImplNative;

    .line 313
    invoke-static {p1}, Landroid/view/textclassifier/TextClassifierImpl;->closeAndLogError(Landroid/os/ParcelFileDescriptor;)V

    .line 314
    iput-object v1, p0, Landroid/view/textclassifier/TextClassifierImpl;->mModel:Landroid/view/textclassifier/TextClassifierImpl$ModelFile;

    .line 316
    :cond_2
    iget-object p0, p0, Landroid/view/textclassifier/TextClassifierImpl;->mNative:Landroid/view/textclassifier/TextClassifierImplNative;

    monitor-exit v0

    return-object p0

    .line 305
    :cond_3
    new-instance p0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No model for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 317
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private listAllModelsLocked()Ljava/util/List;
    .locals 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/textclassifier/TextClassifierImpl$ModelFile;",
            ">;"
        }
    .end annotation

    .line 370
    iget-object v0, p0, Landroid/view/textclassifier/TextClassifierImpl;->mAllModelFiles:Ljava/util/List;

    if-nez v0, :cond_3

    .line 371
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 373
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/misc/textclassifier/textclassifier.model"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "/data/misc/textclassifier/textclassifier.model"

    .line 374
    invoke-static {v1}, Landroid/view/textclassifier/TextClassifierImpl$ModelFile;->fromPath(Ljava/lang/String;)Landroid/view/textclassifier/TextClassifierImpl$ModelFile;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 376
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 380
    :cond_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/etc/textclassifier/"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 381
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 382
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "textclassifier\\.(.*)\\.model"

    .line 383
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 384
    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v1, v4

    .line 385
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 386
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 387
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/view/textclassifier/TextClassifierImpl$ModelFile;->fromPath(Ljava/lang/String;)Landroid/view/textclassifier/TextClassifierImpl$ModelFile;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 389
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 394
    :cond_2
    iput-object v0, p0, Landroid/view/textclassifier/TextClassifierImpl;->mAllModelFiles:Ljava/util/List;

    .line 396
    :cond_3
    iget-object p0, p0, Landroid/view/textclassifier/TextClassifierImpl;->mAllModelFiles:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public classifyText(Landroid/view/textclassifier/TextClassification$Request;)Landroid/view/textclassifier/TextClassification;
    .locals 10

    .line 177
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    invoke-static {}, Landroid/view/textclassifier/TextClassifier$Utils;->checkMainThread()V

    .line 180
    :try_start_0
    invoke-virtual {p1}, Landroid/view/textclassifier/TextClassification$Request;->getEndIndex()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/textclassifier/TextClassification$Request;->getStartIndex()I

    move-result v1

    sub-int/2addr v0, v1

    .line 181
    invoke-virtual {p1}, Landroid/view/textclassifier/TextClassification$Request;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 182
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Landroid/view/textclassifier/TextClassifierImpl;->mSettings:Landroid/view/textclassifier/TextClassificationConstants;

    invoke-virtual {v1}, Landroid/view/textclassifier/TextClassificationConstants;->getClassifyTextMaxRangeLength()I

    move-result v1

    if-gt v0, v1, :cond_1

    .line 183
    invoke-virtual {p1}, Landroid/view/textclassifier/TextClassification$Request;->getDefaultLocales()Landroid/os/LocaleList;

    move-result-object v0

    invoke-static {v0}, Landroid/view/textclassifier/TextClassifierImpl;->concatenateLocales(Landroid/os/LocaleList;)Ljava/lang/String;

    move-result-object v0

    .line 184
    invoke-virtual {p1}, Landroid/view/textclassifier/TextClassification$Request;->getReferenceTime()Ljava/time/ZonedDateTime;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 185
    invoke-virtual {p1}, Landroid/view/textclassifier/TextClassification$Request;->getReferenceTime()Ljava/time/ZonedDateTime;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v1

    .line 187
    :goto_0
    invoke-virtual {p1}, Landroid/view/textclassifier/TextClassification$Request;->getDefaultLocales()Landroid/os/LocaleList;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/view/textclassifier/TextClassifierImpl;->getNative(Landroid/os/LocaleList;)Landroid/view/textclassifier/TextClassifierImplNative;

    move-result-object v2

    .line 189
    invoke-virtual {p1}, Landroid/view/textclassifier/TextClassification$Request;->getStartIndex()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/textclassifier/TextClassification$Request;->getEndIndex()I

    move-result v5

    new-instance v6, Landroid/view/textclassifier/TextClassifierImplNative$ClassificationOptions;

    .line 191
    invoke-virtual {v1}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v7

    invoke-virtual {v7}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v7

    .line 192
    invoke-virtual {v1}, Ljava/time/ZonedDateTime;->getZone()Ljava/time/ZoneId;

    move-result-object v9

    invoke-virtual {v9}, Ljava/time/ZoneId;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v7, v8, v9, v0}, Landroid/view/textclassifier/TextClassifierImplNative$ClassificationOptions;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    .line 188
    invoke-virtual {v2, v4, v3, v5, v6}, Landroid/view/textclassifier/TextClassifierImplNative;->classifyText(Ljava/lang/String;IILandroid/view/textclassifier/TextClassifierImplNative$ClassificationOptions;)[Landroid/view/textclassifier/TextClassifierImplNative$ClassificationResult;

    move-result-object v3

    .line 194
    array-length v0, v3

    if-lez v0, :cond_1

    .line 197
    invoke-virtual {p1}, Landroid/view/textclassifier/TextClassification$Request;->getStartIndex()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/textclassifier/TextClassification$Request;->getEndIndex()I

    move-result v6

    invoke-virtual {v1}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v7

    move-object v2, p0

    .line 195
    invoke-direct/range {v2 .. v7}, Landroid/view/textclassifier/TextClassifierImpl;->createClassificationResult([Landroid/view/textclassifier/TextClassifierImplNative$ClassificationResult;Ljava/lang/String;IILjava/time/Instant;)Landroid/view/textclassifier/TextClassification;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "androidtc"

    const-string v2, "Error getting text classification info."

    .line 202
    invoke-static {v1, v2, v0}, Landroid/view/textclassifier/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 205
    :cond_1
    iget-object p0, p0, Landroid/view/textclassifier/TextClassifierImpl;->mFallback:Landroid/view/textclassifier/TextClassifier;

    invoke-interface {p0, p1}, Landroid/view/textclassifier/TextClassifier;->classifyText(Landroid/view/textclassifier/TextClassification$Request;)Landroid/view/textclassifier/TextClassification;

    move-result-object p0

    return-object p0
.end method

.method public generateLinks(Landroid/view/textclassifier/TextLinks$Request;)Landroid/view/textclassifier/TextLinks;
    .locals 14

    .line 212
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    invoke-virtual {p1}, Landroid/view/textclassifier/TextLinks$Request;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassifierImpl;->getMaxGenerateLinksTextLength()I

    move-result v1

    invoke-static {v0, v1}, Landroid/view/textclassifier/TextClassifier$Utils;->checkTextLength(Ljava/lang/CharSequence;I)V

    .line 214
    invoke-static {}, Landroid/view/textclassifier/TextClassifier$Utils;->checkMainThread()V

    .line 216
    iget-object v0, p0, Landroid/view/textclassifier/TextClassifierImpl;->mSettings:Landroid/view/textclassifier/TextClassificationConstants;

    invoke-virtual {v0}, Landroid/view/textclassifier/TextClassificationConstants;->isSmartLinkifyEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/textclassifier/TextLinks$Request;->isLegacyFallback()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    invoke-static {p1}, Landroid/view/textclassifier/TextClassifier$Utils;->generateLegacyLinks(Landroid/view/textclassifier/TextLinks$Request;)Landroid/view/textclassifier/TextLinks;

    move-result-object p0

    return-object p0

    .line 220
    :cond_0
    invoke-virtual {p1}, Landroid/view/textclassifier/TextLinks$Request;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 221
    new-instance v1, Landroid/view/textclassifier/TextLinks$Builder;

    invoke-direct {v1, v0}, Landroid/view/textclassifier/TextLinks$Builder;-><init>(Ljava/lang/String;)V

    .line 224
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 225
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v4

    .line 226
    invoke-virtual {p1}, Landroid/view/textclassifier/TextLinks$Request;->getEntityConfig()Landroid/view/textclassifier/TextClassifier$EntityConfig;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 227
    invoke-virtual {p1}, Landroid/view/textclassifier/TextLinks$Request;->getEntityConfig()Landroid/view/textclassifier/TextClassifier$EntityConfig;

    move-result-object v5

    .line 228
    invoke-virtual {p1}, Landroid/view/textclassifier/TextLinks$Request;->getEntityConfig()Landroid/view/textclassifier/TextClassifier$EntityConfig;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/textclassifier/TextClassifier$EntityConfig;->getHints()Ljava/util/Collection;

    move-result-object v6

    invoke-direct {p0, v6}, Landroid/view/textclassifier/TextClassifierImpl;->getEntitiesForHints(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v6

    .line 227
    invoke-virtual {v5, v6}, Landroid/view/textclassifier/TextClassifier$EntityConfig;->resolveEntityListModifications(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v5

    goto :goto_0

    .line 229
    :cond_1
    iget-object v5, p0, Landroid/view/textclassifier/TextClassifierImpl;->mSettings:Landroid/view/textclassifier/TextClassificationConstants;

    invoke-virtual {v5}, Landroid/view/textclassifier/TextClassificationConstants;->getEntityListDefault()Ljava/util/List;

    move-result-object v5

    .line 231
    :goto_0
    invoke-virtual {p1}, Landroid/view/textclassifier/TextLinks$Request;->getDefaultLocales()Landroid/os/LocaleList;

    move-result-object v6

    invoke-direct {p0, v6}, Landroid/view/textclassifier/TextClassifierImpl;->getNative(Landroid/os/LocaleList;)Landroid/view/textclassifier/TextClassifierImplNative;

    move-result-object v6

    .line 232
    new-instance v7, Landroid/view/textclassifier/TextClassifierImplNative$AnnotationOptions;

    .line 236
    invoke-virtual {v4}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v8

    invoke-virtual {v8}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v8

    .line 237
    invoke-virtual {v4}, Ljava/time/ZonedDateTime;->getZone()Ljava/time/ZoneId;

    move-result-object v4

    invoke-virtual {v4}, Ljava/time/ZoneId;->getId()Ljava/lang/String;

    move-result-object v4

    .line 238
    invoke-virtual {p1}, Landroid/view/textclassifier/TextLinks$Request;->getDefaultLocales()Landroid/os/LocaleList;

    move-result-object v10

    invoke-static {v10}, Landroid/view/textclassifier/TextClassifierImpl;->concatenateLocales(Landroid/os/LocaleList;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v8, v9, v4, v10}, Landroid/view/textclassifier/TextClassifierImplNative$AnnotationOptions;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    .line 233
    invoke-virtual {v6, v0, v7}, Landroid/view/textclassifier/TextClassifierImplNative;->annotate(Ljava/lang/String;Landroid/view/textclassifier/TextClassifierImplNative$AnnotationOptions;)[Landroid/view/textclassifier/TextClassifierImplNative$AnnotatedSpan;

    move-result-object v0

    .line 239
    array-length v4, v0

    const/4 v6, 0x0

    move v7, v6

    :goto_1
    if-ge v7, v4, :cond_5

    aget-object v8, v0, v7

    .line 241
    invoke-virtual {v8}, Landroid/view/textclassifier/TextClassifierImplNative$AnnotatedSpan;->getClassification()[Landroid/view/textclassifier/TextClassifierImplNative$ClassificationResult;

    move-result-object v9

    .line 242
    array-length v10, v9

    if-eqz v10, :cond_4

    aget-object v10, v9, v6

    .line 243
    invoke-virtual {v10}, Landroid/view/textclassifier/TextClassifierImplNative$ClassificationResult;->getCollection()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v10}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    goto :goto_3

    .line 246
    :cond_2
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    move v11, v6

    .line 247
    :goto_2
    array-length v12, v9

    if-ge v11, v12, :cond_3

    .line 248
    aget-object v12, v9, v11

    invoke-virtual {v12}, Landroid/view/textclassifier/TextClassifierImplNative$ClassificationResult;->getCollection()Ljava/lang/String;

    move-result-object v12

    aget-object v13, v9, v11

    invoke-virtual {v13}, Landroid/view/textclassifier/TextClassifierImplNative$ClassificationResult;->getScore()F

    move-result v13

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    invoke-interface {v10, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 250
    :cond_3
    invoke-virtual {v8}, Landroid/view/textclassifier/TextClassifierImplNative$AnnotatedSpan;->getStartIndex()I

    move-result v9

    invoke-virtual {v8}, Landroid/view/textclassifier/TextClassifierImplNative$AnnotatedSpan;->getEndIndex()I

    move-result v8

    invoke-virtual {v1, v9, v8, v10}, Landroid/view/textclassifier/TextLinks$Builder;->addLink(IILjava/util/Map;)Landroid/view/textclassifier/TextLinks$Builder;

    :cond_4
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 252
    :cond_5
    invoke-virtual {v1}, Landroid/view/textclassifier/TextLinks$Builder;->build()Landroid/view/textclassifier/TextLinks;

    move-result-object v0

    .line 253
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 254
    invoke-virtual {p1}, Landroid/view/textclassifier/TextLinks$Request;->getCallingPackageName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    .line 255
    iget-object v1, p0, Landroid/view/textclassifier/TextClassifierImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    .line 256
    :cond_6
    invoke-virtual {p1}, Landroid/view/textclassifier/TextLinks$Request;->getCallingPackageName()Ljava/lang/String;

    move-result-object v1

    :goto_4
    move-object v6, v1

    .line 257
    iget-object v1, p0, Landroid/view/textclassifier/TextClassifierImpl;->mGenerateLinksLogger:Landroid/view/textclassifier/GenerateLinksLogger;

    .line 258
    invoke-virtual {p1}, Landroid/view/textclassifier/TextLinks$Request;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    sub-long v8, v4, v2

    move-object v2, v7

    move-object v3, v0

    move-object v4, v6

    move-wide v5, v8

    .line 257
    invoke-virtual/range {v1 .. v6}, Landroid/view/textclassifier/GenerateLinksLogger;->logGenerateLinks(Ljava/lang/CharSequence;Landroid/view/textclassifier/TextLinks;Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "androidtc"

    const-string v2, "Error getting links info."

    .line 262
    invoke-static {v1, v2, v0}, Landroid/view/textclassifier/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 264
    iget-object p0, p0, Landroid/view/textclassifier/TextClassifierImpl;->mFallback:Landroid/view/textclassifier/TextClassifier;

    invoke-interface {p0, p1}, Landroid/view/textclassifier/TextClassifier;->generateLinks(Landroid/view/textclassifier/TextLinks$Request;)Landroid/view/textclassifier/TextLinks;

    move-result-object p0

    return-object p0
.end method

.method public getMaxGenerateLinksTextLength()I
    .locals 0

    .line 270
    iget-object p0, p0, Landroid/view/textclassifier/TextClassifierImpl;->mSettings:Landroid/view/textclassifier/TextClassificationConstants;

    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassificationConstants;->getGenerateLinksMaxTextLength()I

    move-result p0

    return p0
.end method

.method public onSelectionEvent(Landroid/view/textclassifier/SelectionEvent;)V
    .locals 2

    .line 290
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    iget-object v0, p0, Landroid/view/textclassifier/TextClassifierImpl;->mLoggerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 292
    :try_start_0
    iget-object v1, p0, Landroid/view/textclassifier/TextClassifierImpl;->mSessionLogger:Landroid/view/textclassifier/SelectionSessionLogger;

    if-nez v1, :cond_0

    .line 293
    new-instance v1, Landroid/view/textclassifier/SelectionSessionLogger;

    invoke-direct {v1}, Landroid/view/textclassifier/SelectionSessionLogger;-><init>()V

    iput-object v1, p0, Landroid/view/textclassifier/TextClassifierImpl;->mSessionLogger:Landroid/view/textclassifier/SelectionSessionLogger;

    .line 295
    :cond_0
    iget-object p0, p0, Landroid/view/textclassifier/TextClassifierImpl;->mSessionLogger:Landroid/view/textclassifier/SelectionSessionLogger;

    invoke-virtual {p0, p1}, Landroid/view/textclassifier/SelectionSessionLogger;->writeEvent(Landroid/view/textclassifier/SelectionEvent;)V

    .line 296
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public suggestSelection(Landroid/view/textclassifier/TextSelection$Request;)Landroid/view/textclassifier/TextSelection;
    .locals 12

    .line 118
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    invoke-static {}, Landroid/view/textclassifier/TextClassifier$Utils;->checkMainThread()V

    .line 121
    :try_start_0
    invoke-virtual {p1}, Landroid/view/textclassifier/TextSelection$Request;->getEndIndex()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/textclassifier/TextSelection$Request;->getStartIndex()I

    move-result v1

    sub-int/2addr v0, v1

    .line 122
    invoke-virtual {p1}, Landroid/view/textclassifier/TextSelection$Request;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 123
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    iget-object v2, p0, Landroid/view/textclassifier/TextClassifierImpl;->mSettings:Landroid/view/textclassifier/TextClassificationConstants;

    .line 124
    invoke-virtual {v2}, Landroid/view/textclassifier/TextClassificationConstants;->getSuggestSelectionMaxRangeLength()I

    move-result v2

    if-gt v0, v2, :cond_3

    .line 125
    invoke-virtual {p1}, Landroid/view/textclassifier/TextSelection$Request;->getDefaultLocales()Landroid/os/LocaleList;

    move-result-object v0

    invoke-static {v0}, Landroid/view/textclassifier/TextClassifierImpl;->concatenateLocales(Landroid/os/LocaleList;)Ljava/lang/String;

    move-result-object v0

    .line 126
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v2

    .line 127
    invoke-virtual {p1}, Landroid/view/textclassifier/TextSelection$Request;->getDefaultLocales()Landroid/os/LocaleList;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/view/textclassifier/TextClassifierImpl;->getNative(Landroid/os/LocaleList;)Landroid/view/textclassifier/TextClassifierImplNative;

    move-result-object v3

    .line 130
    iget-object v4, p0, Landroid/view/textclassifier/TextClassifierImpl;->mSettings:Landroid/view/textclassifier/TextClassificationConstants;

    invoke-virtual {v4}, Landroid/view/textclassifier/TextClassificationConstants;->isModelDarkLaunchEnabled()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Landroid/view/textclassifier/TextSelection$Request;->isDarkLaunchAllowed()Z

    move-result v4

    if-nez v4, :cond_0

    .line 131
    invoke-virtual {p1}, Landroid/view/textclassifier/TextSelection$Request;->getStartIndex()I

    move-result v4

    .line 132
    invoke-virtual {p1}, Landroid/view/textclassifier/TextSelection$Request;->getEndIndex()I

    move-result v6

    goto :goto_0

    .line 135
    :cond_0
    invoke-virtual {p1}, Landroid/view/textclassifier/TextSelection$Request;->getStartIndex()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/textclassifier/TextSelection$Request;->getEndIndex()I

    move-result v6

    new-instance v7, Landroid/view/textclassifier/TextClassifierImplNative$SelectionOptions;

    invoke-direct {v7, v0}, Landroid/view/textclassifier/TextClassifierImplNative$SelectionOptions;-><init>(Ljava/lang/String;)V

    .line 134
    invoke-virtual {v3, v1, v4, v6, v7}, Landroid/view/textclassifier/TextClassifierImplNative;->suggestSelection(Ljava/lang/String;IILandroid/view/textclassifier/TextClassifierImplNative$SelectionOptions;)[I

    move-result-object v4

    .line 137
    aget v6, v4, v5

    const/4 v7, 0x1

    .line 138
    aget v4, v4, v7

    move v11, v6

    move v6, v4

    move v4, v11

    :goto_0
    if-ge v4, v6, :cond_2

    if-ltz v4, :cond_2

    .line 141
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    if-gt v6, v7, :cond_2

    .line 142
    invoke-virtual {p1}, Landroid/view/textclassifier/TextSelection$Request;->getStartIndex()I

    move-result v7

    if-gt v4, v7, :cond_2

    invoke-virtual {p1}, Landroid/view/textclassifier/TextSelection$Request;->getEndIndex()I

    move-result v7

    if-lt v6, v7, :cond_2

    .line 143
    new-instance v7, Landroid/view/textclassifier/TextSelection$Builder;

    invoke-direct {v7, v4, v6}, Landroid/view/textclassifier/TextSelection$Builder;-><init>(II)V

    .line 144
    new-instance v8, Landroid/view/textclassifier/TextClassifierImplNative$ClassificationOptions;

    .line 148
    invoke-virtual {v2}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v9

    invoke-virtual {v9}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v9

    .line 149
    invoke-virtual {v2}, Ljava/time/ZonedDateTime;->getZone()Ljava/time/ZoneId;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/ZoneId;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v8, v9, v10, v2, v0}, Landroid/view/textclassifier/TextClassifierImplNative$ClassificationOptions;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    .line 145
    invoke-virtual {v3, v1, v4, v6, v8}, Landroid/view/textclassifier/TextClassifierImplNative;->classifyText(Ljava/lang/String;IILandroid/view/textclassifier/TextClassifierImplNative$ClassificationOptions;)[Landroid/view/textclassifier/TextClassifierImplNative$ClassificationResult;

    move-result-object v0

    .line 151
    array-length v2, v0

    :goto_1
    if-ge v5, v2, :cond_1

    .line 153
    aget-object v3, v0, v5

    invoke-virtual {v3}, Landroid/view/textclassifier/TextClassifierImplNative$ClassificationResult;->getCollection()Ljava/lang/String;

    move-result-object v3

    aget-object v4, v0, v5

    invoke-virtual {v4}, Landroid/view/textclassifier/TextClassifierImplNative$ClassificationResult;->getScore()F

    move-result v4

    invoke-virtual {v7, v3, v4}, Landroid/view/textclassifier/TextSelection$Builder;->setEntityType(Ljava/lang/String;F)Landroid/view/textclassifier/TextSelection$Builder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 156
    :cond_1
    invoke-virtual {p1}, Landroid/view/textclassifier/TextSelection$Request;->getStartIndex()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/textclassifier/TextSelection$Request;->getEndIndex()I

    move-result v2

    .line 155
    invoke-direct {p0, v1, v0, v2}, Landroid/view/textclassifier/TextClassifierImpl;->createId(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/view/textclassifier/TextSelection$Builder;->setId(Ljava/lang/String;)Landroid/view/textclassifier/TextSelection$Builder;

    move-result-object v0

    .line 157
    invoke-virtual {v0}, Landroid/view/textclassifier/TextSelection$Builder;->build()Landroid/view/textclassifier/TextSelection;

    move-result-object v0

    return-object v0

    :cond_2
    const-string v0, "androidtc"

    const-string v1, "Got bad indices for input text. Ignoring result."

    .line 160
    invoke-static {v0, v1}, Landroid/view/textclassifier/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v1, "androidtc"

    const-string v2, "Error suggesting selection for text. No changes to selection suggested."

    .line 165
    invoke-static {v1, v2, v0}, Landroid/view/textclassifier/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 170
    :cond_3
    :goto_2
    iget-object p0, p0, Landroid/view/textclassifier/TextClassifierImpl;->mFallback:Landroid/view/textclassifier/TextClassifier;

    invoke-interface {p0, p1}, Landroid/view/textclassifier/TextClassifier;->suggestSelection(Landroid/view/textclassifier/TextSelection$Request;)Landroid/view/textclassifier/TextSelection;

    move-result-object p0

    return-object p0
.end method
