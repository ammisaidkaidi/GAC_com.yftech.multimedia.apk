.class public Landroid/hardware/camera2/CaptureFailure;
.super Ljava/lang/Object;
.source "CaptureFailure.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/CaptureFailure$FailureReason;
    }
.end annotation


# static fields
.field public static final REASON_ERROR:I = 0x0

.field public static final REASON_FLUSHED:I = 0x1


# instance fields
.field private final mDropped:Z

.field private final mFrameNumber:J

.field private final mReason:I

.field private final mRequest:Landroid/hardware/camera2/CaptureRequest;

.field private final mSequenceId:I


# direct methods
.method public constructor <init>(Landroid/hardware/camera2/CaptureRequest;IZIJ)V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Landroid/hardware/camera2/CaptureFailure;->mRequest:Landroid/hardware/camera2/CaptureRequest;

    .line 71
    iput p2, p0, Landroid/hardware/camera2/CaptureFailure;->mReason:I

    .line 72
    iput-boolean p3, p0, Landroid/hardware/camera2/CaptureFailure;->mDropped:Z

    .line 73
    iput p4, p0, Landroid/hardware/camera2/CaptureFailure;->mSequenceId:I

    .line 74
    iput-wide p5, p0, Landroid/hardware/camera2/CaptureFailure;->mFrameNumber:J

    return-void
.end method


# virtual methods
.method public getFrameNumber()J
    .locals 2

    .line 115
    iget-wide v0, p0, Landroid/hardware/camera2/CaptureFailure;->mFrameNumber:J

    return-wide v0
.end method

.method public getReason()I
    .locals 0

    .line 129
    iget p0, p0, Landroid/hardware/camera2/CaptureFailure;->mReason:I

    return p0
.end method

.method public getRequest()Landroid/hardware/camera2/CaptureRequest;
    .locals 0

    .line 99
    iget-object p0, p0, Landroid/hardware/camera2/CaptureFailure;->mRequest:Landroid/hardware/camera2/CaptureRequest;

    return-object p0
.end method

.method public getSequenceId()I
    .locals 0

    .line 156
    iget p0, p0, Landroid/hardware/camera2/CaptureFailure;->mSequenceId:I

    return p0
.end method

.method public wasImageCaptured()Z
    .locals 0

    .line 141
    iget-boolean p0, p0, Landroid/hardware/camera2/CaptureFailure;->mDropped:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
