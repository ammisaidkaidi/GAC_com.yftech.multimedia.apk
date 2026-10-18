.class public final synthetic Lcom/yftech/car/widget/media/music/layout/-$$Lambda$MusicLayoutChildManager$4$0lFzQAzElTCBsZ_u7J70iFeqYbo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$4;

.field private final synthetic f$1:Lcom/yftech/car/widget/media/list/MediaDataList;

.field private final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$4;Lcom/yftech/car/widget/media/list/MediaDataList;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yftech/car/widget/media/music/layout/-$$Lambda$MusicLayoutChildManager$4$0lFzQAzElTCBsZ_u7J70iFeqYbo;->f$0:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$4;

    iput-object p2, p0, Lcom/yftech/car/widget/media/music/layout/-$$Lambda$MusicLayoutChildManager$4$0lFzQAzElTCBsZ_u7J70iFeqYbo;->f$1:Lcom/yftech/car/widget/media/list/MediaDataList;

    iput p3, p0, Lcom/yftech/car/widget/media/music/layout/-$$Lambda$MusicLayoutChildManager$4$0lFzQAzElTCBsZ_u7J70iFeqYbo;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/yftech/car/widget/media/music/layout/-$$Lambda$MusicLayoutChildManager$4$0lFzQAzElTCBsZ_u7J70iFeqYbo;->f$0:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$4;

    iget-object v1, p0, Lcom/yftech/car/widget/media/music/layout/-$$Lambda$MusicLayoutChildManager$4$0lFzQAzElTCBsZ_u7J70iFeqYbo;->f$1:Lcom/yftech/car/widget/media/list/MediaDataList;

    iget p0, p0, Lcom/yftech/car/widget/media/music/layout/-$$Lambda$MusicLayoutChildManager$4$0lFzQAzElTCBsZ_u7J70iFeqYbo;->f$2:I

    invoke-static {v0, v1, p0}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$4;->lambda$onUsbStatusChange$2(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$4;Lcom/yftech/car/widget/media/list/MediaDataList;I)V

    return-void
.end method
