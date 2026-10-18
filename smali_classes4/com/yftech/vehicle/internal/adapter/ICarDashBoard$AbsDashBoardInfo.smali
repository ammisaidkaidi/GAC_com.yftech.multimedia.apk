.class public abstract Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$AbsDashBoardInfo;
.super Ljava/lang/Object;
.source "ICarDashBoard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarDashBoard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbsDashBoardInfo"
.end annotation


# instance fields
.field private dashBoardSource:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput p1, p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$AbsDashBoardInfo;->dashBoardSource:I

    return-void
.end method


# virtual methods
.method public getDashBoardSource()I
    .locals 0

    .line 115
    iget p0, p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$AbsDashBoardInfo;->dashBoardSource:I

    return p0
.end method

.method public setDashBoardSource(I)V
    .locals 0

    .line 118
    iput p1, p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$AbsDashBoardInfo;->dashBoardSource:I

    return-void
.end method

.method public abstract toBytes()[B
.end method

.method public abstract toString()Ljava/lang/String;
.end method
