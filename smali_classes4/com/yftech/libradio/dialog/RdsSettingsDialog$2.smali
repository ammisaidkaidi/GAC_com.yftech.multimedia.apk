.class Lcom/yftech/libradio/dialog/RdsSettingsDialog$2;
.super Ljava/lang/Object;
.source "RdsSettingsDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/libradio/dialog/RdsSettingsDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libradio/dialog/RdsSettingsDialog;


# direct methods
.method constructor <init>(Lcom/yftech/libradio/dialog/RdsSettingsDialog;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/yftech/libradio/dialog/RdsSettingsDialog$2;->this$0:Lcom/yftech/libradio/dialog/RdsSettingsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 118
    iget-object p0, p0, Lcom/yftech/libradio/dialog/RdsSettingsDialog$2;->this$0:Lcom/yftech/libradio/dialog/RdsSettingsDialog;

    invoke-virtual {p0}, Lcom/yftech/libradio/dialog/RdsSettingsDialog;->dismiss()V

    return-void
.end method
