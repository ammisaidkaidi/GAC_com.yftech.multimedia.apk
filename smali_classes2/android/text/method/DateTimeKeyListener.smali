.class public Landroid/text/method/DateTimeKeyListener;
.super Landroid/text/method/NumberKeyListener;
.source "DateTimeKeyListener.java"


# static fields
.field public static final CHARACTERS:[C

.field private static final SKELETON_12HOUR:Ljava/lang/String; = "yMdhms"

.field private static final SKELETON_24HOUR:Ljava/lang/String; = "yMdHms"

.field private static final SYMBOLS_TO_IGNORE:Ljava/lang/String; = "yMLdahHKkms"

.field private static final sInstanceCache:Ljava/util/HashMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/util/Locale;",
            "Landroid/text/method/DateTimeKeyListener;",
            ">;"
        }
    .end annotation
.end field

.field private static final sLock:Ljava/lang/Object;


# instance fields
.field private final mCharacters:[C

.field private final mNeedsAdvancedInput:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x11

    .line 128
    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Landroid/text/method/DateTimeKeyListener;->CHARACTERS:[C

    .line 136
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/text/method/DateTimeKeyListener;->sLock:Ljava/lang/Object;

    .line 138
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/text/method/DateTimeKeyListener;->sInstanceCache:Ljava/util/HashMap;

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x6ds
        0x70s
        0x3as
        0x2fs
        0x2ds
        0x20s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 60
    invoke-direct {p0, v0}, Landroid/text/method/DateTimeKeyListener;-><init>(Ljava/util/Locale;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 5

    .line 67
    invoke-direct {p0}, Landroid/text/method/NumberKeyListener;-><init>()V

    .line 68
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 71
    invoke-static {v0, p1}, Landroid/text/method/NumberKeyListener;->addDigits(Ljava/util/Collection;Ljava/util/Locale;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 72
    invoke-static {v0, p1}, Landroid/text/method/NumberKeyListener;->addAmPmChars(Ljava/util/Collection;Ljava/util/Locale;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "yMdhms"

    const-string/jumbo v4, "yMLdahHKkms"

    .line 73
    invoke-static {v0, p1, v1, v4}, Landroid/text/method/NumberKeyListener;->addFormatCharsFromSkeleton(Ljava/util/Collection;Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "yMdHms"

    const-string/jumbo v4, "yMLdahHKkms"

    .line 75
    invoke-static {v0, p1, v1, v4}, Landroid/text/method/NumberKeyListener;->addFormatCharsFromSkeleton(Ljava/util/Collection;Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    if-eqz v1, :cond_2

    .line 78
    invoke-static {v0}, Landroid/text/method/NumberKeyListener;->collectionToArray(Ljava/util/Collection;)[C

    move-result-object v0

    iput-object v0, p0, Landroid/text/method/DateTimeKeyListener;->mCharacters:[C

    if-eqz p1, :cond_1

    const-string v0, "en"

    .line 79
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 83
    iput-boolean v3, p0, Landroid/text/method/DateTimeKeyListener;->mNeedsAdvancedInput:Z

    goto :goto_1

    .line 85
    :cond_1
    sget-object p1, Landroid/text/method/DateTimeKeyListener;->CHARACTERS:[C

    iget-object v0, p0, Landroid/text/method/DateTimeKeyListener;->mCharacters:[C

    invoke-static {p1, v0}, Lcom/android/internal/util/ArrayUtils;->containsAll([C[C)Z

    move-result p1

    xor-int/2addr p1, v2

    iput-boolean p1, p0, Landroid/text/method/DateTimeKeyListener;->mNeedsAdvancedInput:Z

    goto :goto_1

    .line 88
    :cond_2
    sget-object p1, Landroid/text/method/DateTimeKeyListener;->CHARACTERS:[C

    iput-object p1, p0, Landroid/text/method/DateTimeKeyListener;->mCharacters:[C

    .line 89
    iput-boolean v3, p0, Landroid/text/method/DateTimeKeyListener;->mNeedsAdvancedInput:Z

    :goto_1
    return-void
.end method

.method public static getInstance()Landroid/text/method/DateTimeKeyListener;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 99
    invoke-static {v0}, Landroid/text/method/DateTimeKeyListener;->getInstance(Ljava/util/Locale;)Landroid/text/method/DateTimeKeyListener;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/util/Locale;)Landroid/text/method/DateTimeKeyListener;
    .locals 3

    .line 108
    sget-object v0, Landroid/text/method/DateTimeKeyListener;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 109
    :try_start_0
    sget-object v1, Landroid/text/method/DateTimeKeyListener;->sInstanceCache:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/text/method/DateTimeKeyListener;

    if-nez v1, :cond_0

    .line 111
    new-instance v1, Landroid/text/method/DateTimeKeyListener;

    invoke-direct {v1, p0}, Landroid/text/method/DateTimeKeyListener;-><init>(Ljava/util/Locale;)V

    .line 112
    sget-object v2, Landroid/text/method/DateTimeKeyListener;->sInstanceCache:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    :cond_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method protected getAcceptedChars()[C
    .locals 0

    .line 52
    iget-object p0, p0, Landroid/text/method/DateTimeKeyListener;->mCharacters:[C

    return-object p0
.end method

.method public getInputType()I
    .locals 0

    .line 41
    iget-boolean p0, p0, Landroid/text/method/DateTimeKeyListener;->mNeedsAdvancedInput:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x4

    return p0
.end method
