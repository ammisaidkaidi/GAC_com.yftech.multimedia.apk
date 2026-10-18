.class Landroid/app/SystemServiceRegistry$38;
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
        "Landroid/os/SystemUpdateManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 495
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public createService(Landroid/app/ContextImpl;)Landroid/os/SystemUpdateManager;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    const-string/jumbo p0, "system_update"

    .line 499
    invoke-static {p0}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    .line 501
    invoke-static {p0}, Landroid/os/ISystemUpdateManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ISystemUpdateManager;

    move-result-object p0

    .line 502
    new-instance p1, Landroid/os/SystemUpdateManager;

    invoke-direct {p1, p0}, Landroid/os/SystemUpdateManager;-><init>(Landroid/os/ISystemUpdateManager;)V

    return-object p1
.end method

.method public bridge synthetic createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 495
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$38;->createService(Landroid/app/ContextImpl;)Landroid/os/SystemUpdateManager;

    move-result-object p0

    return-object p0
.end method
