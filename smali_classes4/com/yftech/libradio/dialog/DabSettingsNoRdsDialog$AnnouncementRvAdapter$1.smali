.class Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$AnnouncementRvAdapter$1;
.super Ljava/lang/Object;
.source "DabSettingsNoRdsDialog.java"

# interfaces
.implements Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$SwitchListCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$AnnouncementRvAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$AnnouncementViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$AnnouncementRvAdapter;


# direct methods
.method constructor <init>(Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$AnnouncementRvAdapter;)V
    .locals 0

    .line 368
    iput-object p1, p0, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$AnnouncementRvAdapter$1;->this$0:Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$AnnouncementRvAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemCheckedChanged(IZ)V
    .locals 1

    .line 371
    iget-object v0, p0, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$AnnouncementRvAdapter$1;->this$0:Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$AnnouncementRvAdapter;

    invoke-static {v0}, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$AnnouncementRvAdapter;->access$1400(Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$AnnouncementRvAdapter;)Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$SwitchListCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 372
    iget-object p0, p0, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$AnnouncementRvAdapter$1;->this$0:Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$AnnouncementRvAdapter;

    invoke-static {p0}, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$AnnouncementRvAdapter;->access$1400(Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$AnnouncementRvAdapter;)Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$SwitchListCallback;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$SwitchListCallback;->onItemCheckedChanged(IZ)V

    :cond_0
    return-void
.end method
