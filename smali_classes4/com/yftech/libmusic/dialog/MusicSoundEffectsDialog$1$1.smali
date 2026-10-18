.class Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog$1$1;
.super Ljava/lang/Object;
.source "MusicSoundEffectsDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog$1;->onChangedEQType(I[F[F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog$1;

.field final synthetic val$type:I

.field final synthetic val$values:[F


# direct methods
.method constructor <init>(Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog$1;I[F)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog$1$1;->this$1:Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog$1;

    iput p2, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog$1$1;->val$type:I

    iput-object p3, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog$1$1;->val$values:[F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 142
    iget v0, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog$1$1;->val$type:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 143
    iget-object v0, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog$1$1;->this$1:Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog$1;

    iget-object v0, v0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog$1;->this$0:Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;

    iget v1, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog$1$1;->val$type:I

    invoke-virtual {v0, v1}, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->displayEQType(I)V

    goto :goto_0

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog$1$1;->this$1:Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog$1;

    iget-object v0, v0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog$1;->this$0:Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;

    iget-object v1, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog$1$1;->val$values:[F

    invoke-static {v0, v1}, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->access$002(Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;[F)[F

    .line 147
    :goto_0
    iget-object v0, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog$1$1;->this$1:Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog$1;

    iget-object v0, v0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog$1;->this$0:Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;

    iget-object p0, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog$1$1;->val$values:[F

    invoke-virtual {v0, p0}, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->displayBandCurValue([F)V

    return-void
.end method
