.class Lcom/yftech/car/widget/media/video/VideoSeekViewImage$4;
.super Ljava/lang/Object;
.source "VideoSeekViewImage.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/car/widget/media/video/VideoSeekViewImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/car/widget/media/video/VideoSeekViewImage;


# direct methods
.method constructor <init>(Lcom/yftech/car/widget/media/video/VideoSeekViewImage;)V
    .locals 0

    .line 514
    iput-object p1, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage$4;->this$0:Lcom/yftech/car/widget/media/video/VideoSeekViewImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 0

    .line 517
    invoke-static {}, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->access$200()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "VideoSeekViewImage"

    const-string p1, "onCompletion: "

    .line 518
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
