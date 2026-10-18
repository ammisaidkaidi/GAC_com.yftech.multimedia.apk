.class public Lcom/media/common/util/LogUtil;
.super Ljava/lang/Object;
.source "LogUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/media/common/util/LogUtil$ReusableFormatter;,
        Lcom/media/common/util/LogUtil$CustomLogger;
    }
.end annotation


# static fields
.field public static final LOG_PATH:Ljava/lang/String; = "/mnt/udisk"

.field public static allowD:Z = false

.field public static allowE:Z = false

.field public static allowI:Z = false

.field public static allowV:Z = false

.field public static allowW:Z = false

.field public static allowWtf:Z = false

.field public static customLogger:Lcom/media/common/util/LogUtil$CustomLogger; = null

.field public static customTagPrefix:Ljava/lang/String; = "YFMediaPlayer"

.field private static formatter:Ljava/text/DateFormat; = null

.field public static isSaveLog:Z = false

.field private static final thread_local_formatter:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/media/common/util/LogUtil$ReusableFormatter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 28
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd"

    sget-object v2, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/media/common/util/LogUtil;->formatter:Ljava/text/DateFormat;

    const/4 v0, 0x1

    .line 34
    sput-boolean v0, Lcom/media/common/util/LogUtil;->allowD:Z

    .line 35
    sput-boolean v0, Lcom/media/common/util/LogUtil;->allowE:Z

    .line 36
    sput-boolean v0, Lcom/media/common/util/LogUtil;->allowI:Z

    .line 37
    sput-boolean v0, Lcom/media/common/util/LogUtil;->allowV:Z

    .line 38
    sput-boolean v0, Lcom/media/common/util/LogUtil;->allowW:Z

    .line 39
    sput-boolean v0, Lcom/media/common/util/LogUtil;->allowWtf:Z

    .line 386
    new-instance v0, Lcom/media/common/util/LogUtil$1;

    invoke-direct {v0}, Lcom/media/common/util/LogUtil$1;-><init>()V

    sput-object v0, Lcom/media/common/util/LogUtil;->thread_local_formatter:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createDipPath(Ljava/lang/String;)V
    .locals 2

    const-string v0, "/"

    .line 355
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 356
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 357
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 358
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 359
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 361
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 363
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 2

    .line 86
    sget-boolean v0, Lcom/media/common/util/LogUtil;->allowD:Z

    if-nez v0, :cond_0

    return-void

    .line 90
    :cond_0
    invoke-static {}, Lcom/media/common/util/LogUtil;->getCallerStackTraceElement()Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 91
    invoke-static {v0}, Lcom/media/common/util/LogUtil;->generateTag(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v0

    .line 93
    sget-object v1, Lcom/media/common/util/LogUtil;->customLogger:Lcom/media/common/util/LogUtil$CustomLogger;

    if-eqz v1, :cond_1

    .line 94
    sget-object v1, Lcom/media/common/util/LogUtil;->customLogger:Lcom/media/common/util/LogUtil$CustomLogger;

    invoke-interface {v1, v0, p0}, Lcom/media/common/util/LogUtil$CustomLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 96
    :cond_1
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 101
    sget-boolean v0, Lcom/media/common/util/LogUtil;->allowD:Z

    if-nez v0, :cond_0

    return-void

    .line 105
    :cond_0
    invoke-static {}, Lcom/media/common/util/LogUtil;->getCallerStackTraceElement()Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 106
    invoke-static {v0}, Lcom/media/common/util/LogUtil;->generateTag(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v0

    .line 108
    sget-object v1, Lcom/media/common/util/LogUtil;->customLogger:Lcom/media/common/util/LogUtil$CustomLogger;

    if-eqz v1, :cond_1

    .line 109
    sget-object v1, Lcom/media/common/util/LogUtil;->customLogger:Lcom/media/common/util/LogUtil$CustomLogger;

    invoke-interface {v1, v0, p0, p1}, Lcom/media/common/util/LogUtil$CustomLogger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 111
    :cond_1
    invoke-static {v0, p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 2

    .line 116
    sget-boolean v0, Lcom/media/common/util/LogUtil;->allowE:Z

    if-nez v0, :cond_0

    return-void

    .line 120
    :cond_0
    invoke-static {}, Lcom/media/common/util/LogUtil;->getCallerStackTraceElement()Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 121
    invoke-static {v0}, Lcom/media/common/util/LogUtil;->generateTag(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v0

    .line 123
    sget-object v1, Lcom/media/common/util/LogUtil;->customLogger:Lcom/media/common/util/LogUtil$CustomLogger;

    if-eqz v1, :cond_1

    .line 124
    sget-object v1, Lcom/media/common/util/LogUtil;->customLogger:Lcom/media/common/util/LogUtil$CustomLogger;

    invoke-interface {v1, v0, p0}, Lcom/media/common/util/LogUtil$CustomLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 126
    :cond_1
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :goto_0
    sget-boolean v1, Lcom/media/common/util/LogUtil;->isSaveLog:Z

    if-eqz v1, :cond_2

    const-string v1, "/mnt/udisk"

    .line 129
    invoke-static {v1, v0, p0}, Lcom/media/common/util/LogUtil;->point(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 152
    sget-boolean v0, Lcom/media/common/util/LogUtil;->allowE:Z

    if-nez v0, :cond_0

    return-void

    .line 156
    :cond_0
    invoke-static {}, Lcom/media/common/util/LogUtil;->getCallerStackTraceElement()Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 157
    invoke-static {v0}, Lcom/media/common/util/LogUtil;->generateTag(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v0

    .line 159
    sget-object v1, Lcom/media/common/util/LogUtil;->customLogger:Lcom/media/common/util/LogUtil$CustomLogger;

    if-eqz v1, :cond_1

    .line 160
    sget-object v1, Lcom/media/common/util/LogUtil;->customLogger:Lcom/media/common/util/LogUtil$CustomLogger;

    invoke-interface {v1, v0, p0, p1}, Lcom/media/common/util/LogUtil$CustomLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 162
    :cond_1
    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 164
    :goto_0
    sget-boolean p0, Lcom/media/common/util/LogUtil;->isSaveLog:Z

    if-eqz p0, :cond_2

    const-string p0, "/mnt/udisk"

    .line 165
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcom/media/common/util/LogUtil;->point(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public static e(Ljava/lang/Throwable;)V
    .locals 3

    .line 134
    sget-boolean v0, Lcom/media/common/util/LogUtil;->allowE:Z

    if-nez v0, :cond_0

    return-void

    .line 138
    :cond_0
    invoke-static {}, Lcom/media/common/util/LogUtil;->getCallerStackTraceElement()Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 139
    invoke-static {v0}, Lcom/media/common/util/LogUtil;->generateTag(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v0

    .line 141
    sget-object v1, Lcom/media/common/util/LogUtil;->customLogger:Lcom/media/common/util/LogUtil$CustomLogger;

    if-eqz v1, :cond_1

    .line 142
    sget-object v1, Lcom/media/common/util/LogUtil;->customLogger:Lcom/media/common/util/LogUtil$CustomLogger;

    const-string v2, "error"

    invoke-interface {v1, v0, v2, p0}, Lcom/media/common/util/LogUtil$CustomLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 144
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 146
    :goto_0
    sget-boolean v1, Lcom/media/common/util/LogUtil;->isSaveLog:Z

    if-eqz v1, :cond_2

    const-string v1, "/mnt/udisk"

    .line 147
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, v0, p0}, Lcom/media/common/util/LogUtil;->point(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public static varargs format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 393
    sget-object v0, Lcom/media/common/util/LogUtil;->thread_local_formatter:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/media/common/util/LogUtil$ReusableFormatter;

    .line 394
    invoke-virtual {v0, p0, p1}, Lcom/media/common/util/LogUtil$ReusableFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static generateTag(Ljava/lang/StackTraceElement;)Ljava/lang/String;
    .locals 6

    const-string v0, "%s.%s(Line:%d)"

    .line 43
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "."

    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 45
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v3

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x2

    aput-object p0, v4, v1

    invoke-static {v2, v0, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 46
    sget-object v0, Lcom/media/common/util/LogUtil;->customTagPrefix:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/media/common/util/LogUtil;->customTagPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static getCallerStackTraceElement()Ljava/lang/StackTraceElement;
    .locals 2

    .line 320
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x4

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static i(Ljava/lang/String;)V
    .locals 2

    .line 170
    sget-boolean v0, Lcom/media/common/util/LogUtil;->allowI:Z

    if-nez v0, :cond_0

    return-void

    .line 174
    :cond_0
    invoke-static {}, Lcom/media/common/util/LogUtil;->getCallerStackTraceElement()Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 175
    invoke-static {v0}, Lcom/media/common/util/LogUtil;->generateTag(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v0

    .line 177
    sget-object v1, Lcom/media/common/util/LogUtil;->customLogger:Lcom/media/common/util/LogUtil$CustomLogger;

    if-eqz v1, :cond_1

    .line 178
    sget-object v1, Lcom/media/common/util/LogUtil;->customLogger:Lcom/media/common/util/LogUtil$CustomLogger;

    invoke-interface {v1, v0, p0}, Lcom/media/common/util/LogUtil$CustomLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 180
    :cond_1
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 185
    sget-boolean v0, Lcom/media/common/util/LogUtil;->allowI:Z

    if-nez v0, :cond_0

    return-void

    .line 189
    :cond_0
    invoke-static {}, Lcom/media/common/util/LogUtil;->getCallerStackTraceElement()Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 190
    invoke-static {v0}, Lcom/media/common/util/LogUtil;->generateTag(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v0

    .line 192
    sget-object v1, Lcom/media/common/util/LogUtil;->customLogger:Lcom/media/common/util/LogUtil$CustomLogger;

    if-eqz v1, :cond_1

    .line 193
    sget-object v1, Lcom/media/common/util/LogUtil;->customLogger:Lcom/media/common/util/LogUtil$CustomLogger;

    invoke-interface {v1, v0, p0, p1}, Lcom/media/common/util/LogUtil$CustomLogger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 195
    :cond_1
    invoke-static {v0, p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private static isSDAva()Z
    .locals 2

    .line 399
    new-instance v0, Ljava/io/File;

    const-string v1, "/mnt/udisk"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public static point(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 324
    invoke-static {}, Lcom/media/common/util/LogUtil;->isSDAva()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 325
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 326
    sget-object v2, Lcom/media/common/util/LogUtil;->formatter:Ljava/text/DateFormat;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 327
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/brucelogs/naviservice-log-"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "-"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ".log"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 329
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 330
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 331
    invoke-static {p0}, Lcom/media/common/util/LogUtil;->createDipPath(Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x0

    .line 335
    :try_start_0
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    new-instance v4, Ljava/io/FileOutputStream;

    const/4 v5, 0x1

    invoke-direct {v4, v0, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-direct {v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 336
    :try_start_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\r\n"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 342
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_0
    move-exception p0

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v1, p0

    move-object p0, p1

    goto :goto_1

    :catch_1
    move-exception p1

    move-object v1, p0

    move-object p0, p1

    .line 338
    :goto_0
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_2

    .line 342
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    :catch_2
    move-exception p0

    .line 345
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catchall_1
    move-exception p0

    :goto_1
    if-eqz v1, :cond_1

    .line 342
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_2

    :catch_3
    move-exception p1

    .line 345
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 347
    :cond_1
    :goto_2
    throw p0

    :cond_2
    :goto_3
    return-void
.end method

.method public static v(Ljava/lang/String;)V
    .locals 2

    .line 200
    sget-boolean v0, Lcom/media/common/util/LogUtil;->allowV:Z

    if-nez v0, :cond_0

    return-void

    .line 204
    :cond_0
    invoke-static {}, Lcom/media/common/util/LogUtil;->getCallerStackTraceElement()Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 205
    invoke-static {v0}, Lcom/media/common/util/LogUtil;->generateTag(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v0

    .line 207
    sget-object v1, Lcom/media/common/util/LogUtil;->customLogger:Lcom/media/common/util/LogUtil$CustomLogger;

    if-eqz v1, :cond_1

    .line 208
    sget-object v1, Lcom/media/common/util/LogUtil;->customLogger:Lcom/media/common/util/LogUtil$CustomLogger;

    invoke-interface {v1, v0, p0}, Lcom/media/common/util/LogUtil$CustomLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 210
    :cond_1
    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 215
    sget-boolean v0, Lcom/media/common/util/LogUtil;->allowV:Z

    if-nez v0, :cond_0

    return-void

    .line 219
    :cond_0
    invoke-static {}, Lcom/media/common/util/LogUtil;->getCallerStackTraceElement()Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 220
    invoke-static {v0}, Lcom/media/common/util/LogUtil;->generateTag(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v0

    .line 222
    sget-object v1, Lcom/media/common/util/LogUtil;->customLogger:Lcom/media/common/util/LogUtil$CustomLogger;

    if-eqz v1, :cond_1

    .line 223
    sget-object v1, Lcom/media/common/util/LogUtil;->customLogger:Lcom/media/common/util/LogUtil$CustomLogger;

    invoke-interface {v1, v0, p0, p1}, Lcom/media/common/util/LogUtil$CustomLogger;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 225
    :cond_1
    invoke-static {v0, p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .locals 2

    .line 230
    sget-boolean v0, Lcom/media/common/util/LogUtil;->allowW:Z

    if-nez v0, :cond_0

    return-void

    .line 234
    :cond_0
    invoke-static {}, Lcom/media/common/util/LogUtil;->getCallerStackTraceElement()Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 235
    invoke-static {v0}, Lcom/media/common/util/LogUtil;->generateTag(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v0

    .line 237
    sget-object v1, Lcom/media/common/util/LogUtil;->customLogger:Lcom/media/common/util/LogUtil$CustomLogger;

    if-eqz v1, :cond_1

    .line 238
    sget-object v1, Lcom/media/common/util/LogUtil;->customLogger:Lcom/media/common/util/LogUtil$CustomLogger;

    invoke-interface {v1, v0, p0}, Lcom/media/common/util/LogUtil$CustomLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 240
    :cond_1
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 245
    sget-boolean v0, Lcom/media/common/util/LogUtil;->allowW:Z

    if-nez v0, :cond_0

    return-void

    .line 249
    :cond_0
    invoke-static {}, Lcom/media/common/util/LogUtil;->getCallerStackTraceElement()Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 250
    invoke-static {v0}, Lcom/media/common/util/LogUtil;->generateTag(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v0

    .line 252
    sget-object v1, Lcom/media/common/util/LogUtil;->customLogger:Lcom/media/common/util/LogUtil$CustomLogger;

    if-eqz v1, :cond_1

    .line 253
    sget-object v1, Lcom/media/common/util/LogUtil;->customLogger:Lcom/media/common/util/LogUtil$CustomLogger;

    invoke-interface {v1, v0, p0, p1}, Lcom/media/common/util/LogUtil$CustomLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 255
    :cond_1
    invoke-static {v0, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static w(Ljava/lang/Throwable;)V
    .locals 2

    .line 260
    sget-boolean v0, Lcom/media/common/util/LogUtil;->allowW:Z

    if-nez v0, :cond_0

    return-void

    .line 264
    :cond_0
    invoke-static {}, Lcom/media/common/util/LogUtil;->getCallerStackTraceElement()Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 265
    invoke-static {v0}, Lcom/media/common/util/LogUtil;->generateTag(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v0

    .line 267
    sget-object v1, Lcom/media/common/util/LogUtil;->customLogger:Lcom/media/common/util/LogUtil$CustomLogger;

    if-eqz v1, :cond_1

    .line 268
    sget-object v1, Lcom/media/common/util/LogUtil;->customLogger:Lcom/media/common/util/LogUtil$CustomLogger;

    invoke-interface {v1, v0, p0}, Lcom/media/common/util/LogUtil$CustomLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 270
    :cond_1
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static wtf(Ljava/lang/String;)V
    .locals 2

    .line 275
    sget-boolean v0, Lcom/media/common/util/LogUtil;->allowWtf:Z

    if-nez v0, :cond_0

    return-void

    .line 279
    :cond_0
    invoke-static {}, Lcom/media/common/util/LogUtil;->getCallerStackTraceElement()Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 280
    invoke-static {v0}, Lcom/media/common/util/LogUtil;->generateTag(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v0

    .line 282
    sget-object v1, Lcom/media/common/util/LogUtil;->customLogger:Lcom/media/common/util/LogUtil$CustomLogger;

    if-eqz v1, :cond_1

    .line 283
    sget-object v1, Lcom/media/common/util/LogUtil;->customLogger:Lcom/media/common/util/LogUtil$CustomLogger;

    invoke-interface {v1, v0, p0}, Lcom/media/common/util/LogUtil$CustomLogger;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 285
    :cond_1
    invoke-static {v0, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static wtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 290
    sget-boolean v0, Lcom/media/common/util/LogUtil;->allowWtf:Z

    if-nez v0, :cond_0

    return-void

    .line 294
    :cond_0
    invoke-static {}, Lcom/media/common/util/LogUtil;->getCallerStackTraceElement()Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 295
    invoke-static {v0}, Lcom/media/common/util/LogUtil;->generateTag(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v0

    .line 297
    sget-object v1, Lcom/media/common/util/LogUtil;->customLogger:Lcom/media/common/util/LogUtil$CustomLogger;

    if-eqz v1, :cond_1

    .line 298
    sget-object v1, Lcom/media/common/util/LogUtil;->customLogger:Lcom/media/common/util/LogUtil$CustomLogger;

    invoke-interface {v1, v0, p0, p1}, Lcom/media/common/util/LogUtil$CustomLogger;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 300
    :cond_1
    invoke-static {v0, p0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static wtf(Ljava/lang/Throwable;)V
    .locals 2

    .line 305
    sget-boolean v0, Lcom/media/common/util/LogUtil;->allowWtf:Z

    if-nez v0, :cond_0

    return-void

    .line 309
    :cond_0
    invoke-static {}, Lcom/media/common/util/LogUtil;->getCallerStackTraceElement()Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 310
    invoke-static {v0}, Lcom/media/common/util/LogUtil;->generateTag(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v0

    .line 312
    sget-object v1, Lcom/media/common/util/LogUtil;->customLogger:Lcom/media/common/util/LogUtil$CustomLogger;

    if-eqz v1, :cond_1

    .line 313
    sget-object v1, Lcom/media/common/util/LogUtil;->customLogger:Lcom/media/common/util/LogUtil$CustomLogger;

    invoke-interface {v1, v0, p0}, Lcom/media/common/util/LogUtil$CustomLogger;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 315
    :cond_1
    invoke-static {v0, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
