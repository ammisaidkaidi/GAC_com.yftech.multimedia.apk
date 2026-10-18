.class Lcom/yftech/libradio/dialog/RdsSettingsDialog$3;
.super Ljava/lang/Object;
.source "RdsSettingsDialog.java"

# interfaces
.implements Lcom/yftech/libradio/dialog/RdsSettingsDialog$SwitchListCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/libradio/dialog/RdsSettingsDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libradio/dialog/RdsSettingsDialog;


# direct methods
.method constructor <init>(Lcom/yftech/libradio/dialog/RdsSettingsDialog;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/yftech/libradio/dialog/RdsSettingsDialog$3;->this$0:Lcom/yftech/libradio/dialog/RdsSettingsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemCheckedChanged(IZ)V
    .locals 3

    .line 140
    iget-object v0, p0, Lcom/yftech/libradio/dialog/RdsSettingsDialog$3;->this$0:Lcom/yftech/libradio/dialog/RdsSettingsDialog;

    invoke-static {v0}, Lcom/yftech/libradio/dialog/RdsSettingsDialog;->access$000(Lcom/yftech/libradio/dialog/RdsSettingsDialog;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/libradio/dialog/RdsSettingsDialog$RdsSwitch;

    invoke-virtual {v0, p2}, Lcom/yftech/libradio/dialog/RdsSettingsDialog$RdsSwitch;->setOpen(Z)V

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 142
    invoke-static {}, Lcom/yftech/car/media/radio/CarRadioManager;->getInstance()Lcom/yftech/car/media/radio/CarRadioManager;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, p2}, Lcom/yftech/car/media/radio/CarRadioManager;->setRdsCommonStatusEnable(IZ)Z

    .line 143
    iget-object p1, p0, Lcom/yftech/libradio/dialog/RdsSettingsDialog$3;->this$0:Lcom/yftech/libradio/dialog/RdsSettingsDialog;

    invoke-static {p1}, Lcom/yftech/libradio/dialog/RdsSettingsDialog;->access$000(Lcom/yftech/libradio/dialog/RdsSettingsDialog;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yftech/libradio/dialog/RdsSettingsDialog$RdsSwitch;

    invoke-virtual {p1, p2}, Lcom/yftech/libradio/dialog/RdsSettingsDialog$RdsSwitch;->setShow(Z)V

    .line 144
    iget-object p1, p0, Lcom/yftech/libradio/dialog/RdsSettingsDialog$3;->this$0:Lcom/yftech/libradio/dialog/RdsSettingsDialog;

    invoke-static {p1}, Lcom/yftech/libradio/dialog/RdsSettingsDialog;->access$000(Lcom/yftech/libradio/dialog/RdsSettingsDialog;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yftech/libradio/dialog/RdsSettingsDialog$RdsSwitch;

    invoke-virtual {p1, p2}, Lcom/yftech/libradio/dialog/RdsSettingsDialog$RdsSwitch;->setShow(Z)V

    .line 145
    iget-object p1, p0, Lcom/yftech/libradio/dialog/RdsSettingsDialog$3;->this$0:Lcom/yftech/libradio/dialog/RdsSettingsDialog;

    invoke-static {p1}, Lcom/yftech/libradio/dialog/RdsSettingsDialog;->access$000(Lcom/yftech/libradio/dialog/RdsSettingsDialog;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yftech/libradio/dialog/RdsSettingsDialog$RdsSwitch;

    invoke-virtual {p1, p2}, Lcom/yftech/libradio/dialog/RdsSettingsDialog$RdsSwitch;->setShow(Z)V

    .line 146
    iget-object p1, p0, Lcom/yftech/libradio/dialog/RdsSettingsDialog$3;->this$0:Lcom/yftech/libradio/dialog/RdsSettingsDialog;

    invoke-static {p1}, Lcom/yftech/libradio/dialog/RdsSettingsDialog;->access$000(Lcom/yftech/libradio/dialog/RdsSettingsDialog;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x4

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yftech/libradio/dialog/RdsSettingsDialog$RdsSwitch;

    invoke-virtual {p1, p2}, Lcom/yftech/libradio/dialog/RdsSettingsDialog$RdsSwitch;->setShow(Z)V

    .line 147
    iget-object p0, p0, Lcom/yftech/libradio/dialog/RdsSettingsDialog$3;->this$0:Lcom/yftech/libradio/dialog/RdsSettingsDialog;

    invoke-static {p0}, Lcom/yftech/libradio/dialog/RdsSettingsDialog;->access$400(Lcom/yftech/libradio/dialog/RdsSettingsDialog;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_0

    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 166
    :pswitch_0
    invoke-static {}, Lcom/yftech/car/media/radio/CarRadioManager;->getInstance()Lcom/yftech/car/media/radio/CarRadioManager;

    move-result-object p0

    invoke-virtual {p0, v0, p2}, Lcom/yftech/car/media/radio/CarRadioManager;->setRdsCommonStatusEnable(IZ)Z

    goto :goto_0

    .line 160
    :pswitch_1
    iget-object p1, p0, Lcom/yftech/libradio/dialog/RdsSettingsDialog$3;->this$0:Lcom/yftech/libradio/dialog/RdsSettingsDialog;

    const-string v0, "yf_sp_tp_show"

    invoke-static {p1, v0, p2}, Lcom/yftech/libradio/dialog/RdsSettingsDialog;->access$500(Lcom/yftech/libradio/dialog/RdsSettingsDialog;Ljava/lang/String;Z)V

    .line 161
    new-instance p1, Landroid/content/Intent;

    const-string v0, "yf.action.rds.settings"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "extr_tp_show"

    .line 162
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 163
    iget-object p0, p0, Lcom/yftech/libradio/dialog/RdsSettingsDialog$3;->this$0:Lcom/yftech/libradio/dialog/RdsSettingsDialog;

    invoke-static {p0}, Lcom/yftech/libradio/dialog/RdsSettingsDialog;->access$600(Lcom/yftech/libradio/dialog/RdsSettingsDialog;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 157
    :pswitch_2
    invoke-static {}, Lcom/yftech/car/media/radio/CarRadioManager;->getInstance()Lcom/yftech/car/media/radio/CarRadioManager;

    move-result-object p0

    invoke-virtual {p0, v1, p2}, Lcom/yftech/car/media/radio/CarRadioManager;->setRdsCommonStatusEnable(IZ)Z

    goto :goto_0

    .line 151
    :pswitch_3
    iget-object p1, p0, Lcom/yftech/libradio/dialog/RdsSettingsDialog$3;->this$0:Lcom/yftech/libradio/dialog/RdsSettingsDialog;

    const-string v0, "yf_sp_pty_show"

    invoke-static {p1, v0, p2}, Lcom/yftech/libradio/dialog/RdsSettingsDialog;->access$500(Lcom/yftech/libradio/dialog/RdsSettingsDialog;Ljava/lang/String;Z)V

    .line 152
    new-instance p1, Landroid/content/Intent;

    const-string v0, "yf.action.rds.settings"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "extr_pty_show"

    .line 153
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 154
    iget-object p0, p0, Lcom/yftech/libradio/dialog/RdsSettingsDialog$3;->this$0:Lcom/yftech/libradio/dialog/RdsSettingsDialog;

    invoke-static {p0}, Lcom/yftech/libradio/dialog/RdsSettingsDialog;->access$600(Lcom/yftech/libradio/dialog/RdsSettingsDialog;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
