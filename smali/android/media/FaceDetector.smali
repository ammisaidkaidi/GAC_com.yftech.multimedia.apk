.class public Landroid/media/FaceDetector;
.super Ljava/lang/Object;
.source "FaceDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/FaceDetector$Face;
    }
.end annotation


# static fields
.field private static sInitialized:Z = false


# instance fields
.field private mBWBuffer:[B

.field private mDCR:J

.field private mFD:J

.field private mHeight:I

.field private mMaxFaces:I

.field private mSDK:J

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    :try_start_0
    const-string v0, "FFTEm"

    .line 181
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 182
    invoke-static {}, Landroid/media/FaceDetector;->nativeClassInit()V

    const/4 v0, 0x1

    .line 183
    sput-boolean v0, Landroid/media/FaceDetector;->sInitialized:Z
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "FFTEm"

    const-string v1, "face detection library not found!"

    .line 185
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public constructor <init>(III)V
    .locals 1

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    sget-boolean v0, Landroid/media/FaceDetector;->sInitialized:Z

    if-nez v0, :cond_0

    return-void

    .line 117
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroid/media/FaceDetector;->fft_initialize(III)I

    .line 118
    iput p1, p0, Landroid/media/FaceDetector;->mWidth:I

    .line 119
    iput p2, p0, Landroid/media/FaceDetector;->mHeight:I

    .line 120
    iput p3, p0, Landroid/media/FaceDetector;->mMaxFaces:I

    mul-int/2addr p1, p2

    .line 121
    new-array p1, p1, [B

    iput-object p1, p0, Landroid/media/FaceDetector;->mBWBuffer:[B

    return-void
.end method

.method private native fft_destroy()V
.end method

.method private native fft_detect(Landroid/graphics/Bitmap;)I
.end method

.method private native fft_get_face(Landroid/media/FaceDetector$Face;I)V
.end method

.method private native fft_initialize(III)I
.end method

.method private static native nativeClassInit()V
.end method


# virtual methods
.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 168
    invoke-direct {p0}, Landroid/media/FaceDetector;->fft_destroy()V

    return-void
.end method

.method public findFaces(Landroid/graphics/Bitmap;[Landroid/media/FaceDetector$Face;)I
    .locals 3

    .line 141
    sget-boolean v0, Landroid/media/FaceDetector;->sInitialized:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 144
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v2, p0, Landroid/media/FaceDetector;->mWidth:I

    if-ne v0, v2, :cond_5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v2, p0, Landroid/media/FaceDetector;->mHeight:I

    if-ne v0, v2, :cond_5

    .line 148
    array-length v0, p2

    iget v2, p0, Landroid/media/FaceDetector;->mMaxFaces:I

    if-lt v0, v2, :cond_4

    .line 153
    invoke-direct {p0, p1}, Landroid/media/FaceDetector;->fft_detect(Landroid/graphics/Bitmap;)I

    move-result p1

    .line 154
    iget v0, p0, Landroid/media/FaceDetector;->mMaxFaces:I

    if-lt p1, v0, :cond_1

    .line 155
    iget p1, p0, Landroid/media/FaceDetector;->mMaxFaces:I

    :cond_1
    :goto_0
    if-ge v1, p1, :cond_3

    .line 157
    aget-object v0, p2, v1

    if-nez v0, :cond_2

    .line 158
    new-instance v0, Landroid/media/FaceDetector$Face;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Landroid/media/FaceDetector$Face;-><init>(Landroid/media/FaceDetector;Landroid/media/FaceDetector$1;)V

    aput-object v0, p2, v1

    .line 159
    :cond_2
    aget-object v0, p2, v1

    invoke-direct {p0, v0, v1}, Landroid/media/FaceDetector;->fft_get_face(Landroid/media/FaceDetector$Face;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return p1

    .line 149
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "faces[] smaller than maxFaces"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 145
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "bitmap size doesn\'t match initialization"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
