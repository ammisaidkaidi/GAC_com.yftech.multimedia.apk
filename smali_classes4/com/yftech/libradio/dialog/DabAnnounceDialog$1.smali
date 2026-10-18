.class Lcom/yftech/libradio/dialog/DabAnnounceDialog$1;
.super Ljava/lang/Object;
.source "DabAnnounceDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/libradio/dialog/DabAnnounceDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libradio/dialog/DabAnnounceDialog;


# direct methods
.method constructor <init>(Lcom/yftech/libradio/dialog/DabAnnounceDialog;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/yftech/libradio/dialog/DabAnnounceDialog$1;->this$0:Lcom/yftech/libradio/dialog/DabAnnounceDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 55
    invoke-static {}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getInstance()Lcom/yftech/car/media/radio/dab/CarDabRadioManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->stopAnnobyUserCmd()V

    .line 56
    iget-object p0, p0, Lcom/yftech/libradio/dialog/DabAnnounceDialog$1;->this$0:Lcom/yftech/libradio/dialog/DabAnnounceDialog;

    invoke-virtual {p0}, Lcom/yftech/libradio/dialog/DabAnnounceDialog;->dismiss()V

    return-void
.end method
