.class Lcom/yftech/libradio/dabui/DabStationFilterByEnsembleFragment$1$1;
.super Ljava/lang/Object;
.source "DabStationFilterByEnsembleFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/libradio/dabui/DabStationFilterByEnsembleFragment$1;->doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/yftech/libradio/dabui/DabStationFilterByEnsembleFragment$1;

.field final synthetic val$filterStr:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/yftech/libradio/dabui/DabStationFilterByEnsembleFragment$1;Ljava/lang/String;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/yftech/libradio/dabui/DabStationFilterByEnsembleFragment$1$1;->this$1:Lcom/yftech/libradio/dabui/DabStationFilterByEnsembleFragment$1;

    iput-object p2, p0, Lcom/yftech/libradio/dabui/DabStationFilterByEnsembleFragment$1$1;->val$filterStr:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/yftech/libradio/dabui/DabStationFilterByEnsembleFragment$1$1;->this$1:Lcom/yftech/libradio/dabui/DabStationFilterByEnsembleFragment$1;

    iget-object v0, v0, Lcom/yftech/libradio/dabui/DabStationFilterByEnsembleFragment$1;->this$0:Lcom/yftech/libradio/dabui/DabStationFilterByEnsembleFragment;

    invoke-static {v0}, Lcom/yftech/libradio/dabui/DabStationFilterByEnsembleFragment;->access$000(Lcom/yftech/libradio/dabui/DabStationFilterByEnsembleFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/yftech/libradio/dabui/DabStationFilterByEnsembleFragment$1$1;->this$1:Lcom/yftech/libradio/dabui/DabStationFilterByEnsembleFragment$1;

    iget-object v0, v0, Lcom/yftech/libradio/dabui/DabStationFilterByEnsembleFragment$1;->this$0:Lcom/yftech/libradio/dabui/DabStationFilterByEnsembleFragment;

    iget-object v0, v0, Lcom/yftech/libradio/dabui/DabStationFilterByEnsembleFragment;->tvLableName:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/yftech/libradio/dabui/DabStationFilterByEnsembleFragment$1$1;->val$filterStr:Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 84
    :cond_0
    iget-object p0, p0, Lcom/yftech/libradio/dabui/DabStationFilterByEnsembleFragment$1$1;->this$1:Lcom/yftech/libradio/dabui/DabStationFilterByEnsembleFragment$1;

    iget-object p0, p0, Lcom/yftech/libradio/dabui/DabStationFilterByEnsembleFragment$1;->this$0:Lcom/yftech/libradio/dabui/DabStationFilterByEnsembleFragment;

    iget-object p0, p0, Lcom/yftech/libradio/dabui/DabStationFilterByEnsembleFragment;->tvLableName:Landroid/widget/TextView;

    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
