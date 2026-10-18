.class public Lcom/yftech/libmusic/widget/LyricView;
.super Landroid/view/View;
.source "LyricView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/libmusic/widget/LyricView$OnProgressTouchMoveListener;
    }
.end annotation


# static fields
.field private static blLrc:Z = false

.field private static lrc_map:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/Integer;",
            "Lcom/yftech/libmusic/bean/LyricObject;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final FLOAT_INVALID_VALUE:F

.field private INTERVAL:I

.field private MAINSIZEWORD:I

.field private PROGRESSSIZEWORD:I

.field private final PROGRESS_TEXT_SIZE_DEFAULT:I

.field private SIZEWORD:I

.field private animDuration:F

.field private animInterval:F

.field private animIntervalOffset:F

.field private baseOffsetY:F

.field private blScrollView:Z

.field private df:Ljava/text/DecimalFormat;

.field private frontOffsetY:F

.field private gravity:I

.field private handler:Landroid/os/Handler;

.field private height:I

.field private isClear:Z

.field private isShowScrollTo:Z

.field private lines:I

.field private lrcIndex:I

.field private mX:F

.field private moveRunnable:Ljava/lang/Runnable;

.field private offsetY:F

.field private onProgressTouchMoveListener:Lcom/yftech/libmusic/widget/LyricView$OnProgressTouchMoveListener;

.field private padding:I

.field paint:Landroid/graphics/Paint;

.field paintHL:Landroid/graphics/Paint;

.field paintMove:Landroid/graphics/Paint;

.field private progressLineWidth:I

.field private scrollAble:Z

.field private tempOffsetY:F

.field private textColorDegression:[I

.field private times:I

.field private touchX:F

.field private touchY:F

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 77
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const p1, 0x461c3c00    # 9999.0f

    .line 42
    iput p1, p0, Lcom/yftech/libmusic/widget/LyricView;->FLOAT_INVALID_VALUE:F

    const/16 v0, 0x14

    .line 43
    iput v0, p0, Lcom/yftech/libmusic/widget/LyricView;->PROGRESS_TEXT_SIZE_DEFAULT:I

    .line 48
    iput p1, p0, Lcom/yftech/libmusic/widget/LyricView;->tempOffsetY:F

    const/4 v1, 0x0

    .line 49
    iput v1, p0, Lcom/yftech/libmusic/widget/LyricView;->baseOffsetY:F

    const/4 v1, 0x0

    .line 51
    iput-boolean v1, p0, Lcom/yftech/libmusic/widget/LyricView;->isClear:Z

    .line 54
    iput-boolean v1, p0, Lcom/yftech/libmusic/widget/LyricView;->blScrollView:Z

    .line 55
    iput-boolean v1, p0, Lcom/yftech/libmusic/widget/LyricView;->isShowScrollTo:Z

    .line 56
    iput v1, p0, Lcom/yftech/libmusic/widget/LyricView;->lrcIndex:I

    .line 57
    iput v1, p0, Lcom/yftech/libmusic/widget/LyricView;->MAINSIZEWORD:I

    .line 58
    iput v1, p0, Lcom/yftech/libmusic/widget/LyricView;->SIZEWORD:I

    .line 59
    iput v1, p0, Lcom/yftech/libmusic/widget/LyricView;->PROGRESSSIZEWORD:I

    const/16 v2, 0x2d

    .line 60
    iput v2, p0, Lcom/yftech/libmusic/widget/LyricView;->INTERVAL:I

    const/4 v2, 0x5

    .line 61
    iput v2, p0, Lcom/yftech/libmusic/widget/LyricView;->lines:I

    const/16 v2, 0xf

    .line 62
    iput v2, p0, Lcom/yftech/libmusic/widget/LyricView;->padding:I

    .line 65
    iput v1, p0, Lcom/yftech/libmusic/widget/LyricView;->gravity:I

    const/4 v2, 0x3

    .line 66
    new-array v2, v2, [I

    sget v3, Lcom/yftech/libmusic/R$color;->colorFFFFFF:I

    aput v3, v2, v1

    sget v3, Lcom/yftech/libmusic/R$color;->color99FFFFFF:I

    const/4 v4, 0x1

    aput v3, v2, v4

    sget v3, Lcom/yftech/libmusic/R$color;->color4DFFFFFF:I

    const/4 v4, 0x2

    aput v3, v2, v4

    iput-object v2, p0, Lcom/yftech/libmusic/widget/LyricView;->textColorDegression:[I

    .line 67
    new-instance v2, Ljava/text/DecimalFormat;

    const-string v3, "0"

    invoke-direct {v2, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/yftech/libmusic/widget/LyricView;->df:Ljava/text/DecimalFormat;

    .line 68
    iput-boolean v1, p0, Lcom/yftech/libmusic/widget/LyricView;->scrollAble:Z

    .line 69
    iput v0, p0, Lcom/yftech/libmusic/widget/LyricView;->progressLineWidth:I

    .line 70
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/yftech/libmusic/widget/LyricView;->paint:Landroid/graphics/Paint;

    .line 71
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/yftech/libmusic/widget/LyricView;->paintHL:Landroid/graphics/Paint;

    .line 72
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/yftech/libmusic/widget/LyricView;->paintMove:Landroid/graphics/Paint;

    .line 251
    iput p1, p0, Lcom/yftech/libmusic/widget/LyricView;->frontOffsetY:F

    .line 366
    new-instance p1, Lcom/yftech/libmusic/widget/LyricView$1;

    invoke-direct {p1, p0}, Lcom/yftech/libmusic/widget/LyricView$1;-><init>(Lcom/yftech/libmusic/widget/LyricView;)V

    iput-object p1, p0, Lcom/yftech/libmusic/widget/LyricView;->moveRunnable:Ljava/lang/Runnable;

    const/high16 p1, 0x43480000    # 200.0f

    .line 732
    iput p1, p0, Lcom/yftech/libmusic/widget/LyricView;->animDuration:F

    const/high16 p1, 0x42480000    # 50.0f

    .line 733
    iput p1, p0, Lcom/yftech/libmusic/widget/LyricView;->animInterval:F

    .line 735
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/yftech/libmusic/widget/LyricView;->handler:Landroid/os/Handler;

    .line 736
    iput v1, p0, Lcom/yftech/libmusic/widget/LyricView;->times:I

    .line 78
    invoke-virtual {p0}, Lcom/yftech/libmusic/widget/LyricView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 82
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p1, 0x461c3c00    # 9999.0f

    .line 42
    iput p1, p0, Lcom/yftech/libmusic/widget/LyricView;->FLOAT_INVALID_VALUE:F

    const/16 p2, 0x14

    .line 43
    iput p2, p0, Lcom/yftech/libmusic/widget/LyricView;->PROGRESS_TEXT_SIZE_DEFAULT:I

    .line 48
    iput p1, p0, Lcom/yftech/libmusic/widget/LyricView;->tempOffsetY:F

    const/4 v0, 0x0

    .line 49
    iput v0, p0, Lcom/yftech/libmusic/widget/LyricView;->baseOffsetY:F

    const/4 v0, 0x0

    .line 51
    iput-boolean v0, p0, Lcom/yftech/libmusic/widget/LyricView;->isClear:Z

    .line 54
    iput-boolean v0, p0, Lcom/yftech/libmusic/widget/LyricView;->blScrollView:Z

    .line 55
    iput-boolean v0, p0, Lcom/yftech/libmusic/widget/LyricView;->isShowScrollTo:Z

    .line 56
    iput v0, p0, Lcom/yftech/libmusic/widget/LyricView;->lrcIndex:I

    .line 57
    iput v0, p0, Lcom/yftech/libmusic/widget/LyricView;->MAINSIZEWORD:I

    .line 58
    iput v0, p0, Lcom/yftech/libmusic/widget/LyricView;->SIZEWORD:I

    .line 59
    iput v0, p0, Lcom/yftech/libmusic/widget/LyricView;->PROGRESSSIZEWORD:I

    const/16 v1, 0x2d

    .line 60
    iput v1, p0, Lcom/yftech/libmusic/widget/LyricView;->INTERVAL:I

    const/4 v1, 0x5

    .line 61
    iput v1, p0, Lcom/yftech/libmusic/widget/LyricView;->lines:I

    const/16 v1, 0xf

    .line 62
    iput v1, p0, Lcom/yftech/libmusic/widget/LyricView;->padding:I

    .line 65
    iput v0, p0, Lcom/yftech/libmusic/widget/LyricView;->gravity:I

    const/4 v1, 0x3

    .line 66
    new-array v1, v1, [I

    sget v2, Lcom/yftech/libmusic/R$color;->colorFFFFFF:I

    aput v2, v1, v0

    sget v2, Lcom/yftech/libmusic/R$color;->color99FFFFFF:I

    const/4 v3, 0x1

    aput v2, v1, v3

    sget v2, Lcom/yftech/libmusic/R$color;->color4DFFFFFF:I

    const/4 v3, 0x2

    aput v2, v1, v3

    iput-object v1, p0, Lcom/yftech/libmusic/widget/LyricView;->textColorDegression:[I

    .line 67
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "0"

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/yftech/libmusic/widget/LyricView;->df:Ljava/text/DecimalFormat;

    .line 68
    iput-boolean v0, p0, Lcom/yftech/libmusic/widget/LyricView;->scrollAble:Z

    .line 69
    iput p2, p0, Lcom/yftech/libmusic/widget/LyricView;->progressLineWidth:I

    .line 70
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/yftech/libmusic/widget/LyricView;->paint:Landroid/graphics/Paint;

    .line 71
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/yftech/libmusic/widget/LyricView;->paintHL:Landroid/graphics/Paint;

    .line 72
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/yftech/libmusic/widget/LyricView;->paintMove:Landroid/graphics/Paint;

    .line 251
    iput p1, p0, Lcom/yftech/libmusic/widget/LyricView;->frontOffsetY:F

    .line 366
    new-instance p1, Lcom/yftech/libmusic/widget/LyricView$1;

    invoke-direct {p1, p0}, Lcom/yftech/libmusic/widget/LyricView$1;-><init>(Lcom/yftech/libmusic/widget/LyricView;)V

    iput-object p1, p0, Lcom/yftech/libmusic/widget/LyricView;->moveRunnable:Ljava/lang/Runnable;

    const/high16 p1, 0x43480000    # 200.0f

    .line 732
    iput p1, p0, Lcom/yftech/libmusic/widget/LyricView;->animDuration:F

    const/high16 p1, 0x42480000    # 50.0f

    .line 733
    iput p1, p0, Lcom/yftech/libmusic/widget/LyricView;->animInterval:F

    .line 735
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/yftech/libmusic/widget/LyricView;->handler:Landroid/os/Handler;

    .line 736
    iput v0, p0, Lcom/yftech/libmusic/widget/LyricView;->times:I

    .line 83
    invoke-virtual {p0}, Lcom/yftech/libmusic/widget/LyricView;->init()V

    return-void
.end method

.method static synthetic access$002(Lcom/yftech/libmusic/widget/LyricView;Z)Z
    .locals 0

    .line 39
    iput-boolean p1, p0, Lcom/yftech/libmusic/widget/LyricView;->blScrollView:Z

    return p1
.end method

.method private getProgressInMoving(FF)I
    .locals 7

    sub-float/2addr p2, p1

    .line 320
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v0, p0, Lcom/yftech/libmusic/widget/LyricView;->MAINSIZEWORD:I

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget v2, p0, Lcom/yftech/libmusic/widget/LyricView;->INTERVAL:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    iget v2, p0, Lcom/yftech/libmusic/widget/LyricView;->SIZEWORD:I

    int-to-float v2, v2

    div-float/2addr v2, v1

    add-float/2addr v0, v2

    cmpg-float p1, p1, v0

    const/4 v0, 0x0

    const/4 v2, 0x0

    if-gez p1, :cond_1

    cmpl-float p1, p2, v0

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    .line 325
    :goto_0
    iget v3, p0, Lcom/yftech/libmusic/widget/LyricView;->MAINSIZEWORD:I

    int-to-float v3, v3

    div-float/2addr v3, v1

    iget v4, p0, Lcom/yftech/libmusic/widget/LyricView;->INTERVAL:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget v4, p0, Lcom/yftech/libmusic/widget/LyricView;->SIZEWORD:I

    int-to-float v4, v4

    div-float/2addr v4, v1

    add-float/2addr v3, v4

    div-float v1, p2, v3

    move v3, v1

    move v1, p1

    move p1, v2

    goto :goto_1

    .line 328
    :cond_1
    iget p1, p0, Lcom/yftech/libmusic/widget/LyricView;->MAINSIZEWORD:I

    int-to-float p1, p1

    div-float/2addr p1, v1

    iget v3, p0, Lcom/yftech/libmusic/widget/LyricView;->INTERVAL:I

    int-to-float v3, v3

    add-float/2addr p1, v3

    iget v3, p0, Lcom/yftech/libmusic/widget/LyricView;->SIZEWORD:I

    int-to-float v3, v3

    div-float/2addr v3, v1

    add-float/2addr p1, v3

    sub-float p1, p2, p1

    iget v1, p0, Lcom/yftech/libmusic/widget/LyricView;->INTERVAL:I

    iget v3, p0, Lcom/yftech/libmusic/widget/LyricView;->SIZEWORD:I

    const/4 v4, 0x2

    mul-int/2addr v3, v4

    add-int/2addr v1, v3

    int-to-float v1, v1

    div-float/2addr p1, v1

    .line 329
    iget-object v1, p0, Lcom/yftech/libmusic/widget/LyricView;->df:Ljava/text/DecimalFormat;

    sget-object v3, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    invoke-virtual {v1, v3}, Ljava/text/DecimalFormat;->setRoundingMode(Ljava/math/RoundingMode;)V

    .line 330
    iget-object v1, p0, Lcom/yftech/libmusic/widget/LyricView;->df:Ljava/text/DecimalFormat;

    float-to-double v5, p1

    invoke-virtual {v1, v5, v6}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/media/common/util/ValueUtil;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 331
    iget-object v1, p0, Lcom/yftech/libmusic/widget/LyricView;->df:Ljava/text/DecimalFormat;

    sget-object v3, Ljava/math/RoundingMode;->UP:Ljava/math/RoundingMode;

    invoke-virtual {v1, v3}, Ljava/text/DecimalFormat;->setRoundingMode(Ljava/math/RoundingMode;)V

    .line 332
    iget-object v1, p0, Lcom/yftech/libmusic/widget/LyricView;->df:Ljava/text/DecimalFormat;

    invoke-virtual {v1, v5, v6}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/media/common/util/ValueUtil;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 335
    invoke-static {v5, v6, v4}, Lcom/media/common/util/ValueUtil;->getDPoint(DI)D

    move-result-wide v3

    double-to-float v3, v3

    :goto_1
    const-string v4, "TAG"

    .line 338
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "downCount:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "TAG"

    .line 339
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "upCount:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "TAG"

    .line 340
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "movePercent:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    sget-object v4, Lcom/yftech/libmusic/widget/LyricView;->lrc_map:Ljava/util/TreeMap;

    iget v5, p0, Lcom/yftech/libmusic/widget/LyricView;->lrcIndex:I

    add-int/2addr v5, v1

    sget-object v1, Lcom/yftech/libmusic/widget/LyricView;->lrc_map:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->size()I

    move-result v1

    rem-int/2addr v5, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/libmusic/bean/LyricObject;

    .line 343
    sget-object v4, Lcom/yftech/libmusic/widget/LyricView;->lrc_map:Ljava/util/TreeMap;

    iget p0, p0, Lcom/yftech/libmusic/widget/LyricView;->lrcIndex:I

    add-int/2addr p0, p1

    sget-object p1, Lcom/yftech/libmusic/widget/LyricView;->lrc_map:Ljava/util/TreeMap;

    invoke-virtual {p1}, Ljava/util/TreeMap;->size()I

    move-result p1

    rem-int/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yftech/libmusic/bean/LyricObject;

    if-eqz v1, :cond_3

    if-eqz p0, :cond_3

    .line 346
    iget p1, v1, Lcom/yftech/libmusic/bean/LyricObject;->begintime:I

    iget v1, p0, Lcom/yftech/libmusic/bean/LyricObject;->begintime:I

    sub-int/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, v3

    cmpg-float p2, p2, v0

    if-gez p2, :cond_2

    .line 352
    iget p0, p0, Lcom/yftech/libmusic/bean/LyricObject;->begintime:I

    int-to-float p0, p0

    sub-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    goto :goto_2

    .line 355
    :cond_2
    iget p0, p0, Lcom/yftech/libmusic/bean/LyricObject;->begintime:I

    int-to-float p0, p0

    add-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    :goto_2
    const-string p1, "TAG"

    .line 357
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "progress:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-long v0, p0

    invoke-static {v0, v1}, Lcom/media/common/util/DateUtil;->getMusicTime(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    :cond_3
    return v2
.end method

.method public static isBlLrc()Z
    .locals 1

    .line 598
    sget-boolean v0, Lcom/yftech/libmusic/widget/LyricView;->blLrc:Z

    return v0
.end method

.method public static read(Ljava/lang/String;)V
    .locals 13

    .line 490
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    const/4 v1, 0x0

    .line 493
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 495
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result p0

    if-nez p0, :cond_0

    .line 496
    sput-boolean v1, Lcom/yftech/libmusic/widget/LyricView;->blLrc:Z

    return-void

    :cond_0
    const/4 p0, 0x1

    .line 499
    sput-boolean p0, Lcom/yftech/libmusic/widget/LyricView;->blLrc:Z

    .line 502
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 505
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v4, v3, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const-string v4, "\\d{2}"

    .line 507
    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 508
    :cond_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5

    const-string v6, "["

    const-string v7, ""

    .line 510
    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "]"

    const-string v7, "@"

    .line 511
    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "@"

    .line 512
    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const-string v7, "@"

    .line 513
    invoke-virtual {v5, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    const/4 v7, 0x2

    const/4 v8, 0x3

    if-eqz v5, :cond_3

    move v5, v1

    .line 514
    :goto_0
    array-length v9, v6

    if-ge v5, v9, :cond_1

    .line 515
    aget-object v9, v6, v5

    const-string v10, ":"

    const-string v11, "."

    .line 517
    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "."

    const-string v11, "@"

    .line 518
    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "@"

    .line 519
    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 520
    aget-object v10, v9, v1

    invoke-virtual {v4, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    .line 521
    array-length v11, v9

    if-ne v11, v8, :cond_2

    invoke-virtual {v10}, Ljava/util/regex/Matcher;->matches()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 522
    aget-object v10, v9, v1

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 523
    aget-object v11, v9, p0

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 524
    aget-object v9, v9, v7

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    mul-int/lit8 v10, v10, 0x3c

    add-int/2addr v10, v11

    mul-int/lit16 v10, v10, 0x3e8

    mul-int/lit8 v9, v9, 0xa

    add-int/2addr v10, v9

    .line 526
    new-instance v9, Lcom/yftech/libmusic/bean/LyricObject;

    invoke-direct {v9}, Lcom/yftech/libmusic/bean/LyricObject;-><init>()V

    .line 527
    iput v10, v9, Lcom/yftech/libmusic/bean/LyricObject;->begintime:I

    const-string v11, ""

    .line 528
    iput-object v11, v9, Lcom/yftech/libmusic/bean/LyricObject;->lrc:Ljava/lang/String;

    .line 529
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v10, v9}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 534
    :cond_3
    array-length v5, v6

    sub-int/2addr v5, p0

    aget-object v5, v6, v5

    move v9, v1

    .line 536
    :goto_1
    array-length v10, v6

    sub-int/2addr v10, p0

    if-ge v9, v10, :cond_1

    .line 537
    aget-object v10, v6, v9

    const-string v11, ":"

    const-string v12, "."

    .line 539
    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "."

    const-string v12, "@"

    .line 540
    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "@"

    .line 541
    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 542
    aget-object v11, v10, v1

    invoke-virtual {v4, v11}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v11

    .line 543
    array-length v12, v10

    if-ne v12, v8, :cond_4

    invoke-virtual {v11}, Ljava/util/regex/Matcher;->matches()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 544
    aget-object v11, v10, v1

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 545
    aget-object v12, v10, p0

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 546
    aget-object v10, v10, v7

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    mul-int/lit8 v11, v11, 0x3c

    add-int/2addr v11, v12

    mul-int/lit16 v11, v11, 0x3e8

    mul-int/lit8 v10, v10, 0xa

    add-int/2addr v11, v10

    .line 548
    new-instance v10, Lcom/yftech/libmusic/bean/LyricObject;

    invoke-direct {v10}, Lcom/yftech/libmusic/bean/LyricObject;-><init>()V

    .line 549
    iput v11, v10, Lcom/yftech/libmusic/bean/LyricObject;->begintime:I

    .line 550
    iput-object v5, v10, Lcom/yftech/libmusic/bean/LyricObject;->lrc:Ljava/lang/String;

    .line 551
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v0, v11, v10}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 558
    :cond_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 560
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 566
    :goto_2
    sget-object p0, Lcom/yftech/libmusic/widget/LyricView;->lrc_map:Ljava/util/TreeMap;

    invoke-virtual {p0}, Ljava/util/TreeMap;->clear()V

    .line 568
    invoke-virtual {v0}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v2, 0x0

    .line 571
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 572
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 574
    invoke-virtual {v0, v3}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yftech/libmusic/bean/LyricObject;

    if-nez v2, :cond_6

    goto :goto_4

    .line 579
    :cond_6
    new-instance v4, Lcom/yftech/libmusic/bean/LyricObject;

    invoke-direct {v4}, Lcom/yftech/libmusic/bean/LyricObject;-><init>()V

    .line 581
    iget v4, v3, Lcom/yftech/libmusic/bean/LyricObject;->begintime:I

    iget v5, v2, Lcom/yftech/libmusic/bean/LyricObject;->begintime:I

    sub-int/2addr v4, v5

    iput v4, v2, Lcom/yftech/libmusic/bean/LyricObject;->timeline:I

    .line 582
    sget-object v4, Lcom/yftech/libmusic/widget/LyricView;->lrc_map:Ljava/util/TreeMap;

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v4, v5, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    .line 586
    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_7

    .line 587
    sget-object v2, Lcom/yftech/libmusic/widget/LyricView;->lrc_map:Ljava/util/TreeMap;

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v4, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    move-object v2, v3

    goto :goto_3

    :cond_8
    return-void
.end method


# virtual methods
.method public SelectIndex(I)I
    .locals 5

    .line 466
    sget-boolean v0, Lcom/yftech/libmusic/widget/LyricView;->blLrc:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move v0, v1

    move v2, v0

    .line 470
    :goto_0
    sget-object v3, Lcom/yftech/libmusic/widget/LyricView;->lrc_map:Ljava/util/TreeMap;

    invoke-virtual {v3}, Ljava/util/TreeMap;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 471
    sget-object v3, Lcom/yftech/libmusic/widget/LyricView;->lrc_map:Ljava/util/TreeMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yftech/libmusic/bean/LyricObject;

    .line 472
    iget v3, v3, Lcom/yftech/libmusic/bean/LyricObject;->begintime:I

    if-ge v3, p1, :cond_1

    add-int/lit8 v2, v2, 0x1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v2, -0x1

    .line 476
    iput v2, p0, Lcom/yftech/libmusic/widget/LyricView;->lrcIndex:I

    .line 477
    iget p1, p0, Lcom/yftech/libmusic/widget/LyricView;->lrcIndex:I

    if-gez p1, :cond_3

    .line 478
    iput v1, p0, Lcom/yftech/libmusic/widget/LyricView;->lrcIndex:I

    .line 480
    :cond_3
    iget p0, p0, Lcom/yftech/libmusic/widget/LyricView;->lrcIndex:I

    return p0
.end method

.method public SetTextSize()V
    .locals 4

    .line 409
    sget-boolean v0, Lcom/yftech/libmusic/widget/LyricView;->blLrc:Z

    if-nez v0, :cond_0

    return-void

    .line 412
    :cond_0
    sget-object v0, Lcom/yftech/libmusic/widget/LyricView;->lrc_map:Ljava/util/TreeMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/libmusic/bean/LyricObject;

    iget-object v0, v0, Lcom/yftech/libmusic/bean/LyricObject;->lrc:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    .line 413
    :goto_0
    sget-object v2, Lcom/yftech/libmusic/widget/LyricView;->lrc_map:Ljava/util/TreeMap;

    invoke-virtual {v2}, Ljava/util/TreeMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 414
    sget-object v2, Lcom/yftech/libmusic/widget/LyricView;->lrc_map:Ljava/util/TreeMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yftech/libmusic/bean/LyricObject;

    .line 415
    iget-object v3, v2, Lcom/yftech/libmusic/bean/LyricObject;->lrc:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 416
    iget-object v0, v2, Lcom/yftech/libmusic/bean/LyricObject;->lrc:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/16 v1, 0x140

    .line 419
    div-int/2addr v1, v0

    iput v1, p0, Lcom/yftech/libmusic/widget/LyricView;->SIZEWORD:I

    .line 420
    iput v1, p0, Lcom/yftech/libmusic/widget/LyricView;->MAINSIZEWORD:I

    const/16 v0, 0x14

    .line 421
    iput v0, p0, Lcom/yftech/libmusic/widget/LyricView;->PROGRESSSIZEWORD:I

    return-void
.end method

.method public SpeedLrc()Ljava/lang/Float;
    .locals 4

    .line 446
    iget v0, p0, Lcom/yftech/libmusic/widget/LyricView;->offsetY:F

    iget v1, p0, Lcom/yftech/libmusic/widget/LyricView;->SIZEWORD:I

    iget v2, p0, Lcom/yftech/libmusic/widget/LyricView;->INTERVAL:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/yftech/libmusic/widget/LyricView;->lrcIndex:I

    mul-int/2addr v1, v2

    int-to-float v1, v1

    add-float/2addr v0, v1

    const/high16 v1, 0x435c0000    # 220.0f

    cmpl-float v0, v0, v1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    .line 447
    iget v0, p0, Lcom/yftech/libmusic/widget/LyricView;->offsetY:F

    iget v2, p0, Lcom/yftech/libmusic/widget/LyricView;->SIZEWORD:I

    iget v3, p0, Lcom/yftech/libmusic/widget/LyricView;->INTERVAL:I

    add-int/2addr v2, v3

    iget p0, p0, Lcom/yftech/libmusic/widget/LyricView;->lrcIndex:I

    mul-int/2addr v2, p0

    int-to-float p0, v2

    add-float/2addr v0, p0

    sub-float/2addr v0, v1

    const/high16 p0, 0x41a00000    # 20.0f

    div-float v2, v0, p0

    goto :goto_0

    .line 449
    :cond_0
    iget v0, p0, Lcom/yftech/libmusic/widget/LyricView;->offsetY:F

    iget v1, p0, Lcom/yftech/libmusic/widget/LyricView;->SIZEWORD:I

    iget v3, p0, Lcom/yftech/libmusic/widget/LyricView;->INTERVAL:I

    add-int/2addr v1, v3

    iget p0, p0, Lcom/yftech/libmusic/widget/LyricView;->lrcIndex:I

    mul-int/2addr v1, p0

    int-to-float p0, v1

    add-float/2addr v0, p0

    const/high16 p0, 0x42f00000    # 120.0f

    cmpg-float p0, v0, p0

    if-gez p0, :cond_1

    const-string p0, "speed"

    const-string v0, "speed is too fast!!!"

    .line 450
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    :cond_1
    :goto_0
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public clearCanvas()V
    .locals 1

    const/4 v0, 0x1

    .line 675
    iput-boolean v0, p0, Lcom/yftech/libmusic/widget/LyricView;->isClear:Z

    .line 676
    iget v0, p0, Lcom/yftech/libmusic/widget/LyricView;->baseOffsetY:F

    iput v0, p0, Lcom/yftech/libmusic/widget/LyricView;->offsetY:F

    .line 677
    invoke-virtual {p0}, Lcom/yftech/libmusic/widget/LyricView;->invalidate()V

    .line 678
    iget-object v0, p0, Lcom/yftech/libmusic/widget/LyricView;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getBaseOffsetY()F
    .locals 0

    .line 612
    iget p0, p0, Lcom/yftech/libmusic/widget/LyricView;->baseOffsetY:F

    return p0
.end method

.method public getINTERVAL()I
    .locals 0

    .line 685
    iget p0, p0, Lcom/yftech/libmusic/widget/LyricView;->INTERVAL:I

    return p0
.end method

.method public getMAINSIZEWORD()I
    .locals 0

    .line 636
    iget p0, p0, Lcom/yftech/libmusic/widget/LyricView;->MAINSIZEWORD:I

    return p0
.end method

.method public getOffsetY()F
    .locals 0

    .line 605
    iget p0, p0, Lcom/yftech/libmusic/widget/LyricView;->offsetY:F

    return p0
.end method

.method public getSIZEWORD()I
    .locals 0

    .line 627
    iget p0, p0, Lcom/yftech/libmusic/widget/LyricView;->SIZEWORD:I

    return p0
.end method

.method public init()V
    .locals 4

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 377
    invoke-virtual {p0, v0, v1}, Lcom/yftech/libmusic/widget/LyricView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 379
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    sput-object v0, Lcom/yftech/libmusic/widget/LyricView;->lrc_map:Ljava/util/TreeMap;

    const/high16 v0, 0x43a00000    # 320.0f

    .line 380
    iput v0, p0, Lcom/yftech/libmusic/widget/LyricView;->offsetY:F

    .line 382
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/yftech/libmusic/widget/LyricView;->paint:Landroid/graphics/Paint;

    .line 383
    iget-object v0, p0, Lcom/yftech/libmusic/widget/LyricView;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 384
    iget-object v0, p0, Lcom/yftech/libmusic/widget/LyricView;->paint:Landroid/graphics/Paint;

    const v1, -0xff0100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 385
    iget-object v0, p0, Lcom/yftech/libmusic/widget/LyricView;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 386
    iget-object v0, p0, Lcom/yftech/libmusic/widget/LyricView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 387
    iget-object v0, p0, Lcom/yftech/libmusic/widget/LyricView;->paint:Landroid/graphics/Paint;

    const/16 v2, 0xb4

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 390
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/yftech/libmusic/widget/LyricView;->paintHL:Landroid/graphics/Paint;

    .line 391
    iget-object v0, p0, Lcom/yftech/libmusic/widget/LyricView;->paintHL:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 393
    iget-object v0, p0, Lcom/yftech/libmusic/widget/LyricView;->paintHL:Landroid/graphics/Paint;

    const/high16 v2, -0x10000

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 394
    iget-object v0, p0, Lcom/yftech/libmusic/widget/LyricView;->paintHL:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 395
    iget-object v0, p0, Lcom/yftech/libmusic/widget/LyricView;->paintHL:Landroid/graphics/Paint;

    const/16 v3, 0xff

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 397
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/yftech/libmusic/widget/LyricView;->paintMove:Landroid/graphics/Paint;

    .line 398
    iget-object v0, p0, Lcom/yftech/libmusic/widget/LyricView;->paintMove:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 399
    iget-object v0, p0, Lcom/yftech/libmusic/widget/LyricView;->paintMove:Landroid/graphics/Paint;

    const/high16 v2, 0x40400000    # 3.0f

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 400
    iget-object v0, p0, Lcom/yftech/libmusic/widget/LyricView;->paintMove:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 401
    iget-object p0, p0, Lcom/yftech/libmusic/widget/LyricView;->paintMove:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    return-void
.end method

.method public isBlScrollView()Z
    .locals 0

    .line 668
    iget-boolean p0, p0, Lcom/yftech/libmusic/widget/LyricView;->blScrollView:Z

    return p0
.end method

.method public moveWithAnim(F)V
    .locals 1

    .line 740
    iget v0, p0, Lcom/yftech/libmusic/widget/LyricView;->animInterval:F

    mul-float/2addr p1, v0

    iget v0, p0, Lcom/yftech/libmusic/widget/LyricView;->animDuration:F

    div-float/2addr p1, v0

    iput p1, p0, Lcom/yftech/libmusic/widget/LyricView;->animIntervalOffset:F

    const/4 p1, 0x0

    .line 741
    iput p1, p0, Lcom/yftech/libmusic/widget/LyricView;->times:I

    .line 743
    iget-object p1, p0, Lcom/yftech/libmusic/widget/LyricView;->handler:Landroid/os/Handler;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 91
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 93
    iget-boolean v0, p0, Lcom/yftech/libmusic/widget/LyricView;->isClear:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 94
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 95
    iput-boolean v1, p0, Lcom/yftech/libmusic/widget/LyricView;->isClear:Z

    .line 99
    :cond_0
    sget-boolean v0, Lcom/yftech/libmusic/widget/LyricView;->blLrc:Z

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eqz v0, :cond_1c

    .line 101
    iget-object v0, p0, Lcom/yftech/libmusic/widget/LyricView;->paintHL:Landroid/graphics/Paint;

    iget v5, p0, Lcom/yftech/libmusic/widget/LyricView;->MAINSIZEWORD:I

    int-to-float v5, v5

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 102
    sget-object v0, Lcom/yftech/libmusic/widget/LyricView;->lrc_map:Ljava/util/TreeMap;

    iget v5, p0, Lcom/yftech/libmusic/widget/LyricView;->lrcIndex:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/libmusic/bean/LyricObject;

    if-nez v0, :cond_1

    return-void

    .line 108
    :cond_1
    iget-object v5, p0, Lcom/yftech/libmusic/widget/LyricView;->textColorDegression:[I

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/yftech/libmusic/widget/LyricView;->textColorDegression:[I

    array-length v5, v5

    if-gtz v5, :cond_2

    goto :goto_0

    .line 111
    :cond_2
    iget-object v5, p0, Lcom/yftech/libmusic/widget/LyricView;->paintHL:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/yftech/libmusic/widget/LyricView;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/yftech/libmusic/widget/LyricView;->textColorDegression:[I

    aget v7, v7, v1

    invoke-static {v6, v7}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    .line 109
    :cond_3
    :goto_0
    iget-object v5, p0, Lcom/yftech/libmusic/widget/LyricView;->paintHL:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/yftech/libmusic/widget/LyricView;->getContext()Landroid/content/Context;

    move-result-object v6

    sget v7, Lcom/yftech/libmusic/R$color;->colorFFFFFF:I

    invoke-static {v6, v7}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 115
    :goto_1
    iget v5, p0, Lcom/yftech/libmusic/widget/LyricView;->gravity:I

    if-nez v5, :cond_4

    .line 116
    iget-object v0, v0, Lcom/yftech/libmusic/bean/LyricObject;->lrc:Ljava/lang/String;

    iget v5, p0, Lcom/yftech/libmusic/widget/LyricView;->mX:F

    iget v6, p0, Lcom/yftech/libmusic/widget/LyricView;->offsetY:F

    iget v7, p0, Lcom/yftech/libmusic/widget/LyricView;->SIZEWORD:I

    iget v8, p0, Lcom/yftech/libmusic/widget/LyricView;->INTERVAL:I

    add-int/2addr v7, v8

    iget v8, p0, Lcom/yftech/libmusic/widget/LyricView;->lrcIndex:I

    sub-int/2addr v8, v3

    mul-int/2addr v7, v8

    int-to-float v7, v7

    add-float/2addr v6, v7

    iget v7, p0, Lcom/yftech/libmusic/widget/LyricView;->MAINSIZEWORD:I

    int-to-float v7, v7

    add-float/2addr v6, v7

    iget v7, p0, Lcom/yftech/libmusic/widget/LyricView;->INTERVAL:I

    int-to-float v7, v7

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/yftech/libmusic/widget/LyricView;->paintHL:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v5, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 118
    :cond_4
    iget-object v5, p0, Lcom/yftech/libmusic/widget/LyricView;->paintHL:Landroid/graphics/Paint;

    iget-object v6, v0, Lcom/yftech/libmusic/bean/LyricObject;->lrc:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    .line 119
    iget v6, p0, Lcom/yftech/libmusic/widget/LyricView;->gravity:I

    if-ne v6, v3, :cond_5

    div-float/2addr v5, v2

    .line 121
    iget-object v0, v0, Lcom/yftech/libmusic/bean/LyricObject;->lrc:Ljava/lang/String;

    iget v6, p0, Lcom/yftech/libmusic/widget/LyricView;->offsetY:F

    iget v7, p0, Lcom/yftech/libmusic/widget/LyricView;->SIZEWORD:I

    iget v8, p0, Lcom/yftech/libmusic/widget/LyricView;->INTERVAL:I

    add-int/2addr v7, v8

    iget v8, p0, Lcom/yftech/libmusic/widget/LyricView;->lrcIndex:I

    sub-int/2addr v8, v3

    mul-int/2addr v7, v8

    int-to-float v7, v7

    add-float/2addr v6, v7

    iget v7, p0, Lcom/yftech/libmusic/widget/LyricView;->MAINSIZEWORD:I

    int-to-float v7, v7

    add-float/2addr v6, v7

    iget v7, p0, Lcom/yftech/libmusic/widget/LyricView;->INTERVAL:I

    int-to-float v7, v7

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/yftech/libmusic/widget/LyricView;->paintHL:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v5, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 122
    :cond_5
    iget v6, p0, Lcom/yftech/libmusic/widget/LyricView;->gravity:I

    if-ne v6, v4, :cond_6

    .line 123
    iget v6, p0, Lcom/yftech/libmusic/widget/LyricView;->width:I

    int-to-float v6, v6

    div-float/2addr v5, v2

    sub-float/2addr v6, v5

    .line 124
    iget-object v0, v0, Lcom/yftech/libmusic/bean/LyricObject;->lrc:Ljava/lang/String;

    iget v5, p0, Lcom/yftech/libmusic/widget/LyricView;->offsetY:F

    iget v7, p0, Lcom/yftech/libmusic/widget/LyricView;->SIZEWORD:I

    iget v8, p0, Lcom/yftech/libmusic/widget/LyricView;->INTERVAL:I

    add-int/2addr v7, v8

    iget v8, p0, Lcom/yftech/libmusic/widget/LyricView;->lrcIndex:I

    sub-int/2addr v8, v3

    mul-int/2addr v7, v8

    int-to-float v7, v7

    add-float/2addr v5, v7

    iget v7, p0, Lcom/yftech/libmusic/widget/LyricView;->MAINSIZEWORD:I

    int-to-float v7, v7

    add-float/2addr v5, v7

    iget v7, p0, Lcom/yftech/libmusic/widget/LyricView;->INTERVAL:I

    int-to-float v7, v7

    add-float/2addr v5, v7

    iget-object v7, p0, Lcom/yftech/libmusic/widget/LyricView;->paintHL:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v6, v5, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 128
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/yftech/libmusic/widget/LyricView;->paint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/yftech/libmusic/widget/LyricView;->SIZEWORD:I

    int-to-float v5, v5

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 130
    iget v0, p0, Lcom/yftech/libmusic/widget/LyricView;->lrcIndex:I

    sub-int/2addr v0, v3

    move v5, v3

    :goto_3
    if-ltz v0, :cond_f

    .line 131
    sget-object v6, Lcom/yftech/libmusic/widget/LyricView;->lrc_map:Ljava/util/TreeMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/yftech/libmusic/bean/LyricObject;

    if-nez v6, :cond_7

    goto/16 :goto_7

    .line 136
    :cond_7
    iget v7, p0, Lcom/yftech/libmusic/widget/LyricView;->offsetY:F

    iget v8, p0, Lcom/yftech/libmusic/widget/LyricView;->SIZEWORD:I

    iget v9, p0, Lcom/yftech/libmusic/widget/LyricView;->INTERVAL:I

    add-int/2addr v8, v9

    mul-int/2addr v8, v0

    int-to-float v8, v8

    add-float/2addr v7, v8

    const/4 v8, 0x0

    cmpg-float v7, v7, v8

    if-gez v7, :cond_8

    goto/16 :goto_8

    .line 141
    :cond_8
    iget-object v7, p0, Lcom/yftech/libmusic/widget/LyricView;->textColorDegression:[I

    if-eqz v7, :cond_b

    iget-object v7, p0, Lcom/yftech/libmusic/widget/LyricView;->textColorDegression:[I

    array-length v7, v7

    if-gtz v7, :cond_9

    goto :goto_5

    .line 144
    :cond_9
    iget-object v7, p0, Lcom/yftech/libmusic/widget/LyricView;->textColorDegression:[I

    array-length v7, v7

    if-ge v5, v7, :cond_a

    move v7, v5

    goto :goto_4

    :cond_a
    iget-object v7, p0, Lcom/yftech/libmusic/widget/LyricView;->textColorDegression:[I

    array-length v7, v7

    sub-int/2addr v7, v3

    .line 145
    :goto_4
    iget-object v8, p0, Lcom/yftech/libmusic/widget/LyricView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/yftech/libmusic/widget/LyricView;->getContext()Landroid/content/Context;

    move-result-object v9

    iget-object v10, p0, Lcom/yftech/libmusic/widget/LyricView;->textColorDegression:[I

    aget v7, v10, v7

    invoke-static {v9, v7}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v7

    invoke-virtual {v8, v7}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_6

    .line 142
    :cond_b
    :goto_5
    iget-object v7, p0, Lcom/yftech/libmusic/widget/LyricView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/yftech/libmusic/widget/LyricView;->getContext()Landroid/content/Context;

    move-result-object v8

    sget v9, Lcom/yftech/libmusic/R$color;->colorFFFFFF:I

    invoke-static {v8, v9}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 149
    :goto_6
    iget v7, p0, Lcom/yftech/libmusic/widget/LyricView;->gravity:I

    if-nez v7, :cond_c

    .line 150
    iget-object v6, v6, Lcom/yftech/libmusic/bean/LyricObject;->lrc:Ljava/lang/String;

    iget v7, p0, Lcom/yftech/libmusic/widget/LyricView;->mX:F

    iget v8, p0, Lcom/yftech/libmusic/widget/LyricView;->offsetY:F

    iget v9, p0, Lcom/yftech/libmusic/widget/LyricView;->SIZEWORD:I

    iget v10, p0, Lcom/yftech/libmusic/widget/LyricView;->INTERVAL:I

    add-int/2addr v9, v10

    mul-int/2addr v9, v0

    int-to-float v9, v9

    add-float/2addr v8, v9

    iget-object v9, p0, Lcom/yftech/libmusic/widget/LyricView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_7

    .line 152
    :cond_c
    iget-object v7, p0, Lcom/yftech/libmusic/widget/LyricView;->paint:Landroid/graphics/Paint;

    iget-object v8, v6, Lcom/yftech/libmusic/bean/LyricObject;->lrc:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v7

    .line 153
    iget v8, p0, Lcom/yftech/libmusic/widget/LyricView;->gravity:I

    if-ne v8, v3, :cond_d

    div-float/2addr v7, v2

    .line 155
    iget-object v6, v6, Lcom/yftech/libmusic/bean/LyricObject;->lrc:Ljava/lang/String;

    iget v8, p0, Lcom/yftech/libmusic/widget/LyricView;->offsetY:F

    iget v9, p0, Lcom/yftech/libmusic/widget/LyricView;->SIZEWORD:I

    iget v10, p0, Lcom/yftech/libmusic/widget/LyricView;->INTERVAL:I

    add-int/2addr v9, v10

    mul-int/2addr v9, v0

    int-to-float v9, v9

    add-float/2addr v8, v9

    iget-object v9, p0, Lcom/yftech/libmusic/widget/LyricView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_7

    .line 156
    :cond_d
    iget v8, p0, Lcom/yftech/libmusic/widget/LyricView;->gravity:I

    if-ne v8, v4, :cond_e

    .line 157
    iget v8, p0, Lcom/yftech/libmusic/widget/LyricView;->width:I

    int-to-float v8, v8

    div-float/2addr v7, v2

    sub-float/2addr v8, v7

    .line 158
    iget-object v6, v6, Lcom/yftech/libmusic/bean/LyricObject;->lrc:Ljava/lang/String;

    iget v7, p0, Lcom/yftech/libmusic/widget/LyricView;->offsetY:F

    iget v9, p0, Lcom/yftech/libmusic/widget/LyricView;->SIZEWORD:I

    iget v10, p0, Lcom/yftech/libmusic/widget/LyricView;->INTERVAL:I

    add-int/2addr v9, v10

    mul-int/2addr v9, v0

    int-to-float v9, v9

    add-float/2addr v7, v9

    iget-object v9, p0, Lcom/yftech/libmusic/widget/LyricView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v8, v7, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_e
    :goto_7
    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_3

    .line 163
    :cond_f
    :goto_8
    iget v0, p0, Lcom/yftech/libmusic/widget/LyricView;->lrcIndex:I

    add-int/2addr v0, v3

    move v5, v3

    :goto_9
    sget-object v6, Lcom/yftech/libmusic/widget/LyricView;->lrc_map:Ljava/util/TreeMap;

    invoke-virtual {v6}, Ljava/util/TreeMap;->size()I

    move-result v6

    if-ge v0, v6, :cond_18

    .line 164
    sget-object v6, Lcom/yftech/libmusic/widget/LyricView;->lrc_map:Ljava/util/TreeMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/yftech/libmusic/bean/LyricObject;

    if-nez v6, :cond_10

    goto/16 :goto_d

    .line 169
    :cond_10
    iget v7, p0, Lcom/yftech/libmusic/widget/LyricView;->offsetY:F

    iget v8, p0, Lcom/yftech/libmusic/widget/LyricView;->SIZEWORD:I

    iget v9, p0, Lcom/yftech/libmusic/widget/LyricView;->INTERVAL:I

    add-int/2addr v8, v9

    mul-int/2addr v8, v0

    int-to-float v8, v8

    add-float/2addr v7, v8

    iget v8, p0, Lcom/yftech/libmusic/widget/LyricView;->height:I

    int-to-float v8, v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_11

    goto/16 :goto_e

    .line 174
    :cond_11
    iget-object v7, p0, Lcom/yftech/libmusic/widget/LyricView;->textColorDegression:[I

    if-eqz v7, :cond_14

    iget-object v7, p0, Lcom/yftech/libmusic/widget/LyricView;->textColorDegression:[I

    array-length v7, v7

    if-gtz v7, :cond_12

    goto :goto_b

    .line 177
    :cond_12
    iget-object v7, p0, Lcom/yftech/libmusic/widget/LyricView;->textColorDegression:[I

    array-length v7, v7

    if-ge v5, v7, :cond_13

    move v7, v5

    goto :goto_a

    :cond_13
    iget-object v7, p0, Lcom/yftech/libmusic/widget/LyricView;->textColorDegression:[I

    array-length v7, v7

    sub-int/2addr v7, v3

    .line 178
    :goto_a
    iget-object v8, p0, Lcom/yftech/libmusic/widget/LyricView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/yftech/libmusic/widget/LyricView;->getContext()Landroid/content/Context;

    move-result-object v9

    iget-object v10, p0, Lcom/yftech/libmusic/widget/LyricView;->textColorDegression:[I

    aget v7, v10, v7

    invoke-static {v9, v7}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v7

    invoke-virtual {v8, v7}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_c

    .line 175
    :cond_14
    :goto_b
    iget-object v7, p0, Lcom/yftech/libmusic/widget/LyricView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/yftech/libmusic/widget/LyricView;->getContext()Landroid/content/Context;

    move-result-object v8

    sget v9, Lcom/yftech/libmusic/R$color;->colorFFFFFF:I

    invoke-static {v8, v9}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 182
    :goto_c
    iget v7, p0, Lcom/yftech/libmusic/widget/LyricView;->gravity:I

    if-nez v7, :cond_15

    .line 183
    iget-object v6, v6, Lcom/yftech/libmusic/bean/LyricObject;->lrc:Ljava/lang/String;

    iget v7, p0, Lcom/yftech/libmusic/widget/LyricView;->mX:F

    iget v8, p0, Lcom/yftech/libmusic/widget/LyricView;->offsetY:F

    iget v9, p0, Lcom/yftech/libmusic/widget/LyricView;->SIZEWORD:I

    iget v10, p0, Lcom/yftech/libmusic/widget/LyricView;->INTERVAL:I

    add-int/2addr v9, v10

    add-int/lit8 v10, v0, -0x1

    mul-int/2addr v9, v10

    int-to-float v9, v9

    add-float/2addr v8, v9

    iget v9, p0, Lcom/yftech/libmusic/widget/LyricView;->MAINSIZEWORD:I

    int-to-float v9, v9

    add-float/2addr v8, v9

    iget v9, p0, Lcom/yftech/libmusic/widget/LyricView;->INTERVAL:I

    int-to-float v9, v9

    add-float/2addr v8, v9

    iget-object v9, p0, Lcom/yftech/libmusic/widget/LyricView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_d

    .line 185
    :cond_15
    iget-object v7, p0, Lcom/yftech/libmusic/widget/LyricView;->paint:Landroid/graphics/Paint;

    iget-object v8, v6, Lcom/yftech/libmusic/bean/LyricObject;->lrc:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v7

    .line 186
    iget v8, p0, Lcom/yftech/libmusic/widget/LyricView;->gravity:I

    if-ne v8, v3, :cond_16

    div-float/2addr v7, v2

    .line 188
    iget-object v6, v6, Lcom/yftech/libmusic/bean/LyricObject;->lrc:Ljava/lang/String;

    iget v8, p0, Lcom/yftech/libmusic/widget/LyricView;->offsetY:F

    iget v9, p0, Lcom/yftech/libmusic/widget/LyricView;->SIZEWORD:I

    iget v10, p0, Lcom/yftech/libmusic/widget/LyricView;->INTERVAL:I

    add-int/2addr v9, v10

    add-int/lit8 v10, v0, -0x1

    mul-int/2addr v9, v10

    int-to-float v9, v9

    add-float/2addr v8, v9

    iget v9, p0, Lcom/yftech/libmusic/widget/LyricView;->MAINSIZEWORD:I

    int-to-float v9, v9

    add-float/2addr v8, v9

    iget v9, p0, Lcom/yftech/libmusic/widget/LyricView;->INTERVAL:I

    int-to-float v9, v9

    add-float/2addr v8, v9

    iget-object v9, p0, Lcom/yftech/libmusic/widget/LyricView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_d

    .line 189
    :cond_16
    iget v8, p0, Lcom/yftech/libmusic/widget/LyricView;->gravity:I

    if-ne v8, v4, :cond_17

    .line 190
    iget v8, p0, Lcom/yftech/libmusic/widget/LyricView;->width:I

    int-to-float v8, v8

    div-float/2addr v7, v2

    sub-float/2addr v8, v7

    .line 191
    iget-object v6, v6, Lcom/yftech/libmusic/bean/LyricObject;->lrc:Ljava/lang/String;

    iget v7, p0, Lcom/yftech/libmusic/widget/LyricView;->offsetY:F

    iget v9, p0, Lcom/yftech/libmusic/widget/LyricView;->SIZEWORD:I

    iget v10, p0, Lcom/yftech/libmusic/widget/LyricView;->INTERVAL:I

    add-int/2addr v9, v10

    add-int/lit8 v10, v0, -0x1

    mul-int/2addr v9, v10

    int-to-float v9, v9

    add-float/2addr v7, v9

    iget v9, p0, Lcom/yftech/libmusic/widget/LyricView;->MAINSIZEWORD:I

    int-to-float v9, v9

    add-float/2addr v7, v9

    iget v9, p0, Lcom/yftech/libmusic/widget/LyricView;->INTERVAL:I

    int-to-float v9, v9

    add-float/2addr v7, v9

    iget-object v9, p0, Lcom/yftech/libmusic/widget/LyricView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v8, v7, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_17
    :goto_d
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_9

    .line 197
    :cond_18
    :goto_e
    iget-object v0, p0, Lcom/yftech/libmusic/widget/LyricView;->paintMove:Landroid/graphics/Paint;

    iget v5, p0, Lcom/yftech/libmusic/widget/LyricView;->PROGRESSSIZEWORD:I

    int-to-float v5, v5

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 199
    iget-boolean v0, p0, Lcom/yftech/libmusic/widget/LyricView;->blScrollView:Z

    if-eqz v0, :cond_1b

    iget-boolean v0, p0, Lcom/yftech/libmusic/widget/LyricView;->isShowScrollTo:Z

    if-eqz v0, :cond_1b

    .line 200
    iget-object v0, p0, Lcom/yftech/libmusic/widget/LyricView;->paintMove:Landroid/graphics/Paint;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 202
    iget v0, p0, Lcom/yftech/libmusic/widget/LyricView;->offsetY:F

    iget v1, p0, Lcom/yftech/libmusic/widget/LyricView;->tempOffsetY:F

    invoke-direct {p0, v0, v1}, Lcom/yftech/libmusic/widget/LyricView;->getProgressInMoving(FF)I

    move-result v0

    int-to-long v0, v0

    .line 203
    invoke-static {v0, v1}, Lcom/media/common/util/DateUtil;->getMusicTime(J)Ljava/lang/String;

    move-result-object v0

    .line 204
    iget-object v1, p0, Lcom/yftech/libmusic/widget/LyricView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 205
    iget v5, p0, Lcom/yftech/libmusic/widget/LyricView;->gravity:I

    if-nez v5, :cond_19

    const/4 v7, 0x0

    .line 206
    iget v3, p0, Lcom/yftech/libmusic/widget/LyricView;->height:I

    div-int/2addr v3, v4

    iget v5, p0, Lcom/yftech/libmusic/widget/LyricView;->MAINSIZEWORD:I

    div-int/2addr v5, v4

    add-int/2addr v3, v5

    int-to-float v8, v3

    iget v3, p0, Lcom/yftech/libmusic/widget/LyricView;->progressLineWidth:I

    int-to-float v9, v3

    iget v3, p0, Lcom/yftech/libmusic/widget/LyricView;->height:I

    div-int/2addr v3, v4

    iget v5, p0, Lcom/yftech/libmusic/widget/LyricView;->MAINSIZEWORD:I

    div-int/2addr v5, v4

    add-int/2addr v3, v5

    int-to-float v10, v3

    iget-object v11, p0, Lcom/yftech/libmusic/widget/LyricView;->paintMove:Landroid/graphics/Paint;

    move-object v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 207
    iget v3, p0, Lcom/yftech/libmusic/widget/LyricView;->width:I

    int-to-float v6, v3

    iget v3, p0, Lcom/yftech/libmusic/widget/LyricView;->height:I

    div-int/2addr v3, v4

    iget v5, p0, Lcom/yftech/libmusic/widget/LyricView;->MAINSIZEWORD:I

    div-int/2addr v5, v4

    add-int/2addr v3, v5

    int-to-float v7, v3

    iget v3, p0, Lcom/yftech/libmusic/widget/LyricView;->width:I

    iget v5, p0, Lcom/yftech/libmusic/widget/LyricView;->progressLineWidth:I

    sub-int/2addr v3, v5

    int-to-float v8, v3

    iget v3, p0, Lcom/yftech/libmusic/widget/LyricView;->height:I

    div-int/2addr v3, v4

    iget v5, p0, Lcom/yftech/libmusic/widget/LyricView;->MAINSIZEWORD:I

    div-int/2addr v5, v4

    add-int/2addr v3, v5

    int-to-float v9, v3

    iget-object v10, p0, Lcom/yftech/libmusic/widget/LyricView;->paintMove:Landroid/graphics/Paint;

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 208
    iget v3, p0, Lcom/yftech/libmusic/widget/LyricView;->width:I

    int-to-float v3, v3

    div-float/2addr v1, v2

    sub-float/2addr v3, v1

    iget-object v1, p0, Lcom/yftech/libmusic/widget/LyricView;->paintMove:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    sub-float/2addr v3, v1

    iget v1, p0, Lcom/yftech/libmusic/widget/LyricView;->padding:I

    int-to-float v1, v1

    add-float/2addr v3, v1

    .line 209
    iget v1, p0, Lcom/yftech/libmusic/widget/LyricView;->height:I

    div-int/2addr v1, v4

    iget v2, p0, Lcom/yftech/libmusic/widget/LyricView;->MAINSIZEWORD:I

    iget v5, p0, Lcom/yftech/libmusic/widget/LyricView;->PROGRESSSIZEWORD:I

    add-int/2addr v2, v5

    div-int/2addr v2, v4

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget-object p0, p0, Lcom/yftech/libmusic/widget/LyricView;->paintMove:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v1, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_11

    .line 211
    :cond_19
    iget v5, p0, Lcom/yftech/libmusic/widget/LyricView;->gravity:I

    if-ne v5, v3, :cond_1a

    .line 212
    iget v3, p0, Lcom/yftech/libmusic/widget/LyricView;->width:I

    int-to-float v6, v3

    iget v3, p0, Lcom/yftech/libmusic/widget/LyricView;->height:I

    div-int/2addr v3, v4

    iget v5, p0, Lcom/yftech/libmusic/widget/LyricView;->MAINSIZEWORD:I

    div-int/2addr v5, v4

    add-int/2addr v3, v5

    int-to-float v7, v3

    iget v3, p0, Lcom/yftech/libmusic/widget/LyricView;->width:I

    iget v5, p0, Lcom/yftech/libmusic/widget/LyricView;->progressLineWidth:I

    sub-int/2addr v3, v5

    int-to-float v8, v3

    iget v3, p0, Lcom/yftech/libmusic/widget/LyricView;->height:I

    div-int/2addr v3, v4

    iget v5, p0, Lcom/yftech/libmusic/widget/LyricView;->MAINSIZEWORD:I

    div-int/2addr v5, v4

    add-int/2addr v3, v5

    int-to-float v9, v3

    iget-object v10, p0, Lcom/yftech/libmusic/widget/LyricView;->paintMove:Landroid/graphics/Paint;

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 213
    iget v3, p0, Lcom/yftech/libmusic/widget/LyricView;->width:I

    int-to-float v3, v3

    div-float/2addr v1, v2

    sub-float/2addr v3, v1

    iget-object v1, p0, Lcom/yftech/libmusic/widget/LyricView;->paintMove:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    sub-float/2addr v3, v1

    iget v1, p0, Lcom/yftech/libmusic/widget/LyricView;->padding:I

    int-to-float v1, v1

    sub-float/2addr v3, v1

    .line 214
    iget v1, p0, Lcom/yftech/libmusic/widget/LyricView;->height:I

    div-int/2addr v1, v4

    iget v2, p0, Lcom/yftech/libmusic/widget/LyricView;->MAINSIZEWORD:I

    iget v5, p0, Lcom/yftech/libmusic/widget/LyricView;->PROGRESSSIZEWORD:I

    add-int/2addr v2, v5

    div-int/2addr v2, v4

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget-object p0, p0, Lcom/yftech/libmusic/widget/LyricView;->paintMove:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v1, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_11

    .line 215
    :cond_1a
    iget v3, p0, Lcom/yftech/libmusic/widget/LyricView;->gravity:I

    if-ne v3, v4, :cond_21

    const/4 v6, 0x0

    .line 216
    iget v3, p0, Lcom/yftech/libmusic/widget/LyricView;->height:I

    div-int/2addr v3, v4

    iget v5, p0, Lcom/yftech/libmusic/widget/LyricView;->MAINSIZEWORD:I

    div-int/2addr v5, v4

    add-int/2addr v3, v5

    int-to-float v7, v3

    iget v3, p0, Lcom/yftech/libmusic/widget/LyricView;->progressLineWidth:I

    int-to-float v8, v3

    iget v3, p0, Lcom/yftech/libmusic/widget/LyricView;->height:I

    div-int/2addr v3, v4

    iget v5, p0, Lcom/yftech/libmusic/widget/LyricView;->MAINSIZEWORD:I

    div-int/2addr v5, v4

    add-int/2addr v3, v5

    int-to-float v9, v3

    iget-object v10, p0, Lcom/yftech/libmusic/widget/LyricView;->paintMove:Landroid/graphics/Paint;

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    div-float/2addr v1, v2

    .line 217
    iget-object v2, p0, Lcom/yftech/libmusic/widget/LyricView;->paintMove:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v2

    add-float/2addr v1, v2

    iget v2, p0, Lcom/yftech/libmusic/widget/LyricView;->padding:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    .line 218
    iget v2, p0, Lcom/yftech/libmusic/widget/LyricView;->height:I

    div-int/2addr v2, v4

    iget v3, p0, Lcom/yftech/libmusic/widget/LyricView;->MAINSIZEWORD:I

    iget v5, p0, Lcom/yftech/libmusic/widget/LyricView;->PROGRESSSIZEWORD:I

    add-int/2addr v3, v5

    div-int/2addr v3, v4

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget-object p0, p0, Lcom/yftech/libmusic/widget/LyricView;->paintMove:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_11

    .line 221
    :cond_1b
    iget-object p0, p0, Lcom/yftech/libmusic/widget/LyricView;->paintMove:Landroid/graphics/Paint;

    invoke-virtual {p0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_11

    .line 226
    :cond_1c
    iget-object v0, p0, Lcom/yftech/libmusic/widget/LyricView;->paint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/yftech/libmusic/widget/LyricView;->SIZEWORD:I

    int-to-float v5, v5

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 228
    iget-object v0, p0, Lcom/yftech/libmusic/widget/LyricView;->textColorDegression:[I

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/yftech/libmusic/widget/LyricView;->textColorDegression:[I

    array-length v0, v0

    if-gtz v0, :cond_1d

    goto :goto_f

    .line 231
    :cond_1d
    iget-object v0, p0, Lcom/yftech/libmusic/widget/LyricView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/yftech/libmusic/widget/LyricView;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/yftech/libmusic/widget/LyricView;->textColorDegression:[I

    aget v1, v6, v1

    invoke-static {v5, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_10

    .line 229
    :cond_1e
    :goto_f
    iget-object v0, p0, Lcom/yftech/libmusic/widget/LyricView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/yftech/libmusic/widget/LyricView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v5, Lcom/yftech/libmusic/R$color;->colorFFFFFF:I

    invoke-static {v1, v5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 235
    :goto_10
    iget v0, p0, Lcom/yftech/libmusic/widget/LyricView;->gravity:I

    if-nez v0, :cond_1f

    .line 236
    invoke-virtual {p0}, Lcom/yftech/libmusic/widget/LyricView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/yftech/libmusic/R$string;->no_lyrics:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/yftech/libmusic/widget/LyricView;->mX:F

    iget v2, p0, Lcom/yftech/libmusic/widget/LyricView;->baseOffsetY:F

    iget-object p0, p0, Lcom/yftech/libmusic/widget/LyricView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_11

    .line 238
    :cond_1f
    iget-object v0, p0, Lcom/yftech/libmusic/widget/LyricView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/yftech/libmusic/widget/LyricView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v5, Lcom/yftech/libmusic/R$string;->no_lyrics:I

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    .line 239
    iget v1, p0, Lcom/yftech/libmusic/widget/LyricView;->gravity:I

    if-ne v1, v3, :cond_20

    div-float/2addr v0, v2

    .line 241
    invoke-virtual {p0}, Lcom/yftech/libmusic/widget/LyricView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/yftech/libmusic/R$string;->no_lyrics:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/yftech/libmusic/widget/LyricView;->baseOffsetY:F

    iget-object p0, p0, Lcom/yftech/libmusic/widget/LyricView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v2, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_11

    .line 242
    :cond_20
    iget v1, p0, Lcom/yftech/libmusic/widget/LyricView;->gravity:I

    if-ne v1, v4, :cond_21

    .line 243
    iget v1, p0, Lcom/yftech/libmusic/widget/LyricView;->width:I

    int-to-float v1, v1

    div-float/2addr v0, v2

    sub-float/2addr v1, v0

    .line 244
    invoke-virtual {p0}, Lcom/yftech/libmusic/widget/LyricView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/yftech/libmusic/R$string;->no_lyrics:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Lcom/yftech/libmusic/widget/LyricView;->baseOffsetY:F

    iget-object p0, p0, Lcom/yftech/libmusic/widget/LyricView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_21
    :goto_11
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 425
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 426
    iput p1, p0, Lcom/yftech/libmusic/widget/LyricView;->width:I

    .line 427
    iput p2, p0, Lcom/yftech/libmusic/widget/LyricView;->height:I

    int-to-float p1, p1

    const/high16 p3, 0x3f000000    # 0.5f

    mul-float/2addr p1, p3

    .line 429
    iput p1, p0, Lcom/yftech/libmusic/widget/LyricView;->mX:F

    int-to-float p1, p2

    mul-float/2addr p1, p3

    .line 430
    iget p2, p0, Lcom/yftech/libmusic/widget/LyricView;->SIZEWORD:I

    int-to-float p2, p2

    add-float/2addr p1, p2

    iput p1, p0, Lcom/yftech/libmusic/widget/LyricView;->baseOffsetY:F

    .line 433
    iget p1, p0, Lcom/yftech/libmusic/widget/LyricView;->lines:I

    const/4 p2, 0x1

    if-le p1, p2, :cond_0

    .line 434
    iget p1, p0, Lcom/yftech/libmusic/widget/LyricView;->height:I

    iget p3, p0, Lcom/yftech/libmusic/widget/LyricView;->padding:I

    mul-int/lit8 p3, p3, 0x2

    sub-int/2addr p1, p3

    iget p3, p0, Lcom/yftech/libmusic/widget/LyricView;->lines:I

    iget p4, p0, Lcom/yftech/libmusic/widget/LyricView;->SIZEWORD:I

    mul-int/2addr p3, p4

    sub-int/2addr p1, p3

    iget p3, p0, Lcom/yftech/libmusic/widget/LyricView;->lines:I

    sub-int/2addr p3, p2

    div-int/2addr p1, p3

    iput p1, p0, Lcom/yftech/libmusic/widget/LyricView;->INTERVAL:I

    goto :goto_0

    .line 436
    :cond_0
    iget p1, p0, Lcom/yftech/libmusic/widget/LyricView;->height:I

    iget p2, p0, Lcom/yftech/libmusic/widget/LyricView;->SIZEWORD:I

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/yftech/libmusic/widget/LyricView;->INTERVAL:I

    :goto_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 255
    sget-boolean v0, Lcom/yftech/libmusic/widget/LyricView;->blLrc:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/yftech/libmusic/widget/LyricView;->scrollAble:Z

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const/high16 v0, 0x41a00000    # 20.0f

    .line 261
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    const-wide/16 v3, 0xc8

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    .line 272
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v5, p0, Lcom/yftech/libmusic/widget/LyricView;->touchY:F

    sub-float/2addr v1, v5

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v1, v0

    if-gez v0, :cond_1

    .line 273
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v5, Lcom/media/common/util/AppConstants;->recordLastControlTime:J

    sub-long/2addr v0, v5

    cmp-long v0, v0, v3

    if-lez v0, :cond_7

    .line 274
    :cond_1
    iput-boolean v2, p0, Lcom/yftech/libmusic/widget/LyricView;->blScrollView:Z

    .line 277
    iget v0, p0, Lcom/yftech/libmusic/widget/LyricView;->frontOffsetY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v1, p0, Lcom/yftech/libmusic/widget/LyricView;->touchY:F

    sub-float/2addr p1, v1

    add-float/2addr v0, p1

    iput v0, p0, Lcom/yftech/libmusic/widget/LyricView;->offsetY:F

    .line 278
    iget p1, p0, Lcom/yftech/libmusic/widget/LyricView;->offsetY:F

    iget v0, p0, Lcom/yftech/libmusic/widget/LyricView;->baseOffsetY:F

    cmpl-float p1, p1, v0

    if-lez p1, :cond_2

    .line 279
    iget p1, p0, Lcom/yftech/libmusic/widget/LyricView;->baseOffsetY:F

    iput p1, p0, Lcom/yftech/libmusic/widget/LyricView;->offsetY:F

    .line 280
    :cond_2
    invoke-virtual {p0}, Lcom/yftech/libmusic/widget/LyricView;->invalidate()V

    goto :goto_0

    .line 286
    :pswitch_1
    iget-boolean p1, p0, Lcom/yftech/libmusic/widget/LyricView;->blScrollView:Z

    if-nez p1, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v5, Lcom/media/common/util/AppConstants;->recordLastControlTime:J

    sub-long/2addr v0, v5

    cmp-long p1, v0, v3

    if-gtz p1, :cond_3

    .line 288
    invoke-virtual {p0}, Lcom/yftech/libmusic/widget/LyricView;->performClick()Z

    goto :goto_0

    .line 291
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v5, Lcom/media/common/util/AppConstants;->recordLastControlTime:J

    sub-long/2addr v0, v5

    cmp-long p1, v0, v3

    if-gtz p1, :cond_5

    .line 292
    iget-object p1, p0, Lcom/yftech/libmusic/widget/LyricView;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/yftech/libmusic/widget/LyricView;->moveRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 294
    iget p1, p0, Lcom/yftech/libmusic/widget/LyricView;->offsetY:F

    iget v0, p0, Lcom/yftech/libmusic/widget/LyricView;->tempOffsetY:F

    invoke-direct {p0, p1, v0}, Lcom/yftech/libmusic/widget/LyricView;->getProgressInMoving(FF)I

    move-result p1

    .line 296
    iget-object v0, p0, Lcom/yftech/libmusic/widget/LyricView;->onProgressTouchMoveListener:Lcom/yftech/libmusic/widget/LyricView$OnProgressTouchMoveListener;

    if-eqz v0, :cond_4

    .line 297
    iget-object v0, p0, Lcom/yftech/libmusic/widget/LyricView;->onProgressTouchMoveListener:Lcom/yftech/libmusic/widget/LyricView$OnProgressTouchMoveListener;

    invoke-interface {v0, p1}, Lcom/yftech/libmusic/widget/LyricView$OnProgressTouchMoveListener;->onProgressMove(I)V

    :cond_4
    const/4 p1, 0x0

    .line 299
    iput-boolean p1, p0, Lcom/yftech/libmusic/widget/LyricView;->blScrollView:Z

    goto :goto_0

    .line 304
    :cond_5
    iget-object p1, p0, Lcom/yftech/libmusic/widget/LyricView;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/yftech/libmusic/widget/LyricView;->moveRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 305
    iget-object p1, p0, Lcom/yftech/libmusic/widget/LyricView;->handler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/yftech/libmusic/widget/LyricView;->moveRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0xbb8

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 263
    :pswitch_2
    iget-boolean v0, p0, Lcom/yftech/libmusic/widget/LyricView;->blScrollView:Z

    if-nez v0, :cond_6

    .line 264
    iget v0, p0, Lcom/yftech/libmusic/widget/LyricView;->offsetY:F

    iput v0, p0, Lcom/yftech/libmusic/widget/LyricView;->tempOffsetY:F

    .line 265
    :cond_6
    iget v0, p0, Lcom/yftech/libmusic/widget/LyricView;->offsetY:F

    iput v0, p0, Lcom/yftech/libmusic/widget/LyricView;->frontOffsetY:F

    .line 266
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/media/common/util/AppConstants;->recordLastControlTime:J

    .line 267
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/yftech/libmusic/widget/LyricView;->touchY:F

    .line 268
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/yftech/libmusic/widget/LyricView;->touchX:F

    :cond_7
    :goto_0
    return v2

    .line 257
    :cond_8
    :goto_1
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public run()V
    .locals 3

    .line 749
    iget v0, p0, Lcom/yftech/libmusic/widget/LyricView;->offsetY:F

    iget v1, p0, Lcom/yftech/libmusic/widget/LyricView;->animIntervalOffset:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/yftech/libmusic/widget/LyricView;->offsetY:F

    .line 751
    invoke-virtual {p0}, Lcom/yftech/libmusic/widget/LyricView;->invalidate()V

    .line 753
    iget v0, p0, Lcom/yftech/libmusic/widget/LyricView;->times:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/yftech/libmusic/widget/LyricView;->times:I

    .line 755
    iget v0, p0, Lcom/yftech/libmusic/widget/LyricView;->times:I

    iget v1, p0, Lcom/yftech/libmusic/widget/LyricView;->animDuration:F

    iget v2, p0, Lcom/yftech/libmusic/widget/LyricView;->animInterval:F

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 756
    iget-object v0, p0, Lcom/yftech/libmusic/widget/LyricView;->handler:Landroid/os/Handler;

    iget v1, p0, Lcom/yftech/libmusic/widget/LyricView;->animInterval:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public setGravity(I)V
    .locals 0

    .line 692
    iput p1, p0, Lcom/yftech/libmusic/widget/LyricView;->gravity:I

    return-void
.end method

.method public setLines(I)V
    .locals 3

    .line 706
    rem-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_1

    .line 709
    iput p1, p0, Lcom/yftech/libmusic/widget/LyricView;->lines:I

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    .line 713
    iget v1, p0, Lcom/yftech/libmusic/widget/LyricView;->height:I

    iget v2, p0, Lcom/yftech/libmusic/widget/LyricView;->padding:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/yftech/libmusic/widget/LyricView;->SIZEWORD:I

    mul-int/2addr v2, p1

    sub-int/2addr v1, v2

    sub-int/2addr p1, v0

    div-int/2addr v1, p1

    iput v1, p0, Lcom/yftech/libmusic/widget/LyricView;->INTERVAL:I

    goto :goto_0

    .line 715
    :cond_0
    iget p1, p0, Lcom/yftech/libmusic/widget/LyricView;->height:I

    iget v0, p0, Lcom/yftech/libmusic/widget/LyricView;->SIZEWORD:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/yftech/libmusic/widget/LyricView;->INTERVAL:I

    :goto_0
    return-void

    .line 707
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "\u884c\u6570\u5fc5\u987b\u4e3a\u5355\u6570"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setOffsetY(F)V
    .locals 0

    .line 619
    iput p1, p0, Lcom/yftech/libmusic/widget/LyricView;->offsetY:F

    return-void
.end method

.method public setOnProgressTouchMoveListener(Lcom/yftech/libmusic/widget/LyricView$OnProgressTouchMoveListener;)V
    .locals 0

    .line 729
    iput-object p1, p0, Lcom/yftech/libmusic/widget/LyricView;->onProgressTouchMoveListener:Lcom/yftech/libmusic/widget/LyricView$OnProgressTouchMoveListener;

    return-void
.end method

.method public varargs setSIZEWORD([I)V
    .locals 5
    .param p1    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 645
    aget v1, p1, v0

    iput v1, p0, Lcom/yftech/libmusic/widget/LyricView;->SIZEWORD:I

    .line 646
    array-length v1, p1

    const/16 v2, 0x14

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-gt v1, v4, :cond_0

    .line 647
    aget p1, p1, v0

    iput p1, p0, Lcom/yftech/libmusic/widget/LyricView;->MAINSIZEWORD:I

    .line 648
    iput v2, p0, Lcom/yftech/libmusic/widget/LyricView;->PROGRESSSIZEWORD:I

    goto :goto_0

    .line 649
    :cond_0
    array-length v0, p1

    if-gt v0, v3, :cond_1

    .line 650
    aget p1, p1, v4

    iput p1, p0, Lcom/yftech/libmusic/widget/LyricView;->MAINSIZEWORD:I

    .line 651
    iput v2, p0, Lcom/yftech/libmusic/widget/LyricView;->PROGRESSSIZEWORD:I

    goto :goto_0

    .line 653
    :cond_1
    aget v0, p1, v4

    iput v0, p0, Lcom/yftech/libmusic/widget/LyricView;->MAINSIZEWORD:I

    .line 654
    aget p1, p1, v3

    iput p1, p0, Lcom/yftech/libmusic/widget/LyricView;->PROGRESSSIZEWORD:I

    .line 658
    :goto_0
    iget p1, p0, Lcom/yftech/libmusic/widget/LyricView;->lines:I

    if-le p1, v4, :cond_2

    .line 659
    iget p1, p0, Lcom/yftech/libmusic/widget/LyricView;->height:I

    iget v0, p0, Lcom/yftech/libmusic/widget/LyricView;->padding:I

    mul-int/2addr v0, v3

    sub-int/2addr p1, v0

    iget v0, p0, Lcom/yftech/libmusic/widget/LyricView;->lines:I

    sub-int/2addr v0, v4

    iget v1, p0, Lcom/yftech/libmusic/widget/LyricView;->SIZEWORD:I

    mul-int/2addr v0, v1

    sub-int/2addr p1, v0

    iget v0, p0, Lcom/yftech/libmusic/widget/LyricView;->MAINSIZEWORD:I

    sub-int/2addr p1, v0

    iget v0, p0, Lcom/yftech/libmusic/widget/LyricView;->lines:I

    sub-int/2addr v0, v4

    div-int/2addr p1, v0

    iput p1, p0, Lcom/yftech/libmusic/widget/LyricView;->INTERVAL:I

    goto :goto_1

    .line 661
    :cond_2
    iget p1, p0, Lcom/yftech/libmusic/widget/LyricView;->height:I

    iget v0, p0, Lcom/yftech/libmusic/widget/LyricView;->SIZEWORD:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/yftech/libmusic/widget/LyricView;->INTERVAL:I

    :goto_1
    return-void
.end method

.method public setScrollAble(Z)V
    .locals 0

    .line 722
    iput-boolean p1, p0, Lcom/yftech/libmusic/widget/LyricView;->scrollAble:Z

    return-void
.end method

.method public varargs setTextColorDegression([I)V
    .locals 0

    .line 699
    iput-object p1, p0, Lcom/yftech/libmusic/widget/LyricView;->textColorDegression:[I

    return-void
.end method
