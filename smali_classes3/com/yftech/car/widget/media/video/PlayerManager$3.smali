.class Lcom/yftech/car/widget/media/video/PlayerManager$3;
.super Ljava/lang/Object;
.source "PlayerManager.java"

# interfaces
.implements Lcom/example/ffmpeg/listener/MyOnTimeInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/car/widget/media/video/PlayerManager;->initFFMPEGListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/car/widget/media/video/PlayerManager;


# direct methods
.method constructor <init>(Lcom/yftech/car/widget/media/video/PlayerManager;)V
    .locals 0

    .line 209
    iput-object p1, p0, Lcom/yftech/car/widget/media/video/PlayerManager$3;->this$0:Lcom/yftech/car/widget/media/video/PlayerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeInfo(Lcom/example/ffmpeg/bean/TimeInfoBean;)V
    .locals 0

    return-void
.end method
