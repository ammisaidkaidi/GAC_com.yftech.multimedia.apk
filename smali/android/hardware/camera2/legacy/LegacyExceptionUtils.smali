.class public Landroid/hardware/camera2/legacy/LegacyExceptionUtils;
.super Ljava/lang/Object;
.source "LegacyExceptionUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;
    }
.end annotation


# static fields
.field public static final ALREADY_EXISTS:I

.field public static final BAD_VALUE:I

.field public static final DEAD_OBJECT:I

.field public static final INVALID_OPERATION:I

.field public static final NO_ERROR:I = 0x0

.field public static final PERMISSION_DENIED:I

.field private static final TAG:Ljava/lang/String; = "LegacyExceptionUtils"

.field public static final TIMED_OUT:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    sget v0, Landroid/system/OsConstants;->EPERM:I

    neg-int v0, v0

    sput v0, Landroid/hardware/camera2/legacy/LegacyExceptionUtils;->PERMISSION_DENIED:I

    .line 33
    sget v0, Landroid/system/OsConstants;->EEXIST:I

    neg-int v0, v0

    sput v0, Landroid/hardware/camera2/legacy/LegacyExceptionUtils;->ALREADY_EXISTS:I

    .line 34
    sget v0, Landroid/system/OsConstants;->EINVAL:I

    neg-int v0, v0

    sput v0, Landroid/hardware/camera2/legacy/LegacyExceptionUtils;->BAD_VALUE:I

    .line 35
    sget v0, Landroid/system/OsConstants;->ENOSYS:I

    neg-int v0, v0

    sput v0, Landroid/hardware/camera2/legacy/LegacyExceptionUtils;->DEAD_OBJECT:I

    .line 36
    sget v0, Landroid/system/OsConstants;->EPIPE:I

    neg-int v0, v0

    sput v0, Landroid/hardware/camera2/legacy/LegacyExceptionUtils;->INVALID_OPERATION:I

    .line 37
    sget v0, Landroid/system/OsConstants;->ETIMEDOUT:I

    neg-int v0, v0

    sput v0, Landroid/hardware/camera2/legacy/LegacyExceptionUtils;->TIMED_OUT:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
.end method

.method public static throwOnError(I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 72
    :cond_0
    sget v0, Landroid/hardware/camera2/legacy/LegacyExceptionUtils;->BAD_VALUE:I

    if-eq p0, v0, :cond_2

    if-ltz p0, :cond_1

    return p0

    .line 77
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_2
    new-instance p0, Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;

    invoke-direct {p0}, Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;-><init>()V

    throw p0
.end method

.method public static throwOnServiceError(I)V
    .locals 3

    if-ltz p0, :cond_0

    return-void

    .line 93
    :cond_0
    sget v0, Landroid/hardware/camera2/legacy/LegacyExceptionUtils;->PERMISSION_DENIED:I

    const/4 v1, 0x4

    const/16 v2, 0xa

    if-eq p0, v0, :cond_b

    .line 96
    sget v0, Landroid/hardware/camera2/legacy/LegacyExceptionUtils;->ALREADY_EXISTS:I

    if-ne p0, v0, :cond_1

    return-void

    .line 100
    :cond_1
    sget v0, Landroid/hardware/camera2/legacy/LegacyExceptionUtils;->BAD_VALUE:I

    if-eq p0, v0, :cond_a

    .line 103
    sget v0, Landroid/hardware/camera2/legacy/LegacyExceptionUtils;->DEAD_OBJECT:I

    if-eq p0, v0, :cond_9

    .line 106
    sget v0, Landroid/hardware/camera2/legacy/LegacyExceptionUtils;->TIMED_OUT:I

    if-eq p0, v0, :cond_8

    .line 109
    sget v0, Landroid/system/OsConstants;->EACCES:I

    neg-int v0, v0

    if-eq p0, v0, :cond_7

    .line 112
    sget v0, Landroid/system/OsConstants;->EBUSY:I

    neg-int v0, v0

    if-eq p0, v0, :cond_6

    .line 115
    sget v0, Landroid/system/OsConstants;->EUSERS:I

    neg-int v0, v0

    if-eq p0, v0, :cond_5

    .line 118
    sget v0, Landroid/system/OsConstants;->ENODEV:I

    neg-int v0, v0

    if-eq p0, v0, :cond_4

    .line 121
    sget v0, Landroid/system/OsConstants;->EOPNOTSUPP:I

    neg-int v0, v0

    if-eq p0, v0, :cond_3

    .line 124
    sget v0, Landroid/hardware/camera2/legacy/LegacyExceptionUtils;->INVALID_OPERATION:I

    if-ne p0, v0, :cond_2

    const-string p0, "Illegal state encountered in camera service."

    goto :goto_0

    .line 129
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown camera device error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_3
    const/16 v1, 0x9

    const-string p0, "Deprecated camera HAL does not support this"

    goto :goto_1

    :cond_4
    const-string p0, "Camera device not available"

    goto :goto_1

    :cond_5
    const/16 v1, 0x8

    const-string p0, "Maximum number of cameras in use"

    goto :goto_1

    :cond_6
    const/4 v1, 0x7

    const-string p0, "Camera already in use"

    goto :goto_1

    :cond_7
    const/4 v1, 0x6

    const-string p0, "Camera disabled by policy"

    goto :goto_1

    :cond_8
    const-string p0, "Operation timed out in camera service"

    :goto_0
    move v1, v2

    goto :goto_1

    :cond_9
    const-string p0, "Camera service not available"

    goto :goto_1

    :cond_a
    const/4 v1, 0x3

    const-string p0, "Bad argument passed to camera service"

    goto :goto_1

    :cond_b
    const/4 v1, 0x1

    const-string p0, "Lacking privileges to access camera service"

    .line 132
    :goto_1
    new-instance v0, Landroid/os/ServiceSpecificException;

    invoke-direct {v0, v1, p0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v0
.end method
