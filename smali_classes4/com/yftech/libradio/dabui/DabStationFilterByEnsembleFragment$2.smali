.class Lcom/yftech/libradio/dabui/DabStationFilterByEnsembleFragment$2;
.super Ljava/lang/Object;
.source "DabStationFilterByEnsembleFragment.java"

# interfaces
.implements Lcom/yftech/libradio/dialog/DabLableDialog$LabelListCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/libradio/dabui/DabStationFilterByEnsembleFragment;->onLabelButtonCliked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libradio/dabui/DabStationFilterByEnsembleFragment;


# direct methods
.method constructor <init>(Lcom/yftech/libradio/dabui/DabStationFilterByEnsembleFragment;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/yftech/libradio/dabui/DabStationFilterByEnsembleFragment$2;->this$0:Lcom/yftech/libradio/dabui/DabStationFilterByEnsembleFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClicked(I)V
    .locals 3

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "on dab label selected, position: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", pty: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yftech/libradio/dabui/DabStationFilterByEnsembleFragment$2;->this$0:Lcom/yftech/libradio/dabui/DabStationFilterByEnsembleFragment;

    invoke-static {v1}, Lcom/yftech/libradio/dabui/DabStationFilterByEnsembleFragment;->access$100(Lcom/yftech/libradio/dabui/DabStationFilterByEnsembleFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/yftech/libradio/dabui/DabStationFilterByEnsembleFragment$2;->this$0:Lcom/yftech/libradio/dabui/DabStationFilterByEnsembleFragment;

    iget-object v0, v0, Lcom/yftech/libradio/dabui/DabStationFilterByEnsembleFragment;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "com.yf.dab.ensemble.sel"

    iget-object v2, p0, Lcom/yftech/libradio/dabui/DabStationFilterByEnsembleFragment$2;->this$0:Lcom/yftech/libradio/dabui/DabStationFilterByEnsembleFragment;

    invoke-static {v2}, Lcom/yftech/libradio/dabui/DabStationFilterByEnsembleFragment;->access$100(Lcom/yftech/libradio/dabui/DabStationFilterByEnsembleFragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 114
    iget-object v0, p0, Lcom/yftech/libradio/dabui/DabStationFilterByEnsembleFragment$2;->this$0:Lcom/yftech/libradio/dabui/DabStationFilterByEnsembleFragment;

    iget-object v0, v0, Lcom/yftech/libradio/dabui/DabStationFilterByEnsembleFragment;->tvLableName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yftech/libradio/dabui/DabStationFilterByEnsembleFragment$2;->this$0:Lcom/yftech/libradio/dabui/DabStationFilterByEnsembleFragment;

    invoke-static {v1}, Lcom/yftech/libradio/dabui/DabStationFilterByEnsembleFragment;->access$100(Lcom/yftech/libradio/dabui/DabStationFilterByEnsembleFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    iget-object p0, p0, Lcom/yftech/libradio/dabui/DabStationFilterByEnsembleFragment$2;->this$0:Lcom/yftech/libradio/dabui/DabStationFilterByEnsembleFragment;

    invoke-virtual {p0}, Lcom/yftech/libradio/dabui/DabStationFilterByEnsembleFragment;->filterDabChannleList()V

    return-void
.end method
