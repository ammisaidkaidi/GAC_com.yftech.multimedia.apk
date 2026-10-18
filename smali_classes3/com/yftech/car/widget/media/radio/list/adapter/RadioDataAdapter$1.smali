.class Lcom/yftech/car/widget/media/radio/list/adapter/RadioDataAdapter$1;
.super Ljava/lang/Object;
.source "RadioDataAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/car/widget/media/radio/list/adapter/RadioDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/car/widget/media/radio/list/adapter/RadioDataAdapter;


# direct methods
.method constructor <init>(Lcom/yftech/car/widget/media/radio/list/adapter/RadioDataAdapter;)V
    .locals 0

    .line 379
    iput-object p1, p0, Lcom/yftech/car/widget/media/radio/list/adapter/RadioDataAdapter$1;->this$0:Lcom/yftech/car/widget/media/radio/list/adapter/RadioDataAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 382
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yftech/car/media/radio/entity/DataOfRadio;

    if-eqz p0, :cond_1

    .line 384
    check-cast p1, Lcom/yftech/car/widget/media/radio/text/FavorStatus;

    .line 385
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager;->getInstance()Lcom/yftech/car/widget/media/manager/RadioManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/yftech/car/widget/media/manager/RadioManager;->isFreqFavored(Lcom/yftech/car/media/radio/entity/DataOfRadio;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 386
    invoke-virtual {p1}, Lcom/yftech/car/widget/media/radio/text/FavorStatus;->getClickFunction()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-lez v0, :cond_1

    .line 387
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager;->getInstance()Lcom/yftech/car/widget/media/manager/RadioManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/yftech/car/widget/media/manager/RadioManager;->removeFavor(Lcom/yftech/car/media/radio/entity/DataOfRadio;)Z

    move-result p0

    const-string v0, "RadioDataAdapter"

    .line 388
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick: remove isFreqFavored=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    invoke-virtual {p1, p0}, Lcom/yftech/car/widget/media/radio/text/FavorStatus;->showRemoveFavor(Z)V

    goto :goto_0

    .line 392
    :cond_0
    invoke-virtual {p1}, Lcom/yftech/car/widget/media/radio/text/FavorStatus;->getClickFunction()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-lez v0, :cond_1

    .line 393
    invoke-static {}, Lcom/yftech/car/widget/media/manager/RadioManager;->getInstance()Lcom/yftech/car/widget/media/manager/RadioManager;

    move-result-object v0

    invoke-virtual {p1, p0}, Lcom/yftech/car/widget/media/radio/text/FavorStatus;->getFavorMax(Lcom/yftech/car/media/radio/entity/DataOfRadio;)I

    move-result v1

    invoke-virtual {p1}, Lcom/yftech/car/widget/media/radio/text/FavorStatus;->isFavorStatusMaxUpdateoldData()Z

    move-result v2

    invoke-virtual {v0, p0, v1, v2}, Lcom/yftech/car/widget/media/manager/RadioManager;->addFavor(Lcom/yftech/car/media/radio/entity/DataOfRadio;IZ)Z

    move-result p0

    const-string v0, "RadioDataAdapter"

    .line 394
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick: add isFreqFavored=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    invoke-virtual {p1, p0}, Lcom/yftech/car/widget/media/radio/text/FavorStatus;->showAddFavor(Z)V

    :cond_1
    :goto_0
    return-void
.end method
