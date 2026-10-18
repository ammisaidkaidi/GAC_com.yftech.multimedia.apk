.class public abstract Landroid/opengl/EGLObjectHandle;
.super Ljava/lang/Object;
.source "EGLObjectHandle.java"


# instance fields
.field private final mHandle:J


# direct methods
.method protected constructor <init>(I)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    int-to-long v0, p1

    .line 33
    iput-wide v0, p0, Landroid/opengl/EGLObjectHandle;->mHandle:J

    return-void
.end method

.method protected constructor <init>(J)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-wide p1, p0, Landroid/opengl/EGLObjectHandle;->mHandle:J

    return-void
.end method


# virtual methods
.method public getHandle()I
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 44
    iget-wide v0, p0, Landroid/opengl/EGLObjectHandle;->mHandle:J

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    iget-wide v2, p0, Landroid/opengl/EGLObjectHandle;->mHandle:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 47
    iget-wide v0, p0, Landroid/opengl/EGLObjectHandle;->mHandle:J

    long-to-int p0, v0

    return p0

    .line 45
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public getNativeHandle()J
    .locals 2

    .line 58
    iget-wide v0, p0, Landroid/opengl/EGLObjectHandle;->mHandle:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    .line 67
    iget-wide v0, p0, Landroid/opengl/EGLObjectHandle;->mHandle:J

    iget-wide v2, p0, Landroid/opengl/EGLObjectHandle;->mHandle:J

    const/16 p0, 0x20

    ushr-long/2addr v2, p0

    xor-long/2addr v0, v2

    long-to-int p0, v0

    const/16 v0, 0x20f

    add-int/2addr v0, p0

    return v0
.end method
