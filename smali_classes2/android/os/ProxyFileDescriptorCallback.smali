.class public abstract Landroid/os/ProxyFileDescriptorCallback;
.super Ljava/lang/Object;
.source "ProxyFileDescriptorCallback.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFsync()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 89
    new-instance p0, Landroid/system/ErrnoException;

    sget v0, Landroid/system/OsConstants;->EINVAL:I

    const-string v1, "onFsync"

    invoke-direct {p0, v1, v0}, Landroid/system/ErrnoException;-><init>(Ljava/lang/String;I)V

    throw p0
.end method

.method public onGetSize()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 50
    new-instance p0, Landroid/system/ErrnoException;

    sget v0, Landroid/system/OsConstants;->EBADF:I

    const-string v1, "onGetSize"

    invoke-direct {p0, v1, v0}, Landroid/system/ErrnoException;-><init>(Ljava/lang/String;I)V

    throw p0
.end method

.method public onRead(JI[B)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 65
    new-instance p0, Landroid/system/ErrnoException;

    sget p1, Landroid/system/OsConstants;->EBADF:I

    const-string p2, "onRead"

    invoke-direct {p0, p2, p1}, Landroid/system/ErrnoException;-><init>(Ljava/lang/String;I)V

    throw p0
.end method

.method public abstract onRelease()V
.end method

.method public onWrite(JI[B)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 79
    new-instance p0, Landroid/system/ErrnoException;

    sget p1, Landroid/system/OsConstants;->EBADF:I

    const-string p2, "onWrite"

    invoke-direct {p0, p2, p1}, Landroid/system/ErrnoException;-><init>(Ljava/lang/String;I)V

    throw p0
.end method
