.class public final synthetic Lcom/yftech/car/widget/media/video/-$$Lambda$PlayerManager$4$msoEJlGJMdQ3FZu9YET2xMIgADk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/yftech/car/widget/media/video/PlayerManager$4;

.field private final synthetic f$1:I

.field private final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/yftech/car/widget/media/video/PlayerManager$4;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yftech/car/widget/media/video/-$$Lambda$PlayerManager$4$msoEJlGJMdQ3FZu9YET2xMIgADk;->f$0:Lcom/yftech/car/widget/media/video/PlayerManager$4;

    iput p2, p0, Lcom/yftech/car/widget/media/video/-$$Lambda$PlayerManager$4$msoEJlGJMdQ3FZu9YET2xMIgADk;->f$1:I

    iput-object p3, p0, Lcom/yftech/car/widget/media/video/-$$Lambda$PlayerManager$4$msoEJlGJMdQ3FZu9YET2xMIgADk;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/yftech/car/widget/media/video/-$$Lambda$PlayerManager$4$msoEJlGJMdQ3FZu9YET2xMIgADk;->f$0:Lcom/yftech/car/widget/media/video/PlayerManager$4;

    iget v1, p0, Lcom/yftech/car/widget/media/video/-$$Lambda$PlayerManager$4$msoEJlGJMdQ3FZu9YET2xMIgADk;->f$1:I

    iget-object p0, p0, Lcom/yftech/car/widget/media/video/-$$Lambda$PlayerManager$4$msoEJlGJMdQ3FZu9YET2xMIgADk;->f$2:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/yftech/car/widget/media/video/PlayerManager$4;->lambda$onError$0(Lcom/yftech/car/widget/media/video/PlayerManager$4;ILjava/lang/String;)V

    return-void
.end method
