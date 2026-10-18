.class public final synthetic Lcom/yftech/car/widget/media/video/-$$Lambda$VideoPlayer$outqjjM0xgtp4wJZpNzfPFvFXb8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/yftech/car/widget/media/video/VideoPlayer;

.field private final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/yftech/car/widget/media/video/VideoPlayer;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yftech/car/widget/media/video/-$$Lambda$VideoPlayer$outqjjM0xgtp4wJZpNzfPFvFXb8;->f$0:Lcom/yftech/car/widget/media/video/VideoPlayer;

    iput-object p2, p0, Lcom/yftech/car/widget/media/video/-$$Lambda$VideoPlayer$outqjjM0xgtp4wJZpNzfPFvFXb8;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/yftech/car/widget/media/video/-$$Lambda$VideoPlayer$outqjjM0xgtp4wJZpNzfPFvFXb8;->f$0:Lcom/yftech/car/widget/media/video/VideoPlayer;

    iget-object p0, p0, Lcom/yftech/car/widget/media/video/-$$Lambda$VideoPlayer$outqjjM0xgtp4wJZpNzfPFvFXb8;->f$1:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/yftech/car/widget/media/video/VideoPlayer;->lambda$setDialogError$0(Lcom/yftech/car/widget/media/video/VideoPlayer;Ljava/lang/String;)V

    return-void
.end method
