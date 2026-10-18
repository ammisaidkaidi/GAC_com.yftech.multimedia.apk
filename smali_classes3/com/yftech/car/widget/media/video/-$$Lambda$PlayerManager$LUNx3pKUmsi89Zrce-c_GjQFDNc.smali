.class public final synthetic Lcom/yftech/car/widget/media/video/-$$Lambda$PlayerManager$LUNx3pKUmsi89Zrce-c_GjQFDNc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/yftech/car/widget/media/video/PlayerManager;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/yftech/car/widget/media/video/PlayerManager;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yftech/car/widget/media/video/-$$Lambda$PlayerManager$LUNx3pKUmsi89Zrce-c_GjQFDNc;->f$0:Lcom/yftech/car/widget/media/video/PlayerManager;

    iput p2, p0, Lcom/yftech/car/widget/media/video/-$$Lambda$PlayerManager$LUNx3pKUmsi89Zrce-c_GjQFDNc;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/yftech/car/widget/media/video/-$$Lambda$PlayerManager$LUNx3pKUmsi89Zrce-c_GjQFDNc;->f$0:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget p0, p0, Lcom/yftech/car/widget/media/video/-$$Lambda$PlayerManager$LUNx3pKUmsi89Zrce-c_GjQFDNc;->f$1:I

    invoke-static {v0, p0}, Lcom/yftech/car/widget/media/video/PlayerManager;->lambda$setPlayErrorException$0(Lcom/yftech/car/widget/media/video/PlayerManager;I)V

    return-void
.end method
