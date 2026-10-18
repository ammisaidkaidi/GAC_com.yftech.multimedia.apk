.class public Landroid/graphics/TableMaskFilter;
.super Landroid/graphics/MaskFilter;
.source "TableMaskFilter.java"


# direct methods
.method private constructor <init>(J)V
    .locals 0

    .line 31
    invoke-direct {p0}, Landroid/graphics/MaskFilter;-><init>()V

    .line 32
    iput-wide p1, p0, Landroid/graphics/TableMaskFilter;->native_instance:J

    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    .line 24
    invoke-direct {p0}, Landroid/graphics/MaskFilter;-><init>()V

    .line 25
    array-length v0, p1

    const/16 v1, 0x100

    if-lt v0, v1, :cond_0

    .line 28
    invoke-static {p1}, Landroid/graphics/TableMaskFilter;->nativeNewTable([B)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/TableMaskFilter;->native_instance:J

    return-void

    .line 26
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string/jumbo p1, "table.length must be >= 256"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static CreateClipTable(II)Landroid/graphics/TableMaskFilter;
    .locals 1

    .line 36
    new-instance v0, Landroid/graphics/TableMaskFilter;

    invoke-static {p0, p1}, Landroid/graphics/TableMaskFilter;->nativeNewClip(II)J

    move-result-wide p0

    invoke-direct {v0, p0, p1}, Landroid/graphics/TableMaskFilter;-><init>(J)V

    return-object v0
.end method

.method public static CreateGammaTable(F)Landroid/graphics/TableMaskFilter;
    .locals 3

    .line 40
    new-instance v0, Landroid/graphics/TableMaskFilter;

    invoke-static {p0}, Landroid/graphics/TableMaskFilter;->nativeNewGamma(F)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Landroid/graphics/TableMaskFilter;-><init>(J)V

    return-object v0
.end method

.method private static native nativeNewClip(II)J
.end method

.method private static native nativeNewGamma(F)J
.end method

.method private static native nativeNewTable([B)J
.end method
