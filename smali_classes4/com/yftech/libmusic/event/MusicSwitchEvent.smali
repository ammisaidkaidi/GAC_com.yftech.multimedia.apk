.class public Lcom/yftech/libmusic/event/MusicSwitchEvent;
.super Ljava/lang/Object;
.source "MusicSwitchEvent.java"


# instance fields
.field public mediaFile:Lcom/yftech/car/media/data/entity/MediaFile;


# direct methods
.method public constructor <init>(Lcom/yftech/car/media/data/entity/MediaFile;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/yftech/libmusic/event/MusicSwitchEvent;->mediaFile:Lcom/yftech/car/media/data/entity/MediaFile;

    return-void
.end method
