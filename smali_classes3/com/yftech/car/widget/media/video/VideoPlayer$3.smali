.class Lcom/yftech/car/widget/media/video/VideoPlayer$3;
.super Ljava/lang/Object;
.source "VideoPlayer.java"

# interfaces
.implements Lcom/yftech/car/widget/media/dialog/ConfirmDialog$OnConfirmDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/car/widget/media/video/VideoPlayer;->setDialogError(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/car/widget/media/video/VideoPlayer;


# direct methods
.method constructor <init>(Lcom/yftech/car/widget/media/video/VideoPlayer;)V
    .locals 0

    .line 1968
    iput-object p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer$3;->this$0:Lcom/yftech/car/widget/media/video/VideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfirm(Z)V
    .locals 0

    .line 1971
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer$3;->this$0:Lcom/yftech/car/widget/media/video/VideoPlayer;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/yftech/car/widget/media/video/VideoPlayer;->access$1902(Lcom/yftech/car/widget/media/video/VideoPlayer;Z)Z

    return-void
.end method
