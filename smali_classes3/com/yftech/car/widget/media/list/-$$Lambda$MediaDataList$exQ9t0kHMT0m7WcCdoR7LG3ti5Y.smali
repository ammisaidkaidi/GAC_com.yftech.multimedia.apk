.class public final synthetic Lcom/yftech/car/widget/media/list/-$$Lambda$MediaDataList$exQ9t0kHMT0m7WcCdoR7LG3ti5Y;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/yftech/car/widget/media/list/MediaDataList;

.field private final synthetic f$1:Ljava/util/List;

.field private final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/yftech/car/widget/media/list/MediaDataList;Ljava/util/List;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yftech/car/widget/media/list/-$$Lambda$MediaDataList$exQ9t0kHMT0m7WcCdoR7LG3ti5Y;->f$0:Lcom/yftech/car/widget/media/list/MediaDataList;

    iput-object p2, p0, Lcom/yftech/car/widget/media/list/-$$Lambda$MediaDataList$exQ9t0kHMT0m7WcCdoR7LG3ti5Y;->f$1:Ljava/util/List;

    iput-boolean p3, p0, Lcom/yftech/car/widget/media/list/-$$Lambda$MediaDataList$exQ9t0kHMT0m7WcCdoR7LG3ti5Y;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/yftech/car/widget/media/list/-$$Lambda$MediaDataList$exQ9t0kHMT0m7WcCdoR7LG3ti5Y;->f$0:Lcom/yftech/car/widget/media/list/MediaDataList;

    iget-object v1, p0, Lcom/yftech/car/widget/media/list/-$$Lambda$MediaDataList$exQ9t0kHMT0m7WcCdoR7LG3ti5Y;->f$1:Ljava/util/List;

    iget-boolean p0, p0, Lcom/yftech/car/widget/media/list/-$$Lambda$MediaDataList$exQ9t0kHMT0m7WcCdoR7LG3ti5Y;->f$2:Z

    invoke-static {v0, v1, p0}, Lcom/yftech/car/widget/media/list/MediaDataList;->lambda$updateFileList$3(Lcom/yftech/car/widget/media/list/MediaDataList;Ljava/util/List;Z)V

    return-void
.end method
