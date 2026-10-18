.class public final synthetic Lcom/yftech/car/widget/media/music/layout/-$$Lambda$MusicLayoutChildManager$4$4Za-Yj0UjNlbVEfmCE6Lt1KjrlA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$4;

.field private final synthetic f$1:Lcom/yftech/car/widget/media/view/MediaImageView;


# direct methods
.method public synthetic constructor <init>(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$4;Lcom/yftech/car/widget/media/view/MediaImageView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yftech/car/widget/media/music/layout/-$$Lambda$MusicLayoutChildManager$4$4Za-Yj0UjNlbVEfmCE6Lt1KjrlA;->f$0:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$4;

    iput-object p2, p0, Lcom/yftech/car/widget/media/music/layout/-$$Lambda$MusicLayoutChildManager$4$4Za-Yj0UjNlbVEfmCE6Lt1KjrlA;->f$1:Lcom/yftech/car/widget/media/view/MediaImageView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/yftech/car/widget/media/music/layout/-$$Lambda$MusicLayoutChildManager$4$4Za-Yj0UjNlbVEfmCE6Lt1KjrlA;->f$0:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$4;

    iget-object p0, p0, Lcom/yftech/car/widget/media/music/layout/-$$Lambda$MusicLayoutChildManager$4$4Za-Yj0UjNlbVEfmCE6Lt1KjrlA;->f$1:Lcom/yftech/car/widget/media/view/MediaImageView;

    invoke-static {v0, p0}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$4;->lambda$onUsbStatusChange$3(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$4;Lcom/yftech/car/widget/media/view/MediaImageView;)V

    return-void
.end method
