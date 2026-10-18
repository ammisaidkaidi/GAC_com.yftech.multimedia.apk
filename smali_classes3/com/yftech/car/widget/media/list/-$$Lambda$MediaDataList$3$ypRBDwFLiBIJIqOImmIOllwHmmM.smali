.class public final synthetic Lcom/yftech/car/widget/media/list/-$$Lambda$MediaDataList$3$ypRBDwFLiBIJIqOImmIOllwHmmM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/yftech/car/widget/media/list/MediaDataList$3;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/yftech/car/widget/media/list/MediaDataList$3;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yftech/car/widget/media/list/-$$Lambda$MediaDataList$3$ypRBDwFLiBIJIqOImmIOllwHmmM;->f$0:Lcom/yftech/car/widget/media/list/MediaDataList$3;

    iput p2, p0, Lcom/yftech/car/widget/media/list/-$$Lambda$MediaDataList$3$ypRBDwFLiBIJIqOImmIOllwHmmM;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/yftech/car/widget/media/list/-$$Lambda$MediaDataList$3$ypRBDwFLiBIJIqOImmIOllwHmmM;->f$0:Lcom/yftech/car/widget/media/list/MediaDataList$3;

    iget p0, p0, Lcom/yftech/car/widget/media/list/-$$Lambda$MediaDataList$3$ypRBDwFLiBIJIqOImmIOllwHmmM;->f$1:I

    invoke-static {v0, p0}, Lcom/yftech/car/widget/media/list/MediaDataList$3;->lambda$onListSizeChange$1(Lcom/yftech/car/widget/media/list/MediaDataList$3;I)V

    return-void
.end method
