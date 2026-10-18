.class Landroid/app/SystemServiceRegistry$16;
.super Landroid/app/SystemServiceRegistry$CachedServiceFetcher;
.source "SystemServiceRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/SystemServiceRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/SystemServiceRegistry$CachedServiceFetcher<",
        "Landroid/app/DownloadManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 312
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public createService(Landroid/app/ContextImpl;)Landroid/app/DownloadManager;
    .locals 0

    .line 315
    new-instance p0, Landroid/app/DownloadManager;

    invoke-direct {p0, p1}, Landroid/app/DownloadManager;-><init>(Landroid/content/Context;)V

    return-object p0
.end method

.method public bridge synthetic createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 312
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$16;->createService(Landroid/app/ContextImpl;)Landroid/app/DownloadManager;

    move-result-object p0

    return-object p0
.end method
