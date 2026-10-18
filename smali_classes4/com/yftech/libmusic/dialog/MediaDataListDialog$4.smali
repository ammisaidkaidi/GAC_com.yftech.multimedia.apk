.class Lcom/yftech/libmusic/dialog/MediaDataListDialog$4;
.super Lcom/yftech/car/widget/media/list/MediaDataList$OnItemChangeListener;
.source "MediaDataListDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/libmusic/dialog/MediaDataListDialog;->initView(Landroid/view/View;)V
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

    .line 326
    iput-object p1, p0, Lcom/yftech/libmusic/dialog/MediaDataListDialog$4;->this$0:Lcom/yftech/libmusic/dialog/MediaDataListDialog;

    invoke-direct {p0}, Lcom/yftech/car/widget/media/list/MediaDataList$OnItemChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemFile(Lcom/yftech/car/media/data/entity/MediaFile;)V
    .locals 3

    .line 329
    iget-object p1, p0, Lcom/yftech/libmusic/dialog/MediaDataListDialog$4;->this$0:Lcom/yftech/libmusic/dialog/MediaDataListDialog;

    invoke-static {p1}, Lcom/yftech/libmusic/dialog/MediaDataListDialog;->access$100(Lcom/yftech/libmusic/dialog/MediaDataListDialog;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 330
    iget-object p1, p0, Lcom/yftech/libmusic/dialog/MediaDataListDialog$4;->this$0:Lcom/yftech/libmusic/dialog/MediaDataListDialog;

    invoke-static {p1}, Lcom/yftech/libmusic/dialog/MediaDataListDialog;->access$100(Lcom/yftech/libmusic/dialog/MediaDataListDialog;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 331
    :cond_0
    iget-object p0, p0, Lcom/yftech/libmusic/dialog/MediaDataListDialog$4;->this$0:Lcom/yftech/libmusic/dialog/MediaDataListDialog;

    invoke-static {p0}, Lcom/yftech/libmusic/dialog/MediaDataListDialog;->access$100(Lcom/yftech/libmusic/dialog/MediaDataListDialog;)Landroid/os/Handler;

    move-result-object p0

    const-wide/16 v1, 0x3a98

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
