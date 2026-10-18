.class Lcom/yftech/libradio/dabui/DabMainFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "DabMainFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/libradio/dabui/DabMainFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libradio/dabui/DabMainFragment;


# direct methods
.method constructor <init>(Lcom/yftech/libradio/dabui/DabMainFragment;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/yftech/libradio/dabui/DabMainFragment$1;->this$0:Lcom/yftech/libradio/dabui/DabMainFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string p1, "com.yftech.action.dab.frequency"

    .line 97
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "value"

    const/4 v0, 0x0

    .line 98
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    const-string p1, "ftech.dab.frequency"

    const-string p2, "1"

    .line 100
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget-object p1, p0, Lcom/yftech/libradio/dabui/DabMainFragment$1;->this$0:Lcom/yftech/libradio/dabui/DabMainFragment;

    invoke-static {p1}, Lcom/yftech/libradio/dabui/DabMainFragment;->access$000(Lcom/yftech/libradio/dabui/DabMainFragment;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 102
    iget-object p1, p0, Lcom/yftech/libradio/dabui/DabMainFragment$1;->this$0:Lcom/yftech/libradio/dabui/DabMainFragment;

    invoke-static {p1}, Lcom/yftech/libradio/dabui/DabMainFragment;->access$100(Lcom/yftech/libradio/dabui/DabMainFragment;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 103
    iget-object p1, p0, Lcom/yftech/libradio/dabui/DabMainFragment$1;->this$0:Lcom/yftech/libradio/dabui/DabMainFragment;

    invoke-static {p1}, Lcom/yftech/libradio/dabui/DabMainFragment;->access$200(Lcom/yftech/libradio/dabui/DabMainFragment;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 104
    iget-object p0, p0, Lcom/yftech/libradio/dabui/DabMainFragment$1;->this$0:Lcom/yftech/libradio/dabui/DabMainFragment;

    invoke-static {p0}, Lcom/yftech/libradio/dabui/DabMainFragment;->access$300(Lcom/yftech/libradio/dabui/DabMainFragment;)Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const-string p1, "ftech.dab.frequency"

    const-string p2, "0"

    .line 106
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iget-object p1, p0, Lcom/yftech/libradio/dabui/DabMainFragment$1;->this$0:Lcom/yftech/libradio/dabui/DabMainFragment;

    invoke-static {p1}, Lcom/yftech/libradio/dabui/DabMainFragment;->access$000(Lcom/yftech/libradio/dabui/DabMainFragment;)Landroid/widget/TextView;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 108
    iget-object p1, p0, Lcom/yftech/libradio/dabui/DabMainFragment$1;->this$0:Lcom/yftech/libradio/dabui/DabMainFragment;

    invoke-static {p1}, Lcom/yftech/libradio/dabui/DabMainFragment;->access$100(Lcom/yftech/libradio/dabui/DabMainFragment;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 109
    iget-object p1, p0, Lcom/yftech/libradio/dabui/DabMainFragment$1;->this$0:Lcom/yftech/libradio/dabui/DabMainFragment;

    invoke-static {p1}, Lcom/yftech/libradio/dabui/DabMainFragment;->access$200(Lcom/yftech/libradio/dabui/DabMainFragment;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 110
    iget-object p0, p0, Lcom/yftech/libradio/dabui/DabMainFragment$1;->this$0:Lcom/yftech/libradio/dabui/DabMainFragment;

    invoke-static {p0}, Lcom/yftech/libradio/dabui/DabMainFragment;->access$300(Lcom/yftech/libradio/dabui/DabMainFragment;)Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method
