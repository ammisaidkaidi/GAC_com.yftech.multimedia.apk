.class public final Landroid/text/DynamicLayout$Builder;
.super Ljava/lang/Object;
.source "DynamicLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/DynamicLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# static fields
.field private static final sPool:Landroid/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SynchronizedPool<",
            "Landroid/text/DynamicLayout$Builder;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAlignment:Landroid/text/Layout$Alignment;

.field private mBase:Ljava/lang/CharSequence;

.field private mBreakStrategy:I

.field private mDisplay:Ljava/lang/CharSequence;

.field private mEllipsize:Landroid/text/TextUtils$TruncateAt;

.field private mEllipsizedWidth:I

.field private mFallbackLineSpacing:Z

.field private final mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

.field private mHyphenationFrequency:I

.field private mIncludePad:Z

.field private mJustificationMode:I

.field private mPaint:Landroid/text/TextPaint;

.field private mSpacingAdd:F

.field private mSpacingMult:F

.field private mTextDir:Landroid/text/TextDirectionHeuristic;

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 301
    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, Landroid/text/DynamicLayout$Builder;->sPool:Landroid/util/Pools$SynchronizedPool;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 299
    new-instance v0, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v0}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    iput-object v0, p0, Landroid/text/DynamicLayout$Builder;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    return-void
.end method

.method static synthetic access$100(Landroid/text/DynamicLayout$Builder;)V
    .locals 0

    .line 57
    invoke-static {p0}, Landroid/text/DynamicLayout$Builder;->recycle(Landroid/text/DynamicLayout$Builder;)V

    return-void
.end method

.method static synthetic access$1000(Landroid/text/DynamicLayout$Builder;)Z
    .locals 0

    .line 57
    iget-boolean p0, p0, Landroid/text/DynamicLayout$Builder;->mIncludePad:Z

    return p0
.end method

.method static synthetic access$1100(Landroid/text/DynamicLayout$Builder;)I
    .locals 0

    .line 57
    iget p0, p0, Landroid/text/DynamicLayout$Builder;->mBreakStrategy:I

    return p0
.end method

.method static synthetic access$1200(Landroid/text/DynamicLayout$Builder;)I
    .locals 0

    .line 57
    iget p0, p0, Landroid/text/DynamicLayout$Builder;->mJustificationMode:I

    return p0
.end method

.method static synthetic access$1300(Landroid/text/DynamicLayout$Builder;)I
    .locals 0

    .line 57
    iget p0, p0, Landroid/text/DynamicLayout$Builder;->mHyphenationFrequency:I

    return p0
.end method

.method static synthetic access$1400(Landroid/text/DynamicLayout$Builder;)Ljava/lang/CharSequence;
    .locals 0

    .line 57
    iget-object p0, p0, Landroid/text/DynamicLayout$Builder;->mBase:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic access$1500(Landroid/text/DynamicLayout$Builder;)Z
    .locals 0

    .line 57
    iget-boolean p0, p0, Landroid/text/DynamicLayout$Builder;->mFallbackLineSpacing:Z

    return p0
.end method

.method static synthetic access$1600(Landroid/text/DynamicLayout$Builder;)I
    .locals 0

    .line 57
    iget p0, p0, Landroid/text/DynamicLayout$Builder;->mEllipsizedWidth:I

    return p0
.end method

.method static synthetic access$1700(Landroid/text/DynamicLayout$Builder;)Landroid/graphics/Paint$FontMetricsInt;
    .locals 0

    .line 57
    iget-object p0, p0, Landroid/text/DynamicLayout$Builder;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    return-object p0
.end method

.method static synthetic access$200(Landroid/text/DynamicLayout$Builder;)Landroid/text/TextUtils$TruncateAt;
    .locals 0

    .line 57
    iget-object p0, p0, Landroid/text/DynamicLayout$Builder;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    return-object p0
.end method

.method static synthetic access$300(Landroid/text/DynamicLayout$Builder;)Ljava/lang/CharSequence;
    .locals 0

    .line 57
    iget-object p0, p0, Landroid/text/DynamicLayout$Builder;->mDisplay:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic access$400(Landroid/text/DynamicLayout$Builder;)Landroid/text/TextPaint;
    .locals 0

    .line 57
    iget-object p0, p0, Landroid/text/DynamicLayout$Builder;->mPaint:Landroid/text/TextPaint;

    return-object p0
.end method

.method static synthetic access$500(Landroid/text/DynamicLayout$Builder;)I
    .locals 0

    .line 57
    iget p0, p0, Landroid/text/DynamicLayout$Builder;->mWidth:I

    return p0
.end method

.method static synthetic access$600(Landroid/text/DynamicLayout$Builder;)Landroid/text/Layout$Alignment;
    .locals 0

    .line 57
    iget-object p0, p0, Landroid/text/DynamicLayout$Builder;->mAlignment:Landroid/text/Layout$Alignment;

    return-object p0
.end method

.method static synthetic access$700(Landroid/text/DynamicLayout$Builder;)Landroid/text/TextDirectionHeuristic;
    .locals 0

    .line 57
    iget-object p0, p0, Landroid/text/DynamicLayout$Builder;->mTextDir:Landroid/text/TextDirectionHeuristic;

    return-object p0
.end method

.method static synthetic access$800(Landroid/text/DynamicLayout$Builder;)F
    .locals 0

    .line 57
    iget p0, p0, Landroid/text/DynamicLayout$Builder;->mSpacingMult:F

    return p0
.end method

.method static synthetic access$900(Landroid/text/DynamicLayout$Builder;)F
    .locals 0

    .line 57
    iget p0, p0, Landroid/text/DynamicLayout$Builder;->mSpacingAdd:F

    return p0
.end method

.method public static obtain(Ljava/lang/CharSequence;Landroid/text/TextPaint;I)Landroid/text/DynamicLayout$Builder;
    .locals 1

    .line 67
    sget-object v0, Landroid/text/DynamicLayout$Builder;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0}, Landroid/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/DynamicLayout$Builder;

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Landroid/text/DynamicLayout$Builder;

    invoke-direct {v0}, Landroid/text/DynamicLayout$Builder;-><init>()V

    .line 73
    :cond_0
    iput-object p0, v0, Landroid/text/DynamicLayout$Builder;->mBase:Ljava/lang/CharSequence;

    .line 74
    iput-object p0, v0, Landroid/text/DynamicLayout$Builder;->mDisplay:Ljava/lang/CharSequence;

    .line 75
    iput-object p1, v0, Landroid/text/DynamicLayout$Builder;->mPaint:Landroid/text/TextPaint;

    .line 76
    iput p2, v0, Landroid/text/DynamicLayout$Builder;->mWidth:I

    .line 77
    sget-object p0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    iput-object p0, v0, Landroid/text/DynamicLayout$Builder;->mAlignment:Landroid/text/Layout$Alignment;

    .line 78
    sget-object p0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    iput-object p0, v0, Landroid/text/DynamicLayout$Builder;->mTextDir:Landroid/text/TextDirectionHeuristic;

    const/high16 p0, 0x3f800000    # 1.0f

    .line 79
    iput p0, v0, Landroid/text/DynamicLayout$Builder;->mSpacingMult:F

    const/4 p0, 0x0

    .line 80
    iput p0, v0, Landroid/text/DynamicLayout$Builder;->mSpacingAdd:F

    const/4 p0, 0x1

    .line 81
    iput-boolean p0, v0, Landroid/text/DynamicLayout$Builder;->mIncludePad:Z

    const/4 p0, 0x0

    .line 82
    iput-boolean p0, v0, Landroid/text/DynamicLayout$Builder;->mFallbackLineSpacing:Z

    .line 83
    iput p2, v0, Landroid/text/DynamicLayout$Builder;->mEllipsizedWidth:I

    const/4 p1, 0x0

    .line 84
    iput-object p1, v0, Landroid/text/DynamicLayout$Builder;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    .line 85
    iput p0, v0, Landroid/text/DynamicLayout$Builder;->mBreakStrategy:I

    .line 86
    iput p0, v0, Landroid/text/DynamicLayout$Builder;->mHyphenationFrequency:I

    .line 87
    iput p0, v0, Landroid/text/DynamicLayout$Builder;->mJustificationMode:I

    return-object v0
.end method

.method private static recycle(Landroid/text/DynamicLayout$Builder;)V
    .locals 1

    const/4 v0, 0x0

    .line 96
    iput-object v0, p0, Landroid/text/DynamicLayout$Builder;->mBase:Ljava/lang/CharSequence;

    .line 97
    iput-object v0, p0, Landroid/text/DynamicLayout$Builder;->mDisplay:Ljava/lang/CharSequence;

    .line 98
    iput-object v0, p0, Landroid/text/DynamicLayout$Builder;->mPaint:Landroid/text/TextPaint;

    .line 99
    sget-object v0, Landroid/text/DynamicLayout$Builder;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0, p0}, Landroid/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public build()Landroid/text/DynamicLayout;
    .locals 2

    .line 278
    new-instance v0, Landroid/text/DynamicLayout;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/text/DynamicLayout;-><init>(Landroid/text/DynamicLayout$Builder;Landroid/text/DynamicLayout$1;)V

    .line 279
    invoke-static {p0}, Landroid/text/DynamicLayout$Builder;->recycle(Landroid/text/DynamicLayout$Builder;)V

    return-object v0
.end method

.method public setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/DynamicLayout$Builder;
    .locals 0

    .line 124
    iput-object p1, p0, Landroid/text/DynamicLayout$Builder;->mAlignment:Landroid/text/Layout$Alignment;

    return-object p0
.end method

.method public setBreakStrategy(I)Landroid/text/DynamicLayout$Builder;
    .locals 0

    .line 233
    iput p1, p0, Landroid/text/DynamicLayout$Builder;->mBreakStrategy:I

    return-object p0
.end method

.method public setDisplayText(Ljava/lang/CharSequence;)Landroid/text/DynamicLayout$Builder;
    .locals 0

    .line 112
    iput-object p1, p0, Landroid/text/DynamicLayout$Builder;->mDisplay:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setEllipsize(Landroid/text/TextUtils$TruncateAt;)Landroid/text/DynamicLayout$Builder;
    .locals 0

    .line 219
    iput-object p1, p0, Landroid/text/DynamicLayout$Builder;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    return-object p0
.end method

.method public setEllipsizedWidth(I)Landroid/text/DynamicLayout$Builder;
    .locals 0

    .line 203
    iput p1, p0, Landroid/text/DynamicLayout$Builder;->mEllipsizedWidth:I

    return-object p0
.end method

.method public setHyphenationFrequency(I)Landroid/text/DynamicLayout$Builder;
    .locals 0

    .line 249
    iput p1, p0, Landroid/text/DynamicLayout$Builder;->mHyphenationFrequency:I

    return-object p0
.end method

.method public setIncludePad(Z)Landroid/text/DynamicLayout$Builder;
    .locals 0

    .line 170
    iput-boolean p1, p0, Landroid/text/DynamicLayout$Builder;->mIncludePad:Z

    return-object p0
.end method

.method public setJustificationMode(I)Landroid/text/DynamicLayout$Builder;
    .locals 0

    .line 263
    iput p1, p0, Landroid/text/DynamicLayout$Builder;->mJustificationMode:I

    return-object p0
.end method

.method public setLineSpacing(FF)Landroid/text/DynamicLayout$Builder;
    .locals 0

    .line 154
    iput p1, p0, Landroid/text/DynamicLayout$Builder;->mSpacingAdd:F

    .line 155
    iput p2, p0, Landroid/text/DynamicLayout$Builder;->mSpacingMult:F

    return-object p0
.end method

.method public setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroid/text/DynamicLayout$Builder;
    .locals 0

    .line 138
    iput-object p1, p0, Landroid/text/DynamicLayout$Builder;->mTextDir:Landroid/text/TextDirectionHeuristic;

    return-object p0
.end method

.method public setUseLineSpacingFromFallbacks(Z)Landroid/text/DynamicLayout$Builder;
    .locals 0

    .line 189
    iput-boolean p1, p0, Landroid/text/DynamicLayout$Builder;->mFallbackLineSpacing:Z

    return-object p0
.end method
