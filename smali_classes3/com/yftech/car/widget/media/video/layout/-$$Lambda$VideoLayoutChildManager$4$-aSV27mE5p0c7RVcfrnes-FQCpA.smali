.class public final synthetic Lcom/yftech/car/widget/media/video/layout/-$$Lambda$VideoLayoutChildManager$4$-aSV27mE5p0c7RVcfrnes-FQCpA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$4;

.field private final synthetic f$1:Lcom/yftech/car/widget/media/text/MediaSearchEditText;


# direct methods
.method public synthetic constructor <init>(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$4;Lcom/yftech/car/widget/media/text/MediaSearchEditText;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yftech/car/widget/media/video/layout/-$$Lambda$VideoLayoutChildManager$4$-aSV27mE5p0c7RVcfrnes-FQCpA;->f$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$4;

    iput-object p2, p0, Lcom/yftech/car/widget/media/video/layout/-$$Lambda$VideoLayoutChildManager$4$-aSV27mE5p0c7RVcfrnes-FQCpA;->f$1:Lcom/yftech/car/widget/media/text/MediaSearchEditText;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/yftech/car/widget/media/video/layout/-$$Lambda$VideoLayoutChildManager$4$-aSV27mE5p0c7RVcfrnes-FQCpA;->f$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$4;

    iget-object p0, p0, Lcom/yftech/car/widget/media/video/layout/-$$Lambda$VideoLayoutChildManager$4$-aSV27mE5p0c7RVcfrnes-FQCpA;->f$1:Lcom/yftech/car/widget/media/text/MediaSearchEditText;

    invoke-static {v0, p0}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$4;->lambda$onSearchText$0(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$4;Lcom/yftech/car/widget/media/text/MediaSearchEditText;)V

    return-void
.end method
