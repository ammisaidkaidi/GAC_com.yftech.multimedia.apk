.class public final synthetic Lcom/yftech/car/widget/media/music/layout/-$$Lambda$MusicLayoutChildManager$4$ks1HDNlTwAh8bCtAzL-JAUWhEQI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$4;

.field private final synthetic f$1:Lcom/yftech/car/widget/media/list/MediaDataList;


# direct methods
.method public synthetic constructor <init>(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$4;Lcom/yftech/car/widget/media/list/MediaDataList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yftech/car/widget/media/music/layout/-$$Lambda$MusicLayoutChildManager$4$ks1HDNlTwAh8bCtAzL-JAUWhEQI;->f$0:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$4;

    iput-object p2, p0, Lcom/yftech/car/widget/media/music/layout/-$$Lambda$MusicLayoutChildManager$4$ks1HDNlTwAh8bCtAzL-JAUWhEQI;->f$1:Lcom/yftech/car/widget/media/list/MediaDataList;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/yftech/car/widget/media/music/layout/-$$Lambda$MusicLayoutChildManager$4$ks1HDNlTwAh8bCtAzL-JAUWhEQI;->f$0:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$4;

    iget-object p0, p0, Lcom/yftech/car/widget/media/music/layout/-$$Lambda$MusicLayoutChildManager$4$ks1HDNlTwAh8bCtAzL-JAUWhEQI;->f$1:Lcom/yftech/car/widget/media/list/MediaDataList;

    invoke-static {v0, p0}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$4;->lambda$onScanStatusChange$1(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$4;Lcom/yftech/car/widget/media/list/MediaDataList;)V

    return-void
.end method
