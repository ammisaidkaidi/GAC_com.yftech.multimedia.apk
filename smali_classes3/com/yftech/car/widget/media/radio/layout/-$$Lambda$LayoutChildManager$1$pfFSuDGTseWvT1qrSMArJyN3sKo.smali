.class public final synthetic Lcom/yftech/car/widget/media/radio/layout/-$$Lambda$LayoutChildManager$1$pfFSuDGTseWvT1qrSMArJyN3sKo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager$1;

.field private final synthetic f$1:Lcom/yftech/car/media/radio/entity/DataOfRadio;


# direct methods
.method public synthetic constructor <init>(Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager$1;Lcom/yftech/car/media/radio/entity/DataOfRadio;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yftech/car/widget/media/radio/layout/-$$Lambda$LayoutChildManager$1$pfFSuDGTseWvT1qrSMArJyN3sKo;->f$0:Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager$1;

    iput-object p2, p0, Lcom/yftech/car/widget/media/radio/layout/-$$Lambda$LayoutChildManager$1$pfFSuDGTseWvT1qrSMArJyN3sKo;->f$1:Lcom/yftech/car/media/radio/entity/DataOfRadio;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/yftech/car/widget/media/radio/layout/-$$Lambda$LayoutChildManager$1$pfFSuDGTseWvT1qrSMArJyN3sKo;->f$0:Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager$1;

    iget-object p0, p0, Lcom/yftech/car/widget/media/radio/layout/-$$Lambda$LayoutChildManager$1$pfFSuDGTseWvT1qrSMArJyN3sKo;->f$1:Lcom/yftech/car/media/radio/entity/DataOfRadio;

    invoke-static {v0, p0}, Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager$1;->lambda$onFreqChange$2(Lcom/yftech/car/widget/media/radio/layout/LayoutChildManager$1;Lcom/yftech/car/media/radio/entity/DataOfRadio;)V

    return-void
.end method
