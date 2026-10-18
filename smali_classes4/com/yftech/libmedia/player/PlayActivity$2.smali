.class Lcom/yftech/libmedia/player/PlayActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "PlayActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/libmedia/player/PlayActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libmedia/player/PlayActivity;


# direct methods
.method constructor <init>(Lcom/yftech/libmedia/player/PlayActivity;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/yftech/libmedia/player/PlayActivity$2;->this$0:Lcom/yftech/libmedia/player/PlayActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 172
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "test"

    .line 173
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "value"

    const/4 v0, -0x1

    .line 175
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-ltz p1, :cond_1

    .line 178
    iget-object p0, p0, Lcom/yftech/libmedia/player/PlayActivity$2;->this$0:Lcom/yftech/libmedia/player/PlayActivity;

    invoke-static {p0}, Lcom/yftech/libmedia/player/PlayActivity;->access$600(Lcom/yftech/libmedia/player/PlayActivity;)Lcom/yftech/vehicle/sdk/CarInfoManager$CarInfoListener;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/yftech/vehicle/sdk/CarInfoManager$CarInfoListener;->onVehicleSpeedChanged(I)V

    goto :goto_0

    :cond_0
    const-string p0, "aaaa"

    .line 179
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method
