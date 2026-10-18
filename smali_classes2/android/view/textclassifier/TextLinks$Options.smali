.class public final Landroid/view/textclassifier/TextLinks$Options;
.super Ljava/lang/Object;
.source "TextLinks.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/textclassifier/TextLinks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Options"
.end annotation


# instance fields
.field private mApplyStrategy:I

.field private mCallingPackageName:Ljava/lang/String;

.field private mDefaultLocales:Landroid/os/LocaleList;

.field private mEntityConfig:Landroid/view/textclassifier/TextClassifier$EntityConfig;

.field private mLegacyFallback:Z

.field private final mRequest:Landroid/view/textclassifier/TextLinks$Request;

.field private final mSessionId:Landroid/view/textclassifier/TextClassificationSessionId;

.field private mSpanFactory:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Landroid/view/textclassifier/TextLinks$TextLink;",
            "Landroid/view/textclassifier/TextLinks$TextLinkSpan;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 656
    invoke-direct {p0, v0, v0}, Landroid/view/textclassifier/TextLinks$Options;-><init>(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextLinks$Request;)V

    return-void
.end method

.method private constructor <init>(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextLinks$Request;)V
    .locals 0

    .line 660
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 661
    iput-object p1, p0, Landroid/view/textclassifier/TextLinks$Options;->mSessionId:Landroid/view/textclassifier/TextClassificationSessionId;

    .line 662
    iput-object p2, p0, Landroid/view/textclassifier/TextLinks$Options;->mRequest:Landroid/view/textclassifier/TextLinks$Request;

    return-void
.end method

.method private static checkValidApplyStrategy(I)V
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 751
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid apply strategy. See TextLinks.ApplyStrategy for options."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public static from(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextLinks$Request;)Landroid/view/textclassifier/TextLinks$Options;
    .locals 1

    .line 667
    new-instance v0, Landroid/view/textclassifier/TextLinks$Options;

    invoke-direct {v0, p0, p1}, Landroid/view/textclassifier/TextLinks$Options;-><init>(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextLinks$Request;)V

    .line 668
    invoke-virtual {p1}, Landroid/view/textclassifier/TextLinks$Request;->getDefaultLocales()Landroid/os/LocaleList;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/textclassifier/TextLinks$Options;->setDefaultLocales(Landroid/os/LocaleList;)Landroid/view/textclassifier/TextLinks$Options;

    .line 669
    invoke-virtual {p1}, Landroid/view/textclassifier/TextLinks$Request;->getEntityConfig()Landroid/view/textclassifier/TextClassifier$EntityConfig;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/textclassifier/TextLinks$Options;->setEntityConfig(Landroid/view/textclassifier/TextClassifier$EntityConfig;)Landroid/view/textclassifier/TextLinks$Options;

    return-object v0
.end method

.method public static fromLinkMask(I)Landroid/view/textclassifier/TextLinks$Options;
    .locals 2

    .line 675
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "url"

    .line 678
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_1

    const-string v1, "email"

    .line 681
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_2

    const-string/jumbo v1, "phone"

    .line 684
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_3

    const-string p0, "address"

    .line 687
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 690
    :cond_3
    new-instance p0, Landroid/view/textclassifier/TextLinks$Options;

    invoke-direct {p0}, Landroid/view/textclassifier/TextLinks$Options;-><init>()V

    .line 691
    invoke-static {v0}, Landroid/view/textclassifier/TextClassifier$EntityConfig;->createWithEntityList(Ljava/util/Collection;)Landroid/view/textclassifier/TextClassifier$EntityConfig;

    move-result-object v0

    .line 690
    invoke-virtual {p0, v0}, Landroid/view/textclassifier/TextLinks$Options;->setEntityConfig(Landroid/view/textclassifier/TextClassifier$EntityConfig;)Landroid/view/textclassifier/TextLinks$Options;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getApplyStrategy()I
    .locals 0

    .line 731
    iget p0, p0, Landroid/view/textclassifier/TextLinks$Options;->mApplyStrategy:I

    return p0
.end method

.method public getDefaultLocales()Landroid/os/LocaleList;
    .locals 0

    .line 721
    iget-object p0, p0, Landroid/view/textclassifier/TextLinks$Options;->mDefaultLocales:Landroid/os/LocaleList;

    return-object p0
.end method

.method public getEntityConfig()Landroid/view/textclassifier/TextClassifier$EntityConfig;
    .locals 0

    .line 726
    iget-object p0, p0, Landroid/view/textclassifier/TextLinks$Options;->mEntityConfig:Landroid/view/textclassifier/TextClassifier$EntityConfig;

    return-object p0
.end method

.method public getRequest()Landroid/view/textclassifier/TextLinks$Request;
    .locals 0

    .line 741
    iget-object p0, p0, Landroid/view/textclassifier/TextLinks$Options;->mRequest:Landroid/view/textclassifier/TextLinks$Request;

    return-object p0
.end method

.method public getSessionId()Landroid/view/textclassifier/TextClassificationSessionId;
    .locals 0

    .line 746
    iget-object p0, p0, Landroid/view/textclassifier/TextLinks$Options;->mSessionId:Landroid/view/textclassifier/TextClassificationSessionId;

    return-object p0
.end method

.method public getSpanFactory()Ljava/util/function/Function;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Function<",
            "Landroid/view/textclassifier/TextLinks$TextLink;",
            "Landroid/view/textclassifier/TextLinks$TextLinkSpan;",
            ">;"
        }
    .end annotation

    .line 736
    iget-object p0, p0, Landroid/view/textclassifier/TextLinks$Options;->mSpanFactory:Ljava/util/function/Function;

    return-object p0
.end method

.method public setApplyStrategy(I)Landroid/view/textclassifier/TextLinks$Options;
    .locals 0

    .line 708
    invoke-static {p1}, Landroid/view/textclassifier/TextLinks$Options;->checkValidApplyStrategy(I)V

    .line 709
    iput p1, p0, Landroid/view/textclassifier/TextLinks$Options;->mApplyStrategy:I

    return-object p0
.end method

.method public setDefaultLocales(Landroid/os/LocaleList;)Landroid/view/textclassifier/TextLinks$Options;
    .locals 0

    .line 696
    iput-object p1, p0, Landroid/view/textclassifier/TextLinks$Options;->mDefaultLocales:Landroid/os/LocaleList;

    return-object p0
.end method

.method public setEntityConfig(Landroid/view/textclassifier/TextClassifier$EntityConfig;)Landroid/view/textclassifier/TextLinks$Options;
    .locals 0

    .line 702
    iput-object p1, p0, Landroid/view/textclassifier/TextLinks$Options;->mEntityConfig:Landroid/view/textclassifier/TextClassifier$EntityConfig;

    return-object p0
.end method

.method public setSpanFactory(Ljava/util/function/Function;)Landroid/view/textclassifier/TextLinks$Options;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Landroid/view/textclassifier/TextLinks$TextLink;",
            "Landroid/view/textclassifier/TextLinks$TextLinkSpan;",
            ">;)",
            "Landroid/view/textclassifier/TextLinks$Options;"
        }
    .end annotation

    .line 715
    iput-object p1, p0, Landroid/view/textclassifier/TextLinks$Options;->mSpanFactory:Ljava/util/function/Function;

    return-object p0
.end method
