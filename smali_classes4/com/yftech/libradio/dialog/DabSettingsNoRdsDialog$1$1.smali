.class Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$1$1;
.super Ljava/lang/Object;
.source "DabSettingsNoRdsDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$1;->onEnableAnnounceChange(ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$1;

.field final synthetic val$isNoOff:Z


# direct methods
.method constructor <init>(Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$1;Z)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$1$1;->this$1:Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$1;

    iput-boolean p2, p0, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$1$1;->val$isNoOff:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 64
    iget-object v0, p0, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$1$1;->this$1:Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$1;

    iget-object v0, v0, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$1;->this$0:Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;

    invoke-static {v0}, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;->access$000(Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$DabSwitch;

    iget-boolean v2, p0, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$1$1;->val$isNoOff:Z

    invoke-virtual {v0, v2}, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$DabSwitch;->setOpen(Z)V

    .line 65
    iget-object v0, p0, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$1$1;->this$1:Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$1;

    iget-object v0, v0, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$1;->this$0:Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;

    invoke-static {v0}, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;->access$100(Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$DabSwitch;

    iget-boolean v2, p0, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$1$1;->val$isNoOff:Z

    invoke-virtual {v0, v2}, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$DabSwitch;->setOpen(Z)V

    .line 66
    iget-boolean v0, p0, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$1$1;->val$isNoOff:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 67
    iget-object v0, p0, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$1$1;->this$1:Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$1;

    iget-object v0, v0, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$1;->this$0:Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;

    invoke-static {v0}, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;->access$000(Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$DabSwitch;

    .line 68
    instance-of v3, v1, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$AnnouncementSwitch;

    if-eqz v3, :cond_0

    .line 69
    check-cast v1, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$AnnouncementSwitch;

    invoke-virtual {v1, v2}, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$AnnouncementSwitch;->setShow(Z)V

    goto :goto_0

    .line 73
    :cond_1
    iget-object v0, p0, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$1$1;->this$1:Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$1;

    iget-object v0, v0, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$1;->this$0:Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;

    invoke-static {v0}, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;->access$000(Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$DabSwitch;

    .line 74
    instance-of v4, v3, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$AnnouncementSwitch;

    if-eqz v4, :cond_2

    .line 75
    check-cast v3, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$AnnouncementSwitch;

    invoke-virtual {v3, v1}, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$AnnouncementSwitch;->setShow(Z)V

    goto :goto_1

    .line 79
    :cond_3
    invoke-static {}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getInstance()Lcom/yftech/car/media/radio/dab/CarDabRadioManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getEnableAnnounce()Lcom/yftech/car/media/radio/dab/entity/EnableAnnounce;

    move-result-object v0

    .line 80
    iget-object v1, p0, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$1$1;->this$1:Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$1;

    iget-object v1, v1, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$1;->this$0:Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;

    invoke-static {v1}, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;->access$000(Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$DabSwitch;

    invoke-virtual {v0, v2}, Lcom/yftech/car/media/radio/dab/entity/EnableAnnounce;->isAnnotype(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$DabSwitch;->setOpen(Z)V

    .line 81
    iget-object v1, p0, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$1$1;->this$1:Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$1;

    iget-object v1, v1, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$1;->this$0:Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;

    invoke-static {v1}, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;->access$000(Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$DabSwitch;

    invoke-virtual {v0, v2}, Lcom/yftech/car/media/radio/dab/entity/EnableAnnounce;->isAnnotype(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$DabSwitch;->setOpen(Z)V

    .line 82
    iget-object v1, p0, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$1$1;->this$1:Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$1;

    iget-object v1, v1, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$1;->this$0:Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;

    invoke-static {v1}, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;->access$000(Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$DabSwitch;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/yftech/car/media/radio/dab/entity/EnableAnnounce;->isAnnotype(I)Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$DabSwitch;->setOpen(Z)V

    .line 83
    iget-object v1, p0, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$1$1;->this$1:Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$1;

    iget-object v1, v1, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$1;->this$0:Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;

    invoke-static {v1}, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;->access$000(Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$DabSwitch;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/yftech/car/media/radio/dab/entity/EnableAnnounce;->isAnnotype(I)Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$DabSwitch;->setOpen(Z)V

    .line 84
    iget-object v1, p0, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$1$1;->this$1:Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$1;

    iget-object v1, v1, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$1;->this$0:Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;

    invoke-static {v1}, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;->access$000(Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;)Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x5

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$DabSwitch;

    const/16 v3, 0x10

    invoke-virtual {v0, v3}, Lcom/yftech/car/media/radio/dab/entity/EnableAnnounce;->isAnnotype(I)Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$DabSwitch;->setOpen(Z)V

    .line 85
    iget-object v1, p0, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$1$1;->this$1:Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$1;

    iget-object v1, v1, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$1;->this$0:Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;

    invoke-static {v1}, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;->access$000(Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;)Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x6

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$DabSwitch;

    const/16 v3, 0x20

    invoke-virtual {v0, v3}, Lcom/yftech/car/media/radio/dab/entity/EnableAnnounce;->isAnnotype(I)Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$DabSwitch;->setOpen(Z)V

    .line 86
    iget-object v1, p0, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$1$1;->this$1:Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$1;

    iget-object v1, v1, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$1;->this$0:Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;

    invoke-static {v1}, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;->access$000(Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;)Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x7

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$DabSwitch;

    const/16 v3, 0x40

    invoke-virtual {v0, v3}, Lcom/yftech/car/media/radio/dab/entity/EnableAnnounce;->isAnnotype(I)Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$DabSwitch;->setOpen(Z)V

    .line 87
    iget-object v1, p0, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$1$1;->this$1:Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$1;

    iget-object v1, v1, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$1;->this$0:Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;

    invoke-static {v1}, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;->access$000(Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$DabSwitch;

    const/16 v2, 0x80

    invoke-virtual {v0, v2}, Lcom/yftech/car/media/radio/dab/entity/EnableAnnounce;->isAnnotype(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$DabSwitch;->setOpen(Z)V

    .line 88
    iget-object v1, p0, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$1$1;->this$1:Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$1;

    iget-object v1, v1, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$1;->this$0:Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;

    invoke-static {v1}, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;->access$000(Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;)Ljava/util/List;

    move-result-object v1

    const/16 v2, 0x9

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$DabSwitch;

    const/16 v2, 0x100

    invoke-virtual {v0, v2}, Lcom/yftech/car/media/radio/dab/entity/EnableAnnounce;->isAnnotype(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$DabSwitch;->setOpen(Z)V

    .line 89
    iget-object v1, p0, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$1$1;->this$1:Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$1;

    iget-object v1, v1, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$1;->this$0:Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;

    invoke-static {v1}, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;->access$000(Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;)Ljava/util/List;

    move-result-object v1

    const/16 v2, 0xa

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$DabSwitch;

    const/16 v2, 0x200

    invoke-virtual {v0, v2}, Lcom/yftech/car/media/radio/dab/entity/EnableAnnounce;->isAnnotype(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$DabSwitch;->setOpen(Z)V

    .line 90
    iget-object v1, p0, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$1$1;->this$1:Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$1;

    iget-object v1, v1, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$1;->this$0:Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;

    invoke-static {v1}, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;->access$000(Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;)Ljava/util/List;

    move-result-object v1

    const/16 v2, 0xb

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$DabSwitch;

    const/16 v2, 0x400

    invoke-virtual {v0, v2}, Lcom/yftech/car/media/radio/dab/entity/EnableAnnounce;->isAnnotype(I)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$DabSwitch;->setOpen(Z)V

    .line 91
    iget-object v0, p0, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$1$1;->this$1:Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$1;

    iget-object v0, v0, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$1;->this$0:Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;

    invoke-static {v0}, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;->access$200(Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;)Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$SwitchRvAdapter;

    move-result-object v0

    iget-boolean v1, p0, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$1$1;->val$isNoOff:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$1$1;->this$1:Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$1;

    iget-object v1, v1, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$1;->this$0:Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;

    invoke-static {v1}, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;->access$000(Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;)Ljava/util/List;

    move-result-object v1

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$1$1;->this$1:Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$1;

    iget-object v1, v1, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$1;->this$0:Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;

    invoke-static {v1}, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;->access$100(Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;)Ljava/util/List;

    move-result-object v1

    :goto_2
    invoke-virtual {v0, v1}, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$SwitchRvAdapter;->setDataList(Ljava/util/List;)V

    .line 92
    iget-object p0, p0, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$1$1;->this$1:Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$1;

    iget-object p0, p0, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$1;->this$0:Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;

    invoke-static {p0}, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;->access$200(Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;)Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$SwitchRvAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$SwitchRvAdapter;->notifyDataSetChanged()V

    return-void
.end method
