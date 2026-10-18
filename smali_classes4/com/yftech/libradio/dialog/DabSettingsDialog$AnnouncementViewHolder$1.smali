.class Lcom/yftech/libradio/dialog/DabSettingsDialog$AnnouncementViewHolder$1;
.super Ljava/lang/Object;
.source "DabSettingsDialog.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/libradio/dialog/DabSettingsDialog$AnnouncementViewHolder;-><init>(Landroid/view/View;Lcom/yftech/libradio/dialog/DabSettingsDialog$SwitchListCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libradio/dialog/DabSettingsDialog$AnnouncementViewHolder;

.field final synthetic val$callback:Lcom/yftech/libradio/dialog/DabSettingsDialog$SwitchListCallback;


# direct methods
.method constructor <init>(Lcom/yftech/libradio/dialog/DabSettingsDialog$AnnouncementViewHolder;Lcom/yftech/libradio/dialog/DabSettingsDialog$SwitchListCallback;)V
    .locals 0

    .line 436
    iput-object p1, p0, Lcom/yftech/libradio/dialog/DabSettingsDialog$AnnouncementViewHolder$1;->this$0:Lcom/yftech/libradio/dialog/DabSettingsDialog$AnnouncementViewHolder;

    iput-object p2, p0, Lcom/yftech/libradio/dialog/DabSettingsDialog$AnnouncementViewHolder$1;->val$callback:Lcom/yftech/libradio/dialog/DabSettingsDialog$SwitchListCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 439
    iget-object v0, p0, Lcom/yftech/libradio/dialog/DabSettingsDialog$AnnouncementViewHolder$1;->val$callback:Lcom/yftech/libradio/dialog/DabSettingsDialog$SwitchListCallback;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isPressed()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 440
    iget-object p1, p0, Lcom/yftech/libradio/dialog/DabSettingsDialog$AnnouncementViewHolder$1;->val$callback:Lcom/yftech/libradio/dialog/DabSettingsDialog$SwitchListCallback;

    iget-object p0, p0, Lcom/yftech/libradio/dialog/DabSettingsDialog$AnnouncementViewHolder$1;->this$0:Lcom/yftech/libradio/dialog/DabSettingsDialog$AnnouncementViewHolder;

    invoke-static {p0}, Lcom/yftech/libradio/dialog/DabSettingsDialog$AnnouncementViewHolder;->access$1000(Lcom/yftech/libradio/dialog/DabSettingsDialog$AnnouncementViewHolder;)I

    move-result p0

    invoke-interface {p1, p0, p2}, Lcom/yftech/libradio/dialog/DabSettingsDialog$SwitchListCallback;->onItemCheckedChanged(IZ)V

    :cond_0
    return-void
.end method
