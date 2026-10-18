.class Lcom/yftech/libradio/dialog/DabSettingsDialog$AnnouncementRvAdapter$1;
.super Ljava/lang/Object;
.source "DabSettingsDialog.java"

# interfaces
.implements Lcom/yftech/libradio/dialog/DabSettingsDialog$SwitchListCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/libradio/dialog/DabSettingsDialog$AnnouncementRvAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/yftech/libradio/dialog/DabSettingsDialog$AnnouncementViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libradio/dialog/DabSettingsDialog$AnnouncementRvAdapter;


# direct methods
.method constructor <init>(Lcom/yftech/libradio/dialog/DabSettingsDialog$AnnouncementRvAdapter;)V
    .locals 0

    .line 395
    iput-object p1, p0, Lcom/yftech/libradio/dialog/DabSettingsDialog$AnnouncementRvAdapter$1;->this$0:Lcom/yftech/libradio/dialog/DabSettingsDialog$AnnouncementRvAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemCheckedChanged(IZ)V
    .locals 1

    .line 398
    iget-object v0, p0, Lcom/yftech/libradio/dialog/DabSettingsDialog$AnnouncementRvAdapter$1;->this$0:Lcom/yftech/libradio/dialog/DabSettingsDialog$AnnouncementRvAdapter;

    invoke-static {v0}, Lcom/yftech/libradio/dialog/DabSettingsDialog$AnnouncementRvAdapter;->access$1400(Lcom/yftech/libradio/dialog/DabSettingsDialog$AnnouncementRvAdapter;)Lcom/yftech/libradio/dialog/DabSettingsDialog$SwitchListCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 399
    iget-object p0, p0, Lcom/yftech/libradio/dialog/DabSettingsDialog$AnnouncementRvAdapter$1;->this$0:Lcom/yftech/libradio/dialog/DabSettingsDialog$AnnouncementRvAdapter;

    invoke-static {p0}, Lcom/yftech/libradio/dialog/DabSettingsDialog$AnnouncementRvAdapter;->access$1400(Lcom/yftech/libradio/dialog/DabSettingsDialog$AnnouncementRvAdapter;)Lcom/yftech/libradio/dialog/DabSettingsDialog$SwitchListCallback;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/yftech/libradio/dialog/DabSettingsDialog$SwitchListCallback;->onItemCheckedChanged(IZ)V

    :cond_0
    return-void
.end method
