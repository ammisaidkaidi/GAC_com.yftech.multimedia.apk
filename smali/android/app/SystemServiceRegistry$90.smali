.class Landroid/app/SystemServiceRegistry$90;
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
        "Landroid/content/pm/CrossProfileApps;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 976
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public createService(Landroid/app/ContextImpl;)Landroid/content/pm/CrossProfileApps;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    const-string p0, "crossprofileapps"

    .line 980
    invoke-static {p0}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    .line 982
    new-instance v0, Landroid/content/pm/CrossProfileApps;

    invoke-virtual {p1}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object p1

    .line 983
    invoke-static {p0}, Landroid/content/pm/ICrossProfileApps$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/ICrossProfileApps;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Landroid/content/pm/CrossProfileApps;-><init>(Landroid/content/Context;Landroid/content/pm/ICrossProfileApps;)V

    return-object v0
.end method

.method public bridge synthetic createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 976
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$90;->createService(Landroid/app/ContextImpl;)Landroid/content/pm/CrossProfileApps;

    move-result-object p0

    return-object p0
.end method
