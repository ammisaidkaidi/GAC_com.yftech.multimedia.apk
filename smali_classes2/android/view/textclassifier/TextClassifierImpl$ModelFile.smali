.class final Landroid/view/textclassifier/TextClassifierImpl$ModelFile;
.super Ljava/lang/Object;
.source "TextClassifierImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/textclassifier/TextClassifierImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ModelFile"
.end annotation


# instance fields
.field private final mLanguageIndependent:Z

.field private final mName:Ljava/lang/String;

.field private final mPath:Ljava/lang/String;

.field private final mSupportedLocales:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation
.end field

.field private final mVersion:I


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ljava/util/Locale;",
            ">;Z)V"
        }
    .end annotation

    .line 558
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 559
    iput-object p1, p0, Landroid/view/textclassifier/TextClassifierImpl$ModelFile;->mPath:Ljava/lang/String;

    .line 560
    iput-object p2, p0, Landroid/view/textclassifier/TextClassifierImpl$ModelFile;->mName:Ljava/lang/String;

    .line 561
    iput p3, p0, Landroid/view/textclassifier/TextClassifierImpl$ModelFile;->mVersion:I

    .line 562
    iput-object p4, p0, Landroid/view/textclassifier/TextClassifierImpl$ModelFile;->mSupportedLocales:Ljava/util/List;

    .line 563
    iput-boolean p5, p0, Landroid/view/textclassifier/TextClassifierImpl$ModelFile;->mLanguageIndependent:Z

    return-void
.end method

.method static fromPath(Ljava/lang/String;)Landroid/view/textclassifier/TextClassifierImpl$ModelFile;
    .locals 10

    .line 466
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    const/4 v2, 0x0

    .line 468
    :try_start_0
    invoke-static {v0, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 470
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v3

    invoke-static {v3}, Landroid/view/textclassifier/TextClassifierImplNative;->getVersion(I)I

    move-result v7

    .line 472
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v3

    invoke-static {v3}, Landroid/view/textclassifier/TextClassifierImplNative;->getLocales(I)Ljava/lang/String;

    move-result-object v3

    .line 473
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string p0, "androidtc"

    .line 474
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/view/textclassifier/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_0
    const-string v4, "*"

    .line 477
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 478
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const-string v4, ","

    .line 479
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v6, v3, v5

    .line 480
    invoke-static {v6}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v6

    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 482
    :cond_1
    invoke-static {v1}, Landroid/view/textclassifier/TextClassifierImpl;->access$000(Landroid/os/ParcelFileDescriptor;)V

    .line 483
    new-instance v1, Landroid/view/textclassifier/TextClassifierImpl$ModelFile;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    move-object v4, v1

    move-object v5, p0

    invoke-direct/range {v4 .. v9}, Landroid/view/textclassifier/TextClassifierImpl$ModelFile;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Z)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    const-string v1, "androidtc"

    .line 486
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to peek "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, p0}, Landroid/view/textclassifier/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v2
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-eqz p1, :cond_2

    .line 539
    const-class v0, Landroid/view/textclassifier/TextClassifierImpl$ModelFile;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 542
    :cond_1
    check-cast p1, Landroid/view/textclassifier/TextClassifierImpl$ModelFile;

    .line 543
    iget-object p0, p0, Landroid/view/textclassifier/TextClassifierImpl$ModelFile;->mPath:Ljava/lang/String;

    iget-object p1, p1, Landroid/view/textclassifier/TextClassifierImpl$ModelFile;->mPath:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method getName()Ljava/lang/String;
    .locals 0

    .line 498
    iget-object p0, p0, Landroid/view/textclassifier/TextClassifierImpl$ModelFile;->mName:Ljava/lang/String;

    return-object p0
.end method

.method getPath()Ljava/lang/String;
    .locals 0

    .line 493
    iget-object p0, p0, Landroid/view/textclassifier/TextClassifierImpl$ModelFile;->mPath:Ljava/lang/String;

    return-object p0
.end method

.method getSupportedLocales()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation

    .line 513
    iget-object p0, p0, Landroid/view/textclassifier/TextClassifierImpl$ModelFile;->mSupportedLocales:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method getVersion()I
    .locals 0

    .line 503
    iget p0, p0, Landroid/view/textclassifier/TextClassifierImpl$ModelFile;->mVersion:I

    return p0
.end method

.method isAnyLanguageSupported(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Locale$LanguageRange;",
            ">;)Z"
        }
    .end annotation

    .line 508
    iget-boolean v0, p0, Landroid/view/textclassifier/TextClassifierImpl$ModelFile;->mLanguageIndependent:Z

    if-nez v0, :cond_1

    iget-object p0, p0, Landroid/view/textclassifier/TextClassifierImpl$ModelFile;->mSupportedLocales:Ljava/util/List;

    invoke-static {p1, p0}, Ljava/util/Locale;->lookup(Ljava/util/List;Ljava/util/Collection;)Ljava/util/Locale;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isPreferredTo(Landroid/view/textclassifier/TextClassifierImpl$ModelFile;)Z
    .locals 2

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 524
    :cond_0
    iget-boolean v1, p0, Landroid/view/textclassifier/TextClassifierImpl$ModelFile;->mLanguageIndependent:Z

    if-nez v1, :cond_1

    iget-boolean v1, p1, Landroid/view/textclassifier/TextClassifierImpl$ModelFile;->mLanguageIndependent:Z

    if-eqz v1, :cond_1

    return v0

    .line 529
    :cond_1
    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassifierImpl$ModelFile;->getVersion()I

    move-result p0

    invoke-virtual {p1}, Landroid/view/textclassifier/TextClassifierImpl$ModelFile;->getVersion()I

    move-result p1

    if-le p0, p1, :cond_2

    return v0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 549
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, ","

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 550
    iget-object v1, p0, Landroid/view/textclassifier/TextClassifierImpl$ModelFile;->mSupportedLocales:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Locale;

    .line 551
    invoke-virtual {v2}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_0

    .line 553
    :cond_0
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "ModelFile { path=%s name=%s version=%d locales=%s }"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Landroid/view/textclassifier/TextClassifierImpl$ModelFile;->mPath:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Landroid/view/textclassifier/TextClassifierImpl$ModelFile;->mName:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget p0, p0, Landroid/view/textclassifier/TextClassifierImpl$ModelFile;->mVersion:I

    .line 554
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v4

    const/4 p0, 0x3

    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, p0

    .line 553
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
