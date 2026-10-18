.class public final Landroid/hardware/camera2/params/InputConfiguration;
.super Ljava/lang/Object;
.source "InputConfiguration.java"


# instance fields
.field private final mFormat:I

.field private final mHeight:I

.field private final mWidth:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput p1, p0, Landroid/hardware/camera2/params/InputConfiguration;->mWidth:I

    .line 51
    iput p2, p0, Landroid/hardware/camera2/params/InputConfiguration;->mHeight:I

    .line 52
    iput p3, p0, Landroid/hardware/camera2/params/InputConfiguration;->mFormat:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 94
    instance-of v0, p1, Landroid/hardware/camera2/params/InputConfiguration;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 98
    :cond_0
    check-cast p1, Landroid/hardware/camera2/params/InputConfiguration;

    .line 100
    invoke-virtual {p1}, Landroid/hardware/camera2/params/InputConfiguration;->getWidth()I

    move-result v0

    iget v2, p0, Landroid/hardware/camera2/params/InputConfiguration;->mWidth:I

    if-ne v0, v2, :cond_1

    .line 101
    invoke-virtual {p1}, Landroid/hardware/camera2/params/InputConfiguration;->getHeight()I

    move-result v0

    iget v2, p0, Landroid/hardware/camera2/params/InputConfiguration;->mHeight:I

    if-ne v0, v2, :cond_1

    .line 102
    invoke-virtual {p1}, Landroid/hardware/camera2/params/InputConfiguration;->getFormat()I

    move-result p1

    iget p0, p0, Landroid/hardware/camera2/params/InputConfiguration;->mFormat:I

    if-ne p1, p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public getFormat()I
    .locals 0

    .line 79
    iget p0, p0, Landroid/hardware/camera2/params/InputConfiguration;->mFormat:I

    return p0
.end method

.method public getHeight()I
    .locals 0

    .line 70
    iget p0, p0, Landroid/hardware/camera2/params/InputConfiguration;->mHeight:I

    return p0
.end method

.method public getWidth()I
    .locals 0

    .line 61
    iget p0, p0, Landroid/hardware/camera2/params/InputConfiguration;->mWidth:I

    return p0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    .line 113
    new-array v0, v0, [I

    iget v1, p0, Landroid/hardware/camera2/params/InputConfiguration;->mWidth:I

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p0, Landroid/hardware/camera2/params/InputConfiguration;->mHeight:I

    const/4 v2, 0x1

    aput v1, v0, v2

    iget p0, p0, Landroid/hardware/camera2/params/InputConfiguration;->mFormat:I

    const/4 v1, 0x2

    aput p0, v0, v1

    invoke-static {v0}, Landroid/hardware/camera2/utils/HashCodeHelpers;->hashCode([I)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "InputConfiguration(w:%d, h:%d, format:%d)"

    const/4 v1, 0x3

    .line 126
    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Landroid/hardware/camera2/params/InputConfiguration;->mWidth:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Landroid/hardware/camera2/params/InputConfiguration;->mHeight:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget p0, p0, Landroid/hardware/camera2/params/InputConfiguration;->mFormat:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v2, 0x2

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
