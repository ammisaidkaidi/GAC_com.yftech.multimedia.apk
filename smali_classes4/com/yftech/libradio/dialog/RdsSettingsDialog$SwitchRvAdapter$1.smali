.class Lcom/yftech/libradio/dialog/RdsSettingsDialog$SwitchRvAdapter$1;
.super Ljava/lang/Object;
.source "RdsSettingsDialog.java"

# interfaces
.implements Lcom/yftech/libradio/dialog/RdsSettingsDialog$SwitchListCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/libradio/dialog/RdsSettingsDialog$SwitchRvAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/yftech/libradio/dialog/RdsSettingsDialog$SwitchViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libradio/dialog/RdsSettingsDialog$SwitchRvAdapter;


# direct methods
.method constructor <init>(Lcom/yftech/libradio/dialog/RdsSettingsDialog$SwitchRvAdapter;)V
    .locals 0

    .line 220
    iput-object p1, p0, Lcom/yftech/libradio/dialog/RdsSettingsDialog$SwitchRvAdapter$1;->this$0:Lcom/yftech/libradio/dialog/RdsSettingsDialog$SwitchRvAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemCheckedChanged(IZ)V
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/yftech/libradio/dialog/RdsSettingsDialog$SwitchRvAdapter$1;->this$0:Lcom/yftech/libradio/dialog/RdsSettingsDialog$SwitchRvAdapter;

    invoke-static {v0}, Lcom/yftech/libradio/dialog/RdsSettingsDialog$SwitchRvAdapter;->access$700(Lcom/yftech/libradio/dialog/RdsSettingsDialog$SwitchRvAdapter;)Lcom/yftech/libradio/dialog/RdsSettingsDialog$SwitchListCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 224
    iget-object p0, p0, Lcom/yftech/libradio/dialog/RdsSettingsDialog$SwitchRvAdapter$1;->this$0:Lcom/yftech/libradio/dialog/RdsSettingsDialog$SwitchRvAdapter;

    invoke-static {p0}, Lcom/yftech/libradio/dialog/RdsSettingsDialog$SwitchRvAdapter;->access$700(Lcom/yftech/libradio/dialog/RdsSettingsDialog$SwitchRvAdapter;)Lcom/yftech/libradio/dialog/RdsSettingsDialog$SwitchListCallback;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/yftech/libradio/dialog/RdsSettingsDialog$SwitchListCallback;->onItemCheckedChanged(IZ)V

    :cond_0
    return-void
.end method
