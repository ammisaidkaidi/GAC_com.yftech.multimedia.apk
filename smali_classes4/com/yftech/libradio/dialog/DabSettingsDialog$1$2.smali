.class Lcom/yftech/libradio/dialog/DabSettingsDialog$1$2;
.super Ljava/lang/Object;
.source "DabSettingsDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/libradio/dialog/DabSettingsDialog$1;->onEnableAnnounceChange(ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/yftech/libradio/dialog/DabSettingsDialog$1;

.field final synthetic val$isNoOff:Z


# direct methods
.method constructor <init>(Lcom/yftech/libradio/dialog/DabSettingsDialog$1;Z)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/yftech/libradio/dialog/DabSettingsDialog$1$2;->this$1:Lcom/yftech/libradio/dialog/DabSettingsDialog$1;

    iput-boolean p2, p0, Lcom/yftech/libradio/dialog/DabSettingsDialog$1$2;->val$isNoOff:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 82
    iget-object v0, p0, Lcom/yftech/libradio/dialog/DabSettingsDialog$1$2;->this$1:Lcom/yftech/libradio/dialog/DabSettingsDialog$1;

    iget-object v0, v0, Lcom/yftech/libradio/dialog/DabSettingsDialog$1;->this$0:Lcom/yftech/libradio/dialog/DabSettingsDialog;

    invoke-static {v0}, Lcom/yftech/libradio/dialog/DabSettingsDialog;->access$100(Lcom/yftech/libradio/dialog/DabSettingsDialog;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/libradio/dialog/DabSettingsDialog$DabSwitch;

    iget-boolean v2, p0, Lcom/yftech/libradio/dialog/DabSettingsDialog$1$2;->val$isNoOff:Z

    invoke-virtual {v0, v2}, Lcom/yftech/libradio/dialog/DabSettingsDialog$DabSwitch;->setOpen(Z)V

    .line 83
    iget-boolean v0, p0, Lcom/yftech/libradio/dialog/DabSettingsDialog$1$2;->val$isNoOff:Z

    if-eqz v0, :cond_1

    .line 84
    iget-object v0, p0, Lcom/yftech/libradio/dialog/DabSettingsDialog$1$2;->this$1:Lcom/yftech/libradio/dialog/DabSettingsDialog$1;

    iget-object v0, v0, Lcom/yftech/libradio/dialog/DabSettingsDialog$1;->this$0:Lcom/yftech/libradio/dialog/DabSettingsDialog;

    invoke-static {v0}, Lcom/yftech/libradio/dialog/DabSettingsDialog;->access$100(Lcom/yftech/libradio/dialog/DabSettingsDialog;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yftech/libradio/dialog/DabSettingsDialog$DabSwitch;

    .line 85
    instance-of v3, v2, Lcom/yftech/libradio/dialog/DabSettingsDialog$AnnouncementSwitch;

    if-eqz v3, :cond_0

    .line 86
    check-cast v2, Lcom/yftech/libradio/dialog/DabSettingsDialog$AnnouncementSwitch;

    invoke-virtual {v2, v1}, Lcom/yftech/libradio/dialog/DabSettingsDialog$AnnouncementSwitch;->setShow(Z)V

    goto :goto_0

    .line 90
    :cond_1
    iget-object v0, p0, Lcom/yftech/libradio/dialog/DabSettingsDialog$1$2;->this$1:Lcom/yftech/libradio/dialog/DabSettingsDialog$1;

    iget-object v0, v0, Lcom/yftech/libradio/dialog/DabSettingsDialog$1;->this$0:Lcom/yftech/libradio/dialog/DabSettingsDialog;

    invoke-static {v0}, Lcom/yftech/libradio/dialog/DabSettingsDialog;->access$100(Lcom/yftech/libradio/dialog/DabSettingsDialog;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yftech/libradio/dialog/DabSettingsDialog$DabSwitch;

    .line 91
    instance-of v3, v2, Lcom/yftech/libradio/dialog/DabSettingsDialog$AnnouncementSwitch;

    if-eqz v3, :cond_2

    .line 92
    check-cast v2, Lcom/yftech/libradio/dialog/DabSettingsDialog$AnnouncementSwitch;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/yftech/libradio/dialog/DabSettingsDialog$AnnouncementSwitch;->setShow(Z)V

    goto :goto_1

    .line 96
    :cond_3
    invoke-static {}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getInstance()Lcom/yftech/car/media/radio/dab/CarDabRadioManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getEnableAnnounce()Lcom/yftech/car/media/radio/dab/entity/EnableAnnounce;

    move-result-object v0

    .line 97
    iget-object v2, p0, Lcom/yftech/libradio/dialog/DabSettingsDialog$1$2;->this$1:Lcom/yftech/libradio/dialog/DabSettingsDialog$1;

    iget-object v2, v2, Lcom/yftech/libradio/dialog/DabSettingsDialog$1;->this$0:Lcom/yftech/libradio/dialog/DabSettingsDialog;

    invoke-static {v2}, Lcom/yftech/libradio/dialog/DabSettingsDialog;->access$100(Lcom/yftech/libradio/dialog/DabSettingsDialog;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yftech/libradio/dialog/DabSettingsDialog$DabSwitch;

    invoke-virtual {v0, v1}, Lcom/yftech/car/media/radio/dab/entity/EnableAnnounce;->isAnnotype(I)Z

    move-result v1

    invoke-virtual {v2, v1}, Lcom/yftech/libradio/dialog/DabSettingsDialog$DabSwitch;->setOpen(Z)V

    .line 98
    iget-object v1, p0, Lcom/yftech/libradio/dialog/DabSettingsDialog$1$2;->this$1:Lcom/yftech/libradio/dialog/DabSettingsDialog$1;

    iget-object v1, v1, Lcom/yftech/libradio/dialog/DabSettingsDialog$1;->this$0:Lcom/yftech/libradio/dialog/DabSettingsDialog;

    invoke-static {v1}, Lcom/yftech/libradio/dialog/DabSettingsDialog;->access$100(Lcom/yftech/libradio/dialog/DabSettingsDialog;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/libradio/dialog/DabSettingsDialog$DabSwitch;

    invoke-virtual {v0, v3}, Lcom/yftech/car/media/radio/dab/entity/EnableAnnounce;->isAnnotype(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/yftech/libradio/dialog/DabSettingsDialog$DabSwitch;->setOpen(Z)V

    .line 99
    iget-object v1, p0, Lcom/yftech/libradio/dialog/DabSettingsDialog$1$2;->this$1:Lcom/yftech/libradio/dialog/DabSettingsDialog$1;

    iget-object v1, v1, Lcom/yftech/libradio/dialog/DabSettingsDialog$1;->this$0:Lcom/yftech/libradio/dialog/DabSettingsDialog;

    invoke-static {v1}, Lcom/yftech/libradio/dialog/DabSettingsDialog;->access$100(Lcom/yftech/libradio/dialog/DabSettingsDialog;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x4

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/libradio/dialog/DabSettingsDialog$DabSwitch;

    invoke-virtual {v0, v2}, Lcom/yftech/car/media/radio/dab/entity/EnableAnnounce;->isAnnotype(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/yftech/libradio/dialog/DabSettingsDialog$DabSwitch;->setOpen(Z)V

    .line 100
    iget-object v1, p0, Lcom/yftech/libradio/dialog/DabSettingsDialog$1$2;->this$1:Lcom/yftech/libradio/dialog/DabSettingsDialog$1;

    iget-object v1, v1, Lcom/yftech/libradio/dialog/DabSettingsDialog$1;->this$0:Lcom/yftech/libradio/dialog/DabSettingsDialog;

    invoke-static {v1}, Lcom/yftech/libradio/dialog/DabSettingsDialog;->access$100(Lcom/yftech/libradio/dialog/DabSettingsDialog;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x5

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/libradio/dialog/DabSettingsDialog$DabSwitch;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/yftech/car/media/radio/dab/entity/EnableAnnounce;->isAnnotype(I)Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/yftech/libradio/dialog/DabSettingsDialog$DabSwitch;->setOpen(Z)V

    .line 101
    iget-object v1, p0, Lcom/yftech/libradio/dialog/DabSettingsDialog$1$2;->this$1:Lcom/yftech/libradio/dialog/DabSettingsDialog$1;

    iget-object v1, v1, Lcom/yftech/libradio/dialog/DabSettingsDialog$1;->this$0:Lcom/yftech/libradio/dialog/DabSettingsDialog;

    invoke-static {v1}, Lcom/yftech/libradio/dialog/DabSettingsDialog;->access$100(Lcom/yftech/libradio/dialog/DabSettingsDialog;)Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x6

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/libradio/dialog/DabSettingsDialog$DabSwitch;

    const/16 v3, 0x10

    invoke-virtual {v0, v3}, Lcom/yftech/car/media/radio/dab/entity/EnableAnnounce;->isAnnotype(I)Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/yftech/libradio/dialog/DabSettingsDialog$DabSwitch;->setOpen(Z)V

    .line 102
    iget-object v1, p0, Lcom/yftech/libradio/dialog/DabSettingsDialog$1$2;->this$1:Lcom/yftech/libradio/dialog/DabSettingsDialog$1;

    iget-object v1, v1, Lcom/yftech/libradio/dialog/DabSettingsDialog$1;->this$0:Lcom/yftech/libradio/dialog/DabSettingsDialog;

    invoke-static {v1}, Lcom/yftech/libradio/dialog/DabSettingsDialog;->access$100(Lcom/yftech/libradio/dialog/DabSettingsDialog;)Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x7

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/libradio/dialog/DabSettingsDialog$DabSwitch;

    const/16 v3, 0x20

    invoke-virtual {v0, v3}, Lcom/yftech/car/media/radio/dab/entity/EnableAnnounce;->isAnnotype(I)Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/yftech/libradio/dialog/DabSettingsDialog$DabSwitch;->setOpen(Z)V

    .line 103
    iget-object v1, p0, Lcom/yftech/libradio/dialog/DabSettingsDialog$1$2;->this$1:Lcom/yftech/libradio/dialog/DabSettingsDialog$1;

    iget-object v1, v1, Lcom/yftech/libradio/dialog/DabSettingsDialog$1;->this$0:Lcom/yftech/libradio/dialog/DabSettingsDialog;

    invoke-static {v1}, Lcom/yftech/libradio/dialog/DabSettingsDialog;->access$100(Lcom/yftech/libradio/dialog/DabSettingsDialog;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/libradio/dialog/DabSettingsDialog$DabSwitch;

    const/16 v2, 0x40

    invoke-virtual {v0, v2}, Lcom/yftech/car/media/radio/dab/entity/EnableAnnounce;->isAnnotype(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/yftech/libradio/dialog/DabSettingsDialog$DabSwitch;->setOpen(Z)V

    .line 104
    iget-object v1, p0, Lcom/yftech/libradio/dialog/DabSettingsDialog$1$2;->this$1:Lcom/yftech/libradio/dialog/DabSettingsDialog$1;

    iget-object v1, v1, Lcom/yftech/libradio/dialog/DabSettingsDialog$1;->this$0:Lcom/yftech/libradio/dialog/DabSettingsDialog;

    invoke-static {v1}, Lcom/yftech/libradio/dialog/DabSettingsDialog;->access$100(Lcom/yftech/libradio/dialog/DabSettingsDialog;)Ljava/util/List;

    move-result-object v1

    const/16 v2, 0x9

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/libradio/dialog/DabSettingsDialog$DabSwitch;

    const/16 v2, 0x80

    invoke-virtual {v0, v2}, Lcom/yftech/car/media/radio/dab/entity/EnableAnnounce;->isAnnotype(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/yftech/libradio/dialog/DabSettingsDialog$DabSwitch;->setOpen(Z)V

    .line 105
    iget-object v1, p0, Lcom/yftech/libradio/dialog/DabSettingsDialog$1$2;->this$1:Lcom/yftech/libradio/dialog/DabSettingsDialog$1;

    iget-object v1, v1, Lcom/yftech/libradio/dialog/DabSettingsDialog$1;->this$0:Lcom/yftech/libradio/dialog/DabSettingsDialog;

    invoke-static {v1}, Lcom/yftech/libradio/dialog/DabSettingsDialog;->access$100(Lcom/yftech/libradio/dialog/DabSettingsDialog;)Ljava/util/List;

    move-result-object v1

    const/16 v2, 0xa

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/libradio/dialog/DabSettingsDialog$DabSwitch;

    const/16 v2, 0x100

    invoke-virtual {v0, v2}, Lcom/yftech/car/media/radio/dab/entity/EnableAnnounce;->isAnnotype(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/yftech/libradio/dialog/DabSettingsDialog$DabSwitch;->setOpen(Z)V

    .line 106
    iget-object v1, p0, Lcom/yftech/libradio/dialog/DabSettingsDialog$1$2;->this$1:Lcom/yftech/libradio/dialog/DabSettingsDialog$1;

    iget-object v1, v1, Lcom/yftech/libradio/dialog/DabSettingsDialog$1;->this$0:Lcom/yftech/libradio/dialog/DabSettingsDialog;

    invoke-static {v1}, Lcom/yftech/libradio/dialog/DabSettingsDialog;->access$100(Lcom/yftech/libradio/dialog/DabSettingsDialog;)Ljava/util/List;

    move-result-object v1

    const/16 v2, 0xb

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/libradio/dialog/DabSettingsDialog$DabSwitch;

    const/16 v2, 0x200

    invoke-virtual {v0, v2}, Lcom/yftech/car/media/radio/dab/entity/EnableAnnounce;->isAnnotype(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/yftech/libradio/dialog/DabSettingsDialog$DabSwitch;->setOpen(Z)V

    .line 107
    iget-object v1, p0, Lcom/yftech/libradio/dialog/DabSettingsDialog$1$2;->this$1:Lcom/yftech/libradio/dialog/DabSettingsDialog$1;

    iget-object v1, v1, Lcom/yftech/libradio/dialog/DabSettingsDialog$1;->this$0:Lcom/yftech/libradio/dialog/DabSettingsDialog;

    invoke-static {v1}, Lcom/yftech/libradio/dialog/DabSettingsDialog;->access$100(Lcom/yftech/libradio/dialog/DabSettingsDialog;)Ljava/util/List;

    move-result-object v1

    const/16 v2, 0xc

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/libradio/dialog/DabSettingsDialog$DabSwitch;

    const/16 v2, 0x400

    invoke-virtual {v0, v2}, Lcom/yftech/car/media/radio/dab/entity/EnableAnnounce;->isAnnotype(I)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/yftech/libradio/dialog/DabSettingsDialog$DabSwitch;->setOpen(Z)V

    .line 108
    iget-object v0, p0, Lcom/yftech/libradio/dialog/DabSettingsDialog$1$2;->this$1:Lcom/yftech/libradio/dialog/DabSettingsDialog$1;

    iget-object v0, v0, Lcom/yftech/libradio/dialog/DabSettingsDialog$1;->this$0:Lcom/yftech/libradio/dialog/DabSettingsDialog;

    invoke-static {v0}, Lcom/yftech/libradio/dialog/DabSettingsDialog;->access$200(Lcom/yftech/libradio/dialog/DabSettingsDialog;)Lcom/yftech/libradio/dialog/DabSettingsDialog$SwitchRvAdapter;

    move-result-object v0

    iget-boolean v1, p0, Lcom/yftech/libradio/dialog/DabSettingsDialog$1$2;->val$isNoOff:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/yftech/libradio/dialog/DabSettingsDialog$1$2;->this$1:Lcom/yftech/libradio/dialog/DabSettingsDialog$1;

    iget-object v1, v1, Lcom/yftech/libradio/dialog/DabSettingsDialog$1;->this$0:Lcom/yftech/libradio/dialog/DabSettingsDialog;

    invoke-static {v1}, Lcom/yftech/libradio/dialog/DabSettingsDialog;->access$100(Lcom/yftech/libradio/dialog/DabSettingsDialog;)Ljava/util/List;

    move-result-object v1

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/yftech/libradio/dialog/DabSettingsDialog$1$2;->this$1:Lcom/yftech/libradio/dialog/DabSettingsDialog$1;

    iget-object v1, v1, Lcom/yftech/libradio/dialog/DabSettingsDialog$1;->this$0:Lcom/yftech/libradio/dialog/DabSettingsDialog;

    invoke-static {v1}, Lcom/yftech/libradio/dialog/DabSettingsDialog;->access$000(Lcom/yftech/libradio/dialog/DabSettingsDialog;)Ljava/util/List;

    move-result-object v1

    :goto_2
    invoke-virtual {v0, v1}, Lcom/yftech/libradio/dialog/DabSettingsDialog$SwitchRvAdapter;->setDataList(Ljava/util/List;)V

    .line 109
    iget-object p0, p0, Lcom/yftech/libradio/dialog/DabSettingsDialog$1$2;->this$1:Lcom/yftech/libradio/dialog/DabSettingsDialog$1;

    iget-object p0, p0, Lcom/yftech/libradio/dialog/DabSettingsDialog$1;->this$0:Lcom/yftech/libradio/dialog/DabSettingsDialog;

    invoke-static {p0}, Lcom/yftech/libradio/dialog/DabSettingsDialog;->access$200(Lcom/yftech/libradio/dialog/DabSettingsDialog;)Lcom/yftech/libradio/dialog/DabSettingsDialog$SwitchRvAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/libradio/dialog/DabSettingsDialog$SwitchRvAdapter;->notifyDataSetChanged()V

    return-void
.end method
