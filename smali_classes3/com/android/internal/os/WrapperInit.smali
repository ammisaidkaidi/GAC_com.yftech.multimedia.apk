.class public Lcom/android/internal/os/WrapperInit;
.super Ljava/lang/Object;
.source "WrapperInit.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AndroidRuntime"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static execApplication(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .locals 1

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 110
    invoke-static {p3}, Ldalvik/system/VMRuntime;->is64BitInstructionSet(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "/system/bin/app_process64"

    goto :goto_0

    :cond_0
    const-string p0, "/system/bin/app_process32"

    :goto_0
    const/16 p3, 0x20

    .line 115
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 116
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " -Xcompiler-option --generate-mini-debug-info"

    .line 124
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " /system/bin --application"

    .line 126
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1

    const-string p0, " \'--nice-name="

    .line 128
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string p0, " com.android.internal.os.WrapperInit "

    .line 130
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_2

    .line 131
    invoke-virtual {p4}, Ljava/io/FileDescriptor;->getInt$()I

    move-result p0

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 132
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 133
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 134
    invoke-static {v0, p5}, Lcom/android/internal/os/Zygote;->appendQuotedShellArgs(Ljava/lang/StringBuilder;[Ljava/lang/String;)V

    .line 135
    invoke-static {}, Lcom/android/internal/os/WrapperInit;->preserveCapabilities()V

    .line 136
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/os/Zygote;->execShell(Ljava/lang/String;)V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 6

    const/4 v0, 0x0

    .line 64
    aget-object v1, p0, v0

    const/16 v2, 0xa

    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    .line 65
    aget-object v3, p0, v3

    invoke-static {v3, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    if-eqz v1, :cond_0

    .line 71
    :try_start_0
    new-instance v3, Ljava/io/FileDescriptor;

    invoke-direct {v3}, Ljava/io/FileDescriptor;-><init>()V

    .line 72
    invoke-virtual {v3, v1}, Ljava/io/FileDescriptor;->setInt$(I)V

    .line 73
    new-instance v1, Ljava/io/DataOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v1, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 74
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 75
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 76
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "AndroidRuntime"

    const-string v4, "Could not write pid of wrapped process to Zygote pipe."

    .line 78
    invoke-static {v3, v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 83
    :cond_0
    :goto_0
    new-instance v1, Landroid/util/TimingsTraceLog;

    const-string v3, "WrapperInitTiming"

    const-wide/16 v4, 0x4000

    invoke-direct {v1, v3, v4, v5}, Landroid/util/TimingsTraceLog;-><init>(Ljava/lang/String;J)V

    invoke-static {v1}, Lcom/android/internal/os/ZygoteInit;->preload(Landroid/util/TimingsTraceLog;)V

    .line 87
    array-length v1, p0

    const/4 v3, 0x2

    sub-int/2addr v1, v3

    new-array v1, v1, [Ljava/lang/String;

    .line 88
    array-length v4, v1

    invoke-static {p0, v3, v1, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 89
    invoke-static {v2, v1}, Lcom/android/internal/os/WrapperInit;->wrapperInit(I[Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object p0

    .line 91
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private static preserveCapabilities()V
    .locals 12

    .line 187
    new-instance v0, Landroid/system/StructCapUserHeader;

    sget v1, Landroid/system/OsConstants;->_LINUX_CAPABILITY_VERSION_3:I

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/system/StructCapUserHeader;-><init>(II)V

    .line 191
    :try_start_0
    invoke-static {v0}, Landroid/system/Os;->capget(Landroid/system/StructCapUserHeader;)[Landroid/system/StructCapUserData;

    move-result-object v1
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_2

    .line 197
    aget-object v3, v1, v2

    iget v3, v3, Landroid/system/StructCapUserData;->permitted:I

    aget-object v4, v1, v2

    iget v4, v4, Landroid/system/StructCapUserData;->inheritable:I

    const/4 v5, 0x1

    if-ne v3, v4, :cond_0

    aget-object v3, v1, v5

    iget v3, v3, Landroid/system/StructCapUserData;->permitted:I

    aget-object v4, v1, v5

    iget v4, v4, Landroid/system/StructCapUserData;->inheritable:I

    if-eq v3, v4, :cond_1

    .line 199
    :cond_0
    new-instance v3, Landroid/system/StructCapUserData;

    aget-object v4, v1, v2

    iget v4, v4, Landroid/system/StructCapUserData;->effective:I

    aget-object v6, v1, v2

    iget v6, v6, Landroid/system/StructCapUserData;->permitted:I

    aget-object v7, v1, v2

    iget v7, v7, Landroid/system/StructCapUserData;->permitted:I

    invoke-direct {v3, v4, v6, v7}, Landroid/system/StructCapUserData;-><init>(III)V

    aput-object v3, v1, v2

    .line 201
    new-instance v3, Landroid/system/StructCapUserData;

    aget-object v4, v1, v5

    iget v4, v4, Landroid/system/StructCapUserData;->effective:I

    aget-object v6, v1, v5

    iget v6, v6, Landroid/system/StructCapUserData;->permitted:I

    aget-object v7, v1, v5

    iget v7, v7, Landroid/system/StructCapUserData;->permitted:I

    invoke-direct {v3, v4, v6, v7}, Landroid/system/StructCapUserData;-><init>(III)V

    aput-object v3, v1, v5

    .line 204
    :try_start_1
    invoke-static {v0, v1}, Landroid/system/Os;->capset(Landroid/system/StructCapUserHeader;[Landroid/system/StructCapUserData;)V
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_0
    const/16 v0, 0x40

    if-ge v2, v0, :cond_3

    .line 212
    invoke-static {v2}, Landroid/system/OsConstants;->CAP_TO_INDEX(I)I

    move-result v0

    .line 213
    invoke-static {v2}, Landroid/system/OsConstants;->CAP_TO_MASK(I)I

    move-result v3

    .line 214
    aget-object v0, v1, v0

    iget v0, v0, Landroid/system/StructCapUserData;->inheritable:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_2

    .line 216
    :try_start_2
    sget v3, Landroid/system/OsConstants;->PR_CAP_AMBIENT:I

    sget v0, Landroid/system/OsConstants;->PR_CAP_AMBIENT_RAISE:I

    int-to-long v4, v0

    int-to-long v6, v2

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    invoke-static/range {v3 .. v11}, Landroid/system/Os;->prctl(IJJJJ)I
    :try_end_2
    .catch Landroid/system/ErrnoException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v3, "AndroidRuntime"

    .line 221
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RuntimeInit: Failed to raise ambient capability "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void

    :catch_1
    move-exception v0

    const-string v1, "AndroidRuntime"

    const-string v2, "RuntimeInit: Failed capset"

    .line 206
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :catch_2
    move-exception v0

    const-string v1, "AndroidRuntime"

    const-string v2, "RuntimeInit: Failed capget"

    .line 193
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private static wrapperInit(I[Ljava/lang/String;)Ljava/lang/Runnable;
    .locals 5

    if-eqz p1, :cond_0

    .line 158
    array-length v0, p1

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    aget-object v2, p1, v0

    const-string v3, "-cp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 159
    aget-object v2, p1, v2

    invoke-static {v2, p0}, Lcom/android/internal/os/ZygoteInit;->createPathClassLoader(Ljava/lang/String;I)Ljava/lang/ClassLoader;

    move-result-object v2

    .line 162
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 165
    array-length v3, p1

    sub-int/2addr v3, v1

    new-array v3, v3, [Ljava/lang/String;

    .line 166
    array-length v4, p1

    sub-int/2addr v4, v1

    invoke-static {p1, v1, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, v3

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 171
    :goto_0
    invoke-static {}, Lcom/android/internal/os/Zygote;->nativePreApplicationInit()V

    .line 172
    invoke-static {p0, p1, v2}, Lcom/android/internal/os/RuntimeInit;->applicationInit(I[Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Runnable;

    move-result-object p0

    return-object p0
.end method
