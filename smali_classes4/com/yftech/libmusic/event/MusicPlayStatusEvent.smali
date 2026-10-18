.class public Lcom/yftech/libmusic/event/MusicPlayStatusEvent;
.super Ljava/lang/Object;
.source "MusicPlayStatusEvent.java"


# instance fields
.field public isPlaying:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-boolean p1, p0, Lcom/yftech/libmusic/event/MusicPlayStatusEvent;->isPlaying:Z

    return-void
.end method
