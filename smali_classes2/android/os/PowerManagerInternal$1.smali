.class Landroid/os/PowerManagerInternal$1;
.super Ljava/lang/Object;
.source "PowerManagerInternal.java"

# interfaces
.implements Landroid/os/PowerManagerInternal$LowPowerModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/os/PowerManagerInternal;->registerLowPowerModeObserver(ILjava/util/function/Consumer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/os/PowerManagerInternal;

.field final synthetic val$listener:Ljava/util/function/Consumer;

.field final synthetic val$serviceType:I


# direct methods
.method constructor <init>(Landroid/os/PowerManagerInternal;ILjava/util/function/Consumer;)V
    .locals 0

    .line 160
    iput-object p1, p0, Landroid/os/PowerManagerInternal$1;->this$0:Landroid/os/PowerManagerInternal;

    iput p2, p0, Landroid/os/PowerManagerInternal$1;->val$serviceType:I

    iput-object p3, p0, Landroid/os/PowerManagerInternal$1;->val$listener:Ljava/util/function/Consumer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getServiceType()I
    .locals 0

    .line 163
    iget p0, p0, Landroid/os/PowerManagerInternal$1;->val$serviceType:I

    return p0
.end method

.method public onLowPowerModeChanged(Landroid/os/PowerSaveState;)V
    .locals 0

    .line 168
    iget-object p0, p0, Landroid/os/PowerManagerInternal$1;->val$listener:Ljava/util/function/Consumer;

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method
