.class public abstract Landroid/filterfw/core/Frame;
.super Ljava/lang/Object;
.source "Frame.java"


# static fields
.field public static final NO_BINDING:I = 0x0

.field public static final TIMESTAMP_NOT_SET:J = -0x2L

.field public static final TIMESTAMP_UNKNOWN:J = -0x1L


# instance fields
.field private mBindingId:J

.field private mBindingType:I

.field private mFormat:Landroid/filterfw/core/FrameFormat;

.field private mFrameManager:Landroid/filterfw/core/FrameManager;

.field private mReadOnly:Z

.field private mRefCount:I

.field private mReusable:Z

.field private mTimestamp:J


# direct methods
.method constructor <init>(Landroid/filterfw/core/FrameFormat;Landroid/filterfw/core/FrameManager;)V
    .locals 2

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Landroid/filterfw/core/Frame;->mReadOnly:Z

    .line 39
    iput-boolean v0, p0, Landroid/filterfw/core/Frame;->mReusable:Z

    const/4 v1, 0x1

    .line 40
    iput v1, p0, Landroid/filterfw/core/Frame;->mRefCount:I

    .line 41
    iput v0, p0, Landroid/filterfw/core/Frame;->mBindingType:I

    const-wide/16 v0, 0x0

    .line 42
    iput-wide v0, p0, Landroid/filterfw/core/Frame;->mBindingId:J

    const-wide/16 v0, -0x2

    .line 43
    iput-wide v0, p0, Landroid/filterfw/core/Frame;->mTimestamp:J

    .line 46
    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->mutableCopy()Landroid/filterfw/core/MutableFrameFormat;

    move-result-object p1

    iput-object p1, p0, Landroid/filterfw/core/Frame;->mFormat:Landroid/filterfw/core/FrameFormat;

    .line 47
    iput-object p2, p0, Landroid/filterfw/core/Frame;->mFrameManager:Landroid/filterfw/core/FrameManager;

    return-void
.end method

.method constructor <init>(Landroid/filterfw/core/FrameFormat;Landroid/filterfw/core/FrameManager;IJ)V
    .locals 2

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Landroid/filterfw/core/Frame;->mReadOnly:Z

    .line 39
    iput-boolean v0, p0, Landroid/filterfw/core/Frame;->mReusable:Z

    const/4 v1, 0x1

    .line 40
    iput v1, p0, Landroid/filterfw/core/Frame;->mRefCount:I

    .line 41
    iput v0, p0, Landroid/filterfw/core/Frame;->mBindingType:I

    const-wide/16 v0, 0x0

    .line 42
    iput-wide v0, p0, Landroid/filterfw/core/Frame;->mBindingId:J

    const-wide/16 v0, -0x2

    .line 43
    iput-wide v0, p0, Landroid/filterfw/core/Frame;->mTimestamp:J

    .line 51
    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->mutableCopy()Landroid/filterfw/core/MutableFrameFormat;

    move-result-object p1

    iput-object p1, p0, Landroid/filterfw/core/Frame;->mFormat:Landroid/filterfw/core/FrameFormat;

    .line 52
    iput-object p2, p0, Landroid/filterfw/core/Frame;->mFrameManager:Landroid/filterfw/core/FrameManager;

    .line 53
    iput p3, p0, Landroid/filterfw/core/Frame;->mBindingType:I

    .line 54
    iput-wide p4, p0, Landroid/filterfw/core/Frame;->mBindingId:J

    return-void
.end method

.method protected static convertBitmapToRGBA(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 2

    .line 181
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v0, v1, :cond_0

    return-object p0

    .line 184
    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 187
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    if-ne v0, v1, :cond_1

    return-object p0

    .line 188
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Unsupported row byte count in bitmap!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 186
    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Error converting bitmap to RGBA!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method protected assertFrameMutable()V
    .locals 1

    .line 162
    invoke-virtual {p0}, Landroid/filterfw/core/Frame;->isReadOnly()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 163
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Attempting to modify read-only frame!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method final decRefCount()I
    .locals 1

    .line 223
    iget v0, p0, Landroid/filterfw/core/Frame;->mRefCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/filterfw/core/Frame;->mRefCount:I

    .line 224
    iget p0, p0, Landroid/filterfw/core/Frame;->mRefCount:I

    return p0
.end method

.method public getBindingId()J
    .locals 2

    .line 74
    iget-wide v0, p0, Landroid/filterfw/core/Frame;->mBindingId:J

    return-wide v0
.end method

.method public getBindingType()I
    .locals 0

    .line 70
    iget p0, p0, Landroid/filterfw/core/Frame;->mBindingType:I

    return p0
.end method

.method public abstract getBitmap()Landroid/graphics/Bitmap;
.end method

.method public getCapacity()I
    .locals 0

    .line 62
    invoke-virtual {p0}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object p0

    invoke-virtual {p0}, Landroid/filterfw/core/FrameFormat;->getSize()I

    move-result p0

    return p0
.end method

.method public abstract getData()Ljava/nio/ByteBuffer;
.end method

.method public abstract getFloats()[F
.end method

.method public getFormat()Landroid/filterfw/core/FrameFormat;
    .locals 0

    .line 58
    iget-object p0, p0, Landroid/filterfw/core/Frame;->mFormat:Landroid/filterfw/core/FrameFormat;

    return-object p0
.end method

.method public getFrameManager()Landroid/filterfw/core/FrameManager;
    .locals 0

    .line 158
    iget-object p0, p0, Landroid/filterfw/core/Frame;->mFrameManager:Landroid/filterfw/core/FrameManager;

    return-object p0
.end method

.method public abstract getInts()[I
.end method

.method public abstract getObjectValue()Ljava/lang/Object;
.end method

.method public getRefCount()I
    .locals 0

    .line 138
    iget p0, p0, Landroid/filterfw/core/Frame;->mRefCount:I

    return p0
.end method

.method public getTimestamp()J
    .locals 2

    .line 126
    iget-wide v0, p0, Landroid/filterfw/core/Frame;->mTimestamp:J

    return-wide v0
.end method

.method protected abstract hasNativeAllocation()Z
.end method

.method final incRefCount()I
    .locals 1

    .line 218
    iget v0, p0, Landroid/filterfw/core/Frame;->mRefCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/filterfw/core/Frame;->mRefCount:I

    .line 219
    iget p0, p0, Landroid/filterfw/core/Frame;->mRefCount:I

    return p0
.end method

.method public isReadOnly()Z
    .locals 0

    .line 66
    iget-boolean p0, p0, Landroid/filterfw/core/Frame;->mReadOnly:Z

    return p0
.end method

.method final isReusable()Z
    .locals 0

    .line 228
    iget-boolean p0, p0, Landroid/filterfw/core/Frame;->mReusable:Z

    return p0
.end method

.method final markReadOnly()V
    .locals 1

    const/4 v0, 0x1

    .line 232
    iput-boolean v0, p0, Landroid/filterfw/core/Frame;->mReadOnly:Z

    return-void
.end method

.method protected onFrameFetch()V
    .locals 0

    return-void
.end method

.method protected onFrameStore()V
    .locals 0

    return-void
.end method

.method public release()Landroid/filterfw/core/Frame;
    .locals 1

    .line 142
    iget-object v0, p0, Landroid/filterfw/core/Frame;->mFrameManager:Landroid/filterfw/core/FrameManager;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Landroid/filterfw/core/Frame;->mFrameManager:Landroid/filterfw/core/FrameManager;

    invoke-virtual {v0, p0}, Landroid/filterfw/core/FrameManager;->releaseFrame(Landroid/filterfw/core/Frame;)Landroid/filterfw/core/Frame;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p0
.end method

.method protected abstract releaseNativeAllocation()V
.end method

.method protected requestResize([I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected reset(Landroid/filterfw/core/FrameFormat;)V
    .locals 0

    .line 195
    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->mutableCopy()Landroid/filterfw/core/MutableFrameFormat;

    move-result-object p1

    iput-object p1, p0, Landroid/filterfw/core/Frame;->mFormat:Landroid/filterfw/core/FrameFormat;

    const/4 p1, 0x0

    .line 196
    iput-boolean p1, p0, Landroid/filterfw/core/Frame;->mReadOnly:Z

    const/4 p1, 0x1

    .line 197
    iput p1, p0, Landroid/filterfw/core/Frame;->mRefCount:I

    return-void
.end method

.method public retain()Landroid/filterfw/core/Frame;
    .locals 1

    .line 150
    iget-object v0, p0, Landroid/filterfw/core/Frame;->mFrameManager:Landroid/filterfw/core/FrameManager;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Landroid/filterfw/core/Frame;->mFrameManager:Landroid/filterfw/core/FrameManager;

    invoke-virtual {v0, p0}, Landroid/filterfw/core/FrameManager;->retainFrame(Landroid/filterfw/core/Frame;)Landroid/filterfw/core/Frame;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p0
.end method

.method public abstract setBitmap(Landroid/graphics/Bitmap;)V
.end method

.method public setData(Ljava/nio/ByteBuffer;)V
    .locals 2

    .line 108
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Landroid/filterfw/core/Frame;->setData(Ljava/nio/ByteBuffer;II)V

    return-void
.end method

.method public abstract setData(Ljava/nio/ByteBuffer;II)V
.end method

.method public setData([BII)V
    .locals 0

    .line 112
    invoke-static {p1, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/filterfw/core/Frame;->setData(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public setDataFromFrame(Landroid/filterfw/core/Frame;)V
    .locals 0

    .line 130
    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->getData()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/filterfw/core/Frame;->setData(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public abstract setFloats([F)V
.end method

.method protected setFormat(Landroid/filterfw/core/FrameFormat;)V
    .locals 0

    .line 172
    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->mutableCopy()Landroid/filterfw/core/MutableFrameFormat;

    move-result-object p1

    iput-object p1, p0, Landroid/filterfw/core/Frame;->mFormat:Landroid/filterfw/core/FrameFormat;

    return-void
.end method

.method protected setGenericObjectValue(Ljava/lang/Object;)V
    .locals 2

    .line 176
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot set object value of unsupported type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract setInts([I)V
.end method

.method public setObjectValue(Ljava/lang/Object;)V
    .locals 1

    .line 78
    invoke-virtual {p0}, Landroid/filterfw/core/Frame;->assertFrameMutable()V

    .line 82
    instance-of v0, p1, [I

    if-eqz v0, :cond_0

    .line 83
    check-cast p1, [I

    invoke-virtual {p0, p1}, Landroid/filterfw/core/Frame;->setInts([I)V

    goto :goto_0

    .line 84
    :cond_0
    instance-of v0, p1, [F

    if-eqz v0, :cond_1

    .line 85
    check-cast p1, [F

    invoke-virtual {p0, p1}, Landroid/filterfw/core/Frame;->setFloats([F)V

    goto :goto_0

    .line 86
    :cond_1
    instance-of v0, p1, Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_2

    .line 87
    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1}, Landroid/filterfw/core/Frame;->setData(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 88
    :cond_2
    instance-of v0, p1, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 89
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Landroid/filterfw/core/Frame;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 91
    :cond_3
    invoke-virtual {p0, p1}, Landroid/filterfw/core/Frame;->setGenericObjectValue(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method protected setReusable(Z)V
    .locals 0

    .line 168
    iput-boolean p1, p0, Landroid/filterfw/core/Frame;->mReusable:Z

    return-void
.end method

.method public setTimestamp(J)V
    .locals 0

    .line 122
    iput-wide p1, p0, Landroid/filterfw/core/Frame;->mTimestamp:J

    return-void
.end method
