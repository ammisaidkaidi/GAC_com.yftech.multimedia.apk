.class Landroid/location/BatchedLocationCallbackTransport$CallbackTransport;
.super Landroid/location/IBatchedLocationCallback$Stub;
.source "BatchedLocationCallbackTransport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/BatchedLocationCallbackTransport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallbackTransport"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/location/BatchedLocationCallbackTransport;


# direct methods
.method private constructor <init>(Landroid/location/BatchedLocationCallbackTransport;)V
    .locals 0

    .line 52
    iput-object p1, p0, Landroid/location/BatchedLocationCallbackTransport$CallbackTransport;->this$0:Landroid/location/BatchedLocationCallbackTransport;

    invoke-direct {p0}, Landroid/location/IBatchedLocationCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/location/BatchedLocationCallbackTransport;Landroid/location/BatchedLocationCallbackTransport$1;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Landroid/location/BatchedLocationCallbackTransport$CallbackTransport;-><init>(Landroid/location/BatchedLocationCallbackTransport;)V

    return-void
.end method


# virtual methods
.method public onLocationBatch(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/location/Location;",
            ">;)V"
        }
    .end annotation

    .line 55
    new-instance v0, Landroid/location/BatchedLocationCallbackTransport$CallbackTransport$1;

    invoke-direct {v0, p0, p1}, Landroid/location/BatchedLocationCallbackTransport$CallbackTransport$1;-><init>(Landroid/location/BatchedLocationCallbackTransport$CallbackTransport;Ljava/util/List;)V

    .line 63
    iget-object p0, p0, Landroid/location/BatchedLocationCallbackTransport$CallbackTransport;->this$0:Landroid/location/BatchedLocationCallbackTransport;

    invoke-virtual {p0, v0}, Landroid/location/BatchedLocationCallbackTransport;->foreach(Landroid/location/LocalListenerHelper$ListenerOperation;)V

    return-void
.end method
