.class Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter$1;
.super Ljava/lang/Object;
.source "DynamicAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;


# direct methods
.method constructor <init>(Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;)V
    .locals 0

    .line 705
    iput-object p1, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter$1;->this$0:Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 708
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yftech/car/media/radio/entity/DataOfRadio;

    if-eqz p1, :cond_1

    .line 710
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager;->getInstance()Lcom/yftech/car/widget/media/manager/RadioManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yftech/car/widget/media/manager/RadioManager;->isFreqFavored(Lcom/yftech/car/media/radio/entity/DataOfRadio;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 711
    iget-object p0, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter$1;->this$0:Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;

    invoke-static {p0}, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->access$000(Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;)I

    move-result p0

    and-int/lit8 p0, p0, 0x4

    if-lez p0, :cond_1

    .line 712
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager;->getInstance()Lcom/yftech/car/widget/media/manager/RadioManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/manager/RadioManager;->removeFavor(Lcom/yftech/car/media/radio/entity/DataOfRadio;)Z

    move-result p0

    const-string p1, "DynamicAdapter"

    .line 713
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onClick: remove isFreqFavored=="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 716
    :cond_0
    iget-object p0, p0, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter$1;->this$0:Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;

    invoke-static {p0}, Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;->access$000(Lcom/yftech/car/widget/media/radio/list/adapter/DynamicAdapter;)I

    move-result p0

    and-int/lit8 p0, p0, 0x1

    if-lez p0, :cond_1

    .line 717
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager;->getInstance()Lcom/yftech/car/widget/media/manager/RadioManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/manager/RadioManager;->addFavor(Lcom/yftech/car/media/radio/entity/DataOfRadio;)Z

    move-result p0

    const-string p1, "DynamicAdapter"

    .line 718
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onClick: add isFreqFavored=="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method
