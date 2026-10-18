.class Lcom/yftech/libradio/dialog/DabSettingsDialog$3;
.super Ljava/lang/Object;
.source "DabSettingsDialog.java"

# interfaces
.implements Lcom/yftech/libradio/dialog/DabSettingsDialog$SwitchListCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/libradio/dialog/DabSettingsDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libradio/dialog/DabSettingsDialog;


# direct methods
.method constructor <init>(Lcom/yftech/libradio/dialog/DabSettingsDialog;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/yftech/libradio/dialog/DabSettingsDialog$3;->this$0:Lcom/yftech/libradio/dialog/DabSettingsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemCheckedChanged(IZ)V
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 165
    invoke-static {}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getInstance()Lcom/yftech/car/media/radio/dab/CarDabRadioManager;

    move-result-object p0

    invoke-virtual {p0, v0, p2}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->setEnableSerFollow(IZ)V

    goto/16 :goto_0

    .line 167
    :cond_0
    invoke-static {}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getInstance()Lcom/yftech/car/media/radio/dab/CarDabRadioManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getEnableAnnounce()Lcom/yftech/car/media/radio/dab/entity/EnableAnnounce;

    move-result-object v1

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 212
    :pswitch_0
    iget-object p0, p0, Lcom/yftech/libradio/dialog/DabSettingsDialog$3;->this$0:Lcom/yftech/libradio/dialog/DabSettingsDialog;

    const/16 p1, 0x400

    invoke-static {p0, p1, p2}, Lcom/yftech/libradio/dialog/DabSettingsDialog;->access$400(Lcom/yftech/libradio/dialog/DabSettingsDialog;IZ)V

    goto/16 :goto_0

    .line 209
    :pswitch_1
    iget-object p0, p0, Lcom/yftech/libradio/dialog/DabSettingsDialog$3;->this$0:Lcom/yftech/libradio/dialog/DabSettingsDialog;

    const/16 p1, 0x200

    invoke-static {p0, p1, p2}, Lcom/yftech/libradio/dialog/DabSettingsDialog;->access$400(Lcom/yftech/libradio/dialog/DabSettingsDialog;IZ)V

    goto/16 :goto_0

    .line 206
    :pswitch_2
    iget-object p0, p0, Lcom/yftech/libradio/dialog/DabSettingsDialog$3;->this$0:Lcom/yftech/libradio/dialog/DabSettingsDialog;

    const/16 p1, 0x100

    invoke-static {p0, p1, p2}, Lcom/yftech/libradio/dialog/DabSettingsDialog;->access$400(Lcom/yftech/libradio/dialog/DabSettingsDialog;IZ)V

    goto :goto_0

    .line 203
    :pswitch_3
    iget-object p0, p0, Lcom/yftech/libradio/dialog/DabSettingsDialog$3;->this$0:Lcom/yftech/libradio/dialog/DabSettingsDialog;

    const/16 p1, 0x80

    invoke-static {p0, p1, p2}, Lcom/yftech/libradio/dialog/DabSettingsDialog;->access$400(Lcom/yftech/libradio/dialog/DabSettingsDialog;IZ)V

    goto :goto_0

    .line 200
    :pswitch_4
    iget-object p0, p0, Lcom/yftech/libradio/dialog/DabSettingsDialog$3;->this$0:Lcom/yftech/libradio/dialog/DabSettingsDialog;

    const/16 p1, 0x40

    invoke-static {p0, p1, p2}, Lcom/yftech/libradio/dialog/DabSettingsDialog;->access$400(Lcom/yftech/libradio/dialog/DabSettingsDialog;IZ)V

    goto :goto_0

    .line 197
    :pswitch_5
    iget-object p0, p0, Lcom/yftech/libradio/dialog/DabSettingsDialog$3;->this$0:Lcom/yftech/libradio/dialog/DabSettingsDialog;

    const/16 p1, 0x20

    invoke-static {p0, p1, p2}, Lcom/yftech/libradio/dialog/DabSettingsDialog;->access$400(Lcom/yftech/libradio/dialog/DabSettingsDialog;IZ)V

    goto :goto_0

    .line 194
    :pswitch_6
    iget-object p0, p0, Lcom/yftech/libradio/dialog/DabSettingsDialog$3;->this$0:Lcom/yftech/libradio/dialog/DabSettingsDialog;

    const/16 p1, 0x10

    invoke-static {p0, p1, p2}, Lcom/yftech/libradio/dialog/DabSettingsDialog;->access$400(Lcom/yftech/libradio/dialog/DabSettingsDialog;IZ)V

    goto :goto_0

    .line 191
    :pswitch_7
    iget-object p0, p0, Lcom/yftech/libradio/dialog/DabSettingsDialog$3;->this$0:Lcom/yftech/libradio/dialog/DabSettingsDialog;

    const/16 p1, 0x8

    invoke-static {p0, p1, p2}, Lcom/yftech/libradio/dialog/DabSettingsDialog;->access$400(Lcom/yftech/libradio/dialog/DabSettingsDialog;IZ)V

    goto :goto_0

    .line 188
    :pswitch_8
    iget-object p0, p0, Lcom/yftech/libradio/dialog/DabSettingsDialog$3;->this$0:Lcom/yftech/libradio/dialog/DabSettingsDialog;

    const/4 p1, 0x4

    invoke-static {p0, p1, p2}, Lcom/yftech/libradio/dialog/DabSettingsDialog;->access$400(Lcom/yftech/libradio/dialog/DabSettingsDialog;IZ)V

    goto :goto_0

    .line 185
    :pswitch_9
    iget-object p0, p0, Lcom/yftech/libradio/dialog/DabSettingsDialog$3;->this$0:Lcom/yftech/libradio/dialog/DabSettingsDialog;

    const/4 p1, 0x2

    invoke-static {p0, p1, p2}, Lcom/yftech/libradio/dialog/DabSettingsDialog;->access$400(Lcom/yftech/libradio/dialog/DabSettingsDialog;IZ)V

    goto :goto_0

    .line 182
    :pswitch_a
    iget-object p0, p0, Lcom/yftech/libradio/dialog/DabSettingsDialog$3;->this$0:Lcom/yftech/libradio/dialog/DabSettingsDialog;

    invoke-static {p0, v2, p2}, Lcom/yftech/libradio/dialog/DabSettingsDialog;->access$400(Lcom/yftech/libradio/dialog/DabSettingsDialog;IZ)V

    goto :goto_0

    :pswitch_b
    if-eqz p2, :cond_2

    .line 172
    invoke-virtual {v1}, Lcom/yftech/car/media/radio/dab/entity/EnableAnnounce;->getAnnotype()I

    move-result p0

    if-nez p0, :cond_1

    .line 173
    invoke-static {}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getInstance()Lcom/yftech/car/media/radio/dab/CarDabRadioManager;

    move-result-object p0

    invoke-virtual {p0, v2, v2}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->setEnableAnnounce(ZI)V

    goto :goto_0

    .line 175
    :cond_1
    invoke-static {}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getInstance()Lcom/yftech/car/media/radio/dab/CarDabRadioManager;

    move-result-object p0

    invoke-virtual {v1}, Lcom/yftech/car/media/radio/dab/entity/EnableAnnounce;->getAnnotype()I

    move-result p1

    invoke-virtual {p0, v2, p1}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->setEnableAnnounce(ZI)V

    goto :goto_0

    .line 178
    :cond_2
    invoke-static {}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getInstance()Lcom/yftech/car/media/radio/dab/CarDabRadioManager;

    move-result-object p0

    invoke-virtual {v1}, Lcom/yftech/car/media/radio/dab/entity/EnableAnnounce;->getAnnotype()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->setEnableAnnounce(ZI)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
