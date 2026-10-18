.class Lcom/yftech/libmusic/ui/MusicPlayerFragment$14;
.super Ljava/lang/Object;
.source "MusicPlayerFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/libmusic/ui/MusicPlayerFragment;->setMusicSourceStyle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;


# direct methods
.method constructor <init>(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)V
    .locals 0

    .line 1267
    iput-object p1, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$14;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1270
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->startBluetoothMusic(Z)Z

    return-void
.end method
