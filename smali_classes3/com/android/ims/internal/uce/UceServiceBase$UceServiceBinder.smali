.class final Lcom/android/ims/internal/uce/UceServiceBase$UceServiceBinder;
.super Lcom/android/ims/internal/uce/uceservice/IUceService$Stub;
.source "UceServiceBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/uce/UceServiceBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UceServiceBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/ims/internal/uce/UceServiceBase;


# direct methods
.method private constructor <init>(Lcom/android/ims/internal/uce/UceServiceBase;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/android/ims/internal/uce/UceServiceBase$UceServiceBinder;->this$0:Lcom/android/ims/internal/uce/UceServiceBase;

    invoke-direct {p0}, Lcom/android/ims/internal/uce/uceservice/IUceService$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/ims/internal/uce/UceServiceBase;Lcom/android/ims/internal/uce/UceServiceBase$1;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/android/ims/internal/uce/UceServiceBase$UceServiceBinder;-><init>(Lcom/android/ims/internal/uce/UceServiceBase;)V

    return-void
.end method


# virtual methods
.method public createOptionsService(Lcom/android/ims/internal/uce/options/IOptionsListener;Lcom/android/ims/internal/uce/common/UceLong;)I
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/android/ims/internal/uce/UceServiceBase$UceServiceBinder;->this$0:Lcom/android/ims/internal/uce/UceServiceBase;

    invoke-virtual {p0, p1, p2}, Lcom/android/ims/internal/uce/UceServiceBase;->onCreateOptionsService(Lcom/android/ims/internal/uce/options/IOptionsListener;Lcom/android/ims/internal/uce/common/UceLong;)I

    move-result p0

    return p0
.end method

.method public createPresenceService(Lcom/android/ims/internal/uce/presence/IPresenceListener;Lcom/android/ims/internal/uce/common/UceLong;)I
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/android/ims/internal/uce/UceServiceBase$UceServiceBinder;->this$0:Lcom/android/ims/internal/uce/UceServiceBase;

    invoke-virtual {p0, p1, p2}, Lcom/android/ims/internal/uce/UceServiceBase;->onCreatePresService(Lcom/android/ims/internal/uce/presence/IPresenceListener;Lcom/android/ims/internal/uce/common/UceLong;)I

    move-result p0

    return p0
.end method

.method public destroyOptionsService(I)V
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/android/ims/internal/uce/UceServiceBase$UceServiceBinder;->this$0:Lcom/android/ims/internal/uce/UceServiceBase;

    invoke-virtual {p0, p1}, Lcom/android/ims/internal/uce/UceServiceBase;->onDestroyOptionsService(I)V

    return-void
.end method

.method public destroyPresenceService(I)V
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/android/ims/internal/uce/UceServiceBase$UceServiceBinder;->this$0:Lcom/android/ims/internal/uce/UceServiceBase;

    invoke-virtual {p0, p1}, Lcom/android/ims/internal/uce/UceServiceBase;->onDestroyPresService(I)V

    return-void
.end method

.method public getOptionsService()Lcom/android/ims/internal/uce/options/IOptionsService;
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/android/ims/internal/uce/UceServiceBase$UceServiceBinder;->this$0:Lcom/android/ims/internal/uce/UceServiceBase;

    invoke-virtual {p0}, Lcom/android/ims/internal/uce/UceServiceBase;->onGetOptionsService()Lcom/android/ims/internal/uce/options/IOptionsService;

    move-result-object p0

    return-object p0
.end method

.method public getPresenceService()Lcom/android/ims/internal/uce/presence/IPresenceService;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/android/ims/internal/uce/UceServiceBase$UceServiceBinder;->this$0:Lcom/android/ims/internal/uce/UceServiceBase;

    invoke-virtual {p0}, Lcom/android/ims/internal/uce/UceServiceBase;->onGetPresenceService()Lcom/android/ims/internal/uce/presence/IPresenceService;

    move-result-object p0

    return-object p0
.end method

.method public getServiceStatus()Z
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/android/ims/internal/uce/UceServiceBase$UceServiceBinder;->this$0:Lcom/android/ims/internal/uce/UceServiceBase;

    invoke-virtual {p0}, Lcom/android/ims/internal/uce/UceServiceBase;->onGetServiceStatus()Z

    move-result p0

    return p0
.end method

.method public isServiceStarted()Z
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/android/ims/internal/uce/UceServiceBase$UceServiceBinder;->this$0:Lcom/android/ims/internal/uce/UceServiceBase;

    invoke-virtual {p0}, Lcom/android/ims/internal/uce/UceServiceBase;->onIsServiceStarted()Z

    move-result p0

    return p0
.end method

.method public startService(Lcom/android/ims/internal/uce/uceservice/IUceListener;)Z
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/android/ims/internal/uce/UceServiceBase$UceServiceBinder;->this$0:Lcom/android/ims/internal/uce/UceServiceBase;

    invoke-virtual {p0, p1}, Lcom/android/ims/internal/uce/UceServiceBase;->onServiceStart(Lcom/android/ims/internal/uce/uceservice/IUceListener;)Z

    move-result p0

    return p0
.end method

.method public stopService()Z
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/android/ims/internal/uce/UceServiceBase$UceServiceBinder;->this$0:Lcom/android/ims/internal/uce/UceServiceBase;

    invoke-virtual {p0}, Lcom/android/ims/internal/uce/UceServiceBase;->onStopService()Z

    move-result p0

    return p0
.end method
