.class public Landroid/graphics/PorterDuffColorFilter;
.super Landroid/graphics/ColorFilter;
.source "PorterDuffColorFilter.java"


# instance fields
.field private mColor:I

.field private mMode:Landroid/graphics/PorterDuff$Mode;


# direct methods
.method public constructor <init>(ILandroid/graphics/PorterDuff$Mode;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Landroid/graphics/ColorFilter;-><init>()V

    .line 42
    iput p1, p0, Landroid/graphics/PorterDuffColorFilter;->mColor:I

    .line 43
    iput-object p2, p0, Landroid/graphics/PorterDuffColorFilter;->mMode:Landroid/graphics/PorterDuff$Mode;

    return-void
.end method

.method private static native native_CreatePorterDuffFilter(II)J
.end method


# virtual methods
.method createNativeInstance()J
    .locals 2

    .line 112
    iget v0, p0, Landroid/graphics/PorterDuffColorFilter;->mColor:I

    iget-object p0, p0, Landroid/graphics/PorterDuffColorFilter;->mMode:Landroid/graphics/PorterDuff$Mode;

    iget p0, p0, Landroid/graphics/PorterDuff$Mode;->nativeInt:I

    invoke-static {v0, p0}, Landroid/graphics/PorterDuffColorFilter;->native_CreatePorterDuffFilter(II)J

    move-result-wide v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 120
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 123
    :cond_1
    check-cast p1, Landroid/graphics/PorterDuffColorFilter;

    .line 124
    iget v2, p0, Landroid/graphics/PorterDuffColorFilter;->mColor:I

    iget v3, p1, Landroid/graphics/PorterDuffColorFilter;->mColor:I

    if-ne v2, v3, :cond_2

    iget-object p0, p0, Landroid/graphics/PorterDuffColorFilter;->mMode:Landroid/graphics/PorterDuff$Mode;

    iget p0, p0, Landroid/graphics/PorterDuff$Mode;->nativeInt:I

    iget-object p1, p1, Landroid/graphics/PorterDuffColorFilter;->mMode:Landroid/graphics/PorterDuff$Mode;

    iget p1, p1, Landroid/graphics/PorterDuff$Mode;->nativeInt:I

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getColor()I
    .locals 0

    .line 57
    iget p0, p0, Landroid/graphics/PorterDuffColorFilter;->mColor:I

    return p0
.end method

.method public getMode()Landroid/graphics/PorterDuff$Mode;
    .locals 0

    .line 89
    iget-object p0, p0, Landroid/graphics/PorterDuffColorFilter;->mMode:Landroid/graphics/PorterDuff$Mode;

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    .line 129
    iget-object v0, p0, Landroid/graphics/PorterDuffColorFilter;->mMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0}, Landroid/graphics/PorterDuff$Mode;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Landroid/graphics/PorterDuffColorFilter;->mColor:I

    add-int/2addr v0, p0

    return v0
.end method

.method public setColor(I)V
    .locals 1

    .line 73
    iget v0, p0, Landroid/graphics/PorterDuffColorFilter;->mColor:I

    if-eq v0, p1, :cond_0

    .line 74
    iput p1, p0, Landroid/graphics/PorterDuffColorFilter;->mColor:I

    .line 75
    invoke-virtual {p0}, Landroid/graphics/PorterDuffColorFilter;->discardNativeInstance()V

    :cond_0
    return-void
.end method

.method public setMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 106
    iput-object p1, p0, Landroid/graphics/PorterDuffColorFilter;->mMode:Landroid/graphics/PorterDuff$Mode;

    .line 107
    invoke-virtual {p0}, Landroid/graphics/PorterDuffColorFilter;->discardNativeInstance()V

    return-void

    .line 104
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "mode must be non-null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
