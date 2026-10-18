.class public final synthetic Lcom/yftech/libradio/presenter/-$$Lambda$DabMainPresenter$0_5FHlE8SoQC5ydvXQFzEEwdBsI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/yftech/car/media/radio/dab/entity/DabEnsemble;

.field private final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Lcom/yftech/car/media/radio/dab/entity/DabEnsemble;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yftech/libradio/presenter/-$$Lambda$DabMainPresenter$0_5FHlE8SoQC5ydvXQFzEEwdBsI;->f$0:Lcom/yftech/car/media/radio/dab/entity/DabEnsemble;

    iput-wide p2, p0, Lcom/yftech/libradio/presenter/-$$Lambda$DabMainPresenter$0_5FHlE8SoQC5ydvXQFzEEwdBsI;->f$1:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/yftech/libradio/presenter/-$$Lambda$DabMainPresenter$0_5FHlE8SoQC5ydvXQFzEEwdBsI;->f$0:Lcom/yftech/car/media/radio/dab/entity/DabEnsemble;

    iget-wide v1, p0, Lcom/yftech/libradio/presenter/-$$Lambda$DabMainPresenter$0_5FHlE8SoQC5ydvXQFzEEwdBsI;->f$1:J

    invoke-static {v0, v1, v2}, Lcom/yftech/libradio/presenter/DabMainPresenter;->lambda$setFreq$0(Lcom/yftech/car/media/radio/dab/entity/DabEnsemble;J)V

    return-void
.end method
