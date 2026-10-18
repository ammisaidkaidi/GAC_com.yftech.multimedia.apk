.class public Lcom/yftech/libmusic/event/MusicSourceDialogOpenEvent;
.super Ljava/lang/Object;
.source "MusicSourceDialogOpenEvent.java"


# instance fields
.field public music_source:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/yftech/libmusic/event/MusicSourceDialogOpenEvent;->music_source:Ljava/lang/String;

    return-void
.end method
