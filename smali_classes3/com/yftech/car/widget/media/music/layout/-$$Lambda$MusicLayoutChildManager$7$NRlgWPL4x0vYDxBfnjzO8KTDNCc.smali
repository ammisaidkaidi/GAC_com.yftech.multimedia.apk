.class public final synthetic Lcom/yftech/car/widget/media/music/layout/-$$Lambda$MusicLayoutChildManager$7$NRlgWPL4x0vYDxBfnjzO8KTDNCc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$7;

.field private final synthetic f$1:Lcom/yftech/car/media/data/entity/MediaFile;


# direct methods
.method public synthetic constructor <init>(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$7;Lcom/yftech/car/media/data/entity/MediaFile;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yftech/car/widget/media/music/layout/-$$Lambda$MusicLayoutChildManager$7$NRlgWPL4x0vYDxBfnjzO8KTDNCc;->f$0:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$7;

    iput-object p2, p0, Lcom/yftech/car/widget/media/music/layout/-$$Lambda$MusicLayoutChildManager$7$NRlgWPL4x0vYDxBfnjzO8KTDNCc;->f$1:Lcom/yftech/car/media/data/entity/MediaFile;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/yftech/car/widget/media/music/layout/-$$Lambda$MusicLayoutChildManager$7$NRlgWPL4x0vYDxBfnjzO8KTDNCc;->f$0:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$7;

    iget-object p0, p0, Lcom/yftech/car/widget/media/music/layout/-$$Lambda$MusicLayoutChildManager$7$NRlgWPL4x0vYDxBfnjzO8KTDNCc;->f$1:Lcom/yftech/car/media/data/entity/MediaFile;

    invoke-static {v0, p0}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$7;->lambda$onChangePlayMusic$0(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$7;Lcom/yftech/car/media/data/entity/MediaFile;)V

    return-void
.end method
