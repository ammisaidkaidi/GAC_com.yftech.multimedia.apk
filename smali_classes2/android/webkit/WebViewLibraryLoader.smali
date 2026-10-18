.class public Landroid/webkit/WebViewLibraryLoader;
.super Ljava/lang/Object;
.source "WebViewLibraryLoader.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/WebViewLibraryLoader$WebViewNativeLibrary;,
        Landroid/webkit/WebViewLibraryLoader$RelroFileCreator;
    }
.end annotation


# static fields
.field private static final CHROMIUM_WEBVIEW_DEFAULT_VMSIZE_BYTES:J = 0x6400000L

.field private static final CHROMIUM_WEBVIEW_NATIVE_RELRO_32:Ljava/lang/String; = "/data/misc/shared_relro/libwebviewchromium32.relro"

.field private static final CHROMIUM_WEBVIEW_NATIVE_RELRO_64:Ljava/lang/String; = "/data/misc/shared_relro/libwebviewchromium64.relro"

.field private static final DEBUG:Z = false

.field private static final LOGTAG:Ljava/lang/String; = "WebViewLibraryLoader"

.field private static sAddressSpaceReserved:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 46
    sget-object v0, Landroid/webkit/WebViewLibraryLoader;->LOGTAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .line 46
    sget-boolean v0, Landroid/webkit/WebViewLibraryLoader;->sAddressSpaceReserved:Z

    return v0
.end method

.method static createRelroFile(ZLandroid/webkit/WebViewLibraryLoader$WebViewNativeLibrary;)V
    .locals 9

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 106
    sget-object p0, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    aget-object p0, p0, v0

    goto :goto_0

    :cond_0
    sget-object p0, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    aget-object p0, p0, v0

    .line 109
    :goto_0
    new-instance v8, Landroid/webkit/WebViewLibraryLoader$1;

    invoke-direct {v8, p0}, Landroid/webkit/WebViewLibraryLoader$1;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_2

    .line 122
    :try_start_0
    iget-object v1, p1, Landroid/webkit/WebViewLibraryLoader$WebViewNativeLibrary;->path:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 126
    const-class v1, Landroid/app/ActivityManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManagerInternal;

    const-class v2, Landroid/webkit/WebViewLibraryLoader$RelroFileCreator;

    .line 128
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    iget-object p1, p1, Landroid/webkit/WebViewLibraryLoader$WebViewNativeLibrary;->path:Ljava/lang/String;

    aput-object p1, v3, v0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "WebViewLoader-"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v6, 0x40d

    move-object v5, p0

    move-object v7, v8

    .line 127
    invoke-virtual/range {v1 .. v7}, Landroid/app/ActivityManagerInternal;->startIsolatedProcess(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_2

    .line 130
    :cond_1
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "Failed to start the relro file creator process"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    move-exception p1

    goto :goto_1

    .line 123
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Native library paths to the WebView RelRo process must not be null!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    :goto_1
    sget-object v0, Landroid/webkit/WebViewLibraryLoader;->LOGTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error starting relro file creator for abi "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 134
    invoke-interface {v8}, Ljava/lang/Runnable;->run()V

    :goto_2
    return-void
.end method

.method private static createRelros(Landroid/webkit/WebViewLibraryLoader$WebViewNativeLibrary;Landroid/webkit/WebViewLibraryLoader$WebViewNativeLibrary;)I
    .locals 3

    .line 162
    sget-object v0, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_1

    if-nez p0, :cond_0

    .line 164
    sget-object p0, Landroid/webkit/WebViewLibraryLoader;->LOGTAG:Ljava/lang/String;

    const-string v0, "No 32-bit WebView library path, skipping relro creation."

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 167
    :cond_0
    invoke-static {v1, p0}, Landroid/webkit/WebViewLibraryLoader;->createRelroFile(ZLandroid/webkit/WebViewLibraryLoader$WebViewNativeLibrary;)V

    move v1, v2

    .line 172
    :cond_1
    :goto_0
    sget-object p0, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    array-length p0, p0

    if-lez p0, :cond_3

    if-nez p1, :cond_2

    .line 174
    sget-object p0, Landroid/webkit/WebViewLibraryLoader;->LOGTAG:Ljava/lang/String;

    const-string p1, "No 64-bit WebView library path, skipping relro creation."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 177
    :cond_2
    invoke-static {v2, p1}, Landroid/webkit/WebViewLibraryLoader;->createRelroFile(ZLandroid/webkit/WebViewLibraryLoader$WebViewNativeLibrary;)V

    add-int/lit8 v1, v1, 0x1

    :cond_3
    :goto_1
    return v1
.end method

.method private static findNativeLibrary(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/webkit/WebViewLibraryLoader$WebViewNativeLibrary;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/webkit/WebViewFactory$MissingWebViewPackageException;
        }
    .end annotation

    .line 303
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 304
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "/"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 305
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 306
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 307
    new-instance p0, Landroid/webkit/WebViewLibraryLoader$WebViewNativeLibrary;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide p1

    invoke-direct {p0, p3, p1, p2}, Landroid/webkit/WebViewLibraryLoader$WebViewNativeLibrary;-><init>(Ljava/lang/String;J)V

    return-object p0

    .line 309
    :cond_1
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-static {p0, p2, p1}, Landroid/webkit/WebViewLibraryLoader;->getLoadFromApkPath(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/webkit/WebViewLibraryLoader$WebViewNativeLibrary;

    move-result-object p0

    return-object p0
.end method

.method private static getLoadFromApkPath(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/webkit/WebViewLibraryLoader$WebViewNativeLibrary;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/webkit/WebViewFactory$MissingWebViewPackageException;
        }
    .end annotation

    .line 332
    :try_start_0
    new-instance v0, Ljava/util/zip/ZipFile;

    invoke-direct {v0, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v1, 0x0

    .line 333
    :try_start_1
    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, p1, v3

    .line 334
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "lib/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 335
    invoke-virtual {v0, v4}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 336
    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getMethod()I

    move-result v6

    if-nez v6, :cond_0

    .line 338
    new-instance p1, Landroid/webkit/WebViewLibraryLoader$WebViewNativeLibrary;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "!/"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v2

    invoke-direct {p1, p0, v2, v3}, Landroid/webkit/WebViewLibraryLoader$WebViewNativeLibrary;-><init>(Ljava/lang/String;J)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 341
    :try_start_2
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V

    return-object p1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    return-object v1

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    move-object v1, p0

    .line 332
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    if-eqz v1, :cond_2

    .line 341
    :try_start_4
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_1
    move-exception p1

    :try_start_5
    invoke-virtual {v1, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V

    :goto_2
    throw p0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :catch_2
    move-exception p0

    .line 342
    new-instance p1, Landroid/webkit/WebViewFactory$MissingWebViewPackageException;

    invoke-direct {p1, p0}, Landroid/webkit/WebViewFactory$MissingWebViewPackageException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

.method public static getWebViewNativeLibrary(Landroid/content/pm/PackageInfo;Z)Landroid/webkit/WebViewLibraryLoader$WebViewNativeLibrary;
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/webkit/WebViewFactory$MissingWebViewPackageException;
        }
    .end annotation

    .line 264
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 265
    invoke-static {p0}, Landroid/webkit/WebViewFactory;->getWebViewLibrary(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v0

    .line 267
    invoke-static {p0, p1}, Landroid/webkit/WebViewLibraryLoader;->getWebViewNativeLibraryDirectory(Landroid/content/pm/ApplicationInfo;Z)Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_0

    .line 270
    sget-object p1, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object p1, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    .line 269
    :goto_0
    invoke-static {p0, v0, p1, v1}, Landroid/webkit/WebViewLibraryLoader;->findNativeLibrary(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/webkit/WebViewLibraryLoader$WebViewNativeLibrary;

    move-result-object p0

    return-object p0
.end method

.method public static getWebViewNativeLibraryDirectory(Landroid/content/pm/ApplicationInfo;Z)Ljava/lang/String;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 285
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    invoke-static {v0}, Ldalvik/system/VMRuntime;->is64BitAbi(Ljava/lang/String;)Z

    move-result v0

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    return-object p0

    .line 288
    :cond_0
    iget-object p1, p0, Landroid/content/pm/ApplicationInfo;->secondaryCpuAbi:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 289
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->secondaryNativeLibraryDir:Ljava/lang/String;

    return-object p0

    :cond_1
    const-string p0, ""

    return-object p0
.end method

.method public static loadNativeLibrary(Ljava/lang/ClassLoader;Ljava/lang/String;)I
    .locals 1

    .line 240
    sget-boolean v0, Landroid/webkit/WebViewLibraryLoader;->sAddressSpaceReserved:Z

    if-nez v0, :cond_0

    .line 241
    sget-object p0, Landroid/webkit/WebViewLibraryLoader;->LOGTAG:Ljava/lang/String;

    const-string p1, "can\'t load with relro file; address space not reserved"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x2

    return p0

    .line 245
    :cond_0
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->is64Bit()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "/data/misc/shared_relro/libwebviewchromium64.relro"

    goto :goto_0

    :cond_1
    const-string v0, "/data/misc/shared_relro/libwebviewchromium32.relro"

    .line 247
    :goto_0
    invoke-static {p1, v0, p0}, Landroid/webkit/WebViewLibraryLoader;->nativeLoadWithRelroFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)I

    move-result p0

    if-eqz p0, :cond_2

    .line 249
    sget-object p1, Landroid/webkit/WebViewLibraryLoader;->LOGTAG:Ljava/lang/String;

    const-string v0, "failed to load with relro file, proceeding without"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return p0
.end method

.method static native nativeCreateRelroFile(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method static native nativeLoadWithRelroFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)I
.end method

.method static native nativeReserveAddressSpace(J)Z
.end method

.method static prepareNativeLibraries(Landroid/content/pm/PackageInfo;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/webkit/WebViewFactory$MissingWebViewPackageException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 146
    invoke-static {p0, v0}, Landroid/webkit/WebViewLibraryLoader;->getWebViewNativeLibrary(Landroid/content/pm/PackageInfo;Z)Landroid/webkit/WebViewLibraryLoader$WebViewNativeLibrary;

    move-result-object v0

    const/4 v1, 0x1

    .line 148
    invoke-static {p0, v1}, Landroid/webkit/WebViewLibraryLoader;->getWebViewNativeLibrary(Landroid/content/pm/PackageInfo;Z)Landroid/webkit/WebViewLibraryLoader$WebViewNativeLibrary;

    move-result-object p0

    .line 149
    invoke-static {v0, p0}, Landroid/webkit/WebViewLibraryLoader;->updateWebViewZygoteVmSize(Landroid/webkit/WebViewLibraryLoader$WebViewNativeLibrary;Landroid/webkit/WebViewLibraryLoader$WebViewNativeLibrary;)V

    .line 151
    invoke-static {v0, p0}, Landroid/webkit/WebViewLibraryLoader;->createRelros(Landroid/webkit/WebViewLibraryLoader$WebViewNativeLibrary;Landroid/webkit/WebViewLibraryLoader$WebViewNativeLibrary;)I

    move-result p0

    return p0
.end method

.method static reserveAddressSpaceInZygote()V
    .locals 5

    const-string/jumbo v0, "webviewchromium_loader"

    .line 216
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string/jumbo v0, "persist.sys.webview.vmsize"

    const-wide/32 v1, 0x6400000

    .line 218
    invoke-static {v0, v1, v2}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 220
    invoke-static {v0, v1}, Landroid/webkit/WebViewLibraryLoader;->nativeReserveAddressSpace(J)Z

    move-result v2

    sput-boolean v2, Landroid/webkit/WebViewLibraryLoader;->sAddressSpaceReserved:Z

    .line 222
    sget-boolean v2, Landroid/webkit/WebViewLibraryLoader;->sAddressSpaceReserved:Z

    if-eqz v2, :cond_0

    goto :goto_0

    .line 227
    :cond_0
    sget-object v2, Landroid/webkit/WebViewLibraryLoader;->LOGTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "reserving "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " bytes of address space failed"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private static setWebViewZygoteVmSize(J)V
    .locals 1

    const-string/jumbo v0, "persist.sys.webview.vmsize"

    .line 352
    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    .line 351
    invoke-static {v0, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static updateWebViewZygoteVmSize(Landroid/webkit/WebViewLibraryLoader$WebViewNativeLibrary;Landroid/webkit/WebViewLibraryLoader$WebViewNativeLibrary;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/webkit/WebViewFactory$MissingWebViewPackageException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    if-eqz p0, :cond_0

    .line 196
    iget-wide v2, p0, Landroid/webkit/WebViewLibraryLoader$WebViewNativeLibrary;->size:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    :cond_0
    if-eqz p1, :cond_1

    .line 197
    iget-wide p0, p1, Landroid/webkit/WebViewLibraryLoader$WebViewNativeLibrary;->size:J

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    :cond_1
    const-wide/16 p0, 0x2

    mul-long/2addr v0, p0

    const-wide/32 p0, 0x6400000

    .line 207
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    .line 208
    sget-object v0, Landroid/webkit/WebViewLibraryLoader;->LOGTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting new address space to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    invoke-static {p0, p1}, Landroid/webkit/WebViewLibraryLoader;->setWebViewZygoteVmSize(J)V

    return-void
.end method
