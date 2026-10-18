.class Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal$1;
.super Ljava/lang/Object;
.source "RadioManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;


# direct methods
.method constructor <init>(Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;)V
    .locals 0

    .line 768
    iput-object p1, p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal$1;->this$0:Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    const-string v0, "RadioManager"

    const-string v1, "binderDied: com.yf.media.radio killing"

    .line 771
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal$1;->this$0:Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;

    invoke-static {v0}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->access$5100(Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 773
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal$1;->this$0:Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;

    iget-object v1, p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal$1;->this$0:Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;

    invoke-static {v1}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->access$5100(Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;)Landroid/content/Context;

    move-result-object v1

    iget-object p0, p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal$1;->this$0:Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;

    invoke-static {p0}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->access$5200(Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;)Lcom/yftech/car/widget/media/manager/RadioManager$InitCallback;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->access$5300(Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;Landroid/content/Context;Lcom/yftech/car/widget/media/manager/RadioManager$InitCallback;)V

    goto :goto_0

    .line 775
    :cond_0
    iget-object p0, p0, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal$1;->this$0:Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;

    invoke-static {p0}, Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;->access$5400(Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioManagerGlobal;)Z

    :goto_0
    return-void
.end method
