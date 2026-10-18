.class public final Landroid/view/DisplayCutout;
.super Ljava/lang/Object;
.source "DisplayCutout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/DisplayCutout$ParcelableWrapper;
    }
.end annotation


# static fields
.field private static final BOTTOM_MARKER:Ljava/lang/String; = "@bottom"

.field private static final CACHE_LOCK:Ljava/lang/Object;

.field private static final DP_MARKER:Ljava/lang/String; = "@dp"

.field private static final EMPTY_REGION:Landroid/graphics/Region;

.field public static final EMULATION_OVERLAY_CATEGORY:Ljava/lang/String; = "com.android.internal.display_cutout_emulation"

.field public static final NO_CUTOUT:Landroid/view/DisplayCutout;

.field private static final NULL_PAIR:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Landroid/graphics/Path;",
            "Landroid/view/DisplayCutout;",
            ">;"
        }
    .end annotation
.end field

.field private static final RIGHT_MARKER:Ljava/lang/String; = "@right"

.field private static final TAG:Ljava/lang/String; = "DisplayCutout"

.field private static final ZERO_RECT:Landroid/graphics/Rect;

.field private static sCachedCutout:Landroid/util/Pair;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "CACHE_LOCK"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Landroid/graphics/Path;",
            "Landroid/view/DisplayCutout;",
            ">;"
        }
    .end annotation
.end field

.field private static sCachedDensity:F
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "CACHE_LOCK"
    .end annotation
.end field

.field private static sCachedDisplayHeight:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "CACHE_LOCK"
    .end annotation
.end field

.field private static sCachedDisplayWidth:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "CACHE_LOCK"
    .end annotation
.end field

.field private static sCachedSpec:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "CACHE_LOCK"
    .end annotation
.end field


# instance fields
.field private final mBounds:Landroid/graphics/Region;

.field private final mSafeInsets:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 69
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Landroid/view/DisplayCutout;->ZERO_RECT:Landroid/graphics/Rect;

    .line 70
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    sput-object v0, Landroid/view/DisplayCutout;->EMPTY_REGION:Landroid/graphics/Region;

    .line 77
    new-instance v0, Landroid/view/DisplayCutout;

    sget-object v1, Landroid/view/DisplayCutout;->ZERO_RECT:Landroid/graphics/Rect;

    sget-object v2, Landroid/view/DisplayCutout;->EMPTY_REGION:Landroid/graphics/Region;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/view/DisplayCutout;-><init>(Landroid/graphics/Rect;Landroid/graphics/Region;Z)V

    sput-object v0, Landroid/view/DisplayCutout;->NO_CUTOUT:Landroid/view/DisplayCutout;

    .line 81
    new-instance v0, Landroid/util/Pair;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sput-object v0, Landroid/view/DisplayCutout;->NULL_PAIR:Landroid/util/Pair;

    .line 82
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/DisplayCutout;->CACHE_LOCK:Ljava/lang/Object;

    .line 93
    sget-object v0, Landroid/view/DisplayCutout;->NULL_PAIR:Landroid/util/Pair;

    sput-object v0, Landroid/view/DisplayCutout;->sCachedCutout:Landroid/util/Pair;

    return-void
.end method

.method private constructor <init>(Landroid/graphics/Rect;Landroid/graphics/Region;Z)V
    .locals 1

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    .line 120
    sget-object p1, Landroid/view/DisplayCutout;->ZERO_RECT:Landroid/graphics/Rect;

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    .line 121
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object p1, v0

    :cond_1
    :goto_0
    iput-object p1, p0, Landroid/view/DisplayCutout;->mSafeInsets:Landroid/graphics/Rect;

    if-nez p2, :cond_2

    .line 122
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object p2

    goto :goto_1

    :cond_2
    if-eqz p3, :cond_3

    .line 123
    invoke-static {p2}, Landroid/graphics/Region;->obtain(Landroid/graphics/Region;)Landroid/graphics/Region;

    move-result-object p2

    :cond_3
    :goto_1
    iput-object p2, p0, Landroid/view/DisplayCutout;->mBounds:Landroid/graphics/Region;

    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/Rect;Landroid/graphics/Region;ZLandroid/view/DisplayCutout$1;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2, p3}, Landroid/view/DisplayCutout;-><init>(Landroid/graphics/Rect;Landroid/graphics/Region;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Rect;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 108
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/view/DisplayCutout;->ZERO_RECT:Landroid/graphics/Rect;

    .line 109
    :goto_0
    invoke-static {p2}, Landroid/view/DisplayCutout;->boundingRectsToRegion(Ljava/util/List;)Landroid/graphics/Region;

    move-result-object p1

    const/4 p2, 0x1

    .line 108
    invoke-direct {p0, v0, p1, p2}, Landroid/view/DisplayCutout;-><init>(Landroid/graphics/Rect;Landroid/graphics/Region;Z)V

    return-void
.end method

.method static synthetic access$000(Landroid/view/DisplayCutout;)Landroid/graphics/Rect;
    .locals 0

    .line 52
    iget-object p0, p0, Landroid/view/DisplayCutout;->mSafeInsets:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$100(Landroid/view/DisplayCutout;)Landroid/graphics/Region;
    .locals 0

    .line 52
    iget-object p0, p0, Landroid/view/DisplayCutout;->mBounds:Landroid/graphics/Region;

    return-object p0
.end method

.method private static atLeastZero(I)I
    .locals 0

    if-gez p0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return p0
.end method

.method private static boundingRectsToRegion(Ljava/util/List;)Landroid/graphics/Region;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;)",
            "Landroid/graphics/Region;"
        }
    .end annotation

    .line 460
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v0

    if-eqz p0, :cond_0

    .line 462
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 463
    sget-object v2, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static fromBoundingRect(IIII)Landroid/view/DisplayCutout;
    .locals 1

    .line 328
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 329
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    int-to-float p0, p0

    int-to-float p1, p1

    .line 330
    invoke-virtual {v0, p0, p1}, Landroid/graphics/Path;->moveTo(FF)V

    int-to-float p3, p3

    .line 331
    invoke-virtual {v0, p0, p3}, Landroid/graphics/Path;->lineTo(FF)V

    int-to-float p0, p2

    .line 332
    invoke-virtual {v0, p0, p3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 333
    invoke-virtual {v0, p0, p1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 334
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 335
    invoke-static {v0}, Landroid/view/DisplayCutout;->fromBounds(Landroid/graphics/Path;)Landroid/view/DisplayCutout;

    move-result-object p0

    return-object p0
.end method

.method public static fromBounds(Landroid/graphics/Path;)Landroid/view/DisplayCutout;
    .locals 6

    .line 344
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    const/4 v1, 0x0

    .line 345
    invoke-virtual {p0, v0, v1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 346
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v2

    .line 347
    iget v3, v0, Landroid/graphics/RectF;->left:F

    float-to-int v3, v3

    iget v4, v0, Landroid/graphics/RectF;->top:F

    float-to-int v4, v4

    iget v5, v0, Landroid/graphics/RectF;->right:F

    float-to-int v5, v5

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v0, v0

    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/graphics/Region;->set(IIII)Z

    .line 350
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    .line 351
    invoke-virtual {v0, p0, v2}, Landroid/graphics/Region;->setPath(Landroid/graphics/Path;Landroid/graphics/Region;)Z

    .line 352
    invoke-virtual {v2}, Landroid/graphics/Region;->recycle()V

    .line 353
    new-instance p0, Landroid/view/DisplayCutout;

    sget-object v2, Landroid/view/DisplayCutout;->ZERO_RECT:Landroid/graphics/Rect;

    invoke-direct {p0, v2, v0, v1}, Landroid/view/DisplayCutout;-><init>(Landroid/graphics/Rect;Landroid/graphics/Region;Z)V

    return-object p0
.end method

.method public static fromResources(Landroid/content/res/Resources;II)Landroid/view/DisplayCutout;
    .locals 2

    const v0, 0x104014d

    .line 362
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    sget v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE_STABLE:I

    int-to-float v0, v0

    const/high16 v1, 0x43200000    # 160.0f

    div-float/2addr v0, v1

    invoke-static {p0, p1, p2, v0}, Landroid/view/DisplayCutout;->fromSpec(Ljava/lang/String;IIF)Landroid/view/DisplayCutout;

    move-result-object p0

    return-object p0
.end method

.method public static fromSpec(Ljava/lang/String;IIF)Landroid/view/DisplayCutout;
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .line 384
    invoke-static {p0, p1, p2, p3}, Landroid/view/DisplayCutout;->pathAndDisplayCutoutFromSpec(Ljava/lang/String;IIF)Landroid/util/Pair;

    move-result-object p0

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Landroid/view/DisplayCutout;

    return-object p0
.end method

.method private static pathAndDisplayCutoutFromSpec(Ljava/lang/String;IIF)Landroid/util/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIF)",
            "Landroid/util/Pair<",
            "Landroid/graphics/Path;",
            "Landroid/view/DisplayCutout;",
            ">;"
        }
    .end annotation

    .line 389
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 390
    sget-object p0, Landroid/view/DisplayCutout;->NULL_PAIR:Landroid/util/Pair;

    return-object p0

    .line 392
    :cond_0
    sget-object v0, Landroid/view/DisplayCutout;->CACHE_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 393
    :try_start_0
    sget-object v1, Landroid/view/DisplayCutout;->sCachedSpec:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget v1, Landroid/view/DisplayCutout;->sCachedDisplayWidth:I

    if-ne v1, p1, :cond_1

    sget v1, Landroid/view/DisplayCutout;->sCachedDisplayHeight:I

    if-ne v1, p2, :cond_1

    sget v1, Landroid/view/DisplayCutout;->sCachedDensity:F

    cmpl-float v1, v1, p3

    if-nez v1, :cond_1

    .line 396
    sget-object p0, Landroid/view/DisplayCutout;->sCachedCutout:Landroid/util/Pair;

    monitor-exit v0

    return-object p0

    .line 398
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 399
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string v0, "@right"

    .line 401
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    int-to-float v0, p1

    .line 403
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "@right"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    int-to-float v0, p1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    :goto_0
    const-string v2, "@dp"

    .line 407
    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 409
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const-string v4, "@dp"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_3
    const/4 v3, 0x0

    const-string v4, "@bottom"

    .line 413
    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v3, "@bottom"

    const/4 v4, 0x2

    .line 414
    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    .line 415
    aget-object v1, p0, v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    .line 416
    aget-object p0, p0, v3

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    move-object p0, v1

    .line 421
    :cond_4
    :try_start_1
    invoke-static {p0}, Landroid/util/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 427
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    if-eqz v2, :cond_5

    .line 429
    invoke-virtual {v4, p3, p3}, Landroid/graphics/Matrix;->postScale(FF)Z

    :cond_5
    const/4 v2, 0x0

    .line 431
    invoke-virtual {v4, v0, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 432
    invoke-virtual {v1, v4}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    if-eqz v3, :cond_6

    .line 437
    :try_start_2
    invoke-static {v3}, Landroid/util/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    int-to-float v3, p2

    .line 443
    invoke-virtual {v4, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 444
    invoke-virtual {v0, v4}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 445
    invoke-virtual {v1, v0}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    goto :goto_1

    :catch_0
    move-exception p0

    const-string p1, "DisplayCutout"

    const-string p2, "Could not inflate bottom cutout: "

    .line 439
    invoke-static {p1, p2, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 440
    sget-object p0, Landroid/view/DisplayCutout;->NULL_PAIR:Landroid/util/Pair;

    return-object p0

    .line 448
    :cond_6
    :goto_1
    new-instance v0, Landroid/util/Pair;

    invoke-static {v1}, Landroid/view/DisplayCutout;->fromBounds(Landroid/graphics/Path;)Landroid/view/DisplayCutout;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 449
    sget-object v1, Landroid/view/DisplayCutout;->CACHE_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 450
    :try_start_3
    sput-object p0, Landroid/view/DisplayCutout;->sCachedSpec:Ljava/lang/String;

    .line 451
    sput p1, Landroid/view/DisplayCutout;->sCachedDisplayWidth:I

    .line 452
    sput p2, Landroid/view/DisplayCutout;->sCachedDisplayHeight:I

    .line 453
    sput p3, Landroid/view/DisplayCutout;->sCachedDensity:F

    .line 454
    sput-object v0, Landroid/view/DisplayCutout;->sCachedCutout:Landroid/util/Pair;

    .line 455
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0

    :catch_1
    move-exception p0

    const-string p1, "DisplayCutout"

    const-string p2, "Could not inflate cutout: "

    .line 423
    invoke-static {p1, p2, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 424
    sget-object p0, Landroid/view/DisplayCutout;->NULL_PAIR:Landroid/util/Pair;

    return-object p0

    :catchall_1
    move-exception p0

    .line 398
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0
.end method

.method public static pathFromResources(Landroid/content/res/Resources;II)Landroid/graphics/Path;
    .locals 2

    const v0, 0x104014d

    .line 372
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    sget v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE_STABLE:I

    int-to-float v0, v0

    const/high16 v1, 0x43200000    # 160.0f

    div-float/2addr v0, v1

    invoke-static {p0, p1, p2, v0}, Landroid/view/DisplayCutout;->pathAndDisplayCutoutFromSpec(Ljava/lang/String;IIF)Landroid/util/Pair;

    move-result-object p0

    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/Path;

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 246
    :cond_0
    instance-of v1, p1, Landroid/view/DisplayCutout;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 247
    check-cast p1, Landroid/view/DisplayCutout;

    .line 248
    iget-object v1, p0, Landroid/view/DisplayCutout;->mSafeInsets:Landroid/graphics/Rect;

    iget-object v3, p1, Landroid/view/DisplayCutout;->mSafeInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Landroid/view/DisplayCutout;->mBounds:Landroid/graphics/Region;

    iget-object p1, p1, Landroid/view/DisplayCutout;->mBounds:Landroid/graphics/Region;

    .line 249
    invoke-virtual {p0, p1}, Landroid/graphics/Region;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public getBoundingRects()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .line 209
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 210
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v7

    .line 212
    iget-object v1, p0, Landroid/view/DisplayCutout;->mBounds:Landroid/graphics/Region;

    invoke-virtual {v7, v1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 213
    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v5

    sget-object v6, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x7fffffff

    move-object v1, v7

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    .line 214
    invoke-virtual {v7}, Landroid/graphics/Region;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 215
    invoke-virtual {v7}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    :cond_0
    iget-object v1, p0, Landroid/view/DisplayCutout;->mBounds:Landroid/graphics/Region;

    invoke-virtual {v7, v1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 219
    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v4

    const v5, 0x7fffffff

    sget-object v6, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    move-object v1, v7

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    .line 220
    invoke-virtual {v7}, Landroid/graphics/Region;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 221
    invoke-virtual {v7}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    :cond_1
    iget-object v1, p0, Landroid/view/DisplayCutout;->mBounds:Landroid/graphics/Region;

    invoke-virtual {v7, v1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 225
    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result p0

    add-int/lit8 v3, p0, 0x1

    const v4, 0x7fffffff

    const v5, 0x7fffffff

    sget-object v6, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    move-object v1, v7

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    .line 227
    invoke-virtual {v7}, Landroid/graphics/Region;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_2

    .line 228
    invoke-virtual {v7}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    :cond_2
    invoke-virtual {v7}, Landroid/graphics/Region;->recycle()V

    return-object v0
.end method

.method public getBounds()Landroid/graphics/Region;
    .locals 0

    .line 196
    iget-object p0, p0, Landroid/view/DisplayCutout;->mBounds:Landroid/graphics/Region;

    invoke-static {p0}, Landroid/graphics/Region;->obtain(Landroid/graphics/Region;)Landroid/graphics/Region;

    move-result-object p0

    return-object p0
.end method

.method public getSafeInsetBottom()I
    .locals 0

    .line 152
    iget-object p0, p0, Landroid/view/DisplayCutout;->mSafeInsets:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    return p0
.end method

.method public getSafeInsetLeft()I
    .locals 0

    .line 157
    iget-object p0, p0, Landroid/view/DisplayCutout;->mSafeInsets:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->left:I

    return p0
.end method

.method public getSafeInsetRight()I
    .locals 0

    .line 162
    iget-object p0, p0, Landroid/view/DisplayCutout;->mSafeInsets:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->right:I

    return p0
.end method

.method public getSafeInsetTop()I
    .locals 0

    .line 147
    iget-object p0, p0, Landroid/view/DisplayCutout;->mSafeInsets:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->top:I

    return p0
.end method

.method public getSafeInsets()Landroid/graphics/Rect;
    .locals 1

    .line 172
    new-instance v0, Landroid/graphics/Rect;

    iget-object p0, p0, Landroid/view/DisplayCutout;->mSafeInsets:Landroid/graphics/Rect;

    invoke-direct {v0, p0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 236
    iget-object v0, p0, Landroid/view/DisplayCutout;->mSafeInsets:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 237
    iget-object p0, p0, Landroid/view/DisplayCutout;->mBounds:Landroid/graphics/Region;

    invoke-virtual {p0}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public inset(IIII)Landroid/view/DisplayCutout;
    .locals 2

    .line 278
    iget-object v0, p0, Landroid/view/DisplayCutout;->mBounds:Landroid/graphics/Region;

    invoke-virtual {v0}, Landroid/graphics/Region;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    if-nez p4, :cond_0

    goto :goto_0

    .line 283
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/view/DisplayCutout;->mSafeInsets:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 284
    iget-object p0, p0, Landroid/view/DisplayCutout;->mBounds:Landroid/graphics/Region;

    invoke-static {p0}, Landroid/graphics/Region;->obtain(Landroid/graphics/Region;)Landroid/graphics/Region;

    move-result-object p0

    if-gtz p2, :cond_1

    .line 288
    iget v1, v0, Landroid/graphics/Rect;->top:I

    if-lez v1, :cond_2

    .line 289
    :cond_1
    iget v1, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, p2

    invoke-static {v1}, Landroid/view/DisplayCutout;->atLeastZero(I)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    :cond_2
    if-gtz p4, :cond_3

    .line 291
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    if-lez v1, :cond_4

    .line 292
    :cond_3
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, p4

    invoke-static {v1}, Landroid/view/DisplayCutout;->atLeastZero(I)I

    move-result p4

    iput p4, v0, Landroid/graphics/Rect;->bottom:I

    :cond_4
    if-gtz p1, :cond_5

    .line 294
    iget p4, v0, Landroid/graphics/Rect;->left:I

    if-lez p4, :cond_6

    .line 295
    :cond_5
    iget p4, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr p4, p1

    invoke-static {p4}, Landroid/view/DisplayCutout;->atLeastZero(I)I

    move-result p4

    iput p4, v0, Landroid/graphics/Rect;->left:I

    :cond_6
    if-gtz p3, :cond_7

    .line 297
    iget p4, v0, Landroid/graphics/Rect;->right:I

    if-lez p4, :cond_8

    .line 298
    :cond_7
    iget p4, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr p4, p3

    invoke-static {p4}, Landroid/view/DisplayCutout;->atLeastZero(I)I

    move-result p3

    iput p3, v0, Landroid/graphics/Rect;->right:I

    :cond_8
    neg-int p1, p1

    neg-int p2, p2

    .line 301
    invoke-virtual {p0, p1, p2}, Landroid/graphics/Region;->translate(II)V

    .line 302
    new-instance p1, Landroid/view/DisplayCutout;

    const/4 p2, 0x0

    invoke-direct {p1, v0, p0, p2}, Landroid/view/DisplayCutout;-><init>(Landroid/graphics/Rect;Landroid/graphics/Region;Z)V

    return-object p1

    :cond_9
    :goto_0
    return-object p0
.end method

.method public isBoundsEmpty()Z
    .locals 0

    .line 142
    iget-object p0, p0, Landroid/view/DisplayCutout;->mBounds:Landroid/graphics/Region;

    invoke-virtual {p0}, Landroid/graphics/Region;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public isEmpty()Z
    .locals 1

    .line 133
    iget-object p0, p0, Landroid/view/DisplayCutout;->mSafeInsets:Landroid/graphics/Rect;

    sget-object v0, Landroid/view/DisplayCutout;->ZERO_RECT:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public replaceSafeInsets(Landroid/graphics/Rect;)Landroid/view/DisplayCutout;
    .locals 2

    .line 314
    new-instance v0, Landroid/view/DisplayCutout;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget-object p0, p0, Landroid/view/DisplayCutout;->mBounds:Landroid/graphics/Region;

    const/4 p1, 0x0

    invoke-direct {v0, v1, p0, p1}, Landroid/view/DisplayCutout;-><init>(Landroid/graphics/Rect;Landroid/graphics/Region;Z)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DisplayCutout{insets="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/view/DisplayCutout;->mSafeInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " boundingRect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/view/DisplayCutout;->mBounds:Landroid/graphics/Region;

    .line 257
    invoke-virtual {p0}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 3

    .line 265
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 266
    iget-object v0, p0, Landroid/view/DisplayCutout;->mSafeInsets:Landroid/graphics/Rect;

    const-wide v1, 0x10b00000001L

    invoke-virtual {v0, p1, v1, v2}, Landroid/graphics/Rect;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 267
    iget-object p0, p0, Landroid/view/DisplayCutout;->mBounds:Landroid/graphics/Region;

    invoke-virtual {p0}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    const-wide v0, 0x10b00000002L

    invoke-virtual {p0, p1, v0, v1}, Landroid/graphics/Rect;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 268
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method
