.class public final synthetic Lcom/yftech/car/widget/media/list/-$$Lambda$MediaDataList$2p2g-lyH1pKx3Nz1XzgkWt7nTWU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/yftech/car/widget/media/list/MediaDataList;

.field private final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/yftech/car/widget/media/list/MediaDataList;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yftech/car/widget/media/list/-$$Lambda$MediaDataList$2p2g-lyH1pKx3Nz1XzgkWt7nTWU;->f$0:Lcom/yftech/car/widget/media/list/MediaDataList;

    iput-object p2, p0, Lcom/yftech/car/widget/media/list/-$$Lambda$MediaDataList$2p2g-lyH1pKx3Nz1XzgkWt7nTWU;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/yftech/car/widget/media/list/-$$Lambda$MediaDataList$2p2g-lyH1pKx3Nz1XzgkWt7nTWU;->f$0:Lcom/yftech/car/widget/media/list/MediaDataList;

    iget-object p0, p0, Lcom/yftech/car/widget/media/list/-$$Lambda$MediaDataList$2p2g-lyH1pKx3Nz1XzgkWt7nTWU;->f$1:Ljava/util/List;

    invoke-static {v0, p0}, Lcom/yftech/car/widget/media/list/MediaDataList;->lambda$updateFolderList$4(Lcom/yftech/car/widget/media/list/MediaDataList;Ljava/util/List;)V

    return-void
.end method
