.class public final Landroid/hardware/camera2/params/ReprocessFormatsMap;
.super Ljava/lang/Object;
.source "ReprocessFormatsMap.java"


# instance fields
.field private final mEntry:[I

.field private final mInputCount:I


# direct methods
.method public constructor <init>([I)V
    .locals 9

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "entry must not be null"

    .line 74
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v0

    move v0, v1

    move v3, v0

    .line 78
    :goto_0
    array-length v4, p1

    if-ge v0, v4, :cond_4

    .line 79
    aget v4, p1, v0

    invoke-static {v4}, Landroid/hardware/camera2/params/StreamConfigurationMap;->checkArgumentFormatInternal(I)I

    move-result v4

    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v0, v0, 0x1

    const/4 v5, 0x1

    if-lt v2, v5, :cond_3

    .line 89
    aget v6, p1, v0

    add-int/lit8 v2, v2, -0x1

    add-int/2addr v0, v5

    move v7, v1

    :goto_1
    if-ge v7, v6, :cond_0

    add-int v8, v0, v7

    .line 94
    aget v8, p1, v8

    .line 95
    invoke-static {v8}, Landroid/hardware/camera2/params/StreamConfigurationMap;->checkArgumentFormatInternal(I)I

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_0
    if-lez v6, :cond_2

    if-lt v2, v6, :cond_1

    add-int/2addr v0, v6

    sub-int/2addr v2, v6

    goto :goto_2

    .line 100
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    .line 103
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v5

    const/4 v0, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v0

    const-string v0, "Input %x had too few output formats listed (actual: %d, expected: %d)"

    .line 101
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 85
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-array p1, v5, [Ljava/lang/Object;

    .line 86
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v1

    const-string v0, "Input %x had no output format length listed"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 113
    :cond_4
    iput-object p1, p0, Landroid/hardware/camera2/params/ReprocessFormatsMap;->mEntry:[I

    .line 114
    iput v3, p0, Landroid/hardware/camera2/params/ReprocessFormatsMap;->mInputCount:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    if-ne p0, p1, :cond_1

    const/4 p0, 0x1

    return p0

    .line 242
    :cond_1
    instance-of v1, p1, Landroid/hardware/camera2/params/ReprocessFormatsMap;

    if-eqz v1, :cond_2

    .line 243
    check-cast p1, Landroid/hardware/camera2/params/ReprocessFormatsMap;

    .line 245
    iget-object p0, p0, Landroid/hardware/camera2/params/ReprocessFormatsMap;->mEntry:[I

    iget-object p1, p1, Landroid/hardware/camera2/params/ReprocessFormatsMap;->mEntry:[I

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p0

    return p0

    :cond_2
    return v0
.end method

.method public getInputs()[I
    .locals 8

    .line 130
    iget v0, p0, Landroid/hardware/camera2/params/ReprocessFormatsMap;->mInputCount:I

    new-array v0, v0, [I

    .line 132
    iget-object v1, p0, Landroid/hardware/camera2/params/ReprocessFormatsMap;->mEntry:[I

    array-length v1, v1

    const/4 v2, 0x0

    move v3, v1

    move v1, v2

    move v4, v1

    .line 133
    :goto_0
    iget-object v5, p0, Landroid/hardware/camera2/params/ReprocessFormatsMap;->mEntry:[I

    array-length v5, v5

    if-ge v1, v5, :cond_3

    .line 134
    iget-object v5, p0, Landroid/hardware/camera2/params/ReprocessFormatsMap;->mEntry:[I

    aget v5, v5, v1

    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v1, v1, 0x1

    const/4 v6, 0x1

    if-lt v3, v6, :cond_2

    .line 144
    iget-object v7, p0, Landroid/hardware/camera2/params/ReprocessFormatsMap;->mEntry:[I

    aget v7, v7, v1

    add-int/lit8 v3, v3, -0x1

    add-int/2addr v1, v6

    if-lez v7, :cond_1

    if-lt v3, v7, :cond_0

    add-int/2addr v1, v7

    sub-int/2addr v3, v7

    goto :goto_1

    .line 150
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 153
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v6

    const/4 v1, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "Input %x had too few output formats listed (actual: %d, expected: %d)"

    .line 151
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    .line 160
    :cond_1
    :goto_1
    aput v5, v0, v4

    add-int/2addr v4, v6

    goto :goto_0

    .line 140
    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    new-array v0, v6, [Ljava/lang/Object;

    .line 141
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "Input %x had no output format length listed"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    .line 163
    :cond_3
    invoke-static {v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToPublic([I)[I

    move-result-object p0

    return-object p0
.end method

.method public getOutputs(I)[I
    .locals 6

    .line 180
    iget-object v0, p0, Landroid/hardware/camera2/params/ReprocessFormatsMap;->mEntry:[I

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v0

    move v0, v1

    .line 181
    :goto_0
    iget-object v3, p0, Landroid/hardware/camera2/params/ReprocessFormatsMap;->mEntry:[I

    array-length v3, v3

    const/4 v4, 0x1

    if-ge v0, v3, :cond_5

    .line 182
    iget-object v3, p0, Landroid/hardware/camera2/params/ReprocessFormatsMap;->mEntry:[I

    aget v3, v3, v0

    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v0, v0, 0x1

    if-lt v2, v4, :cond_4

    .line 192
    iget-object v5, p0, Landroid/hardware/camera2/params/ReprocessFormatsMap;->mEntry:[I

    aget v5, v5, v0

    add-int/lit8 v2, v2, -0x1

    add-int/2addr v0, v4

    if-lez v5, :cond_1

    if-lt v2, v5, :cond_0

    goto :goto_1

    .line 198
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 201
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v4

    const/4 p1, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, p1

    const-string p1, "Input %x had too few output formats listed (actual: %d, expected: %d)"

    .line 199
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :cond_1
    :goto_1
    if-ne v3, p1, :cond_3

    .line 206
    new-array p1, v5, [I

    :goto_2
    if-ge v1, v5, :cond_2

    .line 210
    iget-object v2, p0, Landroid/hardware/camera2/params/ReprocessFormatsMap;->mEntry:[I

    add-int v3, v0, v1

    aget v2, v2, v3

    aput v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 213
    :cond_2
    invoke-static {p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToPublic([I)[I

    move-result-object p0

    return-object p0

    :cond_3
    add-int/2addr v0, v5

    sub-int/2addr v2, v5

    goto :goto_0

    .line 188
    :cond_4
    new-instance p0, Ljava/lang/AssertionError;

    new-array v0, v4, [Ljava/lang/Object;

    .line 189
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "Input %x had no output format length listed"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    .line 221
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-array v0, v4, [Ljava/lang/Object;

    .line 222
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "Input format %x was not one in #getInputs"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public hashCode()I
    .locals 0

    .line 256
    iget-object p0, p0, Landroid/hardware/camera2/params/ReprocessFormatsMap;->mEntry:[I

    invoke-static {p0}, Landroid/hardware/camera2/utils/HashCodeHelpers;->hashCode([I)I

    move-result p0

    return p0
.end method
