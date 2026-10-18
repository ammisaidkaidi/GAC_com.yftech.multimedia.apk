.class Lcom/yftech/libmusic/dialog/MusicSourceDialog$6;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "MusicSourceDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/libmusic/dialog/MusicSourceDialog;->initW(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libmusic/dialog/MusicSourceDialog;


# direct methods
.method constructor <init>(Lcom/yftech/libmusic/dialog/MusicSourceDialog;)V
    .locals 0

    .line 379
    iput-object p1, p0, Lcom/yftech/libmusic/dialog/MusicSourceDialog$6;->this$0:Lcom/yftech/libmusic/dialog/MusicSourceDialog;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 2
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 383
    iget-object p1, p0, Lcom/yftech/libmusic/dialog/MusicSourceDialog$6;->this$0:Lcom/yftech/libmusic/dialog/MusicSourceDialog;

    invoke-static {p1}, Lcom/yftech/libmusic/dialog/MusicSourceDialog;->access$300(Lcom/yftech/libmusic/dialog/MusicSourceDialog;)Landroid/os/Handler;

    move-result-object p1

    const/16 p2, 0xa

    invoke-virtual {p1, p2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 384
    iget-object p1, p0, Lcom/yftech/libmusic/dialog/MusicSourceDialog$6;->this$0:Lcom/yftech/libmusic/dialog/MusicSourceDialog;

    invoke-static {p1}, Lcom/yftech/libmusic/dialog/MusicSourceDialog;->access$300(Lcom/yftech/libmusic/dialog/MusicSourceDialog;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 385
    :cond_0
    iget-object p0, p0, Lcom/yftech/libmusic/dialog/MusicSourceDialog$6;->this$0:Lcom/yftech/libmusic/dialog/MusicSourceDialog;

    invoke-static {p0}, Lcom/yftech/libmusic/dialog/MusicSourceDialog;->access$300(Lcom/yftech/libmusic/dialog/MusicSourceDialog;)Landroid/os/Handler;

    move-result-object p0

    const-wide/16 v0, 0x3a98

    invoke-virtual {p0, p2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
