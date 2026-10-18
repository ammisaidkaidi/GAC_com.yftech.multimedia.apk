.class Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$2;
.super Ljava/lang/Object;
.source "DabSettingsNoRdsDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;


# direct methods
.method constructor <init>(Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$2;->this$0:Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$2;->this$0:Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;

    invoke-virtual {p0}, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;->dismiss()V

    return-void
.end method
