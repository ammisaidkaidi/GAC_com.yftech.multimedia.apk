.class Lcom/yftech/libradio/dialog/RdsAnnounceDialog$1;
.super Ljava/lang/Object;
.source "RdsAnnounceDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/libradio/dialog/RdsAnnounceDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libradio/dialog/RdsAnnounceDialog;


# direct methods
.method constructor <init>(Lcom/yftech/libradio/dialog/RdsAnnounceDialog;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/yftech/libradio/dialog/RdsAnnounceDialog$1;->this$0:Lcom/yftech/libradio/dialog/RdsAnnounceDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/yftech/libradio/dialog/RdsAnnounceDialog$1;->this$0:Lcom/yftech/libradio/dialog/RdsAnnounceDialog;

    invoke-virtual {p0}, Lcom/yftech/libradio/dialog/RdsAnnounceDialog;->dismiss()V

    return-void
.end method
