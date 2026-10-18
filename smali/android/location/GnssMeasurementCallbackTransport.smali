.class Landroid/location/GnssMeasurementCallbackTransport;
.super Landroid/location/LocalListenerHelper;
.source "GnssMeasurementCallbackTransport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/GnssMeasurementCallbackTransport$ListenerTransport;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/location/LocalListenerHelper<",
        "Landroid/location/GnssMeasurementsEvent$Callback;",
        ">;"
    }
.end annotation


# instance fields
.field private final mListenerTransport:Landroid/location/IGnssMeasurementsListener;

.field private final mLocationManager:Landroid/location/ILocationManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/location/ILocationManager;)V
    .locals 1

    const-string v0, "GnssMeasurementListenerTransport"

    .line 34
    invoke-direct {p0, p1, v0}, Landroid/location/LocalListenerHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 31
    new-instance p1, Landroid/location/GnssMeasurementCallbackTransport$ListenerTransport;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Landroid/location/GnssMeasurementCallbackTransport$ListenerTransport;-><init>(Landroid/location/GnssMeasurementCallbackTransport;Landroid/location/GnssMeasurementCallbackTransport$1;)V

    iput-object p1, p0, Landroid/location/GnssMeasurementCallbackTransport;->mListenerTransport:Landroid/location/IGnssMeasurementsListener;

    .line 35
    iput-object p2, p0, Landroid/location/GnssMeasurementCallbackTransport;->mLocationManager:Landroid/location/ILocationManager;

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

    .line 40
    iget-object v0, p0, Landroid/location/GnssMeasurementCallbackTransport;->mLocationManager:Landroid/location/ILocationManager;

    iget-object v1, p0, Landroid/location/GnssMeasurementCallbackTransport;->mListenerTransport:Landroid/location/IGnssMeasurementsListener;

    .line 42
    invoke-virtual {p0}, Landroid/location/GnssMeasurementCallbackTransport;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .line 40
    invoke-interface {v0, v1, p0}, Landroid/location/ILocationManager;->addGnssMeasurementsListener(Landroid/location/IGnssMeasurementsListener;Ljava/lang/String;)Z

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

    .line 47
    iget-object v0, p0, Landroid/location/GnssMeasurementCallbackTransport;->mLocationManager:Landroid/location/ILocationManager;

    iget-object p0, p0, Landroid/location/GnssMeasurementCallbackTransport;->mListenerTransport:Landroid/location/IGnssMeasurementsListener;

    invoke-interface {v0, p0}, Landroid/location/ILocationManager;->removeGnssMeasurementsListener(Landroid/location/IGnssMeasurementsListener;)V

    return-void
.end method
