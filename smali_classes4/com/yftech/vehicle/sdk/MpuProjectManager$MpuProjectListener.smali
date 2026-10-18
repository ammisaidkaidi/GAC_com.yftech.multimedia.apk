.class public abstract Lcom/yftech/vehicle/sdk/MpuProjectManager$MpuProjectListener;
.super Ljava/lang/Object;
.source "MpuProjectManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/sdk/MpuProjectManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "MpuProjectListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPersonalMemoryInfoChanged(Lcom/yftech/vehicle/internal/project/IProject$PersonalMemoryInfo;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x26c5
    .end annotation

    return-void
.end method
