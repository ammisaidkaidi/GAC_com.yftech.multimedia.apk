.class Lcom/yftech/libradio/dialog/DabSettingsDialog$SwitchRvAdapter$2;
.super Ljava/lang/Object;
.source "DabSettingsDialog.java"

# interfaces
.implements Lcom/yftech/libradio/dialog/DabSettingsDialog$SwitchListCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/libradio/dialog/DabSettingsDialog$SwitchRvAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libradio/dialog/DabSettingsDialog$SwitchRvAdapter;


# direct methods
.method constructor <init>(Lcom/yftech/libradio/dialog/DabSettingsDialog$SwitchRvAdapter;)V
    .locals 0

    .line 302
    iput-object p1, p0, Lcom/yftech/libradio/dialog/DabSettingsDialog$SwitchRvAdapter$2;->this$0:Lcom/yftech/libradio/dialog/DabSettingsDialog$SwitchRvAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemCheckedChanged(IZ)V
    .locals 1

    .line 305
    iget-object v0, p0, Lcom/yftech/libradio/dialog/DabSettingsDialog$SwitchRvAdapter$2;->this$0:Lcom/yftech/libradio/dialog/DabSettingsDialog$SwitchRvAdapter;

    invoke-static {v0}, Lcom/yftech/libradio/dialog/DabSettingsDialog$SwitchRvAdapter;->access$500(Lcom/yftech/libradio/dialog/DabSettingsDialog$SwitchRvAdapter;)Lcom/yftech/libradio/dialog/DabSettingsDialog$SwitchListCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 306
    iget-object p0, p0, Lcom/yftech/libradio/dialog/DabSettingsDialog$SwitchRvAdapter$2;->this$0:Lcom/yftech/libradio/dialog/DabSettingsDialog$SwitchRvAdapter;

    invoke-static {p0}, Lcom/yftech/libradio/dialog/DabSettingsDialog$SwitchRvAdapter;->access$500(Lcom/yftech/libradio/dialog/DabSettingsDialog$SwitchRvAdapter;)Lcom/yftech/libradio/dialog/DabSettingsDialog$SwitchListCallback;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/yftech/libradio/dialog/DabSettingsDialog$SwitchListCallback;->onItemCheckedChanged(IZ)V

    :cond_0
    return-void
.end method
