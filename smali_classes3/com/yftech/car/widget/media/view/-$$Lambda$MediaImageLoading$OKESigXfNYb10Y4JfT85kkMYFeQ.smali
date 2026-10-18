.class public final synthetic Lcom/yftech/car/widget/media/view/-$$Lambda$MediaImageLoading$OKESigXfNYb10Y4JfT85kkMYFeQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/yftech/car/widget/media/view/MediaImageLoading;

.field private final synthetic f$1:Lcom/yftech/car/media/data/entity/MediaFile;


# direct methods
.method public synthetic constructor <init>(Lcom/yftech/car/widget/media/view/MediaImageLoading;Lcom/yftech/car/media/data/entity/MediaFile;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yftech/car/widget/media/view/-$$Lambda$MediaImageLoading$OKESigXfNYb10Y4JfT85kkMYFeQ;->f$0:Lcom/yftech/car/widget/media/view/MediaImageLoading;

    iput-object p2, p0, Lcom/yftech/car/widget/media/view/-$$Lambda$MediaImageLoading$OKESigXfNYb10Y4JfT85kkMYFeQ;->f$1:Lcom/yftech/car/media/data/entity/MediaFile;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/yftech/car/widget/media/view/-$$Lambda$MediaImageLoading$OKESigXfNYb10Y4JfT85kkMYFeQ;->f$0:Lcom/yftech/car/widget/media/view/MediaImageLoading;

    iget-object p0, p0, Lcom/yftech/car/widget/media/view/-$$Lambda$MediaImageLoading$OKESigXfNYb10Y4JfT85kkMYFeQ;->f$1:Lcom/yftech/car/media/data/entity/MediaFile;

    invoke-static {v0, p0}, Lcom/yftech/car/widget/media/view/MediaImageLoading;->lambda$setHide$0(Lcom/yftech/car/widget/media/view/MediaImageLoading;Lcom/yftech/car/media/data/entity/MediaFile;)V

    return-void
.end method
