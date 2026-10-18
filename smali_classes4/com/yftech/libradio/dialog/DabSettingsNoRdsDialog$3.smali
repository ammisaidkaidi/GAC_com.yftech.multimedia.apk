.class Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$3;
.super Ljava/lang/Object;
.source "DabSettingsNoRdsDialog.java"

# interfaces
.implements Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$SwitchListCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;


# direct methods
.method constructor <init>(Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$3;->this$0:Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemCheckedChanged(IZ)V
    .locals 2

    .line 141
    invoke-static {}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getInstance()Lcom/yftech/car/media/radio/dab/CarDabRadioManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getEnableAnnounce()Lcom/yftech/car/media/radio/dab/entity/EnableAnnounce;

    move-result-object v0

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 186
    :pswitch_0
    iget-object p0, p0, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$3;->this$0:Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;

    const/16 p1, 0x400

    invoke-static {p0, p1, p2}, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;->access$400(Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;IZ)V

    goto/16 :goto_0

    .line 183
    :pswitch_1
    iget-object p0, p0, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$3;->this$0:Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;

    const/16 p1, 0x200

    invoke-static {p0, p1, p2}, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;->access$400(Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;IZ)V

    goto/16 :goto_0

    .line 180
    :pswitch_2
    iget-object p0, p0, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$3;->this$0:Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;

    const/16 p1, 0x100

    invoke-static {p0, p1, p2}, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;->access$400(Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;IZ)V

    goto :goto_0

    .line 177
    :pswitch_3
    iget-object p0, p0, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$3;->this$0:Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;

    const/16 p1, 0x80

    invoke-static {p0, p1, p2}, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;->access$400(Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;IZ)V

    goto :goto_0

    .line 174
    :pswitch_4
    iget-object p0, p0, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$3;->this$0:Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;

    const/16 p1, 0x40

    invoke-static {p0, p1, p2}, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;->access$400(Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;IZ)V

    goto :goto_0

    .line 171
    :pswitch_5
    iget-object p0, p0, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$3;->this$0:Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;

    const/16 p1, 0x20

    invoke-static {p0, p1, p2}, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;->access$400(Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;IZ)V

    goto :goto_0

    .line 168
    :pswitch_6
    iget-object p0, p0, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$3;->this$0:Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;

    const/16 p1, 0x10

    invoke-static {p0, p1, p2}, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;->access$400(Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;IZ)V

    goto :goto_0

    .line 165
    :pswitch_7
    iget-object p0, p0, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$3;->this$0:Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;

    const/16 p1, 0x8

    invoke-static {p0, p1, p2}, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;->access$400(Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;IZ)V

    goto :goto_0

    .line 162
    :pswitch_8
    iget-object p0, p0, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$3;->this$0:Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;

    const/4 p1, 0x4

    invoke-static {p0, p1, p2}, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;->access$400(Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;IZ)V

    goto :goto_0

    .line 159
    :pswitch_9
    iget-object p0, p0, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$3;->this$0:Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;

    const/4 p1, 0x2

    invoke-static {p0, p1, p2}, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;->access$400(Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;IZ)V

    goto :goto_0

    .line 156
    :pswitch_a
    iget-object p0, p0, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$3;->this$0:Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;

    invoke-static {p0, v1, p2}, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;->access$400(Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;IZ)V

    goto :goto_0

    :pswitch_b
    if-eqz p2, :cond_1

    .line 146
    invoke-virtual {v0}, Lcom/yftech/car/media/radio/dab/entity/EnableAnnounce;->getAnnotype()I

    move-result p0

    if-nez p0, :cond_0

    .line 147
    invoke-static {}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getInstance()Lcom/yftech/car/media/radio/dab/CarDabRadioManager;

    move-result-object p0

    invoke-virtual {p0, v1, v1}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->setEnableAnnounce(ZI)V

    goto :goto_0

    .line 149
    :cond_0
    invoke-static {}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getInstance()Lcom/yftech/car/media/radio/dab/CarDabRadioManager;

    move-result-object p0

    invoke-virtual {v0}, Lcom/yftech/car/media/radio/dab/entity/EnableAnnounce;->getAnnotype()I

    move-result p1

    invoke-virtual {p0, v1, p1}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->setEnableAnnounce(ZI)V

    goto :goto_0

    .line 152
    :cond_1
    invoke-static {}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getInstance()Lcom/yftech/car/media/radio/dab/CarDabRadioManager;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {v0}, Lcom/yftech/car/media/radio/dab/entity/EnableAnnounce;->getAnnotype()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->setEnableAnnounce(ZI)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
