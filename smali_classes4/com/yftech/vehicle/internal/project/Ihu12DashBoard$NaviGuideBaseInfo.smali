.class public Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviGuideBaseInfo;
.super Ljava/lang/Object;
.source "Ihu12DashBoard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/project/Ihu12DashBoard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NaviGuideBaseInfo"
.end annotation


# instance fields
.field public azimuthInfo:I

.field public caculationState:Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$CaculationState;

.field public compass:Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$CompassGuide;

.field public gpsSignal:Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$GpsSignal;

.field public naviIcon_RC:I

.field public naviIcon_TBT:I

.field public naviIcon_WS:I

.field public naviState:Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviState;

.field public nextRoadName:Ljava/lang/String;

.field public roadName:Ljava/lang/String;

.field public seaLevel:Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$SeaLevel;


# direct methods
.method public constructor <init>(Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$SeaLevel;Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$GpsSignal;ILcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviState;IIILcom/yftech/vehicle/internal/project/Ihu12DashBoard$CompassGuide;Ljava/lang/String;Ljava/lang/String;Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$CaculationState;)V
    .locals 1

    .line 532
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 490
    sget-object v0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$SeaLevel;->__UNKNOWN__:Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$SeaLevel;

    iput-object v0, p0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviGuideBaseInfo;->seaLevel:Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$SeaLevel;

    .line 494
    sget-object v0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$GpsSignal;->__UNKNOWN__:Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$GpsSignal;

    iput-object v0, p0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviGuideBaseInfo;->gpsSignal:Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$GpsSignal;

    .line 502
    sget-object v0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviState;->__UNKNOWN__:Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviState;

    iput-object v0, p0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviGuideBaseInfo;->naviState:Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviState;

    .line 518
    sget-object v0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$CompassGuide;->__UNKNOWN__:Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$CompassGuide;

    iput-object v0, p0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviGuideBaseInfo;->compass:Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$CompassGuide;

    const-string v0, ""

    .line 522
    iput-object v0, p0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviGuideBaseInfo;->roadName:Ljava/lang/String;

    const-string v0, ""

    .line 526
    iput-object v0, p0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviGuideBaseInfo;->nextRoadName:Ljava/lang/String;

    .line 530
    sget-object v0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$CaculationState;->__UNKNOWN__:Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$CaculationState;

    iput-object v0, p0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviGuideBaseInfo;->caculationState:Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$CaculationState;

    .line 533
    iput-object p1, p0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviGuideBaseInfo;->seaLevel:Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$SeaLevel;

    .line 534
    iput-object p2, p0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviGuideBaseInfo;->gpsSignal:Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$GpsSignal;

    .line 535
    iput p3, p0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviGuideBaseInfo;->azimuthInfo:I

    .line 536
    iput-object p4, p0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviGuideBaseInfo;->naviState:Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviState;

    .line 537
    iput p5, p0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviGuideBaseInfo;->naviIcon_TBT:I

    .line 538
    iput p6, p0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviGuideBaseInfo;->naviIcon_RC:I

    .line 539
    iput p7, p0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviGuideBaseInfo;->naviIcon_WS:I

    .line 540
    iput-object p8, p0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviGuideBaseInfo;->compass:Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$CompassGuide;

    .line 541
    iput-object p9, p0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviGuideBaseInfo;->roadName:Ljava/lang/String;

    .line 542
    iput-object p10, p0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviGuideBaseInfo;->nextRoadName:Ljava/lang/String;

    .line 543
    iput-object p11, p0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviGuideBaseInfo;->caculationState:Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$CaculationState;

    return-void
.end method
