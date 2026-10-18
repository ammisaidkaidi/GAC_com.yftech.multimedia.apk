.class Lcom/yftech/libradio/RadioMainFragment$13;
.super Lcom/yftech/car/phonelink/CarPhoneLinkManager$CarPhoneLinkCallback;
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

    .line 1183
    iput-object p1, p0, Lcom/yftech/libradio/RadioMainFragment$13;->this$0:Lcom/yftech/libradio/RadioMainFragment;

    invoke-direct {p0}, Lcom/yftech/car/phonelink/CarPhoneLinkManager$CarPhoneLinkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStatusChanged(I)V
    .locals 2

    .line 1186
    invoke-super {p0, p1}, Lcom/yftech/car/phonelink/CarPhoneLinkManager$CarPhoneLinkCallback;->onCallStatusChanged(I)V

    .line 1187
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

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 1190
    :cond_0
    iget-object p0, p0, Lcom/yftech/libradio/RadioMainFragment$13;->this$0:Lcom/yftech/libradio/RadioMainFragment;

    invoke-static {p0, v0}, Lcom/yftech/libradio/RadioMainFragment;->access$302(Lcom/yftech/libradio/RadioMainFragment;Z)Z

    :cond_1
    return-void
.end method

.method public onConnectedStatusChanged(Ljava/lang/String;)V
    .locals 2

    .line 1196
    invoke-super {p0, p1}, Lcom/yftech/car/phonelink/CarPhoneLinkManager$CarPhoneLinkCallback;->onConnectedStatusChanged(Ljava/lang/String;)V

    .line 1197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConnectedStatusChanged() status:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    const-string v0, "carplay"

    .line 1198
    iget-object v1, p0, Lcom/yftech/libradio/RadioMainFragment$13;->this$0:Lcom/yftech/libradio/RadioMainFragment;

    invoke-static {v1}, Lcom/yftech/libradio/RadioMainFragment;->access$2600(Lcom/yftech/libradio/RadioMainFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "none"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1199
    iget-object v0, p0, Lcom/yftech/libradio/RadioMainFragment$13;->this$0:Lcom/yftech/libradio/RadioMainFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yftech/libradio/RadioMainFragment;->access$402(Lcom/yftech/libradio/RadioMainFragment;Z)Z

    .line 1201
    :cond_0
    iget-object p0, p0, Lcom/yftech/libradio/RadioMainFragment$13;->this$0:Lcom/yftech/libradio/RadioMainFragment;

    invoke-static {p0, p1}, Lcom/yftech/libradio/RadioMainFragment;->access$2602(Lcom/yftech/libradio/RadioMainFragment;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method
