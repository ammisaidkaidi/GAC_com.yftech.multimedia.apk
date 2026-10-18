.class Lcom/yftech/libradio/rds/RdsViewControler$1;
.super Ljava/lang/Object;
.source "RdsViewControler.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/libradio/rds/RdsViewControler;-><init>(Lcom/yftech/libradio/RadioMainFragment;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libradio/rds/RdsViewControler;

.field final synthetic val$rootView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/yftech/libradio/rds/RdsViewControler;Landroid/view/View;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/yftech/libradio/rds/RdsViewControler$1;->this$0:Lcom/yftech/libradio/rds/RdsViewControler;

    iput-object p2, p0, Lcom/yftech/libradio/rds/RdsViewControler$1;->val$rootView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 59
    iget-object p1, p0, Lcom/yftech/libradio/rds/RdsViewControler$1;->this$0:Lcom/yftech/libradio/rds/RdsViewControler;

    invoke-static {p1}, Lcom/yftech/libradio/rds/RdsViewControler;->access$000(Lcom/yftech/libradio/rds/RdsViewControler;)Lcom/yftech/libradio/dialog/RdsSettingsDialog;

    move-result-object p1

    if-nez p1, :cond_0

    .line 60
    iget-object p1, p0, Lcom/yftech/libradio/rds/RdsViewControler$1;->this$0:Lcom/yftech/libradio/rds/RdsViewControler;

    new-instance v0, Lcom/yftech/libradio/dialog/RdsSettingsDialog;

    iget-object v1, p0, Lcom/yftech/libradio/rds/RdsViewControler$1;->val$rootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yftech/libradio/dialog/RdsSettingsDialog;-><init>(Landroid/content/Context;)V

    invoke-static {p1, v0}, Lcom/yftech/libradio/rds/RdsViewControler;->access$002(Lcom/yftech/libradio/rds/RdsViewControler;Lcom/yftech/libradio/dialog/RdsSettingsDialog;)Lcom/yftech/libradio/dialog/RdsSettingsDialog;

    .line 62
    :cond_0
    iget-object p0, p0, Lcom/yftech/libradio/rds/RdsViewControler$1;->this$0:Lcom/yftech/libradio/rds/RdsViewControler;

    invoke-static {p0}, Lcom/yftech/libradio/rds/RdsViewControler;->access$000(Lcom/yftech/libradio/rds/RdsViewControler;)Lcom/yftech/libradio/dialog/RdsSettingsDialog;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/libradio/dialog/RdsSettingsDialog;->show()V

    return-void
.end method
