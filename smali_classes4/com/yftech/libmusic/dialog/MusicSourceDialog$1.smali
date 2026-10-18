.class Lcom/yftech/libmusic/dialog/MusicSourceDialog$1;
.super Landroid/os/Handler;
.source "MusicSourceDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/libmusic/dialog/MusicSourceDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libmusic/dialog/MusicSourceDialog;


# direct methods
.method constructor <init>(Lcom/yftech/libmusic/dialog/MusicSourceDialog;Landroid/os/Looper;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/yftech/libmusic/dialog/MusicSourceDialog$1;->this$0:Lcom/yftech/libmusic/dialog/MusicSourceDialog;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 88
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    .line 90
    iget-object p1, p0, Lcom/yftech/libmusic/dialog/MusicSourceDialog$1;->this$0:Lcom/yftech/libmusic/dialog/MusicSourceDialog;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/yftech/libmusic/dialog/MusicSourceDialog;->access$002(Lcom/yftech/libmusic/dialog/MusicSourceDialog;Z)Z

    .line 92
    iget-object p0, p0, Lcom/yftech/libmusic/dialog/MusicSourceDialog$1;->this$0:Lcom/yftech/libmusic/dialog/MusicSourceDialog;

    invoke-virtual {p0}, Lcom/yftech/libmusic/dialog/MusicSourceDialog;->dismissAllowingStateLoss()V

    :cond_0
    return-void
.end method
