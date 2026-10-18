.class public Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmCameraState;
.super Ljava/lang/Object;
.source "IMpuAvm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/IMpuAvm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AvmCameraState"
.end annotation


# instance fields
.field public frontFault:Z

.field public leftFault:Z

.field public rearFault:Z

.field public rightFault:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
