.class public Landroid/content/pm/PackageParser$ApkLite;
.super Ljava/lang/Object;
.source "PackageParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ApkLite"
.end annotation


# instance fields
.field public final codePath:Ljava/lang/String;

.field public final configForSplit:Ljava/lang/String;

.field public final coreApp:Z

.field public final debuggable:Z

.field public final extractNativeLibs:Z

.field public final installLocation:I

.field public isFeatureSplit:Z

.field public final isolatedSplits:Z

.field public final multiArch:Z

.field public final packageName:Ljava/lang/String;

.field public final revisionCode:I

.field public final signingDetails:Landroid/content/pm/PackageParser$SigningDetails;

.field public final splitName:Ljava/lang/String;

.field public final use32bitAbi:Z

.field public final usesSplitName:Ljava/lang/String;

.field public final verifiers:[Landroid/content/pm/VerifierInfo;

.field public final versionCode:I

.field public final versionCodeMajor:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;IIIILjava/util/List;Landroid/content/pm/PackageParser$SigningDetails;ZZZZZZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIII",
            "Ljava/util/List<",
            "Landroid/content/pm/VerifierInfo;",
            ">;",
            "Landroid/content/pm/PackageParser$SigningDetails;",
            "ZZZZZZ)V"
        }
    .end annotation

    move-object v0, p0

    .line 497
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 498
    iput-object v1, v0, Landroid/content/pm/PackageParser$ApkLite;->codePath:Ljava/lang/String;

    move-object v1, p2

    .line 499
    iput-object v1, v0, Landroid/content/pm/PackageParser$ApkLite;->packageName:Ljava/lang/String;

    move-object v1, p3

    .line 500
    iput-object v1, v0, Landroid/content/pm/PackageParser$ApkLite;->splitName:Ljava/lang/String;

    move v1, p4

    .line 501
    iput-boolean v1, v0, Landroid/content/pm/PackageParser$ApkLite;->isFeatureSplit:Z

    move-object v1, p5

    .line 502
    iput-object v1, v0, Landroid/content/pm/PackageParser$ApkLite;->configForSplit:Ljava/lang/String;

    move-object v1, p6

    .line 503
    iput-object v1, v0, Landroid/content/pm/PackageParser$ApkLite;->usesSplitName:Ljava/lang/String;

    move v1, p7

    .line 504
    iput v1, v0, Landroid/content/pm/PackageParser$ApkLite;->versionCode:I

    move v1, p8

    .line 505
    iput v1, v0, Landroid/content/pm/PackageParser$ApkLite;->versionCodeMajor:I

    move v1, p9

    .line 506
    iput v1, v0, Landroid/content/pm/PackageParser$ApkLite;->revisionCode:I

    move v1, p10

    .line 507
    iput v1, v0, Landroid/content/pm/PackageParser$ApkLite;->installLocation:I

    move-object v1, p12

    .line 508
    iput-object v1, v0, Landroid/content/pm/PackageParser$ApkLite;->signingDetails:Landroid/content/pm/PackageParser$SigningDetails;

    .line 509
    invoke-interface {p11}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Landroid/content/pm/VerifierInfo;

    move-object v2, p11

    invoke-interface {p11, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/content/pm/VerifierInfo;

    iput-object v1, v0, Landroid/content/pm/PackageParser$ApkLite;->verifiers:[Landroid/content/pm/VerifierInfo;

    move/from16 v1, p13

    .line 510
    iput-boolean v1, v0, Landroid/content/pm/PackageParser$ApkLite;->coreApp:Z

    move/from16 v1, p14

    .line 511
    iput-boolean v1, v0, Landroid/content/pm/PackageParser$ApkLite;->debuggable:Z

    move/from16 v1, p15

    .line 512
    iput-boolean v1, v0, Landroid/content/pm/PackageParser$ApkLite;->multiArch:Z

    move/from16 v1, p16

    .line 513
    iput-boolean v1, v0, Landroid/content/pm/PackageParser$ApkLite;->use32bitAbi:Z

    move/from16 v1, p17

    .line 514
    iput-boolean v1, v0, Landroid/content/pm/PackageParser$ApkLite;->extractNativeLibs:Z

    move/from16 v1, p18

    .line 515
    iput-boolean v1, v0, Landroid/content/pm/PackageParser$ApkLite;->isolatedSplits:Z

    return-void
.end method


# virtual methods
.method public getLongVersionCode()J
    .locals 2

    .line 519
    iget v0, p0, Landroid/content/pm/PackageParser$ApkLite;->versionCodeMajor:I

    iget p0, p0, Landroid/content/pm/PackageParser$ApkLite;->versionCode:I

    invoke-static {v0, p0}, Landroid/content/pm/PackageInfo;->composeLongVersionCode(II)J

    move-result-wide v0

    return-wide v0
.end method
