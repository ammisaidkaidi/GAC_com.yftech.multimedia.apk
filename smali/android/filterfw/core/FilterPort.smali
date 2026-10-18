.class public abstract Landroid/filterfw/core/FilterPort;
.super Ljava/lang/Object;
.source "FilterPort.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FilterPort"


# instance fields
.field protected mChecksType:Z

.field protected mFilter:Landroid/filterfw/core/Filter;

.field protected mIsBlocking:Z

.field protected mIsOpen:Z

.field private mLogVerbose:Z

.field protected mName:Ljava/lang/String;

.field protected mPortFormat:Landroid/filterfw/core/FrameFormat;


# direct methods
.method public constructor <init>(Landroid/filterfw/core/Filter;Ljava/lang/String;)V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 32
    iput-boolean v0, p0, Landroid/filterfw/core/FilterPort;->mIsBlocking:Z

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Landroid/filterfw/core/FilterPort;->mIsOpen:Z

    .line 34
    iput-boolean v0, p0, Landroid/filterfw/core/FilterPort;->mChecksType:Z

    .line 39
    iput-object p2, p0, Landroid/filterfw/core/FilterPort;->mName:Ljava/lang/String;

    .line 40
    iput-object p1, p0, Landroid/filterfw/core/FilterPort;->mFilter:Landroid/filterfw/core/Filter;

    const-string p1, "FilterPort"

    const/4 p2, 0x2

    .line 41
    invoke-static {p1, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    iput-boolean p1, p0, Landroid/filterfw/core/FilterPort;->mLogVerbose:Z

    return-void
.end method


# virtual methods
.method protected assertPortIsOpen()V
    .locals 3

    .line 113
    invoke-virtual {p0}, Landroid/filterfw/core/FilterPort;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 114
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal operation on closed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "!"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected checkFrameManager(Landroid/filterfw/core/Frame;Landroid/filterfw/core/FilterContext;)V
    .locals 1

    .line 128
    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 129
    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object p0

    invoke-virtual {p2}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object p2

    if-ne p0, p2, :cond_0

    goto :goto_0

    .line 130
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Frame "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is managed by foreign FrameManager! "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method protected checkFrameType(Landroid/filterfw/core/Frame;Z)V
    .locals 2

    .line 119
    iget-boolean v0, p0, Landroid/filterfw/core/FilterPort;->mChecksType:Z

    if-nez v0, :cond_0

    if-eqz p2, :cond_2

    :cond_0
    iget-object p2, p0, Landroid/filterfw/core/FilterPort;->mPortFormat:Landroid/filterfw/core/FrameFormat;

    if-eqz p2, :cond_2

    .line 121
    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object p2

    iget-object v0, p0, Landroid/filterfw/core/FilterPort;->mPortFormat:Landroid/filterfw/core/FrameFormat;

    invoke-virtual {p2, v0}, Landroid/filterfw/core/FrameFormat;->isCompatibleWith(Landroid/filterfw/core/FrameFormat;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    .line 122
    :cond_1
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Frame passed to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " is of incorrect type! Expected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/filterfw/core/FilterPort;->mPortFormat:Landroid/filterfw/core/FrameFormat;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " but got "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    :goto_0
    return-void
.end method

.method public abstract clear()V
.end method

.method public close()V
    .locals 3

    .line 80
    iget-boolean v0, p0, Landroid/filterfw/core/FilterPort;->mIsOpen:Z

    if-eqz v0, :cond_0

    .line 81
    iget-boolean v0, p0, Landroid/filterfw/core/FilterPort;->mLogVerbose:Z

    if-eqz v0, :cond_0

    const-string v0, "FilterPort"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Closing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    .line 83
    iput-boolean v0, p0, Landroid/filterfw/core/FilterPort;->mIsOpen:Z

    return-void
.end method

.method public abstract filterMustClose()Z
.end method

.method public getFilter()Landroid/filterfw/core/Filter;
    .locals 0

    .line 57
    iget-object p0, p0, Landroid/filterfw/core/FilterPort;->mFilter:Landroid/filterfw/core/Filter;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 61
    iget-object p0, p0, Landroid/filterfw/core/FilterPort;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public getPortFormat()Landroid/filterfw/core/FrameFormat;
    .locals 0

    .line 49
    iget-object p0, p0, Landroid/filterfw/core/FilterPort;->mPortFormat:Landroid/filterfw/core/FrameFormat;

    return-object p0
.end method

.method public abstract hasFrame()Z
.end method

.method public isAttached()Z
    .locals 0

    .line 45
    iget-object p0, p0, Landroid/filterfw/core/FilterPort;->mFilter:Landroid/filterfw/core/Filter;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isBlocking()Z
    .locals 0

    .line 91
    iget-boolean p0, p0, Landroid/filterfw/core/FilterPort;->mIsBlocking:Z

    return p0
.end method

.method public isOpen()Z
    .locals 0

    .line 87
    iget-boolean p0, p0, Landroid/filterfw/core/FilterPort;->mIsOpen:Z

    return p0
.end method

.method public abstract isReady()Z
.end method

.method public open()V
    .locals 3

    .line 73
    iget-boolean v0, p0, Landroid/filterfw/core/FilterPort;->mIsOpen:Z

    if-nez v0, :cond_0

    .line 74
    iget-boolean v0, p0, Landroid/filterfw/core/FilterPort;->mLogVerbose:Z

    if-eqz v0, :cond_0

    const-string v0, "FilterPort"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Opening "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    .line 76
    iput-boolean v0, p0, Landroid/filterfw/core/FilterPort;->mIsOpen:Z

    return-void
.end method

.method public abstract pullFrame()Landroid/filterfw/core/Frame;
.end method

.method public abstract pushFrame(Landroid/filterfw/core/Frame;)V
.end method

.method public setBlocking(Z)V
    .locals 0

    .line 65
    iput-boolean p1, p0, Landroid/filterfw/core/FilterPort;->mIsBlocking:Z

    return-void
.end method

.method public setChecksType(Z)V
    .locals 0

    .line 69
    iput-boolean p1, p0, Landroid/filterfw/core/FilterPort;->mChecksType:Z

    return-void
.end method

.method public abstract setFrame(Landroid/filterfw/core/Frame;)V
.end method

.method public setPortFormat(Landroid/filterfw/core/FrameFormat;)V
    .locals 0

    .line 53
    iput-object p1, p0, Landroid/filterfw/core/FilterPort;->mPortFormat:Landroid/filterfw/core/FrameFormat;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "port \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/filterfw/core/FilterPort;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/filterfw/core/FilterPort;->mFilter:Landroid/filterfw/core/Filter;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
