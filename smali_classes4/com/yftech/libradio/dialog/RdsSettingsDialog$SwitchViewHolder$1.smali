.class Lcom/yftech/libradio/dialog/RdsSettingsDialog$SwitchViewHolder$1;
.super Ljava/lang/Object;
.source "RdsSettingsDialog.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/libradio/dialog/RdsSettingsDialog$SwitchViewHolder;-><init>(Landroid/view/View;Lcom/yftech/libradio/dialog/RdsSettingsDialog$SwitchListCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libradio/dialog/RdsSettingsDialog$SwitchViewHolder;

.field final synthetic val$callback:Lcom/yftech/libradio/dialog/RdsSettingsDialog$SwitchListCallback;


# direct methods
.method constructor <init>(Lcom/yftech/libradio/dialog/RdsSettingsDialog$SwitchViewHolder;Lcom/yftech/libradio/dialog/RdsSettingsDialog$SwitchListCallback;)V
    .locals 0

    .line 265
    iput-object p1, p0, Lcom/yftech/libradio/dialog/RdsSettingsDialog$SwitchViewHolder$1;->this$0:Lcom/yftech/libradio/dialog/RdsSettingsDialog$SwitchViewHolder;

    iput-object p2, p0, Lcom/yftech/libradio/dialog/RdsSettingsDialog$SwitchViewHolder$1;->val$callback:Lcom/yftech/libradio/dialog/RdsSettingsDialog$SwitchListCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 268
    iget-object v0, p0, Lcom/yftech/libradio/dialog/RdsSettingsDialog$SwitchViewHolder$1;->val$callback:Lcom/yftech/libradio/dialog/RdsSettingsDialog$SwitchListCallback;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isPressed()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 269
    iget-object p1, p0, Lcom/yftech/libradio/dialog/RdsSettingsDialog$SwitchViewHolder$1;->val$callback:Lcom/yftech/libradio/dialog/RdsSettingsDialog$SwitchListCallback;

    iget-object p0, p0, Lcom/yftech/libradio/dialog/RdsSettingsDialog$SwitchViewHolder$1;->this$0:Lcom/yftech/libradio/dialog/RdsSettingsDialog$SwitchViewHolder;

    invoke-static {p0}, Lcom/yftech/libradio/dialog/RdsSettingsDialog$SwitchViewHolder;->access$800(Lcom/yftech/libradio/dialog/RdsSettingsDialog$SwitchViewHolder;)I

    move-result p0

    invoke-interface {p1, p0, p2}, Lcom/yftech/libradio/dialog/RdsSettingsDialog$SwitchListCallback;->onItemCheckedChanged(IZ)V

    :cond_0
    return-void
.end method
