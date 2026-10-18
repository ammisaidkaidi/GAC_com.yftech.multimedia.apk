.class Lcom/yftech/libradio/dialog/DabSettingsDialog$1$1;
.super Ljava/lang/Object;
.source "DabSettingsDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/libradio/dialog/DabSettingsDialog$1;->onEnableSerFollow(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/yftech/libradio/dialog/DabSettingsDialog$1;

.field final synthetic val$isNoOff:Z

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/yftech/libradio/dialog/DabSettingsDialog$1;IZ)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/yftech/libradio/dialog/DabSettingsDialog$1$1;->this$1:Lcom/yftech/libradio/dialog/DabSettingsDialog$1;

    iput p2, p0, Lcom/yftech/libradio/dialog/DabSettingsDialog$1$1;->val$type:I

    iput-boolean p3, p0, Lcom/yftech/libradio/dialog/DabSettingsDialog$1$1;->val$isNoOff:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 61
    iget v0, p0, Lcom/yftech/libradio/dialog/DabSettingsDialog$1$1;->val$type:I

    if-nez v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/yftech/libradio/dialog/DabSettingsDialog$1$1;->this$1:Lcom/yftech/libradio/dialog/DabSettingsDialog$1;

    iget-object v0, v0, Lcom/yftech/libradio/dialog/DabSettingsDialog$1;->this$0:Lcom/yftech/libradio/dialog/DabSettingsDialog;

    invoke-static {v0}, Lcom/yftech/libradio/dialog/DabSettingsDialog;->access$000(Lcom/yftech/libradio/dialog/DabSettingsDialog;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/libradio/dialog/DabSettingsDialog$DabSwitch;

    iget-boolean v1, p0, Lcom/yftech/libradio/dialog/DabSettingsDialog$1$1;->val$isNoOff:Z

    invoke-virtual {v0, v1}, Lcom/yftech/libradio/dialog/DabSettingsDialog$DabSwitch;->setOpen(Z)V

    .line 64
    :cond_0
    invoke-static {}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getInstance()Lcom/yftech/car/media/radio/dab/CarDabRadioManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getEnableAnnounce()Lcom/yftech/car/media/radio/dab/entity/EnableAnnounce;

    move-result-object v0

    if-nez v0, :cond_1

    .line 66
    new-instance v0, Lcom/yftech/car/media/radio/dab/entity/EnableAnnounce;

    invoke-direct {v0}, Lcom/yftech/car/media/radio/dab/entity/EnableAnnounce;-><init>()V

    .line 68
    :cond_1
    iget-object v1, p0, Lcom/yftech/libradio/dialog/DabSettingsDialog$1$1;->this$1:Lcom/yftech/libradio/dialog/DabSettingsDialog$1;

    iget-object v1, v1, Lcom/yftech/libradio/dialog/DabSettingsDialog$1;->this$0:Lcom/yftech/libradio/dialog/DabSettingsDialog;

    invoke-static {v1}, Lcom/yftech/libradio/dialog/DabSettingsDialog;->access$200(Lcom/yftech/libradio/dialog/DabSettingsDialog;)Lcom/yftech/libradio/dialog/DabSettingsDialog$SwitchRvAdapter;

    move-result-object v1

    invoke-virtual {v0}, Lcom/yftech/car/media/radio/dab/entity/EnableAnnounce;->isNoOff()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/yftech/libradio/dialog/DabSettingsDialog$1$1;->this$1:Lcom/yftech/libradio/dialog/DabSettingsDialog$1;

    iget-object v0, v0, Lcom/yftech/libradio/dialog/DabSettingsDialog$1;->this$0:Lcom/yftech/libradio/dialog/DabSettingsDialog;

    invoke-static {v0}, Lcom/yftech/libradio/dialog/DabSettingsDialog;->access$100(Lcom/yftech/libradio/dialog/DabSettingsDialog;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/yftech/libradio/dialog/DabSettingsDialog$1$1;->this$1:Lcom/yftech/libradio/dialog/DabSettingsDialog$1;

    iget-object v0, v0, Lcom/yftech/libradio/dialog/DabSettingsDialog$1;->this$0:Lcom/yftech/libradio/dialog/DabSettingsDialog;

    invoke-static {v0}, Lcom/yftech/libradio/dialog/DabSettingsDialog;->access$000(Lcom/yftech/libradio/dialog/DabSettingsDialog;)Ljava/util/List;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/yftech/libradio/dialog/DabSettingsDialog$SwitchRvAdapter;->setDataList(Ljava/util/List;)V

    .line 69
    iget-object p0, p0, Lcom/yftech/libradio/dialog/DabSettingsDialog$1$1;->this$1:Lcom/yftech/libradio/dialog/DabSettingsDialog$1;

    iget-object p0, p0, Lcom/yftech/libradio/dialog/DabSettingsDialog$1;->this$0:Lcom/yftech/libradio/dialog/DabSettingsDialog;

    invoke-static {p0}, Lcom/yftech/libradio/dialog/DabSettingsDialog;->access$200(Lcom/yftech/libradio/dialog/DabSettingsDialog;)Lcom/yftech/libradio/dialog/DabSettingsDialog$SwitchRvAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/libradio/dialog/DabSettingsDialog$SwitchRvAdapter;->notifyDataSetChanged()V

    return-void
.end method
