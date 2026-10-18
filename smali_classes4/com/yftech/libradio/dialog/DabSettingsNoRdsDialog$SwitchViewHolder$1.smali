.class Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$SwitchViewHolder$1;
.super Ljava/lang/Object;
.source "DabSettingsNoRdsDialog.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$SwitchViewHolder;-><init>(Landroid/view/View;Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$SwitchListCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$SwitchViewHolder;

.field final synthetic val$callback:Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$SwitchListCallback;


# direct methods
.method constructor <init>(Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$SwitchViewHolder;Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$SwitchListCallback;)V
    .locals 0

    .line 342
    iput-object p1, p0, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$SwitchViewHolder$1;->this$0:Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$SwitchViewHolder;

    iput-object p2, p0, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$SwitchViewHolder$1;->val$callback:Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$SwitchListCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 345
    iget-object v0, p0, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$SwitchViewHolder$1;->val$callback:Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$SwitchListCallback;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isPressed()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 346
    iget-object p1, p0, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$SwitchViewHolder$1;->val$callback:Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$SwitchListCallback;

    iget-object p0, p0, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$SwitchViewHolder$1;->this$0:Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$SwitchViewHolder;

    invoke-static {p0}, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$SwitchViewHolder;->access$600(Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$SwitchViewHolder;)I

    move-result p0

    invoke-interface {p1, p0, p2}, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$SwitchListCallback;->onItemCheckedChanged(IZ)V

    :cond_0
    return-void
.end method
