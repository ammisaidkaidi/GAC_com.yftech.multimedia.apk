.class public Landroid/hardware/camera2/legacy/RequestHolder;
.super Ljava/lang/Object;
.source "RequestHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/legacy/RequestHolder$Builder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RequestHolder"


# instance fields
.field private volatile mFailed:Z

.field private final mFrameNumber:J

.field private final mJpegSurfaceIds:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mNumJpegTargets:I

.field private final mNumPreviewTargets:I

.field private mOutputAbandoned:Z

.field private final mRepeating:Z

.field private final mRequest:Landroid/hardware/camera2/CaptureRequest;

.field private final mRequestId:I

.field private final mSubsequeceId:I


# direct methods
.method private constructor <init>(IILandroid/hardware/camera2/CaptureRequest;ZJIILjava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/hardware/camera2/CaptureRequest;",
            "ZJII",
            "Ljava/util/Collection<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Landroid/hardware/camera2/legacy/RequestHolder;->mFailed:Z

    .line 43
    iput-boolean v0, p0, Landroid/hardware/camera2/legacy/RequestHolder;->mOutputAbandoned:Z

    .line 163
    iput-boolean p4, p0, Landroid/hardware/camera2/legacy/RequestHolder;->mRepeating:Z

    .line 164
    iput-object p3, p0, Landroid/hardware/camera2/legacy/RequestHolder;->mRequest:Landroid/hardware/camera2/CaptureRequest;

    .line 165
    iput p1, p0, Landroid/hardware/camera2/legacy/RequestHolder;->mRequestId:I

    .line 166
    iput p2, p0, Landroid/hardware/camera2/legacy/RequestHolder;->mSubsequeceId:I

    .line 167
    iput-wide p5, p0, Landroid/hardware/camera2/legacy/RequestHolder;->mFrameNumber:J

    .line 168
    iput p7, p0, Landroid/hardware/camera2/legacy/RequestHolder;->mNumJpegTargets:I

    .line 169
    iput p8, p0, Landroid/hardware/camera2/legacy/RequestHolder;->mNumPreviewTargets:I

    .line 170
    iput-object p9, p0, Landroid/hardware/camera2/legacy/RequestHolder;->mJpegSurfaceIds:Ljava/util/Collection;

    return-void
.end method

.method synthetic constructor <init>(IILandroid/hardware/camera2/CaptureRequest;ZJIILjava/util/Collection;Landroid/hardware/camera2/legacy/RequestHolder$1;)V
    .locals 0

    .line 32
    invoke-direct/range {p0 .. p9}, Landroid/hardware/camera2/legacy/RequestHolder;-><init>(IILandroid/hardware/camera2/CaptureRequest;ZJIILjava/util/Collection;)V

    return-void
.end method


# virtual methods
.method public failRequest()V
    .locals 3

    const-string v0, "RequestHolder"

    .line 259
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Capture failed for request: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/hardware/camera2/legacy/RequestHolder;->getRequestId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 260
    iput-boolean v0, p0, Landroid/hardware/camera2/legacy/RequestHolder;->mFailed:Z

    return-void
.end method

.method public getFrameNumber()J
    .locals 2

    .line 198
    iget-wide v0, p0, Landroid/hardware/camera2/legacy/RequestHolder;->mFrameNumber:J

    return-wide v0
.end method

.method public getHolderTargets()Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation

    .line 212
    invoke-virtual {p0}, Landroid/hardware/camera2/legacy/RequestHolder;->getRequest()Landroid/hardware/camera2/CaptureRequest;

    move-result-object p0

    invoke-virtual {p0}, Landroid/hardware/camera2/CaptureRequest;->getTargets()Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public getRequest()Landroid/hardware/camera2/CaptureRequest;
    .locals 0

    .line 205
    iget-object p0, p0, Landroid/hardware/camera2/legacy/RequestHolder;->mRequest:Landroid/hardware/camera2/CaptureRequest;

    return-object p0
.end method

.method public getRequestId()I
    .locals 0

    .line 177
    iget p0, p0, Landroid/hardware/camera2/legacy/RequestHolder;->mRequestId:I

    return p0
.end method

.method public getSubsequeceId()I
    .locals 0

    .line 191
    iget p0, p0, Landroid/hardware/camera2/legacy/RequestHolder;->mSubsequeceId:I

    return p0
.end method

.method public hasJpegTargets()Z
    .locals 0

    .line 219
    iget p0, p0, Landroid/hardware/camera2/legacy/RequestHolder;->mNumJpegTargets:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasPreviewTargets()Z
    .locals 0

    .line 227
    iget p0, p0, Landroid/hardware/camera2/legacy/RequestHolder;->mNumPreviewTargets:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isOutputAbandoned()Z
    .locals 0

    .line 281
    iget-boolean p0, p0, Landroid/hardware/camera2/legacy/RequestHolder;->mOutputAbandoned:Z

    return p0
.end method

.method public isRepeating()Z
    .locals 0

    .line 184
    iget-boolean p0, p0, Landroid/hardware/camera2/legacy/RequestHolder;->mRepeating:Z

    return p0
.end method

.method public jpegType(Landroid/view/Surface;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;
        }
    .end annotation

    .line 252
    iget-object p0, p0, Landroid/hardware/camera2/legacy/RequestHolder;->mJpegSurfaceIds:Ljava/util/Collection;

    invoke-static {p1, p0}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->containsSurfaceId(Landroid/view/Surface;Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public numJpegTargets()I
    .locals 0

    .line 234
    iget p0, p0, Landroid/hardware/camera2/legacy/RequestHolder;->mNumJpegTargets:I

    return p0
.end method

.method public numPreviewTargets()I
    .locals 0

    .line 241
    iget p0, p0, Landroid/hardware/camera2/legacy/RequestHolder;->mNumPreviewTargets:I

    return p0
.end method

.method public requestFailed()Z
    .locals 0

    .line 267
    iget-boolean p0, p0, Landroid/hardware/camera2/legacy/RequestHolder;->mFailed:Z

    return p0
.end method

.method public setOutputAbandoned()V
    .locals 1

    const/4 v0, 0x1

    .line 274
    iput-boolean v0, p0, Landroid/hardware/camera2/legacy/RequestHolder;->mOutputAbandoned:Z

    return-void
.end method
