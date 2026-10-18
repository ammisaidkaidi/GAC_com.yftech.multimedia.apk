.class Lcom/yftech/libradio/dialog/DabLableDialog$1;
.super Landroid/content/BroadcastReceiver;
.source "DabLableDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/libradio/dialog/DabLableDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libradio/dialog/DabLableDialog;


# direct methods
.method constructor <init>(Lcom/yftech/libradio/dialog/DabLableDialog;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/yftech/libradio/dialog/DabLableDialog$1;->this$0:Lcom/yftech/libradio/dialog/DabLableDialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string p1, "com.systemui.btn.action"

    .line 59
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "key"

    const/4 v0, -0x1

    .line 60
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_0

    .line 61
    iget-object p0, p0, Lcom/yftech/libradio/dialog/DabLableDialog$1;->this$0:Lcom/yftech/libradio/dialog/DabLableDialog;

    invoke-virtual {p0}, Lcom/yftech/libradio/dialog/DabLableDialog;->dismiss()V

    :cond_0
    return-void
.end method
