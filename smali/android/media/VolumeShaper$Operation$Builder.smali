.class public final Landroid/media/VolumeShaper$Operation$Builder;
.super Ljava/lang/Object;
.source "VolumeShaper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/VolumeShaper$Operation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field mFlags:I

.field mReplaceId:I

.field mXOffset:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1223
    iput v0, p0, Landroid/media/VolumeShaper$Operation$Builder;->mFlags:I

    const/4 v0, -0x1

    .line 1224
    iput v0, p0, Landroid/media/VolumeShaper$Operation$Builder;->mReplaceId:I

    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 1225
    iput v0, p0, Landroid/media/VolumeShaper$Operation$Builder;->mXOffset:F

    return-void
.end method

.method public constructor <init>(Landroid/media/VolumeShaper$Operation;)V
    .locals 1

    .line 1233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1234
    invoke-static {p1}, Landroid/media/VolumeShaper$Operation;->access$500(Landroid/media/VolumeShaper$Operation;)I

    move-result v0

    iput v0, p0, Landroid/media/VolumeShaper$Operation$Builder;->mReplaceId:I

    .line 1235
    invoke-static {p1}, Landroid/media/VolumeShaper$Operation;->access$600(Landroid/media/VolumeShaper$Operation;)I

    move-result v0

    iput v0, p0, Landroid/media/VolumeShaper$Operation$Builder;->mFlags:I

    .line 1236
    invoke-static {p1}, Landroid/media/VolumeShaper$Operation;->access$700(Landroid/media/VolumeShaper$Operation;)F

    move-result p1

    iput p1, p0, Landroid/media/VolumeShaper$Operation$Builder;->mXOffset:F

    return-void
.end method

.method private setFlags(I)Landroid/media/VolumeShaper$Operation$Builder;
    .locals 2

    and-int/lit8 v0, p1, -0x4

    if-nez v0, :cond_0

    .line 1338
    iget v0, p0, Landroid/media/VolumeShaper$Operation$Builder;->mFlags:I

    and-int/lit8 v0, v0, -0x4

    or-int/2addr p1, v0

    iput p1, p0, Landroid/media/VolumeShaper$Operation$Builder;->mFlags:I

    return-object p0

    .line 1336
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "flag has unknown bits set: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public build()Landroid/media/VolumeShaper$Operation;
    .locals 4

    .line 1348
    new-instance v0, Landroid/media/VolumeShaper$Operation;

    iget v1, p0, Landroid/media/VolumeShaper$Operation$Builder;->mFlags:I

    iget v2, p0, Landroid/media/VolumeShaper$Operation$Builder;->mReplaceId:I

    iget p0, p0, Landroid/media/VolumeShaper$Operation$Builder;->mXOffset:F

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, p0, v3}, Landroid/media/VolumeShaper$Operation;-><init>(IIFLandroid/media/VolumeShaper$1;)V

    return-object v0
.end method

.method public createIfNeeded()Landroid/media/VolumeShaper$Operation$Builder;
    .locals 1

    .line 1300
    iget v0, p0, Landroid/media/VolumeShaper$Operation$Builder;->mFlags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Landroid/media/VolumeShaper$Operation$Builder;->mFlags:I

    return-object p0
.end method

.method public defer()Landroid/media/VolumeShaper$Operation$Builder;
    .locals 1

    .line 1265
    iget v0, p0, Landroid/media/VolumeShaper$Operation$Builder;->mFlags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/media/VolumeShaper$Operation$Builder;->mFlags:I

    return-object p0
.end method

.method public replace(IZ)Landroid/media/VolumeShaper$Operation$Builder;
    .locals 0

    .line 1251
    iput p1, p0, Landroid/media/VolumeShaper$Operation$Builder;->mReplaceId:I

    if-eqz p2, :cond_0

    .line 1253
    iget p1, p0, Landroid/media/VolumeShaper$Operation$Builder;->mFlags:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Landroid/media/VolumeShaper$Operation$Builder;->mFlags:I

    goto :goto_0

    .line 1255
    :cond_0
    iget p1, p0, Landroid/media/VolumeShaper$Operation$Builder;->mFlags:I

    and-int/lit8 p1, p1, -0x5

    iput p1, p0, Landroid/media/VolumeShaper$Operation$Builder;->mFlags:I

    :goto_0
    return-object p0
.end method

.method public reverse()Landroid/media/VolumeShaper$Operation$Builder;
    .locals 1

    .line 1285
    iget v0, p0, Landroid/media/VolumeShaper$Operation$Builder;->mFlags:I

    xor-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/media/VolumeShaper$Operation$Builder;->mFlags:I

    return-object p0
.end method

.method public setXOffset(F)Landroid/media/VolumeShaper$Operation$Builder;
    .locals 1

    const/high16 v0, -0x80000000

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_0

    .line 1322
    iput p1, p0, Landroid/media/VolumeShaper$Operation$Builder;->mXOffset:F

    return-object p0

    .line 1319
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "xOffset > 1.f not allowed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1317
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Negative xOffset not allowed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public terminate()Landroid/media/VolumeShaper$Operation$Builder;
    .locals 1

    .line 1276
    iget v0, p0, Landroid/media/VolumeShaper$Operation$Builder;->mFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/media/VolumeShaper$Operation$Builder;->mFlags:I

    return-object p0
.end method
