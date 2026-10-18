.class public Lcom/android/internal/os/RpmStats$PowerStateSubsystem;
.super Ljava/lang/Object;
.source "RpmStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/RpmStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PowerStateSubsystem"
.end annotation


# instance fields
.field public mStates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/internal/os/RpmStats$PowerStateElement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/RpmStats$PowerStateSubsystem;->mStates:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public putState(Ljava/lang/String;JI)V
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/android/internal/os/RpmStats$PowerStateSubsystem;->mStates:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/RpmStats$PowerStateElement;

    if-nez v0, :cond_0

    .line 105
    iget-object p0, p0, Lcom/android/internal/os/RpmStats$PowerStateSubsystem;->mStates:Ljava/util/Map;

    new-instance v0, Lcom/android/internal/os/RpmStats$PowerStateElement;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p3, p4, v1}, Lcom/android/internal/os/RpmStats$PowerStateElement;-><init>(JILcom/android/internal/os/RpmStats$1;)V

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 107
    :cond_0
    iput-wide p2, v0, Lcom/android/internal/os/RpmStats$PowerStateElement;->mTimeMs:J

    .line 108
    iput p4, v0, Lcom/android/internal/os/RpmStats$PowerStateElement;->mCount:I

    :goto_0
    return-void
.end method
