.class Lcom/yftech/libradio/dialog/DabSearchingDialog$1;
.super Landroid/os/Handler;
.source "DabSearchingDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/libradio/dialog/DabSearchingDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libradio/dialog/DabSearchingDialog;


# direct methods
.method constructor <init>(Lcom/yftech/libradio/dialog/DabSearchingDialog;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/yftech/libradio/dialog/DabSearchingDialog$1;->this$0:Lcom/yftech/libradio/dialog/DabSearchingDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 75
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x7617

    if-ne p1, v0, :cond_0

    .line 76
    iget-object p0, p0, Lcom/yftech/libradio/dialog/DabSearchingDialog$1;->this$0:Lcom/yftech/libradio/dialog/DabSearchingDialog;

    invoke-static {p0}, Lcom/yftech/libradio/dialog/DabSearchingDialog;->access$000(Lcom/yftech/libradio/dialog/DabSearchingDialog;)V

    :cond_0
    return-void
.end method
