.class Lcom/yftech/libradio/dialog/RadioSearchingDialog$5;
.super Lcom/yftech/car/phonelink/CarPhoneLinkManager$CarPhoneLinkCallback;
.source "RadioSearchingDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/libradio/dialog/RadioSearchingDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libradio/dialog/RadioSearchingDialog;


# direct methods
.method constructor <init>(Lcom/yftech/libradio/dialog/RadioSearchingDialog;)V
    .locals 0

    .line 418
    iput-object p1, p0, Lcom/yftech/libradio/dialog/RadioSearchingDialog$5;->this$0:Lcom/yftech/libradio/dialog/RadioSearchingDialog;

    invoke-direct {p0}, Lcom/yftech/car/phonelink/CarPhoneLinkManager$CarPhoneLinkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStatusChanged(I)V
    .locals 2

    .line 421
    invoke-super {p0, p1}, Lcom/yftech/car/phonelink/CarPhoneLinkManager$CarPhoneLinkCallback;->onCallStatusChanged(I)V

    .line 422
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCallStatusChanged() status:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 425
    :cond_0
    iget-object p0, p0, Lcom/yftech/libradio/dialog/RadioSearchingDialog$5;->this$0:Lcom/yftech/libradio/dialog/RadioSearchingDialog;

    invoke-virtual {p0}, Lcom/yftech/libradio/dialog/RadioSearchingDialog;->dismiss()V

    :cond_1
    return-void
.end method

.method public onConnectedStatusChanged(Ljava/lang/String;)V
    .locals 1

    .line 431
    invoke-super {p0, p1}, Lcom/yftech/car/phonelink/CarPhoneLinkManager$CarPhoneLinkCallback;->onConnectedStatusChanged(Ljava/lang/String;)V

    .line 432
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onConnectedStatusChanged() status:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    return-void
.end method
