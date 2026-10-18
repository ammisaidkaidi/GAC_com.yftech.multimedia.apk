.class public final synthetic Lcom/yftech/car/widget/media/video/layout/-$$Lambda$UgO9eYxT97kOnmC8PBbvbaoP3OE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/yftech/car/widget/media/video/VideoDataPlayManager$OnMediaDataListUpdateListener;


# direct methods
.method public synthetic constructor <init>(Lcom/yftech/car/widget/media/video/VideoDataPlayManager$OnMediaDataListUpdateListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yftech/car/widget/media/video/layout/-$$Lambda$UgO9eYxT97kOnmC8PBbvbaoP3OE;->f$0:Lcom/yftech/car/widget/media/video/VideoDataPlayManager$OnMediaDataListUpdateListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/yftech/car/widget/media/video/layout/-$$Lambda$UgO9eYxT97kOnmC8PBbvbaoP3OE;->f$0:Lcom/yftech/car/widget/media/video/VideoDataPlayManager$OnMediaDataListUpdateListener;

    invoke-interface {p0}, Lcom/yftech/car/widget/media/video/VideoDataPlayManager$OnMediaDataListUpdateListener;->onPlayChange()V

    return-void
.end method
