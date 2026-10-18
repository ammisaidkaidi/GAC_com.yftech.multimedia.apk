.class Lcom/yftech/vehicle/internal/CarManager$SignalCallback;
.super Lcom/yftech/vehicle/internal/ISignalCallback$Stub;
.source "CarManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/CarManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SignalCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/vehicle/internal/CarManager;


# direct methods
.method private constructor <init>(Lcom/yftech/vehicle/internal/CarManager;)V
    .locals 0

    .line 481
    iput-object p1, p0, Lcom/yftech/vehicle/internal/CarManager$SignalCallback;->this$0:Lcom/yftech/vehicle/internal/CarManager;

    invoke-direct {p0}, Lcom/yftech/vehicle/internal/ISignalCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yftech/vehicle/internal/CarManager;Lcom/yftech/vehicle/internal/CarManager$1;)V
    .locals 0

    .line 481
    invoke-direct {p0, p1}, Lcom/yftech/vehicle/internal/CarManager$SignalCallback;-><init>(Lcom/yftech/vehicle/internal/CarManager;)V

    return-void
.end method


# virtual methods
.method public onValueChanged(I[B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 484
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    .line 485
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_0

    .line 486
    aget-byte v2, p2, v1

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 488
    :cond_0
    new-instance v0, Lcom/yftech/vehicle/internal/CarData;

    invoke-direct {v0, p2}, Lcom/yftech/vehicle/internal/CarData;-><init>([B)V

    .line 491
    invoke-virtual {v0}, Lcom/yftech/vehicle/internal/CarData;->isDataValue()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 492
    iget-object p0, p0, Lcom/yftech/vehicle/internal/CarManager$SignalCallback;->this$0:Lcom/yftech/vehicle/internal/CarManager;

    invoke-virtual {v0}, Lcom/yftech/vehicle/internal/CarData;->dataValue()[B

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/yftech/vehicle/internal/CarManager;->access$400(Lcom/yftech/vehicle/internal/CarManager;I[B)V

    goto :goto_1

    .line 494
    :cond_1
    iget-object p0, p0, Lcom/yftech/vehicle/internal/CarManager$SignalCallback;->this$0:Lcom/yftech/vehicle/internal/CarManager;

    invoke-virtual {v0}, Lcom/yftech/vehicle/internal/CarData;->numberValue()Ljava/lang/Number;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/yftech/vehicle/internal/CarManager;->access$500(Lcom/yftech/vehicle/internal/CarManager;ILjava/lang/Number;)V

    :goto_1
    return-void
.end method
