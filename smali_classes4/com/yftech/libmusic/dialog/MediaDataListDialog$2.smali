.class Lcom/yftech/libmusic/dialog/MediaDataListDialog$2;
.super Landroid/content/BroadcastReceiver;
.source "MediaDataListDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/libmusic/dialog/MediaDataListDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libmusic/dialog/MediaDataListDialog;


# direct methods
.method constructor <init>(Lcom/yftech/libmusic/dialog/MediaDataListDialog;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/yftech/libmusic/dialog/MediaDataListDialog$2;->this$0:Lcom/yftech/libmusic/dialog/MediaDataListDialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 141
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "test"

    .line 142
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 144
    iget-object p0, p0, Lcom/yftech/libmusic/dialog/MediaDataListDialog$2;->this$0:Lcom/yftech/libmusic/dialog/MediaDataListDialog;

    invoke-virtual {p0}, Lcom/yftech/libmusic/dialog/MediaDataListDialog;->getPresenter()Lcom/yftech/libmvpmodule/mvp/BaseMvpPresenter;

    move-result-object p0

    check-cast p0, Lcom/yftech/libmusic/presenter/MusicSongListPresenter;

    invoke-virtual {p0}, Lcom/yftech/libmusic/presenter/MusicSongListPresenter;->getCurrentPlayList()V

    :cond_0
    return-void
.end method
