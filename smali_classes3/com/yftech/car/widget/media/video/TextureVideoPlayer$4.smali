.class Lcom/yftech/car/widget/media/video/TextureVideoPlayer$4;
.super Ljava/lang/Object;
.source "TextureVideoPlayer.java"

# interfaces
.implements Lcom/yftech/car/widget/media/dialog/ConfirmDialog$OnConfirmDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->setDialogError(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/car/widget/media/video/TextureVideoPlayer;


# direct methods
.method constructor <init>(Lcom/yftech/car/widget/media/video/TextureVideoPlayer;)V
    .locals 0

    .line 1901
    iput-object p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer$4;->this$0:Lcom/yftech/car/widget/media/video/TextureVideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfirm(Z)V
    .locals 0

    .line 1904
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer$4;->this$0:Lcom/yftech/car/widget/media/video/TextureVideoPlayer;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->access$2602(Lcom/yftech/car/widget/media/video/TextureVideoPlayer;Z)Z

    return-void
.end method
