.class Lcom/yftech/libradio/dialog/RdsSettingsDialog$1$1;
.super Ljava/lang/Object;
.source "RdsSettingsDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/libradio/dialog/RdsSettingsDialog$1;->onRdsCommonStatusChange(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/yftech/libradio/dialog/RdsSettingsDialog$1;

.field final synthetic val$type:I

.field final synthetic val$value:Z


# direct methods
.method constructor <init>(Lcom/yftech/libradio/dialog/RdsSettingsDialog$1;IZ)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/yftech/libradio/dialog/RdsSettingsDialog$1$1;->this$1:Lcom/yftech/libradio/dialog/RdsSettingsDialog$1;

    iput p2, p0, Lcom/yftech/libradio/dialog/RdsSettingsDialog$1$1;->val$type:I

    iput-boolean p3, p0, Lcom/yftech/libradio/dialog/RdsSettingsDialog$1$1;->val$value:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 89
    iget v0, p0, Lcom/yftech/libradio/dialog/RdsSettingsDialog$1$1;->val$type:I

    const/4 v1, 0x4

    const/4 v2, 0x2

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 101
    :pswitch_0
    iget-object v0, p0, Lcom/yftech/libradio/dialog/RdsSettingsDialog$1$1;->this$1:Lcom/yftech/libradio/dialog/RdsSettingsDialog$1;

    iget-object v0, v0, Lcom/yftech/libradio/dialog/RdsSettingsDialog$1;->this$0:Lcom/yftech/libradio/dialog/RdsSettingsDialog;

    invoke-static {v0}, Lcom/yftech/libradio/dialog/RdsSettingsDialog;->access$000(Lcom/yftech/libradio/dialog/RdsSettingsDialog;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/libradio/dialog/RdsSettingsDialog$RdsSwitch;

    iget-boolean v1, p0, Lcom/yftech/libradio/dialog/RdsSettingsDialog$1$1;->val$value:Z

    invoke-virtual {v0, v1}, Lcom/yftech/libradio/dialog/RdsSettingsDialog$RdsSwitch;->setOpen(Z)V

    goto :goto_0

    .line 98
    :pswitch_1
    iget-object v0, p0, Lcom/yftech/libradio/dialog/RdsSettingsDialog$1$1;->this$1:Lcom/yftech/libradio/dialog/RdsSettingsDialog$1;

    iget-object v0, v0, Lcom/yftech/libradio/dialog/RdsSettingsDialog$1;->this$0:Lcom/yftech/libradio/dialog/RdsSettingsDialog;

    invoke-static {v0}, Lcom/yftech/libradio/dialog/RdsSettingsDialog;->access$000(Lcom/yftech/libradio/dialog/RdsSettingsDialog;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/libradio/dialog/RdsSettingsDialog$RdsSwitch;

    iget-boolean v1, p0, Lcom/yftech/libradio/dialog/RdsSettingsDialog$1$1;->val$value:Z

    invoke-virtual {v0, v1}, Lcom/yftech/libradio/dialog/RdsSettingsDialog$RdsSwitch;->setOpen(Z)V

    goto :goto_0

    .line 91
    :pswitch_2
    iget-object v0, p0, Lcom/yftech/libradio/dialog/RdsSettingsDialog$1$1;->this$1:Lcom/yftech/libradio/dialog/RdsSettingsDialog$1;

    iget-object v0, v0, Lcom/yftech/libradio/dialog/RdsSettingsDialog$1;->this$0:Lcom/yftech/libradio/dialog/RdsSettingsDialog;

    invoke-static {v0}, Lcom/yftech/libradio/dialog/RdsSettingsDialog;->access$000(Lcom/yftech/libradio/dialog/RdsSettingsDialog;)Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/libradio/dialog/RdsSettingsDialog$RdsSwitch;

    iget-boolean v3, p0, Lcom/yftech/libradio/dialog/RdsSettingsDialog$1$1;->val$value:Z

    invoke-virtual {v0, v3}, Lcom/yftech/libradio/dialog/RdsSettingsDialog$RdsSwitch;->setOpen(Z)V

    .line 92
    iget-object v0, p0, Lcom/yftech/libradio/dialog/RdsSettingsDialog$1$1;->this$1:Lcom/yftech/libradio/dialog/RdsSettingsDialog$1;

    iget-object v0, v0, Lcom/yftech/libradio/dialog/RdsSettingsDialog$1;->this$0:Lcom/yftech/libradio/dialog/RdsSettingsDialog;

    invoke-static {v0}, Lcom/yftech/libradio/dialog/RdsSettingsDialog;->access$000(Lcom/yftech/libradio/dialog/RdsSettingsDialog;)Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/libradio/dialog/RdsSettingsDialog$RdsSwitch;

    iget-boolean v3, p0, Lcom/yftech/libradio/dialog/RdsSettingsDialog$1$1;->val$value:Z

    invoke-virtual {v0, v3}, Lcom/yftech/libradio/dialog/RdsSettingsDialog$RdsSwitch;->setShow(Z)V

    .line 93
    iget-object v0, p0, Lcom/yftech/libradio/dialog/RdsSettingsDialog$1$1;->this$1:Lcom/yftech/libradio/dialog/RdsSettingsDialog$1;

    iget-object v0, v0, Lcom/yftech/libradio/dialog/RdsSettingsDialog$1;->this$0:Lcom/yftech/libradio/dialog/RdsSettingsDialog;

    invoke-static {v0}, Lcom/yftech/libradio/dialog/RdsSettingsDialog;->access$000(Lcom/yftech/libradio/dialog/RdsSettingsDialog;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/libradio/dialog/RdsSettingsDialog$RdsSwitch;

    iget-boolean v2, p0, Lcom/yftech/libradio/dialog/RdsSettingsDialog$1$1;->val$value:Z

    invoke-virtual {v0, v2}, Lcom/yftech/libradio/dialog/RdsSettingsDialog$RdsSwitch;->setShow(Z)V

    .line 94
    iget-object v0, p0, Lcom/yftech/libradio/dialog/RdsSettingsDialog$1$1;->this$1:Lcom/yftech/libradio/dialog/RdsSettingsDialog$1;

    iget-object v0, v0, Lcom/yftech/libradio/dialog/RdsSettingsDialog$1;->this$0:Lcom/yftech/libradio/dialog/RdsSettingsDialog;

    invoke-static {v0}, Lcom/yftech/libradio/dialog/RdsSettingsDialog;->access$000(Lcom/yftech/libradio/dialog/RdsSettingsDialog;)Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/libradio/dialog/RdsSettingsDialog$RdsSwitch;

    iget-boolean v2, p0, Lcom/yftech/libradio/dialog/RdsSettingsDialog$1$1;->val$value:Z

    invoke-virtual {v0, v2}, Lcom/yftech/libradio/dialog/RdsSettingsDialog$RdsSwitch;->setShow(Z)V

    .line 95
    iget-object v0, p0, Lcom/yftech/libradio/dialog/RdsSettingsDialog$1$1;->this$1:Lcom/yftech/libradio/dialog/RdsSettingsDialog$1;

    iget-object v0, v0, Lcom/yftech/libradio/dialog/RdsSettingsDialog$1;->this$0:Lcom/yftech/libradio/dialog/RdsSettingsDialog;

    invoke-static {v0}, Lcom/yftech/libradio/dialog/RdsSettingsDialog;->access$000(Lcom/yftech/libradio/dialog/RdsSettingsDialog;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/libradio/dialog/RdsSettingsDialog$RdsSwitch;

    iget-boolean v1, p0, Lcom/yftech/libradio/dialog/RdsSettingsDialog$1$1;->val$value:Z

    invoke-virtual {v0, v1}, Lcom/yftech/libradio/dialog/RdsSettingsDialog$RdsSwitch;->setShow(Z)V

    .line 104
    :goto_0
    iget-object v0, p0, Lcom/yftech/libradio/dialog/RdsSettingsDialog$1$1;->this$1:Lcom/yftech/libradio/dialog/RdsSettingsDialog$1;

    iget-object v0, v0, Lcom/yftech/libradio/dialog/RdsSettingsDialog$1;->this$0:Lcom/yftech/libradio/dialog/RdsSettingsDialog;

    invoke-static {v0}, Lcom/yftech/libradio/dialog/RdsSettingsDialog;->access$100(Lcom/yftech/libradio/dialog/RdsSettingsDialog;)Lcom/yftech/libradio/dialog/RdsSettingsDialog$SwitchRvAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/libradio/dialog/RdsSettingsDialog$1$1;->this$1:Lcom/yftech/libradio/dialog/RdsSettingsDialog$1;

    iget-object v1, v1, Lcom/yftech/libradio/dialog/RdsSettingsDialog$1;->this$0:Lcom/yftech/libradio/dialog/RdsSettingsDialog;

    invoke-static {v1}, Lcom/yftech/libradio/dialog/RdsSettingsDialog;->access$000(Lcom/yftech/libradio/dialog/RdsSettingsDialog;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yftech/libradio/dialog/RdsSettingsDialog$SwitchRvAdapter;->setDataList(Ljava/util/List;)V

    .line 105
    iget-object p0, p0, Lcom/yftech/libradio/dialog/RdsSettingsDialog$1$1;->this$1:Lcom/yftech/libradio/dialog/RdsSettingsDialog$1;

    iget-object p0, p0, Lcom/yftech/libradio/dialog/RdsSettingsDialog$1;->this$0:Lcom/yftech/libradio/dialog/RdsSettingsDialog;

    invoke-static {p0}, Lcom/yftech/libradio/dialog/RdsSettingsDialog;->access$100(Lcom/yftech/libradio/dialog/RdsSettingsDialog;)Lcom/yftech/libradio/dialog/RdsSettingsDialog$SwitchRvAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/libradio/dialog/RdsSettingsDialog$SwitchRvAdapter;->notifyDataSetChanged()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
