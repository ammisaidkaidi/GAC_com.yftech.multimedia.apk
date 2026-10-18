.class Lcom/yftech/libradio/dabui/epg/EpgReminderDialog$1;
.super Landroid/os/Handler;
.source "EpgReminderDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/libradio/dabui/epg/EpgReminderDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libradio/dabui/epg/EpgReminderDialog;


# direct methods
.method constructor <init>(Lcom/yftech/libradio/dabui/epg/EpgReminderDialog;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/yftech/libradio/dabui/epg/EpgReminderDialog$1;->this$0:Lcom/yftech/libradio/dabui/epg/EpgReminderDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 38
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x5bf9

    if-ne p1, v0, :cond_0

    .line 39
    iget-object p0, p0, Lcom/yftech/libradio/dabui/epg/EpgReminderDialog$1;->this$0:Lcom/yftech/libradio/dabui/epg/EpgReminderDialog;

    invoke-virtual {p0}, Lcom/yftech/libradio/dabui/epg/EpgReminderDialog;->dismiss()V

    :cond_0
    return-void
.end method
