.class Lcom/yftech/libradio/RadioMainFragment$12;
.super Landroid/content/BroadcastReceiver;
.source "RadioMainFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/libradio/RadioMainFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libradio/RadioMainFragment;


# direct methods
.method constructor <init>(Lcom/yftech/libradio/RadioMainFragment;)V
    .locals 0

    .line 1159
    iput-object p1, p0, Lcom/yftech/libradio/RadioMainFragment$12;->this$0:Lcom/yftech/libradio/RadioMainFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    const-string p1, "yf.action.rds.settings"

    .line 1162
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1163
    iget-object p0, p0, Lcom/yftech/libradio/RadioMainFragment$12;->this$0:Lcom/yftech/libradio/RadioMainFragment;

    invoke-static {p0}, Lcom/yftech/libradio/RadioMainFragment;->access$100(Lcom/yftech/libradio/RadioMainFragment;)Lcom/yftech/libradio/rds/RdsViewControler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/libradio/rds/RdsViewControler;->changeRdsShowStatus()V

    :cond_0
    return-void
.end method
