.class Landroid/location/GnssNavigationMessageCallbackTransport;
.super Landroid/location/LocalListenerHelper;
.source "GnssNavigationMessageCallbackTransport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/GnssNavigationMessageCallbackTransport$ListenerTransport;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/location/LocalListenerHelper<",
        "Landroid/location/GnssNavigationMessage$Callback;",
        ">;"
    }
.end annotation


# instance fields
.field private final mListenerTransport:Landroid/location/IGnssNavigationMessageListener;

.field private final mLocationManager:Landroid/location/ILocationManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/location/ILocationManager;)V
    .locals 1

    const-string v0, "GnssNavigationMessageCallbackTransport"

    .line 36
    invoke-direct {p0, p1, v0}, Landroid/location/LocalListenerHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 31
    new-instance p1, Landroid/location/GnssNavigationMessageCallbackTransport$ListenerTransport;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Landroid/location/GnssNavigationMessageCallbackTransport$ListenerTransport;-><init>(Landroid/location/GnssNavigationMessageCallbackTransport;Landroid/location/GnssNavigationMessageCallbackTransport$1;)V

    iput-object p1, p0, Landroid/location/GnssNavigationMessageCallbackTransport;->mListenerTransport:Landroid/location/IGnssNavigationMessageListener;

    .line 37
    iput-object p2, p0, Landroid/location/GnssNavigationMessageCallbackTransport;->mLocationManager:Landroid/location/ILocationManager;

    return-void
.end method


# virtual methods
.method protected registerWithServer()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 42
    iget-object v0, p0, Landroid/location/GnssNavigationMessageCallbackTransport;->mLocationManager:Landroid/location/ILocationManager;

    iget-object v1, p0, Landroid/location/GnssNavigationMessageCallbackTransport;->mListenerTransport:Landroid/location/IGnssNavigationMessageListener;

    .line 44
    invoke-virtual {p0}, Landroid/location/GnssNavigationMessageCallbackTransport;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .line 42
    invoke-interface {v0, v1, p0}, Landroid/location/ILocationManager;->addGnssNavigationMessageListener(Landroid/location/IGnssNavigationMessageListener;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method protected unregisterFromServer()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 49
    iget-object v0, p0, Landroid/location/GnssNavigationMessageCallbackTransport;->mLocationManager:Landroid/location/ILocationManager;

    iget-object p0, p0, Landroid/location/GnssNavigationMessageCallbackTransport;->mListenerTransport:Landroid/location/IGnssNavigationMessageListener;

    invoke-interface {v0, p0}, Landroid/location/ILocationManager;->removeGnssNavigationMessageListener(Landroid/location/IGnssNavigationMessageListener;)V

    return-void
.end method
