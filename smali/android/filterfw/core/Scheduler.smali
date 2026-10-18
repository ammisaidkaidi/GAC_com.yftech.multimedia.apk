.class public abstract Landroid/filterfw/core/Scheduler;
.super Ljava/lang/Object;
.source "Scheduler.java"


# instance fields
.field private mGraph:Landroid/filterfw/core/FilterGraph;


# direct methods
.method constructor <init>(Landroid/filterfw/core/FilterGraph;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Landroid/filterfw/core/Scheduler;->mGraph:Landroid/filterfw/core/FilterGraph;

    return-void
.end method


# virtual methods
.method finished()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method getGraph()Landroid/filterfw/core/FilterGraph;
    .locals 0

    .line 36
    iget-object p0, p0, Landroid/filterfw/core/Scheduler;->mGraph:Landroid/filterfw/core/FilterGraph;

    return-object p0
.end method

.method abstract reset()V
.end method

.method abstract scheduleNextNode()Landroid/filterfw/core/Filter;
.end method
