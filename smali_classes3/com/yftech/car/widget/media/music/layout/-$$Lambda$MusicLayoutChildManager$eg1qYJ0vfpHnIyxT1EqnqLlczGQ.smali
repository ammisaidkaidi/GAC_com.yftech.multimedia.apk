.class public final synthetic Lcom/yftech/car/widget/media/music/layout/-$$Lambda$MusicLayoutChildManager$eg1qYJ0vfpHnIyxT1EqnqLlczGQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/yftech/car/widget/media/list/MediaDataList;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/yftech/car/widget/media/list/MediaDataList;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yftech/car/widget/media/music/layout/-$$Lambda$MusicLayoutChildManager$eg1qYJ0vfpHnIyxT1EqnqLlczGQ;->f$0:Lcom/yftech/car/widget/media/list/MediaDataList;

    iput p2, p0, Lcom/yftech/car/widget/media/music/layout/-$$Lambda$MusicLayoutChildManager$eg1qYJ0vfpHnIyxT1EqnqLlczGQ;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/yftech/car/widget/media/music/layout/-$$Lambda$MusicLayoutChildManager$eg1qYJ0vfpHnIyxT1EqnqLlczGQ;->f$0:Lcom/yftech/car/widget/media/list/MediaDataList;

    iget p0, p0, Lcom/yftech/car/widget/media/music/layout/-$$Lambda$MusicLayoutChildManager$eg1qYJ0vfpHnIyxT1EqnqLlczGQ;->f$1:I

    invoke-static {v0, p0}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->lambda$updateUsbStatusChange$2(Lcom/yftech/car/widget/media/list/MediaDataList;I)V

    return-void
.end method
