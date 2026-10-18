.class Lcom/yftech/libradio/dialog/RadioSearchingDialog$1;
.super Ljava/lang/Object;
.source "RadioSearchingDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/libradio/dialog/RadioSearchingDialog;->initView(Landroid/view/View;)V
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

    .line 195
    iput-object p1, p0, Lcom/yftech/libradio/dialog/RadioSearchingDialog$1;->this$0:Lcom/yftech/libradio/dialog/RadioSearchingDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "scan callback status:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yftech/libradio/dialog/RadioSearchingDialog$1;->this$0:Lcom/yftech/libradio/dialog/RadioSearchingDialog;

    invoke-static {v1}, Lcom/yftech/libradio/dialog/RadioSearchingDialog;->access$100(Lcom/yftech/libradio/dialog/RadioSearchingDialog;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 199
    iget-object v0, p0, Lcom/yftech/libradio/dialog/RadioSearchingDialog$1;->this$0:Lcom/yftech/libradio/dialog/RadioSearchingDialog;

    invoke-static {v0}, Lcom/yftech/libradio/dialog/RadioSearchingDialog;->access$100(Lcom/yftech/libradio/dialog/RadioSearchingDialog;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/yftech/libradio/dialog/RadioSearchingDialog$1;->this$0:Lcom/yftech/libradio/dialog/RadioSearchingDialog;

    invoke-virtual {v0}, Lcom/yftech/libradio/dialog/RadioSearchingDialog;->getPresenter()Lcom/yftech/libmvpmodule/mvp/BaseMvpPresenter;

    move-result-object v0

    check-cast v0, Lcom/yftech/libradio/presenter/RadioSearchingPresenter;

    iget-object p0, p0, Lcom/yftech/libradio/dialog/RadioSearchingDialog$1;->this$0:Lcom/yftech/libradio/dialog/RadioSearchingDialog;

    invoke-static {p0}, Lcom/yftech/libradio/dialog/RadioSearchingDialog;->access$200(Lcom/yftech/libradio/dialog/RadioSearchingDialog;)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/yftech/libradio/presenter/RadioSearchingPresenter;->scanSave(I)V

    :cond_0
    return-void
.end method
