.class public final synthetic Lcom/yftech/libmusic/ui/-$$Lambda$MusicPlayerFragment$jWVcBTo48BJ2EaePvEE9AZfeawo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

.field private final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/yftech/libmusic/ui/MusicPlayerFragment;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yftech/libmusic/ui/-$$Lambda$MusicPlayerFragment$jWVcBTo48BJ2EaePvEE9AZfeawo;->f$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    iput-boolean p2, p0, Lcom/yftech/libmusic/ui/-$$Lambda$MusicPlayerFragment$jWVcBTo48BJ2EaePvEE9AZfeawo;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/yftech/libmusic/ui/-$$Lambda$MusicPlayerFragment$jWVcBTo48BJ2EaePvEE9AZfeawo;->f$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    iget-boolean p0, p0, Lcom/yftech/libmusic/ui/-$$Lambda$MusicPlayerFragment$jWVcBTo48BJ2EaePvEE9AZfeawo;->f$1:Z

    invoke-static {v0, p0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->lambda$setMusicSourceStyle$0(Lcom/yftech/libmusic/ui/MusicPlayerFragment;Z)V

    return-void
.end method
