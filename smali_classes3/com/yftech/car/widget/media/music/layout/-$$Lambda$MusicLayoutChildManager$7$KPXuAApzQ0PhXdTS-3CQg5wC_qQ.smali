.class public final synthetic Lcom/yftech/car/widget/media/music/layout/-$$Lambda$MusicLayoutChildManager$7$KPXuAApzQ0PhXdTS-3CQg5wC_qQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$7;

.field private final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$7;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yftech/car/widget/media/music/layout/-$$Lambda$MusicLayoutChildManager$7$KPXuAApzQ0PhXdTS-3CQg5wC_qQ;->f$0:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$7;

    iput-boolean p2, p0, Lcom/yftech/car/widget/media/music/layout/-$$Lambda$MusicLayoutChildManager$7$KPXuAApzQ0PhXdTS-3CQg5wC_qQ;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/yftech/car/widget/media/music/layout/-$$Lambda$MusicLayoutChildManager$7$KPXuAApzQ0PhXdTS-3CQg5wC_qQ;->f$0:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$7;

    iget-boolean p0, p0, Lcom/yftech/car/widget/media/music/layout/-$$Lambda$MusicLayoutChildManager$7$KPXuAApzQ0PhXdTS-3CQg5wC_qQ;->f$1:Z

    invoke-static {v0, p0}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$7;->lambda$onChangePlaying$2(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$7;Z)V

    return-void
.end method
