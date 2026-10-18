.class Lcom/yftech/libradio/dabui/DabSortListActivity$2;
.super Ljava/lang/Object;
.source "DabSortListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/libradio/dabui/DabSortListActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libradio/dabui/DabSortListActivity;


# direct methods
.method constructor <init>(Lcom/yftech/libradio/dabui/DabSortListActivity;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/yftech/libradio/dabui/DabSortListActivity$2;->this$0:Lcom/yftech/libradio/dabui/DabSortListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 68
    invoke-static {}, Lcom/yftech/libradio/Utils;->isQuickClick()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p0, "imgSearch quick click"

    .line 69
    invoke-static {p0}, Lcom/media/common/util/LogUtil;->i(Ljava/lang/String;)V

    return-void

    .line 72
    :cond_0
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getPhoneCalls()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 73
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 74
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yftech/car/bluetooth/model/PhoneCall;

    .line 77
    invoke-virtual {p1}, Lcom/yftech/car/bluetooth/model/PhoneCall;->getCallState()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 78
    invoke-virtual {p1}, Lcom/yftech/car/bluetooth/model/PhoneCall;->getCallState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 79
    invoke-virtual {p1}, Lcom/yftech/car/bluetooth/model/PhoneCall;->getCallState()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    .line 80
    invoke-virtual {p1}, Lcom/yftech/car/bluetooth/model/PhoneCall;->getCallState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 81
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "phone call is doing ,callState: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/yftech/car/bluetooth/model/PhoneCall;->getCallState()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/media/common/util/LogUtil;->i(Ljava/lang/String;)V

    return-void

    .line 85
    :cond_2
    iget-object p1, p0, Lcom/yftech/libradio/dabui/DabSortListActivity$2;->this$0:Lcom/yftech/libradio/dabui/DabSortListActivity;

    sget v0, Lcom/yftech/libradio/R$string;->radio_channel_search_dialog_search_scanning:I

    invoke-virtual {p1, v0}, Lcom/yftech/libradio/dabui/DabSortListActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/yftech/libradio/dialog/DabSearchingDialog;->newInstance(Ljava/lang/String;)Lcom/yftech/libradio/dialog/DabSearchingDialog;

    move-result-object p1

    .line 86
    iget-object p0, p0, Lcom/yftech/libradio/dabui/DabSortListActivity$2;->this$0:Lcom/yftech/libradio/dabui/DabSortListActivity;

    invoke-virtual {p0}, Lcom/yftech/libradio/dabui/DabSortListActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-class v0, Lcom/yftech/libradio/dialog/DabSearchingDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/yftech/libradio/dialog/DabSearchingDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
