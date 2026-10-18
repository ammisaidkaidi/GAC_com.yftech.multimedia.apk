.class Lcom/yftech/libradio/RadioManager$2;
.super Lcom/yftech/car/audio/CarAudioManager$CarAudioCallback;
.source "RadioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/libradio/RadioManager;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libradio/RadioManager;


# direct methods
.method constructor <init>(Lcom/yftech/libradio/RadioManager;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/yftech/libradio/RadioManager$2;->this$0:Lcom/yftech/libradio/RadioManager;

    invoke-direct {p0}, Lcom/yftech/car/audio/CarAudioManager$CarAudioCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangedMediaSource(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 48
    invoke-super {p0, p1, p2, p3}, Lcom/yftech/car/audio/CarAudioManager$CarAudioCallback;->onChangedMediaSource(ILjava/lang/String;Ljava/lang/String;)V

    .line 49
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "onChangedMediaSource clientId = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    return-void
.end method
