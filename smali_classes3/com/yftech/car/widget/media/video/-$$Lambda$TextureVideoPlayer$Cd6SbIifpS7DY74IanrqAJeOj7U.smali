.class public final synthetic Lcom/yftech/car/widget/media/video/-$$Lambda$TextureVideoPlayer$Cd6SbIifpS7DY74IanrqAJeOj7U;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/yftech/car/widget/media/video/TextureVideoPlayer;

.field private final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/yftech/car/widget/media/video/TextureVideoPlayer;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yftech/car/widget/media/video/-$$Lambda$TextureVideoPlayer$Cd6SbIifpS7DY74IanrqAJeOj7U;->f$0:Lcom/yftech/car/widget/media/video/TextureVideoPlayer;

    iput-object p2, p0, Lcom/yftech/car/widget/media/video/-$$Lambda$TextureVideoPlayer$Cd6SbIifpS7DY74IanrqAJeOj7U;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/yftech/car/widget/media/video/-$$Lambda$TextureVideoPlayer$Cd6SbIifpS7DY74IanrqAJeOj7U;->f$0:Lcom/yftech/car/widget/media/video/TextureVideoPlayer;

    iget-object p0, p0, Lcom/yftech/car/widget/media/video/-$$Lambda$TextureVideoPlayer$Cd6SbIifpS7DY74IanrqAJeOj7U;->f$1:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->lambda$setDialogError$0(Lcom/yftech/car/widget/media/video/TextureVideoPlayer;Ljava/lang/String;)V

    return-void
.end method
