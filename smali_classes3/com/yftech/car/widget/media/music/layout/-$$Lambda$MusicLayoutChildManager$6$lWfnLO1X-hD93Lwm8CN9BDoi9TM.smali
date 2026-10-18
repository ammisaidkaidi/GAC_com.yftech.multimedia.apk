.class public final synthetic Lcom/yftech/car/widget/media/music/layout/-$$Lambda$MusicLayoutChildManager$6$lWfnLO1X-hD93Lwm8CN9BDoi9TM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$6;

.field private final synthetic f$1:Lcom/yftech/car/widget/media/text/MediaSearchEditText;


# direct methods
.method public synthetic constructor <init>(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$6;Lcom/yftech/car/widget/media/text/MediaSearchEditText;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yftech/car/widget/media/music/layout/-$$Lambda$MusicLayoutChildManager$6$lWfnLO1X-hD93Lwm8CN9BDoi9TM;->f$0:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$6;

    iput-object p2, p0, Lcom/yftech/car/widget/media/music/layout/-$$Lambda$MusicLayoutChildManager$6$lWfnLO1X-hD93Lwm8CN9BDoi9TM;->f$1:Lcom/yftech/car/widget/media/text/MediaSearchEditText;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/yftech/car/widget/media/music/layout/-$$Lambda$MusicLayoutChildManager$6$lWfnLO1X-hD93Lwm8CN9BDoi9TM;->f$0:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$6;

    iget-object p0, p0, Lcom/yftech/car/widget/media/music/layout/-$$Lambda$MusicLayoutChildManager$6$lWfnLO1X-hD93Lwm8CN9BDoi9TM;->f$1:Lcom/yftech/car/widget/media/text/MediaSearchEditText;

    invoke-static {v0, p0}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$6;->lambda$onSearchText$0(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$6;Lcom/yftech/car/widget/media/text/MediaSearchEditText;)V

    return-void
.end method
