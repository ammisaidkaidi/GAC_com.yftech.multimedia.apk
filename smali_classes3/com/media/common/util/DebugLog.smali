.class public Lcom/media/common/util/DebugLog;
.super Ljava/lang/Object;
.source "DebugLog.java"


# static fields
.field private static className:Ljava/lang/String;

.field private static lineNumber:I

.field private static methodName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createLog(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 43
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "["

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 45
    sget-object v1, Lcom/media/common/util/DebugLog;->methodName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "()"

    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " line:"

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 48
    sget v1, Lcom/media/common/util/DebugLog;->lineNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, "] "

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 50
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d(Ljava/lang/String;)V
    .locals 1

    .line 87
    invoke-static {}, Lcom/media/common/util/DebugLog;->isDebuggable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 90
    :cond_0
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/DebugLog;->getMethodNames([Ljava/lang/StackTraceElement;)V

    .line 91
    sget-object v0, Lcom/media/common/util/DebugLog;->className:Ljava/lang/String;

    invoke-static {p0}, Lcom/media/common/util/DebugLog;->createLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 1

    .line 69
    invoke-static {}, Lcom/media/common/util/DebugLog;->isDebuggable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 72
    :cond_0
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/DebugLog;->getMethodNames([Ljava/lang/StackTraceElement;)V

    .line 73
    sget-object v0, Lcom/media/common/util/DebugLog;->className:Ljava/lang/String;

    invoke-static {p0}, Lcom/media/common/util/DebugLog;->createLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static getMethodNames([Ljava/lang/StackTraceElement;)V
    .locals 3

    const/4 v0, 0x1

    .line 62
    aget-object v1, p0, v0

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\."

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    sput-object v1, Lcom/media/common/util/DebugLog;->className:Ljava/lang/String;

    .line 63
    aget-object v1, p0, v0

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/media/common/util/DebugLog;->methodName:Ljava/lang/String;

    .line 64
    aget-object p0, p0, v0

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result p0

    sput p0, Lcom/media/common/util/DebugLog;->lineNumber:I

    return-void
.end method

.method public static i(Ljava/lang/String;)V
    .locals 1

    .line 78
    invoke-static {}, Lcom/media/common/util/DebugLog;->isDebuggable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 81
    :cond_0
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/DebugLog;->getMethodNames([Ljava/lang/StackTraceElement;)V

    .line 82
    sget-object v0, Lcom/media/common/util/DebugLog;->className:Ljava/lang/String;

    invoke-static {p0}, Lcom/media/common/util/DebugLog;->createLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static isDebuggable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static v(Ljava/lang/String;)V
    .locals 1

    .line 96
    invoke-static {}, Lcom/media/common/util/DebugLog;->isDebuggable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 99
    :cond_0
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/DebugLog;->getMethodNames([Ljava/lang/StackTraceElement;)V

    .line 100
    sget-object v0, Lcom/media/common/util/DebugLog;->className:Ljava/lang/String;

    invoke-static {p0}, Lcom/media/common/util/DebugLog;->createLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .locals 1

    .line 105
    invoke-static {}, Lcom/media/common/util/DebugLog;->isDebuggable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 108
    :cond_0
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/DebugLog;->getMethodNames([Ljava/lang/StackTraceElement;)V

    .line 109
    sget-object v0, Lcom/media/common/util/DebugLog;->className:Ljava/lang/String;

    invoke-static {p0}, Lcom/media/common/util/DebugLog;->createLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static wtf(Ljava/lang/String;)V
    .locals 1

    .line 114
    invoke-static {}, Lcom/media/common/util/DebugLog;->isDebuggable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 117
    :cond_0
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/DebugLog;->getMethodNames([Ljava/lang/StackTraceElement;)V

    .line 118
    sget-object v0, Lcom/media/common/util/DebugLog;->className:Ljava/lang/String;

    invoke-static {p0}, Lcom/media/common/util/DebugLog;->createLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
