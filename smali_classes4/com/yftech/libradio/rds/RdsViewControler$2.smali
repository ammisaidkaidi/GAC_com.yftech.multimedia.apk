.class Lcom/yftech/libradio/rds/RdsViewControler$2;
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

.field final synthetic val$radioMainFragment:Lcom/yftech/libradio/RadioMainFragment;


# direct methods
.method constructor <init>(Lcom/yftech/libradio/rds/RdsViewControler;Lcom/yftech/libradio/RadioMainFragment;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/yftech/libradio/rds/RdsViewControler$2;->this$0:Lcom/yftech/libradio/rds/RdsViewControler;

    iput-object p2, p0, Lcom/yftech/libradio/rds/RdsViewControler$2;->val$radioMainFragment:Lcom/yftech/libradio/RadioMainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 82
    invoke-static {}, Lcom/yftech/car/media/radio/CarRadioManager;->getInstance()Lcom/yftech/car/media/radio/CarRadioManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/car/media/radio/CarRadioManager;->getRdsRT()Ljava/lang/String;

    move-result-object p1

    .line 83
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rtString: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 85
    invoke-static {}, Lcom/yftech/car/media/radio/CarRadioManager;->getInstance()Lcom/yftech/car/media/radio/CarRadioManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/media/radio/CarRadioManager;->getRdsPS()Ljava/lang/String;

    move-result-object v0

    .line 86
    iget-object v1, p0, Lcom/yftech/libradio/rds/RdsViewControler$2;->this$0:Lcom/yftech/libradio/rds/RdsViewControler;

    invoke-static {v1}, Lcom/yftech/libradio/rds/RdsViewControler;->access$100(Lcom/yftech/libradio/rds/RdsViewControler;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/yftech/libradio/rds/RdsViewControler$2;->this$0:Lcom/yftech/libradio/rds/RdsViewControler;

    invoke-static {v1}, Lcom/yftech/libradio/rds/RdsViewControler;->access$100(Lcom/yftech/libradio/rds/RdsViewControler;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 87
    iget-object v0, p0, Lcom/yftech/libradio/rds/RdsViewControler$2;->this$0:Lcom/yftech/libradio/rds/RdsViewControler;

    invoke-static {v0}, Lcom/yftech/libradio/rds/RdsViewControler;->access$100(Lcom/yftech/libradio/rds/RdsViewControler;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 89
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 90
    iget-object v0, p0, Lcom/yftech/libradio/rds/RdsViewControler$2;->val$radioMainFragment:Lcom/yftech/libradio/RadioMainFragment;

    sget v1, Lcom/yftech/libradio/R$string;->program_info:I

    invoke-virtual {v0, v1}, Lcom/yftech/libradio/RadioMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 92
    :cond_1
    iget-object v1, p0, Lcom/yftech/libradio/rds/RdsViewControler$2;->this$0:Lcom/yftech/libradio/rds/RdsViewControler;

    invoke-static {v1}, Lcom/yftech/libradio/rds/RdsViewControler;->access$200(Lcom/yftech/libradio/rds/RdsViewControler;)Lcom/yftech/libradio/dialog/DabServiceTextInfoDialog;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 93
    iget-object v1, p0, Lcom/yftech/libradio/rds/RdsViewControler$2;->this$0:Lcom/yftech/libradio/rds/RdsViewControler;

    invoke-static {v1}, Lcom/yftech/libradio/rds/RdsViewControler;->access$200(Lcom/yftech/libradio/rds/RdsViewControler;)Lcom/yftech/libradio/dialog/DabServiceTextInfoDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yftech/libradio/dialog/DabServiceTextInfoDialog;->dismiss()V

    .line 95
    :cond_2
    iget-object v1, p0, Lcom/yftech/libradio/rds/RdsViewControler$2;->this$0:Lcom/yftech/libradio/rds/RdsViewControler;

    invoke-static {p1, v0}, Lcom/yftech/libradio/dialog/DabServiceTextInfoDialog;->newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/yftech/libradio/dialog/DabServiceTextInfoDialog;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/yftech/libradio/rds/RdsViewControler;->access$202(Lcom/yftech/libradio/rds/RdsViewControler;Lcom/yftech/libradio/dialog/DabServiceTextInfoDialog;)Lcom/yftech/libradio/dialog/DabServiceTextInfoDialog;

    .line 96
    iget-object p1, p0, Lcom/yftech/libradio/rds/RdsViewControler$2;->this$0:Lcom/yftech/libradio/rds/RdsViewControler;

    invoke-static {p1}, Lcom/yftech/libradio/rds/RdsViewControler;->access$200(Lcom/yftech/libradio/rds/RdsViewControler;)Lcom/yftech/libradio/dialog/DabServiceTextInfoDialog;

    move-result-object p1

    iget-object p0, p0, Lcom/yftech/libradio/rds/RdsViewControler$2;->val$radioMainFragment:Lcom/yftech/libradio/RadioMainFragment;

    invoke-virtual {p0}, Lcom/yftech/libradio/RadioMainFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-class v0, Lcom/yftech/libradio/dialog/DabServiceTextInfoDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/yftech/libradio/dialog/DabServiceTextInfoDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string p0, "rtString is empty ---"

    .line 98
    invoke-static {p0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
