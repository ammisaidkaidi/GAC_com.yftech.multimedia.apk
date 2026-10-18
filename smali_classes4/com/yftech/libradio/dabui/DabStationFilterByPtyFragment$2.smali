.class Lcom/yftech/libradio/dabui/DabStationFilterByPtyFragment$2;
.super Ljava/lang/Object;
.source "DabStationFilterByPtyFragment.java"

# interfaces
.implements Lcom/yftech/libradio/dialog/DabLableDialog$LabelListCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/libradio/dabui/DabStationFilterByPtyFragment;->onLabelButtonCliked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libradio/dabui/DabStationFilterByPtyFragment;


# direct methods
.method constructor <init>(Lcom/yftech/libradio/dabui/DabStationFilterByPtyFragment;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/yftech/libradio/dabui/DabStationFilterByPtyFragment$2;->this$0:Lcom/yftech/libradio/dabui/DabStationFilterByPtyFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClicked(I)V
    .locals 2

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "on dab label selecte, position: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", pty: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yftech/libradio/dabui/DabStationFilterByPtyFragment$2;->this$0:Lcom/yftech/libradio/dabui/DabStationFilterByPtyFragment;

    invoke-static {v1}, Lcom/yftech/libradio/dabui/DabStationFilterByPtyFragment;->access$100(Lcom/yftech/libradio/dabui/DabStationFilterByPtyFragment;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/yftech/libradio/dabui/DabStationFilterByPtyFragment$2;->this$0:Lcom/yftech/libradio/dabui/DabStationFilterByPtyFragment;

    iget-object v0, v0, Lcom/yftech/libradio/dabui/DabStationFilterByPtyFragment;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "com.yf.dab.pty.sel"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 131
    iget-object v0, p0, Lcom/yftech/libradio/dabui/DabStationFilterByPtyFragment$2;->this$0:Lcom/yftech/libradio/dabui/DabStationFilterByPtyFragment;

    iget-object v0, v0, Lcom/yftech/libradio/dabui/DabStationFilterByPtyFragment;->tvLableName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yftech/libradio/dabui/DabStationFilterByPtyFragment$2;->this$0:Lcom/yftech/libradio/dabui/DabStationFilterByPtyFragment;

    invoke-static {v1}, Lcom/yftech/libradio/dabui/DabStationFilterByPtyFragment;->access$100(Lcom/yftech/libradio/dabui/DabStationFilterByPtyFragment;)[Ljava/lang/String;

    move-result-object v1

    aget-object p1, v1, p1

    invoke-static {p1}, Lcom/yftech/libradio/Utils;->convertStationName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    iget-object p0, p0, Lcom/yftech/libradio/dabui/DabStationFilterByPtyFragment$2;->this$0:Lcom/yftech/libradio/dabui/DabStationFilterByPtyFragment;

    invoke-virtual {p0}, Lcom/yftech/libradio/dabui/DabStationFilterByPtyFragment;->filterDabChannleList()V

    return-void
.end method
